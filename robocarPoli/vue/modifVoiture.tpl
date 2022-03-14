<!DOCTYPE html>
<html lang="fr">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS + CSS PERSO -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="../vue/styleCSS/styleLoueur.css">
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet"> 
      <title>RobocarPoli</title>
    </head>

    <body>
   <div> <h3> Ajouter une voiture  </h3><br></div>
   
    <form action="#" method="POST">
      <p><input name="type" type="text"> type</p>
      <p><input name="nb" type="text"> nb</p>
      <p><input name="caract" type="text"> caract</p>
      <label for="etatL">Choose a car:</label>
<select  name="etatL">
  <option value="en_location">en_location </option>
  <option value="disponible">disponible</option>
  <option value="en_revision">en_revision</option> 
  <br><br>
</select>
<br><br>
<p> si la voiture est en location, veuillez rentrer les dates. </p>
<p><input name="date_debut" type="date"> date de début</p>
<p><input name="date_fin" type="date"> date de fin</p>
<br><br>
     <p> <input type="file" name="photo"></p>
		<br>
      <input type="submit" value="ajouter !">
    </form>

    <div><?php echo $msg ?></div>

</div>

    <div><?php echo $msg ?></div>
    
    
<div> <br> <br><?php

require('../modele/connect.php');

$select = $pdo -> query("SELECT * FROM voiture");
while($tab = $select -> fetch())
{ 
  
  echo "ID: ".$tab[0]." TYPE : ".$tab[1]." NB : ".$tab[2]." CARACT : ".$tab[3]." ETATL : ".$tab[4]."<a href='supprVoiture.php?id_voiture=".$tab[0]."'> <br> Supprimer</a></br>";
}
 
 
 
  ?></div>

  </body>
</html>
