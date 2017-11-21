-- Requête pour taux de pertinence<br><br>

SELECT
  id,
  nom,
  espece,
  MATCH(nom)
  AGAINST('bubulle') AS tx
FROM animal
ORDER BY tx DESC
