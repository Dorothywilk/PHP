select * from b limit 3;
CALL boucleXus;
-- Simul récursivité / wwwbos2013_xoops_users
DROP PROCEDURE IF EXISTS `boucleXus`;

-- Exemple de procédure avec boucle
-- Génère ici l'arbre, le groupe
DELIMITER |
CREATE PROCEDURE `boucleXus`()
DETERMINISTIC
NO SQL
  BEGIN
    DECLARE _uid, _parr INT;
    SELECT 'OK21';
  END|
DELIMITER ;
