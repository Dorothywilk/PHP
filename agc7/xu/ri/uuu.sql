USE aazt;

SELECT *
FROM b;

-- b1 pour copie de b et suppression progressive des fiche
CREATE TABLE b1
    SELECT *
    FROM b;

SELECT *
FROM b1;

CREATE TABLE b2
    SELECT *
    FROM b;

truncate b2;

SELECT *
FROM b2;


DROP TABLE xutB;

-- Table à compléter (BUT)
CREATE TABLE xutB
    SELECT *
    FROM xut;

TRUNCATE xutB;

SELECT *
FROM xutb;

CALL boucleB();

DROP PROCEDURE IF EXISTS boucleB;
CREATE PROCEDURE `boucleB`()
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id INT;
    DECLARE v_pseudo, v_parr VARCHAR(255);

    DECLARE b_cursor CURSOR FOR
      SELECT
        uid,
        uname,
        parr
      FROM b;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    DROP TEMPORARY TABLE IF EXISTS t_b;
    CREATE TEMPORARY TABLE t_b (
      id     INT,
      pseudo VARCHAR(255),
      parr   VARCHAR(255)
    );

    OPEN b_cursor;

    b_loop: LOOP
      FETCH b_cursor
      INTO v_id, v_pseudo, v_parr;

      IF done
      THEN
        LEAVE b_loop;
      END IF;

      INSERT INTO t_b (id, pseudo, parr) VALUES
        (v_id,
         v_pseudo,
         v_parr);
    END LOOP;

    CLOSE b_cursor;

    SELECT *
    FROM t_b;

  END;
