-- Table Client
CREATE TABLE Client (
	id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
	nom VARCHAR(100) NOT NULL,
	prenom VARCHAR(60) NOT NULL,
	adresse VARCHAR(200),
	code_postal VARCHAR(6),
	ville VARCHAR(60),
	pays VARCHAR(60),
	email VARBINARY(100),
	PRIMARY KEY (id),
	UNIQUE INDEX ind_uni_email (email)
) ENGINE = InnoDB;

-- Table Adoption
CREATE TABLE Adoption (
	client_id SMALLINT UNSIGNED NOT NULL,
	animal_id SMALLINT UNSIGNED NOT NULL,
	date_reservation DATE NOT NULL,
	date_adoption DATE,
        prix DECIMAL(7,2) UNSIGNED NOT NULL,
	paye TINYINT(1) NOT NULL DEFAULT 0,
	PRIMARY KEY (client_id, animal_id),
	CONSTRAINT fk_client_id FOREIGN KEY (client_id) REFERENCES Client(id),
	CONSTRAINT fk_adoption_animal_id FOREIGN KEY (animal_id) REFERENCES Animal(id),
	UNIQUE INDEX ind_uni_animal_id (animal_id)
) ENGINE = InnoDB;

-- Insertion de quelques clients
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Jean', 'Dupont', 'Rue du Centre, 5', '45810', 'Houtsiplou', 'France', 'jean.dupont@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Marie', 'Boudur', 'Place de la Gare, 2', '35840', 'Troudumonde', 'France', 'marie.boudur@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Fleur', 'Trachon', 'Rue haute, 54b', '3250', 'Belville', 'Belgique', 'fleurtrachon@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Julien', 'Van Piperseel',  NULL, NULL, NULL, NULL, 'jeanvp@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Johan', 'Nouvel',  NULL, NULL, NULL, NULL, 'johanetpirlouit@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Frank', 'Germain',  NULL, NULL, NULL, NULL, 'francoisgermain@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Maximilien', 'Antoine', 'Rue Moineau, 123', '4580', 'Trocoul', 'Belgique', 'max.antoine@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Hector', 'Di Paolo', NULL, NULL, NULL, NULL, 'hectordipao@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Anaelle', 'Corduro',  NULL, NULL, NULL, NULL, 'ana.corduro@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Eline', 'Faluche', 'Avenue circulaire, 7', '45870', 'Garduche', 'France', 'elinefaluche@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Carine', 'Penni', 'Boulevard Haussman, 85', '1514', 'Plasse', 'Suisse', 'cpenni@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Virginie', 'Broussaille', 'Rue du Fleuve, 18', '45810', 'Houtsiplou', 'France', 'vibrousaille@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Hannah', 'Durant', 'Rue des Pendus, 66', '1514', 'Plasse', 'Suisse', 'hhdurant@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Elodie', 'Delfour', 'Rue de Flore, 1', '3250', 'Belville', 'Belgique', 'e.delfour@email.com');
INSERT INTO Client (prenom, nom, adresse, code_postal, ville, pays, email) VALUES ('Joel', 'Kestau', NULL, NULL, NULL, NULL, 'joel.kestau@email.com');

-- Insertion de quelques adoptions
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (1, 39, '2008-08-17', '2008-08-17', 735.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (1, 40, '2008-08-17', '2008-08-17', 735.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (2, 18, '2008-06-04', '2008-06-04', 485.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (3, 27, '2009-11-17', '2009-11-17', 200.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (4, 26, '2007-02-21', '2007-02-21', 485.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (4, 41, '2007-02-21', '2007-02-21', 835.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (5, 21, '2009-03-08', '2009-03-08', 200.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (6, 16, '2010-01-27', '2010-01-27', 200.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (7, 5, '2011-04-05', '2011-04-05', 150.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (8, 42, '2008-08-16', '2008-08-16', 735.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (9, 55, '2011-02-13', '2011-02-13', 140.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (9, 54, '2011-02-13', '2011-02-13', 140.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (10, 49, '2010-08-17', '2010-08-17', 140.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (11, 62, '2011-03-01', '2011-03-01', 630.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (12, 69, '2007-09-20', '2007-09-20', 10.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (13, 57, '2012-01-10', '2012-01-10', 700.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (14, 58, '2012-02-25', '2012-02-25', 700.00,  1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (15, 30, '2008-08-17', '2008-08-17', 735.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (11, 32, '2008-08-17', '2010-03-09', 140.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (9, 33, '2007-02-11', '2007-02-11', 835.00, 1);
INSERT INTO Adoption (client_id, animal_id, date_reservation, date_adoption, prix, paye) VALUES (2, 3, '2011-03-12', '2011-03-12', 835.00, 1);
