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