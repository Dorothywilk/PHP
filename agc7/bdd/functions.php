<?php
namespace GC7;
?>
  <div class="jumbotron">
    <h3>Fonctons natives MySQL</h3>

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
$sql = ' SELECT LPAD("texte", 3, "@") AS "3_gauche_@",
       RPAD("texte", 3, "v") AS "3_droite_@",
       LPAD("texte", 7, "$") AS "7_gauche_$",
       RPAD("texte", 3, "*") AS "3_droite_*",
       RPAD("texte", 7, "*") AS "7_droite_*" ';
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
       LOCATE("la", "tralala", 5) AS fct_LOCATE2';
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
