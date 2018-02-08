<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <title>Cours | Jade</title>
  <link rel="stylesheet" href="../agc7/assets/css/semantic.min.css">
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../agc7/assets/css/combined.css">
</head>

<body>

  <div class="navLi" style="font-size: 1.5rem;padding-left: 10px;border-bottom: 1px solid grey;padding-bottom: 7px;">
    <a href="/">Accueil</a> |
    <a href="?cours=Maths">Maths</a> |
    <a href="?cours=Conjugaison">Conjugaison</a> |
    <a href="?cours=Tests">Tests</a>
    <!-- |-->
  </div>
  <!--			<a href="/" class="hoverable lkdo">Accueil</a> |-->

  <article>
    <div class="jumbotron">
      <div class="maingc7">

        <?php

      if ( !isset( $_GET['cours'] ) )
        $cours = 'Accueil';
      else $cours=$_GET['cours'];

      ?>
          <div class='titreCoursDo actionManShaded'>
            <a href="#" title="Lien #">
              <?= $cours ?>
            </a>
          </div>
          <?php include './' . strtolower($cours) . '/index.php' ?>
      </div>
    </div>
  </article>

  <footer>
    &nbsp;&copy;2017 - GC7 | <a href="https://github.com/GrCOTE7/Do" target="_blank"><i
      class="github icon"></i></a>
  </footer>
  <script src="../agc7/assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="../agc7/assets/js/semantic.min.js" type="text/javascript" charset="utf-8"></script>

  </div>
</body>

</html>
