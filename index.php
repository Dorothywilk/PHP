<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>1er</title>
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/bulma.css">
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
<header class="navDo">
  <a href="/">Accueil</a> |
  <a href="sv">SV</a> |
  <a href="bulma">Bulma</a> |
  <a href="https://apprendre-php.com/tutoriels.html" target="_blank"
     title="Lien du tutoriel d'Emacs">Tutoriel</a> |
  <a href="agc7">Techs GC7</a>
</header>

<article>
  <div class="main">

    <?php
    include './tuto/cours.php';
    ?>

</article>

<footer class="footerDo">
  <p>Do 's website | <a href="https://github.com/Dorothywilk/PHP/tree/dev" target="_blank">Dépôt
    GitHub</a></p>
</footer>
</div>
</body>

</html>
