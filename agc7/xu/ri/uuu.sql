DROP PROCEDURE IF EXISTS aaxu.simuRecursivite;
CREATE PROCEDURE aaxu.simuRecursivite(INOUT reponses VARCHAR(255))
  BEGIN
    DECLARE i INT;
    SET i = 3;
    SET reponses = '';
    WHILE i > 0 DO
      SELECT trim(concat(i, ' (', (SELECT getParr(i)), ') ', reponses))
      INTO reponses;
      SET i = i - 1;
    END WHILE;
  END;
CALL aaxu.simuRecursivite(@reponses);
SELECT
  @reponses,
  length(@reponses) AS 'Longueur de la chaîne';


DROP PROCEDURE IF EXISTS aaxu.boucleX;
CREATE PROCEDURE aaxu.boucleX(INOUT reponses VARCHAR(65500))
  BEGIN
    DECLARE i INT;
    SET i = 3000;
    SET reponses = '';
    WHILE i > 0 DO
      SELECT trim(concat(i, ' (', (SELECT getCarre(i)), ') ', reponses))
      INTO reponses;
      SET i = i - 1;
    END WHILE;
  END;
CALL boucleX(@reponses);
SELECT
  @reponses,
  length(@reponses) AS 'Longueur de la chaîne';


DROP PROCEDURE IF EXISTS aaxu.boucleI;
CREATE PROCEDURE aaxu.boucleI()
  BEGIN
    DECLARE i INT;
    SET i = 1;
    DROP TEMPORARY TABLE IF EXISTS t_rep;
    CREATE TEMPORARY TABLE t_rep (
      n     INT(11),
      carre INT(255),
      PRIMARY KEY (n)
    );
    WHILE i < 101 DO
      INSERT INTO t_rep (n, carre) VALUES (i, (SELECT getCarre(i)));
      SET i = i + 1;
    END WHILE;
  END;
CALL boucleI();
SELECT *
FROM t_rep;


SELECT
  @reponses,
  length(@reponses) AS 'Longueur de la chaîne';

