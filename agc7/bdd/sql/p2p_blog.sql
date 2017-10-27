DROP DATABASE IF EXISTS `p2p_blog`;

CREATE DATABASE p2p_blog CHARACTER SET 'utf8';
USE p2p_blog;

CREATE TABLE `articles` (
	`id` INT UNSIGNED AUTO_INCREMENT,
  `utilisateur_id` INT UNSIGNED NULL,
	`titre` VARCHAR(150) NULL DEFAULT NULL,
	`extrait` VARCHAR(150) NULL DEFAULT NULL,
	`texte` TEXT NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `articles`
	CHANGE COLUMN `utilisateur_id` `utilisateur_id` INT(10) UNSIGNED NULL DEFAULT NULL AFTER `id`;
  
CREATE TABLE `categories` (
	`id` INT UNSIGNED AUTO_INCREMENT,
	`nom` VARCHAR(150) NOT NULL,
	`description` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE Categorie_article (
	categorie_id INT UNSIGNED,
	article_id INT UNSIGNED,
	PRIMARY KEY (categorie_id, article_id)
);

CREATE TABLE `commentaires` (
	`id` INT UNSIGNED AUTO_INCREMENT,
	`id_article` INT UNSIGNED NULL,
	`id_utilisateur` INT UNSIGNED NULL,
	`texte` VARCHAR(255) NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `utilisateurs` (
	`id` INT UNSIGNED AUTO_INCREMENT,
	`pseudo` VARCHAR(150) NOT NULL,
	`email` VARCHAR(150) NOT NULL,
	`passe` CHAR(150) NOT NULL,
	PRIMARY KEY (`id`)
);


ALTER TABLE `categorie_article`
	ADD CONSTRAINT `FK_categorie_article_categories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE ON DELETE CASCADE,
	ADD CONSTRAINT `FK_categorie_article_articles` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON UPDATE CASCADE  ON DELETE CASCADE;

  

INSERT INTO `p2p_blog`.`articles` (utilisateur_id,`titre`, `extrait`, `texte`)
VALUES (1,'titre1', 'extrait1', 'tatati 1');
INSERT INTO `p2p_blog`.`articles` (utilisateur_id, `titre`, `extrait`, `texte`)
VALUES (2, 'titre2', 'extrait2', 'tatati 2');
INSERT INTO `p2p_blog`.`articles` (`titre`, `extrait`, `texte`)
VALUES ('titre3', 'extrait3', 'tatati 3');
INSERT INTO `p2p_blog`.`articles` (`titre`, `extrait`, `texte`)
VALUES ('titre4', 'extrait4', 'tatati 4');
INSERT INTO `p2p_blog`.`articles` (`titre`, `extrait`, `texte`)
VALUES ('titre5', 'extrait5', 'tatati 5');
INSERT INTO `p2p_blog`.`articles` (`titre`, `extrait`, `texte`)
VALUES ('titre6', 'extrait6', 'tatati 6');
INSERT INTO `p2p_blog`.`articles` (`titre`, `extrait`, `texte`)
VALUES ('titre7', 'extrait7', 'tatati 7');

INSERT INTO `p2p_blog`.`categories` (`nom`, `description`) VALUES ('cat1', 'desc cat1');
INSERT INTO `p2p_blog`.`categories` (`nom`, `description`) VALUES ('cat2', 'desc cat2');
INSERT INTO `p2p_blog`.`categories` (`nom`, `description`) VALUES ('cat3', 'desc cat3');
INSERT INTO `p2p_blog`.`categories` (`nom`, `description`) VALUES ('cat4', 'desc cat4');
INSERT INTO `p2p_blog`.`categories` (`nom`, `description`) VALUES ('cat5', 'desc cat5');
INSERT INTO `p2p_blog`.`categories` (`nom`, `description`) VALUES ('cat6', 'desc cat6');
INSERT INTO `p2p_blog`.`categories` (`nom`, `description`) VALUES ('cat7', 'desc cat7');

INSERT INTO `p2p_blog`.`categorie_article` (`categorie_id`, `article_id`) VALUES ('1', '3');
INSERT INTO `p2p_blog`.`categorie_article` (`categorie_id`, `article_id`) VALUES ('1', '7');
INSERT INTO `p2p_blog`.`categorie_article` (`categorie_id`, `article_id`) VALUES ('2', '3');
INSERT INTO `p2p_blog`.`categorie_article` (`categorie_id`, `article_id`) VALUES ('2', '7');

INSERT INTO `p2p_blog`.`utilisateurs` (`pseudo`, `email`, `passe`) VALUES ('GC7', 'fdsfds@dfsfds.com', 'dfdsfds');
INSERT INTO `p2p_blog`.`utilisateurs` (`pseudo`, `email`, `passe`) VALUES ('Li', 'Li@dfsfds.com', 'lili');


ALTER TABLE `articles`
	ADD CONSTRAINT `FK_articles_utilisateurs` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON UPDATE CASCADE ON DELETE SET NULL;
  
ALTER TABLE `commentaires`
	ADD CONSTRAINT `FK_commentaires_utilisateurs` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE `commentaires`
	ADD CONSTRAINT `FK_commentaires_articles` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;
  
  -- Index
  -- Index
CREATE UNIQUE INDEX unique_email
ON utilisateurs(email);

CREATE UNIQUE INDEX unique_pseudo
ON utilisateurs(pseudo);
