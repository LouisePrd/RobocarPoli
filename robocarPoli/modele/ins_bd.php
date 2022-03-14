<?php

function inserer_bd($nom, $pseudo, $mdp, $email, $nomE, $adresseE) {

  require('connect.php');

  $sql = 'INSERT INTO `client` (nom, pseudo, mdp, email, nomE, adresseE) VALUES (:nom, :pseudo, :mdp, :email, :nomE, :adresseE)';

  try {

    $commande = $pdo->prepare($sql);
    $commande->bindParam(":nom", $nom);
    $commande->bindParam(":pseudo", $pseudo);
    $commande->bindParam(":mdp", $mdp);
    $commande->bindParam(":email", $email);
    $commande->bindParam(":nomE", $nomE);
    $commande->bindParam(":adresseE", $adresseE);

    if($commande->execute()){

      return true;

    }

    return false;


  }
  catch (PDOException $e){

    echo utf8_encode("Echec d'insertion : " . $e->getMessage() . "\n");
    die();

  }


}



?>
