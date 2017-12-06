USE aazt;
-- Script avec double-curseur
-- (Reprend la pile depuis le début que qd idEnAtt d'un membre,
-- sinon, reprend script principal là où il en était avant de rentrer dans cette procédure)


-- #################### Préparation des tables ##################


DROP TABLE IF EXISTS aazt.b1;
CREATE TABLE aazt.b1
    SELECT
      uid   AS id,
      uname AS pseudo,
      parr  AS parrain
    FROM aazt.boosteurori;
--    LIMIT 0;

-- ALTER TABLE `b1` COLLATE = 'utf8_unicode_ci';
ALTER TABLE `b1`
CHANGE COLUMN `pseudo` `pseudo` VARCHAR(250) NOT NULL DEFAULT '' COLLATE 'latin1_general_ci'
AFTER `id`;
ALTER TABLE `b1`
CHANGE COLUMN `parrain` `parrain` VARCHAR(250) NOT NULL DEFAULT '' COLLATE 'latin1_general_ci'
AFTER `pseudo`;

DELETE FROM b1
WHERE id = 1 OR id = 15;

/*
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
*/

DROP TABLE IF EXISTS aazt.b2;
CREATE TABLE `b2` (
  `id`      INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pseudo`  VARCHAR(250)     NOT NULL DEFAULT '' COLLATE 'latin1_general_ci',
  `parrain` VARCHAR(250)     NULL     DEFAULT '0' COLLATE 'latin1_general_ci',
  `uid`     INT(10) UNSIGNED NULL     DEFAULT '0',
  `parr`    INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)
  COLLATE = 'latin1_general_ci'
  ENGINE = InnoDB
  AUTO_INCREMENT = 1;

-- ALTER TABLE `b2` COLLATE = 'utf8_unicode_ci';

INSERT INTO aazt.b2 (uid, pseudo)
VALUES
  (1, 'Aadminli');


DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE rechFilleuls BOOLEAN DEFAULT FALSE;
    DECLARE debut DATETIME DEFAULT SYSDATE();
    DECLARE v_stop, v_fin, derIdb1, v_id, v_parr, idEnAtt, i, cursori INT DEFAULT 0;
    DECLARE v_pseudo, v_parrain VARCHAR(255);

    SELECT max(id)
    INTO derIdb1
    FROM b1;

    SET i = 1;

    SET v_fin = 1e3;

    WHILE i <= derIdb1 AND v_stop < v_fin DO -- AND v_stop < v_fin

     -- if (i=9) then select i; end if;

      SET v_stop = v_stop + 1;

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


      IF v_id AND v_parr
      THEN
        /*
                SELECT
                  i,
                  cursori,
                  rechFilleuls,
                  v_id,
                  v_pseudo,
                  v_parrain,
                  v_parr,
                  idEnAtt,
                  cursori,
                  v_stop;
        */
        DELETE FROM b1
        WHERE id = v_id;

        INSERT INTO b2 (pseudo, parr, uid, parrain) VALUES
          (
            v_pseudo,
            v_parr,
            v_id,
            v_parrain
          );

        IF cursori < i
        THEN SET cursori = i;
        END IF;

        SELECT min(id)
        INTO idEnAtt
        FROM b1
        WHERE parrain = v_pseudo
              AND id <= cursori;


        IF idEnAtt
        THEN

          SET rechFilleuls = TRUE;

          SET cursori = i;
          SET i = idEnAtt - 1;

        /*
        SELECT
          'Recherche de filleuls',
          i,
          cursori,
          idEnAtt,
          rechFilleuls;
*/
        END IF;


        -- SELECT idEnAtt;


        IF rechFilleuls AND isnull(idEnAtt)
        THEN
          SET rechFilleuls = FALSE;
          SET i = cursori;
          SET cursori = 0;
        /*
                  SELECT
                    'Fin de la chasse',
                    i,
                    cursori;
        */

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
      debut                                                AS Début,
      i,
      cursori,
      rechFilleuls,
      v_stop,
      SYSDATE()                                            AS Fin,
      SEC_TO_TIME(TIMESTAMPDIFF(SECOND, debut, SYSDATE())) AS Chrono;

    SELECT *
    FROM aazt.b1;

    SELECT *
    FROM aazt.b2;

  END;

CALL boucle_b1();

/*
CREATE TABLE xuB2
    SELECT *
    FROM b2;
*/

