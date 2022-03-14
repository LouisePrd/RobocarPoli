<?php
	session_start();

	$nom=  isset($_POST['nom'])?($_POST['nom']):'';
	$mdp=  isset($_POST['mdp'])?sha1($_POST['mdp']):'';
	$msg='';

	if  (count($_POST)==0)
              require ("../vue/ident.tpl") ;
    else {
			require('../modele/ident_bd.php');
	    if  (! verif_ident($nom,$mdp) ||  !verif_ident_bd ($nom, $mdp, $resultat)) {
	        $_SESSION['profil']= array();

			$msg ="erreur de saisie";
	        require ("../vue/ident.tpl") ;
		}
	    else {
			$_SESSION['profil']= $resultat[0];
			$url = "loueur.php";
			header ("Location:" .$url) ;
		}
    }

function verif_ident($nom,$mdp) {
	return true; // TODO
}

?>
