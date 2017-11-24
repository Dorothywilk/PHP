<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/vues-materialisees"
      target="_blank">Vues matérialisées</a></h1>

  <p class="lead">Vue (Requête <code>SELECT</code>) à laquelle on donne un nom, avec données
    stockées.</p>

  <p class="lead">À mettre à jour évidemment...</p>
  <ul>
    <li>Sur demande</li>
    <li>Automatiquement, à chaque changement dans l'une des tables référencée</li>
  </ul>
</div>

<div class="maingc7">
  <?php

  $pdo = pdo('ocr2');

  $sql = "CREATE TABLE IF NOT EXISTS VM_Revenus_annee_espece
ENGINE = InnoDB
SELECT YEAR(date_reservation) AS annee, Espece.id AS espece_id,
       SUM(Adoption.prix) AS somme,
       COUNT(Adoption.animal_id) AS nb
FROM Adoption
  INNER JOIN Animal ON Animal.id = Adoption.animal_id
  INNER JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY annee, Espece.id;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT * FROM VM_Revenus_annee_espece limit 7";
  $req( $sql, $pdo );

  ?>
  <p class="load">Au passage, on peut alors faire aisément :</p>

  <?php
  $sql = "select coalesce(annee, 'Total:') as Année,
       count(*) as Nb,
       sum(somme) 'total:'
from vm_revenus_annee_espece
group by annee with rollup";
  $req( $sql, $pdo );


  ?>
  Mise à jour avec une procédure (Sur demande)<br>
  La même requête que celle de l'instanciation.
  <?php

  $sql = "DROP PROCEDURE IF EXISTS maj_vm_revenus;
-- DELIMITER |
CREATE PROCEDURE maj_vm_revenus()
BEGIN
    TRUNCATE VM_Revenus_annee_espece;

    INSERT INTO VM_Revenus_annee_espece
    SELECT YEAR(date_reservation) AS annee,
           Espece.id AS espece_id, SUM(Adoption.prix) AS somme,
           COUNT(Adoption.animal_id) AS nb
    FROM Adoption
    INNER JOIN Animal ON Animal.id = Adoption.animal_id
    INNER JOIN Espece ON Animal.espece_id = Espece.id
    GROUP BY annee, Espece.id;
END;
-- END |
-- DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL maj_vm_revenus();";
  affLign( $sql );
  $pdo->query( $sql );
  //$req( $sql );


  ?>
  Mise à jour automatique<br>
  Dans le cas de VM_Revenus_annee_espece, la vue matérialisée doit être mise à jour en cas de
  modification de la table Adoption.<br>
  <ul>
    <li>Une insertion provoquera la mise à jour de la ligne correspondant à l'année et à l'espèce de
      l'adoption insérée (majoration du total des prix et du nombre d'adoptions), ou insérera une
      nouvelle ligne si elle n'existe pas encore.
    </li>
    <li>Une suppression provoquera la mise à jour de la ligne correspondant à l'année et à l'espèce
      de l'adoption supprimée, ou la suppression de celle-ci s'il s'agissait de la seule adoption
      correspondante.
    </li>
    <li>Une modification sera un mix de la suppression et de l'insertion.</li>
  </ul>

  <p>En ce qui concerne la colonne espece_id de la vue matérialisée, il vaut mieux lui ajouter une
    clé étrangère, avec l'option <code>ON DELETE CASCADE</code>. En principe, Espece.id ne devrait
    jamais être modifiée, mais en mettant cette clé étrangère, on s'assure que la correspondance
    entre les tables existera toujours.</p>

  <p>On va également ajouter une clé primaire : (annee, espece_id), afin de simplifier nos triggers.
    Ça permettra d'utiliser la commande <code>INSERT INTO ... ON DUPLICATE KEY UPDATE</code>.</p>
  <?php

  $sql = "ALTER TABLEVM_Revenus_annee_espece
  ADD CONSTRAINT fk_vm_revenu_espece_id FOREIGN KEY (espece_id)
      REFERENCES Espece (id) ON DELETE CASCADE,
  ADD PRIMARY KEY (annee, espece_id);";
  affLign( $sql );
  //  $pdo->query( $sql );

  ?>

  <p>Trigger :</p>


  <?php


  $sql = "-- DELIMITER |

DROP TRIGGER after_insert_adoption;
CREATE TRIGGER after_insert_adoption AFTER INSERT
ON Adoption FOR EACH ROW
BEGIN
    UPDATE Animal
    SET disponible = FALSE
    WHERE id = NEW.animal_id;

    INSERT INTO VM_Revenus_annee_espece
      (espece_id, annee, somme, nb)
    SELECT espece_id, YEAR(NEW.date_reservation), NEW.prix, 1
    FROM Animal
    WHERE id = NEW.animal_id
    ON DUPLICATE KEY UPDATE somme = somme + NEW.prix,
                                    nb = nb + 1;
END;
-- END |

DROP TRIGGER after_update_adoption:
CREATE TRIGGER after_update_adoption AFTER UPDATE
ON Adoption FOR EACH ROW
BEGIN
    IF OLD.animal_id <> NEW.animal_id THEN
        UPDATE Animal
        SET disponible = TRUE
        WHERE id = OLD.animal_id;

        UPDATE Animal
        SET disponible = FALSE
        WHERE id = NEW.animal_id;
    END IF;

    INSERT INTO VM_Revenus_annee_espece
      (espece_id, annee, somme, nb)
    SELECT espece_id, YEAR(NEW.date_reservation), NEW.prix, 1
    FROM Animal
    WHERE id = NEW.animal_id
    ON DUPLICATE KEY UPDATE somme = somme + NEW.prix,
                                    nb = nb + 1;

    UPDATE VM_Revenus_annee_espece
    SET somme = somme - OLD.prix, nb = nb - 1
        WHERE annee = YEAR(OLD.date_reservation)
    AND espece_id = (SELECT espece_id FROM Animal
        WHERE id = OLD.animal_id);

    DELETE FROM VM_Revenus_annee_espece
    WHERE nb = 0;
END;
-- END |

DROP TRIGGER after_delete_adoption;
CREATE TRIGGER after_delete_adoption AFTER DELETE
ON Adoption FOR EACH ROW
BEGIN
    UPDATE Animal
    SET disponible = TRUE
    WHERE id = OLD.animal_id;

    UPDATE VM_Revenus_annee_espece
    SET somme = somme - OLD.prix, nb = nb - 1
    WHERE annee = YEAR(OLD.date_reservation)
    AND espece_id =
      (SELECT espece_id FROM Animal WHERE id = OLD.animal_id);

    DELETE FROM VM_Revenus_annee_espece
    WHERE nb = 0;
END;
-- END |

DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );
  //$req( $sql );

  ?>

  <h3>Gain de performance</h3>
  <hr>
  <p>Test avec des procédures utilisant 3 façons pour réponse à :<br>
    Quelle est l'année ayant rapporté le plus en termes d'adoption de chats ? </p>
  <ul>
    <li>L'une fera la requête directement sur les tables</li>
    <li>L'autre fera la requête sur la vue</li>
    <li>La dernière utilisera la vue matérialisée.</li>
  </ul>

  <p><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/vues-materialisees"
      target="_blank">Voir test en ligne</a></p>

  <p>=> Bilan : 0.05 s pour la vue matérialisée contre env. 0.27 s pour table et vue.</p>

  <hr>

  <h3>Conclusion</h3>
  <ul>
    <li>Les vues ne permettent pas de gagner en performance. Elle fournissent juste une interface,
      qui peut permettre de gérer les accès des utilisateurs ou de simplifier les requêtes par
      exemple.
    </li>
    <li>Les tables temporaires servent lorsque, ponctuellement, on doit faire un traitement sur un
      set de données particulier, pour faire des tests ou des statistiques par exemple.
    </li>
    <li>Les vues matérialisées permettent de stocker des données sélectionnées ou calculées à partir
      d'autres tables. Elles permettent de gagner en performance dans le cas où ces données
      nécessitent de longs calculs, mais ne changent pas trop souvent (attention à l'équilibre coût
      du calcul sans la vue matérialisée et coût de la mise à jour de la vue matérialisée).
    </li>
  </ul>

  <?php
  echo str_repeat( '<br>', 28 ); // 28
  ?>

</div>
