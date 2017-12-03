USE aazt;


-- #################### Préparation des tables ##################
TRUNCATE aazt.b1;
TRUNCATE aazt.b2;

INSERT INTO aazt.b1 (uid, uname, parr)
VALUES
  (5, 'Micky', 'Jeny'),
  (7, 'Mimi', 'Doro'),
  (8, 'Jeny', 'Jade'),
  (9, 'Julien', 'Rom1'),
  (10, 'Jonathan', 'Doro'),
  (11, 'Félicien', 'Rom1'),
  (12, 'rom1', 'Doro'),
  (13, 'Greg', 'Jonathan'),
  (14, 'Fanny', 'Jonathan');

INSERT INTO aazt.b2 (uid, pseudo, parr)
VALUES
  (1, 'Aadminli', NULL),
  (2, 'Grcote7', 1),
  (3, 'Doro', 2),
  (4, 'Jade', 3);


-- On attaque la pile !
DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE casNormal INT DEFAULT TRUE;
    DECLARE v_id, v_stop, v_parr, v_paUid, v_parrainRecherche, rafb1, raftb, uidea, i INT DEFAULT 0;
    DECLARE v_parrainAttendu, v_pseudo, v_parrain VARCHAR(255);

    -- Table temporaire des arrivants en attentre
    DROP TEMPORARY TABLE IF EXISTS t_b;
    CREATE TEMPORARY TABLE t_b (
      uid     INT,
      uname   VARCHAR(255),
      parrId  INT,
      parrain VARCHAR(255)
    );

    SET i = 5;

    WHILE i <= (SELECT max(uid)
                FROM b1) DO

      SELECT
        uid,
        uname,
        parr
      INTO v_id, v_pseudo, v_parrain
      FROM b1
      WHERE uid = i;

      SELECT
        'Début',
        i,
        v_id,
        v_pseudo,
        v_parrain;

      SET v_stop = v_stop + 1;

      -- select 'Alerte', v_parr;

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

          SELECT concat(v_pseudo, ' a un parrain dans b2 dont l\'id est ', v_parr);

          SELECT 'Insertion b2';

          INSERT INTO b2 (pseudo, parr, uid, parrain) VALUES
            (
              v_pseudo,
              v_parr,
              v_id,
              v_parrain
            );

          SELECT
            'Dans entrée',
            done,
            v_stop,
            casNormal,
            'vid',
            v_id,
            v_pseudo,
            v_parr,
            v_parrain,
            v_paUid,
            v_parrainAttendu,
            v_parrainRecherche;


          IF v_pseudo IN (SELECT parrain
                          FROM t_b)
          THEN

            SELECT 'Je suis le parrain de quelqu\'un, gérons-le ';

            INSERT INTO b2 (pseudo, parr, uid, parrain)

              SELECT
                uname,
                (SELECT id
                 FROM b2
                 WHERE pseudo = v_pseudo),
                uid,
                parrain
              FROM t_b
              WHERE parrain = v_pseudo;


          END IF;

        ELSE

          SELECT 'Insertion t_b';

          INSERT INTO t_b (uid, uname, parrain) VALUES (v_id, v_pseudo, v_parrain);

          SELECT
            'Salle attente',
            uid,
            uname,
            parrain
          FROM aazt.t_b;


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

SELECT *
FROM aazt.t_b;

SELECT *
FROM aazt.b2;

#
# SELECT
#   parr,
#   uid
# FROM aazt.b1
# WHERE parr IN (SELECT pseudo
#                FROM aazt.b2)
# LIMIT 1;
