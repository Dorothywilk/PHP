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
