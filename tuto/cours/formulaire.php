<body>
  <p>
    Texte avant le formulaire
  </p>

  <form method="post" action="traitement.php">
    <p>Texte à l'intérieur du formulaire</p>


    <p>
      Texte après le formulaire
    </p>
    <p>
      <label for='pseudo'> Votre pseudo </label>

      <input type="text" name='pseudo' id='pseudo' maxlength='10' placeholder='Dorothy'><br><br> Mot de passe
      <input type='password' />
    </p>
    <p>
      <input type='email' />
    </p>
    <p>
      <textarea rows="5" cols="10">Le texte</textarea>
    </p>
    <p>
      <input type='number' min="10" max="15" step="10" />
    </p>
    <p>
      <input type='range' min="10" max="15" step="10" />
    </p>


  </form>








  <p>Je suis ici</p>
</body>









<?php
echo str_repeat(' <br>', 20);
