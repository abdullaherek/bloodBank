<?php
 require_once(realpath($_SERVER["DOCUMENT_ROOT"]) .'/kan_bankasi/includes/pdo.php');



    

$country_id=$_POST["country_id"];
 


$ilce_stmt = $pdo->query("SELECT * FROM ilce where ilID = '$country_id'");
 while($ilce_row = $ilce_stmt->fetch(PDO :: FETCH_ASSOC))
  {                          
   $ilceler = $ilce_row['isim'];
   $ilceID = $ilce_row['ilceID'];


  echo '<option value = '.$ilceID.' > '.$ilceler.' </option>';
  
  }


?>