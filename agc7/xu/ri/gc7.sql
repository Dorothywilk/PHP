-- ToDoLi create database aagc7
USE aac7;

DROP TABLE IF EXISTS xus;
CREATE TABLE xus
    SELECT
      uid,
      uname,
      (SELECT uid
       FROM www_boos2013.xoops_users xxu
       WHERE xxu.uname = xu.parr) AS parr
    FROM www_boos2013.xoops_users xu
    LIMIT 1;

INSERT INTO xus (uid, uname, parr)
  SELECT
    uid,
    uname,
    (SELECT uid
     FROM www_boos2013.xoops_users xxu
     WHERE xxu.uname = xu.parr) AS parr
  FROM www_boos2013.xoops_users xu
  LIMIT 2, 1;
;

INSERT INTO xus (uid, uname, parr) VALUES (77, 'kkk', 1);

SELECT *
FROM xus;


DROP PROCEDURE IF EXISTS test_boucle_xus;
DELIMITER |

CREATE PROCEDURE `test_boucle_xus`(IN `p_id` INT)
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id INT;
    DECLARE v_pseudo VARCHAR(255);

    DECLARE xus_cursor CURSOR FOR
      SELECT
        uid,
        uname
      FROM aaxu.xus
      WHERE uid < p_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN xus_cursor;

    xus_loop: LOOP
      FETCH xus_cursor
      INTO v_id, v_pseudo;

      IF done
      THEN
        LEAVE xus_loop;
      END IF;

      SELECT
        v_id,
        v_pseudo;
    END LOOP;

    CLOSE xus_cursor;
  END|
DELIMITER ;


CALL test_boucle_xus(21);
