<?php
require_once "includes/pdo.php";?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<link href ="/kan_bankasi/css/style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
 
    
<?php include_once('content/headerMenu.php');?>

    <form action="" method="POST">

<div class="kaplayan_alan" >
    

<div class="bagislayan_bilgi">
  

    <div class="fontlar" >
        <h1>Adınız:</h1>
        <h1>Soyadınız:</h1>
        <h1>Şehir</h1>
        <h1>İlçe:</h1>
        <h1>Tel No:</h1>
        <h1>Kan Grubu:</h1>
        
    </div>


    <?php 

            //             $sql="SELECT * FROM il";
            //             $sorgu=mysqli_query($pdo,$sql);
            //             while( $sonuc=mysqli_fetch_assoc($sorgu) ){
                          
            //                 echo '<select>';
            //                 echo '<option>' .$sonuc['sehirler'].'</option>';
            //                 echo '</select>';

            //    }



             /*  try {
               
             
               
                   $sorgu = $pdo->query("SELECT * FROM il");
               
                   $cikti = $sorgu->fetch(PDO::FETCH_ASSOC);
                
                    $sehirler = $cikti['sehirler'];
               
               } catch (PDOException $e) {
                   die($e->getMessage());
               }
               
               $pdo = null;*/
               
               ?>




            



<div class="textler"  >
    <input   type="text" name="ad"  />
    <input  type="text" name="soyad" />

    <select name="sehir" class="sehir">
        <option>
        <?=$sehirler?>
        </option>
    </select>

    <select name="ilce" class="ilce">
    <option>1</option>
    </select>

    <input type="text" name="tel_no" />

    <select name="kan_grubu" class="kan_grubu">
    <option>	
A Rh (+)</option>
    </select>

    

</div>



        </div>







        <div class="button">
            <input type="submit" name="bagisi_yap" value="Bağış İsteği" >
            
            
        
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