<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registra</title>
    <link  rel="stylesheet" href="style.css">
</head>
<body>
<div class="form-container sign-up-container">
      <form method="post">
        <h1>Registra chef</h1>
        <input type="text" placeholder="nombre" name="nombre">
        <input type="text" placeholder="especialidad" name="especialidad">
        <input type="text"  placeholder="menu" name="menu">
        <input type="text" placeholder="tarifas" name="tarifas">
        <input type="text" placeholder="disponibilidad" name="disponibilidad">
        <button type="submit" name="registra">Registrate</button>
        </form>
        <form action="update.php" method="POST">
        <input type="text" name="oo" placeholder="ID">
        <button type="submit" name="update">Editar</button>
 
      </form>
      <button><a href="buscar.php">Lista de chef</a></button>
      
    </div>
    <?php
    include ("insert.php");
    ?>
</body>
</html>