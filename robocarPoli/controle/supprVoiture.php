<?php
if (isset($_GET['id_voiture']))
{
    require('../modele/connect.php');
    $id = htmlentities($pdo->quote($_GET['id_voiture']));
    $delete = $pdo->query("DELETE FROM voiture WHERE id_voiture=$id");
    if($delete)
    {
        echo "La voiture à bien été supprimée";
    }
    else {
        echo "Erreur de suppression";
    }
}




?>