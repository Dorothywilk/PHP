USE arbre;

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

SET @reponses = '12';
CALL getUpline(12, @id, @reponses);

SELECT
  @pere,
  @reponses;

DROP PROCEDURE IF EXISTS `getUpline`;
SET @@max_sp_recursion_depth = 255;
DELIMITER |
CREATE PROCEDURE getUpline(
  IN    ori      INT,
  INOUT pere     INT,
  INOUT reponses VARCHAR(255)
)
  BEGIN
    SELECT fam_pere
    INTO pere
    FROM FAMILLE
    WHERE FAM_ID = ori;

    IF pere IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', pere);
      SET ori = pere;
      CALL getUpline(pere, pere, reponses);
    END IF;
  END |
DELIMITER ;

DELIMITER |
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


--  Avec bornes , par représentation intervallaires


CREATE TABLE NEW_FAMILLE
(
  NFM_BG  INTEGER,
  NFM_BD  INTEGER,
  NFM_LIB VARCHAR(16)
);


INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (1, 44, 'Transport');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (2, 21, 'Aérien');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (3, 4, 'Planeur');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (5, 6, 'Parachute');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (7, 8, 'Hélico');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (9, 10, 'Fusée');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (11, 12, 'ULM');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (13, 20, 'Avion');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (14, 15, 'Militaire');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (16, 17, 'Tourisme');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (18, 19, 'Civil');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (22, 35, 'Terrestre');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (23, 24, 'Vélo');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (25, 26, 'Voiture');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (27, 28, 'Camion');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (29, 34, 'Moto');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (30, 31, 'Side-car');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (32, 33, 'Trail');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (36, 43, 'Marin');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (37, 38, 'Planche à voile');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (39, 40, 'Paquebot');
INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB) VALUES (41, 42, 'Voilier');


-- Recherche de toutes les feuilles
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BD - NFM_BG = 1;

-- Rappel de la Famille + voir .gif (tree3)
SELECT *
FROM FAMILLE;

-- Toutes les feuilles sous un élément de référence
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BD - NFM_BG = 1
      AND NFM_BG > 22
      AND NFM_BD < 35;


-- Recherche de tous les noeuds
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BD - NFM_BG > 1;

-- Recherche de tous les noeuds sous un élément de référence
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BD - NFM_BG > 1
      AND NFM_BG > 2
      AND NFM_BD < 21;


-- Recherche de tous les éléments sous un élément de référence
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG > 22
      AND NFM_BD < 35;


-- Idem, inclus l'élément de référence
-- qui devient alors racine du sous-arbre
-- (Ajout d'index sur les colonnes BG-BD --> 260ms => 26ms)
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG >= 22
      AND NFM_BD <= 35;


-- Tous les éléments indépendants d'un élément de référence
-- (complément au sous arbre)
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG < 22
      OR NFM_BD > 35;

-- En inversant les bornes, on obtient les groupes frères (23ms !)!
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG > 35
      OR NFM_BD < 22;

-- Tous les pères d'un élément de référence (La Upline 32ms !)
-- Ici Upline du Side-car
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG < 30
      AND NFM_BD > 31;

-- Avec l'élément de référence
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG <= 30
      AND NFM_BD >= 31;

-- Le parrain
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG < 30
      AND NFM_BD > 31
ORDER BY NFM_BG DESC
LIMIT 1;


-- La racine du groupe global (22ms)
-- Si les insertions sont toujours faites par la droite
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG = 1;

-- Recherche par la 'largeur' (48ms)
-- En cas d'insertion des 2 côtés
SELECT *
FROM NEW_FAMILLE
WHERE (NFM_BD - NFM_BG + 1) / 2 = (SELECT COUNT(*)
                                   FROM NEW_FAMILLE);

-- Ou alors, recherche de l'élément
-- qui a la plus grande longueur d'intervalle (17ms)
SELECT *
FROM NEW_FAMILLE
WHERE (NFM_BD - NFM_BG) = (SELECT MAX(NFM_BD - NFM_BG)
                           FROM NEW_FAMILLE);


-- Compter les feuilles
-- Astuce: Utilisation de l'index de la colonne BG
SELECT COUNT(*) AS FEUILLES
FROM NEW_FAMILLE
WHERE NFM_BG = NFM_BD - 1;

-- Compter les noeuds
SELECT COUNT(*) AS NOEUDS
FROM NEW_FAMILLE
WHERE NFM_BG <> NFM_BD - 1;


-- Insertion d'un élément (Par la droite)
-- Exemple: Roller sous Terrestre (2,35)
-- Prod: Dans transaction
UPDATE NEW_FAMILLE
SET NFM_BD = NFM_BD + 2
WHERE NFM_BD >= 35;

UPDATE NEW_FAMILLE
SET NFM_BG = NFM_BG + 2
WHERE NFM_BG >= 35;

INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB)
VALUES (35, 36, 'Roller');

-- Sa upline
SELECT *
FROM NEW_FAMILLE
WHERE NFM_BG < 35
      AND NFM_BD > 36;

-- Suppression d'un élément
-- Exemple: Suppr d'ULM
-- NB: À faire dans l'ordre
DELETE FROM NEW_FAMILLE
WHERE NFM_BG = 11;

UPDATE NEW_FAMILLE
SET NFM_BG = NFM_BG - 2
WHERE NFM_BG >= 11;

UPDATE NEW_FAMILLE
SET NFM_BD = NFM_BD - 2
WHERE NFM_BD >= 11;


-- Suppression d'un sous arbre
-- Exemple: Terrestre
DELETE FROM NEW_FAMILLE
WHERE NFM_BG >= 22
      AND NFM_BD <= 35;

-- Renumérotons alors les bornes situées à droite du sous arbre supprimé, avec un décalage de : 35 - 22 + 1, soit 14
UPDATE NEW_FAMILLE
SET NFM_BD = NFM_BD - 14
WHERE NFM_BD >= 22;

UPDATE NEW_FAMILLE
SET NFM_BG = NFM_BG - 14
WHERE NFM_BG > 22;

-- Pour représentation graphique, ajout champs niveau
ALTER TABLE arbre.new_famille ADD NFM_NIVEAU INT NOT NULL;


-- Calcul des niveaux pour chaque élément
UPDATE NEW_FAMILLE
SET NFM_NIVEAU = (
  SELECT count(*)
  FROM NEW_FAMILLE
  WHERE NFM_BG < 7
        AND NFM_BD > 8
)
WHERE nfm_bg = 1;
SELECT *
FROM new_famille;
