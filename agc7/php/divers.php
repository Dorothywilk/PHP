<?php namespace Php;

// ToDoLi Faire page à part et dossier pour y mettre HTML et CSS ds leurs fichiers respectifs, hors du commun (agc7.scss)
// (Use Git pour versionner cela...)

// ToDoLi @ l'occcase, script pour aisément appeler cela et d'autres avec méthode d'une classe
// http://www.css3create.com/Menu-avec-slider-effet-transition
// http://www.css3create.com/Reflection-en-CSS-sur-une-image
// http://www.css3create.com/Astuce-Utiliser-les-transitions-CSS-avec-height-auto
// http://www.css3create.com/Menu-Slides-avec-CSS3

?>
<style type="text/css">
/* CSS3 Create

Styles CSS liés à la démo:
-> Flip-card avec les transformations 3D CSS

*/
#scene3D{
    width:300px;
    height:300px;
    margin:0 auto 20px;
    -webkit-perspective:500px;
    -moz-perspective:500px;
    -ms-perspective:500px;
    -o-perspective:500px;
    perspective:500px;
    
    background-color:cornsilk;
    border-radius:14px;

}
#flip div{
    position:absolute;
    width:300px;
    height:300px;
    -webkit-backface-visibility:hidden;
    -moz-backface-visibility:hidden;
    -ms-backface-visibility:hidden;
    -o-backface-visibility:hidden;
    backface-visibility:hidden;

    background-color:cornsilk;
    border-radius:14px;
}

#flip div:first-child{
    /* background:#333; */
    -webkit-transform: rotateX(180deg);
    -moz-transform: rotateX(180deg);
    -ms-transform: rotateX(180deg);
    -o-transform: rotateX(180deg);
    transform: rotateX(180deg);
}
/* #flip div:first-child p{ */
#flip div p{
    color:orange;
    text-shadow:0 0 1px #111;
    font-style:italic;
    padding-top:70px;
    text-align:center;

    font-weight:bold;
    font-size:2em;    
}
#flip{
    width:300px;
    height:300px;
    box-shadow:0 0 15px black;
    -webkit-transform: rotateX(0deg);
    -webkit-transition: all 1s ease;
    -webkit-transform-style: preserve-3d;
    -moz-transform: rotateX(0deg);
    -moz-transition: all 1s ease;
    -moz-transform-style: preserve-3d;
    -ms-transform: rotateX(0deg);
    -ms-transition: all 1s ease;
    -ms-transform-style: preserve-3d;
    -o-transform: rotateX(0deg);
    -o-transition: all 1s ease;
    -o-transform-style: preserve-3d;
    transform: rotateX(0deg);
    transition: all 1.5s ease;
    transform-style: preserve-3d;
    
    background-color:cornsilk;
    border-radius:14px;
}
#scene3D:hover #flip{
    -webkit-transform: rotateX(180deg);
    -moz-transform: rotateX(180deg);
    -ms-transform: rotateX(180deg);
    -o-transform: rotateX(180deg);
    transform: rotateX(180deg);
}
</style>

<div id="scene3D">
 <div id="flip">
   <div id=pileFlip><p>Go Go Go !</p></div>
   <div id="faceFlip"><p>Ready....?</p></div>
</div>

</div>

<h1>Tests rapides</h1>

  <h2>Balise Définition en HTML5</h2>

  <dl>
    <dt>HTML</dt>
    <dd><b>H</b>yper<b>T</b>ext <b>M</b>arkup <b>L</b>anguage</dd>
  </dl>
