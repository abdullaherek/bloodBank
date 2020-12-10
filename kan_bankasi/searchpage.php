<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="html,css,php">
    <link rel="stylesheet" type="text/css" href="/kanbankasi/css/search.css?key=<?=time()?>">
    <title>Kan Arama</title>
</head>
<body >
<?php 
            include_once ('content/headerMenu.php');
    
    ?>
    <div class="KanAramaContainer" >
        <div class="KanAramaText" style="background-image: url(images/kan1.jpg);">
            <p class="Text" style="color: white;">İl Seçiniz:</p>
            <p class="Text" style="color: white;">İlçe Seçiniz:</p>
            <p class="Text" style="color: white;">Kan Grubu Seçiniz:</p>

        </div>
        <div class="KanAramaCombobox" style="background-image: url(images/kan1.jpg);">
            <select class="combobox">
                <option value="İl">aaaa</option>
                <option value="İl">bbbb</option>
                <option value="İl">cccc</option>
            </select>

            <select class="combobox">
                <option value="İlce">aaaa</option>
                <option value="İlce">bbbb</option>
                <option value="İl">cccc</option>
            </select>

            <select class="combobox">
                <option value="KGrubu">aaaa</option>
                <option value="KGrubu">bbbb</option>
                <option value="KGrubu">cccc</option>
            </select>

            <input type="button" class="button"  value="" >

        </div>
        <div class="KanAramaİcerik"  style="background-image: url(images/kan1.jpg);background-repeat:repeat;">
           
        
          <h1>Kan Bağışı Hayat Kurtarır</h1> 
           <p class="kanAramaP" >
          &nbsp Yılda bir veya iki kez yapılacak olan
          kan bağışı birçok insana yaşam umudu olabilir.
          Her gün çeşitli kazalar, yaralanmalar ve operasyonlar gerçekleşmektedir. Bu noktada, kan ihtiyacı hayati önem taşır. Kanamalı hastalığı olan bir hastanın, ameliyatta 6-8 ünite kana ihtiyacı olabilmektedir. Bu hastanın, kurtulabilmesi için kan gereksinimi olduğu unutulmamalıdır. Kan bağışının olmadığı bir toplumda, her gün binlerce kişi hayatını kaybedebilir. Bu sebep ile, düzenli kan bağışında bulunmak insanların hayatını kurtarır. Kan bağışı, bir sosyal sorumluluk olup, bir gün herkesin kana ihtiyaç duyacağı da bir gerçektir. Kan bağışının ücretsiz gönüllülük esasında yapıldığının da unutulmaması ve bu bilinç ile yapılması gerekir. Kan bağışı yapan kişi ile aynı soyadı taşıyan yakınlarına kan bağışında öncelik tanınarak kan sigortası sağlanabilmektedir.</p>
        </div>


    </div>
    <?php 
            include_once ('content/footer.php');
    
    ?>


</body>
</html>
