-- ADD COLUMN si elle n'existe pas déjà
DROP PROCEDURE IF EXISTS addColumn;
DELIMITER |
CREATE PROCEDURE addColumn (
  IN theColumn VARCHAR(255),
  IN theTable VARCHAR(255),
  OUT p_addColumn VARCHAR(255)
)
BEGIN
  call columnExists(theColumn, theTable, @columnExists);

  SELECT (
    if	(
   		@columnExists,

			'SELECT Colonne déjà présente',

         CONCAT(
         	'ALTER TABLE article
            ADD COLUMN nb_commentaires
                INT UNSIGNED NULL AFTER date_publication'
         )
        )
  ) into p_addColumn;
  
-- select p_addColumn;

PREPARE st FROM @p_addColumn;
-- EXECUTE st;
-- END;
END|


call addColumn('nb_commentaires', 'article', @p_addColumn);