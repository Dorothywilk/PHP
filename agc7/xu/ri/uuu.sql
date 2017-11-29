SELECT *
FROM b
LIMIT 3;
CALL boucleXus;
-- Simul récursivité / wwwbos2013_xoops_users
DROP PROCEDURE IF EXISTS `boucleXus`;

-- Exemple de procédure avec boucle
-- Génère ici l'arbre, le groupe
DELIMITER |
CREATE PROCEDURE `boucleXus`()
DETERMINISTIC
NO SQL
  BEGIN
    DECLARE _uid, _parr INT;
    SELECT 'OK21';
  END|
DELIMITER ;


SET @reponses = '7';
CALL getUplineRecursif(7, @id, @reponses);

SELECT
  @pere,
  @reponses;

DROP PROCEDURE IF EXISTS `getUplineRecursif`;
SET @@max_sp_recursion_depth = 255;
DELIMITER |
CREATE PROCEDURE getUplineRecursif(
  IN    ori      INT,
  INOUT pere     INT,
  INOUT reponses VARCHAR(255)
)
  BEGIN
    SELECT parr
    INTO pere
    FROM b
    WHERE id = ori;

    IF pere IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', pere);
      SET ori = pere;
      CALL getUplineRecursif(pere, pere, reponses);
    END IF;
  END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE recherchePeresV1(
  INOUT ori      INT,
  INOUT id       INT,
  INOUT reponses VARCHAR(255),
  IN    orii     INT
  --  INOUT reponses VARCHAR(255)
)
  BEGIN
    SET ori = orii;
    SELECT fam_pere
    INTO id
    FROM FAMILLE
    WHERE FAM_ID = ori;

    IF id IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', id);
      SET orii = id;
      CALL RecherchePeres(ori, id, reponses, id);
    END IF;
  END |
DELIMITER ;


SELECT @reponses;
