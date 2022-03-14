<!doctype html>
<html lang="fr">

    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS + CSS PERSO -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="../vue/styleCSS/styleIdent.css">
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet"> 
      <title>Identification</title>
    </head>

<body>
    <div class="site">
    <center><img class= "logo" src="../vue/img/logo.png"/><br>
    </center>
    </div>

<h3> Formulaire d'authentification </h3>
<center><form action="ident.php" method="post">


    <input 	name="nom" 	type="text" value= "<?php echo $nom;
											?>"
					>      Nom      <br/>
    <input  name="mdp"  type="text"  value= "<?php echo $mdp;
											?>"
					>  Mdp   <br/><br>

	<input type= "submit"  value="Se connecter">

</form></center>

	<div> <?php echo $msg; ?> </div>
</body></html>
