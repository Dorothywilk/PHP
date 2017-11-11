USE ocr2;

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
SELECT * FROM article;


--                                   MISSION 1
-- Partie 2222222222222222222222222222222222222222222222222222222222222222222222222222
-- / 4

DROP TRIGGER IF EXISTS after_insert_commentaire;

DELIMITER |
CREATE TRIGGER `after_insert_commentaire` AFTER INSERT ON `commentaire` FOR EACH ROW
  BEGIN
    UPDATE article
    SET nb_commentaires = nb_commentaires + 1
    WHERE commentaire.article_id = NEW.id;
  END;
DELIMITER ;

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
  END|
DELIMITER ;


-- -----------------------------------------------------------------------------------
--                                   MISSION 1
-- Partie 4444444444444444444444444444444444444444444444444444444444444444444444444444
-- / 4


-- Pour UPDATE

-- Choix est fait d'accepter le fait de pouvoir changer un l'article_id d'un commentaire (Exemple, en cas d'erreur de l'utilisateur qui croyait l'avoir posé à un endroit, au lieu d'un autre...: On peut ainsi lui offrir la possibilité de simplement le déplacer. Bien-sûr, interdit s'il y a eût des commentaires par la suite, surtout si autre que par lui-même.

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

             WHERE article_id = OLD.article_id
                   AND id > OLD.id
            ) > 0
      THEN
        UPDATE article
        SET NEW.article_id = OLD.article_id
        WHERE id = OLD.article_id;
      ELSE
        -- On vérifie qu'il n'y a pas eût de commentaires suivant par un autre utilisateur

        UPDATE article
        SET nb_commentaires = nb_commentaires - 1
        WHERE id = OLD.article_id;

        UPDATE article
        --  Si nb_commentaire est null, on prend 0 comme valeur initiale
        SET nb_commentaires = coalesce(nb_commentaires, 0) + 1
        WHERE id = NEW.article_id;
      END IF;
    END IF;
  END|
DELIMITER ;

-- Résultat


-- 1 / 3 - Test en cas d'inster

-- Ajout d'une commentaire pour l'article 1
INSERT INTO commentaire (`article_id`, `auteur_id`, `contenu`, `date_commentaire`)
VALUES ('1', '1', 'Tatati...', NOW());

-- Résultat INSERT (À comparer avec l'onglet précédent, issu du compte initial des commentaires)
SELECT * FROM article;

-- Effaçage du commentaire ajouté justepour tester efficacité des triggers
DELETE FROM commentaire WHERE contenu = 'Tatati...';


-- 2 / 3 - Test en cas de delete

-- Résultat DELETE (À comparer avec l'onglet précédent, ou encore, doit être identique à la première selection)
SELECT * FROM article;


-- 3 / 3 - Test en cas d'update


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
           concat(left(contenu, 147), '...'))
    ) AS 'contenu'
  FROM article;

-- Requete pour appeler la Vue
SELECT *
FROM v_article_resume;


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
SELECT * FROM vm_Auteurs_Editions_Commentaires;
