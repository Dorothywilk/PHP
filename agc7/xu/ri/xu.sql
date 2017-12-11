USE aaxu;

SELECT
  count(*),
  count(*) * 2
FROM xu;

SELECT *
FROM xu;


-- Représentation graphique du Groupe global
SELECT concat(repeat(' ', pf * 5), id, ' ', pseudo, ' ', uid, ' (', bg, ' - ', bd, ')')
  'Arborescence'
FROM xu

SELECT concat(repeat(' ', (pf - 16) * 5), id, ' ', pseudo, ' ', uid, ' (', bg, ' - ', bd, ')')
  'Arborescence'
FROM xu
WHERE bg >= 283
      AND bd <= 16404
ORDER BY bg;


SELECT *
FROM aaxu.xu
WHERE pseudo = 'Angel45';

SELECT *
FROM aaxu.boosteurori
WHERE parr = 'Djomo';


SELECT *
FROM boosteurori;


-- Profondeur Max
SELECT *
FROM xu
WHERE pf = (SELECT max(pf)
            FROM xu);

SELECT
  concat(repeat(' ', pf * 5), id, ' ', pseudo, ' ', uid, ' (', bg, ' - ', bd, ')') AS 'Arborescence'
FROM aaxu.xu
WHERE bg <= 30509
      AND bd >= 30510
ORDER BY bg DESC;
