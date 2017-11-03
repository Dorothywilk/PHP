DROP database if exists blog;
CREATE DATABASE blog CHARACTER SET 'utf8';
USE blog;


-- Creation des tables
CREATE TABLE IF NOT EXISTS Categorie (
	id_cat INT UNSIGNED AUTO_INCREMENT,
	nom_cat VARCHAR(150) NOT NULL,
	description_cat TEXT NOT NULL,
	PRIMARY KEY (id_cat)
) ENGINE = InnoDB;

CREATE TABLE Utilisateur (
  pseudo_user varchar(15),
  email_user varchar(30) NOT NULL,
  passwd_user varchar(20) NOT NULL,
  PRIMARY KEY (pseudo_user)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Article (
  id_art INT UNSIGNED AUTO_INCREMENT,
  titre_art varchar(40) NOT NULL,
  date_publication_art DATE NOT NULL,
  resume_art text,
  text_art text,
  auteur varchar(15),
  PRIMARY KEY (id_art),
  CONSTRAINT fk_auteur_pseudo_user FOREIGN KEY (auteur) REFERENCES Utilisateur(pseudo_user)
		ON DELETE SET NULL
		ON UPDATE CASCADE
  ) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS Categorie_article (
	id_cat INT UNSIGNED,
	id_art INT UNSIGNED,
	PRIMARY KEY (id_cat, id_art),
	CONSTRAINT fk_id_cat_id_cat FOREIGN KEY (id_cat) REFERENCES Categorie (id_cat)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	CONSTRAINT fk_id_art_id_art FOREIGN KEY (id_art) REFERENCES Article (id_art)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Commentaire (
  id_comm INT UNSIGNED AUTO_INCREMENT,
  user_comm varchar(15) NOT NULL,
  article_comm int unsigned NOT NULL,
  date_publication_comm DATE NOT NULL,
  text_comm text,  
  PRIMARY KEY (id_comm, user_comm, article_comm),
  CONSTRAINT fk_user_comm_pseudo_user FOREIGN KEY (user_comm) REFERENCES Utilisateur(pseudo_user)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
  CONSTRAINT fk_article_comm_id_art FOREIGN KEY (article_comm) REFERENCES Article(id_art)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB ;

-- Insertion de données --
INSERT INTO Categorie (nom_cat, description_cat)
VALUES('horreur', 'il faut avoir l''estomac bien accroché'),
		('policier', 'film ou le crime ne paie pas'),
        ('suspense', 'c''est vraiment suspensif'),
        ('gore', 'hémoglobine au rabais'),
        ('comédie', 'ca détend');
        
INSERT INTO Utilisateur (pseudo_user, email_user, passwd_user)
VALUES('User1', 'user1@mail.com', 'passlepass'),
		('User2', 'user2@mail.com', 'password'),
        ('User3', 'user3@mail.com', 'skgksdjhsdkgj'),
        ('User4', 'user4@mail.com', 'user4pass');

INSERT INTO Article (titre_art, date_publication_art, resume_art, text_art, auteur)
VALUES('les secrets du SQL', '2017-06-04', 'au coeur du langage', 'le sql prend sa source au coeur des montagnes de .....', 'User2'),
		('Mais qui a tué Omar ?', '2016-04-03', 'on se le demande', 'à votre avis ?', 'User3'),
        ('Aux frontières du sql', '2010-09-17', 'la vérité est ailleurs', Null, 'User4'),
        ('Architecture Reseau', '2014-03-28', 'IP and Co', 'premier tome, chapitre un, paragraphe 1, mot 1.....', 'User2');

INSERT INTO Categorie_article (id_cat, id_art)
VALUES(1, 2), (1, 3), (2, 1), (2, 3), (3,2), (4, 1), (4, 2);

INSERT INTO Commentaire(user_comm, article_comm, date_publication_comm, text_comm)
VALUES('User1', 1, '2017-10-30', 'super, j''ai tout compris'),
		('User1',4, '2017-09-2', 'c''est gore!'),
        ('User3', 2, '2016-06-04', 'l''assassin, c''est le colonel moutarde'),
        ('User2', 2, '2016-05-03', 'l''assassin, c''est l''autre'),
        ('User1', 2, '2016-03-29', null);
        

-- Creation des Index --
		
	-- Tri d'un article par date de publication
	ALTER TABLE Article 
	ADD INDEX ind_date_publication_art (date_publication_art DESC);

	-- Tri d'un commentaire par date de publication
	ALTER TABLE Commentaire
	ADD INDEX ind_date_publication_comm (date_publication_comm ASC);

	-- Recherche d'un article par son rédacteur
	ALTER TABLE Article
	ADD INDEX ind_auteur (auteur);

	-- Recherche d'un article par sa categorie
	ALTER TABLE Categorie
	ADD INDEX ind_categorie (nom_cat);
	
	-- Un index FULLTEXT n'est pas demandé dans l'exercice mais est à envisager
	-- pour une future recherche dans le contenu des articles, et dans le contenu des commentaires.


-- Page d'accueil
-- Requete pour la SELECTion des articles classés par date --
SELECT * FROM Article a
ORDER BY a.date_publication_art DESC;

-- Page Utilisateur --
-- Requete pour la SELECTion des articles classés par date pour un utilisateur
SELECT * FROM Article a
INNER JOIN Utilisateur u on u.pseudo_user = a.auteur
WHERE a.auteur = 'User2'
ORDER BY a.date_publication_art DESC;

-- Page Categorie --
-- Requete pour la sélection d'articles appartenant à une catégorie
SELECT * FROM Article a
INNER JOIN Categorie_article ca on ca.id_art = a.id_art 
WHERE ca.id_cat = (
		SELECT c.id_cat FROM Categorie c
        WHERE c.nom_cat = 'policier');

-- Page Article --
-- Requete pour la sélection d'un article et de ses commentaires triés par ordre chrono
SELECT a.*, c.text_comm, c.date_publication_comm, c.user_comm FROM Article a
LEFT JOIN Commentaire c on c.article_comm = a.id_art
WHERE a.id_art = 2
ORDER BY date_publication_comm ASC;

