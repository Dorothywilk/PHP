USE ocr2;

-- Retourne 1 si la colonne existe ou 0 sinon
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

-- ADD COLUMN si elle n'existe pas déjà
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
    SELECT p_addColumn AS qqq;
  END|
DELIMITER ;

CALL addColumn('nb_commentaires', 'article', @p_addColumn);


USE ocr2;

-- DROP COLUMN (si elle existe)
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
-- END;

CALL addColumn('nb_commentaires', 'article', @addColumn);
CALL dropColumn('nb_commentaires', 'article', @dropColumn);
CALL addColumn('nb_commentaires', 'article', @addColumn);


-- Ajout addColum pour nb_commentaires....

CALL addColumn('nb_commentaires', 'article', @p_addColumn);


-- Triggers

-- 11111111111111111111111111111
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


# 222222222222222222222222222222222222222222222222222222222222
DROP TRIGGER IF EXISTS after_insert_commentaire;

CREATE TRIGGER `after_insert_commentaire` AFTER INSERT ON `commentaire` FOR EACH ROW
  BEGIN
    UPDATE article
    SET nb_commentaires = nb_commentaires + 1
    WHERE commentaire.article_id = NEW.id;
  END;


# 33333333333333333333333333333333333333333333333333333333
# DELETE FROM `ocr2`.`commentaire`
# WHERE commentaire.id IN (SELECT max(id)
#                          FROM (SELECT id
#                                FROM commentaire) AS tmp);


DROP TRIGGER IF EXISTS after_delete_commentaire;

CREATE TRIGGER `after_delete_commentaire`
AFTER DELETE ON `commentaire` FOR EACH ROW
  BEGIN
    UPDATE article
    SET nb_commentaires = nb_commentaires - 1
    WHERE article.id = OLD.article_id;
  END;

# 44444444444444444444444444444444444444444444444444444444444

-- Pour UPDATE

-- Choix est fait d'accepter le fait de pouvoir changer un l'article_id d'un commentaire (Exemple, en cas d'erreur de l'utilisateur qui croyait l'avoir posé à un endroit, au lieu d'un autre...: On peut ainsi lui offrir la possibilité de simplement le déplacer. Bien-sûr, interdit s'il y a eût des commentaires par la suite, surtout si autre que par lui-même.

-- Vérification si article_id a changé
-- Si oui, on vérifie qu'il correspond bien à un article
-- On vérifie alors que le nouvel article_id existe
-- Si ce n'est pas le cas, on repose la valeur originale du article_id
-- Si tout va bien, on décompte de1 l'article

DROP TRIGGER IF EXISTS before_update_commentaire;

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
  END;

# 5555555555555555555555555555555555555555555555555555555555555
# -------------------------------------------------------------
# Affichage article avec 150 caractères
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

-- Requete our appeler la Vue
SELECT *
FROM v_article_resume;


SELECT
  id,
  titre,
  coalesce(
      if(trim(resume) = '', NULL, trim(resume)),
      if(length(contenu) < 148,
         trim(contenu),
         concat(left(contenu, 147), '...'))
  )
FROM article;

# 666666666666666666666666666666666666666666666666666666666666666

-- 3 / Stats

-- Requête qui servira pour seed de la Vue Matérialisée

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


# 777777777777777777777777777777777777777777777777777777777777777

-- Trigger pour Mise à jour sur demande de la VM ci-dessus

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
