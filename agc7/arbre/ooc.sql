USE arbre;

CREATE TABLE tuto_herit (
  forum_id        MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  forum_parent_id MEDIUMINT(8)          DEFAULT NULL,
  forum_name      VARCHAR(30)  NOT NULL,

  PRIMARY KEY (forum_id),
  KEY forum_parent_id (forum_parent_id)
);

INSERT INTO tuto_herit (forum_id, forum_parent_id, forum_name)
VALUES
  (1, NULL, '1'),
  (2, 1, '1.1'),
  (3, 2, '1.1.1'),
  (4, 3, '1.1.1.1'),
  (5, 4, '1.1.1.1.1'),
  (6, 5, '1.1.1.1.1.1'),
  (7, 6, '1.1.1.1.1.1.1'),
  (8, 6, '1.1.1.1.1.1.2'),
  (9, 6, '1.1.1.1.1.1.3'),
  (10, 4, '1.1.1.1.1.2'),
  (11, 4, '1.1.1.1.1.3'),
  (12, 4, '1.1.1.1.2'),
  (13, 4, '1.1.1.1.3'),
  (14, 2, '1.1.2'),
  (15, 1, '1.2'),
  (16, 1, '1.3'),
  (17, 1, '1.4'),
  (18, 11, '1.4.1'),
  (19, 11, '1.4.2'),

  (20, NULL, '2')/*,[...]*/;


CREATE TABLE tuto_ri (
  forum_id     MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  forum_level  MEDIUMINT(8) NOT NULL DEFAULT 0,
  forum_gauche MEDIUMINT(8) NOT NULL,
  forum_droite MEDIUMINT(8) NOT NULL,
  forum_name   VARCHAR(30)  NOT NULL,

  PRIMARY KEY (forum_id),
  KEY forum_gauche (forum_gauche),
  KEY forum_droite (forum_droite)
);

INSERT INTO tuto_ri (forum_id, forum_level, forum_gauche, forum_droite, forum_name)
VALUES
  (1, 0, 1, 38, '1'),
  (2, 1, 2, 27, '1.1'),
  (3, 2, 3, 24, '1.1.1'),
  (4, 3, 4, 23, '1.1.1.1'),
  (5, 4, 5, 18, '1.1.1.1.1'),
  (6, 5, 6, 13, '1.1.1.1.1.1'),
  (7, 6, 7, 8, '1.1.1.1.1.1.1'),
  (8, 6, 9, 10, '1.1.1.1.1.1.2'),
  (9, 6, 11, 12, '1.1.1.1.1.1.3'),
  (10, 5, 14, 15, '1.1.1.1.1.2'),
  (11, 5, 16, 17, '1.1.1.1.1.3'),
  (12, 4, 19, 20, '1.1.1.1.2'),
  (13, 4, 21, 22, '1.1.1.1.3'),
  (14, 2, 25, 26, '1.1.2'),
  (15, 1, 28, 29, '1.2'),
  (16, 1, 30, 31, '1.3'),
  (17, 1, 32, 37, '1.4'),
  (18, 2, 33, 34, '1.4.1'),
  (19, 2, 35, 36, '1.4.2'),

  (20, 0, 39, 40, '2')/*,[...]*/;


SELECT
  forum_id,
  forum_level,
  forum_name
FROM tuto_ri
WHERE forum_gauche < 7
      AND forum_droite > 8
ORDER BY forum_gauche DESC;


-- nb enfants
SELECT count(*)
FROM tuto_ri
WHERE forum_gauche > 3
      AND forum_droite < 24;


--  nb upline
SELECT count(*)
FROM tuto_ri
WHERE forum_gauche < 3
      AND forum_droite > 24;


-- nb enfants feuilles
SELECT count(*)
FROM tuto_ri
WHERE forum_droite - forum_gauche = 1
      AND forum_gauche > 3
      AND forum_droite < 24;


-- nb enfants noeuds
SELECT count(*)
FROM tuto_ri
WHERE forum_droite - forum_gauche <> 1
      AND forum_gauche > 3
      AND forum_droite < 24;


-- Ajout d'un enfant
UPDATE tuto_ri
SET forum_droite = forum_droite + 2
WHERE forum_droite >= 22;

UPDATE tuto_ri
SET forum_gauche = forum_gauche + 2
WHERE forum_gauche >= 22;

INSERT INTO tuto_ri (forum_level, forum_gauche, forum_droite, forum_name)
VALUES (5, 22, 23, '1.1.1.1.3.1');


-- Suppr d'un noeud
DELETE
FROM tuto_ri
WHERE forum_gauche = 22;

UPDATE tuto_ri
SET forum_gauche = forum_gauche - 2
WHERE forum_gauche >= 22;

UPDATE tuto_ri
SET forum_droite = forum_droite - 2
WHERE forum_droite >= 22;
