<?php


class VoitureBD{
	public static function getAllVoitures()
	{
		require ("../modele/connect.php");
		$req = "SELECT caract, id_voiture, etatL, type, photo , date_debut, date_fin FROM voiture";

	$resultat = array();

	try {
		$commande = $pdo->prepare($req);

		$bool = $commande->execute();

		if ($bool) {

			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements

			}
		}
	catch (PDOException $e) {
		$msg = utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die($msg); // On arrête tout.
	}

	return $resultat;
	
}

public static function getVoituresDisponibles()
	{
		require ("./modele/connect.php");
		$req = "SELECT caract, id_voiture, etatL, type, photo, date_debut, date_fin FROM voiture WHERE etatL='disponible'";

	$resultat = array();

	try {
		$commande = $pdo->prepare($req);

		$bool = $commande->execute();

		if ($bool) {

			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements

			}
		}
	catch (PDOException $e) {
		$msg = utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die($msg); // On arrête tout.
	}

	return $resultat;

}

public static function getVoituresEnLocation()
{
	require ("../modele/connect.php");
	$req = "SELECT caract, id_voiture, etatL, type, photo ,date_debut, date_fin FROM voiture WHERE etatL='en_location'";

$resultat = array();

try {
	$commande = $pdo->prepare($req);

	$bool = $commande->execute();

	if ($bool) {

		$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements

		}
	}
catch (PDOException $e) {
	$msg = utf8_encode("Echec de select : " . $e->getMessage() . "\n");
	die($msg); // On arrête tout.
}

return $resultat;

}


public static function ajoutervoiture() {
	require ("../modele/connect.php");

	$sql = 'INSERT INTO `voiture` (type, nb, caract, etatL, date_debut ,date_fin) VALUES (:type, :nb, :caract, :etatL, :date_debut , :date_fin)';
  

  try {

    $commande = $pdo->prepare($sql);
    $commande->bindParam(":type", $type);
    $commande->bindParam(":nb", $nb);
    $commande->bindParam(":caract", $caract);
    $commande->bindParam(":etatL", $etatL);
	$commande->bindParam(":date_debut", $date_debut);
	$commande->bindParam(":date_fin", $date_fin);


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
}