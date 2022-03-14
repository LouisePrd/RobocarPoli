<!DOCTYPE html>
<html>
  <head>
    <title>Inscription</title>
    <meta charset="UTF-8">
  </head>
  <body>
    <h1>INSCRIPTION</h1>
    <form action="inscription.php" method="POST">
      <p><input name="nom" type="text"required> Nom</p>
      <p><input name="Pseudo" type="text"required> Pseudo</p>
      <p><input name="mdp" type="text"required> mdp</p>
      <p><input name="email" type="text"required> Email</p>
      <p><input name="nomE" type="text"required> NomE</p>
      <p><input name="adresseE" type="text"required> adresseE</p>
      <input type="submit" value="S'inscrire !">

     
    </form>
  
    <div><?php echo $msg ?></div>

  </body>
</html>
