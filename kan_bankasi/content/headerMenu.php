<?php require_once "includes/pdo.php"; 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/headermenu.css?key=<?=time()?>">
     
    <title>menu</title>
   
</head>
<body>

<div class="topnav">
 <a  href="index.php">Ana Sayfa</a> 
<a href="aboutus.php">Bağış Hakkında</a> 
<a href="contact.php">İletişim</a>

<?php
session_start();
if(!isset($_SESSION["isim"])){
	
                       
                          echo '<a id="main" href ="login.php">Giriş Yap</a></li>';
						   
		
						
							
                         }else{
							 echo '<a id="main" href ="logout.php">Çıkış Yap</a></li>';
									;
							 }
 ?>




  <div class="login-container">
   Hoşgeldiniz!
    
   
    
  </div>
    
   
</div>
</body>
</html>