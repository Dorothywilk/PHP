SHOW TABLES;

CREATE TABLE FAMILLE
(
  FAM_ID   INTEGER,
  FAM_LIB  VARCHAR(16),
  FAM_PERE INTEGER
);


INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (0, 'Transport', NULL);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (1, 'Terrestre', 0);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (2, 'Marin', 0);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (3, 'Aérien', 0);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (4, 'Voiture', 1);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (5, 'Camion', 1);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (6, 'Moto', 1);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (7, 'Vélo', 1);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (8, 'Hélico', 3);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (9, 'Avion', 3);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (10, 'ULM', 3);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (11, 'Fusée', 3);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (12, 'Parachute', 3);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (13, 'Planeur', 3);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (14, 'Voilier', 2);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (15, 'Paquebot', 2);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (16, 'Planche à voile', 2);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (17, 'Trail', 6);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (18, 'Side-car', 6);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (19, 'Civil', 9);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (20, 'Tourisme', 9);
INSERT INTO FAMILLE (FAM_ID, FAM_LIB, FAM_PERE) VALUES (21, 'Militaire', 9);

ALTER TABLE arbre.famille ADD PRIMARY KEY (FAM_ID);

SELECT *
FROM FAMILLE;


-- Recherche du 'père' du parachute (id = 12)
SELECT *
FROM FAMILLE
WHERE FAM_ID = (SELECT FAM_PERE
                FROM FAMILLE
                WHERE FAM_ID = 12);

-- Recherche récursive de tous les ascendants

SET @reponses='12';
CALL RecherchePeres(@ori, @id, @reponses, 12);

DROP PROCEDURE IF EXISTS `RecherchePeres`;
DELIMITER |
CREATE PROCEDURE recherchePeres(
  INOUT ori      INT,
  INOUT pere       INT,
  INOUT reponses VARCHAR(255),
  IN    orii     INT
)
  BEGIN
    SELECT fam_pere
    INTO pere
    FROM FAMILLE
    WHERE FAM_ID = orii;

    IF pere IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', pere);
      SET orii = pere;
      CALL RecherchePeres(ori, pere, reponses, pere);
    END IF;
  END |
DELIMITER ;

CREATE PROCEDURE recherchePeresV1(
  INOUT ori      INT,
  INOUT id       INT,
  INOUT reponses VARCHAR(255),
  IN    orii     INT
  --  INOUT reponses VARCHAR(255)
)
  BEGIN
    SET ori = orii;
    SELECT fam_pere
    INTO id
    FROM FAMILLE
    WHERE FAM_ID = ori;

    IF id IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', id);
      SET orii = id;
      CALL RecherchePeres(ori, id, reponses, id);
    END IF;
  END |
DELIMITER ;


SELECT @reponses;


SELECT fam_id
FROM FAMILLE
WHERE FAM_ID = (SELECT FAM_PERE
                FROM FAMILLE
                WHERE FAM_ID = 12);


CREATE FUNCTION hello(s CHAR(20))
  RETURNS CHAR(50) DETERMINISTIC
  RETURN CONCAT('Hello, ', s, '!');

SELECT hello('world');


SET @@max_sp_recursion_depth = 255;

