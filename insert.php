<?php 
    include("con_db.php");

    if (isset($_POST['registra'])) {
    if (strlen($_POST['tipo_villa']) >= 1 && 
        strlen($_POST['ubicacion']) >= 1 && 
        strlen($_POST['capacidad']) >= 1 && 
        strlen($_POST['descripcion']) >= 1 && 
        strlen($_POST['servicios_comodidades']) >= 1 &&
        strlen($_POST['precio']) >= 1  )
    {
        
	    $tip_villa = trim($_POST['tipo_villa']);
	    $ubi = trim($_POST['ubicacion']);
        $cap = trim($_POST['capacidad']);
        $desc = trim($_POST['descripcion']);
	    $serv = trim($_POST['servicios_comodidades']);
        $precio = trim($_POST['precio']);

	    $consulta = "INSERT INTO `villa`(`id_villa`, `tipo_villa`, `ubicacion`, `capacidad`, `descripcion`, `servicios_comodidades`,`precio`) VALUES ('0','$tip_villa','$ubi','$cap','$desc','$serv','$precio')";

	    $resultado = mysqli_query($conex,$consulta);
	    if ($resultado) {
	    	?> 
	    	<h3 class="ok">¡Te has registrado correctamente!</h3>
           <?php
	    } else {
	    	?> 
	    	<h3 class="bad">¡Ups ha ocurrido un error!</h3>
           <?php
	    }
    }   else {
	    	?> 
	    	<h3 class="bad">¡Por favor complete los campos!</h3>
           <?php
    }
}

?>