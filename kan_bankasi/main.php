<?php 
require_once "includes/pdo.php";
include_once('content/headerMenu.php');
if( (!isset($_SESSION['isim'])) && (!isset($_SESSION['admin']))){
      echo "<script type='text/javascript'>alert('Öncelikle Giriş Yapmanız Gerekmektedir!')</script>";
 header("Refresh: 0; url= login.php");;}

 else{
    header("Refresh: 9999999999; url= main.php");
 }
?>

                 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css?key=<?=time()?>">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
    
<?php include_once('content/headerMenu.php');?>
<form action="" method="POST">

<div class="container">
    <div class="kaplayan_alan" >
        <div class="bagislayan_bilgi">
            <!-- <div class="fontlar" > -->
<!-- 
              <h1>Adınız:</h1>
              <h1>Soyadınız:</h1>
              <h1>Şehir:</h1>
              <h1>İlçe:</h1>
              <h1>Tel No:</h1>
              <h1>Kan Grubu:</h1>
              <h1>E-Mail:</h1>
        
               -->
  <!-- <div class="box" id="box1">Adınız:</div>
  <div class="box" id="box2">Soyadınız:</div>
  <div class="box" id="box3">Şehir:</div>
  <div class="box" id="box4">İlçe:</div>
  <div class="box" id="box5">Tel Numaranız:</div>
  <div class="box" id="box6">Kan Grubunuz:</div>
  

            </div>       -->


 

            <div class="textler"  >
                    <input id="box1"  type="text" name="ad" placeholder="Lütfen Adınızı Giriniz"  />

                         <input id="box2" type="text" name="soyad" placeholder="Lütfen Soyadınızı Giriniz" />

                          <select id="sehirler" name ="ilID" >
                          <option value="">Bir Şehir Seçiniz</option>
                          <?php
                                $sehir_stmt = $pdo->query("SELECT * FROM il");
                                while($sehir_row = $sehir_stmt->fetch(PDO :: FETCH_ASSOC))
                                 {                          
                                    $sehirler = $sehir_row['sehirler'];
                                    $sehirID = $sehir_row['ilID'];
                                    echo '<option value = '.$sehirID.'> '.$sehirler.' </option>';
                                }
                        ?>
                      </select>

                          <select id="ilceler" name="ilceID" >
                          <option value="">Bir İlçe Seçiniz</option>
                         </select>

                                 <input type="tel" id="box5" name="tel_no" pattern="[0-9]{11}" placeholder="11 Haneli telefon numaranız.."  />

                             <select id="box6" name="kan_gruplariID" class="kan_grubu">
                             <option value="">Kan Grubunuzu Seçiniz</option>
                             <?php
                                $kan_stmt = $pdo->query("SELECT * FROM kan_gruplari");
                                while($kan_row = $kan_stmt->fetch(PDO :: FETCH_ASSOC))
                                 {                          
                                    $kan_gruplari = $kan_row['kan_gruplari'];
                                    $kan_gruplariID = $kan_row['kan_gruplariID'];
                                    echo '<option value = '.$kan_gruplariID.'> '.$kan_gruplari.' </option>';
                                }

                        ?>

                         </select>

                         
            </div>
        </div>
                
            <input class="button" type="submit" name="bagisi_yap" value="Bağış İsteği" >
               
    </div>
</div>
</form>





       


        
        <?php                  
        
                        if($_POST){
                            $ad =   htmlentities(trim($_POST['ad']));
                            $soyad = htmlentities(trim($_POST['soyad']));
                            $ilID = $_POST['ilID'];
                            $ilceID = $_POST['ilceID'];
                            $tel_no=$_POST['tel_no'];
                            $kan_gruplariID = $_POST['kan_gruplariID'];
                            $kayit_id = $_SESSION["kayitID"];
                           
                       

                            if(empty($ad) || empty($soyad)  || empty($ilceID) || empty($kan_gruplariID)   ) {
                                echo "<script type='text/javascript'>alert('Lütfen Gerekli Yerlerin Dolu Olduğundan Emin Olunuz');</script>";
                              }
                        
                              else{
                               $addForms_stmt = $pdo->prepare("INSERT INTO bagislayan_bilgi (ad, soyad, ilID, ilceID,tel_no, kan_gruplariID, kayit_id)
                                VALUES (:ad, :soyad, :ilID, :ilceID,:tel_no, :kan_gruplariID, :kayit_id ) ");
                                    $addForms_stmt->execute(array(
                                    ':ad' => $ad,
                                    ':soyad' => $soyad,
                                    ':ilID' => $ilID,
                                    ':ilceID' => $ilceID,
                                    ':tel_no' =>$tel_no,
                                    ':kan_gruplariID' => $kan_gruplariID,
                                    ':kayit_id' => $kayit_id
                                    
                                    ));
                                
                                    echo "<script type='text/javascript'>alert('Girdiğiniz bilgiler kaydedildi, size dönüş yapacağız.');</script>";
                                }
                            }

                            
                            

     
        ?>
<script>
      $(document).ready(function() {
    $('#sehirler').on('change', function() {
        var country_id = this.value;
        $.ajax({
            url: "includes/post.php",
            type: "POST",
            data: {
                country_id: country_id
            },
            cache: false,
            success: function(ilce_stmt) {
                $("#ilceler").html(ilce_stmt);
               
            }
        });
    });
 
});
      </script>


</body>
</html>