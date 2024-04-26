<?php 
    include("con_db.php");

    if (isset($_POST['registra'])) {
    if (strlen($_POST['nombre']) >= 1 && 
        strlen($_POST['especialidad']) >= 1 && 
        strlen($_POST['menu']) >= 1 && 
        strlen($_POST['tarifas']) >= 1 && 
        strlen($_POST['disponibilidad']) >= 1  )
    {
        
	    $nombre = trim($_POST['nombre']);
	    $especialidad = trim($_POST['especialidad']);
        $menu= trim($_POST['menu']);
        $tarifas = trim($_POST['tarifas']);
	    $disponibilidad = trim($_POST['disponibilidad']);

	    $consulta = "INSERT INTO `chef` (`id_chef`, `nombre`, `especialidad`, `menu`, `tarifas`, `disponibilidad`) VALUES ('0', '$nombre', '$especialidad', '$menu', '$tarifas', '$disponibilidad ');
        ";

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