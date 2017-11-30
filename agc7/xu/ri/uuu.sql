DROP PROCEDURE IF EXISTS `arbre`;

-- Exemple de procédure avec boucle
-- Génère ici l'arbre, le groupe
CREATE PROCEDURE `arbre`(IN _noeud INTEGER UNSIGNED,
                         IN _pref  CHAR(20))
DETERMINISTIC
NO SQL
  BEGIN
    DECLARE _id INTEGER DEFAULT 0;
    DECLARE _lien INTEGER DEFAULT 0;
    DECLARE _nom VARCHAR(255) DEFAULT '';

    DECLARE _fin INTEGER DEFAULT 1;
    DECLARE _tab CURSOR FOR SELECT
                              id,
                              lien,
                              nom
                            FROM `parent`
                            WHERE lien = _noeud;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET _fin = 0;

    OPEN _tab;
    FETCH _tab
    INTO _id, _lien, _nom;

    WHILE (_fin)
    DO
      INSERT INTO `travail` (`lib`) VALUES (concat(_pref, '... ', _nom));

      CALL arbre(_id, concat('..', _pref));

      FETCH _tab
      INTO _id, _lien, _nom;
    END WHILE;

    CLOSE _tab;
  END;




/*
  DECLARE _pseudo VARCHAR(255);

  DECLARE _fin INTEGER DEFAULT 1;
  DECLARE _tab CURSOR FOR SELECT
                            id,
                            pseudo,
                            parr
                          FROM www_boos2013.xoops_users
                          WHERE uname = parr
                                AND uid < 20;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET _fin = 0;

  OPEN _tab;
  FETCH _tab
  INTO _uid, _lien, _pseudo;

  WHILE (_fin)
  DO
    SELECT
      uid,
      uname;

    CALL arbreXuB(_uid, concat('..', _pref));

    FETCH _tab
    INTO _id, _lien, _nom;
  END WHILE;

  CLOSE _tab;
*/
