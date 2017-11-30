USE aazt;
DROP PROCEDURE IF EXISTS simuRecursivite;
CREATE PROCEDURE simuRecursivite(IN i INT)
  BEGIN
    declare rep varchar(255) default 0;
    WHILE i > 0 DO
      SET rep =
      trim(concat(i, ' (', (SELECT getParr(i)), ') ', rep));
      SET i = i - 1;
    END WHILE;
    -- SET @reponses = rep;
     -- , length(reponses) AS 'Longueur de la chaîne';
    SELECT
      rep,
      length(rep) AS 'Longueur de la chaîne';
  END;
CALL simuRecursivite(4);


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

