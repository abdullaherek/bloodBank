<?php 
require_once "includes/pdo.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bagisisteyen.css">
    <title>Document</title>
</head>
<body>

<?php include_once('content/headerMenu.php');?>
<form>
    <div class="container">
        <div  class="kaplayan_alan">
            <div class="b_isteyen">
                <input id="box1"  type="text" name="ad" placeholder="Adınız.." />
                <input id="box2" type="text" name="soyad" placeholder="Soyadınız.."/>
                 <select  name="sehir" class="sehir" >
                    <option value="" disabled selected hidden>Yaşadığınız Şehri Seçiniz</option>
              <?php
                       $sehir_stmt = $pdo->query("SELECT * FROM il");
                       while($sehir_row = $sehir_stmt->fetch(PDO :: FETCH_ASSOC))
                        {                          
                           $sehirler = $sehir_row['sehirler'];
                           $ilceID = $sehir_row['ilceID'];
                           echo '<option value = '.$ilceID.'> '.$sehirler.' </option>';
                       }

               ?> 
             </select>

                 <select id="box4" name="ilce" class="ilce">
                    <option value="" disabled selected hidden>Yaşadığınız İlçeyi Seçiniz</option>
                 <?php
                       $ilceninID = $_POST['sehir'];
                       $ilce_stmt = $pdo->query("SELECT * FROM ilce where ilceID = '$ilceninID'");
                       while($ilce_row = $ilce_stmt->fetch(PDO :: FETCH_ASSOC))
                        {                          
                           $ilceler = $ilce_row['isim'];
                           echo '<option value = '.$ilceler.'> '.$ilceler.' </option>';
                       }

               ?>
                </select>

                        <input type="tel" id="box5" name="tel_no" pattern="[0-9]{11}" placeholder="11 Haneli telefon numaranız.."  />

                    <select id="box6" name="kan_grubu" class="kan_grubu">
                        <option value="" disabled selected hidden>Kan Grubunuzu Seçiniz</option>
                     <?php
                       $kan_stmt = $pdo->query("SELECT * FROM kan_gruplari");
                       while($kan_row = $kan_stmt->fetch(PDO :: FETCH_ASSOC))
                        {                          
                           $kan_gruplari = $kan_row['kan_gruplari'];
                           echo '<option value = '.$kan_gruplari.'> '.$kan_gruplari.' </option>';
                       }

               ?> 

                </select>
            </div>
            <div class="button">
                <input type="submit" name="bagisi_yap" value="Talep Oluşturun" >
                    </div>
        </div>
    </div>
</form>
</body>
</html>