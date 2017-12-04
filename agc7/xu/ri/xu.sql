USE aazt;

-- #################### Préparation des tables ##################
TRUNCATE aazt.b1;
TRUNCATE aazt.b2;

INSERT INTO aazt.b1 (uid, uname, parr)
  SELECT
    uid,
    uname,
    parr
  FROM aazt.boosteur;


DELETE FROM b1
WHERE uid = 1 OR uid = 15;

INSERT INTO aazt.b2 (uid, pseudo, parr)
VALUES
  (1, 'Aadminli', NULL);


DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE v_stop, derId, v_id, v_parr, i INT DEFAULT 0;
    DECLARE v_pseudo, v_parrain VARCHAR(255);

    -- Table temporaire des arrivants en attentre
    DROP TEMPORARY TABLE IF EXISTS t_b;
    CREATE TEMPORARY TABLE t_b (
      uid     INT,
      uname   VARCHAR(255),
      parrain VARCHAR(255)
    );

    SELECT max(uid)
    INTO derId
    FROM b1;

    SET i = 2;

    WHILE i <= derId AND i < 3e4 DO

      SELECT
        uid,
        uname,
        parr
      INTO v_id, v_pseudo, v_parrain
      FROM b1
      WHERE uid = i;

      -- select i, v_id, v_pseudo,v_parrain;

      SET v_stop = v_stop + 1;

      IF v_id
      THEN

        DELETE FROM b1
        WHERE uid = v_id;

        SELECT id
        INTO v_parr
        FROM b2
        WHERE PSEUDO = v_parrain;


        IF v_parr
        THEN

          INSERT INTO b2 (pseudo, parr, uid, parrain) VALUES
            (
              v_pseudo,
              v_parr,
              v_id,
              v_parrain
            );


          IF v_pseudo IN (SELECT parrain
                          FROM t_b)
          THEN

            INSERT INTO b1 (uid, uname, parr)
              SELECT
                uid,
                uname,
                parrain
              FROM t_b
              WHERE parrain = v_pseudo;

            DELETE FROM t_b
            WHERE parrain = v_pseudo;

            SET i = v_id - 1;

          END IF;

        ELSE

          INSERT INTO t_b (uid, uname, parrain) VALUES (v_id, v_pseudo, v_parrain);

        END IF;

      END IF;

      SET i = i + 1;

      SET v_id = 0;
      SET v_parr = 0;
      SET v_pseudo = '';
      SET v_parrain = '';


    END WHILE;

  END;

CALL boucle_b1();


SELECT *
FROM aazt.b1;

SELECT count(*)
FROM aazt.b1;

SELECT *
FROM aazt.t_b;

SELECT count(*)
FROM aazt.t_b;

SELECT *
FROM aazt.b2;

SELECT count(*)
FROM aazt.b2;

/*
SELECT *
FROM aazt.b2
WHERE parrain = 'gl06';
*/
