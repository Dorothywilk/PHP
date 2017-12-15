USE aaxu;

/*
DELETE FROM xu
WHERE id > 1;

-- Ini bg de Aadminli
UPDATE xu
SET parr = 0, bd = 2
WHERE id = 1;

ALTER TABLE `xu`
AUTO_INCREMENT = 1;
*/

DROP PROCEDURE IF EXISTS wboos2Xu;
DELIMITER |
CREATE DEFINER =`root`@`localhost` PROCEDURE `wboos2Xu`(IN `p_id` INT(11)) BEGIN
  DECLARE debut DATETIME DEFAULT SYSDATE();
  DECLARE v_id, v_uid INT(11);
  DECLARE v_pseudo, v_parr VARCHAR(255);

  -- On déclare fin comme un BOOLEAN, avec FALSE pour défaut
  DECLARE fin BOOLEAN DEFAULT FALSE;

  DECLARE curs_xus CURSOR
  FOR SELECT
        id,
        pseudo,
        parr,
        uid
      FROM xub2
      WHERE id > 1 AND id < p_id;


  -- On utilise TRUE au lieu de 1
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = TRUE;

  SET p_id = p_id + 1;

  OPEN curs_xus;

  loop_curseur: LOOP
    FETCH curs_xus
    INTO v_id, v_pseudo, v_parr, v_uid;

    IF fin
    THEN
      LEAVE loop_curseur;
    END IF;

    IF p_id < 50
    THEN SELECT CONCAT((v_id - 1), ': ', v_pseudo, ', ', v_parr) AS 'Xu';
    END IF;

    CALL insertXuAvecUid(v_pseudo, v_parr, v_uid);
  END LOOP;

  CLOSE curs_xus;
  SELECT
            debut                                                AS Début,
    (SELECT count(*)
     FROM xu),
            SYSDATE()                                            AS Fin,
            SEC_TO_TIME(TIMESTAMPDIFF(SECOND, debut, SYSDATE())) AS Chrono;
END|

-- CALL wboos2Xu(26e3);
# CALL wboos2Xu(77);

SELECT *
FROM xu;

-- Représentation graphique
SELECT concat(repeat(' ', pf * 7), pseudo) 'Arborescence'
FROM xu
ORDER BY bg
limit 10;
/*
-- Re-initialise Aadminli pour départ tests
SELECT *
FROM xu;
*/

/*
-- #################################################################################################
--
--            PROCÉDURE pour INSERTION et calcul des bornes et profondeur (pf)
--
-- #################################################################################################
-- ToDoLi ajout lock Table qd Opé + activer transaction (Cf. arbre/exemple_proc.sql)
-- ToDoLi Cf. arbre/exemple_proc.sql pour proc avec boucle

CALL insertXu('GrCOTE7', 1);
SELECT *
FROM xu;
SELECT
  @pseudoParr,
  @idParr;

CALL insertXu('Doro', 2);
CALL insertXu('Jade', 3);
SELECT *
FROM xu;
*/

DROP PROCEDURE IF EXISTS insertXuAvecUid;
DELIMITER |
CREATE DEFINER =`root`@`localhost` PROCEDURE `insertXuAvecUid`(
  IN `pseudoXu` VARCHAR(255),
  IN `idRef`    INT,
  IN `uidRef`   INT
)
  BEGIN
    -- START TRANSACTION;

    DECLARE pseudoRef VARCHAR(255);
    DECLARE bgRef, bdRef, pfRef INT(11);

    -- Réc valeur du parr
    SELECT
      pseudo,
      bg,
      bd,
      pf
    INTO pseudoRef, bgRef, bdRef, pfRef
    FROM xu
    WHERE id = idRef;

    UPDATE xu
    SET bd = bd + 2
    WHERE bd >= bdRef;

    UPDATE xu
    SET bg = bg + 2
    WHERE bg >= bdRef;

    INSERT INTO xu (pseudo, parrain, parr, bg, bd, pf, uid)
    VALUES (pseudoXu, pseudoRef, idRef, bdRef, (bdRef + 1), (pfRef + 1), uidRef);

    -- COMMIT;
  END |
DELIMITER ;

DROP PROCEDURE IF EXISTS insertXu;
DELIMITER |
CREATE DEFINER =`root`@`localhost` PROCEDURE `insertXu`(
  IN `pseudoXu` VARCHAR(255),
  IN `idRef`    INT
)
  BEGIN
    -- START TRANSACTION;

    DECLARE pseudoRef VARCHAR(255);
    DECLARE bgRef, bdRef, pfRef INT(11);

    -- Réc valeur du parr
    SELECT
      pseudo,
      bg,
      bd,
      pf
    INTO pseudoRef, bgRef, bdRef, pfRef
    FROM xu
    WHERE id = idRef;

    UPDATE xu
    SET bd = bd + 2
    WHERE bd >= bdRef;

    UPDATE xu
    SET bg = bg + 2
    WHERE bg >= bdRef;

    INSERT INTO xu (pseudo, parrain, parr, bg, bd, pf)
    VALUES (pseudoXu, pseudoRef, idRef, bdRef, (bdRef + 1), (pfRef + 1));

    -- COMMIT;
  END |
DELIMITER ;
