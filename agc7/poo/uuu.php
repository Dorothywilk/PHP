<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <style>
    body {
      font-family: arial;
      font-size:1.4em; 
      color:blue;
    }
  </style>
</head>
<body>
<?php

$sujets = json_decode( file_get_contents( "sujets.json" ) );
// $sujetsJson = json_encode($sujets);
var_dump( $sujets);

// echo 'Oki';

?>
<script src="../assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script>
$(document).ready(function () {

var sujets = <?php echo json_encode($sujets) ?>;
  console.log(sujets);
  console.log(sujets['sujets']);

});
</script>
</body>
</html>
