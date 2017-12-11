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

SELECT concat(repeat(' ', pf * 5), id, ' ', pseudo, ' ', uid, ' (', bg, ' - ', bd, ')')
'Arborescence'
FROM xu
where bg>=331
  and bd<=370
ORDER BY bg;


select * from boosteurori;


-- Profondeur Max
SELECT *
FROM xu
WHERE pf = (SELECT max(pf)
            FROM xu);
