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
        v_id,
        v_pseudo,
        v_parrain;

      SELECT id
      INTO v_parr
      FROM b2
      WHERE PSEUDO = v_parrain;

      SELECT id
      FROM b2
      WHERE PSEUDO = v_parrain;

      SET v_parrain = concat(v_parrain, ' ', v_parr);

      IF done OR v_stop = 111 OR v_parr = 0
      THEN
        LEAVE b_loop;
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
      END IF;
    END LOOP;

    CLOSE b_cursor;

    SELECT *
    FROM b1;

  END;

CALL boucle_b1();
SELECT *
FROM b2;

