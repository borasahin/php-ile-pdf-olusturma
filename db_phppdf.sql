# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: db_phppdf
# Generation Time: 2018-03-21 09:13:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table table_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `table_data`;

CREATE TABLE `table_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8_turkish_ci DEFAULT NULL,
  `content` text COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

LOCK TABLES `table_data` WRITE;
/*!40000 ALTER TABLE `table_data` DISABLE KEYS */;

INSERT INTO `table_data` (`id`, `title`, `content`)
VALUES
	(1,'Pdf Başlık Buraya Gelecek!','<p>http://blog.bswebtools.com <strong>DomPDF</strong> ile mysql bağlantılı pdf oluşturma test sayfasıdır.</p>\n  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sodales enim, vel sollicitudin nibh cursus lobortis. Cras quis lobortis turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed auctor, dolor vel posuere ultrices, lorem nibh dapibus tortor, a ultricies magna erat condimentum massa. Nulla finibus lorem felis, sit amet rutrum nibh tempor non. Duis eget egestas dolor, in interdum risus. Aenean hendrerit neque quis risus tincidunt pharetra. Aliquam viverra diam in dapibus luctus. Donec luctus tortor vitae lorem cursus suscipit. Quisque bibendum bibendum ex non feugiat. Suspendisse scelerisque, sapien eu rutrum egestas, dui eros imperdiet dui, non fermentum sapien ipsum lacinia libero. Nunc tincidunt neque at feugiat gravida. Duis id magna finibus, rutrum sapien pellentesque, dignissim sapien. Suspendisse vulputate eros ante, in posuere purus laoreet sed. Integer finibus ligula nec feugiat dignissim. In eget interdum nibh, at luctus massa.</p>\n  <h2>Alt Başlık Test</h2>\n  <p>Donec tincidunt imperdiet enim, at molestie lacus. Sed eu tortor vitae dolor sollicitudin placerat. Morbi ipsum felis, vestibulum nec bibendum at, pharetra non risus. Aenean a mi ullamcorper, accumsan arcu quis, malesuada urna. Nullam posuere eros non dapibus placerat. Quisque id risus malesuada, viverra nibh vitae, pharetra lectus. Vivamus egestas et lorem quis dictum. Ut venenatis consequat nunc viverra euismod.</p>\n  <h3>Türkçe Karakter Test</h3>\n  <p>Türkçe karakterler İ, ı, Ş, ş, Ğ, ğ, Ç, ç, Ö, ö, Ü, ü</p>\n  <p><em>Türkçe karakterler İ, ı, Ş, ş, Ğ, ğ, Ç, ç, Ö, ö, Ü, ü</em></p>\n  <h4>Türkçe karakterler<br>İ, ı, Ş, ş, Ğ, ğ, Ç, ç, Ö, ö, Ü, ü</h4>\n  <hr>\n  <p>Curabitur sollicitudin nulla ante, vitae lacinia dolor porta mattis. Praesent lacus mi, tincidunt sit amet vestibulum at, elementum eget nulla. Aenean volutpat ex quis quam consectetur dignissim. Curabitur at leo id ligula pulvinar fermentum sed et massa. Vestibulum egestas non justo non sodales. Ut sed aliquet urna. Praesent non scelerisque risus. Proin feugiat tempor nisl, in fermentum tellus consequat in. Pellentesque eleifend maximus ligula vel molestie.</p>');

/*!40000 ALTER TABLE `table_data` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
