<form method="post" action="./tuto/cours/formulaire3.php">

  <fieldset>
    <legend>Vos coordonnées</legend>
    <!-- Titre du fieldset -->

    <label for="nom">Quel est votre nom ?<br></label>
    <input type="text" name="nom" id="nom" autofocus required/><br>

    <label for="prenom">Quel est votre prénom ?<br></label>
    <input type="text" name="prenom" id="prenom"/><br>

    <label for="email">Quel est votre email ?<br></label>
    <input type="email" name="email" id="email"/><br><br>
    
		
    <label for="email">Choisissez la date <br></label>
    <input type="date" name="calendrier" id="calendrier"/><br><br>
    
<!--		<p><label>Prénom : <input type='text' name='prenom/>'</label></p>-->
   
    <input type="submit" value="Envoyer" id="submit"/><br>   
		
<!--		Case à cocher--> Juste un essai
		<input type="checkbox" checked/> 							 
  </fieldset>
  
	
<form action="./tuto/cours/formulaire3.php" method="post">
       
<!--	<form action="formulaire3.php" method="post" enctype="multipart/form-data">-->
        <p>
					Formulaire d'envoi de fichier :<br />
			<input type="file" name="monfichier" /><br /><br />
			<input type="submit" value="Envoyer le fichier" />
        </p>
</form>
<!-- --------------  -->
    <p>
    <label for="pays">Choisissez votre option</label><br/>
    <select name="choix" id="choix">
      
      <option value="variablesChaines">Chaînes</option>
      <option value="include 'cours/array.php';
">Array</option>
      <option value="include 'cours/conditions.php';
">Condition</option>
      <option value="include 'cours/formulaire.php';
">Formulaire</option>
      <option value="include 'cours/formulaire2.php';
">Formulaire2</option>
      <option value=" include 'cours/coursmooc.php'; // TodoDo Expliquer à la Puce
">Cours mooc</option>
      <option value="include 'cours/operateurs.php';
">Opérateur</option>
      <option value="include 'cours/poo/index.php';
">Cours Poo</option>
        <option value=" include'initiation/tableau.php';
">Initiation Tableau</option>
        <option value="include 'initiation/tableauIndexe.php';
">Initiation Tableau Indexé</option>
        <option value="include 'cours/ri/famille.php';>Représentation Intervallaire">Représentation Intervallaire</option>
        <option value="include'cours/objets.php';
">Cours Objet</option>
				
        
        
    </select>
  </p>
    
  <?php
  echo '<hr>';
  // ToDoDo Ajouter bouton pour valider le choix et aller dans traitement
  ?>
      
</form>

<form method="post" action="traitement.php">
  <p>
    <label for="pays">Dans quel pays habitez-vous ?</label><br/>
    <select name="pays" id="pays">
      <optgroup label="Europe">
        <option value="france">France</option>
        <option value="espagne">Espagne</option>
        <option value="italie">Italie</option>
        <option value="royaume-uni">Royaume-Uni</option>
      </optgroup>
      <optgroup label="Amérique">
        <option value="canada">Canada</option>
        <option value="etats-unis">Etats-Unis</option>
      </optgroup>
      <optgroup label="Asie">
        <option value="chine">Chine</option>
        <option value="japon">Japon</option>
      </optgroup>
    </select>
  </p>
</form>

<?php
echo str_repeat( ' <br>', 10 );
?>
