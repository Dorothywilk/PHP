<!DOCTYPE html>
<html lang="fr">
<?php
        
    $tweets = number_format(12345,0,'',' ');
    
?>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bulma</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/bulma.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>

    <body>
        <div class="navDo">
            <h1><a href="/">Accueil</a> | Titre</h1>
        </div>
        <div class="main">

            <div class="columns mt5">

                <div class="column cellDo is-capitalized is-size-4">1 sdjgdsgs

                    <?php

      echo 'Je suis du PHP : ' . ( 2 + 3 );

      ?>

                </div>

                <div class="column cellDo">2</div>
                <div class="column cellDo">3</div>
                <div class="column cellDo">4</div>
                <div class="column cellDo">5</div>

            </div>

            <div class="box">
                <article class="media">
                    <div class="media-left">
                        <figure class="image is-64x64">
                            <img src="https://bulma.io/images/placeholders/128x128.png" alt="Image">
                        </figure>
                    </div>
                    <div class="media-content">
                        <div class="content">
                            <p>
                                <strong>Dorothy</strong>
                                <small>@doro</small>
                                <small>31m</small> <i class="fa fa-heart bleuDo"></i>
                                <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis.
                            </p>
                        </div>
                        <nav class="level is-mobile">
                            <div class="level-left">
                                <a class="level-item">
              <span class="icon is-small"><i class="fa fa-reply"></i></span>
                            </a>
                                <a class="level-item">
              <span class="icon is-small"><i class="fa fa-retweet"></i></span>
            </a>
                                <a class="level-item">
              <span class="icon is-small"><i class="fa fa-heart"></i></span>
            </a>
                            </div>
                        </nav>
                    </div>
                </article>
            </div>

            <nav class="level">
                <div class="level-item has-text-centered">
                    <div>
                        <p class="heading"><a href="#"><i class="fa fa-facebook fa-2x"></i>acebook</a></p>
                        <p class="title">
                            <?= $tweets; ?>
                        </p>
                    </div>
                </div>
                <div class="level-item has-text-centered">
                    <div>
                        <p class="heading">Following</p>
                        <p class="title">123</p>
                    </div>
                </div>
                <div class="level-item has-text-centered">
                    <div>
                        <p class="heading">Followers</p>
                        <p class="title">456K</p>
                    </div>
                </div>
                <div class="level-item has-text-centered">
                    <div>
                        <p class="heading">Likes</p>
                        <p class="title">789</p>
                    </div>
                </div>
            </nav>
            <button class="button is-primary is-large .buttonDo"><i class="fa fa-cab"></i> &nbsp;Go go go !
  </button>
        </div>
        <footer class="footerDo">
            <p><a href="https://bulma.io/documentation/overview/start" target="_blank">Bulma</a> | <a href="http://fontawesome.io/icons" target="_blank">Font AWESOME</a>
            </p>
        </footer>
    </body>

</html>
