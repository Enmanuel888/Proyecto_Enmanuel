<?php

include_once 'con_db.php';
$id = $_POST['id'];
if (isset($_POST['update'])) {
    $query = "UPDATE `chef` SET nombre='$_POST[nombre]',especialidad='$_POST[especialidad]',menu='$_POST[menu]',
    tarifas='$_POST[tarifas]',disponibilidad='$_POST[disponibilidad]' where id_chef=$id ";
    mysqli_query($conex, $query);
}

header("location: buscar.php?insert=success");

?>