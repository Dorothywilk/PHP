USE aazt;

DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE casNormal INT DEFAULT TRUE;
    DECLARE v_id, v_stop, v_parr, v_parrainRecherche, raf INT;
    DECLARE v_parrainAttendu, v_pseudo, v_parrain VARCHAR(255);

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

    -- IF v_parainRecherche

    SELECT count(*) AS nb
    INTO raf
    FROM b1;


    WHILE raf AND v_stop < 2 DO

      SET v_stop = v_stop + 1;


      SELECT parr
      INTO v_parrainAttendu
      FROM aazt.b1
      WHERE parr IN (SELECT pseudo
                     FROM aazt.b2)
      LIMIT 1;

      SELECT
        'vid',
        v_id,
        v_parrainAttendu;


      IF casNormal
      THEN
        OPEN b_cursor;

        b_loop: LOOP
          FETCH b_cursor
          INTO v_id, v_pseudo, v_parrain;

          SELECT id
          INTO v_parr
          FROM b2
          WHERE PSEUDO = v_parrain;

          -- SET v_parrain = concat(v_parrain, ' ', LAST_INSERT_ID);

          IF done OR v_stop = 111 OR casNormal
          THEN
            SELECT
              done,
              v_stop,
              casNormal,
              v_id;
            SET v_parrainRecherche = (v_id + 1);
            SET v_parrainAttendu = v_parrain;
            SELECT
              'Dans sortie',
              'vid',
              v_id,
              v_parrainAttendu;
            LEAVE b_loop;
          END IF;

          --      if v_parr = 0
          --      THEN
          -- SET tour = TRUE;
          --      END IF;

          SET v_stop = v_stop + 1;

          IF v_parr <> 0
          THEN

            SELECT 'insertion';

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

      END IF;

    END WHILE;

    SELECT v_stop;
  END;

CALL boucle_b1();

SELECT *
FROM b1;
SELECT *
FROM b2;
