<?php
include ("con_db.php");
    $id = $_POST['oo'];
    $sql = "SELECT * FROM chef where  id_chef=$id";
    $result = mysqli_query($conex, $sql);
    $re_check = mysqli_num_rows($result);

if ($re_check){
    $row = mysqli_fetch_assoc($result);
    $ids = $row["id_chef"];
    $nombre = $row['nombre'];
    $especialidad = $row['especialidad'];
    $menu = $row['menu'];
    $tarifas = $row['tarifas'];
    $disponibilidad = $row['disponibilidad'];
    
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
        <h1>Actualiza una chef</h1>
        <input type="text" placeholder="ID" name="id" value="<?php echo $id ?>">
        <input type="text" placeholder="nombre" name="nombre" value="<?php echo $nombre ?>">
        <input type="text" placeholder="especialidad" name="especialidad"value="<?php echo $especialidad ?>">
        <input type="text"  placeholder="menu" name="menu"value="<?php echo $menu ?>">
        <input type="text" placeholder="tarifas" name="tarifas"value="<?php echo $tarifas ?>">
        <input type="text" placeholder="disponibilidad" name="disponibilidad"value="<?php echo $disponibilidad ?>">
        <button type="submit" name="update">Actualiza</button>
      </form>
    
    </div>
    
</body>
</html>