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
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="html,css,php">
    <link rel="stylesheet" type="text/css" href="/kan_bankasi/css/search.css?key=<?=time()?>">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Kan Arama</title>
</head>
<body>
<?php include_once('content/headerMenu.php');?>
    

<form method="POST" action="searchpage_list.php">
<div class="kanAramaContainer" >
    <div class="textler" style="background-image: url(images/kan1.jpg)">
        <p class="txt"> İl Seçiniz:</p>
        <p class="txt"> İlçe Seçiniz:</p>
        <p class="txt"> Kan Grubu Seçiniz:</p>

    </div>
    <div class="comboboxlar"  style="background-image: url(images/kan1.jpg)">
        <select name="sehir" class="sehir">
            <option value="0">Bir Şehir Seçiniz  </option>
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

        <select name="ilce "class="ilce">
            <option value="ilce">  </option>
        </select>

        <select name="kanGrubu"class="kanGrubu">
            <option value="kangrubu">Bir Kan Grubu Seçiniz  </option>
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
        
        
        <input type="submit" class="btn" value="Ara">
        
      

    </div>
    <div class="icerik"  style="background-image: url(images/kan1.jpg)">
        <h1> &nbsp&nbsp&nbspKan Bağışı Hayat Kurtarır</h1>
        <p class="metin"> &nbsp &nbsp Dünya Sağlık Örgütü’nün raporuna
             göre en güvenilir kan; kişinin kendi özgür
              iradesiyle, hiçbir karşılık beklemeksizin,
               gönüllü, düzenli ve bilinçli olarak verdiği
                kandır.
Tıptaki gelişmelere rağmen kanın yerini tutacak, alternatif 
bir tedavinin olmamasının, düzenli kan bağışı yapmayı ne 
derece önemli bir ihtiyaç haline getirdiğine dikkat çeken 
Hisar Intercontinental Hospital Klinik Laboratuvarlar Bölüm Başkanı Prof. Dr.
 Bekir Sami Uyanık’la Kızılay Haftası’nda kan bağışının önemini konuştuk.
  Dünyada gelişmiş ülkelerde gönüllü kan bağışının nüfusa oranının %5’e yaklaşırken,
   ülkemizde ancak bunun yarısı kadar olduğunu dile getiren Prof. Dr. Uyanık; ‘Güvenli gönüllü
    kan bağışlarının yetersiz olması nedeniyle, kan ve kan ürünleri ihtiyacı, hasta yakınları tarafından 
    kana kan ve bir takım zorunlu yöntemlerle karşılanır. Dolayısıyla “bugün sana, yarın bana ve herkesin kana
     ihtiyacı olacağı bir günün geleceği” düşüncesiyle düzenli kan bağışı kültürünün yerleşmesi gerekir’ açıklamasında bulundu.
Ülkemizde kan ihtiyacı 2.500.000 ünite kan bağışı ile
 karşılanabilecek iken, 2014 yılında toplam 1 milyon 
 860 bin 225 ünite kan bağışı olmuştur. Kadınların kan 
 bağışı oranı artmakla birlikte, bağış yapanların % 88’i
  erkekler iken, %12’si kadınlardır. Oysa 18-65 yaş
   aralığında ve 50 kg üzerinde olan herkes, önemli
    bir sağlık sorunu yoksa yılda dört kez kan bağışı
     yapabilir. 1 ünite, yani bir torba kan, ortalama
      450 ml’dir. İnsan vücudunda yaklaşık 6000 mL kan
       olduğunu göz önüne alınırsa, bu kadar kan vermek
        herhangi bir risk oluşturmaz.</p>
        <div>

</div>
</form>

<script>
      $(document).ready(function() {
    $('.sehir').on('change', function() {
        var country_id = this.value;
        $.ajax({
            url: "includes/post.php",
            type: "POST",
            data: {
                country_id: country_id
            },
            cache: false,
            success: function(ilce_stmt) {
                $(".ilce").html(ilce_stmt);
               
            }
        });
    });
 
});
      </script>


</body>
</html>
