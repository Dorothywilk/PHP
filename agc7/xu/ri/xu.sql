USE aazt;

-- #################### Préparation des tables ##################
TRUNCATE aazt.b1;
TRUNCATE aazt.b2;
/*
INSERT INTO aazt.b1 (id, pseudo, parrain)
  SELECT
    uid,
    uname,
    parr
  FROM aazt.boosteur;
*/
DELETE FROM b1
WHERE id = 1 OR id = 15;

INSERT INTO aazt.b2 (uid, pseudo)
VALUES
  (1, 'Aadminli');


INSERT INTO aazt.b1 (id, pseudo, parrain)
VALUES
  (2, 'Grcote7', 'Aadminli'),
  (3, 'Doro', 'Grcote7'),
  (4, 'Jade', 'Doro'),
  (5, 'Micky', 'Jeny'),
  (7, 'Arnaud', 'Félicien'),
  (8, 'Mimi', 'Doro'),
  (9, 'Jeny', 'Jade'),
  (10, 'Julien', 'Rom1'),
  (11, 'Jonathan', 'Doro'),
  (12, 'Félicien', 'Julien'),
  (13, 'rom1', 'Doro'),
  (14, 'Greg', 'Jonathan'),
  (15, 'Fanny', 'Jonathan');


DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE v_stop, derIdb1, v_id, v_parr, idEnAtt, i INT DEFAULT 0;
    DECLARE v_pseudo, v_parrain VARCHAR(255);

    SELECT max(id)
    INTO derIdb1
    FROM b1;

    SET i = 1;

    WHILE i <= derIdb1 DO

      SELECT
        id,
        pseudo,
        parrain,
        (SELECT id
         FROM b2
         WHERE pseudo = b1.parrain)
      INTO v_id, v_pseudo, v_parrain, v_parr
      FROM b1
      WHERE id = i;

      SET v_stop = v_stop + 1;

      IF v_id AND v_parr
      THEN

        DELETE FROM b1
        WHERE id = v_id;

        INSERT INTO b2 (pseudo, parr, uid, parrain) VALUES
          (
            v_pseudo,
            v_parr,
            v_id,
            v_parrain
          );


        SELECT id
        INTO idEnAtt
        FROM b1
        WHERE parrain = v_pseudo
              AND id <= i;

        SELECT
          i,
          idEnAtt;


        IF idEnAtt
        THEN

          SELECT (min(id) - 1)
          INTO i
          FROM b1
          WHERE parrain = v_pseudo;

        END IF;

        SET idEnAtt = 0;

      END IF;

      SET i = i + 1;

      SET v_id = 0;
      SET v_parr = 0;
      SET v_pseudo = '';
      SET v_parrain = '';


    END WHILE;

    SELECT
      i,
      v_stop;

    SELECT *
    FROM aazt.b1;

    SELECT *
    FROM aazt.b2;

  END;

CALL boucle_b1();
