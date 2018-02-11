<?php
namespace GC7;

//
//$subject = "abcdef";
//$pattern = '/^def/';
//preg_match($pattern, $subject, $matches, PREG_OFFSET_CAPTURE, 3);
//print_r($matches);


//$q = "
//Procedure RecherchePeres (in i integer, inout reponse string)
//begin
//   reponse = reponse + ', ' + (SELECT name
//                               FROM transports
//                               WHERE id = i)
//if i = 0
//then
//   return
//else
//   i = (SELECT pere
//        FROM transports
//        WHERE id = i)
//end
//
//";


// Bases
//include( 'bases/subReq.php' );
//include( 'bases/joints.php' );
//include( 'bases/union.php' );
//include( 'bases/foreign_key.php' );


// Fonctions natives MySQL

// Avec ocr1.sql
//include( 'bases/functions.php' );
//include( 'bases/functionsAgregation.php' );
//include( 'bases/regroupement.php' );
//include( 'bases/date.php' );
//include( 'bases/calculsDate.php' );


// Sécurisation

// Avec ocr1.sql
include( 'securisation/transactions.php' );
//include( 'securisation/verrous.php' );
//include( 'securisation/requetesPreparees.php' );
//include( 'securisation/procedures.php' );
//include( 'securisation/conditions.php' );
//include( 'securisation/fonctionsUtilisateur.php' );
//include( 'securisation/boucles.php' );
//include( 'securisation/erreurs_curseurs.php' );
//include( 'securisation/triggers.php' );


//include( 'securisation/vues.php' );
//include( 'securisation/tablesTemporaires.php' );
//include( 'securisation/vuesMaterialisées.php' );


//include( 'securisation/exo6.php' );
//include( 'admin/infos.php' );
//include( 'admin/config.php' );
//

include( 'xu/xu.php' );


//////////////////////////////////////////////////////////////////////////////////////////
//include( '../class/Req.php' );
// Exemple requête simple
//$req = [
//  'sql' => 'req'
//];
//
//$maReq = new Requete( (Array) $req );
//echo $maReq->sql;
//affR( $maReq->réponse );

//////////////////////////////////////////////////////////////////////////////////////////
// Exemple requête père
//$req = [
//  'sql' => 'getPere1',
//  'item' => 'Transport'
//  //  'item' => 'Marin'
//];
//$maReq = new Requete( (Array) $req );
//aff('Recherche Père');
//affR( $maReq );


// Affichage Réel
if ( isset( $r ) ) {
  affR( $r );
//aff( $r );
}
