DROP PROCEDURE IF EXISTS aaxu.boucleB;
CREATE PROCEDURE aaxu.boucleB()
NO SQL
DETERMINISTIC
  BEGIN
    DECLARE _uid, _parr INT;
    SELECT *
    FROM b;
  END;

CALL boucleB();


DROP PROCEDURE IF EXISTS aaxu.msg;
CREATE PROCEDURE aaxu.msg()
NO SQL
DETERMINISTIC
  BEGIN
    SELECT 'Ok';

  END;

CALL aaxu.msg();

DROP FUNCTION IF EXISTS getParr;
CREATE FUNCTION getParr(idu INT)
  RETURNS INT
DETERMINISTIC
READS SQL DATA
  BEGIN
    SELECT parr into @i
    FROM b
    WHERE id = idu;
    RETURN @i;
  END;

SELECT getParr(3) AS IdParr;

DROP FUNCTION IF EXISTS getCarre;
CREATE FUNCTION getCarre(id INT)
  RETURNS INT
DETERMINISTIC
READS SQL DATA
  BEGIN
    -- select id asIdParr from b where parr = id;
    RETURN id * id;
  END;

SET @i = 25;
SELECT
  @i,
  getParr(@i) AS IdParr;
