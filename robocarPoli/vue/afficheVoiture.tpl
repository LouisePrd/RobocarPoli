<!DOCTYPE html>
<html lang="fr">
<head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS + CSS PERSO -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="./vue/styleCSS/styleCatalogue.css"">
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet"> 
      <title>RobocarPoli</title>
    </head>

    <body>
    
    <center><a href="./index.php?controle=accueil&action=home"><img class= "logo" src="./vue/img/logo.png"/></a><br>



        <h1>Nos voitures disponibles:</h1>
        <div class="blocPres">
            <?php
                for ($i = 0; $i < count($voitures); $i++) {
            ?>
                    <div class="presentationVoiture">
                    <?php
                    $nom = $voitures[$i]["type"];
                    $etat = $voitures[$i]["etatL"];
                    $photo = $voitures[$i]["photo"];
                    $description = $voitures[$i]["caract"];
                    $date_debut = $voitures[$i]["date_debut"];
                    $date_fin = $voitures[$i]["date_fin"];
                    echo "Voiture : $nom. <br> Etat : $etat <br> Description : $description <br>date_debut : $date_debut <br>date_fin : $date_fin <br><br>"; ?>
                    <img class= "imgVoiture" src="<?php echo  './vue/img/' . $photo ?>"/><br>
                    </div><br>
                    <?php
        }
        ?>
        </div>
        

    </body>

</html>