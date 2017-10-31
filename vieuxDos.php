<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <style>
    body {
      font-size: 1.2rem;
      color: #9aff00;
      background-color: #000;
      font-weight: 600;
      text-decoration: blink;
      font-family: arial;
    }

    #test {
      animation: Test 1s infinite;
    }

    @keyframes Test {
      0% {
        opacity: 1;
      }
      50% {
        opacity: 0;
      }
      100% {
        opacity: 1;
      }
    }


    #xx {
      font-size: 1.1em;
    }

  </style>
</head>

<body>
  <p>$<span id="xx">&gt;</span> DIR C:\<span id="test">|</span></p>

</body>

</html>
