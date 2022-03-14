</html>


<!doctype html>
  <html lang="fr">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS + CSS PERSO -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="./vue/styleCSS/accueil.css">
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet"> 
      <title>RobocarPoli</title>
    </head>

    <body>
          <div class="acc">
            <h1>ROBOCAR POLI</h1>
            <p>Service de location de voiture</p>

            <form method="POST" class="pitié" action="./index.php?controle=voiture&action=catalogueVoitures"> <input type="submit" value ='Voir les voitures'> </form>
            <button id="start" onclick="window.location.href='./controle/ident.php';">Se connecter</button>
            <button id="start" onclick="window.location.href='./controle/inscription.php';">S'insccire</button>


          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script> 
    </body>
  </html>
