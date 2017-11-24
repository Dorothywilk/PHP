<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo mt10 pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/fonctions-scalaires"
      target="_blank">Fonctions natives MySQL</a></h1>

  <p>
  <ul>
    <li>Scalaires (ROUND(), FLOOR(), etc...)</li>
    <li>D'aggrégation (MAX(), AVG(), etc...)</li>
  </ul>
  </p>

  <p class="lead pt10">
    Mathématiques, chaînes, etc...
  </p>

  <h3 class="lead">NB: Installer
    <g>ocr1.sql</g>
  </h3>
</div>

<div class="maingc7">

  <?php

  // Fonctions scalaires
  $sql = 'SELECT 17+3, 9*3, 17/3, 17 DIV 3, 17%3, 17 MOD 3, MOD(17, 3),
concat(17 DIV 3, " X 3 + ", 17%3) AS "17 / 3"';
  $req( $sql );


  $sql = 'SELECT PI(), REPEAT("Fort ! ", 3), REPEAT(7, 3)';
  $req( $sql );


  $sql = 'SELECT ROUND (3.4), ROUND (3.5), FLOOR (3.9), CEIL (3.1),
       ROUND (29/3,2), TRUNCATE (29/3,2)';
  $req( $sql );


  $sql = 'SELECT CAST("870303" AS DATE), POW(3, 4), SQRT(81), RAND()';
  $req( $sql );


  $sql = 'SELECT SIGN(-7), SIGN(0), SIGN(7), ABS(-7)';
  $req( $sql );


  $sql = 'SELECT BIT_LENGTH("élevage"), CHAR_LENGTH("élevage"), LENGTH("élevage")
-- Les caractères accentués sont codés sur 2 octets en UTF-8';
  $req( $sql );


  $sql = 'SELECT STRCMP("texte", "texte") AS "texte=texte",
       STRCMP("texte","texte2") AS "texte<texte2",
       STRCMP("chaine","texte") AS "chaine<texte",
       STRCMP("texte", "chaine") AS "texte>chaine",
       STRCMP("texte3","texte24") AS "texte3>texte24";
       -- 3 est après 24 dans l\'ordre alphabétique';
  $req( $sql );


  $sql = 'SELECT LPAD("texte", 3, "@") AS "3_gauche_@",
       RPAD("texte", 3, "v") AS "3_droite_@",
       LPAD("texte", 7, "$") AS "7_gauche_$",
       RPAD("texte", 3, "*") AS "3_droite_*",
       RPAD("texte", 7, "*") AS "7_droite_*"';
  $req( $sql );


  $sql = 'SELECT "    abc " as "(<i>4 espaces</i>) abc (<i>1 espace</i>)",
TRIM( "    abc ") AS "TRIM (Même chaîne)"
UNION
SELECT  CHAR_LENGTH("    abc "), CHAR_LENGTH(TRIM( "    abc "))';
  $req( $sql );


  $sql = 'SELECT TRIM("   Tralala  ") AS both_espace,
       TRIM(LEADING FROM "   Tralala  ") AS lead_espace,
       TRIM(TRAILING FROM "   Tralala  ") AS trail_espace,

       TRIM("e" FROM "eeeBouHeee") AS both_e,
       TRIM(LEADING "e" FROM "eeeBouHeee") AS lead_e,
       TRIM(TRAILING "e" FROM "eeeBouHeee") AS trail_e,

       TRIM("123" FROM "1234ABCD4321") AS both_123

-- TRIM([[BOTH | LEADING | TRAILING] [caract] FROM] texte)';
  $req( $sql );


  $sql = 'SELECT SUBSTRING("texte", 2) AS from2_court,
       SUBSTRING("texte", -4, 3) AS "from -4 for 3 court",
       SUBSTRING("texte" FROM 3) AS from3,
       SUBSTRING("texte", 3, 2) AS from3long2_court,
       SUBSTRING("texte" FROM 3 FOR 2) AS from3long2;';
  $req( $sql );


  $sql = 'SELECT INSTR("tralala", "la") AS fct_INSTR,
       POSITION("la" IN "tralala") AS fct_POSITION,
       LOCATE("la", "tralala") AS fct_LOCATE,
       LOCATE("la", "tralala", 5) AS fct_LOCATE2
       -- Attention : <g>Ces fonctions renvoient 0</g> si pas trouvé chaîne,
       -- Donc: 1<sup>ère</sup> pos = 1...';
  $req( $sql );


  $sql = 'SELECT LOWER("AhAh") AS minuscule,
       LCASE("AhAh") AS minuscule2,
       UPPER("AhAh") AS majuscule,
       UCASE("AhAh") AS majuscule2';
  $req( $sql );


  $sql = 'SELECT  LEFT("123456789", 7), RIGHT("123456789", 7), REVERSE("abcde")';
  $req( $sql );


  $sql = 'SELECT INSERT("texte", 3, 2, "blabla") AS fct_INSERT,
       REPLACE("texte", "e", "a") AS fct_REPLACE,
       REPLACE("texte", "ex", "ou") AS fct_REPLACE2';
  $req( $sql );


  $sql = 'SELECT CONCAT("My", "SQL", "!"), CONCAT_WS("-", "My", "SQL", "!")';
  $req( $sql );


  $sql = "SELECT FIELD('Bonjour', 'Bonjour !', 'Au revoir', 'Bonjour',
             'Au revoir !') AS field_bonjour

-- La fonction FIELD(rech, chaine1, chaine2, chaine3,…) recherche le
-- premier argument (rech) parmi les arguments suivants (chaine1,
-- chaine2, chaine3,…) et retourne l'index auquel rech est trouvée
-- (1 si rech = chaine1, 2 si rech = chaine2,…). Si rech n'est pas
-- trouvée parmi les arguments, 0 est renvoyé.";
  $req( $sql );

  $sql = "SELECT nom_courant, nom_latin, FIELD(nom_courant, 'Rat brun', 'Chat',
'Tortue d''Hermann', 'Chien', 'Perroquet amazone') AS resultat_field
FROM Espece
ORDER BY FIELD(nom_courant, 'Rat brun', 'Chat', 'Tortue d''Hermann',
               'Chien', 'Perroquet amazone')

-- Par conséquent, FIELD peut être utilisée pour définir un ordre
-- arbitraire dans une clause ORDER BY.
-- Exemple : Ordonnons les espèces selon un ordre arbitraire.
-- La fonction FIELD() dans la clause SELECT n'est là que pour
-- illustrer la façon dont ce tri fonctionne.";
  $req( $sql );


  $sql = "SELECT ASCII('A'), CHAR(65), CHAR('65', 65+32, 65.2)";
  $req( $sql );


  $sql = "SELECT nom_courant, replace(nom_courant, left(nom_courant,1),
lcase(left(nom_courant,1))) FROM espece";
  $req( $sql );


  $sql = "SELECT nom, nom_courant
FROM Animal
  INNER JOIN Espece
  ON Animal.espece_id = Espece.id
WHERE nom_courant = 'Chat' AND sexe='F' AND CHAR_LENGTH(nom)%2 = 0
limit 3";
  $req( $sql );

  /*
  ?>
          <div class="jumbotron">
              <p class="h3-responsive">Les tables de référence</p>
              <?php
    $sql = 'select id, clt_id, nom, espece, sexe, date_naissance from pets limit 4';
    aff( 'Pets (Les 4 premiers ' . '/' . $nbr( 'pets' ) . ')' );
    $req( $sql );

    aff( 'Clients (Les 3 premiers ' . '/' . $nbr( 'clients' ) .')');
    $sql = 'select id, nom, prenom, date_naissance from clients';
    $req( $sql );

  //  aff( 'Animaux (Les 3 premiers ' . '/' . $nbr( 'animaux' ) . ' qui ont un propriétaire)' );
  //  $sql = 'select id, clt_id, nom, espece, sexe, commentaires from animaux where clt_id > ""
  // limit 3';
  //  $req( $sql );

    aff( 'Users (Les 3 premiers ' . '/' . $nbr( 'users' ) . ')' );
    $sql = 'select id, name as pseudo, email, role from users where id in (1,15,16)';
    $req( $sql );
  */

  ?>
</div>
