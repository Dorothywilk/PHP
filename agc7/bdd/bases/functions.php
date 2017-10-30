<?php
namespace GC7;
?>
    <div class="jumbotron">
        <h3 class="meaDo">Fonctions natives MySQL</h3>

        <p>
            <ul>
                <li>Scalaires (ROUND(), FLOOR(), etc...)</li>
                <li>D'aggrégation (MAX(), AVG(), etc...)</li>
            </ul>
        </p>

        <p class="lead">
            Mathématiques, chaînes, etc...
        </p>
    </div>
    <?php

$req = function ( $sql ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  $cnx = $cnx->query( $sql );
  try {
    $rep = $cnx->fetchAll( \PDO::FETCH_OBJ );
  } catch ( Exception $e ) {
    aff( $e );
  }

//  aff($rep);
  if ( $rep ) {
    affR( $rep );
  }
  if ( preg_match( '/INSERT|UPDATE|REPLACE|DELETE/i', $sql ) ) {
    $nbra = $cnx->rowCount(); // Nombre de rangs affectés
    $plur = ( $nbra > 1 ) ? 's' : ''; // Pluriel
    echo '=> ' . $nbra . ' rang' . $plur . ' affecté' . $plur . '<hr>';
  }

};

$nbr = function ( $table ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};


// Fonctions scalaires

$sql = 'select 17+3, 9*3, 17/3, 17 DIV 3, 17%3, 17 MOD 3, MOD(17, 3), concat(17 DIV 3, " X 3 + ", 17%3) as "17 / 3"';
aff( $sql );
$req( $sql );

$sql = 'select PI(), REPEAT("Fort ! ", 3), REPEAT(7, 3)';
aff( $sql );
$req( $sql );

$sql = 'select ROUND(3.4), ROUND(3.5), FLOOR(3.9), CEIL(3.1), ROUND(29/3, 2), TRUNCATE(29/3, 2)';
aff( $sql );
$req( $sql );

$sql = 'select CAST("870303" AS DATE), POW(3, 4), SQRT(81), RAND()';
aff( $sql );
$req( $sql );

$sql = 'select SIGN(-7), SIGN(0), SIGN(7), ABS(-7)';
aff( $sql );
$req( $sql );

$sql = 'SELECT BIT_LENGTH("élevage"), CHAR_LENGTH("élevage"), LENGTH("élevage")
 -- Les caractères accentués sont codés sur 2 octets en UTF-8';
aff( $sql );
$req( $sql );
//
$sql = 'SELECT STRCMP("texte", "texte") AS "texte=texte",
       STRCMP("texte","texte2") AS "texte<texte2",
       STRCMP("chaine","texte") AS "chaine<texte",
       STRCMP("texte", "chaine") AS "texte>chaine",
       STRCMP("texte3","texte24") AS "texte3>texte24";
       -- 3 est après 24 dans l\'ordre alphabétique
        ';
aff( $sql );
$req( $sql );
//
$sql = 'SELECT LPAD("texte", 3, "@") AS "3_gauche_@",
       RPAD("texte", 3, "v") AS "3_droite_@",
       LPAD("texte", 7, "$") AS "7_gauche_$",
       RPAD("texte", 3, "*") AS "3_droite_*",
       RPAD("texte", 7, "*") AS "7_droite_*"';
aff( $sql );
$req( $sql );
//
$sql = 'SELECT "    abc " as "(<i>4 espaces</i>) abc (<i>1 espace</i>)", TRIM( "    abc ") as "TRIM (Même
 chaîne)"
UNION
SELECT  CHAR_LENGTH("    abc ") , CHAR_LENGTH(TRIM( "    abc "))';
aff( $sql );
$req( $sql );

$sql = 'SELECT TRIM("   Tralala  ") AS both_espace,
       TRIM(LEADING FROM "   Tralala  ") AS lead_espace,
       TRIM(TRAILING FROM "   Tralala  ") AS trail_espace,

       TRIM("e" FROM "eeeBouHeee") AS both_e,
       TRIM(LEADING "e" FROM "eeeBouHeee") AS lead_e,
       TRIM(TRAILING "e" FROM "eeeBouHeee") AS trail_e,

       TRIM("123" FROM "1234ABCD4321") AS both_123

-- TRIM([[BOTH | LEADING | TRAILING] [caract] FROM] texte)';
aff( $sql );
$req( $sql );


$sql = 'SELECT SUBSTRING("texte", 2) AS from2_court,
       SUBSTRING("texte", -4, 3) AS "from -4 for 3 court",
       SUBSTRING("texte" FROM 3) AS from3,
       SUBSTRING("texte", 3, 2) AS from3long2_court,
       SUBSTRING("texte" FROM 3 FOR 2) AS from3long2;';
aff( $sql );
$req( $sql );

$sql = 'SELECT INSTR("tralala", "la") AS fct_INSTR,
       POSITION("la" IN "tralala") AS fct_POSITION,
       LOCATE("la", "tralala") AS fct_LOCATE,
       LOCATE("la", "tralala", 5) AS fct_LOCATE2
       -- Attention : Fonctions renoient 0 si pas trouvé chaîne,
       -- Donc: 1<sup>ère</sup> pos = 1...';
aff( $sql );
$req( $sql );

$sql = 'SELECT LOWER("AhAh") AS minuscule,
       LCASE("AhAh") AS minuscule2,
       UPPER("AhAh") AS majuscule,
       UCASE("AhAh") AS majuscule2;';
aff( $sql );
$req( $sql );

$sql = 'SELECT  LEFT("123456789", 7), RIGHT("123456789", 7), REVERSE("abcde")';
aff( $sql );
$req( $sql );

$sql = 'SELECT INSERT("texte", 3, 2, "blabla") AS fct_INSERT,
       REPLACE("texte", "e", "a") AS fct_REPLACE,
       REPLACE("texte", "ex", "ou") AS fct_REPLACE2;';
aff( $sql );
$req( $sql );

$sql = 'SELECT CONCAT("My", "SQL", "!"), CONCAT_WS("-", "My", "SQL", "!")';
aff( $sql );
$req( $sql );

$sql = "SELECT FIELD('Bonjour', 'Bonjour !', 'Au revoir', 'Bonjour',
             'Au revoir !') AS field_bonjour

-- La fonction FIELD(rech, chaine1, chaine2, chaine3,…) recherche le
-- premier argument (rech) parmi les arguments suivants (chaine1,
-- chaine2, chaine3,…) et retourne l'index auquel rech est trouvée
-- (1 si rech = chaine1, 2 si rech = chaine2,…). Si rech n'est pas
-- trouvée parmi les arguments, 0 est renvoyé.";
aff( $sql );
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
aff( $sql );
$req( $sql );

$sql = "SELECT ASCII('A'), CHAR(65), CHAR('65', 65+32, 65.2)";
aff( $sql );
$req( $sql );



$sql = "SELECT nom_courant, replace(nom_courant, left(nom_courant,1),lcase(left(nom_courant,1))) FROM espece";
aff( $sql );
$req( $sql );


$sql = "SELECT nom, nom_courant
FROM Animal
INNER JOIN Espece ON Animal.espece_id = Espece.id
WHERE nom_courant = 'Chat' AND sexe='F' AND CHAR_LENGTH(nom)%2 = 0
limit 3;";
aff( $sql );
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
  ?>
        </div>
        <?php
*/
