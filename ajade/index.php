<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <title>Cours | Jade</title>
  <link rel="stylesheet" href="../agc7/assets/css/semantic.min.css">
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../agc7/assets/css/gc7.css">
</head>

<body>

  <div class="navLi" style="font-size: 1.5rem;padding-left: 10px;border-bottom: 1px solid grey;padding-bottom: 7px;">
    <a href="/">Accueil</a> |
    <a href="?cours=Mathématiques">Maths</a>
    <!-- |-->
  </div>
  <!--			<a href="/" class="hoverable lkdo">Accueil</a> |-->

  <article>
    <div class="jumbotron">
      <div class="maingc7">

        <?php

      if ( !isset( $_GET['cours'] ) )
        $cours = 'Conjugaisons';
      else $cours=$_GET['cours'];

      switch ( $cours ) {
        case 'Mathématiques':
          $filePhp = 'maths/index';
          break;
        case 'Conjugaisons':
          $filePhp = 'conjugaison';
          break;
      }
      ?>
          <div class='titreCoursDo actionManShaded'>
            <a href="#" title="Lien #">
              <?= $cours ?>
            </a>
          </div>
          <?php include './' . $filePhp . '.php' ?>
      </div>
    </div>
  </article>

  <footer>
    &nbsp;&copy;2017 - GC7 | <a href="https://github.com/GrCOTE7/Do" target="_blank"><i
      class="github icon"></i></a>
  </footer>
  <script src="assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8" async defer></script>
  <script src="assets/js/semantic.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="assets/js/appSemantic.js" type="text/javascript" charset="utf-8"></script>
  </div>
</body>

</html>
