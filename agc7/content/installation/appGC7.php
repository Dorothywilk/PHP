<div class="ui tab active" data-tab="appgc7">
  <div class="ui top attached tabular menu">
    <a class="item active" data-tab="appgc7/a" id="tab31"><i class="download icon"></i>AppGC7</a>
    <a class="item" data-tab="appgc7/b" id="tab32"><i class="settings icon"></i>Configuration</a>
    <a class="item" data-tab="appgc7/c" id="tab33"><i class="toggle down icon"></i>Réglages</a>
  </div>


  <div class="ui bottom attached tab segment active" data-tab="appgc7/a">

    <p>En console :</p>
    
    <h3> I / Télécharger les fichiers</h3>
    
    <p><i class="huge announcement icon"></i>Depuis votre dossier <strong>www</strong></p>

    <div class="ui inverted segment">
      <a class="ui header"><i class="github huge icon"></i> git clone
        git@github.com:GrCOTE7/wl.git<br></a>
    </div>

    <div class="ui tiny message justify"><p><i class="list layout icon"></i> NOUVEAU: Dépôt mis en public<i
          class="github icon"></i>.</p></div>
    </a>

    <?php include 'content/installation/details/git.html'; ?>

    <h3>II / Télécharger les librairies</h3>
    <p><i class="huge announcement icon"></i>Depuis votre dossier <strong>wl</strong></p>
    <p>(cd wl)</p>

    <div class="ui inverted segment">
      <a class="ui header"><i class="download huge green icon"></i> composer update<br></a>
    </div>

    <h3>III / Installer les données</h3>
    <div class="ui ordered large list">
      <div class="item">Créer votre base de données (Nommer la <strong>wl</strong>)</div>
      <div class="item">Importez-y le fichier <strong>wl.sql</strong> du dossier <strong>BdD</strong></div>
    </div>

  </div>


  <div class="ui bottom attached tab segment" data-tab="appgc7/b">

    <h3>Régler l'envoi des emails :</h3>
    <div class="ui ordered huge list">
      <div class="item">.env</div>
      <div class="item">config/mail</div>
    </div>

    <div class="ui divider"></div>
    
    <p class="justify">
      <img src="assets/img/picture3.jpg" alt="" id="tof" class="ui right floated image">
      <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea placeat, excepturi. Facili</span>

      Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br><br>Tenetur eius nulla doloribus atque laudantium
      quos sit, alias asperiores inventore natus et blanditiis similique, deleniti saepe illo quo quae distinctio quis.
      
      Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br><br>Tenetur eius nulla doloribus atque laudantium
      quos sit, alias asperiores inventore natus et blanditiis similique, deleniti saepe illo quo quae distinctio quis.
    </p>

  </div>


  <div class="ui bottom attached tab segment" data-tab="appgc7/c">


  </div>


</div>


<div class="ui bottom attached tab segment" data-tab="appGC7">
  <h3>App GC7</h3>
</div>
