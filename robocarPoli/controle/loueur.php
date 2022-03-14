<?php
session_start();

        require('../modele/voiture_bd.php');
        $voitures = voitureBD::getVoituresEnLocation();
        $voituresD = voitureBD::getAllVoitures();
        require('../vue/voitureLoueur.tpl');
