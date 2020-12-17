
<!DOCTYPE html>
<html lang="en">
<head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Kan Arayan</title>        
        <link rel="stylesheet" href="/kan_bankasi/css/adminKanBgs_kulln-aryn.css?key=<?=time()?>">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css?key=<?=time()?>">

       

</head>
<body>
         <?php 
       include_once('includes/adminMenu.php')
       ?>
       <h1 class="AdmiBarTittle">Güncel Kan Arayanlar</h1>
                        </div>
                        <div class="AdminSectionInner">
                                <div class="AdminSectionTable">
                                <table class="table table-dark table-striped">
                                        <thead>
                                          <tr>
                                            <th>Ad</th>
                                            <th>Soyad</th>
                                            <th>Mail</th>
                                            <th>Aradığı Kan Grubu</th>
                                            <th>İl</th>
                                            <th>İlçe</th>
                                            <th>Sil</th>
                                            <th>Aktif/Pasif</th>
                                            <th>Düzenle</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <?php

                                                $arayan_stmt = $pdo->query("SELECT * FROM ihtiyac_bilgi");
                                                while($arayan_row = $arayan_stmt->fetch(PDO :: FETCH_ASSOC))
                                                  {                          
                                                    $ad = $arayan_row['ad'];
                                                    $soyad = $arayan_row['soyad'];
                                                    $ilID = $arayan_row['ilID'];
                                                    $ilceID = $arayan_row['ilceID'];
                                                    $tel_no = $arayan_row['tel_no'];
                                                    $kan_gruplariID = $arayan_row['kan_gruplariID'];
                                                    $kayit = $arayan_row['kayit_id'];
                                                  
                                                    $arayan_il_stmt = $pdo->query("SELECT * FROM il where ilID='$ilID'");
                                                     while($arayan_il_row = $arayan_il_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $il = $arayan_il_row['sehirler'];
                                                       

                                                     }

                                                     $arayan_ilce_stmt = $pdo->query("SELECT * FROM ilce where ilceID='$ilceID'");
                                                     while($arayan_ilce_row = $arayan_ilce_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $ilce = $arayan_ilce_row['isim'];
                                                       

                                                     }

                                                     $arayan_kan_stmt = $pdo->query("SELECT * FROM kan_gruplari where kan_gruplariID=' $kan_gruplariID'");
                                                     while($arayan_kan_row = $arayan_kan_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $kan = $arayan_kan_row['kan_gruplari'];
                                                       

                                                     }

                                                     $arayan_email_stmt = $pdo->query("SELECT * FROM kayit where kayit_id =' $kayit'");
                                                     while($arayan_email_row = $arayan_email_stmt->fetch(PDO :: FETCH_ASSOC))
                                                     {  

                                                      $email = $arayan_email_row['email'];
                                                       

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