<!DOCTYPE html>
<html lang="en">
<head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Kan Arayan</title>        
        <link rel="stylesheet" href="/kan_bankasi/css/adminKanBgs_kulln-aryn.css?key=<?=time()?>">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css?key=<?=time()?>">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css?key=<?=time()?>">
       

</head>
<body>
<?php 
       include_once('includes/adminMenu.php')
       ?>
                                <h1 class="AdmiBarTittle">Güncel Kan Bağışlayanlar Listesi</h1>
                        </div>
                        <div class="AdminSectionInner">
                                <div class="AdminSectionTable">
                                <table class="table table-dark table-striped">
                                        <thead>
                                          <tr >
                                            <th>Ad</th>
                                            <th>Soyad</th>
                                            <th>Mail</th>
                                            <th>Aradığı Kan Grubu</th>
                                            <th>İl</th>
                                            <th>İlçe</th>
                                            <th>Sil</th>
                                            <th>Aktif/Pasif</th>
                                            <th>Düzenle</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>John</td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                            <td>aaaaa</td>
                                            <td>aaaaa</td>
                                            <td>aaaaa</td>
                                            <td><input type="submit" class="silButton" value="Sil"></td>
                                            <td><input type="submit" class="aktifPasifButton" value="Aktif"> </td>
                                            <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                          </tr>
                                          <tr>
                                                <td>John</td>
                                                <td>Doe</td>
                                                <td>john@example.com</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td><input type="submit" class="silButton" value="Sil"></td>
                                                <td><input type="submit" class="aktifPasifButton" value="Aktif"> </td>
                                                <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                              </tr>
                                              <tr>
                                                <td>John</td>
                                                <td>Doe</td>
                                                <td>john@example.com</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td><input type="submit" class="silButton" value="Sil"></td>
                                                <td><input type="submit" class="aktifPasifButton" value="Aktif"> </td>
                                                <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                              </tr>
                                              <tr>
                                                <td>John</td>
                                                <td>Doe</td>
                                                <td>john@example.com</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td><input type="submit" class="silButton" value="Sil"></td>
                                                <td><input type="submit" class="aktifPasifButton" value="Aktif"> </td>
                                                <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                              </tr>
                                              <tr>
                                                <td>John</td>
                                                <td>Doe</td>
                                                <td>john@example.com</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td>aaaaa</td>
                                                <td><input type="submit" class="silButton" value="Sil"></td>
                                                <td><input type="submit" class="aktifPasifButton" value="Aktif"> </td>
                                                <td><input type="submit" class="duzenleButton" value="Düzenle"> </td>
                                              </tr>
                                        </div>
                        </div>

                </div>

        </div>

        
</body>
</html>