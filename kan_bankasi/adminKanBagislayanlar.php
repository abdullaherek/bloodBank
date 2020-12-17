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
        <title>Admin Kan Arayan</title>        
        <link rel="stylesheet" href="/kan_bankasi/css/adminKanBgs_kulln-aryn.css?key=<?=time()?>">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css?key=<?=time()?>">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css?key=<?=time()?>">
       

</head>
<body>
<?php 
       include_once('includes/adminMenu.php')
       ?>
                                <h1 class="AdmiBarTittle">Güncel Kan Bağışlayanlar Listesi</h1>
                        </div>
                        <div class="AdminSectionInner">
                                <div class="AdminSectionTable">
                                <table class="table table-dark table-striped">
                                        <thead>
                                          <tr >
                                            <th>Ad</th>
                                            <th>Soyad</th>
                                            <th>Mail</th>
                                            <th>Tel.Numarası</th>
                                            <th>Bağışlanan Kan Grubu</th>
                                            <th>İl</th>
                                            <th>İlçe</th>
                                            <th>Sil</th>
                                            <th>Aktif/Pasif</th>
                                            <th>Düzenle</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                         <?php

                                                $bagislayan_stmt = $pdo->query("SELECT * FROM bagislayan_bilgi");
                                                while($bagislayan_row = $bagislayan_stmt->fetch(PDO :: FETCH_ASSOC))
                                                  {                          
                                                    $ad = $bagislayan_row['ad'];
                                                    $soyad = $bagislayan_row['soyad'];
                                                    $ilID = $bagislayan_row['ilID'];
                                                    $ilceID = $bagislayan_row['ilceID'];
                                                    $tel_no = $bagislayan_row['tel_no'];
                                                    $kan_gruplariID = $bagislayan_row['kan_gruplariID'];
                                                    $kayit = $bagislayan_row['kayit_id'];
                                                  
                                                    $bagislayan_il_stmt = $pdo->query("SELECT * FROM il where ilID='$ilID'");
                                                     while($bagislayan_il_row = $bagislayan_il_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $il = $bagislayan_il_row['sehirler'];
                                                       

                                                     }

                                                     $bagislayan_ilce_stmt = $pdo->query("SELECT * FROM ilce where ilceID='$ilceID'");
                                                     while($bagislayan_ilce_row = $bagislayan_ilce_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $ilce = $bagislayan_ilce_row['isim'];
                                                       

                                                     }

                                                     $bagislayan_kan_stmt = $pdo->query("SELECT * FROM kan_gruplari where kan_gruplariID=' $kan_gruplariID'");
                                                     while($bagislayan_kan_row = $bagislayan_kan_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $kan = $bagislayan_kan_row['kan_gruplari'];
                                                       

                                                     }

                                                     $bagislayan_email_stmt = $pdo->query("SELECT * FROM kayit where kayit_id =' $kayit'");
                                                     while($bagislayan_email_row = $bagislayan_email_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $email = $bagislayan_email_row['email'];
                                                       

                                                     }
                                            

                                                   echo ' <tr>';
                                                   echo ' <td>'.$ad.'</td>';
                                                   echo ' <td>'.$soyad.'</td>';
                                                   echo '<td>'.$il.'</td>';
                                                   echo '<td>'.$ilce.'</td>';
                                                   echo '<td>'.$tel_no.'</td>';
                                                   echo '<td>'.$kan.'</td>';
                                                   echo '<td>'.$email.'</td>';                       
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