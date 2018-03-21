<?php ob_start();?>
<?php
  /* MYSQL Database Bağlantısı */
  $db_host = 'localhost';
  $db_user = 'root';
  $db_pass = 'root';
  $db_database = 'db_phppdf'; 
  $conn = @mysql_connect($db_host,$db_user,$db_pass);
  if(!$conn){
    die("Baglanti hatasi:");  
  } 
  $db_select = mysql_select_db($db_database,$conn);
  if(!$db_select){
    die("Veritabani hatasi: "); 
  }
  mysql_query("SET NAMES UTF8");
  session_start();
  /* MYSQL Database Bağlantısı */
?>
<?php
  $query = mysql_query("SELECT * FROM table_data WHERE id='1'");
  $row = mysql_fetch_array($query);
  $title = $row['title'];
  $content = $row['content'];
?>
<!-- Pdf dosyamızın içerik başlangıcı -->
<html lang="tr">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/custom.css">
    <title><?=$title?></title>
  </head>
  <body>
  <h1><?=$title?></h1>
  <?=$content?>
  <img src="img/sample-img.jpg" width="100%" />
</body>
</html>
<!-- Pdf dosyamızın içerik sonu -->
<?php
  $html = ob_get_clean();
  require_once 'dompdf/autoload.inc.php';
  use Dompdf\Dompdf;
  use Dompdf\Options;
  // DomPdf options ile Php kullanımını aktif etmeniz gerekiyor. Aksi takdirde php ile gönderdiğiniz sorgular çalışmayacaktır.
    $options = new Options();
    $options->set('isPhpEnabled', TRUE);
    $dompdf = new Dompdf($options);
    $dompdf->loadHtml($html);
    
  // Bu satırda pdf dosyamızın ölçüsünü belirliyoruz. Örnek A4 ve (portrait) Dikey olacak gibi.. Yatay yapmak için Landscape yazmanız yeterli.
    $dompdf->setPaper('A4', 'portrait');

  // Html çıktısı pdf'e dönüştürülüyor.
    $dompdf->render();

  // Attachment değerini 0 verirseniz pdf dosyanız browser üzerinden görüntülenecektir. 1 verirseniz kullanıcının bilgisayarına indirme işlemine geçecektir.
    $dompdf->stream("bswebtools-blog",array("Attachment"=>0));
?>