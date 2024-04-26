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
        <h1>Registra una villa</h1>
        <input type="text" placeholder="Tipo Villa" name="tipo_villa">
        <input type="text" placeholder="Ubicacion" name="ubicacion">
        <input type="text"  placeholder="Capacidad" name="capacidad">
        <input type="text" placeholder="Descripcion" name="descripcion">
        <input type="text" placeholder="servicios y comodidades" name="servicios_comodidades">
        <input type="text" placeholder="Precio de villa" name="precio">
        <button type="submit" name="registra">Registrate</button>
        </form>
        <form action="update.php" method="POST">
        <input type="text" name="id_villa" placeholder="ID">
        <button type="submit" name="update">Editar</button>
 
      </form>
      <button><a href="buscar.php">Lista villas</a></button>
      
    </div>
    <?php
    include ("insert.php");
    ?>
</body>
</html>