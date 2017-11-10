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

CALL addColumn('n00850b_commentaires', 'article', @p_addColumn);


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
DELETE FROM `ocr2`.`commentaire`
WHERE commentaire.id IN (SELECT max(id)
                         FROM (SELECT id
                               FROM commentaire) AS tmp);


DROP TRIGGER IF EXISTS after_delete_commentaire;

CREATE TRIGGER `after_delete_commentaire`
AFTER DELETE ON `commentaire` FOR EACH ROW
  BEGIN
    UPDATE article
    SET nb_commentaires = nb_commentaires - 1
    WHERE article.id = OLD.article_id;
  END;

# 44444444444444444444444444444444444444444444444444444444444
