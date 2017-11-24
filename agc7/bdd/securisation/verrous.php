<?php
namespace GC7;
?>
  <div class="jumbotron">

    <h1 class="meaDo pb10"><a
        href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/verrous"
        target="_blank">Verrous</a></h1>

    <ul class="lead mt10">
      <li>Sécurisation des requêtes par blocage ponctuel et partiel de l'accès aux données</li>
      <li>De 2 types: Verrous de table, verrous de ligne</li>
    </ul>

    <p class="lead"><span class="actionManShaded">Action Man Shaded</span></p>


    <ol class="lead">

      <li>Verrous de tables:</li>
      <ul>
        <li><code>LOCK TABLES tables [AS alias_table] [READ | WRITE][, ...]</code></li>
        <li><code>UNLOCK TABLES</code> déverrouille toutes les tables verrouillées</li>
      </ul>

      <li>Verrous de lignes:</li>
      <ol>
        <li>
          Partagé (= READ): <code>LOCK IN SHARE MODE</code>
        </li>
        <li>
          Exclusif (= WRITE): <code>FOR UPDATE</code>
        </li>
      </ol>
    </ol>
    <p class="lead">Automatiquement exclusifs sur les lignes concernées en cas d'<code>INSERT</code>,
      d'
      <code>UPDATE</code> ou de <code>DELETE</code><br> Intéressantes uniquement dans les
      transactions, elles s'écrivent en fin de requête <code>SELECT</code></p>

  </div>

  <div class="maingc7">

    <h2>Principe</h2>

    <p>Une session qui pose un verrou ne peut opérer selon le niveau de verrou (READ || WRITE) que
      sur les lignes | tables qu'elle a vérouillé.</p>

    <p>Attention: Avec les transactions (Rappel: InnoDB uniquement), <code>START TRANSACTION</code>
      ôte les verrous et <code>LOCK TABLES</code> et <code>UNLOCK TABLES</code> provoquent une
      validation implicite si elles sont exécutées à l'intérieur d'une transaction => Utiliser
      <code>SET
        AUTOCOMMIT = 0</code></p>
    Conclusion:
    <ul>
      <li>On pose un verrou partagé lorsqu'on fait une requête dans le but de lire des données.</li>
      <li>On pose un verrou exclusif lorsqu'on fait une requête dans le but (immédiat ou non) de
        modifier des données.
      </li>
      <li>Un verrou partagé sur les lignes x va permettre aux autres sessions d'obtenir également un
        verrou partagé sur les lignes x, mais pas d'obtenir un verrou exclusif.
      </li>
      <li>Un verrou exclusif sur les lignes x va empêcher les autres sessions d'obtenir un verrou
        sur les lignes x, qu'il soit partagé ou exclusif.
      </li>
    </ul>

    <hr>
    En cas d'<code>UPDATE</code> avec un <code>WHERE</code> sur une colonne non indexée, le verrou
    se fait implicitement sur toutes les lignes.<br> Sinon, avec une requête concurrente ( = issue
    d'une autre session), même en référençant un index différent dans sa clause <code>where</code>
    aura accès aux lignes non concernées par un verrou de la première session.<br> En conclusion, il
    faut un index pour pouvoir poser un verrou efficacement ( = Qui ne verouille que le minimum de
    lignes nécéssaires ce qui permet des accès concurrents).
    <hr>

    <h3>Lignes fantômes et index de clé suivante</h3>
    Exemple: Tentative d'insertion par une seconde session transactionnelle d'une ligne concerné pas
    un verrou: Si la première session refait une requête de selection avec verrou exclusif, elle
    verra apparaître une <strong>ligne fantôme</strong>, puisque, pour poser le verrou, elle ira
    chercher les données les plus à jour, prenant en compte le commit de la première
    session...<br><br> Pour pallier ce problème, qui est contraire au principe d'isolation, <strong>les
      verrous posés par
      des requêtes de lecture, de modification et de suppression sont des verrous dits "de clé
      suivante"</strong>; ils empêchent l'insertion d'une ligne dans les espaces entre les lignes
    verrouillées, ainsi que dans l'espace juste après les lignes verrouillées.

    <hr>

    <h3>Verrou de ligne partagé ou exclusif ? <strong>Exemple pratique</strong></h3>

    <p>Un client arrive et veut adopter un chat...</p>

    <p>On commence donc par consulter la liste de tous les chats disponibles.</p>
    <ul>
      <li>Cas avec un verrou partagé</li>

      <?php
      //      $sql = 'delete from adoption where client_id=1 and animal_id=8';
      //    $req( $sql, null, 1 );

      unset( $pdo );
      unset( $pdo1 );
      unset( $pdo2 );

      $sql = 'select "Consultation de la liste de tous les chats" as "1)
        Action pour le premier client"';
      $pdo1 = pdo();
      affLign( $sql );
      $pdo1->query( $sql );


      $sql = "SELECT Animal.id, Animal.nom,
           Animal.date_naissance,
           Race.nom as race,
           COALESCE(Race.prix, Espece.prix) as prix
    FROM Animal
      INNER JOIN Espece
      ON Animal.espece_id = Espece.id
      LEFT JOIN
      Race ON Animal.race_id = Race.id
      -- Jointure externe, on ne veut pas que les chats de race
    WHERE Espece.nom_courant = 'Chat'
          -- Uniquement les chats...
    AND   Animal.id NOT IN (SELECT animal_id FROM Adoption)
          -- ... qui n'ont pas encore été adoptés
    LOCK IN SHARE MODE

    -- Session 1";
      //      $req( $sql ); // session 1

      $pdo1 = pdo( 'ocr2' );

      $sql = "START TRANSACTION;" . $sql;
      // . $sql, null, 1 ); // session 1
      affLign( $sql );
      $pdo1->query( $sql );


      ?>
      <p>Il réfléchit...</p>

      <p>Cependant, un second client arrive et veut quand à lui, adopter un chat de la race "Maine
        Coon"...
      </p>

      <p>On consulte donc la liste correspondante.</p>
      <?php
      $sql = 'select "Consultation de la liste des chats de la race \"Main Coon\"" as "1) Action pour le second client"';
      $req( $sql, $pdo1, 1 );

      $sql = "SELECT Animal.id, Animal.nom, Animal.date_naissance,
           Race.nom as race, COALESCE(Race.prix, Espece.prix) as prix
    FROM Animal
      INNER JOIN Espece
      ON Animal.espece_id = Espece.id
      INNER JOIN Race
      ON Animal.race_id = Race.id
         -- Jointure interne cette fois
    WHERE Race.nom = 'Maine Coon'
          -- Uniquement les Maine Coon...
    AND   Animal.id NOT IN (SELECT animal_id FROM Adoption)
          -- ... qui n'ont pas encore été adoptés

    -- Session 2 (Normalement aussi avec un verrou exclusif (FOR UPDATE)";

      $pdo2 = pdo( 'ocr2' );

      ?>
      <p>À son tour, il réfléchit un peu, mais a déjà un petit faible pour Bagherra...</p>

      <p>Ce temps de réflexion va lui être pénalisant... En effet, le premier client pose aussi son
        dévolu sur Bagherra et l'adopte donc.</p>

      <?php

      $sql = "INSERT INTO Adoption
            (client_id, animal_id, date_reservation, prix, paye)
SELECT id, 8, NOW(), 735.00, 1
FROM Client
WHERE email = 'jean.dupont@email.com'

    -- Session 1";
      affLign( $sql );
      ?>

      <h3>Cette requête ci-dessus échoue.... :-(....</h3>

      <h2>Résultat :</h2>
      <?php

      $sql = "SELECT Animal.id, Animal.nom, Animal.date_naissance,
           Race.nom as race,
           COALESCE(Race.prix, Espece.prix) as prix
    FROM Animal
      INNER JOIN Espece
      ON Animal.espece_id = Espece.id
      INNER JOIN Race
      ON Animal.race_id = Race.id
         -- Jointure interne cette fois
    WHERE Race.nom = 'Maine Coon'
          -- Uniquement les Maine Coon...
    AND   Animal.id NOT IN (SELECT animal_id FROM Adoption)
          -- ... qui n'ont pas encore été adoptés";


      $req( $sql, $pdo2 ); // session 2

      $sql = "INSERT INTO Client (nom, prenom, email)
    VALUES ('Durant', 'Philippe', 'phidu@email.com');

    INSERT INTO Adoption (client_id, animal_id, date_reservation, prix, paye)
    VALUES (LAST_INSERT_ID(), 8, NOW(), 735.00, 0);";
      aff( $sql );
      ?>
      <p class="pink-text">Et lorque le second client veut réserver avec la requête ci-dessus, cette
        dernière ne marche pas... :-(... Car l'animal dont id = 8 (Bagherra) est déjà dans la base
        Adoption, et cette clé à un index d'unicité !</p>

      <?php
      $sql = "rollback
-- (Des 2 sessions)";
      affLign( $sql );
      $pdo1->query( $sql );
      $pdo2->query( $sql );

      // ##########################################################################
      $sql = 'delete from adoption where client_id=1 and animal_id=8';
      affLign( $sql );
      $pdo1->query( $sql );
      //      $req( $sql, null, 1 );

      unset( $pdo1 );
      unset( $pdo2 );
      ?>


      <li>Cas avec un verrou exclusif (Solution pour éviter ce problème)</li>
      <p><i>(Les tables sont ré-initialisées entre 2 exemples)</i></p>

      <?php
      //  $sql = 'delete from adoption where client_id=1 and animal_id=8';
      //  $req( $sql, null, 1 );

      $sql = 'select "Consultation de la liste de tous les chats" as "1) Action pour le premier client"';
      $req( $sql, null, 1 );

      $sqlini = "SELECT Animal.id, Animal.nom, Animal.date_naissance,
       Race.nom as race,
       COALESCE(Race.prix, Espece.prix) as prix
FROM Animal
  INNER JOIN Espece
  ON Animal.espece_id = Espece.id
  LEFT JOIN
  Race ON Animal.race_id = Race.id
  -- Jointure externe, on ne veut pas que les chats de race
WHERE Espece.nom_courant = 'Chat'
      -- Uniquement les chats...
AND   Animal.id NOT IN (SELECT animal_id FROM Adoption)
      -- ... qui n'ont pas encore été adoptés
-- Session 1";

      //  $pdo1 = $req( "START TRANSACTION;" . $sqlini . "
      //   FOR UPDATE;", null, 1 ); // session 1

      $pdo1 = pdo( 'ocr2' );

      $sql = "START TRANSACTION;
" . $sqlini . "FOR UPDATE;";

      $pdo1->query( $sql );
      //      affLign( $sql );
      //      $pdo1->query( $sqlini );

      //      $req( $sqlini, null, 1 ); // session 1
      $sql = "commit;";
      affLign( $sql );
      $pdo1->query( $sqlini );
      //      $req( $sql, $pdo1, 0 ); // session 1
      ?>
      <p>Il réfléchit...</p>

      <p>Cependant, un second client arrive et veut quand à lui, adopter un chat de la "Maine
        Coon"...
      </p>

      <p>On consulte donc la liste correspondante.</p>

      <?php

      $sqlins = "INSERT INTO Adoption
    (client_id, animal_id, date_reservation, prix, paye)
    SELECT id, 8, NOW(), 735.00, 1
    FROM Client
    WHERE email = 'jean.dupont@email.com'

    -- Session 1";
      affLign( $sqlins );
      //      $pdo1->query( $sqlins, $pdo1 );

      //      $pdo1 = $req( $sqlins, $pdo1, 1 ); // session 1

      $pdo2 = pdo( 'ocr2' );

      $sql = 'select "Consultation de la liste des chats de la race \"Main Coon\"" as "1) Action pour le second client"';
      $req( $sql, $pdo2, 1 );

      $simuSql = "SELECT Animal.id, Animal.nom, Animal.date_naissance,
       Race.nom as race, COALESCE(Race.prix, Espece.prix) as prix
FROM Animal
  INNER JOIN Espece
  ON Animal.espece_id = Espece.id
  INNER JOIN Race
  ON Animal.race_id = Race.id
     -- Jointure interne cette fois
WHERE Race.nom = 'Maine Coon'
      -- Uniquement les Maine Coon...
AND   Animal.id NOT IN (SELECT animal_id FROM Adoption)
      -- ... qui n'ont pas encore été adoptés
AND Animal.id <> 8
      -- Pour simuler effet visible par \$pdo2

--  Session 2";
      $sql = "SELECT Animal.id, Animal.nom, Animal.date_naissance,
       Race.nom as race, COALESCE(Race.prix, Espece.prix) as prix
FROM Animal
  INNER JOIN Espece
  ON Animal.espece_id = Espece.id
  INNER JOIN Race
  ON Animal.race_id = Race.id
     -- Jointure interne cette fois
WHERE Race.nom = 'Maine Coon'
      -- Uniquement les Maine Coon...
AND   Animal.id NOT IN (SELECT animal_id FROM Adoption)
      -- ... qui n'ont pas encore été adoptés
LOCK IN SHARE MODE

-- Session 2";
      affLign( $sql );
      $req( $simuSql, $pdo2, 1 ); // session 2
      //      $pdo2->query( $sql );

      ?>

      <p class="green-text">Et cette fois, il ne peut plus y avoir de choix sur Bagherra, puisque
        plus dans le listing <i class="fa fa-like icon"></i></p>

      <p>Pourtant, la requête d'adoption du client 1 n'est pas réellement encore faite...

        <?php
        affLign( $sql . ' => session 1' );
        $req( $sql, $pdo2, 1 ); // session 2
        ?>


        Procédons
        maintenant !</p>

      <?php

      aff( $sqlins );

      $sql = "commit;
-- session 1";
      affLign( $sql );
      // $req( $sql, $pdo1 ); // session 1
      $pdo1->query( $sql );

      $sql = "rollback;
-- session 2";
      affLign( $sql );
      $pdo2->query( $sql );

      $sql = 'delete from adoption where client_id=1 and animal_id=8';
      // $pdo1->query( $sql );

      $sql = "select * from Adoption where animal_id=8";
      $req( $sql, $pdo1 ); // session 1

      // Attention: Comme les transactions mettent en attente certaines réponse aux requêtes, le script PHP s'en trouve bloqué... Aussi, l'ordre des requêtes ci-dessous a été adapté pour similer le réel comportement, mais en réel, l'affichage des chats Maine Coon pour le client 2 se fait avant l'adoption de Baghérra par le premier client


      ?>
      <h3>Niveaux d'Isolation</h3>

      <p>Repeatable read signifie "lecture répétable", c'est-à-dire que si l'on fait plusieurs
        requêtes de sélection (non-verrouillantes) de suite, elles donneront toujours le même
        résultat, quels que soient les changements effectués par d'autres sessions.</p>

      <p>Si l'on pense à bien utiliser les verrous là où c'est nécessaire, c'est un niveau
        d'isolation tout à fait suffisant.</p>
      </li>

      <li><code>READ COMMITTED</code>

        <p>Avec ce niveau d'isolation, chaque requête<code>SELECT</code>(non-verrouillante) va
          reprendre une "photo" à jour de la base de données, même si plusieurs<code>SELECT</code>se
          font dans la même transaction.
        </p>

        <p>Ainsi, un <code>SELECT</code> verra toujours les derniers changements commités, même
          s'ils ont été faits dans une autre session, après le début de la transaction.</p>
      </li>
      <li><code>SERIALIZABLE</code>

        <p>Fonctionne comme<code>READ COMMITTED</code>, si ce n'est qu'il autorise la "lecture
          sale". C'est-à-dire qu'une session sera capable de lire des changements encore non
          commités par d'autres sessions.</p>
      </li>
    </ul>
  </div>

  <?php

echo str_repeat( '<br>&nbsp;', 25 );
