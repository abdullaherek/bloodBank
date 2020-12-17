<?php 
      require_once "includes/pdo.php";
      if(!isset($_SESSION["isim"])){ // echo "<script type='text/javascript'>alert('Öncelikle Giriş Yapmanız Gerekmektedir!')</script>";
        header("Refresh: 0; url= login.php");;
}
       
        else{
           header("Refresh: 9999999999; url= admin.php");
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

                                        <table class="table table-dark table-striped">
                                                <thead>
                                                  <tr>
                                                    <th>Ad</th>
                                                    <th>Soyad</th>
                                                    <th>Mail</th>
                                                    <th>Mesaj</th>
                                                    <th>Sil</th>
                                                    <th>Düzenle</th>
                                                    
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <?php

                                                $mesajlar_stmt = $pdo->query("SELECT * FROM iletisim");
                                                while($mesajlar_row = $mesajlar_stmt->fetch(PDO :: FETCH_ASSOC))
                                                  {                          
                                                    $ad = $mesajlar_row['ad'];
                                                    $soyad = $mesajlar_row['soyad'];
                                                    $email = $mesajlar_row['email'];
                                                    $mesaj = $mesajlar_row['mesaj'];
                                                    

                                                   echo ' <tr>';
                                                   echo ' <td>'.$ad.'</td>';
                                                   echo ' <td>'.$soyad.'</td>';
                                                   echo '<td>'.$email.'</td>';
                                                   echo '<td>'.$mesaj.'</td>';                                                                         
                                                   echo ' <td><input type="submit" class="silButton" value="Sil"></td>';
                                                   echo ' <td><input type="submit" class="aktifPasifButton" value="Aktif"> </td>';
                                                   echo '<td><input type="submit" class="duzenleButton" value="Düzenle"> </td>';
                                                   echo '</tr>';
                                                  }
                                                   
                                                    ?>
        
                                                </div>
                                                

                        </div>

                </div>

        </div>

        
</body>
</html>