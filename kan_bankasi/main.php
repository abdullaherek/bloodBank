<?php 
require_once "includes/pdo.php";
include_once('content/headerMenu.php');
if(!isset($_SESSION["isim"])){  echo "<script type='text/javascript'>alert('Öncelikle Giriş Yapmanız Gerekmektedir!')</script>";
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
<script>
$(document).ready(function(){
    $("select.country").change(function(){
        var selectedCountry = $(this).children("option:selected").val();
       

    });
});
</script>
</head>
<body>
    
<?php include_once('content/headerMenu.php');?>
<form action="" method="POST">

<div class="container">
    <div class="kaplayan_alan" >
        <div class="bagislayan_bilgi">
            <div class="fontlar" >
<!-- 
              <h1>Adınız:</h1>
              <h1>Soyadınız:</h1>
              <h1>Şehir:</h1>
              <h1>İlçe:</h1>
              <h1>Tel No:</h1>
              <h1>Kan Grubu:</h1>
              <h1>E-Mail:</h1>
        
               -->
  <div class="box" id="box1">Adınız:</div>
  <div class="box" id="box2">Soyadınız:</div>
  <div class="box" id="box3">Şehir:</div>
  <div class="box" id="box4">İlçe:</div>
  <div class="box" id="box5">Tel Numaranız:</div>
  <div class="box" id="box6">Kan Grubunuz:</div>
  <div class="box" id="box7">E-Mail:</div>

            </div>      


 

            <div class="textler"  >
                    <input id="box1"  type="text" name="ad"  />

                         <input id="box2" type="text" name="soyad" />

                          <select  name="sehir" class="country">
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

                          <select id="box4" name="ilce" class="ilce">
                                
                          <?php
                           
                       
                                $ilceninID = $_POST['sehir'];
                                $ilce_stmt = $pdo->query("SELECT * FROM ilce where ilID = '$secilenIl'");
                                while($ilce_row = $ilce_stmt->fetch(PDO :: FETCH_ASSOC))
                                 {                          
                                    $ilceler = $ilce_row['isim'];

                                    echo '<option value = '.$ilceler.'> '.$ilceler.' </option>';
                                }

                        ?>
                         </select>

                                 <input type="tel" id="box5" name="tel_no" pattern="[0-9]{11}" placeholder="11 Haneli telefon numaranız.."  />

                             <select id="box6" name="kan_grubu" class="kan_grubu">
                             <?php
                                $kan_stmt = $pdo->query("SELECT * FROM kan_gruplari");
                                while($kan_row = $kan_stmt->fetch(PDO :: FETCH_ASSOC))
                                 {                          
                                    $kan_gruplari = $kan_row['kan_gruplari'];
                                    echo '<option value = '.$kan_gruplari.'> '.$kan_gruplari.' </option>';
                                }

                        ?>

                         </select>

                         <input id="box7" type="email" name="email"/>
            </div>
        </div>
                <div class="button">
            <input type="submit" name="bagisi_yap" value="Bağış İsteği" >
                </div>
    </div>
</div>
</form>





       


        
        <?php                  
        
                        // if($_POST){
                        //     $ad =  $_POST['ad'];
                        //     $soyad = $_POST['soyad'];
                        //     $tel_no = $_POST['tel_no'];



                        
                        //         $addForms_stmt = $pdo->prepare("INSERT INTO bagislayan_bilgi (ad, soyad, tel_no)
                        //         VALUES (:ad, :soyad, :tel_no) ");
                        //             $addForms_stmt->execute(array(
                        //             ':ad' => $ad,
                        //             ':soyad' => $soyad,
                        //             ':tel_no' => $tel_no
                        //             ));
                        //     }


                            

     
        ?>


<?php include_once('content/footer.php');?>
</body>
</html>