<?php

function inserer_bd($type, $nb, $caract, $etatL, $photo, $date_debut) {

  require('connect.php');

  $sql = 'INSERT INTO `voiture` (type, nb, caract, photo, etatL, date_debut) VALUES (:type, :nb, :caract, :photo , :etatL, :date_debut)';

  try {

    $commande = $pdo->prepare($sql);
    $commande->bindParam(":type", $type);
    $commande->bindParam(":nb", $nb);
    $commande->bindParam(":caract", $caract);
    $commande->bindParam(":etatL", $etatL); 
    $commande->bindParam(":photo", $photo);
    $commande->bindParam(":date_debut", $date_debut);
    

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
function supprimer_bd($type, $nb, $caract, $etatL,$date_debut) {
  require('connect.php');
  $sql = "select * from voiture";
  $result = mysqli_query($pdo, $sql) or die ("bad query");
  while ($row = mysqli_fetch_assoc($result)) {
    echo "{$row['type']} {$row['nb']} {$row['caract']}{$row['etatL']}";
  }
}


?>
