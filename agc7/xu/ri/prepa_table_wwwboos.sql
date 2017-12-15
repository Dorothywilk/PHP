USE aazt;

-- Préparation de la table wwwboos: Nouvelle numérotation des id (plus de trous) + membres insérés
--  dans la table dans leur ordre d'arrivée dans le Groupe
-- Nécessaire pour représentation intervallaire (xu)

-- Script sans double-curseur
-- (Reprend la pile depuis le début dès que idEnAtt)
-- ToFixLi bur / table réelle // ordre des 'idEnAtt'


-- #################### Préparation des tables ##################


DROP TABLE IF EXISTS aazt.b1;
CREATE TABLE aazt.b1
    SELECT
      uid   AS id,
      uname AS pseudo,
      parr  AS parrain
    FROM aazt.boosteurori;

-- ALTER TABLE `b1` COLLATE = 'utf8_unicode_ci';
ALTER TABLE `b1`
CHANGE COLUMN `pseudo` `pseudo` VARCHAR(250) NOT NULL DEFAULT '' COLLATE 'latin1_general_ci'
AFTER `id`;
ALTER TABLE `b1`
CHANGE COLUMN `parrain` `parrain` VARCHAR(250) NOT NULL DEFAULT '' COLLATE 'latin1_general_ci'
AFTER `pseudo`;

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


DELETE FROM b1
WHERE id = 1 OR id = 15;


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
    DECLARE flag_Sub BOOLEAN DEFAULT FALSE;
    DECLARE debut DATETIME DEFAULT SYSDATE();
    DECLARE v_stop, derIdb1, v_id, v_parr, idEnAtt, i INT DEFAULT 0;
    DECLARE v_pseudo, v_parrain VARCHAR(255);

    SELECT max(id)
    INTO derIdb1
    FROM b1;

    SET i = 1;

    WHILE i <= derIdb1 AND v_stop < 1000 DO -- and v_stop<100

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

        SELECT min(id)
        INTO idEnAtt
        FROM b1
        WHERE parrain = v_pseudo
              AND id <= i;
        /*
                SELECT
                  i,
                  idEnAtt;
        */

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
      debut                                                AS Début,
      i,
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
