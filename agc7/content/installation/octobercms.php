<div class="ui tab" data-tab="octobercms">
  <div class="ui top attached tabular menu">
    <a class="item active" data-tab="octobercms/install" id="tab21"><i class="download icon"></i>Installation</a>
    <a class="item" data-tab="octobercms/config" id="tab22"><i class="setting icon"></i>Configuration</a>
    <a class="item" data-tab="octobercms/plugins" id="tab23"><i class="toggle down icon"></i>Plugins</a>
  </div>


  <div class="ui bottom attached tab segment active" data-tab="octobercms/install">

    <div class="ui header">OctoberCMS</div>
    <div class="ui ordered large list">
      <div class="item"><a class="linkColor"
                           href="https://octobercms.com/docs/setup/installation"
                           target="_blank">Download the installer archive file</a> dans votre dossier
        <strong>www</strong>.
      </div>
      <div class="item">Décompresser install-master.zip</div>
      <div class="item">Renommer le dossier obtenu du même nom en <strong>ocms</strong></div>
      <div class="item">Lancer install.php dans le navigateur (<a href="http://ocms/install.php"
                                                                  target="_blank" class="linkColor">Ocms</a>)
      </div>
      <br>
      <p>Essai avec le thème Clean Blog</p>
    </div>
  </div>


  <div class="ui bottom attached tab segment" data-tab="octobercms/config">

    <div class="ui header">Réglages</div>

    <div class="ui ordered list">
      <div class="item">Paramétrage du Back-end (BE)
        <ul>
          <li class="item">BE en français</li>
          <li class="item">Timezone: Europe/Paris</li>
        </ul>
      </div>
      <div class="item">config/cms: 'edgeUpdates' => true,<br>
        Puis updates
      </div>
      <div class="item">...</div>
    </div>
  </div>


  <div class="ui bottom attached tab segment" data-tab="octobercms/plugins">

    <div class="ui header">Ajout de plugins</div>
    <div class="ui message">Dans BE / Réglages / Système - Mise à jour / Installer des plugins</div>
    <div class="ui ordered list">
      <div class="gc7List">
        <li>BnB.ScaffoldTranslation ( sca -> Scaffold Translation )</li>
        <li>Indikator.Backend ( bac -> Backend Plus )</li>
        <li>RainLab.Builder ( bui -> Builder )</li>
        <li>Bluhex.YouTube ( you -> YouTube )</li>
        <li>Hambern.Html5media ( htm -> Html5media )</li>
        <li>Mohsin.Txt ( moh -> Txt )</li>
        <li>RainLab.Pages ( stat -> Static Pages )</li>
        <li>RainLab.User ( use -> User )</li>
        <li>RainLab.Forum ( for -> Forum )</li>
        <li>Rahman.Faker ( fak -> Faker )</li>
        <li>OFFLINE.SiteSearch( sea -> SiteSearch )</li>
        <li>Bedard.Debugbar ( deb -> Deburbar )</li>
        <li>Lovata.Toolbox ( tool -> Toolbox )</li>
      </div>
    </div>
    <div class="ui message"></div>

  </div>

</div>
