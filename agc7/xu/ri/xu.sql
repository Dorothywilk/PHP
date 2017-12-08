USE aaxu;

SELECT *
FROM xu;


/*
-- Re-initialise Aadminli pour départ tests
SELECT *
FROM xu;
*/

-- #################################################################################################
--
--            PROCÉDURE pour INSERTION et calcul des bornes et profondeur (pf)
--
-- #################################################################################################
-- ToDoLi ajout lock Table qd Opé + activer transaction (Cf. arbre/exemple_proc.sql)
-- ToDoLi Cf. arbre/exemple_proc.sql pour proc avec boucle
/*
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


DROP PROCEDURE insertXu;
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

    -- SET @pseudoParr = pseudoRef;

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

SELECT
  pseudo AS pseudoRef,
  bg     AS bgRef,
  bd     AS bdRef,
  pf     AS pfRef
FROM xu
WHERE id = 1;


USE aaxu;

DROP PROCEDURE test_boucle;
DELIMITER |
CREATE DEFINER =`root`@`localhost` PROCEDURE `test_boucle`(IN `p_id` INT)
  BEGIN
    DECLARE v_pseudoId VARCHAR(255);

    DECLARE curs_xus CURSOR
    FOR SELECT
          id,
          pseudo
        FROM aaxu.xu
        WHERE id < p_id;

    OPEN curs_xus;

    LOOP
      FETCH curs_xus
      INTO v_pseudoId;
      SELECT CONCAT(v_pseudoId, ' ', id) AS 'Xu';
    END LOOP;

    CLOSE curs_xus;
  END|

CALL test_boucle(10);


CREATE DEFINER =`root`@`localhost` PROCEDURE `test_condition`(IN `p_ville` VARCHAR(100)) BEGIN
  DECLARE v_nom, v_prenom VARCHAR(100);

  DECLARE curs_clients CURSOR
  FOR SELECT
        nom,
        prenom
      FROM Client
      WHERE ville = p_ville;

  OPEN curs_clients;

  LOOP
    FETCH curs_clients
    INTO v_nom, v_prenom;
    SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Client';
  END LOOP;

  CLOSE curs_clients;
  END$$

CREATE DEFINER =`root`@`localhost` PROCEDURE `test_condition2`(IN `p_ville` VARCHAR(100)) BEGIN
  DECLARE v_nom, v_prenom VARCHAR(100);

  -- On déclare fin comme un BOOLEAN, avec FALSE pour défaut
  DECLARE fin BOOLEAN DEFAULT FALSE;

  DECLARE curs_clients CURSOR
  FOR SELECT
        nom,
        prenom
      FROM Client
      WHERE ville = p_ville;

  -- On utilise TRUE au lieu de 1
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = TRUE;

  OPEN curs_clients;

  loop_curseur: LOOP
    FETCH curs_clients
    INTO v_nom, v_prenom;

    IF fin
    THEN -- Plus besoin de "= 1"
      LEAVE loop_curseur;
    END IF;

    SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Client';
  END LOOP;

  CLOSE curs_clients;
  END$$

CREATE DEFINER =`root`@`localhost` PROCEDURE `test_iterate`() BEGIN
  DECLARE v_i INT DEFAULT 0;

  boucle_while: WHILE v_i < 3 DO
    SET v_i = v_i + 1;
    SELECT
      v_i,
      'Avant IF' AS message;

    IF v_i = 2
    THEN
      ITERATE boucle_while;
    END IF;

    SELECT
      v_i,
      'Après IF' AS message;
    -- Ne sera pas exécuté pour v_i = 2
  END WHILE;
  END$$
*/
