<a?php

@include 'con_db.php';

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

   <h1 class="title">Chef de las villas</h1>

   <div class="box-container">
      <?php
      include ("con_db.php");
         $select_users = mysqli_query($conex, "SELECT * FROM `chef`") or die('query failed');
         if(mysqli_num_rows($select_users) > 0){
            while($fetch_users = mysqli_fetch_assoc($select_users)){
      ?>
      <div class="box">
        
         <p>Id chef: <span><?php echo $fetch_users['id_chef']; ?></span></p>
         <p>nombre del chef : <span><?php echo $fetch_users['nombre']; ?></span></p>
         <p>especialidad del chef : <span><?php echo $fetch_users['especialidad']; ?></span></p>
         <p>menu del chef : <span><?php echo $fetch_users['menu']; ?></span></p>
         <p>tarifas: <span><?php echo $fetch_users['tarifas']; ?></span></p>
         <p>disponibilidad del chef : <span><?php echo $fetch_users['disponibilidad']; ?></span></p>
         <button><a href="drop.php?delete=<?php echo $fetch_users['id_chef']; ?>" onclick="return confirm('Borrar el chef?');" class="delete-btn">Borrar</a></button>
         
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