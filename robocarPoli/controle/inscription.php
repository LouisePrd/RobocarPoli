<?php
  session_start();

  
  $nom = isset($_POST['nom'])?($_POST['nom']):'';
  $pseudo = isset($_POST['pseudo'])?($_POST['pseudo']):'';
  $mdp =  isset($_POST['mdp'])? sha1($_POST['mdp']):'';
  $email = isset($_POST['email'])?($_POST['email']):'';
  $nomE = isset($_POST['nomE'])?($_POST['nomE']):'';
  $adresseE = isset($_POST['adresseE'])?($_POST['adresseE']):'';
  $msg = '';

  if (count($_POST) < 3)
    require('../vue/inscription.tpl');
  else {
    if(!verif_ins($nom, $pseudo, $mdp, $email, $nomE, $adresseE)){
      $msg = "erreur de saisie";
      require('../vue/inscription.tpl');
    }
    else {
      require('../modele/ident_bd.php');

      if(verif_ident_bd($nom, $mdp)){
        $msg = "Erreur compte déjà existant !";
        require('../vue/inscription.tpl');
      }
      else {
        require('../modele/ins_bd.php');
        if(!inserer_bd($nom, $pseudo, $mdp, $email, $nomE, $adresseE)){
            $msg = "Echec insertion";
            require('../vue/inscription.tpl');
        }
        else {
          verif_ident_bd ($nom, $mdp, $resultat);
          $_SESSION['profil']= $resultat[0];
          $url = "accueil.php";
          header ("Location:" .$url) ;
          
        }
      }
    }
  }

  function verif_ins($nom, $pseudo, $mdp, $email, $nomE, $adresseE){
    return true; // TODO
  }

?>
