<?php

include ('con_db.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Lista villas</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="style.css">

</head>
<body>
   

<section class="users">

   <h1 class="title">Vilas registradas</h1>

   <div class="box-container">
      <?php
      include ("con_db.php");
         $select_users = mysqli_query($conex, "SELECT * FROM `villa`") or die('query failed');
         if(mysqli_num_rows($select_users) > 0){
            while($fetch_users = mysqli_fetch_assoc($select_users)){
      ?>
      <div class="box">
        
         <p>Id de la villa : <span><?php echo $fetch_users['id_villa']; ?></span></p>
         <p>tipo_villa de la villa : <span><?php echo $fetch_users['tipo_villa']; ?></span></p>
         <p>Ubicacion de la villa : <span><?php echo $fetch_users['ubicacion']; ?></span></p>
         <p>Capacidad de la villa : <span><?php echo $fetch_users['capacidad']; ?></span></p>
         <p>descripcion de la villa : <span><?php echo $fetch_users['descripcion']; ?></span></p>
         <p>servicios y comodidades de la villa : <span><?php echo $fetch_users['servicios_comodidades']; ?></span></p>
         <p>precio de la villa : <span><?php echo $fetch_users['precio']; ?></span></p>
         <button><a href="drop.php?delete=<?php echo $fetch_users['id_villa']; ?>" onclick="return confirm('Borrar la villa?');" class="delete-btn">Borrar</a></button>
         
      </div>
      <?php
         }
      }
      ?>
   </div>

</section>


<script src="js/admin_script.js"></script>

</body>
</html>