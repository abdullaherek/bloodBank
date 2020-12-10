<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/kan_bankasi/css/loginend.css?key=<?=time()?>">
</head>

<body>
<form action="signup.php" method="POST">
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
<?php /*
$kullanici_adi = $_POST['kadi'];
$kullanici_sifre = $_POST['ksifre'];

if ($_POST){
$server="localhost";
$username="root";
$password="";
$dbname="kan_bankasi";

if( !empty($kullanici_adi) && !empty($kullanici_sifre) ){
 $baglan = new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
 if($baglan){
    $kullanici_kontrol= $baglan->query("SELECT * FROM login_table WHERE kullanici_adi='$kullanici_adi' AND kullanici_sifre='$kullanici_sifre'")->fetch();
    if($kullanici_kontrol){
$mesaj="Kullanıcı Bilgileriniz Doğrudur Giriş Yapmak için Tamam Butonuna tıklamanız yeterlidir";
echo"kontrol edildi var";
$baglan=null;
header("Refresh: 0; url=index.php");///////////////// bi doğrulama mesajından sonra ANASAYFAYA GİRECEK/////////
echo "<script type='text/javascript'>alert('$mesaj')</script>";
    }

    else {
        header("Refresh: 0; url=login.PHP");
		$message="Bilgilerinizi Hatalı Girdiniz";
		echo "<script type='text/javascript'>alert('$message');</script>";
		$baglan=null;
		}
    }
}
 
}

 
 

 
////// VERİ BAĞLANTISI KURULUMU + KONTROL /////
/*try{
$server="localhost";
$username="root";
$password="";
$dbname="kan_bankasi";

$conn = new PDO("mysql:host=$server;dbname=$dbname",$username,$password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
echo "Bağlandı";
} catch(PDOException $e) {
echo "Bağlanamadı " . $e->getMessage();
}*/
?>
</body>
</html>