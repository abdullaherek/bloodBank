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
            <input  type="text" autocomplete="off"  placeholder="E-mail" name="kadi" value="">
        </div>
                        
        <div class="user_passwd">
            <input type="password"  placeholder="Şifre" name="ksifre" value="">
        </div>
        <div class="user_passwd_again">
            <input type="password"  placeholder="Şifre Tekrarı" name="ksifre" value="">
        </div>
    </div>

<div class="signup_button">                                       
        <input class="btn"  type="submit"  value="Kaydol" >            
    
        <input  class="btn_1"  type="submit"  value="Zaten Bir Kullanıcı Hesabım Var!"> 
    
</div>                                                
                
        </div>
      

    </div>  
          
</div>
</form>
<?php 
?>
</body>
</html>