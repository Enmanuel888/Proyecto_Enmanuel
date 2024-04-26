<?php

include_once 'con_db.php';
$id = $_POST['id'];
if (isset($_POST['update'])) {
    $query = "UPDATE `villa` SET tipo_villa='$_POST[tipo_villa]',ubicacion='$_POST[ubicacion]',capacidad='$_POST[capacidad]',
    descripcion='$_POST[descripcion]',servicios_comodidades='$_POST[servicios_comodidades]',precio='$_POST[precio]' 
    where id_villa=$id ";
    mysqli_query($conex, $query);
}

header("location: buscar.php?insert=success");

?>