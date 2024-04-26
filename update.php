<?php
include ("con_db.php");
    $id = $_POST['id_villa'];
    $sql = "SELECT * FROM `villa` where  id_villa=$id";
    $result = mysqli_query($conex, $sql);
    $re_check = mysqli_num_rows($result);

if ($re_check){
    $row = mysqli_fetch_assoc($result);
    $ids = $row["id_villa"];
    $tipo_villa = $row['tipo_villa'];
    $ubicacion = $row['ubicacion'];
    $capacidad = $row['capacidad'];
    $descripcion = $row['descripcion'];
    $servicios_comodidades = $row['servicios_comodidades'];
    $precio = $row['precio'];

}

?>

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
      <form action="actualizar.php" method="post">
        <h1>Actualiza una villa</h1>
        <input type="text" placeholder="ID" name="id" value="<?php echo $id ?>">
        <input type="text" placeholder="Tipo Villa" name="tipo_villa" value="<?php echo $tipo_villa ?>">
        <input type="text" placeholder="Ubicacion" name="ubicacion"value="<?php echo $ubicacion ?>">
        <input type="text"  placeholder="Capacidad" name="capacidad"value="<?php echo $capacidad ?>">
        <input type="text" placeholder="Descripcion" name="descripcion"value="<?php echo $descripcion ?>">
        <input type="text" placeholder="servicios y comodidades" name="servicios_comodidades"value="<?php echo $servicios_comodidades ?>">
        <input type="text" placeholder="Precio de villa" name="precio"value="<?php echo $precio ?>">
        <button type="submit" name="update">Actualiza</button>
      </form>
    
    </div>
    
</body>
</html>