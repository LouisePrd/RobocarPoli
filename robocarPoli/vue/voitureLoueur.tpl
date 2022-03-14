<!DOCTYPE html>
<html lang="fr">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS + CSS PERSO -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="../vue/styleCSS/styleLoueur.css">
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet"> 
      <title>RobocarPoli</title>
    </head>

    <body>

    
    <div class="site"><br>
    <center><img class= "logo" src="../vue/img/logo.png"/><br>
    Connecté en tant que M. <?php echo $_SESSION['profil']['nom']; ?>
    </center><br><br>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="modifVoiture.php">Modifier stock</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Catalogue</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Factures</a>
      </li>
    </ul>
  </div>
</nav>

        <h1>Voitures en location :</h1>
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
                    echo "Voiture : $nom. <br> Etat : $etat <br> Description : $description <br> Date de début de location : $date_debut <br>Date de fin de location : $date_fin <br> <br>"; ?>
                    <img class= "imgVoiture" src="<?php echo  '../vue/img/' . $photo ?>"/><br>
                    </div>
                    <?php
        }
        ?>
        </div>

        <h1>Toutes les voitures :</h1>
                <div class="blocPres">
            <?php
                for ($i = 0; $i < count($voituresD); $i++) {
            ?>
                    <div class="presentationVoiture">
                    <?php
                    $nom = $voituresD[$i]["type"];
                    $etat = $voituresD[$i]["etatL"];
                    $photo = $voituresD[$i]["photo"];
                    $description = $voituresD[$i]["caract"];
                    echo "Voiture : $nom. <br> Etat : $etat <br> Description : $description <br><br>"; ?>
                    <img class= "imgVoiture" src="<?php echo  '../vue/img/' . $photo ?>"/><br>
                    </div><br>
                    <?php
        }
        ?>
        </div>
<div id="modal1" class="modal" style="width: 33% !important;">
    <div class="modal-content">
        <h4>Êtes vous sûr de vouloir quitter ?</h4>
    </div>
    
    </body>

</html>