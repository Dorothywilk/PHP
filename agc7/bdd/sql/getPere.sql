SELECT *

FROM transports

WHERE id = 

  (SELECT pere FROM transports WHERE nom = "%s")