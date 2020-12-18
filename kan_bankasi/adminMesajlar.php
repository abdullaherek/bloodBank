<?php
session_start();
ob_start();
require_once "includes/pdo.php";
if(!isset($_SESSION["admin"])){  echo "<script type='text/javascript'>alert('Öncelikle Giriş Yapmanız Gerekmektedir!')</script>";
  header("LOCATION: login.php");}
       
        else{
           header("Refresh: 9999999999; url= adminMesajlar.php");
        }
       ?>
<!DOCTYPE html>
<html lang="en">
<head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Sayfası</title>
        <link rel="stylesheet" href="/kan_bankasi/css/adminMesajlar.css?key=<?=time()?>">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

       

</head>
<body>
       <?php 
       include_once('includes/adminMenu.php')
       ?>
       <h1 class="AdmiBarTittle">Mesajlar</h1>
                        </div>
                        <div class="AdminSectionInner">

                                <div class="adminSectionTable">
                                <form action ="" method ="POST">
                                        <table class="table table-dark table-striped">
                                                <thead>
                                                  <tr>
                                                    <th>Ad</th>
                                                    <th>Soyad</th>
                                                    <th>Mail</th>
                                                    <th>Mesaj</th>                                                   
                                                    <th>Sil</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <?php

                                                $mesajlar_stmt = $pdo->query("SELECT * FROM iletisim");
                                                while($mesajlar_row = $mesajlar_stmt->fetch(PDO :: FETCH_ASSOC))
                                                  { $mesajlar_id=$mesajlar_row['iletisim_id'];                         
                                                    $ad = $mesajlar_row['ad'];
                                                    $soyad = $mesajlar_row['soyad'];
                                                    $email = $mesajlar_row['email'];
                                                    $mesaj = $mesajlar_row['mesaj'];
                                                    
                                                    

                                                   echo ' <tr>';
                                                   echo ' <td>'.$ad.'</td>';
                                                   echo ' <td>'.$soyad.'</td>';
                                                   echo '<td>'.$email.'</td>';
                                                   echo '<td><p>'.$mesaj.'</p></td>';                                                                      
                                                   echo ' <td><input type="submit"  name="sil" value="Sil"></td>';
                                                 
                                                  }
                                               
                                                    ?>
                                            </table>
                                            
                                <?php
                                 if(isset($_POST['sil'])){
                                  $query = $pdo->prepare("DELETE FROM iletisim WHERE iletisim_id=:id");
                                  $query->bindParam(':id',$mesajlar_id);
                                  $delete = $query->execute();
                                  header("Refresh: 0; url= adminMesajlar.php");                                  
                                 }
                                 
                                 ?>
        
                                                </div>
                                                

                        </div>

                </div>

        </div>

        </form>
</body>
</html>
<?php
ob_end_flush();
?>