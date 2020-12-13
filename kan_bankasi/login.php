<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/kan_bankasi/css/loginend.css?key=<?=time()?>">
</head>

<body>
<form action="" method="POST">
    
<div class="container"> 
    
   <div class="txt">
       <div class="txt_1">
    <h1 >Kan Bağışı Hayati Bir Önem Taşır</h1>
    <p> Kan bağışı; gönüllü ve sağlıklı bir bağışçıdan kan ve kan ürünlerini elde etmek amacıyla kan merkezleri tarafından kan alınması işlemidir.
"Bağışçı Bilgilendirme ve Onam Formu" ile "Bağışçı Sorgulama Formu" okunduktan sonra sorular yanıtlanır ve imzalanır. </p>
</div>   
    </div>
    
    <div class="panel">
        
        <div class="panel_1">
           
        
    <div class="login_inputs">
        <div class="user_id">
            <input  type="text" autocomplete="off"  placeholder="Kullanıcı Adı" name="kadi" value="">
        </div>
                
        <div class="user_passwd">
            <input type="password"  placeholder="Şifre" name="ksifre" value="">
        </div>
    </div>

<div class="login_button">        
        <input  class="btn"  type="submit"  value="Giriş" >                       
        <input class="btn_1"  type="submit"   value="Kaydol" >                     
        <input class="btn_2"  type="submit"  value="Şifreni mi unuttun?" >   
</div>                                                
                    
                          
            
        </div>
      

    </div>  
          
</div>
</form>

</body>
<?php 
require_once "includes/pdo.php";
$kullanici_adi=$_POST['kadi'];
$kullanici_sifre=$_POST['ksifre'];
$rol1=1;
$rol2=0;

//////////////////<-- DEGERLER GİRİLDİGTEN SONRA -->/////////////////
if(!empty($kullanici_sifre) && !empty($kullanici_sifre) ){
    $kullanici_kontrol= $pdo->query("SELECT * FROM kayit WHERE kullanici_adi='$kullanici_adi' AND kullanici_sifre='$kullanici_sifre' AND rol='$rol2' ")->fetch();
    $admin_kontrol=$pdo->query("SELECT * FROM kayit WHERE kullanici_adi='$kullanici_adi' AND kullanici_sifre='$kullanici_sifre' AND rol='$rol1' ")->fetch();
    if ($kullanici_kontrol){/// roll 0 ise index sayfasına atacak////
        echo "böyle bir kullanıcı var";
        header("Refresh: 0; url= index.php");
    }
    else if($admin_kontrol){ ///// roll 1 ise admin sayfasına atacak//////
        echo "bu giriş admine aittir.";
        header("Refresh: 0; url= admin.php");

    }
    else echo"böyle bir kayıt yok kanks";

}////////////<--- girilen degerler boşmu kontol bitişi--->//////////

else  echo "<script >alert('girilen degerler bos');</script>";



?>

</html>