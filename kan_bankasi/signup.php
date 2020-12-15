<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/kan_bankasi/css/signup.css?key=<?=time()?>">
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
           
        
    <div class="signup_inputs">
        <div class="user_id">
            <input  type="text" autocomplete="off"  placeholder="Kullanıcı Adı" name="kadi" value="">
        </div>
        <div class="mail_id">
            <input  type="text" autocomplete="off"  placeholder="E-mail" name="mail" value="">
        </div>
                        
        <div class="user_passwd">
            <input type="password"  placeholder="Şifre" name="ksifre" value="">
        </div>
        <div class="user_passwd_again">
            <input type="password"  placeholder="Şifre Tekrarı" name="ksifretkrar" value="">
        </div>
    </div>

<div class="signup_button">                                       
        <input class="btn"  type="submit"  value="Kaydol" >            
    
        <input  class="btn_1"  type="button" onclick="window.location.href='/kan_bankasi/login.php'" value="Zaten Bir Kullanıcı Hesabım Var!"> 
    
</div>                                                
                
        </div>
      

    </div>  
          
</div>
</form>
<?php 

$rol=0;
$mail_kontrol;
$kullanici_info;
if($_POST){
    
$kullanici_adi = htmlentities(trim($_POST['kadi']));
$kullanici_sifre=htmlentities(trim($_POST['ksifre']));
$kullanici_sifre_tekrar=htmlentities(trim($_POST['ksifretkrar']));
$kullanici_email=htmlentities(trim($_POST['mail']));

   if(!empty($kullanici_adi) && !empty($kullanici_email)  && !empty($kullanici_sifre) && !empty($kullanici_sifre_tekrar)){// şifre ve şifre tekrarı birbirine eşitmi
    //$kullanici_info=$pdo->query("SELECT * FROM kayit WHERE kullanici_adi='$kullanici_adi' AND kullanici_sifre='$kullanici_sifre' AND  ")->fetch();
      if($kullanici_adi==$kullanici_sifre){
        echo "<script type='text/javascript'>alert('Kullanıcı Şifreniz Kullanıcı Girişi ile Aynı Olmamalıdır.');</script>";

      }
      else if($kullanici_adi==$kullanici_email){
        echo "<script type='text/javascript'>alert('Kullanıcı Adınız E-mailiniz  ile Aynı Olmamalıdır.');</script>";
      }
      else if($kullanici_adi!=$kullanici_sifre && $kullanici_adi!=$kullanici_email && $kullanici_sifre==$kullanici_sifre_tekrar){//// ŞİFRE VE ŞİFRE TEKRARI BİRBİRİ İLE UYUŞUYORSA DEVAMKEEE

        $sifre_array=str_split($kullanici_sifre);/////////////////////////// $sifreyi dizi olarak sifre_array değişkenine attım////////////////
        if(count($sifre_array)<6 ){//////////////////// ŞİFRE 6 HANEDEN AZ OLMAMALI GÜVENLİK AÇISINDAN/////////////////////////////////////////
            echo "<script type='text/javascript'>alert('Şifreniz en az 6 haneden oluşmalıdır.')</script>";            
        }
        else if($sifre_array>=6){
            // <<<<--------- MAİL KONTROL BAŞLANGIÇI OLACAK BUDA -------->>>>>
            if (filter_var($kullanici_email, FILTER_VALIDATE_EMAIL)) {
               // <------------BU ALAN PASSWORD HASHİNG VE VERİ TABANINA KAYDETME ALANIDIR---------------->
              } else {
                echo "<script type='text/javascript'>alert('Kullanmış Olduğunuz $kullanici_email E-mail Adresi Geçerli Değildir');</script>"; 
              } 
        }
      }      
      else if($kullanici_sifre != $kullanici_sifre_tekrar) {
        echo "<script type='text/javascript'>alert('Şifreleriniz Birbiri İle Uyuşmamaktadır! Lütfen Aynı Olduğundan Emin Olunuz!');</script>";
      }   
   }
   else if(empty($kullanici_adi) || empty($kullanici_email) || empty($kullanici_sifre) || empty($kullanici_sifre_tekrar)  ) {
    echo "<script type='text/javascript'>alert('Lütfen Gerekli Yerlerin Dolu Olduğundan Emin Olunuz');</script>";
  }
   
}

?>
</body>
</html>