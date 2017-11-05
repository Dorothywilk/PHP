<?php
namespace DoGc7;

class Lien {
  
  static public function faireLien ( $titre, $url, $newWindow=null ) {
    
    echo 'Voici mon lien : <a href='.$url.
    
      ( ($newWindow) ? ' target="_blank"' : '' )
    
    .'>' . $titre . '</a><br>';
  }

}





