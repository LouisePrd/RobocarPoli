<?php
 

  
  $type = isset($_POST['type'])?($_POST['type']):'';
  $nb = isset($_POST['nb'])?($_POST['nb']):'';
  $caract = isset($_POST['caract'])?($_POST['caract']):'';
  $etatL = isset($_POST['etatL'])?($_POST['etatL']):'';
  $photo = isset($_POST['photo'])?($_POST['photo']):'';
  $date_debut = isset($_POST['date_debut'])?($_POST['date_debut']):'';
  $date_fin = isset($_POST['date_fin'])?($_POST['date_fin']):'';
  $msg = '';

  if (count($_POST) < 3)
    require('../vue/modifVoiture.tpl');
  else {
    if(!verif_ins($type, $nb, $caract, $etatL,$photo,$date_debut,$date_fin)){
      $msg = "erreur de saisie";
      require('../vue/modifVoiture.tpl');
    }
    
   
     
      else {
        require('../modele/modifVoiture_bd.php');
        if(!inserer_bd($type, $nb, $caract, $etatL,$photo,$date_debut, $date_fin)){
            $msg = "Echec insertion";
            require('../vue/modifVoiture.tpl');
        }
        
      }
    }
  

  function verif_ins($type, $nb, $caract, $etatL,$photo){
    return true; // TODO
  }

?>
