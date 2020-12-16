<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="conandabaout.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="css/contact.css?key=<?=time()?>">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   
    <title>Document</title>
    <style>
    
    
    </style>
</head>
<body>
<?php include_once('content/headerMenu.php');?>
    
   
    <form>
    <div class="container contact">
        <div class="row">
            <div class="col-md-3">
                <div class="contact-info">
                    <img class="img" src="images/indir.jpg" alt="image"/>
                    <h2 class="iletisime_gec">Bizimle İletişime Geçin</h2>
                    <h4></h4>
                </div>
            </div>
            <div class="col-md-9">
                <div class="contact-form">
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="fname">Adınız:</label>
                      <div class="col-sm-10">          
                        <input type="text" class="form-control" id="fname" placeholder="Adınızı Giriniz.." name="fname">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="lname">Soyadınız:</label>
                      <div class="col-sm-10">          
                        <input type="text" class="form-control" id="lname" placeholder="Soyadınızı Giriniz.." name="lname">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="email">Email:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="email" placeholder="kullanici12@example.com" name="email">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="comment">Mesajınız:</label>
                      <div class="col-sm-10">
                        <textarea class="form-control" rows="5" id="comment"></textarea>
                      </div>
                    </div>
                    <div class="form-group">        
                      <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Gönder</button>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>