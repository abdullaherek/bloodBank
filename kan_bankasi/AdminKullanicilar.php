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
        <link rel="stylesheet" href="/kan_bankasi/css/adminKanBgs_kulln-aryn.css?key=<?=time()?>">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

       

</head>
<body>
<?php 
       include_once('includes/adminMenu.php')
       ?>
       <h1 class="AdmiBarTittle">Güncel Kullanıcılar</h1>
                       
                        </div>
                        <div class="AdminSectionInner">
                                <div class="AdminSectionTable">
                                        <table class="table table-dark table-striped">
                                                <thead>
                                                  <tr>
                                                    <th>Kullanıcı Adı</th>
                                                    <th>E-mail</th> 
                                                    <th>Kullanıcı Rol</th>
                                                    <th>Parola</th>                                                                                                 
                                                    <th>Sil</th>
                                                    <th>Düzenle</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                 <?php
                                                 $kullanici_sifre="s%3A32%3A%22eJwrT%2FeuKE0JsUiNdA8LLTewBQAzCAWb%22%3B";
                                                 $unhashing_sifre;
                                                 function encrypt_decrypt($action, $kullanici_sifre) {
                                                     $output = true;
                                                     $sifreleme_kodlari = 'AES-256-CTR'; //sifreleme yontemi
                                                     $sifreleme_key = '25760'; //sifreleme anahtari
                                                     $sifre_baslangici = '**109'; //gerekli sifreleme baslama vektoru
                                                     $key = hash('sha256', $sifreleme_key); //anahtar hast fonksiyonu ile sha256 algoritmasi ile sifreleniyor
                                                     $key_substr = substr(hash('sha256', $sifre_baslangici), 0, 16); //0. ve 16. sifrelenmiş harfi göstermeyecek
                                                     if( $action == 'decrypt' ) {
                                                      $output = openssl_decrypt(gzuncompress(base64_decode(unserialize(urldecode($kullanici_sifre)))),$sifreleme_kodlari, $key, 0, $key_substr);
                                                     }	             
                                                     return $output;
                                                   }           
                                                 
        
                                                $kullanici_stmt = $pdo->query("SELECT * FROM kayit");
                                                while($kullanici_row = $kullanici_stmt->fetch(PDO :: FETCH_ASSOC))
                                                  {                          
                                                    $kullanici_ad = $kullanici_row['kullanici_adi'];
                                                    $kullanici_sifre = $kullanici_row['kullanici_sifre'];
                                                    $kullanici_email = $kullanici_row['email'];
                                                    $kullanici_rol = $kullanici_row['rol'];                                                    
                                                   
                                                   $unhashing_sifre =  encrypt_decrypt('decrypt',$kullanici_sifre);///// database'deki şifrelerin asıl yazılışı                                                 

                                                   echo ' <tr>';
                                                   echo ' <td>'.$kullanici_ad.'</td>';
                                                   echo ' <td>'.$kullanici_email.'</td>';
                                                   echo '<td>'.$kullanici_rol.'</td>';
                                                   echo '<td>'.$unhashing_sifre.'</td>';                                                                       
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