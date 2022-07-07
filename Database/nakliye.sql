-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: nakliye
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `a_araclar`
--

DROP TABLE IF EXISTS `a_araclar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_araclar` (
  `arac_id` int NOT NULL AUTO_INCREMENT,
  `arac_plaka` varchar(45) NOT NULL,
  `arac_marka` varchar(45) NOT NULL,
  `arac_model` varchar(45) NOT NULL,
  `arac_renk` varchar(45) NOT NULL,
  `arac_yakit` varchar(45) NOT NULL,
  `arac_tarih` date NOT NULL,
  PRIMARY KEY (`arac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_araclar`
--

LOCK TABLES `a_araclar` WRITE;
/*!40000 ALTER TABLE `a_araclar` DISABLE KEYS */;
INSERT INTO `a_araclar` VALUES (1,'34GO1907','Volvo','2016','Kırmızı','Benzin+Lpg','2022-04-24'),(2,'22FB2234','DAF','2014','Bej','Dizel','2022-04-24'),(3,'22FB2235','Mercedes','2014','Beyaz','Benzin','2022-04-24'),(4,'22FB2236','Mercedes','2014','Beyaz','Benzin','2022-04-24'),(5,'22FB2237','Mercedes','2014','Kırmızı','Benzin','2022-04-24'),(6,'06AD3425','IVECO','2016','Mavi','Benzin+Lpg','2022-04-24'),(7,'06AD3426','IVECO','2016','Mavi','Benzin+Lpg','2022-04-24'),(8,'06AD3427','IVECO','2016','Mavi','Benzin+Lpg','2022-04-24'),(9,'06AD3428','IVECO','2016','Mavi','Benzin+Lpg','2022-04-24'),(10,'39AS2941','Renault','2013','Siyah','Benzin','2022-04-06'),(11,'39AS2942','Renault','2013','Siyah','Benzin','2022-04-06'),(12,'04D6525','Ford','2004','Beyaz','Benzin','2022-05-06'),(14,'65DD2502','Ford','2004','Beyaz','Benzin','2022-05-10');
/*!40000 ALTER TABLE `a_araclar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_mesaj`
--

DROP TABLE IF EXISTS `a_mesaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_mesaj` (
  `mesaj_id` int NOT NULL AUTO_INCREMENT,
  `musteri_id` int NOT NULL,
  `mesaj_baslik` varchar(45) NOT NULL,
  `mesaj_icerik` text NOT NULL,
  `mesaj_tarih` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mesaj_id`),
  KEY `musteri_id` (`musteri_id`),
  KEY `musteri_id_2` (`musteri_id`),
  CONSTRAINT `a_mesaj_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteriler` (`musteri_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_mesaj`
--

LOCK TABLES `a_mesaj` WRITE;
/*!40000 ALTER TABLE `a_mesaj` DISABLE KEYS */;
INSERT INTO `a_mesaj` VALUES (1,2,'deneeme','merhaba','2022-05-10 16:28:42');
/*!40000 ALTER TABLE `a_mesaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_nakliyatlar`
--

DROP TABLE IF EXISTS `a_nakliyatlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_nakliyatlar` (
  `nakliyat_id` int NOT NULL AUTO_INCREMENT,
  `nakliyat_nerden` varchar(45) NOT NULL,
  `nakliyat_nereye` varchar(45) NOT NULL,
  `sofor_id` varchar(45) NOT NULL,
  `musteri_id` varchar(45) NOT NULL,
  `nakliyat_tarih` varchar(45) NOT NULL,
  PRIMARY KEY (`nakliyat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_nakliyatlar`
--

LOCK TABLES `a_nakliyatlar` WRITE;
/*!40000 ALTER TABLE `a_nakliyatlar` DISABLE KEYS */;
INSERT INTO `a_nakliyatlar` VALUES (1,'Adana','Samsun','Yalçın Bulut','Harun Kavitaş','2022-05-12'),(2,'Adıyaman','Eskişehir','Fatih Bayındır','Harun Kavitaş','2022-05-11');
/*!40000 ALTER TABLE `a_nakliyatlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_odemeistek`
--

DROP TABLE IF EXISTS `a_odemeistek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_odemeistek` (
  `odemeistek_id` int NOT NULL AUTO_INCREMENT,
  `musteri_id` int NOT NULL,
  `uodeme_id` int NOT NULL,
  PRIMARY KEY (`odemeistek_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_odemeistek`
--

LOCK TABLES `a_odemeistek` WRITE;
/*!40000 ALTER TABLE `a_odemeistek` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_odemeistek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_soforler`
--

DROP TABLE IF EXISTS `a_soforler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_soforler` (
  `sofor_id` int NOT NULL AUTO_INCREMENT,
  `sofor_adsoyad` varchar(45) NOT NULL,
  `sofor_telefon` varchar(45) NOT NULL,
  `sofor_adres` longtext NOT NULL,
  `sofor_email` varchar(45) NOT NULL,
  `sofor_maas` int NOT NULL,
  `sofor_tarih` varchar(45) NOT NULL,
  PRIMARY KEY (`sofor_id`),
  UNIQUE KEY `sofor_id_UNIQUE` (`sofor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_soforler`
--

LOCK TABLES `a_soforler` WRITE;
/*!40000 ALTER TABLE `a_soforler` DISABLE KEYS */;
INSERT INTO `a_soforler` VALUES (1,'Fatih Bayındır','541545415','Ankara	','ayhan.kutlu@gmail.com',1750,'2022-04-23'),(2,'Yalçın Bulut','5419614787','İstanbul','bulut.yalcin@yahoo.com',2500,'2022-04-24'),(3,'Berkay Alperen','5419614521','İstanbul/Kocaeli','berkay.baba@gmail.com',2500,'2022-04-24'),(4,'Hüseyin Çalışkan','5419614522','İstanbul/Kocaeli/Ankara	','huseyin.clskn@ntr.com',1999,'2022-04-24'),(5,'Murtaza Oför','5419614523','İstanbul/Kocaeli/Ankara	','murtaza.ofr@org.com',3482,'2022-04-24'),(6,'Mehmet ali','5419614524','Aydın','mali@inonu.eedu.tr',2750,'2016-05-01'),(7,'Görkem Kılıçaslan','5352147896','Edirne','halit.kilicaslan@trnakliye.com',2250,'2022-05-09'),(8,'Fuat Terkin','5428957212','Kırklareli/Vize','fuat.terkin@trnakliye.com',1950,'20122-05-19'),(9,'Mehmet Çalık','5387489826','Adıyaman','mehmet.calik@trnakliye.com',2450,'20122-05-19'),(11,'hasan inrek','5412223345','Çanakkale','hasinrek@gmail.com',1475,'2022-05-26');
/*!40000 ALTER TABLE `a_soforler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_username` varchar(45) NOT NULL,
  `a_password` varchar(45) NOT NULL,
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `id_UNIQUE` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'harun','123'),(2,'harun2','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankalar`
--

DROP TABLE IF EXISTS `bankalar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankalar` (
  `banka_id` int NOT NULL AUTO_INCREMENT,
  `banka_adi` varchar(100) NOT NULL,
  `banka_sube` varchar(20) NOT NULL,
  `banka_hesapno` varchar(45) NOT NULL,
  `banka_iban` varchar(70) NOT NULL,
  PRIMARY KEY (`banka_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankalar`
--

LOCK TABLES `bankalar` WRITE;
/*!40000 ALTER TABLE `bankalar` DISABLE KEYS */;
INSERT INTO `bankalar` VALUES (1,'GARANTİ BANKASI','2234','12456','TR65 0011 1000 0000 0048 4688 80'),(2,'TC. İŞBANKASI','1377','0042967','TR31 0006 4000 0011 3770 0429 67');
/*!40000 ALTER TABLE `bankalar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musteriler`
--

DROP TABLE IF EXISTS `musteriler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musteriler` (
  `musteri_id` int NOT NULL AUTO_INCREMENT,
  `musteri_adsoyad` varchar(80) NOT NULL,
  `musteri_telefon` varchar(45) NOT NULL,
  `musteri_email` varchar(45) NOT NULL,
  `musteri_adres` longtext NOT NULL,
  `musteri_sifre` varchar(7) NOT NULL,
  `musteri_tarih` date DEFAULT NULL,
  PRIMARY KEY (`musteri_id`),
  UNIQUE KEY `m_id_UNIQUE` (`musteri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musteriler`
--

LOCK TABLES `musteriler` WRITE;
/*!40000 ALTER TABLE `musteriler` DISABLE KEYS */;
INSERT INTO `musteriler` VALUES (1,'deep sys','05455643623','deep.sykosus@gmail.com','Edremit / VAN','123',NULL),(2,'Harun Kavitaş','5353555555','kvts.harun@gmail.com','battalgazi / MALATYA','123',NULL),(4,'asd','5651228789','asd@asd.com','asd asd','asd','2022-05-11');
/*!40000 ALTER TABLE `musteriler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sehirler`
--

DROP TABLE IF EXISTS `sehirler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sehirler` (
  `sehir_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Plaka Numarası',
  `sehir_adi` tinytext NOT NULL,
  PRIMARY KEY (`sehir_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sehirler`
--

LOCK TABLES `sehirler` WRITE;
/*!40000 ALTER TABLE `sehirler` DISABLE KEYS */;
INSERT INTO `sehirler` VALUES (1,'Adana'),(2,'Adıyaman'),(3,'Afyonkarahisar'),(4,'Ağrı'),(68,'Aksaray'),(5,'Amasya'),(6,'Ankara'),(7,'Antalya'),(75,'Ardahan'),(8,'Artvin'),(9,'Aydın'),(10,'Balıkesir'),(74,'Bartın'),(72,'Batman'),(69,'Bayburt'),(11,'Bilecik'),(12,'Bingöl'),(14,'Bolu'),(15,'Burdur'),(13,'Bitlis'),(16,'Bursa'),(17,'Çanakkale'),(18,'Çankırı'),(19,'Çorum'),(20,'Denizli'),(21,'Diyarbakır'),(81,'Düzce'),(22,'Edirne'),(23,'Elazığ'),(24,'Erzincan'),(25,'Erzurum'),(26,'Eskişehir'),(27,'Gaziantep'),(28,'Giresun'),(44,'Malatya'),(67,'Zonguldak'),(66,'Yozgat'),(77,'Yalova'),(65,'Van'),(64,'Uşak'),(62,'Tunceli'),(61,'Trabzon'),(60,'Tokat'),(59,'Tekirdağ'),(73,'Şırnak'),(63,'Şanlıurfa'),(58,'Sivas'),(57,'Sinop'),(56,'Siirt'),(55,'Samsun'),(54,'Sakarya'),(53,'Rize'),(80,'Osmaniye'),(52,'Ordu'),(51,'Niğde'),(50,'Nevşehir'),(49,'Muş'),(48,'Muğla'),(47,'Mardin'),(45,'Manisa'),(29,'Gümüşhane'),(30,'Hakkari'),(31,'Hatay'),(76,'Iğdır'),(32,'Isparta'),(33,'İçel'),(34,'İstanbul'),(35,'İzmir'),(46,'Kahramanmaraş'),(78,'Karabük'),(70,'Karaman'),(36,'Kars'),(37,'Kastamonu'),(38,'Kayseri'),(71,'Kırıkkale'),(39,'Kırklareli'),(40,'Kırşehir'),(79,'Kilis'),(41,'Kocaeli'),(42,'Konya'),(43,'Kütahya');
/*!40000 ALTER TABLE `sehirler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_mesaj`
--

DROP TABLE IF EXISTS `u_mesaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_mesaj` (
  `mesaj_id` int NOT NULL AUTO_INCREMENT,
  `musteri_id` int NOT NULL,
  `mesaj_baslik` varchar(45) NOT NULL,
  `mesaj_icerik` text NOT NULL,
  `tarih` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mesaj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_mesaj`
--

LOCK TABLES `u_mesaj` WRITE;
/*!40000 ALTER TABLE `u_mesaj` DISABLE KEYS */;
INSERT INTO `u_mesaj` VALUES (1,0,'','','2022-05-10 16:25:16'),(2,0,'','','2022-05-10 16:29:44'),(3,1,'','','2022-05-10 16:30:02');
/*!40000 ALTER TABLE `u_mesaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_nakliyeistek`
--

DROP TABLE IF EXISTS `u_nakliyeistek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_nakliyeistek` (
  `nakliyeistek_id` int NOT NULL AUTO_INCREMENT,
  `musteri_id` int NOT NULL,
  `nakliyeistek_nerden` varchar(45) NOT NULL,
  `nakliyeistek_nereye` varchar(45) NOT NULL,
  `nakliyeistek_tarih` date NOT NULL,
  PRIMARY KEY (`nakliyeistek_id`),
  KEY `musteri_id` (`musteri_id`),
  CONSTRAINT `u_nakliyeistek_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteriler` (`musteri_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_nakliyeistek`
--

LOCK TABLES `u_nakliyeistek` WRITE;
/*!40000 ALTER TABLE `u_nakliyeistek` DISABLE KEYS */;
INSERT INTO `u_nakliyeistek` VALUES (1,2,'Malatya','Konya','2022-05-12'),(2,4,'Aksaray','Ankara','2022-05-12');
/*!40000 ALTER TABLE `u_nakliyeistek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_odeme`
--

DROP TABLE IF EXISTS `u_odeme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_odeme` (
  `uodeme_id` int NOT NULL AUTO_INCREMENT,
  `musteri_id` int NOT NULL,
  `uodeme_ad` varchar(45) NOT NULL,
  `uodeme_tarih` varchar(45) NOT NULL,
  `uodeme_tutar` int NOT NULL,
  `uodeme_banka` int NOT NULL,
  `uodeme_islemno` int NOT NULL,
  PRIMARY KEY (`uodeme_id`),
  KEY `musteri_id` (`musteri_id`),
  KEY `uodeme_banka` (`uodeme_banka`),
  CONSTRAINT `u_odeme_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteriler` (`musteri_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_odeme`
--

LOCK TABLES `u_odeme` WRITE;
/*!40000 ALTER TABLE `u_odeme` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_odeme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-07 15:11:00
