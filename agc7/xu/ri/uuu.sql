USE aazt;

DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id, v_stop, v_parr INT;
    DECLARE v_pseudo, v_parrain VARCHAR(255);

    DECLARE b_cursor CURSOR FOR
      SELECT
        uid,
        uname,
        parr
      FROM b1;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;


    -- Var pour stopper la boucle à la volée
    SET v_stop = 0;
    SET v_parr = 0;

    OPEN b_cursor;

    b_loop: LOOP
      FETCH b_cursor
      INTO v_id, v_pseudo, v_parrain;

      SELECT
        'ligne 29',
        v_id,
        v_pseudo,
        v_parrain;

      SELECT count(*)
      INTO v_parr
      FROM b2
      WHERE PSEUDO = v_parrain;

      SELECT
        v_parr,
        done,
        v_stop;

      -- SET v_parrain = concat(v_parrain, ' ', LAST_INSERT_ID);

      IF done
      THEN
        SELECT 'Je quitte';
        LEAVE b_loop;
      END IF;

      SELECT v_parr;

      IF v_parr = 0
      THEN
        ITERATE b_loop;
      END IF;

      SET v_stop = v_stop + 1;

      IF v_parr <> 0
      THEN
        INSERT INTO b2 (pseudo, parr, uid, parrain) VALUES
          (
            v_pseudo,
            v_parr,
            v_id,
            v_parrain
          );

        -- SET v_parrain = concat(v_parrain, ' ', LAST_INSERT_ID());
        -- update b2 set Parrain = v_parrain where pseudo = v_pseudo;

        DELETE FROM b1
        WHERE uid = LAST_INSERT_ID();

      END IF;
    END LOOP;

    CLOSE b_cursor;

  END;

USE aazt;

SELECT *
FROM b1;

SELECT *
FROM b2;

CALL boucle_b1();

SELECT *
FROM b1;

SELECT *
FROM b2;


SELECT uid
FROM aazt.b1
WHERE parr IN (SELECT pseudo
                   FROM aazt.b2 limit 1)
