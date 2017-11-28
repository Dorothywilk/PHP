<form method="post" action="traitement.php">

  <fieldset>
    <legend>Vos coordonnées</legend>
    <!-- Titre du fieldset -->

    <label for="nom">Quel est votre nom ?<br></label>
    <input type="text" name="nom" id="nom"/><br>

    <label for="prenom">Quel est votre prénom ?<br></label>
    <input type="text" name="prenom" id="prenom"/><br>

    <label for="email">Quel est votre e-mail ?<br></label>
    <input type="email" name="email" id="email"/>

  </fieldset>
  <p>
    <label for="pays">Choisissez votre option</label><br/>
    <select name="choix" id="choix">
      <option value="#">Choisir</option>
      <option value="variablesChaines">Chaînes</option>
      <option value="espagne">Jade</option>
      <option value="italie">SV</option>
      <option value="royaume-uni">Bulma</option>
      <option value="canada">Tutoriel</option>
      <option value="etats-unis">Tech GC7</option>
      <option value="chine">XU</option>
      <option value="japon">C57</option>
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
    
     
    
