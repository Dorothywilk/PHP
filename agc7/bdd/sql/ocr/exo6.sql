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
          concat('select ', @respExists, ' as Résultat'),
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
CALL addColumn('n00850b_commentaires', 'article', @p_addColumn);
