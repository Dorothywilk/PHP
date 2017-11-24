SET NAMES utf8;

DROP VIEW IF EXISTS V_Animal_details;
DROP VIEW IF EXISTS V_Animal_espece;
DROP VIEW IF EXISTS V_Animal_stagiaire;
DROP VIEW IF EXISTS V_Chien;
DROP VIEW IF EXISTS V_Chien_race;
DROP VIEW IF EXISTS V_Client;
DROP VIEW IF EXISTS V_Espece_dollars;
DROP VIEW IF EXISTS V_Nombre_espece;
DROP VIEW IF EXISTS V_Revenus_annee_espece;

DROP TABLE IF EXISTS Erreur;
DROP TABLE IF EXISTS Animal_histo;
DROP TABLE IF EXISTS VM_Revenus_annee_espece;

DROP TABLE IF EXISTS Adoption;
DROP TABLE IF EXISTS Animal;
DROP TABLE IF EXISTS Race;
DROP TABLE IF EXISTS Espece;
DROP TABLE IF EXISTS Client;

CREATE TABLE Client (
  id             SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  nom            VARCHAR(100)         NOT NULL,
  prenom         VARCHAR(60)          NOT NULL,
  adresse        VARCHAR(200)                  DEFAULT NULL,
  code_postal    VARCHAR(6)                    DEFAULT NULL,
  ville          VARCHAR(60)                   DEFAULT NULL,
  pays           VARCHAR(60)                   DEFAULT NULL,
  email          VARBINARY(100)                DEFAULT NULL,
  date_naissance DATE                          DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY ind_uni_email (email)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 17;

LOCK TABLES Client WRITE;
INSERT INTO Client VALUES (1, 'Dupont', 'Jean', 'Rue du Centre, 5', '45810', 'Houtsiplou', 'France',
                           'jean.dupont@email.com', NULL),
  (2, 'Boudur', 'Marie', 'Place de la Gare, 2', '35840', 'Troudumonde', 'France', 'marie.boudur@email.com', NULL),
  (3, 'Trachon', 'Fleur', 'Rue haute, 54b', '3250', 'Belville', 'Belgique', 'fleurtrachon@email.com', NULL),
  (4, 'Van Piperseel', 'Julien', NULL, NULL, NULL, NULL, 'jeanvp@email.com', NULL),
  (5, 'Nouvel', 'Johan', NULL, NULL, NULL, 'Suisse', 'johanetpirlouit@email.com', NULL),
  (6, 'Germain', 'Frank', NULL, NULL, NULL, NULL, 'francoisgermain@email.com', NULL),
  (7, 'Antoine', 'Maximilien', 'Rue Moineau, 123', '4580', 'Trocoul', 'Belgique', 'max.antoine@email.com', NULL),
  (8, 'Di Paolo', 'Hector', NULL, NULL, NULL, 'Suisse', 'hectordipao@email.com', NULL),
  (9, 'Corduro', 'Anaelle', NULL, NULL, NULL, NULL, 'ana.corduro@email.com', NULL),
  (10, 'Faluche', 'Eline', 'Avenue circulaire, 7', '45870', 'Garduche', 'France', 'elinefaluche@email.com', NULL),
  (11, 'Penni', 'Carine', 'Boulevard Haussman, 85', '1514', 'Plasse', 'Suisse', 'cpenni@email.com', NULL),
  (12, 'Broussaille', 'Virginie', 'Rue du Fleuve, 18', '45810', 'Houtsiplou', 'France',
   'vibrousaille@email.com', NULL),
  (13, 'Durant', 'Hannah', 'Rue des Pendus, 66', '1514', 'Plasse', 'Suisse', 'hhdurant@email.com',
   NULL),
  (14, 'Delfour', 'Elodie', 'Rue de Flore, 1', '3250', 'Belville', 'Belgique',
   'e.delfour@email.com', NULL),
  (15, 'Kestau', 'Joel', NULL, NULL, NULL, NULL, 'joel.kestau@email.com', NULL);
UNLOCK TABLES;


CREATE TABLE Espece (
  id          SMALLINT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  nom_courant VARCHAR(40)          NOT NULL,
  nom_latin   VARCHAR(40)          NOT NULL,
  description TEXT,
  prix        DECIMAL(7, 2) UNSIGNED        DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY nom_latin (nom_latin)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 8;

LOCK TABLES Espece WRITE;
INSERT INTO Espece VALUES (1, 'Chien', 'Canis canis',
                           'Bestiole à quatre pattes qui aime les caresses et tire souvent la langue',
                           200.00), (2, 'Chat', 'Felis silvestris',
                                     'Bestiole à quatre pattes qui saute très haut et grimpe aux arbres',
                                     150.00),
  (3, 'Tortue d''Hermann', 'Testudo hermanni', 'Bestiole avec une carapace très dure', 140.00),
  (4, 'Perroquet amazone', 'Alipiopsitta xanthops', 'Joli oiseau parleur vert et jaune', 700.00),
  (5, 'Rat brun', 'Rattus norvegicus',
   'Petite bestiole avec de longues moustaches et une longue queue sans poils', 10.00),
  (6, 'Perruche terrestre', 'Pezoporus wallicus',
   'Joli oiseau aux plumes majoritairement vert brillant', 20.00);
UNLOCK TABLES;


CREATE TABLE Race (
  id                       SMALLINT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  nom                      VARCHAR(40)          NOT NULL,
  espece_id                SMALLINT(6) UNSIGNED NOT NULL,
  description              TEXT,
  prix                     DECIMAL(7, 2) UNSIGNED        DEFAULT NULL,
  date_insertion           DATETIME                      DEFAULT NULL,
  utilisateur_insertion    VARCHAR(20)                   DEFAULT NULL,
  date_modification        DATETIME                      DEFAULT NULL,
  utilisateur_modification VARCHAR(20)                   DEFAULT NULL,
  PRIMARY KEY (id)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 11;

LOCK TABLES Race WRITE;
INSERT INTO Race VALUES (1, 'Berger allemand', 1,
                         'Chien sportif et élégant au pelage dense, noir-marron-fauve, noir ou gris.',
                         485.00, '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
  (2, 'Berger blanc suisse', 1,
   'Petit chien au corps compact, avec des pattes courtes mais bien proportionnées et au pelage tricolore ou bicolore.',
   935.00, '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
  (3, 'Singapura', 2, 'Chat de petite taille aux grands yeux en amandes.', 985.00,
   '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
  (4, 'Bleu russe', 2, 'Chat aux yeux verts et à la robe épaisse et argentée.', 835.00,
   '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
  (5, 'Maine Coon', 2, 'Chat de grande taille, à poils mi-longs.', 735.00, '2012-05-21 00:53:36',
   'Test', '2012-05-27 18:10:46', 'sdz@localhost'),
  (7, 'Sphynx', 2, 'Chat sans poils.', 1235.00, '2012-05-21 00:53:36', 'Test',
   '2012-05-21 00:53:36', 'Test'),
  (8, 'Nebelung', 2, 'Chat bleu russe, mais avec des poils longs...', 985.00, '2012-05-21 00:53:36',
   'Test', '2012-05-21 00:53:36', 'Test'),
  (9, 'Rottweiller', 1,
   'Chien d''apparence solide, bien musclé, à la robe noire avec des taches feu bien délimitées.',
   630.00, '2012-05-21 00:53:36', 'Test', '2012-05-22 00:54:13', 'sdz@localhost'),
  (10, 'Yorkshire terrier', 1,
   'Chien de petite taille au pelage long et soyeux de couleur bleu et feu.', 700.00,
   '2012-05-22 00:58:25', 'sdz@localhost', '2012-05-22 00:58:25', 'sdz@localhost');
UNLOCK TABLES;


CREATE TABLE Animal (
  id             SMALLINT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  sexe           CHAR(1)                       DEFAULT NULL,
  date_naissance DATETIME             NOT NULL,
  nom            VARCHAR(30)                   DEFAULT NULL,
  commentaires   TEXT,
  espece_id      SMALLINT(6) UNSIGNED NOT NULL,
  race_id        SMALLINT(6) UNSIGNED          DEFAULT NULL,
  mere_id        SMALLINT(6) UNSIGNED          DEFAULT NULL,
  pere_id        SMALLINT(6) UNSIGNED          DEFAULT NULL,
  disponible     TINYINT(1)                    DEFAULT '1',
  PRIMARY KEY (id),
  UNIQUE KEY ind_uni_nom_espece_id (nom, espece_id)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 81;


CREATE TABLE Adoption (
  client_id        SMALLINT(5) UNSIGNED   NOT NULL,
  animal_id        SMALLINT(5) UNSIGNED   NOT NULL,
  date_reservation DATE                   NOT NULL,
  date_adoption    DATE                            DEFAULT NULL,
  prix             DECIMAL(7, 2) UNSIGNED NOT NULL,
  paye             TINYINT(1)             NOT NULL DEFAULT '0',
  PRIMARY KEY (client_id, animal_id),
  UNIQUE KEY ind_uni_animal_id (animal_id)
)
  ENGINE = InnoDB;

LOCK TABLES Adoption WRITE;
INSERT INTO Adoption
VALUES (1, 8, '2012-05-21', NULL, 735.00, 1), (1, 39, '2008-08-17', '2008-08-17', 735.00, 1),
  (1, 40, '2008-08-17', '2008-08-17', 735.00, 1),
  (2, 3, '2011-03-12', '2011-03-12', 835.00, 1), (2, 18, '2008-06-04', '2008-06-04', 485.00, 1),
  (3, 27, '2009-11-17', '2009-11-17', 200.00, 1),
  (4, 26, '2007-02-21', '2007-02-21', 485.00, 1), (4, 41, '2007-02-21', '2007-02-21', 835.00, 1),
  (5, 21, '2009-03-08', '2009-03-08', 200.00, 1),
  (6, 16, '2010-01-27', '2010-01-27', 200.00, 1), (7, 5, '2011-04-05', '2011-04-05', 150.00, 1),
  (8, 42, '2008-08-16', '2008-08-16', 735.00, 1),
  (9, 38, '2007-02-11', '2007-02-11', 985.00, 1), (9, 55, '2011-02-13', '2011-02-13', 140.00, 1),
  (9, 59, '2012-05-22', NULL, 700.00, 0),
  (10, 49, '2010-08-17', '2010-08-17', 140.00, 0), (11, 32, '2008-08-17', '2010-03-09', 140.00, 1),
  (11, 62, '2011-03-01', '2011-03-01', 630.00, 0),
  (12, 15, '2012-05-22', NULL, 200.00, 1), (12, 69, '2007-09-20', '2007-09-20', 10.00, 1),
  (12, 75, '2012-05-21', NULL, 10.00, 0),
  (13, 57, '2012-01-10', '2012-01-10', 700.00, 1), (14, 58, '2012-02-25', '2012-02-25', 700.00, 1),
  (15, 30, '2008-08-17', '2008-08-17', 735.00, 1);
UNLOCK TABLES;


CREATE TABLE VM_Revenus_annee_espece (
  annee     INT(4)               NOT NULL DEFAULT '0',
  espece_id SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  somme     DECIMAL(29, 2)                DEFAULT NULL,
  nb        BIGINT(21)           NOT NULL DEFAULT '0',
  PRIMARY KEY (annee, espece_id),
  KEY somme (somme)
)
  ENGINE = InnoDB;

LOCK TABLES VM_Revenus_annee_espece WRITE;
INSERT INTO VM_Revenus_annee_espece
VALUES (2007, 1, 485.00, 1), (2007, 2, 1820.00, 2), (2007, 5, 10.00, 1), (2008, 1, 485.00, 1),
  (2008, 2, 2940.00, 4),
  (2008, 3, 140.00, 1), (2009, 1, 400.00, 2), (2010, 1, 200.00, 1), (2010, 3, 140.00, 1),
  (2011, 1, 630.00, 1),
  (2011, 2, 985.00, 2), (2011, 3, 140.00, 1), (2012, 1, 200.00, 1), (2012, 2, 735.00, 1),
  (2012, 4, 2100.00, 3), (2012, 5, 10.00, 1);
UNLOCK TABLES;


CREATE TABLE Animal_histo (
  id                SMALLINT(6) UNSIGNED NOT NULL,
  sexe              CHAR(1)              DEFAULT NULL,
  date_naissance    DATETIME             NOT NULL,
  nom               VARCHAR(30)          DEFAULT NULL,
  commentaires      TEXT,
  espece_id         SMALLINT(6) UNSIGNED NOT NULL,
  race_id           SMALLINT(6) UNSIGNED DEFAULT NULL,
  mere_id           SMALLINT(6) UNSIGNED DEFAULT NULL,
  pere_id           SMALLINT(6) UNSIGNED DEFAULT NULL,
  disponible        TINYINT(1)           DEFAULT '1',
  date_histo        DATETIME             NOT NULL,
  utilisateur_histo VARCHAR(20)          NOT NULL,
  evenement_histo   CHAR(6)              NOT NULL,
  PRIMARY KEY (id, date_histo)
)
  ENGINE = InnoDB;

LOCK TABLES Animal_histo WRITE;
INSERT INTO Animal_histo VALUES
  (10, 'M', '2010-07-21 15:41:00', 'Bobo', NULL, 1, NULL, 7, 21, 1, '2012-05-22 01:00:34',
   'sdz@localhost', 'UPDATE'),
  (19, 'F', '2009-05-26 09:02:00', 'Java', NULL, 1, 2, NULL, NULL, 1, '2012-05-27 18:14:29',
   'sdz@localhost', 'UPDATE'),
  (21, 'F', '2008-03-10 13:43:00', 'Pataude', NULL, 1, NULL, NULL, NULL, 0, '2012-05-27 18:10:40',
   'sdz@localhost', 'UPDATE'),
  (47, 'F', '2009-03-26 01:24:00', 'Scroupy', 'Bestiole avec une carapace très dure', 3, NULL, NULL,
   NULL, 1, '2012-05-22 01:00:34', 'sdz@localhost', 'DELETE'),
  (77, 'F', '2017-03-26 01:24:00', 'Toxi', NULL, 1, NULL, NULL, NULL, 1, '2012-05-27 18:12:38',
   'sdz@localhost', 'DELETE');
UNLOCK TABLES;


CREATE TABLE Erreur (
  id     TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  erreur VARCHAR(255)                 DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY erreur (erreur)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 8;

LOCK TABLES Erreur WRITE;
INSERT INTO Erreur VALUES (5, 'Erreur : date_adoption doit être >= à date_reservation.'),
  (3, 'Erreur : paye doit valoir TRUE (1) ou FALSE (0).'),
  (1, 'Erreur : sexe doit valoir \"M\", \"F\" ou NULL.');
UNLOCK TABLES;


ALTER TABLE Race ADD CONSTRAINT fk_race_espece_id FOREIGN KEY (espece_id) REFERENCES Espece (id);

ALTER TABLE Animal ADD CONSTRAINT fk_espece_id FOREIGN KEY (espece_id) REFERENCES Espece (id);

ALTER TABLE Animal ADD CONSTRAINT fk_mere_id FOREIGN KEY (mere_id) REFERENCES Animal (id);
ALTER TABLE Animal ADD CONSTRAINT fk_pere_id FOREIGN KEY (pere_id) REFERENCES Animal (id);

ALTER TABLE Animal ADD CONSTRAINT fk_race_id FOREIGN KEY (race_id) REFERENCES Race (id);
# ALTER TABLE Adoption ADD CONSTRAINT fk_adoption_animal_id FOREIGN KEY (animal_id) REFERENCES Animal (id);
ALTER TABLE Adoption ADD CONSTRAINT fk_client_id FOREIGN KEY (client_id) REFERENCES Client (id);
ALTER TABLE VM_Revenus_annee_espece ADD CONSTRAINT fk_vm_revenu_espece_id FOREIGN KEY (espece_id) REFERENCES Espece (id)
  ON DELETE CASCADE;


DELIMITER |

CREATE TRIGGER before_insert_adoption BEFORE INSERT
ON Adoption FOR EACH ROW
  BEGIN
    IF NEW.paye != TRUE
       AND NEW.paye != FALSE
    THEN
      INSERT INTO Erreur (erreur) VALUES ('Erreur : paye doit valoir TRUE (1) ou FALSE (0).');

    ELSEIF NEW.date_adoption < NEW.date_reservation
      THEN
        INSERT INTO Erreur (erreur)
        VALUES ('Erreur : date_adoption doit être >= à date_reservation.');
    END IF;
  END |

CREATE TRIGGER after_insert_adoption AFTER INSERT
ON Adoption FOR EACH ROW
  BEGIN
    UPDATE Animal
    SET disponible = FALSE
    WHERE id = NEW.animal_id;

    INSERT INTO VM_Revenus_annee_espece (espece_id, annee, somme, nb)
      SELECT
        espece_id,
        YEAR(NEW.date_reservation),
        NEW.prix,
        1
      FROM Animal
      WHERE id = NEW.animal_id
    ON DUPLICATE KEY UPDATE somme = somme + NEW.prix, nb = nb + 1;
  END |

CREATE TRIGGER before_update_adoption BEFORE UPDATE
ON Adoption FOR EACH ROW
  BEGIN
    IF NEW.paye != TRUE
       AND NEW.paye != FALSE
    THEN
      INSERT INTO Erreur (erreur) VALUES ('Erreur : paye doit valoir TRUE (1) ou FALSE (0).');

    ELSEIF NEW.date_adoption < NEW.date_reservation
      THEN
        INSERT INTO Erreur (erreur)
        VALUES ('Erreur : date_adoption doit être >= à date_reservation.');
    END IF;
  END |

CREATE TRIGGER after_update_adoption AFTER UPDATE
ON Adoption FOR EACH ROW
  BEGIN
    IF OLD.animal_id <> NEW.animal_id
    THEN
      UPDATE Animal
      SET disponible = TRUE
      WHERE id = OLD.animal_id;

      UPDATE Animal
      SET disponible = FALSE
      WHERE id = NEW.animal_id;
    END IF;

    INSERT INTO VM_Revenus_annee_espece (espece_id, annee, somme, nb)
      SELECT
        espece_id,
        YEAR(NEW.date_reservation),
        NEW.prix,
        1
      FROM Animal
      WHERE id = NEW.animal_id
    ON DUPLICATE KEY UPDATE somme = somme + NEW.prix, nb = nb + 1;

    UPDATE VM_Revenus_annee_espece
    SET somme = somme - OLD.prix, nb = nb - 1
    WHERE annee = YEAR(OLD.date_reservation)
          AND espece_id = (SELECT espece_id
                           FROM Animal
                           WHERE id = OLD.animal_id);

    DELETE FROM VM_Revenus_annee_espece
    WHERE nb = 0;
  END |

CREATE TRIGGER after_delete_adoption AFTER DELETE
ON Adoption FOR EACH ROW
  BEGIN
    UPDATE Animal
    SET disponible = TRUE
    WHERE id = OLD.animal_id;

    UPDATE VM_Revenus_annee_espece
    SET somme = somme - OLD.prix, nb = nb - 1
    WHERE annee = YEAR(OLD.date_reservation)
          AND espece_id = (SELECT espece_id
                           FROM Animal
                           WHERE id = OLD.animal_id);

    DELETE FROM VM_Revenus_annee_espece
    WHERE nb = 0;
  END |

CREATE TRIGGER before_insert_animal BEFORE INSERT
ON Animal FOR EACH ROW
  BEGIN
    IF NEW.sexe IS NOT NULL
       AND NEW.sexe != 'M'
       AND NEW.sexe != 'F'
       AND NEW.sexe != 'A'
    THEN
      INSERT INTO Erreur (erreur) VALUES ('Erreur : sexe doit valoir "M", "F", "A" ou NULL.');
    END IF;
  END |

CREATE TRIGGER before_update_animal BEFORE UPDATE
ON Animal FOR EACH ROW
  BEGIN
    IF NEW.sexe IS NOT NULL
       AND NEW.sexe != 'M'
       AND NEW.sexe != 'F'
       AND NEW.sexe != 'A'
    THEN
      SET NEW.sexe = NULL;
    END IF;
  END |

CREATE TRIGGER after_update_animal AFTER UPDATE
ON Animal FOR EACH ROW
  BEGIN
    INSERT INTO Animal_histo (
      id, sexe, date_naissance, nom, commentaires, espece_id, race_id,
      mere_id, pere_id, disponible, date_histo, utilisateur_histo, evenement_histo)
    VALUES (
      OLD.id, OLD.sexe, OLD.date_naissance, OLD.nom, OLD.commentaires, OLD.espece_id, OLD.race_id,
      OLD.mere_id, OLD.pere_id, OLD.disponible, NOW(), CURRENT_USER(), 'UPDATE');
  END |

CREATE TRIGGER after_delete_animal AFTER DELETE
ON Animal FOR EACH ROW
  BEGIN
    INSERT INTO Animal_histo (
      id, sexe, date_naissance, nom, commentaires, espece_id, race_id,
      mere_id, pere_id, disponible, date_histo, utilisateur_histo, evenement_histo)
    VALUES (
      OLD.id, OLD.sexe, OLD.date_naissance, OLD.nom, OLD.commentaires, OLD.espece_id, OLD.race_id,
      OLD.mere_id, OLD.pere_id, OLD.disponible, NOW(), CURRENT_USER(), 'DELETE');
  END |

CREATE TRIGGER before_delete_espece BEFORE DELETE
ON Espece FOR EACH ROW
  BEGIN
    DELETE FROM Race
    WHERE espece_id = OLD.id;
  END |

CREATE TRIGGER before_insert_race BEFORE INSERT
ON Race FOR EACH ROW
  BEGIN
    SET NEW.date_insertion = NOW();
    SET NEW.utilisateur_insertion = CURRENT_USER();
    SET NEW.date_modification = NOW();
    SET NEW.utilisateur_modification = CURRENT_USER();
  END |

CREATE TRIGGER before_update_race BEFORE UPDATE
ON Race FOR EACH ROW
  BEGIN
    SET NEW.date_modification = NOW();
    SET NEW.utilisateur_modification = CURRENT_USER();
  END |

CREATE TRIGGER before_delete_race BEFORE DELETE
ON Race FOR EACH ROW
  BEGIN
    UPDATE Animal
    SET race_id = NULL
    WHERE race_id = OLD.id;
  END |

DELIMITER ;

CREATE VIEW V_Animal_details AS
  SELECT
    Animal.id,
    Animal.sexe,
    Animal.date_naissance,
    Animal.nom,
    Animal.commentaires,
    Animal.espece_id,
    Animal.race_id,
    Animal.mere_id,
    Animal.pere_id,
    Animal.disponible,
    Espece.nom_courant AS espece_nom,
    Race.nom           AS race_nom
  FROM Animal
    JOIN Espece ON Animal.espece_id = Espece.id
    LEFT JOIN Race ON Animal.race_id = Race.id;

CREATE VIEW V_Animal_espece AS
  SELECT
    Animal.id,
    Animal.sexe,
    Animal.date_naissance,
    Animal.nom,
    Animal.commentaires,
    Animal.espece_id,
    Animal.race_id,
    Animal.mere_id,
    Animal.pere_id,
    Animal.disponible,
    Espece.nom_courant AS espece_nom,
    Espece.nom_latin   AS espece_nom_latin
  FROM Animal
    JOIN Espece ON Espece.id = Animal.espece_id;

CREATE VIEW V_Animal_stagiaire AS
  SELECT
    Animal.id,
    Animal.nom,
    Animal.sexe,
    Animal.date_naissance,
    Animal.espece_id,
    Animal.race_id,
    Animal.mere_id,
    Animal.pere_id,
    Animal.disponible
  FROM Animal
  WHERE Animal.espece_id = 2
WITH CASCADED CHECK OPTION;

CREATE VIEW V_Chien AS
  SELECT
    Animal.id,
    Animal.sexe,
    Animal.date_naissance,
    Animal.nom,
    Animal.commentaires,
    Animal.espece_id,
    Animal.race_id,
    Animal.mere_id,
    Animal.pere_id,
    Animal.disponible
  FROM Animal
  WHERE Animal.espece_id = 1;

CREATE VIEW V_Chien_race AS
  SELECT
    V_Chien.id,
    V_Chien.sexe,
    V_Chien.date_naissance,
    V_Chien.nom,
    V_Chien.commentaires,
    V_Chien.espece_id,
    V_Chien.race_id,
    V_Chien.mere_id,
    V_Chien.pere_id,
    V_Chien.disponible
  FROM V_Chien
  WHERE V_Chien.race_id IS NOT NULL
WITH CASCADED CHECK OPTION;

CREATE VIEW V_Client AS
  SELECT
    Client.id,
    Client.nom,
    Client.prenom,
    Client.adresse,
    Client.code_postal,
    Client.ville,
    Client.pays,
    Client.email
  FROM Client;

CREATE VIEW V_Espece_dollars AS
  SELECT
    Espece.id,
    Espece.nom_courant,
    Espece.nom_latin,
    Espece.description,
    round((Espece.prix * 1.30813), 2) AS prix_dollars
  FROM Espece;

CREATE VIEW V_Nombre_espece AS
  SELECT
    Espece.id,
    count(Animal.id) AS nb
  FROM Espece
    LEFT JOIN Animal ON Animal.espece_id = Espece.id
  GROUP BY Espece.id;

CREATE VIEW V_Revenus_annee_espece AS
  SELECT
    year(Adoption.date_reservation) AS annee,
    Espece.id                       AS espece_id,
    sum(Adoption.prix)              AS somme,
    count(Adoption.animal_id)       AS nb
  FROM Adoption
    JOIN Animal ON Animal.id = Adoption.animal_id
    JOIN Espece ON Animal.espece_id = Espece.id
  GROUP BY year(Adoption.date_reservation), Espece.id;
