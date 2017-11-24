-- Consignes d'utilisation :

-- Utiliser les tables remplies de p2pInsertion1.sql

--  Adapter ce nom de base de données
USE ocr3;
-- Recommandé: PhpMyAdmin ( Copier / coller tout le fichier dans la case requête SQL) qui permettra d'avoir à la suite, les directives et leurs sorties

-- HeidiSQL: ATTENTION: augmenter le nombre de sorties (Outils / Préférences / SQL/ Jeux de résultat maximum) à 20 par exemple pour avoir la totalité des sorties qui s'affichent (NB: Non bloquant, cette restriction native de HeidiSQL n'empêche pas le script de s'executer complètement)



-- NB: Ce script peut être éxécuté plusieurs fois

-- Dépôt GitHub :
-- https://github.com/c57fr/Do/blob/master/agc7/bdd/sql/ocr/exo6.sql


-- -----------------------------------------------------------------------------------

-- Préambule : 3 procédures ci-dessous pour, respectivement :

-- -----------------------------------------------------------------------------------

-- 1 / Vérifier si une colonne existe ou pas (Utilisée par les 2 procédures suivantes)

-- 2 / Ajouter une colonne à une table (Sans s'inquiéter de savoir si elle y est déjà ou pas)

-- 3 / Supprimer une colonne d'une table (Sans s'inquiéter de savoir si elle y existait ou pas)


-- 1 / Retourne 1 si la colonne existe ou 0 sinon
DROP PROCEDURE IF EXISTS `columnExists`;

DELIMITER |
CREATE PROCEDURE `columnExists`(
  IN  `theColumn` VARCHAR(255),
  IN  `theTable`  VARCHAR(255),
  OUT `p_exists`  INT
)
  BEGIN
    SELECT count(*)
    INTO p_exists
    FROM information_schema.columns
    WHERE table_name = theTable AND column_name = theColumn;
  END |
DELIMITER ;


-- 2 / ADD COLUMN si elle n'existe pas déjà
DROP PROCEDURE IF EXISTS addColumn;

DELIMITER |
CREATE PROCEDURE addColumn(
  IN  theColumn   VARCHAR(255),
  IN  theTable    VARCHAR(255),
  OUT p_addColumn VARCHAR(255)
)
  BEGIN
    CALL columnExists(theColumn, theTable, @columnExists);
    SET @theColumn = theColumn;
    SET @theTable = theTable;
    SET @respExists =
    concat('\"Ajout Colonne ', @theColumn,
           ' impossible: Déjà présente dans la table ',
           @theTable, '\"');
    SELECT (
      if(
          @columnExists,
          concat('SELECT ', @respExists, ' as Résultat'),
          CONCAT(
              'ALTER TABLE ', @theTable,
              ' ADD COLUMN ', @theColumn,
              -- ToDoLi: Mettre ci-dessous en param
              -- pour définir TYPE et options à la volée
              ' INT UNSIGNED NULL')
      )
    )
    INTO p_addColumn;
    SET @query = p_addColumn;
    PREPARE st FROM @query;
    EXECUTE st;
    SELECT p_addColumn AS SuiviProcess;
  END|
DELIMITER ;


-- 3 / DROP COLUMN (si elle existe)
DROP PROCEDURE IF EXISTS dropColumn;

DELIMITER |
CREATE PROCEDURE dropColumn(
  IN  theColumn    VARCHAR(255),
  IN  theTable     VARCHAR(255),
  OUT p_dropColumn VARCHAR(255)
)
  BEGIN
    CALL columnExists(theColumn, theTable, @columnExists);
    SET @theColumn = theColumn;
    SET @theTable = theTable;
    SET @respDontExists =
    concat('\"Suppression Colonne ', @theColumn,
           ' impossible: N\'existe pas dans la table ',
           @theTable, '\"');
    SELECT (
      if(
          @columnExists,
          CONCAT(
              'ALTER TABLE ', @theTable,
              ' DROP COLUMN ', @theColumn),
          concat('SELECT ', @respDontExists)
      )
    )
    INTO p_dropColumn;
    SET @query = p_dropColumn;
    PREPARE st FROM @query;
    EXECUTE st;
  END|
DELIMITER ;


-- Juste pour tester/utiliser ces procédures, sans nuire à l'exercice
CALL addColumn('nb_commentaires', 'article', @addColumn);
CALL dropColumn('nb_commentaires', 'article', @dropColumn);


-- -----------------------------------------------------------------------------------

-- MISSION 1 - Afficher le nombre de commentaires de chaque article

--  -----------------------------------------------------------------------------------


--                                   MISSION 1
-- Partie 1111111111111111111111111111111111111111111111111111111111111111111111111111
-- / 4

-- Ajout colonne nb_commentaires pour chaque Article (En utilisant la procédure 'maison' addColumn())
CALL addColumn('nb_commentaires', 'article', @addColumn);


-- Procédure pour initier les bonnes valeurs pour chaque articles

DROP PROCEDURE IF EXISTS maj_nb_commentaires;

DELIMITER |
CREATE PROCEDURE `maj_nb_commentaires`()
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
  SQL SECURITY DEFINER
  COMMENT ''
  BEGIN

    UPDATE article
    SET nb_commentaires =
    (SELECT count(*)
     FROM commentaire
     WHERE article_id = article.id
     GROUP BY article_id
    );

  END |
DELIMITER ;

CALL maj_nb_commentaires;

-- Résultat intermédiaire (Compte initial des commentaires)
SELECT
  id,
  titre,
  nb_commentaires
FROM article;


--                                   MISSION 1
-- Partie 2222222222222222222222222222222222222222222222222222222222222222222222222222
-- / 4

DROP TRIGGER IF EXISTS after_insert_commentaire;

DELIMITER |
CREATE TRIGGER `after_insert_commentaire` AFTER INSERT ON `commentaire` FOR EACH ROW
  BEGIN
    UPDATE article
    SET nb_commentaires = nb_commentaires + 1
    WHERE id = NEW.article_id;
  END;
|
DELIMITER ;

INSERT INTO commentaire (`article_id`, `auteur_id`, `contenu`, `date_commentaire`)
VALUES ('1', '1', 'Tatati...UNIQ CONTENT COMMENT gf,gndfgd@12dsg', NOW());

--                                   MISSION 1
-- Partie 3333333333333333333333333333333333333333333333333333333333333333333333333333
-- / 4

DROP TRIGGER IF EXISTS after_delete_commentaire;

DELIMITER |
CREATE TRIGGER `after_delete_commentaire`
AFTER DELETE ON `commentaire` FOR EACH ROW
  BEGIN

    UPDATE article
    SET nb_commentaires = nb_commentaires - 1
    WHERE article.id = OLD.article_id;

    -- Je veux NULL par défaut si pas de commentaire
    -- Donc si nb = 0 => NULL y est mis
    UPDATE article
    SET nb_commentaires = NULL
    WHERE nb_commentaires = 0
          AND article.id = OLD.article_id;

  END |
DELIMITER ;


-- -----------------------------------------------------------------------------------
--                                   MISSION 1
-- Partie 4444444444444444444444444444444444444444444444444444444444444444444444444444
-- / 4


-- Pour UPDATE

-- Choix est fait d'accepter le fait de pouvoir changer un l'article_id d'un commentaire
-- (Exemple, en cas d'erreur de l'utilisateur qui croyait l'avoir posé à un endroit, 
-- au lieu d'un autre...: On peut ainsi lui offrir la possibilité de simplement le déplacer. 
-- Bien-sûr, interdit s'il y a eût des commentaires par la suite, surtout si autre que par lui-même.

-- Vérification si article_id a changé
-- Si oui, on vérifie qu'il correspond bien à un article
-- On vérifie alors que le nouvel article_id existe
-- Si ce n'est pas le cas, on repose la valeur originale du article_id
-- Si tout va bien, on décompte de1 l'article

DROP TRIGGER IF EXISTS before_update_commentaire;

DELIMITER |
CREATE TRIGGER `before_update_commentaire` BEFORE UPDATE ON `commentaire` FOR EACH ROW
  BEGIN

    IF NEW.article_id <> OLD.article_id
    THEN
      -- Si nouvel article_id n'existe pas, on ne change rien
      -- Devant changer le NEW.article_id à la volée, il aura fallu choisir le moment du déclencher BEFORE
      IF NEW.article_id NOT IN (SELECT id
                                FROM article)
         -- Ou si le commentaire que l'on veut déplacer n'est pas le dernier pour cet article (Peu importe l'auteur: On ne peut déplacer son commentaire que s'il est le dernier de u thread)
         OR (SELECT count(*)
             FROM commentaire

             -- On vérifie qu'il n'y a pas de commentaires
             -- suivant quelque soit l'utilisateur
             WHERE article_id = OLD.article_id
                   AND id > OLD.id
         )

         OR (SELECT count(*)
             FROM commentaire

             -- On vérifie qu'il n'y a pas de commentaires
             -- qui suivraient déjà ce commentaire déplacé
             WHERE article_id = NEW.article_id
                   AND id > NEW.id
            )

            > 0
      THEN
        UPDATE article
        SET NEW.article_id = OLD.article_id
        WHERE id = OLD.article_id;

      -- Prod: Add 1 msg dans la table jobs_sys

      ELSE

        UPDATE article
        SET nb_commentaires = nb_commentaires - 1
        WHERE id = OLD.article_id;

        -- Je veux NULL par défaut si pas de commentaire
        -- Donc si nb = 0 => NULL y est mis
        UPDATE article
        SET nb_commentaires = NULL
        WHERE nb_commentaires = 0
              AND article.id = OLD.article_id;

        UPDATE article
        --  Si nb_commentaire est null, on prend 0 comme valeur initiale
        SET nb_commentaires = coalesce(nb_commentaires, 0) + 1
        WHERE id = NEW.article_id;
      END IF;
    END IF;
  END|
DELIMITER ;

-- Résultats

-- Pour tester création d'un vue pour juste les articles avec leurs nb_commentaires respectifs

DROP VIEW IF EXISTS V_Articles_Commentaires;

CREATE VIEW V_Articles_Commentaires
AS
  SELECT
    id,
    titre,
    nb_commentaires
  FROM article;


-- 1 / 3 - Test en cas d'INSERT

-- Situation actuelle des infos
SELECT *
FROM v_articles_commentaires;

-- Ajout d'une commentaire pour l'article 1
INSERT INTO commentaire (`article_id`, `auteur_id`, `contenu`, `date_commentaire`)
VALUES ('1', '1', 'Tatati...UNIQ CONTENT COMMENT gf,gndfgd@12dsg', NOW());

-- Résultat INSERT (À comparer avec l'onglet précédent, issu du compte initial des commentaires)
SELECT *
FROM v_articles_commentaires;

-- Effaçage du commentaire ajouté justepour tester efficacité des triggers
DELETE FROM commentaire
WHERE contenu = 'Tatati...UNIQ CONTENT COMMENT gf,gndfgd@12dsg';


-- 2 / 3 - Test en cas de DELETE

-- Résultat DELETE (À comparer avec l'onglet précédent, ou encore, doit être identique à la première selection)
SELECT *
FROM v_articles_commentaires;


-- 3 / 3 - Test en cas d'UPDATE

-- Commande non exécutée car du coup, il y aurait déjà un commentaire qui suivrait celui-ci
UPDATE commentaire
SET article_id = 8
WHERE id = 2;

-- on choisit donc un commentaire que l'on peut déplacer
-- En l'occurence, onpique un commentaire de l'article 5
-- pour le donner à l'article 1
UPDATE commentaire
SET article_id = 1
WHERE id = 10;

SELECT *
FROM v_articles_commentaires;

-- on remet dans l'état initial
UPDATE commentaire
SET article_id = 5
WHERE id = 10;


UPDATE commentaire
SET article_id = 1
WHERE id = 2;


SELECT *
FROM v_articles_commentaires;


-- -----------------------------------------------------------------------------------

-- MISSION 2 - 1 partie - Affichage article avec 150 caractères

--  -----------------------------------------------------------------------------------

DROP VIEW IF EXISTS v_article_resume;

CREATE VIEW V_Article_resume
AS
  SELECT
    id,
    titre,
    coalesce(
        if(trim(resume) = '', NULL, trim(resume)),
        if(length(contenu) < 148,
           trim(contenu),
           concat(trim(left(contenu, 147)), '...'))
    ) AS 'résumé ou si absent, extrait du contenu'
  FROM article;

-- Requete pour appeler la Vue
SELECT *
FROM v_article_resume;

-- Test:

INSERT INTO article (titre, resume, contenu, auteur_id, date_publication) VALUES
  ('Long contenu', '', '(realizing) That\'s eighty dollars! Look, if your horse threw his shoe, bring him back and I\'ll re-shoe him! I done shot that
   horse! Well that\'s your problem, Tannen! Wrong. That\'s yours. So from now on, you better be lookin\' behind you when you walk. \'Cause one day you gonna get a bullet 
	in your back. Let\'s go!', 1, '2017-11-11 17:20:07'),

  ('No Résumé', '', 'Lorem ipsum', 1, '2017-11-11 17:20:07');

-- La même vue avec 2 article (id 9 et 10) qui utilise pleinement les fonctions de cette vue
SELECT
  id,
  titre,
  resume,
  contenu
FROM article
WHERE id > 7;

SELECT *
FROM v_article_resume
WHERE id > 7;

-- Remise en état
DELETE FROM article
WHERE `id` > 8;
-- -----------------------------------------------------------------------------------

-- MISSION 3 - 2 parties - Stocker des infos pour statistiques dont mise à jour sera sur demande

--  -----------------------------------------------------------------------------------

-- Partie 1 : Requête pour création et seed de la Vue Matérialisée pour stats

CREATE TABLE IF NOT EXISTS VM_Auteurs_Editions_Commentaires
  ENGINE = InnoDB
    SELECT
      u.id,
      pseudo,
      count(*)                 AS nb_articles,
      (SELECT max(date_publication)
       FROM article
       WHERE auteur_id = u.id) AS date_dernier_article,
      sum(nb_commentaires)     AS nb_commentaires,
      (SELECT coalesce(max(date_commentaire), 'Néant')
       FROM commentaire
       WHERE auteur_id = u.id) AS date_dernier_commentaire

    FROM utilisateur u
      LEFT JOIN article a
        ON a.auteur_id = u.id
    GROUP BY u.id;


-- Partie 2 - Procédure pour Mises à jour sur demande de la VM pour stats ci-dessus

DROP PROCEDURE IF EXISTS maj_Auteurs_Editions_Commentaires;
DELIMITER |
CREATE PROCEDURE maj_Auteurs_Editions_Commentaires()
  BEGIN
    TRUNCATE VM_Auteurs_Editions_Commentaires;

    INSERT INTO VM_Auteurs_Editions_Commentaires
      SELECT
        u.id,
        pseudo,
        count(*)                 AS nb_articles,
        (SELECT max(date_publication)
         FROM article
         WHERE auteur_id = u.id) AS date_dernier_article,
        sum(nb_commentaires)     AS nb_commentaires,
        (SELECT coalesce(max(date_commentaire), 'Néant')
         FROM commentaire
         WHERE auteur_id = u.id) AS date_dernier_commentaire

      FROM utilisateur u
        LEFT JOIN article a
          ON a.auteur_id = u.id
      GROUP BY u.id;
  END |
DELIMITER ;

-- Pour demander une mise à jour
CALL maj_Auteurs_Editions_Commentaires();

-- Résultat final:
SELECT *
FROM vm_Auteurs_Editions_Commentaires;
