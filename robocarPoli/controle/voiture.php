<?php

session_start();

    function catalogueVoitures(){
        require('/modele/voiture_bd.php');
        $voitures = voitureBD::getVoituresDisponibles();
        require('/vue/afficheVoiture.tpl');
    }

    function catalogueVoituresDispo(){
        require('/modele/voiture_bd.php');
        $voitures = voitureBD::getVoituresEnLocation();
        require('/vue/afficheVoiture.tpl');
    }

    function ajouterunevoiture(){
        require('/modele/voiture_bd.php');
        $voitures = voitureBD::ajoutervoiture();
        require('/vue/modifierStock.tpl');
        
    }
