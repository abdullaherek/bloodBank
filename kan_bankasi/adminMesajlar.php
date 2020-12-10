<!DOCTYPE html>
<html lang="en">
<head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Sayfası</title>
        <link rel="stylesheet" href="/kan_bankasi/css/adminMesajlar.css?key=<?=time()?>">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

       

</head>
<body>
       <?php 
       include_once('includes/adminMenu.php')
       ?>
       <h1 class="AdmiBarTittle">Mesajlar</h1>
                        </div>
                        <div class="AdminSectionInner">

                                <div class="adminSectionTable">

                                        <table class="table table-dark table-striped">
                                                <thead>
                                                  <tr>
                                                    <th>Ad</th>
                                                    <th>Soyad</th>
                                                    <th>Mail</th>
                                                    <th>Mesaj</th>
                                                    <th>Sil</th>
                                                    <th>Düzenle</th>
                                                    
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <td>John</td>
                                                    <td>Doe</td>
                                                    <td>john@example.com</td>
                                                    <td><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vitae vel eveniet cumque. Nam obcaecati modi nemo, a numquam incidunt in, porro voluptatem voluptate iste possimus adipisci illo inventore molestiae. Minus.</p></td>
                                                    <td><input type="submit" class="silButton" value="Sil"></td>
                                                    <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                                  </tr>
                                                  <tr>
                                                        <td>John</td>
                                                        <td>Doe</td>
                                                        <td>john@example.com</td>
                                                        <td><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vitae vel eveniet cumque. Nam obcaecati modi nemo, a numquam incidunt in, porro voluptatem voluptate iste possimus adipisci illo inventore molestiae. Minus.</p></td>
                                                        <td><input type="submit" class="silButton" value="Sil"></td>
                                                        <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                                      </tr>
                                                      <tr>
                                                        <td>John</td>
                                                        <td>Doe</td>
                                                        <td>john@example.com</td>
                                                        <td><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vitae vel eveniet cumque. Nam obcaecati modi nemo, a numquam incidunt in, porro voluptatem voluptate iste possimus adipisci illo inventore molestiae. Minus.</p></td>
                                                        <td><input type="submit" class="silButton" value="Sil"></td>
                                                        <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                                      </tr>
                                                      <tr>
                                                        <td>John</td>
                                                        <td>Doe</td>
                                                        <td>john@example.com</td>
                                                        <td><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vitae vel eveniet cumque. Nam obcaecati modi nemo, a numquam incidunt in, porro voluptatem voluptate iste possimus adipisci illo inventore molestiae. Minus.</p></td>
                                                        <td><input type="submit" class="silButton" value="Sil"></td>
                                                        <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                                      </tr>
        
                                                </div>
                                                

                        </div>

                </div>

        </div>

        
</body>
</html>