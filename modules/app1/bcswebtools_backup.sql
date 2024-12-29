/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.6.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: bcswebtools
-- ------------------------------------------------------
-- Server version	11.6.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bdate` date NOT NULL,
  `btot` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES
(1,'2018-08-01',597.48),
(2,'2018-08-02',2033.48),
(3,'2018-08-03',0),
(4,'2018-12-17',231),
(5,'2018-12-24',490),
(6,'2019-01-21',332.5),
(7,'2019-02-03',35),
(8,'2019-02-03',540.2950000000001),
(9,'2019-02-03',0),
(10,'2019-02-03',0),
(11,'2019-02-12',0),
(12,'2019-02-12',35),
(13,'2019-02-15',0),
(14,'2019-02-15',0);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billdet`
--

DROP TABLE IF EXISTS `billdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billdet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invno` int(11) NOT NULL,
  `cnt` double NOT NULL,
  `svc` varchar(150) NOT NULL,
  `cost` double NOT NULL,
  `ltot` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billdet`
--

LOCK TABLES `billdet` WRITE;
/*!40000 ALTER TABLE `billdet` DISABLE KEYS */;
INSERT INTO `billdet` VALUES
(1,1,4,'FORTRAN',65.57,262.28),
(2,1,3,'COBOL',75.05,225.14999999999998),
(3,1,1,'Delphi',75,75),
(4,1,1,'RPG',35.05,35.05),
(12,2,2,'COBOL',75.05,150.1),
(14,2,1,'FORTRAN',65.57,65.57),
(26,2,1.5,'Functional Specification',35,52.5),
(29,2,1,'Delphi',75,75),
(31,2,30.5,'Assembly Language Programming',55.42,1690.31),
(33,4,1,'Document Web Site',35,35),
(34,4,1.45,'Document Web Site',35,50.75),
(35,4,2.15,'Access Web Site',35,75.25),
(36,4,1,'Angular Programming',35,35),
(37,4,1,'Python Programming',35,35),
(41,5,3.25,'Angular Programming',35,113.75),
(44,5,3.5,'Analysis',35,122.5),
(45,5,3.5,'Functional Specification',35,122.5),
(46,5,3.75,'Document Web Site',35,131.25),
(48,6,2,'Functional Specification',35,70),
(49,6,2.5,'Access Web Site',35,87.5),
(50,6,2.75,'AWS Front End',35,96.25),
(52,6,2.25,'AWS Back End',35,78.75),
(53,7,1,'Dummy Service',35,35),
(63,12,1,'Dummy Service',35,35),
(64,14,1,'Dummy Service',35,35),
(66,8,4,'AWS Back End',35,140),
(67,8,4,'Analysis',35,140),
(69,8,3.5,'c++ Programming',74.37,260.295);
/*!40000 ALTER TABLE `billdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `current_dept_emp`
--

DROP TABLE IF EXISTS `current_dept_emp`;
/*!50001 DROP VIEW IF EXISTS `current_dept_emp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `current_dept_emp` AS SELECT
 1 AS `emp_no`,
  1 AS `dept_no`,
  1 AS `from_date`,
  1 AS `to_date` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cust`
--

DROP TABLE IF EXISTS `cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust` varchar(125) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(125) NOT NULL,
  `addr` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust`
--

LOCK TABLES `cust` WRITE;
/*!40000 ALTER TABLE `cust` DISABLE KEYS */;
INSERT INTO `cust` VALUES
(1,'Bill B','555 4455','222@rtf.com','Dis'),
(2,'Educational and Psychological Consultants. LLC','573 446 1614','russnewton@personalstyles.org','1001 Cherry Street, Suite 102\nColumbia Missouri 65201-7931'),
(7,'Ralph Cramden','333','1402 Boo Boo court','rx@rr.com');
/*!40000 ALTER TABLE `cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_emp`
--

DROP TABLE IF EXISTS `dept_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_emp`
--

LOCK TABLES `dept_emp` WRITE;
/*!40000 ALTER TABLE `dept_emp` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `dept_emp_latest_date`
--

DROP TABLE IF EXISTS `dept_emp_latest_date`;
/*!50001 DROP VIEW IF EXISTS `dept_emp_latest_date`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dept_emp_latest_date` AS SELECT
 1 AS `emp_no`,
  1 AS `from_date`,
  1 AS `to_date` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dept_manager`
--

DROP TABLE IF EXISTS `dept_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_manager`
--

LOCK TABLES `dept_manager` WRITE;
/*!40000 ALTER TABLE `dept_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dge`
--

DROP TABLE IF EXISTS `dge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dge` (
  `id` int(11) NOT NULL,
  `de` varchar(75) NOT NULL,
  `dn` varchar(75) NOT NULL,
  `le` int(11) NOT NULL,
  `ro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dge`
--

LOCK TABLES `dge` WRITE;
/*!40000 ALTER TABLE `dge` DISABLE KEYS */;
INSERT INTO `dge` VALUES
(1,'id','Rec No',50,1);
/*!40000 ALTER TABLE `dge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmag`
--

DROP TABLE IF EXISTS `dmag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dmag` (
  `id` int(11) NOT NULL,
  `magname` varchar(150) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmag`
--

LOCK TABLES `dmag` WRITE;
/*!40000 ALTER TABLE `dmag` DISABLE KEYS */;
INSERT INTO `dmag` VALUES
(1,'AA Grapevine','<A title=\"AA Grapevine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301545018_aa_grapevine\"  target=\"_blank\">AA Grapevine</A><br>'),
(2,'AARP - The Magazine','<A title=\"AARP - The Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/284992018_aarp\"  target=\"_blank\">AARP - The Magazine</A><br>'),
(3,'Acres U.S.A','<A title=\"Acres U.S.A (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/441422018_acres_usa\"  target=\"_blank\">Acres U.S.A</A><br>'),
(4,'Adventure Cyclist','<A title=\"Adventure Cyclist (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/425706018_adventure_cyclist\"  target=\"_blank\">Adventure Cyclist</A><br>'),
(5,'The Advocate','<A title=\"The Advocate (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301543018_the_advocate\"  target=\"_blank\">The Advocate</A><br>'),
(6,'Allrecipes','<A title=\"Allrecipes (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/614220018_allrecipes\"  target=\"_blank\">Allrecipes</A><br>'),
(7,'America','<A title=\"America (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/284989018_america\"  target=\"_blank\">America</A><br>'),
(8,'America\'s Civil War','<A title=\"America\'s Civil War (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285579018_americas_civil_war\"  target=\"_blank\">America\'s Civil War</A><br>'),
(9,'American Cheerleader','<A title=\"American Cheerleader (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/427806018_american_cheerleader\"  target=\"_blank\">American Cheerleader</A><br>'),
(10,'American Craft','<A title=\"American Craft (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/284995018_american_craft\"  target=\"_blank\">American Craft</A><br>'),
(11,'American Girl','<A title=\"American Girl (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/284996018_american_girl\"  target=\"_blank\">American Girl</A><br>'),
(12,'American History','<A title=\"American History (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/284997018_american_history\"  target=\"_blank\">American History</A><br>'),
(13,'American Libraries','<A title=\"American Libraries (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/305485018_american_libraries\"  target=\"_blank\">American Libraries</A><br>'),
(14,'American Patchwork & Quilting','<A title=\"American Patchwork &amp; Quilting (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/484353018_american_patchwork_amp_quilting\" target=\"_parent\"  target=\"_blank\">American Patchwork &amp; Quilting</A><br>'),
(15,'American Philatelist','<A title=\"American Philatelist (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285596018_american_philatelist\"  target=\"_blank\">American Philatelist</A><br>'),
(16,'The American Prospect','<A title=\"The American Prospect (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/464486018_the_american_prospect\"  target=\"_blank\">The American Prospect</A><br>'),
(17,'American Rifleman','<A title=\"American Rifleman (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/284999018_american_rifleman\"  target=\"_blank\">American Rifleman</A><br>'),
(18,'American Spirit','<A title=\"American Spirit (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285594018_american_spirit\"  target=\"_blank\">American Spirit</A><br>'),
(19,'AP - Alternative Press','<A title=\"AP - Alternative Press (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/409971018_ap\"  target=\"_blank\">AP - Alternative Press</A><br>'),
(20,'Archaeology','<A title=\"Archaeology (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285590018_archaeology\"  target=\"_blank\">Archaeology</A><br>'),
(21,'Architectural Digest','<A title=\"Architectural Digest (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285591018_architectural_digest\"  target=\"_blank\">Architectural Digest</A><br>'),
(22,'Art Calendar','<A title=\"Art Calendar (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285592018_art_calendar\"  target=\"_blank\">Art Calendar</A><br>'),
(23,'Art News','<A title=\"Art News (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285593018_art_news\"  target=\"_blank\">Art News</A><br>'),
(24,'Arts & Activities','<A title=\"Arts &amp; Activities (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/409230018_arts_amp_activities\"  target=\"_blank\">Arts &amp; Activities</A><br>'),
(25,'Ask - Arts & Sciences for Kids','<A title=\"Ask - Arts &amp; Sciences for Kids (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285001018_ask\" target=\"_parent\"  target=\"_blank\">Ask - Arts &amp; Sciences for Kids</A><br>'),
(26,'Astronomy','<A title=\"Astronomy (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/318741018_astronomy\"  target=\"_blank\">Astronomy</A><br>'),
(27,'The Atlantic','<A title=\"The Atlantic (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287684018_the_atlantic\"  target=\"_blank\">The Atlantic</A><br>'),
(28,'Attention!','<A title=\"Attention! (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288467018_attention\"  target=\"_blank\">Attention!</A><br>'),
(29,'Autism Asperger\'s Digest','<A title=\"Autism Asperger\'s Digest (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/428634018_autism_aspergers_digest\"  target=\"_blank\">Autism Asperger\'s Digest</A><br>'),
(30,'Babybug','<A title=\"Babybug (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288469018_babybug\"  target=\"_blank\">Babybug</A><br>'),
(31,'Backpacker','<A title=\"Backpacker (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301544018_backpacker\"  target=\"_blank\">Backpacker</A><br>'),
(32,'Backwoods Home Magazine','<A title=\"Backwoods Home Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/320025018_backwoods_home_magazine\"  target=\"_blank\">Backwoods Home Magazine</A><br>'),
(33,'Beadwork','<A title=\"Beadwork (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/407622018_beadwork\"  target=\"_blank\">Beadwork</A><br>'),
(34,'Bee Culture','<A title=\"Bee Culture (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/614519018_bee_culture\"  target=\"_blank\">Bee Culture</A><br>'),
(35,'Better Homes and Gardens','<A title=\"Better Homes and Gardens (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287810018_better_homes_and_gardens\"  target=\"_blank\">Better Homes and Gardens</A><br>'),
(36,'Better Investing','<A title=\"Better Investing (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301529018_better_investing\"  target=\"_blank\">Better Investing</A><br>'),
(37,'Bicycling','<A title=\"Bicycling (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287812018_bicycling\"  target=\"_blank\">Bicycling</A><br>'),
(38,'Birds & Blooms','<A title=\"Birds &amp; Blooms (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/316108018_birds_amp_blooms\"  target=\"_blank\">Birds &amp; Blooms</A><br>'),
(39,'Bitch','<A title=\"Bitch (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/428633018_bitch\"  target=\"_blank\">Bitch</A><br>'),
(40,'Black Belt','<A title=\"Black Belt (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287885018_black_belt\"  target=\"_blank\">Black Belt</A><br>'),
(41,'Black Enterprise','<A title=\"Black Enterprise (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287842018_black_enterprise\"  target=\"_blank\">Black Enterprise</A><br>'),
(42,'Bloomberg Businessweek','<A title=\"Bloomberg Businessweek (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288474018_bloomberg_businessweek\"  target=\"_blank\">Bloomberg Businessweek</A><br>'),
(43,'BMX Plus!','<A title=\"BMX Plus! (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/441423018_bmx_plus\"  target=\"_blank\">BMX Plus!</A><br>'),
(44,'Boating','<A title=\"Boating (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287847018_boating\"  target=\"_blank\">Boating</A><br>'),
(45,'Bon Appetit','<A title=\"Bon Appetit (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287886018_bon_appetit\"  target=\"_blank\">Bon Appetit</A><br>'),
(46,'Bookmarks','<A title=\"Bookmarks (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/305486018_bookmarks\"  target=\"_blank\">Bookmarks</A><br>'),
(47,'Bottom Line - Personal','<A title=\"Bottom Line - Personal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/606045018_bottom_line\"  target=\"_blank\">Bottom Line - Personal</A><br>'),
(48,'Boulevard','<A title=\"Boulevard (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/479515018_boulevard\"  target=\"_blank\">Boulevard</A><br>'),
(49,'Boys\' Life','<A title=\"Boys\' Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287718018_boys_life\"  target=\"_blank\">Boys\' Life</A><br>'),
(50,'Boys\' Quest','<A title=\"Boys\' Quest (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288471018_boys_quest\"  target=\"_blank\">Boys\' Quest</A><br>'),
(51,'Brides','<A title=\"Brides (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/287887018_brides\"  target=\"_blank\">Brides</A><br>'),
(52,'Car and Driver','<A title=\"Car and Driver (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288479018_car_and_driver\"  target=\"_blank\">Car and Driver</A><br>'),
(53,'Cat Fancy','<A title=\"Cat Fancy (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288480018_cat_fancy\"  target=\"_blank\">Cat Fancy</A><br>'),
(54,'Chess Life','<A title=\"Chess Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289031018_chess_life\"  target=\"_blank\">Chess Life</A><br>'),
(55,'ChickaDEE','<A title=\"ChickaDEE (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288481018_chickadee\"  target=\"_blank\">ChickaDEE</A><br>'),
(56,'Chirp','<A title=\"Chirp (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/288489018_chirp\"  target=\"_blank\">Chirp</A><br>'),
(57,'The Christian Century','<A title=\"The Christian Century (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289030018_the_christian_century\"  target=\"_blank\">The Christian Century</A><br>'),
(58,'Christian Science Monitor','<A title=\"Christian Science Monitor (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/280416018_christian_science_monitor\"  target=\"_blank\">Christian Science Monitor</A><br>'),
(59,'Christianity Today','<A title=\"Christianity Today (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289032018_christianity_today\"  target=\"_blank\">Christianity Today</A><br>'),
(60,'Cicada','<A title=\"Cicada (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289034018_cicada\"  target=\"_blank\">Cicada</A><br>'),
(61,'Click','<A title=\"Click (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301533018_click\"  target=\"_blank\">Click</A><br>'),
(62,'Climbing','<A title=\"Climbing (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/371753018_climbing\"  target=\"_blank\">Climbing</A><br>'),
(63,'Cloth, Paper, Scissors','<A title=\"Cloth, Paper, Scissors (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/337314018_cloth,_paper,_scissors\"  target=\"_blank\">Cloth, Paper, Scissors</A><br>'),
(64,'Cobblestone','<A title=\"Cobblestone (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289038018_cobblestone\"  target=\"_blank\">Cobblestone</A><br>'),
(65,'Columbia Business Times','<A title=\"Columbia Business Times (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/280418018_columbia_business_times\"  target=\"_blank\">Columbia Business Times</A><br>'),
(66,'Commonweal','<A title=\"Commonweal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/580123018_commonweal\"  target=\"_blank\">Commonweal</A><br>'),
(67,'COMO Living','<A title=\"COMO Living (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301537018_como_living\"  target=\"_blank\">COMO Living</A><br>'),
(68,'Consumer Reports','<A title=\"Consumer Reports (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289036018_consumer_reports\"  target=\"_blank\">Consumer Reports</A><br>'),
(69,'Consumer Reports on Health','<A title=\"Consumer Reports on Health (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/582867018_consumer_reports_on_health\"  target=\"_blank\">Consumer Reports on Health</A><br>'),
(70,'Cook\'s Country','<A title=\"Cook\'s Country (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/517611018_cooks_country\"  target=\"_blank\">Cook\'s Country</A><br>'),
(71,'Cook\'s Illustrated','<A title=\"Cook\'s Illustrated (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/425708018_cooks_illustrated\"  target=\"_blank\">Cook\'s Illustrated</A><br>'),
(72,'Cooking Light','<A title=\"Cooking Light (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289039018_cooking_light\"  target=\"_blank\">Cooking Light</A><br>'),
(73,'Cosmopolitan','<A title=\"Cosmopolitan (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289040018_cosmopolitan\"  target=\"_blank\">Cosmopolitan</A><br>'),
(74,'Country','<A title=\"Country (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/316109018_country\"  target=\"_blank\">Country</A><br>'),
(75,'Country Living','<A title=\"Country Living (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289046018_country_living\"  target=\"_blank\">Country Living</A><br>'),
(76,'Country Woman','<A title=\"Country Woman (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/314615018_country_woman\"  target=\"_blank\">Country Woman</A><br>'),
(77,'Craft Ideas','<A title=\"Craft Ideas (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289047018_craft_ideas\"  target=\"_blank\">Craft Ideas</A><br>'),
(78,'Creative Knitting','<A title=\"Creative Knitting (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/428635018_creative_knitting\"  target=\"_blank\">Creative Knitting</A><br>'),
(79,'Cricket','<A title=\"Cricket (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289050018_cricket\"  target=\"_blank\">Cricket</A><br>'),
(80,'Crochet!','<A title=\"Crochet! (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/459078018_crochet\"  target=\"_blank\">Crochet!</A><br>'),
(81,'Cycle World','<A title=\"Cycle World (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289051018_cycle_world\"  target=\"_blank\">Cycle World</A><br>'),
(82,'Diabetes Forecast','<A title=\"Diabetes Forecast (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/337401018_diabetes_forecast\"  target=\"_blank\">Diabetes Forecast</A><br>'),
(83,'Dig','<A title=\"Dig (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289697018_dig\"  target=\"_blank\">Dig</A><br>'),
(84,'Dirt Bike','<A title=\"Dirt Bike (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289698018_dirt_bike\"  target=\"_blank\">Dirt Bike</A><br>'),
(85,'Discover','<A title=\"Discover (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289699018_discover\"  target=\"_blank\">Discover</A><br>'),
(86,'Discovery Girls','<A title=\"Discovery Girls (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289700018_discovery_girls\"  target=\"_blank\">Discovery Girls</A><br>'),
(87,'Dogster','<A title=\"Dogster (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289714018_dogster\"  target=\"_blank\">Dogster</A><br>'),
(88,'Downbeat','<A title=\"Downbeat (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289715018_downbeat\"  target=\"_blank\">Downbeat</A><br>'),
(89,'Dwell','<A title=\"Dwell (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/580120018_dwell\"  target=\"_blank\">Dwell</A><br>'),
(90,'Early American Life','<A title=\"Early American Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289716018_early_american_life\"  target=\"_blank\">Early American Life</A><br>'),
(91,'EatingWell','<A title=\"EatingWell (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/550371018_eatingwell\"  target=\"_blank\">EatingWell</A><br>'),
(92,'Ebony','<A title=\"Ebony (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289718018_ebony\"  target=\"_blank\">Ebony</A><br>'),
(93,'The Economist','<A title=\"The Economist (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289719018_the_economist\"  target=\"_blank\">The Economist</A><br>'),
(94,'Entertainment Weekly','<A title=\"Entertainment Weekly (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/305491018_entertainment_weekly\"  target=\"_blank\">Entertainment Weekly</A><br>'),
(95,'Entrepreneur','<A title=\"Entrepreneur (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289720018_entrepreneur\"  target=\"_blank\">Entrepreneur</A><br>'),
(96,'ESPN, the Magazine','<A title=\"ESPN, the Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289721018_espn,_the_magazine\"  target=\"_blank\">ESPN, the Magazine</A><br>'),
(97,'Esquire','<A title=\"Esquire (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303714018_esquire\"  target=\"_blank\">Esquire</A><br>'),
(98,'Essence','<A title=\"Essence (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289787018_essence\"  target=\"_blank\">Essence</A><br>'),
(99,'Every Day With Rachael Ray','<A title=\"Every Day With Rachael Ray (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/398371018_every_day_with_rachael_ray\"  target=\"_blank\">Every Day With Rachael Ray</A><br>'),
(100,'Extended Notes','<A title=\"Extended Notes (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/526523018_extended_notes\"  target=\"_blank\">Extended Notes</A><br>'),
(101,'Faces - People, Places, and Cultures','<A title=\"Faces - People, Places, and Cultures (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289790018_faces\" target=\"_parent\"  target=\"_blank\">Faces - People, Places, and Cultures</A><br>'),
(102,'Family Circle','<A title=\"Family Circle (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289805018_family_circle\"  target=\"_blank\">Family Circle</A><br>'),
(103,'Family Fun','<A title=\"Family Fun (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289806018_family_fun\"  target=\"_blank\">Family Fun</A><br>'),
(104,'Family Handyman','<A title=\"Family Handyman (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/289807018_family_handyman\"  target=\"_blank\">Family Handyman</A><br>'),
(105,'Farm Journal','<A title=\"Farm Journal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/291704018_farm_journal\"  target=\"_blank\">Farm Journal</A><br>'),
(106,'Field & Stream','<A title=\"Field &amp; Stream (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/291712018_field_amp_stream\"  target=\"_blank\">Field &amp; Stream</A><br>'),
(107,'Fine Homebuilding','<A title=\"Fine Homebuilding (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/291727018_fine_homebuilding\"  target=\"_blank\">Fine Homebuilding</A><br>'),
(108,'Fine Woodworking','<A title=\"Fine Woodworking (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/484352018_fine_woodworking\"  target=\"_blank\">Fine Woodworking</A><br>'),
(109,'Food & Wine','<A title=\"Food &amp; Wine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/291729018_food_amp_wine\"  target=\"_blank\">Food &amp; Wine</A><br>'),
(110,'Food Network Magazine','<A title=\"Food Network Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/470605018_food_network_magazine\"  target=\"_blank\">Food Network Magazine</A><br>'),
(111,'Forbes','<A title=\"Forbes (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/291730018_forbes\"  target=\"_blank\">Forbes</A><br>'),
(112,'Foreign Affairs','<A title=\"Foreign Affairs (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/520464018_foreign_affairs\"  target=\"_blank\">Foreign Affairs</A><br>'),
(113,'Foreign Policy','<A title=\"Foreign Policy (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/428632018_foreign_policy\"  target=\"_blank\">Foreign Policy</A><br>'),
(114,'Fortune','<A title=\"Fortune (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/291734018_fortune\"  target=\"_blank\">Fortune</A><br>'),
(115,'The Foxfire Magazine','<A title=\"The Foxfire Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/346054018_the_foxfire_magazine\"  target=\"_blank\">The Foxfire Magazine</A><br>'),
(116,'Free Inquiry','<A title=\"Free Inquiry (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/291735018_free_inquiry\"  target=\"_blank\">Free Inquiry</A><br>'),
(117,'Fun to Learn Friends','<A title=\"Fun to Learn Friends (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/441421018_fun_to_learn_friends\"  target=\"_blank\">Fun to Learn Friends</A><br>'),
(118,'Garden Gate','<A title=\"Garden Gate (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/427805018_garden_gate\"  target=\"_blank\">Garden Gate</A><br>'),
(119,'Gateway','<A title=\"Gateway (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292604018_gateway\"  target=\"_blank\">Gateway</A><br>'),
(120,'Gateway Heritage','<A title=\"Gateway Heritage (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292605018_gateway_heritage\"  target=\"_blank\">Gateway Heritage</A><br>'),
(121,'GL - Girls\' Life Magazine','<A title=\"GL - Girls\' Life Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/310876018_gl\"  target=\"_blank\">GL - Girls\' Life Magazine</A><br>'),
(122,'Glamour','<A title=\"Glamour (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292608018_glamour\"  target=\"_blank\">Glamour</A><br>'),
(123,'Golf Digest','<A title=\"Golf Digest (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303720018_golf_digest\"  target=\"_blank\">Golf Digest</A><br>'),
(124,'Good Housekeeping','<A title=\"Good Housekeeping (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292607018_good_housekeeping\"  target=\"_blank\">Good Housekeeping</A><br>'),
(125,'GQ - Gentlemen\'s Quarterly','<A title=\"GQ - Gentlemen\'s Quarterly (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292609018_gq\"  target=\"_blank\">GQ - Gentlemen\'s Quarterly</A><br>'),
(126,'Greene Magazine','<A title=\"Greene Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/542729018_greene_magazine\"  target=\"_blank\">Greene Magazine</A><br>'),
(127,'GreenPrints','<A title=\"GreenPrints (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/542727018_greenprints\"  target=\"_blank\">GreenPrints</A><br>'),
(128,'GSCM Reporter','<A title=\"GSCM Reporter (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/305494018_gscm_reporter\"  target=\"_blank\">GSCM Reporter</A><br>'),
(129,'Guideposts','<A title=\"Guideposts (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/314610018_guideposts\"  target=\"_blank\">Guideposts</A><br>'),
(130,'Guns & Ammo','<A title=\"Guns &amp; Ammo (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/318737018_guns_amp_ammo\"  target=\"_blank\">Guns &amp; Ammo</A><br>'),
(131,'Harper\'s Bazaar','<A title=\"Harper\'s Bazaar (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292611018_harpers_bazaar\"  target=\"_blank\">Harper\'s Bazaar</A><br>'),
(132,'Harper\'s Magazine','<A title=\"Harper\'s Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292610018_harpers_magazine\"  target=\"_blank\">Harper\'s Magazine</A><br>'),
(133,'Hemmings Classic Car','<A title=\"Hemmings Classic Car (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/393832018_hemmings_classic_car\"  target=\"_blank\">Hemmings Classic Car</A><br>'),
(134,'Hemmings Motor News','<A title=\"Hemmings Motor News (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/398374018_hemmings_motor_news\"  target=\"_blank\">Hemmings Motor News</A><br>'),
(135,'HGTV Magazine','<A title=\"HGTV Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/602143018_hgtv_magazine\"  target=\"_blank\">HGTV Magazine</A><br>'),
(136,'Highlights for Children','<A title=\"Highlights for Children (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293281018_highlights_for_children\"  target=\"_blank\">Highlights for Children</A><br>'),
(137,'Highlights High Five','<A title=\"Highlights High Five (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/353905018_highlights_high_five\"  target=\"_blank\">Highlights High Five</A><br>'),
(138,'The Hightower Lowdown','<A title=\"The Hightower Lowdown (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534079018_the_hightower_lowdown\"  target=\"_blank\">The Hightower Lowdown</A><br>'),
(139,'Hobby Farms','<A title=\"Hobby Farms (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/550370018_hobby_farms\"  target=\"_blank\">Hobby Farms</A><br>'),
(140,'Home Power','<A title=\"Home Power (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/337406018_home_power\"  target=\"_blank\">Home Power</A><br>'),
(141,'Homeschooling Today','<A title=\"Homeschooling Today (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/614819018_homeschooling_today\"  target=\"_blank\">Homeschooling Today</A><br>'),
(142,'Hopscotch for Girls','<A title=\"Hopscotch for Girls (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293285018_hopscotch_for_girls\"  target=\"_blank\">Hopscotch for Girls</A><br>'),
(143,'Horse & Rider','<A title=\"Horse &amp; Rider (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292614018_horse_amp_rider\"  target=\"_blank\">Horse &amp; Rider</A><br>'),
(144,'Horticulture','<A title=\"Horticulture (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/292616018_horticulture\"  target=\"_blank\">Horticulture</A><br>'),
(145,'Hot Rod','<A title=\"Hot Rod (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293288018_hot_rod\"  target=\"_blank\">Hot Rod</A><br>'),
(146,'House Beautiful','<A title=\"House Beautiful (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293289018_house_beautiful\"  target=\"_blank\">House Beautiful</A><br>'),
(147,'HOW','<A title=\"HOW (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/457933018_how\"  target=\"_blank\">HOW</A><br>'),
(148,'Humpty Dumpty\'s Magazine','<A title=\"Humpty Dumpty\'s Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293290018_humpty_dumptys_magazine\"  target=\"_blank\">Humpty Dumpty\'s Magazine</A><br>'),
(149,'Hype Hair','<A title=\"Hype Hair (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/337404018_hype_hair\"  target=\"_blank\">Hype Hair</A><br>'),
(150,'In Style','<A title=\"In Style (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/314617018_in_style\"  target=\"_blank\">In Style</A><br>'),
(151,'Inc - The Magazine for Growing Companies','<A title=\"Inc - The Magazine for Growing Companies (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293291018_inc\" target=\"_parent\"  target=\"_blank\">Inc - The Magazine for Growing Companies</A><br>'),
(152,'The Incredible Hulk','<A title=\"The Incredible Hulk (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/316117018_the_incredible_hulk\"  target=\"_blank\">The Incredible Hulk</A><br>'),
(153,'Inside Columbia','<A title=\"Inside Columbia (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295354018_inside_columbia\"  target=\"_blank\">Inside Columbia</A><br>'),
(154,'International Living','<A title=\"International Living (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/626065018_international_living\"  target=\"_blank\">International Living</A><br>'),
(155,'Interview','<A title=\"Interview (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/652266018_interview\"  target=\"_blank\">Interview</A><br>'),
(156,'Islamic Horizons','<A title=\"Islamic Horizons (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303713018_islamic_horizons\"  target=\"_blank\">Islamic Horizons</A><br>'),
(157,'J-14','<A title=\"J-14 (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/313249018_j-14\"  target=\"_blank\">J-14</A><br>'),
(158,'Jack and Jill','<A title=\"Jack and Jill (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293294018_jack_and_jill\"  target=\"_blank\">Jack and Jill</A><br>'),
(159,'JazzTimes','<A title=\"JazzTimes (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293296018_jazztimes\"  target=\"_blank\">JazzTimes</A><br>'),
(160,'Jefferson City Magazine','<A title=\"Jefferson City Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/371756018_jefferson_city_magazine\"  target=\"_blank\">Jefferson City Magazine</A><br>'),
(161,'Juxtapoz - Art + Culture','<A title=\"Juxtapoz - Art + Culture (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/677237018_juxtapoz\"  target=\"_blank\">Juxtapoz - Art + Culture</A><br>'),
(162,'Kiki','<A title=\"Kiki (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/606046018_kiki\"  target=\"_blank\">Kiki</A><br>'),
(163,'Kiplinger\'s Personal Finance','<A title=\"Kiplinger\'s Personal Finance (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/520466018_kiplingers_personal_finance\" target=\"_parent\" testid=\"bib_link\">Kiplinger\'s  target=\"_blank\">Kiplinger\'s Personal Finance</A><br>'),
(164,'Knitting Magazine','<A title=\"Knitting Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/520467018_knitting_magazine\"  target=\"_blank\">Knitting Magazine</A><br>'),
(165,'Kovels on Antiques and Collectibles','<A title=\"Kovels on Antiques and Collectibles (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294633018_kovels_on_antiques_and_collectibles\" target=\"_parent\"  target=\"_blank\">Kovels on Antiques and Collectibles</A><br>'),
(166,'Ladybug','<A title=\"Ladybug (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293932018_ladybug\"  target=\"_blank\">Ladybug</A><br>'),
(167,'Lapham\'s Quarterly','<A title=\"Lapham\'s Quarterly (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/649127018_laphams_quarterly\"  target=\"_blank\">Lapham\'s Quarterly</A><br>'),
(168,'Latina','<A title=\"Latina (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/520465018_latina\"  target=\"_blank\">Latina</A><br>'),
(169,'Lifeline','<A title=\"Lifeline (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/345902018_lifeline\"  target=\"_blank\">Lifeline</A><br>'),
(170,'Living Without','<A title=\"Living Without (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/560002018_living_without\"  target=\"_blank\">Living Without</A><br>'),
(171,'Locus - The Magazine of the Science Fiction & Fantasy Field','<A title=\"Locus - The Magazine of the Science Fiction &amp; Fantasy Field (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293328018_locus\" target=\"_parent\"  target=\"_blank\">Locus - The Magazine of the Science Fiction &amp; Fantasy Fi'),
(172,'M','<A title=\"M (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/444783018_m\"  target=\"_blank\">M</A><br>'),
(173,'Mac Life','<A title=\"Mac Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/457934018_mac_life\"  target=\"_blank\">Mac Life</A><br>'),
(174,'Mad','<A title=\"Mad (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293961018_mad\"  target=\"_blank\">Mad</A><br>'),
(175,'The Magazine Antiques','<A title=\"The Magazine Antiques (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/285597018_the_magazine_antiques\"  target=\"_blank\">The Magazine Antiques</A><br>'),
(176,'The Mailbox - Kindergarten','<A title=\"The Mailbox - Kindergarten (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/417373018_the_mailbox\"  target=\"_blank\">The Mailbox - Kindergarten</A><br>'),
(177,'The Mailbox - Preschool','<A title=\"The Mailbox - Preschool (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293956018_the_mailbox\"  target=\"_blank\">The Mailbox - Preschool</A><br>'),
(178,'Make','<A title=\"Make (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/667859018_make\"  target=\"_blank\">Make</A><br>'),
(179,'Martha Stewart Living','<A title=\"Martha Stewart Living (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293329018_martha_stewart_living\"  target=\"_blank\">Martha Stewart Living</A><br>'),
(180,'Maximum PC','<A title=\"Maximum PC (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/580122018_maximum_pc\"  target=\"_blank\">Maximum PC</A><br>'),
(181,'Men\'s Health','<A title=\"Men\'s Health (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293299018_mens_health\"  target=\"_blank\">Men\'s Health</A><br>'),
(182,'Mental_floss','<A title=\"Mental_floss (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/488646018_mental_floss\"  target=\"_blank\">Mental_floss</A><br>'),
(183,'Midwest Living','<A title=\"Midwest Living (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293964018_midwest_living\"  target=\"_blank\">Midwest Living</A><br>'),
(184,'Midwest Traveler','<A title=\"Midwest Traveler (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/310322018_midwest_traveler\"  target=\"_blank\">Midwest Traveler</A><br>'),
(185,'Military History','<A title=\"Military History (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/340880018_military_history\"  target=\"_blank\">Military History</A><br>'),
(186,'Mindful','<A title=\"Mindful (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/654863018_mindful\"  target=\"_blank\">Mindful</A><br>'),
(187,'The Mindfulness Bell','<A title=\"The Mindfulness Bell (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/435415018_the_mindfulness_bell\"  target=\"_blank\">The Mindfulness Bell</A><br>'),
(188,'Missouri Conservationist','<A title=\"Missouri Conservationist (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303716018_missouri_conservationist\"  target=\"_blank\">Missouri Conservationist</A><br>'),
(189,'Missouri Folklore Society Journal','<A title=\"Missouri Folklore Society Journal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/308056018_missouri_folklore_society_journal\" target=\"_parent\"  target=\"_blank\">Missouri Folklore Society Journal</A><br>'),
(190,'Missouri Game & Fish','<A title=\"Missouri Game &amp; Fish (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303715018_missouri_game_amp_fish\"  target=\"_blank\">Missouri Game &amp; Fish</A><br>'),
(191,'Missouri Life','<A title=\"Missouri Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293966018_missouri_life\"  target=\"_blank\">Missouri Life</A><br>'),
(192,'Missouri Resources','<A title=\"Missouri Resources (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303734018_missouri_resources\"  target=\"_blank\">Missouri Resources</A><br>'),
(193,'Missouri Review','<A title=\"Missouri Review (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/479517018_missouri_review\"  target=\"_blank\">Missouri Review</A><br>'),
(194,'Missouri Ruralist','<A title=\"Missouri Ruralist (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/346084018_missouri_ruralist\"  target=\"_blank\">Missouri Ruralist</A><br>'),
(195,'Missouri Wildlife','<A title=\"Missouri Wildlife (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/592182018_missouri_wildlife\"  target=\"_blank\">Missouri Wildlife</A><br>'),
(196,'Mizzou - The Magazine of the MU Alumni Association','<A title=\"Mizzou - The Magazine of the MU Alumni Association (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/305484018_mizzou\" target=\"_parent\"  target=\"_blank\">Mizzou - The Magazine of the MU Alumni Association</A><br>'),
(197,'Model Railroader','<A title=\"Model Railroader (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293968018_model_railroader\"  target=\"_blank\">Model Railroader</A><br>'),
(198,'Moment','<A title=\"Moment (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294636018_moment\"  target=\"_blank\">Moment</A><br>'),
(199,'Money','<A title=\"Money (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294638018_money\"  target=\"_blank\">Money</A><br>'),
(200,'Monocle','<A title=\"Monocle (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/562448018_monocle\"  target=\"_blank\">Monocle</A><br>'),
(201,'Morningstar Fundinvestor','<A title=\"Morningstar Fundinvestor (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534770018_morningstar_fundinvestor\"  target=\"_blank\">Morningstar Fundinvestor</A><br>'),
(202,'Morningstar Stockinvestor','<A title=\"Morningstar Stockinvestor (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534771018_morningstar_stockinvestor\"  target=\"_blank\">Morningstar Stockinvestor</A><br>'),
(203,'Mother Earth News','<A title=\"Mother Earth News (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295359018_mother_earth_news\"  target=\"_blank\">Mother Earth News</A><br>'),
(204,'Mother Jones','<A title=\"Mother Jones (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294641018_mother_jones\"  target=\"_blank\">Mother Jones</A><br>'),
(205,'Motor Trend','<A title=\"Motor Trend (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294643018_motor_trend\"  target=\"_blank\">Motor Trend</A><br>'),
(206,'Ms','<A title=\"Ms (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294645018_ms\"  target=\"_blank\">Ms</A><br>'),
(207,'Muscle & Fitness','<A title=\"Muscle &amp; Fitness (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294647018_muscle_amp_fitness\"  target=\"_blank\">Muscle &amp; Fitness</A><br>'),
(208,'Muse','<A title=\"Muse (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295351018_muse\"  target=\"_blank\">Muse</A><br>'),
(209,'Muslim Journal','<A title=\"Muslim Journal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/342425018_muslim_journal\"  target=\"_blank\">Muslim Journal</A><br>'),
(210,'N.A.D.A. Motorcycle, Snowmobile, ATV, Personal Watercraft Appraisal Guide','<A title=\"N.A.D.A. Motorcycle, Snowmobile, ATV, Personal Watercraft Appraisal Guide (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294657018_nada_motorcycle,_snowmobile,_atv,_personal_watercraft_appraisal_guide\"  target=\"_blank\">N.A'),
(211,'N.A.D.A. Official Older Used Car Guide','<A title=\"N.A.D.A. Official Older Used Car Guide (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294653018_nada_official_older_used_car_guide\" target=\"_parent\"  target=\"_blank\">N.A.D.A. Official Older Used Car Guide</A><br>'),
(212,'N.A.D.A. Official Used Car Guide','<A title=\"N.A.D.A. Official Used Car Guide (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294651018_nada_official_used_car_guide\" target=\"_parent\"  target=\"_blank\">N.A.D.A. Official Used Car Guide</A><br>'),
(213,'The Nation','<A title=\"The Nation (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294662018_the_nation\"  target=\"_blank\">The Nation</A><br>'),
(214,'National Geographic','<A title=\"National Geographic (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/294664018_national_geographic\"  target=\"_blank\">National Geographic</A><br>'),
(215,'National Geographic Kids','<A title=\"National Geographic Kids (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295355018_national_geographic_kids\"  target=\"_blank\">National Geographic Kids</A><br>'),
(216,'National Geographic Little Kids','<A title=\"National Geographic Little Kids (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/337412018_national_geographic_little_kids\" target=\"_parent\"  target=\"_blank\">National Geographic Little Kids</A><br>'),
(217,'National Geographic Traveler','<A title=\"National Geographic Traveler (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295363018_national_geographic_traveler\" target=\"_parent\"  target=\"_blank\">National Geographic Traveler</A><br>'),
(218,'National Review','<A title=\"National Review (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295366018_national_review\"  target=\"_blank\">National Review</A><br>'),
(219,'Natural History','<A title=\"Natural History (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295368018_natural_history\"  target=\"_blank\">Natural History</A><br>'),
(220,'The New American','<A title=\"The New American (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/318739018_the_new_american\"  target=\"_blank\">The New American</A><br>'),
(221,'New Moon Girls','<A title=\"New Moon Girls (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295375018_new_moon_girls\"  target=\"_blank\">New Moon Girls</A><br>'),
(222,'The New Republic','<A title=\"The New Republic (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295371018_the_new_republic\"  target=\"_blank\">The New Republic</A><br>'),
(223,'New York','<A title=\"New York (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295380018_new_york\"  target=\"_blank\">New York</A><br>'),
(224,'New York Review of Books','<A title=\"New York Review of Books (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/280439018_new_york_review_of_books\"  target=\"_blank\">New York Review of Books</A><br>'),
(225,'New York Times Book Review','<A title=\"New York Times Book Review (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/313037018_new_york_times_book_review\"  target=\"_blank\">New York Times Book Review</A><br>'),
(226,'The New York Times Upfront','<A title=\"The New York Times Upfront (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296251018_the_new_york_times_upfront\"  target=\"_blank\">The New York Times Upfront</A><br>'),
(227,'The New Yorker','<A title=\"The New Yorker (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295383018_the_new_yorker\"  target=\"_blank\">The New Yorker</A><br>'),
(228,'Nylon','<A title=\"Nylon (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/440166018_nylon\"  target=\"_blank\">Nylon</A><br>'),
(229,'O, the Oprah Magazine','<A title=\"O, the Oprah Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303730018_o,_the_oprah_magazine\"  target=\"_blank\">O, the Oprah Magazine</A><br>'),
(230,'Odyssey','<A title=\"Odyssey (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296255018_odyssey\"  target=\"_blank\">Odyssey</A><br>'),
(231,'Old House Journal','<A title=\"Old House Journal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296254018_old_house_journal\"  target=\"_blank\">Old House Journal</A><br>'),
(232,'Opera News','<A title=\"Opera News (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/421433018_opera_news\"  target=\"_blank\">Opera News</A><br>'),
(233,'The Optimist','<A title=\"The Optimist (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/526522018_the_optimist\"  target=\"_blank\">The Optimist</A><br>'),
(234,'Organic Life','<A title=\"Organic Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295384018_organic_life\"  target=\"_blank\">Organic Life</A><br>'),
(235,'Out','<A title=\"Out (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/526524018_out\"  target=\"_blank\">Out</A><br>'),
(236,'Outdoor Life','<A title=\"Outdoor Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295388018_outdoor_life\"  target=\"_blank\">Outdoor Life</A><br>'),
(237,'The Outlook','<A title=\"The Outlook (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534772018_the_outlook\"  target=\"_blank\">The Outlook</A><br>'),
(238,'Outside','<A title=\"Outside (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295390018_outside\"  target=\"_blank\">Outside</A><br>'),
(239,'Owl','<A title=\"Owl (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296256018_owl\"  target=\"_blank\">Owl</A><br>'),
(240,'The Oxford American','<A title=\"The Oxford American (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/322139018_the_oxford_american\"  target=\"_blank\">The Oxford American</A><br>'),
(241,'Ozarks Living','<A title=\"Ozarks Living (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/580121018_ozarks_living\"  target=\"_blank\">Ozarks Living</A><br>'),
(242,'Parents','<A title=\"Parents (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296258018_parents\"  target=\"_blank\">Parents</A><br>'),
(243,'Paris Match','<A title=\"Paris Match (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/295396018_paris_match\"  target=\"_blank\">Paris Match</A><br>'),
(244,'Paris Review','<A title=\"Paris Review (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/479518018_paris_review\"  target=\"_blank\">Paris Review</A><br>'),
(245,'People','<A title=\"People (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296271018_people\"  target=\"_blank\">People</A><br>'),
(246,'People En Espanol','<A title=\"People En Espanol (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296270018_people_en_espanol\"  target=\"_blank\">People En Espanol</A><br>'),
(247,'Permaculture','<A title=\"Permaculture (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/560003018_permaculture\"  target=\"_blank\">Permaculture</A><br>'),
(248,'Plays','<A title=\"Plays (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296260018_plays\"  target=\"_blank\">Plays</A><br>'),
(249,'Poets & Writers','<A title=\"Poets &amp; Writers (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/584057018_poets_amp_writers\"  target=\"_blank\">Poets &amp; Writers</A><br>'),
(250,'Popstar!','<A title=\"Popstar! (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534078018_popstar\"  target=\"_blank\">Popstar!</A><br>'),
(251,'Popular Mechanics','<A title=\"Popular Mechanics (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296268018_popular_mechanics\"  target=\"_blank\">Popular Mechanics</A><br>'),
(252,'Popular Photography & Imaging','<A title=\"Popular Photography &amp; Imaging (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296269018_popular_photography_amp_imaging\" target=\"_parent\"  target=\"_blank\">Popular Photography &amp; Imaging</A><br>'),
(253,'Popular Science','<A title=\"Popular Science (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296267018_popular_science\"  target=\"_blank\">Popular Science</A><br>'),
(254,'Popular Woodworking','<A title=\"Popular Woodworking (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296266018_popular_woodworking\"  target=\"_blank\">Popular Woodworking</A><br>'),
(255,'Practical Homeschooling','<A title=\"Practical Homeschooling (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/377237018_practical_homeschooling\"  target=\"_blank\">Practical Homeschooling</A><br>'),
(256,'Prevention','<A title=\"Prevention (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296264018_prevention\"  target=\"_blank\">Prevention</A><br>'),
(257,'The Progressive','<A title=\"The Progressive (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296263018_the_progressive\"  target=\"_blank\">The Progressive</A><br>'),
(258,'Psychology Today','<A title=\"Psychology Today (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296262018_psychology_today\"  target=\"_blank\">Psychology Today</A><br>'),
(259,'Public Citizen News','<A title=\"Public Citizen News (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298207018_public_citizen_news\"  target=\"_blank\">Public Citizen News</A><br>'),
(260,'Quilter\'s Newsletter Magazine','<A title=\"Quilter\'s Newsletter Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298205018_quilters_newsletter_magazine\" target=\"_parent\"  target=\"_blank\">Quilter\'s Newsletter Magazine</A><br>'),
(261,'Quilter\'s World','<A title=\"Quilter\'s World (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/316114018_quilters_world\"  target=\"_blank\">Quilter\'s World</A><br>'),
(262,'Quilting Arts Magazine','<A title=\"Quilting Arts Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/493853018_quilting_arts_magazine\"  target=\"_blank\">Quilting Arts Magazine</A><br>'),
(263,'Railroad Model Craftsman','<A title=\"Railroad Model Craftsman (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298204018_railroad_model_craftsman\"  target=\"_blank\">Railroad Model Craftsman</A><br>'),
(264,'Ranger Rick','<A title=\"Ranger Rick (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/296261018_ranger_rick\"  target=\"_blank\">Ranger Rick</A><br>'),
(265,'Ranger Rick Jr','<A title=\"Ranger Rick Jr (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/526526018_ranger_rick_jr\"  target=\"_blank\">Ranger Rick Jr</A><br>'),
(266,'Reader\'s Digest','<A title=\"Reader\'s Digest (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/305489018_readers_digest\"  target=\"_blank\">Reader\'s Digest</A><br>'),
(267,'Reader\'s Digest Large Print for Easier Reading','<A title=\"Reader\'s Digest Large Print for Easier Reading (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/303724018_readers_digest_large_print_for_easier_reading\"  target=\"_blank\">Reader\'s Digest Large Print for Easier Reading</A><br>'),
(268,'Real Simple','<A title=\"Real Simple (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298203018_real_simple\"  target=\"_blank\">Real Simple</A><br>'),
(269,'Redbook','<A title=\"Redbook (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298219018_redbook\"  target=\"_blank\">Redbook</A><br>'),
(270,'Reminisce Extra','<A title=\"Reminisce Extra (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/314612018_reminisce_extra\"  target=\"_blank\">Reminisce Extra</A><br>'),
(271,'Road & Track','<A title=\"Road &amp; Track (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298218018_road_amp_track\"  target=\"_blank\">Road &amp; Track</A><br>'),
(272,'Road Scholar','<A title=\"Road Scholar (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/580124018_road_scholar\"  target=\"_blank\">Road Scholar</A><br>'),
(273,'RodMaker Magazine','<A title=\"RodMaker Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/313253018_rodmaker_magazine\"  target=\"_blank\">RodMaker Magazine</A><br>'),
(274,'Rolling Stone','<A title=\"Rolling Stone (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298217018_rolling_stone\"  target=\"_blank\">Rolling Stone</A><br>'),
(275,'Romantic Times Book Review','<A title=\"Romantic Times Book Review (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298215018_romantic_times_book_review\"  target=\"_blank\">Romantic Times Book Review</A><br>'),
(276,'Rug Hooking','<A title=\"Rug Hooking (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/427795018_rug_hooking\"  target=\"_blank\">Rug Hooking</A><br>'),
(277,'Runner\'s World','<A title=\"Runner\'s World (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298214018_runners_world\"  target=\"_blank\">Runner\'s World</A><br>'),
(278,'Saveur','<A title=\"Saveur (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/517612018_saveur\"  target=\"_blank\">Saveur</A><br>'),
(279,'Scholastic Math','<A title=\"Scholastic Math (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298225018_scholastic_math\"  target=\"_blank\">Scholastic Math</A><br>'),
(280,'Science News','<A title=\"Science News (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298211018_science_news\"  target=\"_blank\">Science News</A><br>'),
(281,'Science World','<A title=\"Science World (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298228018_science_world\"  target=\"_blank\">Science World</A><br>'),
(282,'Scientific American','<A title=\"Scientific American (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298212018_scientific_american\"  target=\"_blank\">Scientific American</A><br>'),
(283,'Scientific American Mind','<A title=\"Scientific American Mind (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/456871018_scientific_american_mind\"  target=\"_blank\">Scientific American Mind</A><br>'),
(284,'Self','<A title=\"Self (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299463018_self\"  target=\"_blank\">Self</A><br>'),
(285,'Seventeen','<A title=\"Seventeen (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298221018_seventeen\"  target=\"_blank\">Seventeen</A><br>'),
(286,'Shape','<A title=\"Shape (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299464018_shape\"  target=\"_blank\">Shape</A><br>'),
(287,'Sheet Music Magazine','<A title=\"Sheet Music Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300451018_sheet_music_magazine\"  target=\"_blank\">Sheet Music Magazine</A><br>'),
(288,'ShopSmart','<A title=\"ShopSmart (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/425707018_shopsmart\"  target=\"_blank\">ShopSmart</A><br>'),
(289,'Skeptical Inquirer','<A title=\"Skeptical Inquirer (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299468018_skeptical_inquirer\"  target=\"_blank\">Skeptical Inquirer</A><br>'),
(290,'Skipping Stones','<A title=\"Skipping Stones (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/337411018_skipping_stones\"  target=\"_blank\">Skipping Stones</A><br>'),
(291,'Sky & Telescope','<A title=\"Sky &amp; Telescope (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299465018_sky_amp_telescope\"  target=\"_blank\">Sky &amp; Telescope</A><br>'),
(292,'Smithsonian','<A title=\"Smithsonian (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299467018_smithsonian\"  target=\"_blank\">Smithsonian</A><br>'),
(293,'Somerset Studio','<A title=\"Somerset Studio (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/402200018_somerset_studio\"  target=\"_blank\">Somerset Studio</A><br>'),
(294,'Southern Living','<A title=\"Southern Living (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299470018_southern_living\"  target=\"_blank\">Southern Living</A><br>'),
(295,'Spider','<A title=\"Spider (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299477018_spider\"  target=\"_blank\">Spider</A><br>'),
(296,'Spirituality & Health','<A title=\"Spirituality &amp; Health (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/314613018_spirituality_amp_health\"  target=\"_blank\">Spirituality &amp; Health</A><br>'),
(297,'Sports Illustrated','<A title=\"Sports Illustrated (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299474018_sports_illustrated\"  target=\"_blank\">Sports Illustrated</A><br>'),
(298,'Sports Illustrated for Kids','<A title=\"Sports Illustrated for Kids (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299479018_sports_illustrated_for_kids\"  target=\"_blank\">Sports Illustrated for Kids</A><br>'),
(299,'Squadron Supreme','<A title=\"Squadron Supreme (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/653200018_squadron_supreme\"  target=\"_blank\">Squadron Supreme</A><br>'),
(300,'Stone Soup','<A title=\"Stone Soup (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/299478018_stone_soup\"  target=\"_blank\">Stone Soup</A><br>'),
(301,'The Sun','<A title=\"The Sun (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/365224018_the_sun\"  target=\"_blank\">The Sun</A><br>'),
(302,'Taproot','<A title=\"Taproot (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534075018_taproot\"  target=\"_blank\">Taproot</A><br>'),
(303,'Taste of Home','<A title=\"Taste of Home (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/320030018_taste_of_home\"  target=\"_blank\">Taste of Home</A><br>'),
(304,'Teacher','<A title=\"Teacher (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/293293018_teacher\"  target=\"_blank\">Teacher</A><br>'),
(305,'Teen Vogue','<A title=\"Teen Vogue (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/427793018_teen_vogue\"  target=\"_blank\">Teen Vogue</A><br>'),
(306,'Tennis','<A title=\"Tennis (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300431018_tennis\"  target=\"_blank\">Tennis</A><br>'),
(307,'Texas Monthly','<A title=\"Texas Monthly (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300432018_texas_monthly\"  target=\"_blank\">Texas Monthly</A><br>'),
(308,'This Old House','<A title=\"This Old House (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300434018_this_old_house\"  target=\"_blank\">This Old House</A><br>'),
(309,'Thomas & Friends','<A title=\"Thomas &amp; Friends (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/409970018_thomas_amp_friends\"  target=\"_blank\">Thomas &amp; Friends</A><br>'),
(310,'Thrasher','<A title=\"Thrasher (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/444784018_thrasher\"  target=\"_blank\">Thrasher</A><br>'),
(311,'Threads','<A title=\"Threads (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300433018_threads\"  target=\"_blank\">Threads</A><br>'),
(312,'Tikkun','<A title=\"Tikkun (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/427803018_tikkun\"  target=\"_blank\">Tikkun</A><br>'),
(313,'Time','<A title=\"Time (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/310321018_time\"  target=\"_blank\">Time</A><br>'),
(314,'Trailer Life','<A title=\"Trailer Life (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/633382018_trailer_life\"  target=\"_blank\">Trailer Life</A><br>'),
(315,'Transworld Skateboarding','<A title=\"Transworld Skateboarding (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/298223018_transworld_skateboarding\"  target=\"_blank\">Transworld Skateboarding</A><br>'),
(316,'Travel & Leisure','<A title=\"Travel &amp; Leisure (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300435018_travel_amp_leisure\"  target=\"_blank\">Travel &amp; Leisure</A><br>'),
(317,'Treasures','<A title=\"Treasures (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/470604018_treasures\"  target=\"_blank\">Treasures</A><br>'),
(318,'Trends Journal','<A title=\"Trends Journal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/677238018_trends_journal\"  target=\"_blank\">Trends Journal</A><br>'),
(319,'Tricycle - The Buddhist Review','<A title=\"Tricycle - The Buddhist Review (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300436018_tricycle\" target=\"_parent\"  target=\"_blank\">Tricycle - The Buddhist Review</A><br>'),
(320,'Twist','<A title=\"Twist (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/444785018_twist\"  target=\"_blank\">Twist</A><br>'),
(321,'Us Weekly','<A title=\"Us Weekly (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/602142018_us_weekly\"  target=\"_blank\">Us Weekly</A><br>'),
(322,'Utne','<A title=\"Utne (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300438018_utne\"  target=\"_blank\">Utne</A><br>'),
(323,'The Value Line Fund Advisor','<A title=\"The Value Line Fund Advisor (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534717018_the_value_line_fund_advisor\"  target=\"_blank\">The Value Line Fund Advisor</A><br>'),
(324,'Value Line Investment Survey - Ratings and Reports','<A title=\"Value Line Investment Survey - Ratings and Reports (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534716018_value_line_investment_survey\" target=\"_parent\"  target=\"_blank\">Value Line Investment Survey - Ratings and Reports'),
(325,'The Value Line Investment Survey - Small and Mid-cap','<A title=\"The Value Line Investment Survey - Small and Mid-cap (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/534733018_the_value_line_investment_survey\" target=\"_parent\"  target=\"_blank\">The Value Line Investment Survey - Small and'),
(326,'Vanidades','<A title=\"Vanidades (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/409972018_vanidades\"  target=\"_blank\">Vanidades</A><br>'),
(327,'Vanity Fair','<A title=\"Vanity Fair (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300440018_vanity_fair\"  target=\"_blank\">Vanity Fair</A><br>'),
(328,'Vegetarian Times','<A title=\"Vegetarian Times (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300441018_vegetarian_times\"  target=\"_blank\">Vegetarian Times</A><br>'),
(329,'Victoria','<A title=\"Victoria (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/398372018_victoria\"  target=\"_blank\">Victoria</A><br>'),
(330,'Vogue','<A title=\"Vogue (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300443018_vogue\"  target=\"_blank\">Vogue</A><br>'),
(331,'Vogue Knitting International','<A title=\"Vogue Knitting International (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/371755018_vogue_knitting_international\" target=\"_parent\"  target=\"_blank\">Vogue Knitting International</A><br>'),
(332,'The Week','<A title=\"The Week (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/308066018_the_week\"  target=\"_blank\">The Week</A><br>'),
(333,'The Weekly Standard','<A title=\"The Weekly Standard (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/416391018_the_weekly_standard\"  target=\"_blank\">The Weekly Standard</A><br>'),
(334,'Weight Watchers','<A title=\"Weight Watchers (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/398369018_weight_watchers\"  target=\"_blank\">Weight Watchers</A><br>'),
(335,'Well Versed','<A title=\"Well Versed (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/479520018_well_versed\"  target=\"_blank\">Well Versed</A><br>'),
(336,'Western Horseman','<A title=\"Western Horseman (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/300445018_western_horseman\"  target=\"_blank\">Western Horseman</A><br>'),
(337,'Where to Retire','<A title=\"Where to Retire (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/667776018_where_to_retire\"  target=\"_blank\">Where to Retire</A><br>'),
(338,'Wired','<A title=\"Wired (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/308064018_wired\"  target=\"_blank\">Wired</A><br>'),
(339,'Woman\'s Day','<A title=\"Woman\'s Day (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301137018_womans_day\"  target=\"_blank\">Woman\'s Day</A><br>'),
(340,'Women\'s Health','<A title=\"Women\'s Health (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/606044018_womens_health\"  target=\"_blank\">Women\'s Health</A><br>'),
(341,'Wood','<A title=\"Wood (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301135018_wood\"  target=\"_blank\">Wood</A><br>'),
(342,'Writer\'s Digest','<A title=\"Writer\'s Digest (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301139018_writers_digest\"  target=\"_blank\">Writer\'s Digest</A><br>'),
(343,'WWE Magazine','<A title=\"WWE Magazine (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301141018_wwe_magazine\"  target=\"_blank\">WWE Magazine</A><br>'),
(344,'Xplor','<A title=\"Xplor (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/440886018_xplor\"  target=\"_blank\">Xplor</A><br>'),
(345,'YC - Young Children','<A title=\"YC - Young Children (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301142018_yc\"  target=\"_blank\">YC - Young Children</A><br>'),
(346,'Yoga Journal','<A title=\"Yoga Journal (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301140018_yoga_journal\"  target=\"_blank\">Yoga Journal</A><br>'),
(347,'Young Rider','<A title=\"Young Rider (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/301144018_young_rider\"  target=\"_blank\">Young Rider</A><br>'),
(348,'Zoobooks','<A title=\"Zoobooks (Magazine or Journal)\" href=\"https://dbrl.bibliocommons.com/item/show/337315018_zoobooks\"  target=\"_blank\">Zoobooks</A><br>'),
(349,'AA Grapevine',''),
(350,'AARP - The Magazine',''),
(351,'Acres U.S.A',''),
(352,'Adventure Cyclist',''),
(353,'The Advocate',''),
(354,'Allrecipes',''),
(355,'America',''),
(356,'America\'s Civil War',''),
(357,'American Cheerleader',''),
(358,'American Craft',''),
(359,'American Girl',''),
(360,'American History',''),
(361,'American Libraries',''),
(362,'American Patchwork & Quilting',''),
(363,'American Philatelist',''),
(364,'The American Prospect',''),
(365,'American Rifleman',''),
(366,'American Spirit',''),
(367,'AP - Alternative Press',''),
(368,'Archaeology',''),
(369,'Architectural Digest',''),
(370,'Art Calendar',''),
(371,'Art News',''),
(372,'Arts & Activities',''),
(373,'Ask - Arts & Sciences for Kids',''),
(374,'Astronomy',''),
(375,'The Atlantic',''),
(376,'Attention!',''),
(377,'Autism Asperger\'s Digest',''),
(378,'Babybug',''),
(379,'Backpacker',''),
(380,'Backwoods Home Magazine',''),
(381,'Beadwork',''),
(382,'Bee Culture',''),
(383,'Better Homes and Gardens',''),
(384,'Better Investing',''),
(385,'Bicycling',''),
(386,'Birds & Blooms',''),
(387,'Bitch',''),
(388,'Black Belt',''),
(389,'Black Enterprise',''),
(390,'Bloomberg Businessweek',''),
(391,'BMX Plus!',''),
(392,'Boating',''),
(393,'Bon Appetit',''),
(394,'Bookmarks',''),
(395,'Bottom Line - Personal',''),
(396,'Boulevard',''),
(397,'Boys\' Life',''),
(398,'Boys\' Quest',''),
(399,'Brides',''),
(400,'Car and Driver',''),
(401,'Cat Fancy',''),
(402,'Chess Life',''),
(403,'ChickaDEE',''),
(404,'Chirp',''),
(405,'The Christian Century',''),
(406,'Christian Science Monitor',''),
(407,'Christianity Today',''),
(408,'Cicada',''),
(409,'Click',''),
(410,'Climbing',''),
(411,'Cloth, Paper, Scissors',''),
(412,'Cobblestone',''),
(413,'Columbia Business Times',''),
(414,'Commonweal',''),
(415,'COMO Living',''),
(416,'Consumer Reports',''),
(417,'Consumer Reports on Health',''),
(418,'Cook\'s Country',''),
(419,'Cook\'s Illustrated',''),
(420,'Cooking Light',''),
(421,'Cosmopolitan',''),
(422,'Country',''),
(423,'Country Living',''),
(424,'Country Woman',''),
(425,'Craft Ideas',''),
(426,'Creative Knitting',''),
(427,'Cricket',''),
(428,'Crochet!',''),
(429,'Cycle World',''),
(430,'Diabetes Forecast',''),
(431,'Dig',''),
(432,'Dirt Bike',''),
(433,'Discover',''),
(434,'Discovery Girls',''),
(435,'Dogster',''),
(436,'Downbeat',''),
(437,'Dwell',''),
(438,'Early American Life',''),
(439,'EatingWell',''),
(440,'Ebony',''),
(441,'The Economist',''),
(442,'Entertainment Weekly',''),
(443,'Entrepreneur',''),
(444,'ESPN, the Magazine',''),
(445,'Esquire',''),
(446,'Essence',''),
(447,'Every Day With Rachael Ray',''),
(448,'Extended Notes',''),
(449,'Faces - People, Places, and Cultures',''),
(450,'Family Circle',''),
(451,'Family Fun',''),
(452,'Family Handyman',''),
(453,'Farm Journal',''),
(454,'Field & Stream',''),
(455,'Fine Homebuilding',''),
(456,'Fine Woodworking',''),
(457,'Food & Wine',''),
(458,'Food Network Magazine',''),
(459,'Forbes',''),
(460,'Foreign Affairs',''),
(461,'Foreign Policy',''),
(462,'Fortune',''),
(463,'The Foxfire Magazine',''),
(464,'Free Inquiry',''),
(465,'Fun to Learn Friends',''),
(466,'Garden Gate',''),
(467,'Gateway',''),
(468,'Gateway Heritage',''),
(469,'GL - Girls\' Life Magazine',''),
(470,'Glamour',''),
(471,'Golf Digest',''),
(472,'Good Housekeeping',''),
(473,'GQ - Gentlemen\'s Quarterly',''),
(474,'Greene Magazine',''),
(475,'GreenPrints',''),
(476,'GSCM Reporter',''),
(477,'Guideposts',''),
(478,'Guns & Ammo',''),
(479,'Harper\'s Bazaar',''),
(480,'Harper\'s Magazine',''),
(481,'Hemmings Classic Car',''),
(482,'Hemmings Motor News',''),
(483,'HGTV Magazine',''),
(484,'Highlights for Children',''),
(485,'Highlights High Five',''),
(486,'The Hightower Lowdown',''),
(487,'Hobby Farms',''),
(488,'Home Power',''),
(489,'Homeschooling Today',''),
(490,'Hopscotch for Girls',''),
(491,'Horse & Rider',''),
(492,'Horticulture',''),
(493,'Hot Rod',''),
(494,'House Beautiful',''),
(495,'HOW',''),
(496,'Humpty Dumpty\'s Magazine',''),
(497,'Hype Hair',''),
(498,'In Style',''),
(499,'Inc - The Magazine for Growing Companies',''),
(500,'The Incredible Hulk',''),
(501,'Inside Columbia',''),
(502,'International Living',''),
(503,'Interview',''),
(504,'Islamic Horizons',''),
(505,'J-14',''),
(506,'Jack and Jill',''),
(507,'JazzTimes',''),
(508,'Jefferson City Magazine',''),
(509,'Juxtapoz - Art + Culture',''),
(510,'Kiki',''),
(511,'Kiplinger\'s Personal Finance',''),
(512,'Knitting Magazine',''),
(513,'Kovels on Antiques and Collectibles',''),
(514,'Ladybug',''),
(515,'Lapham\'s Quarterly',''),
(516,'Latina',''),
(517,'Lifeline',''),
(518,'Living Without',''),
(519,'Locus - The Magazine of the Science Fiction & Fantasy Field',''),
(520,'M',''),
(521,'Mac Life',''),
(522,'Mad',''),
(523,'The Magazine Antiques',''),
(524,'The Mailbox - Kindergarten',''),
(525,'The Mailbox - Preschool',''),
(526,'Make',''),
(527,'Martha Stewart Living',''),
(528,'Maximum PC',''),
(529,'Men\'s Health',''),
(530,'Mental_floss',''),
(531,'Midwest Living',''),
(532,'Midwest Traveler',''),
(533,'Military History',''),
(534,'Mindful',''),
(535,'The Mindfulness Bell',''),
(536,'Missouri Conservationist',''),
(537,'Missouri Folklore Society Journal',''),
(538,'Missouri Game & Fish',''),
(539,'Missouri Life',''),
(540,'Missouri Resources',''),
(541,'Missouri Review',''),
(542,'Missouri Ruralist',''),
(543,'Missouri Wildlife',''),
(544,'Mizzou - The Magazine of the MU Alumni Association',''),
(545,'Model Railroader',''),
(546,'Moment',''),
(547,'Money',''),
(548,'Monocle',''),
(549,'Morningstar Fundinvestor',''),
(550,'Morningstar Stockinvestor',''),
(551,'Mother Earth News',''),
(552,'Mother Jones',''),
(553,'Motor Trend',''),
(554,'Ms',''),
(555,'Muscle & Fitness',''),
(556,'Muse',''),
(557,'Muslim Journal',''),
(558,'N.A.D.A. Motorcycle, Snowmobile, ATV, Personal Watercraft Appraisal Guide',''),
(559,'N.A.D.A. Official Older Used Car Guide',''),
(560,'N.A.D.A. Official Used Car Guide',''),
(561,'The Nation',''),
(562,'National Geographic',''),
(563,'National Geographic Kids',''),
(564,'National Geographic Little Kids',''),
(565,'National Geographic Traveler',''),
(566,'National Review',''),
(567,'Natural History',''),
(568,'The New American',''),
(569,'New Moon Girls',''),
(570,'The New Republic',''),
(571,'New York',''),
(572,'New York Review of Books',''),
(573,'New York Times Book Review',''),
(574,'The New York Times Upfront',''),
(575,'The New Yorker',''),
(576,'Nylon',''),
(577,'O, the Oprah Magazine',''),
(578,'Odyssey',''),
(579,'Old House Journal',''),
(580,'Opera News',''),
(581,'The Optimist',''),
(582,'Organic Life',''),
(583,'Out',''),
(584,'Outdoor Life',''),
(585,'The Outlook',''),
(586,'Outside',''),
(587,'Owl',''),
(588,'The Oxford American',''),
(589,'Ozarks Living',''),
(590,'Parents',''),
(591,'Paris Match',''),
(592,'Paris Review',''),
(593,'People',''),
(594,'People En Espanol',''),
(595,'Permaculture',''),
(596,'Plays',''),
(597,'Poets & Writers',''),
(598,'Popstar!',''),
(599,'Popular Mechanics',''),
(600,'Popular Photography & Imaging',''),
(601,'Popular Science',''),
(602,'Popular Woodworking',''),
(603,'Practical Homeschooling',''),
(604,'Prevention',''),
(605,'The Progressive',''),
(606,'Psychology Today',''),
(607,'Public Citizen News',''),
(608,'Quilter\'s Newsletter Magazine',''),
(609,'Quilter\'s World',''),
(610,'Quilting Arts Magazine',''),
(611,'Railroad Model Craftsman',''),
(612,'Ranger Rick',''),
(613,'Ranger Rick Jr',''),
(614,'Reader\'s Digest',''),
(615,'Reader\'s Digest Large Print for Easier Reading',''),
(616,'Real Simple',''),
(617,'Redbook',''),
(618,'Reminisce Extra',''),
(619,'Road & Track',''),
(620,'Road Scholar',''),
(621,'RodMaker Magazine',''),
(622,'Rolling Stone',''),
(623,'Romantic Times Book Review',''),
(624,'Rug Hooking',''),
(625,'Runner\'s World',''),
(626,'Saveur',''),
(627,'Scholastic Math',''),
(628,'Science News',''),
(629,'Science World',''),
(630,'Scientific American',''),
(631,'Scientific American Mind',''),
(632,'Self',''),
(633,'Seventeen',''),
(634,'Shape',''),
(635,'Sheet Music Magazine',''),
(636,'ShopSmart',''),
(637,'Skeptical Inquirer',''),
(638,'Skipping Stones',''),
(639,'Sky & Telescope',''),
(640,'Smithsonian',''),
(641,'Somerset Studio',''),
(642,'Southern Living',''),
(643,'Spider',''),
(644,'Spirituality & Health',''),
(645,'Sports Illustrated',''),
(646,'Sports Illustrated for Kids',''),
(647,'Squadron Supreme',''),
(648,'Stone Soup',''),
(649,'The Sun',''),
(650,'Taproot',''),
(651,'Taste of Home',''),
(652,'Teacher',''),
(653,'Teen Vogue',''),
(654,'Tennis',''),
(655,'Texas Monthly',''),
(656,'This Old House',''),
(657,'Thomas & Friends',''),
(658,'Thrasher',''),
(659,'Threads',''),
(660,'Tikkun',''),
(661,'Time',''),
(662,'Trailer Life',''),
(663,'Transworld Skateboarding',''),
(664,'Travel & Leisure',''),
(665,'Treasures',''),
(666,'Trends Journal',''),
(667,'Tricycle - The Buddhist Review',''),
(668,'Twist',''),
(669,'Us Weekly',''),
(670,'Utne',''),
(671,'The Value Line Fund Advisor',''),
(672,'Value Line Investment Survey - Ratings and Reports',''),
(673,'The Value Line Investment Survey - Small and Mid-cap',''),
(674,'Vanidades',''),
(675,'Vanity Fair',''),
(676,'Vegetarian Times',''),
(677,'Victoria',''),
(678,'Vogue',''),
(679,'Vogue Knitting International',''),
(680,'The Week',''),
(681,'The Weekly Standard',''),
(682,'Weight Watchers',''),
(683,'Well Versed',''),
(684,'Western Horseman',''),
(685,'Where to Retire',''),
(686,'Wired',''),
(687,'Woman\'s Day',''),
(688,'Women\'s Health',''),
(689,'Wood',''),
(690,'Writer\'s Digest',''),
(691,'WWE Magazine',''),
(692,'Xplor',''),
(693,'YC - Young Children',''),
(694,'Yoga Journal',''),
(695,'Young Rider',''),
(696,'Zoobooks','');
/*!40000 ALTER TABLE `dmag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dudphp`
--

DROP TABLE IF EXISTS `dudphp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dudphp` (
  `id` int(11) NOT NULL,
  `rname` varchar(150) NOT NULL,
  `url` varchar(150) NOT NULL,
  `rnote` mediumtext NOT NULL,
  `rdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dudphp`
--

LOCK TABLES `dudphp` WRITE;
/*!40000 ALTER TABLE `dudphp` DISABLE KEYS */;
INSERT INTO `dudphp` VALUES
(1,'phpscaffold','http://www.phpscaffold.com/','Codes generated by app are no longer supported.','2016-07-15 00:00:00');
/*!40000 ALTER TABLE `dudphp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fdoc`
--

DROP TABLE IF EXISTS `fdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fdoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sdes` varchar(125) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `memo` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fdoc`
--

LOCK TABLES `fdoc` WRITE;
/*!40000 ALTER TABLE `fdoc` DISABLE KEYS */;
INSERT INTO `fdoc` VALUES
(1,'Test 01','/home/archman/workspace/cb/cpp/dirCtrl/dirCtrl.cbp','Test'),
(3,'Sdes','/home/archman/apps/kdbg_2.5.5-3_amd64.deb','Doc01'),
(4,'ssss','/bin/7z','sdsd'),
(5,'Robo','/bin/7zr','docs\nThis\nIs \na\nTest'),
(6,'Saa','/bin/aa-enabled','rumb'),
(7,'dwer','/bin/aa-exec','thid is it'),
(8,'ZTsess','/bin/7z','This\nIs \na\nTest'),
(9,'Test Doc','/home/archman/mkusb-tar.log','This\n\n\nis\n\n\na\n\n\ntest.');
/*!40000 ALTER TABLE `fdoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fel`
--

DROP TABLE IF EXISTS `fel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fel` (
  `id` int(11) NOT NULL,
  `loc` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fel`
--

LOCK TABLES `fel` WRITE;
/*!40000 ALTER TABLE `fel` DISABLE KEYS */;
INSERT INTO `fel` VALUES
(1,'C:\\Users\\arch_\\Downloads'),
(2,'C:\\Users\\arch_\\workspace\\n2\\java'),
(3,'C:\\xp\\jarc'),
(4,'C:\\dev\\w32'),
(5,'C:\\xp\\jarc'),
(6,'C:\\xp\\wamp\\www'),
(7,'C:\\Users\\arch_\\Documents'),
(8,'d:\\'),
(9,'e:\\'),
(10,'C:\\dev\\DCTD');
/*!40000 ALTER TABLE `fel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ja`
--

DROP TABLE IF EXISTS `ja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ja` (
  `id` int(11) NOT NULL,
  `pttl` varchar(125) NOT NULL,
  `lnk` varchar(225) NOT NULL,
  `adate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ja`
--

LOCK TABLES `ja` WRITE;
/*!40000 ALTER TABLE `ja` DISABLE KEYS */;
/*!40000 ALTER TABLE `ja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk1`
--

DROP TABLE IF EXISTS `lk1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk1` (
  `idlk1` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(75) NOT NULL,
  `ddes` mediumtext NOT NULL,
  PRIMARY KEY (`idlk1`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk1`
--

LOCK TABLES `lk1` WRITE;
/*!40000 ALTER TABLE `lk1` DISABLE KEYS */;
INSERT INTO `lk1` VALUES
(1,'Compilers',' '),
(2,'Delphi Production',' '),
(3,'BCS Tools',' '),
(4,'Arch\'s Movies To Watch (orig)','Text'),
(5,'Web Browsers',' '),
(6,'Code Central Articles',' '),
(7,'ISP\'s',' '),
(8,'Sports',' '),
(10,'Web E Mail',' '),
(11,'Technology Web Sites',' '),
(12,'Technology Tips',' '),
(13,'Media For Church',' '),
(14,'Columbia College Admin',' '),
(15,'Aramaic',' Note.'),
(16,'Music Videos',' '),
(17,'Technology Links',' '),
(18,'PHP CRUD',' '),
(19,'Wordpress Tools',' '),
(20,'Eclipse Neon',' '),
(21,'Favorite Web Sites',' '),
(22,'Javadoc Delphi','Javadoc'),
(23,'Python','Python'),
(24,'DSST','DSST'),
(25,'Django',' '),
(26,'Biblical Terms',' Terms.'),
(27,'Delphi Tips',' '),
(28,'Windows Tools',' '),
(30,'Jobs','Work'),
(31,'Delphi Apps Written In Delphi','Apps'),
(32,'English 112','English'),
(33,'Black History','Black History'),
(34,'Poetry Terms','Defs'),
(35,'Dell','Dell'),
(36,'EEO For Colleges','EEO'),
(37,'EEO Calculations','Calculations'),
(38,'College Algebra','Algebra'),
(39,'Python Sage','Sage'),
(40,'Math 150','Math 150'),
(42,'Math Wk 1','Math'),
(43,'Arch\'s Archlinux Videos And Articles','Text'),
(44,'Newspaper Articles Folow Up','Articles'),
(45,'Interview Skills','Interviews'),
(46,'Business Contacts','Business'),
(47,'Delphi Future','Future endeavors'),
(48,'c++ Webs And Books','This is a repos for c++.'),
(52,'New Clothes','Clothes to purchase in the future.'),
(53,'Penny Stocks','Note.'),
(54,'Boost ','Note.'),
(55,'wxWidgets Info','Note.'),
(56,'Frequently Used Applications','Note.'),
(57,'Bills','Note.'),
(62,'Election Results','Note.'),
(63,'Image Magick','Note.'),
(64,'Tower Upgrades','Note.'),
(65,'New Phones','Note.'),
(66,'New Laptops','Note.'),
(67,'Newspapers And Periodicals','Note.'),
(68,'EEO','Note.'),
(69,'SQL Calculations','Note.'),
(70,'c++ Web Browser Source','Note.'),
(71,'TOR','Note.'),
(72,'HR Issues','Note.'),
(73,'C++ Code Snippets','Note.'),
(74,'Clonezilla','Note.'),
(75,'What Is','Note.'),
(76,'Core I5 8600K','Note.'),
(77,'Things To Do','Note.'),
(78,'Religious Teaching','Note.'),
(79,'Linux Magazines','Note.'),
(80,'Kubuntu','Note.'),
(81,'Bootstrap 4','Note.'),
(82,'ddrescue','Note.'),
(83,'zdm','Note.'),
(84,'Linux Courses','Here is where we store info about Linux Couses.'),
(85,'Local Media','Note.'),
(86,'c++ Elapsed Time','Note.'),
(87,'OpenVpn','Note.'),
(88,'University TV Stations','Note.'),
(89,'wt witty','Note.'),
(90,'Patriotic Rituals','Note.'),
(91,'Starched Shirts','Note.'),
(92,'c++ Fiverr','Note.'),
(93,'State of Missouri','Note.'),
(94,'COBOL Jobs','Note.'),
(95,'MVS','Note.'),
(96,'SEO','Note.'),
(97,'Plasma Upgrade','Note.'),
(98,'Hit Music Videos','Note.'),
(99,'Meetups','Note.'),
(100,'BCS Desktop','Note.'),
(101,'Blues','Note.'),
(102,'Spacex','Note.'),
(103,'c++ RSS Blogs','Note.'),
(104,'Big Daddy Linux','Note.'),
(105,'c++ CRUD','Note.'),
(106,'NASA','Note.'),
(107,'Steam','Note.'),
(108,'Konqueror','Note.'),
(109,'African History','Note.'),
(110,'Obituaries','Note.'),
(111,'c++ Web Kit','Note.'),
(112,'Raspberry PI KDE Installation','Note.'),
(113,'KDE','Note.'),
(114,'FORTRAN Sourc Code','Note.'),
(115,'c++ Boost','Note.'),
(116,'c++ Technical Tips','Note.'),
(117,'COBOL Source Code','Note.'),
(118,'python','Note.'),
(119,'Internet Tools','Note.'),
(129,'Arch\'s Workbench','Text'),
(130,'Arch\'s Tools','Text'),
(131,'ASP .NET','Text'),
(132,'flask','Flask examples'),
(133,'zdm Asian','Text'),
(134,'aaa01','Text'),
(135,'dot net','Text'),
(136,'qt','Text'),
(137,'Black Radio Stations','Text'),
(138,'PC Build','Text'),
(139,'c++ Report Engine','This category reveals report engines available for c++'),
(140,'Future Options','Tthis ggroup is dedicated to new advances.'),
(141,'Angular','Text'),
(142,'Movies to Watch','Text'),
(143,'Langflow','Text'),
(144,'Newspapers','Text'),
(145,'Hercules','Text'),
(146,'Bootstrap 5','Bootstrap videos and blogs.'),
(147,'IBM Z Oen Editor','Text'),
(148,'yii2 Php Framework','Text'),
(149,'MariaDB','Text'),
(150,'Angular','Text'),
(151,'CMS','Text'),
(152,'Node','Text'),
(153,'Grails','Text'),
(154,'E Commerce','Text'),
(155,'Putty','Text'),
(156,'Git','Text'),
(157,'Command Line Tools','Text'),
(158,'ChatGPT','Text'),
(159,'YouTube Open','Text'),
(160,'Open Tabs','Text'),
(161,'Gulp','Text'),
(162,'Arch\'s Movies To Watch','Text'),
(163,'Arch\'s Favorite Links','Text'),
(164,'Arch\'s Dietary Plan','Text'),
(165,'Arch\'s Webmin','Text'),
(166,'Arch\'s Online Compilers','Text'),
(167,'Arch\'s KDE Plasma ','Text'),
(168,'Arch\'s Tech Videos','Text'),
(169,'Arch\'s Exercise Plan','Text'),
(170,'Arch\'s Music Links','Text'),
(171,'Arch\'s Python Videos','Text'),
(172,'Arch\'s .NET Videos','Text'),
(173,'Arch\'s dotnet MySql Entity Framework','Text'),
(174,'Arch\'s  Spring Boot MVC','Text'),
(175,'Arch\'s SCRUM','Text'),
(176,'Arch\'s ChatGPT','Text'),
(177,'Arch\'s Voodie Bacham','Text'),
(178,'Arch\'s Calvin Robinson','Text'),
(179,'Arch\'s Voodie Baucham','Text'),
(180,'Arch\'s New Tower Build','Text'),
(181,'Arch\'s Tower Build 001','Text'),
(182,'Arch\'s Early Morning Prayer','Text'),
(183,'Arch\'s ED Snippets','Text'),
(184,'Arch\'s Barbra O\'Neills Videos','Text'),
(186,'cpp Books','Text'),
(187,'Arch\'s Sandbox','Text'),
(188,'xx Test','Text'),
(189,'zzz Test','Text'),
(190,'xxxTest','Text'),
(191,'xxxxTest','Text'),
(192,'xxxxx Test','Text'),
(193,'Arch\'s Dr. Sebi','Text'),
(194,'Arch\'s c++ Videos','Text'),
(195,'Arch\'s Archllinux Videos And Articles','Text'),
(196,'Arch\'s John Henrick Clark','Note.'),
(197,'Arch\'s BCS Created Software','In house operations.'),
(198,'Arch\'s Religous Video\'s','Text'),
(199,'Arch\'s Gentoo','Text');
/*!40000 ALTER TABLE `lk1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk2`
--

DROP TABLE IF EXISTS `lk2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk2` (
  `idlk2` int(11) NOT NULL AUTO_INCREMENT,
  `idlk1` int(11) NOT NULL,
  `lkn` varchar(30000) NOT NULL,
  `lnk` varchar(30000) NOT NULL,
  `ddes` mediumtext NOT NULL,
  PRIMARY KEY (`idlk2`)
) ENGINE=InnoDB AUTO_INCREMENT=1677 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk2`
--

LOCK TABLES `lk2` WRITE;
/*!40000 ALTER TABLE `lk2` DISABLE KEYS */;
INSERT INTO `lk2` VALUES
(2,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSPwbn\\BCSPwb\\BCSPwbml.dproj','Note.\" WHERE `idlk2` = 1548'),
(3,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSRunXqt\\Win64\\Debug\\BCSRunXqtml.exe','Note.\" WHERE `idlk2` = 1548'),
(4,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSFTNF\\Win64\\Debug\\BCSFTNFml.exe','Note.\" WHERE `idlk2` = 1548'),
(5,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files\\CCleaner\\CCleaner64.exe','Note.\" WHERE `idlk2` = 1548'),
(7,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30427','Note.\" WHERE `idlk2` = 1548'),
(8,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30423','Note.\" WHERE `idlk2` = 1548'),
(9,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30395','Note.\" WHERE `idlk2` = 1548'),
(10,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30394','Note.\" WHERE `idlk2` = 1548'),
(11,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30393','Note.\" WHERE `idlk2` = 1548'),
(12,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30389','Note.\" WHERE `idlk2` = 1548'),
(13,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30371','Note.\" WHERE `idlk2` = 1548'),
(14,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30370','Note.\" WHERE `idlk2` = 1548'),
(15,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30365','Note.\" WHERE `idlk2` = 1548'),
(16,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30364','Note.\" WHERE `idlk2` = 1548'),
(17,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30329','Note.\" WHERE `idlk2` = 1548'),
(18,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30289','Note.\" WHERE `idlk2` = 1548'),
(19,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30303','Note.\" WHERE `idlk2` = 1548'),
(20,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30338','Note.\" WHERE `idlk2` = 1548'),
(21,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30331','Note.\" WHERE `idlk2` = 1548'),
(22,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30327','Note.\" WHERE `idlk2` = 1548'),
(23,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30325','Note.\" WHERE `idlk2` = 1548'),
(24,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30324','Note.\" WHERE `idlk2` = 1548'),
(25,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30265','Note.\" WHERE `idlk2` = 1548'),
(26,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30322','Note.\" WHERE `idlk2` = 1548'),
(27,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30309','Note.\" WHERE `idlk2` = 1548'),
(28,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30310','Note.\" WHERE `idlk2` = 1548'),
(29,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30306','Note.\" WHERE `idlk2` = 1548'),
(30,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30267','Note.\" WHERE `idlk2` = 1548'),
(31,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30288','Note.\" WHERE `idlk2` = 1548'),
(32,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30264','Note.\" WHERE `idlk2` = 1548'),
(34,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30262','Note.\" WHERE `idlk2` = 1548'),
(35,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30268','Note.\" WHERE `idlk2` = 1548'),
(36,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30276','Note.\" WHERE `idlk2` = 1548'),
(37,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30263','Note.\" WHERE `idlk2` = 1548'),
(38,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30260','Note.\" WHERE `idlk2` = 1548'),
(39,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30259','Note.\" WHERE `idlk2` = 1548'),
(40,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30224','Note.\" WHERE `idlk2` = 1548'),
(41,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30223','Note.\" WHERE `idlk2` = 1548'),
(42,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30222','Note.\" WHERE `idlk2` = 1548'),
(43,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30139','Note.\" WHERE `idlk2` = 1548'),
(44,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30138','Note.\" WHERE `idlk2` = 1548'),
(45,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30137','Note.\" WHERE `idlk2` = 1548'),
(46,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30134','Note.\" WHERE `idlk2` = 1548'),
(47,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30126','Note.\" WHERE `idlk2` = 1548'),
(48,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/30125','Note.\" WHERE `idlk2` = 1548'),
(49,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29776','Note.\" WHERE `idlk2` = 1548'),
(50,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29710','Note.\" WHERE `idlk2` = 1548'),
(51,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29423','Note.\" WHERE `idlk2` = 1548'),
(52,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29686','Note.\" WHERE `idlk2` = 1548'),
(53,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29692','Note.\" WHERE `idlk2` = 1548'),
(54,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29691','Note.\" WHERE `idlk2` = 1548'),
(55,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29690','Note.\" WHERE `idlk2` = 1548'),
(56,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29681','Note.\" WHERE `idlk2` = 1548'),
(57,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29680','Note.\" WHERE `idlk2` = 1548'),
(58,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29679','Note.\" WHERE `idlk2` = 1548'),
(59,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29424','Note.\" WHERE `idlk2` = 1548'),
(60,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29445','Note.\" WHERE `idlk2` = 1548'),
(61,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29444','Note.\" WHERE `idlk2` = 1548'),
(62,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29430','Note.\" WHERE `idlk2` = 1548'),
(63,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29429','Note.\" WHERE `idlk2` = 1548'),
(64,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29427','Note.\" WHERE `idlk2` = 1548'),
(65,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29416','Note.\" WHERE `idlk2` = 1548'),
(66,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29417','Note.\" WHERE `idlk2` = 1548'),
(67,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29412','Note.\" WHERE `idlk2` = 1548'),
(68,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29405','Note.\" WHERE `idlk2` = 1548'),
(69,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/29411','Note.\" WHERE `idlk2` = 1548'),
(70,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/28926','Note.\" WHERE `idlk2` = 1548'),
(71,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/28925','Note.\" WHERE `idlk2` = 1548'),
(72,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27928','Note.\" WHERE `idlk2` = 1548'),
(73,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27822','Note.\" WHERE `idlk2` = 1548'),
(74,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27840','Note.\" WHERE `idlk2` = 1548'),
(75,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27825','Note.\" WHERE `idlk2` = 1548'),
(76,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27765','Note.\" WHERE `idlk2` = 1548'),
(77,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27766','Note.\" WHERE `idlk2` = 1548'),
(78,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27768','Note.\" WHERE `idlk2` = 1548'),
(79,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27762','Note.\" WHERE `idlk2` = 1548'),
(80,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27761','Note.\" WHERE `idlk2` = 1548'),
(81,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/27754','Note.\" WHERE `idlk2` = 1548'),
(82,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23006','Note.\" WHERE `idlk2` = 1548'),
(83,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26879','Note.\" WHERE `idlk2` = 1548'),
(84,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26849','Note.\" WHERE `idlk2` = 1548'),
(85,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26848','Note.\" WHERE `idlk2` = 1548'),
(86,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26724','Note.\" WHERE `idlk2` = 1548'),
(87,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26723','Note.\" WHERE `idlk2` = 1548'),
(88,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26670','Note.\" WHERE `idlk2` = 1548'),
(89,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26643','Note.\" WHERE `idlk2` = 1548'),
(90,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26552','Note.\" WHERE `idlk2` = 1548'),
(91,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26549','Note.\" WHERE `idlk2` = 1548'),
(92,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26523','Note.\" WHERE `idlk2` = 1548'),
(93,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26534','Note.\" WHERE `idlk2` = 1548'),
(94,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26139','Note.\" WHERE `idlk2` = 1548'),
(95,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26510','Note.\" WHERE `idlk2` = 1548'),
(96,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26495','Note.\" WHERE `idlk2` = 1548'),
(97,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/26490','Note.\" WHERE `idlk2` = 1548'),
(98,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/25574','Note.\" WHERE `idlk2` = 1548'),
(99,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/24170','Note.\" WHERE `idlk2` = 1548'),
(100,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23947','Note.\" WHERE `idlk2` = 1548'),
(101,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23089','Note.\" WHERE `idlk2` = 1548'),
(102,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23087','Note.\" WHERE `idlk2` = 1548'),
(103,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23020','Note.\" WHERE `idlk2` = 1548'),
(104,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23049','Note.\" WHERE `idlk2` = 1548'),
(105,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23062','Note.\" WHERE `idlk2` = 1548'),
(106,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/22922','Note.\" WHERE `idlk2` = 1548'),
(107,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/22911','Note.\" WHERE `idlk2` = 1548'),
(108,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23064','Note.\" WHERE `idlk2` = 1548'),
(109,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' Author A Book','Note.\" WHERE `idlk2` = 1548'),
(110,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23056','Note.\" WHERE `idlk2` = 1548'),
(111,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23024','Note.\" WHERE `idlk2` = 1548'),
(112,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/22931','Note.\" WHERE `idlk2` = 1548'),
(113,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23037','Note.\" WHERE `idlk2` = 1548'),
(114,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23019','Note.\" WHERE `idlk2` = 1548'),
(115,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23025','Note.\" WHERE `idlk2` = 1548'),
(116,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23022','Note.\" WHERE `idlk2` = 1548'),
(117,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23018','Note.\" WHERE `idlk2` = 1548'),
(118,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23017','Note.\" WHERE `idlk2` = 1548'),
(119,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/22923','Note.\" WHERE `idlk2` = 1548'),
(120,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23013','Note.\" WHERE `idlk2` = 1548'),
(121,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23003','Note.\" WHERE `idlk2` = 1548'),
(122,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/22926','Note.\" WHERE `idlk2` = 1548'),
(123,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/22977','Note.\" WHERE `idlk2` = 1548'),
(126,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSXE8\\BCSXE8Gen\\BCSXE8Genml.dproj','Note.\" WHERE `idlk2` = 1548'),
(127,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSSkTab\\BCSSkTabml.dproj','Note.\" WHERE `idlk2` = 1548'),
(128,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://godaddy.com','Note.\" WHERE `idlk2` = 1548'),
(129,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://a2hosting.com','Note.\" WHERE `idlk2` = 1548'),
(130,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.nba.com/','Note.\" WHERE `idlk2` = 1548'),
(131,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.nfl.com/','Note.\" WHERE `idlk2` = 1548'),
(132,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://espn.go.com/','Note.\" WHERE `idlk2` = 1548'),
(133,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.foxsports.com/','Note.\" WHERE `idlk2` = 1548'),
(135,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSSkel\\Win32\\Debug\\BCSSkelml.exe','Note.\" WHERE `idlk2` = 1548'),
(137,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://gmail.com/','Note.\" WHERE `idlk2` = 1548'),
(138,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://email02.secureserver.net/','Note.\" WHERE `idlk2` = 1548'),
(139,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://live.com','Note.\" WHERE `idlk2` = 1548'),
(140,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://yahoo.com','Note.\" WHERE `idlk2` = 1548'),
(141,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.wired.com/','Note.\" WHERE `idlk2` = 1548'),
(142,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.microsoft.com/en-us/','Note.\" WHERE `idlk2` = 1548'),
(143,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.ibm.com/us-en/','Note.\" WHERE `idlk2` = 1548'),
(144,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.oracle.com/us/sun/index.htm','Note.\" WHERE `idlk2` = 1548'),
(145,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://java.com/en/','Note.\" WHERE `idlk2` = 1548'),
(146,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.technologyreview.com/','Note.\" WHERE `idlk2` = 1548'),
(147,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Author/268949','Note.\" WHERE `idlk2` = 1548'),
(149,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.embarcadero.com/','Note.\" WHERE `idlk2` = 1548'),
(150,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.eclipse.org/','Note.\" WHERE `idlk2` = 1548'),
(151,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://grails.org/','Note.\" WHERE `idlk2` = 1548'),
(152,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSFLWL\\Win32\\Debug\\BCSFLWLml.exe','Note.\" WHERE `idlk2` = 1548'),
(155,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.thegeekstuff.com/2011/12/mysqlcheck/','Note.\" WHERE `idlk2` = 1548'),
(156,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://delphi.about.com/od/course/a/oop_intro.htm','Note.\" WHERE `idlk2` = 1548'),
(157,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.howtogeek.com/','Note.\" WHERE `idlk2` = 1548'),
(158,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://php.net/','Note.\" WHERE `idlk2` = 1548'),
(159,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.radiolineup.com/locate/Marshall-MO','Note.\" WHERE `idlk2` = 1548'),
(160,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.radiolineup.com/locate/Sedalia-MO','Note.\" WHERE `idlk2` = 1548'),
(161,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23083','Note.\" WHERE `idlk2` = 1548'),
(162,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://web.ccis.edu/~/media/Files/Institutional%20Research/Facts/General-Info/Columbia%20College%20organizationsl%20chart.pdf','Note.\" WHERE `idlk2` = 1548'),
(164,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://web.ccis.edu/~/media/Files/Technology%20Services/TestingServices/DSST%20Exam%20Registration%20Updated%203-12.pdf','Note.\" WHERE `idlk2` = 1548'),
(166,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.computer.org','Note.\" WHERE `idlk2` = 1548'),
(167,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://computingnow.computer.org/web/computingnow','Note.\" WHERE `idlk2` = 1548'),
(168,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files (x86)\\VPNetwork LLC\\TorGuard\\TorGuardDesktopQt.exe','Note.\" WHERE `idlk2` = 1548'),
(169,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://trust.zone/','Note.\" WHERE `idlk2` = 1548'),
(170,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Music\\Maze feat. Frankie Beverly Greatest Hits [HD] (Low).flv','Note.\" WHERE `idlk2` = 1548'),
(173,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://dbrl.org','Note.\" WHERE `idlk2` = 1548'),
(174,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_45gwZ7vXAg&feature=youtu.be','Note.\" WHERE `idlk2` = 1548'),
(176,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.sciencealert.com/watch-the-best-explanation-of-string-theory-we-ve-ever-seen','Note.\" WHERE `idlk2` = 1548'),
(177,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.sciencealert.com/watch-the-best-explanation-of-string-theory-we-ve-ever-seen','Note.\" WHERE `idlk2` = 1548'),
(178,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.google.com/search?q=php+crud+framework&cad=h','Note.\" WHERE `idlk2` = 1548'),
(179,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=giawHh0RztI','Note.\" WHERE `idlk2` = 1548'),
(180,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\AppData\\Roaming\\uTorrent\\uTorrent.exe','Note.\" WHERE `idlk2` = 1548'),
(182,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Videos\\Otis Redding Greatest Hits (Full Album)  The Best Of Otis Redding Songs (Low).flv','Note.\" WHERE `idlk2` = 1548'),
(183,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Videos\\David Ruffin Best Songs Of David Ruffin - David Ruffins Greatest Hits Full Album (Low).flv','Note.\" WHERE `idlk2` = 1548'),
(184,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Videos\\James Brown - 20 All-Time Greatest Hits! (Full Album) - 1991 (Low).flv','Note.\" WHERE `idlk2` = 1548'),
(185,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Videos\\Sam Cooke [Greatest Hits Vol 1] (Low).flv','Note.\" WHERE `idlk2` = 1548'),
(186,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Videos\\The 50 Best Otis Redding Songs - The Very Best of Otis Redding - OTIS REDDING Greatest Hits (Low).flv','Note.\" WHERE `idlk2` = 1548'),
(187,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Videos\\The Very Best of Curtis Mayfield (Low).flv','Note.\" WHERE `idlk2` = 1548'),
(188,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://unsplash.com/','Note.\" WHERE `idlk2` = 1548'),
(190,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/video.php?v=633837106716611','Note.\" WHERE `idlk2` = 1548'),
(191,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/upfromit/videos/531164897039647','Note.\" WHERE `idlk2` = 1548'),
(192,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/raymond.dickens.73/videos/1910290312529985/','Note.\" WHERE `idlk2` = 1548'),
(193,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/100010529253654/videos/131562673871374/','Note.\" WHERE `idlk2` = 1548'),
(194,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://tedvinke.wordpress.com/2015/10/17/eclipse-mars-grails-3-1-with-gradle-groovy-and-gsp-support/','Note.\" WHERE `idlk2` = 1548'),
(195,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Yy9dspQDWhY','Note.\" WHERE `idlk2` = 1548'),
(196,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/video.php?v=143065136053511','Note.\" WHERE `idlk2` = 1548'),
(197,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.mo-media.com/dsst/','Note.\" WHERE `idlk2` = 1548'),
(198,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.studyguidezone.com/technical-writing.html','Note.\" WHERE `idlk2` = 1548'),
(200,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/guitarloves1/videos/213465285651903/','Note.\" WHERE `idlk2` = 1548'),
(201,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.stlsocialnews.com/','Note.\" WHERE `idlk2` = 1548'),
(202,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://bear330.wordpress.com/2007/10/30/using-pythontidy-in-pydev-as-code-formatter/','Note.\" WHERE `idlk2` = 1548'),
(203,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/1085416575/videos/10205314047785780/','Note.\" WHERE `idlk2` = 1548'),
(204,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/205769019459693/videos/854714617898460/','Note.\" WHERE `idlk2` = 1548'),
(205,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://docs.djangoproject.com/en/1.9/','Note.\" WHERE `idlk2` = 1548'),
(206,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.google.com/search?q=advent+what+is+it&ie=utf-8&oe=utf-8https://www.google.com/?gws_rd=ssl','Note.\" WHERE `idlk2` = 1548'),
(207,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.google.com/search?q=advent+what+is+it&ie=utf-8&oe=utf-8#q=second+advent+what+is+it','Note.\" WHERE `idlk2` = 1548'),
(208,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://christianity.about.com/od/endtimestopicalstudy/f/secondcomingof.htm','Note.\" WHERE `idlk2` = 1548'),
(209,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.google.com/search?q=eating+in+the+sanctuary&ie=utf-8&oe=utf-8','Note.\" WHERE `idlk2` = 1548'),
(210,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.google.com/search?q=jesus+eating+in+the+sanctuary&ie=utf-8&oe=utf-8','Note.\" WHERE `idlk2` = 1548'),
(211,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.delphifeeds.com/go/s/85616','Note.\" WHERE `idlk2` = 1548'),
(212,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://masteringdjango.com/','Note.\" WHERE `idlk2` = 1548'),
(213,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/donnie.hill.79/videos/10200392455449938/','Note.\" WHERE `idlk2` = 1548'),
(217,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://dostorrents.com/','Note.\" WHERE `idlk2` = 1548'),
(218,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=G8brQdClo9s&spfreload=10','Note.\" WHERE `idlk2` = 1548'),
(219,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=bRnm8f6Wavk','Note.\" WHERE `idlk2` = 1548'),
(221,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.pbs.org/wgbh/frontline/watch/','Note.\" WHERE `idlk2` = 1548'),
(222,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/whyyoumadson/videos/10153758232804522/','Note.\" WHERE `idlk2` = 1548'),
(223,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.python.org/','Note.\" WHERE `idlk2` = 1548'),
(224,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\xp\\putty\\putty.exe','Note.\" WHERE `idlk2` = 1548'),
(225,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/arch.brooks/movies','Note.\" WHERE `idlk2` = 1548'),
(226,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://docs.djangoproject.com/en/1.9/intro/tutorial01/','Note.\" WHERE `idlk2` = 1548'),
(228,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.freeway-ministries.com/','Note.\" WHERE `idlk2` = 1548'),
(229,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://hbcusports.com/2016/01/09/here-are-the-top-10-hbcu-band-halftime-shows-of-2015/','Note.\" WHERE `idlk2` = 1548'),
(231,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=3ohr_wSRYzM','Note.\" WHERE `idlk2` = 1548'),
(232,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=0yy3Yxew2L8','Note.\" WHERE `idlk2` = 1548'),
(233,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Recitatif','Note.\" WHERE `idlk2` = 1548'),
(234,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://jimaxtell.wordpress.com/2012/02/02/meaning-of-recitatif-derivative-of-recitative/','Note.\" WHERE `idlk2` = 1548'),
(235,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://dictionary.reference.com/browse/recitatif','Note.\" WHERE `idlk2` = 1548'),
(236,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://allreaders.com/book-review-summary/recitatif-39132','Note.\" WHERE `idlk2` = 1548'),
(238,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://jonlennartaasenden.wordpress.com/2014/11/06/famous-software-made-with-delphi/','Note.\" WHERE `idlk2` = 1548'),
(239,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/iReleaseEndorphins/videos/1246708738676586/','Note.\" WHERE `idlk2` = 1548'),
(240,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.huffingtonpost.com/2015/02/28/food-stamp-demographics_n_6771938.html','Note.\" WHERE `idlk2` = 1548'),
(241,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\Documents\\engl112\\Morrison_recitatifessay.doc.pdf','Note.\" WHERE `idlk2` = 1548'),
(242,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.bbc.co.uk/worldserviceradio','Note.\" WHERE `idlk2` = 1548'),
(243,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://cougartrack.ccis.edu/CookieAuth.dll?GetLogon?curl=Z2FPagesZ2FD2LSSO.aspxZ3FtargetZ3DZ252fd2lZ252fhome&reason=0&formdir=5','Note.\" WHERE `idlk2` = 1548'),
(244,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://daddys-gun.com/2015/12/19/the-black-armies-of-mississippi/','Note.\" WHERE `idlk2` = 1548'),
(245,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/rolandsmartinfanpage/videos/10153376732997831/','Note.\" WHERE `idlk2` = 1548'),
(246,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/StopBlakGen/videos/815518715241926/','Note.\" WHERE `idlk2` = 1548'),
(247,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/KamalaWrightWLinc/videos/736034256473304/','Note.\" WHERE `idlk2` = 1548'),
(248,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files (x86)\\Deluge\\deluge.exe','Note.\" WHERE `idlk2` = 1548'),
(251,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files (x86)\\VPNetwork LLC\\TorGuard\\TorGuardDesktopQt.exe','Note.\" WHERE `idlk2` = 1548'),
(252,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files\\CCleaner\\CCleaner64.exe','Note.\" WHERE `idlk2` = 1548'),
(253,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.easybib.com/','Note.\" WHERE `idlk2` = 1548'),
(254,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.nextmd.com/ud2/Login/Login.aspx','Note.\" WHERE `idlk2` = 1548'),
(255,162,'https://archman.us:10000/\",`lnk`=\" Webmin','','Note.\" WHERE `idlk2` = 1548'),
(257,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.ebay.com/itm/Dell-Inspiron-15-3543-i7-5500U-15-6-HD-8GB-1TB-Win-8-1-Year-Warranty-/151941777781?hash=item23606f8975:g:-KgAAOSwYIhWjoCi#ht_2030wt_1105','Note.\" WHERE `idlk2` = 1548'),
(258,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.ebay.com/itm/Dell-Inspiron-Touch-17-6th-GEN-Core-i7-3-1GHz-16GB-1TB-17-3-FULL-HD-Gaming-/222009426124?hash=item33b0cb00cc:g:LOkAAOSwHnFVrlvZ','Note.\" WHERE `idlk2` = 1548'),
(259,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://login.proxy.ccis.edu/login?url=http://web.b.ebscohost.com/ehost/detail/detail?vid=16&sid=c10395fd-48b7-4c05-808e-b1a8362316b7%40sessionmgr111&hid=116&bdata=#AN=101331935&db=a9h','Note.\" WHERE `idlk2` = 1548'),
(260,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.ebay.com/itm/Dell-Inspiron-17-5759-5000-LATEST-6TH-GEN-i7-6500U-3-1GHz-16GB-2-0TB-1080P-TOUCH-/262253302559?hash=item3d0f83d31f:m:mtojEj9sUnoyHyRCxXwfhfg','Note.\" WHERE `idlk2` = 1548'),
(261,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.ebay.com/itm/Dell-Inspiron-17-5759-5000-LATEST-6TH-GEN-i7-6500U-3-1GHz-16GB-1-0-TB-DVD-RW/262272050167?_trksid=p2047675.c100005.m1851&_trkparms=aid%3D222007%26algo%3DSIC.MBE%26ao%3D1%26asc%3D20131003132420%26meid%3D67dc6eb71f964de5856d484114497','Note.\" WHERE `idlk2` = 1548'),
(262,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://cougartrack.ccis.edu/CookieAuth.dll?GetLogon?curl=Z2FPagesZ2FD2LSSO.aspxZ3FtargetZ3DZ252fd2lZ252fhomeZ252f524458&reason=0&formdir=5','Note.\" WHERE `idlk2` = 1548'),
(264,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://nces.ed.gov/ipeds/Home/FindYourCollege','Note.\" WHERE `idlk2` = 1548'),
(265,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://math.wonderhowto.com/how-to/find-number-given-its-percent-302822/','Note.\" WHERE `idlk2` = 1548'),
(266,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://math.wonderhowto.com/how-to/find-percent-302673/','Note.\" WHERE `idlk2` = 1548'),
(267,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://math.wonderhowto.com/how-to/find-percent-given-two-numbers-302821/','Note.\" WHERE `idlk2` = 1548'),
(268,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://math.wonderhowto.com/how-to/solve-reverse-percentage-problems-312756/','Note.\" WHERE `idlk2` = 1548'),
(269,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.mathpapa.com/algebra-calculator.html','Note.\" WHERE `idlk2` = 1548'),
(270,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.symbolab.com/solver/algebra-calculator','Note.\" WHERE `idlk2` = 1548'),
(271,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.sagemath.org/help-video.html','Note.\" WHERE `idlk2` = 1548'),
(272,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://peterhudec.github.io/authomatic/examples/django-simple.html','Note.\" WHERE `idlk2` = 1548'),
(274,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\OneDrive\\Documents\\math150\\MATH150DEC.pdf','Note.\" WHERE `idlk2` = 1548'),
(276,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.algebrahelp.com/lessons/simplifying/foilmethod/index.htm','Note.\" WHERE `idlk2` = 1548'),
(277,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Polynomial','Note.\" WHERE `idlk2` = 1548'),
(278,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Monomial','Note.\" WHERE `idlk2` = 1548'),
(279,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.mathpapa.com/calc/','Note.\" WHERE `idlk2` = 1548'),
(281,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.columbiatribune.com/sports/mu/study-highlights-the-black-male-athlete-experience-at-mu/article_fcb13fa7-7c70-5567-b1e6-eb1b55fc8bf5.html?_dc=66512948833.405975','Note.\" WHERE `idlk2` = 1548'),
(282,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://interactmath.com/Default.aspx','Note.\" WHERE `idlk2` = 1548'),
(284,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://blog.triplebyte.com/how-to-pass-a-programming-interview','Note.\" WHERE `idlk2` = 1548'),
(286,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2016\\BCClRd\\BCClRdml.dproj','Note.\" WHERE `idlk2` = 1548'),
(287,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2016\\BCSMemo\\BCSMemoml.dproj','Note.\" WHERE `idlk2` = 1548'),
(288,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2016\\BCSDelDirs\\BCSDelDirsml.dproj','Note.\" WHERE `idlk2` = 1548'),
(289,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2016\\BCSZipLst\\BCSZipLstml.dproj','Note.\" WHERE `idlk2` = 1548'),
(290,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2016\\BCSGetHd\\BCSGetHdml.dproj','Note.\" WHERE `idlk2` = 1548'),
(291,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2016\\BCSCDisc\\BCSCDiscml.dproj','Note.\" WHERE `idlk2` = 1548'),
(292,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/JonPenberthyPage/videos/1610599282537376/','Note.\" WHERE `idlk2` = 1548'),
(293,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=qyVAtZ9VZ4Q&feature=youtu.be','Note.\" WHERE `idlk2` = 1548'),
(295,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.columbiaredi.com/','Note.\" WHERE `idlk2` = 1548'),
(297,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2016\\BCSPlaVid\\BCSPlaVidml.dproj','Note.\" WHERE `idlk2` = 1548'),
(298,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.swissdelphicenter.com/en/','Note.\" WHERE `idlk2` = 1548'),
(299,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://delphi.about.com/od/windowsshellapi/a/executeprogram.htm','Note.\" WHERE `idlk2` = 1548'),
(300,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.pbs.org/','Note.\" WHERE `idlk2` = 1548'),
(301,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://john-dugan.com/upgrade-phpmyadmin-wamp/','Note.\" WHERE `idlk2` = 1548'),
(304,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\xp\\wamp\\wampmanager.exe','Note.\" WHERE `idlk2` = 1548'),
(305,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files\\VideoLAN\\VLC\\vlc.exe','Note.\" WHERE `idlk2` = 1548'),
(306,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe','Note.\" WHERE `idlk2` = 1548'),
(307,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Users\\arch_\\eclipse\\parallel-mars\\eclipse\\eclipse.exe','Note.\" WHERE `idlk2` = 1548'),
(308,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\Program Files (x86)\\AVG\\Framework\\Common\\avguix.exe /zen.open_ui','Note.\" WHERE `idlk2` = 1548'),
(309,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://slashdot.org/','Note.\" WHERE `idlk2` = 1548'),
(310,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Author/268949','Note.\" WHERE `idlk2` = 1548'),
(311,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://bcsjava.com/blg/wordpress/','Note.\" WHERE `idlk2` = 1548'),
(312,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:\\dev\\w32\\2015\\BCSRunXqt\\BCSRunXqtml.dproj','Note.\" WHERE `idlk2` = 1548'),
(313,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.msn.com/en-us/','Note.\" WHERE `idlk2` = 1548'),
(314,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.msn.com/en-us/','Note.\" WHERE `idlk2` = 1548'),
(315,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.millardfamilychapels.com/obituaries/Maybelle-Brown/#!/TributeWall','Note.\" WHERE `idlk2` = 1548'),
(316,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5yNgTFYmxpM&index=2&list=PLei96ZX_m9sWowRU2mn0ccUNIBTTclcWO','Note.\" WHERE `idlk2` = 1548'),
(318,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/The-Temple-of-Amun-Ra-574632699312013/','Note.\" WHERE `idlk2` = 1548'),
(319,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://delphidabbler.com/tips/17','Note.\" WHERE `idlk2` = 1548'),
(320,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.dol.gov/ofccp/','Note.\" WHERE `idlk2` = 1548'),
(321,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/The.Ankh.Life/photos/a.498319456915836.1073741828.497420983672350/1157064947707947/?type=3&theater','Note.\" WHERE `idlk2` = 1548'),
(322,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://github.com/TurboPack/Orpheus','Note.\" WHERE `idlk2` = 1548'),
(323,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://git.oschina.net/elseif/Rad-Studio-Keygen','Note.\" WHERE `idlk2` = 1548'),
(325,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www2.research.att.com/sites/labs_research/open_source','Note.\" WHERE `idlk2` = 1548'),
(326,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.cprogramming.com/c++11/what-is-c++0x.html','Note.\" WHERE `idlk2` = 1548'),
(335,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://awesomepennystocks.com/marijuana-stocks/','Note.\" WHERE `idlk2` = 1548'),
(336,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://investorplace.com/2018/03/top-marijuana-penny-stocks-rest-2018/','Note.\" WHERE `idlk2` = 1548'),
(337,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://moneymorning.com/2018/02/08/the-3-best-marijuana-penny-stocks-to-buy-in-2018/','Note.\" WHERE `idlk2` = 1548'),
(338,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.benzinga.com/investing/marijuana-penny-stocks/','Note.\" WHERE `idlk2` = 1548'),
(339,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://cpp-netlib.org/latest/getting_started.html#building-with-cmake','Note.\" WHERE `idlk2` = 1548'),
(347,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ebay.com/itm/True-North-Mens-Jackson-Hole-Mid-Hiking-Boots-Brown-Orange/142771563053?_trkparms=5079%3A0&_trksid=p2509164.m5277','Note.\" WHERE `idlk2` = 1548'),
(348,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://uk.ufc.com/','Note.\" WHERE `idlk2` = 1548'),
(349,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/c++ books/Jumping_into_C_Plus_Plus_Alex_Allain(www.ebook-dl.com).pdf','Note.\" WHERE `idlk2` = 1548'),
(350,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/Tes30/Release/Tes30','Note.\" WHERE `idlk2` = 1548'),
(353,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/c++ books/C++ in a Nutshell.pdf','Note.\" WHERE `idlk2` = 1548'),
(354,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://forums.wxwidgets.org/viewtopic.php?t=19727','Note.\" WHERE `idlk2` = 1548'),
(355,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://wiki.wxwidgets.org/WxMenu','Note.\" WHERE `idlk2` = 1548'),
(356,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://docs.wxwidgets.org/trunk/classwx_clipboard.html','Note.\" WHERE `idlk2` = 1548'),
(357,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.cplusplus.com/articles/Gy86b7Xj/','Note.\" WHERE `idlk2` = 1548'),
(359,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/cpp-photon/eclipse/eclipse','Note.\" WHERE `idlk2` = 1548'),
(361,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/Tes30/Release/Tes30','Note.\" WHERE `idlk2` = 1548'),
(362,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://docs.wxwidgets.org/3.1/classwx_list_box.html','Note.\" WHERE `idlk2` = 1548'),
(363,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.tracfone.com/','Note.\" WHERE `idlk2` = 1548'),
(364,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.geico.com/','Note.\" WHERE `idlk2` = 1548'),
(365,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.walmartmoneycard.com/','Note.\" WHERE `idlk2` = 1548'),
(366,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.landmarkbank.com/home','Note.\" WHERE `idlk2` = 1548'),
(367,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.godaddy.com/','Note.\" WHERE `idlk2` = 1548'),
(368,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://billing.webhosting.uk.com/accountdetails.php','Note.\" WHERE `idlk2` = 1548'),
(369,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://docs.wxwidgets.org/stable/classwx_message_dialog.html','Note.\" WHERE `idlk2` = 1548'),
(370,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.mycplus.com/featured-articles/50-c-cpp-source-code-websites/','Note.\" WHERE `idlk2` = 1548'),
(371,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.mycplus.com/featured-articles/50-c-cpp-source-code-websites/','Note.\" WHERE `idlk2` = 1548'),
(372,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.quora.com/What-are-the-best-websites-for-learning-C++','Note.\" WHERE `idlk2` = 1548'),
(377,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.showmeboone.com/clerk/elections/results/','Note.\" WHERE `idlk2` = 1548'),
(378,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/php-photon/eclipse/eclipse','Note.\" WHERE `idlk2` = 1548'),
(379,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.imagemagick.org/Usage/','Note.\" WHERE `idlk2` = 1548'),
(381,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B07BN4NJ2J?ref_=pfb_783ij025ml293d24g30heed53dj9&tag=hydfbook0e-20&ascsubtag=pfb-P05-V01-A-O3-X95-HI-AKSQY4','Note.\" WHERE `idlk2` = 1548'),
(383,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B0784SY515/ref=sspa_dk_detail_3?psc=1&pd_rd_i=B0784SY515&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=1713835751726239774&pf_rd_r=CV36TW98VENRCR6PFJRM&pd_rd_wg=e5s8G&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&pd_rd_w=GhVL7&pf_rd_i=desktop-dp-sims&pd_rd_r=b8f7077e-9d7d-11e8-af6e-0720243a5fcc','Note.\" WHERE `idlk2` = 1548'),
(384,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Adapter-Controller-Expansion-Profile-Bracket/dp/B07BNWFFNK/ref=sr_1_8?s=electronics&ie=UTF8&qid=1534069209&sr=1-8&keywords=pcie+ssd+controller','Note.\" WHERE `idlk2` = 1548'),
(385,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B0784SY515/ref=sspa_dk_detail_3?psc=1&pd_rd_i=B0784SY515&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=1713835751726239774&pf_rd_r=CV36TW98VENRCR6PFJRM&pd_rd_wg=e5s8G&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&pd_rd_w=GhVL7&pf_rd_i=desktop-dp-sims&pd_rd_r=b8f7077e-9d7d-11e8-af6e-0720243a5fcc','Note.\" WHERE `idlk2` = 1548'),
(386,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.dell.com/support/assets-online/us/en/19?~ck=mn#/product-list','Note.\" WHERE `idlk2` = 1548'),
(387,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/pwb/Release/pwb','Note.\" WHERE `idlk2` = 1548'),
(388,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/parallel-photon/eclipse/eclipse','Note.\" WHERE `idlk2` = 1548'),
(389,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/committers-photon/eclipse/eclipse','Note.\" WHERE `idlk2` = 1548'),
(391,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://shop.tracfone.com/shop/en/tracfonestore/phones/tf-iphone-se-32gb-silver','Note.\" WHERE `idlk2` = 1548'),
(392,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ebay.com/sch/i.html?LH_CAds=&_ex_kw=&_fpos=&_fspt=1&_mPrRngCbx=1&_nkw=iphone+se+32gb+unlocked&_sacat=&_sadis=&_sop=12&_udhi=&_udlo=&_fosrp=1','Note.\" WHERE `idlk2` = 1548'),
(393,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.phonedog.com/products/samsung-galaxy-j7-sky-pro','Note.\" WHERE `idlk2` = 1548'),
(394,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://tracfonereviewer.blogspot.com/2017/03/samsung-galaxy-j7-sky-pro-s727vl.html','Note.\" WHERE `idlk2` = 1548'),
(395,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.walmart.com/ip/Acer-Aspire-15-6-HD-Laptop-Intel-Core-i5-6GB-DDR4-1TB-HDD-Windows-10-Home-A315-51-51SL/860360734?sourceid=dsn_fb_354411fd-4fb6-4b86-b402-3554eafaa8c4&veh=dsn&wmlspartner=dsn_fb_354411fd-4fb6-4b86-b402-3554eafaa8c4','Note.\" WHERE `idlk2` = 1548'),
(396,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ebay.com/i/273350278845','Note.\" WHERE `idlk2` = 1548'),
(397,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.stlamerican.com/','Note.\" WHERE `idlk2` = 1548'),
(398,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://chicagodefender.com/','Note.\" WHERE `idlk2` = 1548'),
(399,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.blacknews.com/directory/black_african_american_newspapers.shtml','Note.\" WHERE `idlk2` = 1548'),
(411,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://groups.google.com/forum/#!forum/comp.lang.c++.moderated','Note.\" WHERE `idlk2` = 1548'),
(412,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://archbrooks.us/pwb','Note.\" WHERE `idlk2` = 1548'),
(420,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.eeoc.gov/employers/eeo4survey/e4instruct.cfm','Note.\" WHERE `idlk2` = 1548'),
(421,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.geeksengine.com/database/basic-select/arithmetic-operations.php','Note.\" WHERE `idlk2` = 1548'),
(422,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.geeksengine.com/database/basic-select/arithmetic-operations.php','Note.\" WHERE `idlk2` = 1548'),
(424,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.dell.com/support/article/us/en/04/sln300820/what-are-pcie-ssds-and-how-to-use-them-as-a-boot-drive-for-a-dell-pc-?lang=en','Note.\" WHERE `idlk2` = 1548'),
(425,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://docs.wxwidgets.org/trunk/classwx_grid.html','Note.\" WHERE `idlk2` = 1548'),
(426,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Asus-Micro-Motherboard-H110M-C-CSM/dp/B017E0LKDE/ref=sr_1_1?ie=UTF8&qid=1534436208&sr=8-1&keywords=asus+motherboard+lga+1151&dpID=513rvmJ5NzL&preST=_SX300_QL70_&dpSrc=srch','Note.\" WHERE `idlk2` = 1548'),
(427,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Asus-Micro-Motherboard-H110M-C-CSM/dp/B017E0LKDE/ref=sr_1_1?ie=UTF8&qid=1534437189&sr=8-1&keywords=asus+lga+1151&dpID=513rvmJ5NzL&preST=_SX300_QL70_&dpSrc=srch','Note.\" WHERE `idlk2` = 1548'),
(429,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Intel-8th-Core-i5-8400-Processor/dp/B0759FGJ3Q/ref=sr_1_2?s=electronics&ie=UTF8&qid=1534436509&sr=1-2&keywords=I5+8400','Note.\" WHERE `idlk2` = 1548'),
(430,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/apps/waterfox/waterfox','Note.\" WHERE `idlk2` = 1548'),
(431,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.blr.com/HR-Employment/Discrimination/Civil-Rights','Note.\" WHERE `idlk2` = 1548'),
(432,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Critical HR Record Keeping.pdf','Note.\" WHERE `idlk2` = 1548'),
(433,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://stackoverflow.com/questions/5420317/reading-and-writing-binary-file','Note.\" WHERE `idlk2` = 1548'),
(434,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.linux.com/news/manage-partitions-and-disks-gparted-clonezilla-live-cd','Note.\" WHERE `idlk2` = 1548'),
(435,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://userbase.kde.org/Kubuntu/Installation','Note.\" WHERE `idlk2` = 1548'),
(436,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://docs.wxwidgets.org/2.4.2/wx_wxnotebook.html#wxnotebook','Note.\" WHERE `idlk2` = 1548'),
(437,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.what-is-what.com/what_is/kde.html','Note.\" WHERE `idlk2` = 1548'),
(438,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xfce.org/','Note.\" WHERE `idlk2` = 1548'),
(439,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/LXDE','Note.\" WHERE `idlk2` = 1548'),
(440,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/GNOME','Note.\" WHERE `idlk2` = 1548'),
(441,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://study.com/academy/course/algebra.html','Note.\" WHERE `idlk2` = 1548'),
(442,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/cpp-latest-released/eclipse/eclipse  -data /home/archman/workspace/xw/','Note.\" WHERE `idlk2` = 1548'),
(443,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.intel.com/content/www/us/en/products/processors/core/core-vpro/i5-8600k.html','Note.\" WHERE `idlk2` = 1548'),
(444,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.intel.com/content/www/us/en/products/processors/core/core-vpro/i5-8600k.html','Note.\" WHERE `idlk2` = 1548'),
(450,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/GTK%2B','Note.\" WHERE `idlk2` = 1548'),
(451,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Lubuntu','Note.\" WHERE `idlk2` = 1548'),
(452,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/libreoffice --writer /home/archman/Documents/ttd.odt','Note.\" WHERE `idlk2` = 1548'),
(453,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.hercules-390.org/','Note.\" WHERE `idlk2` = 1548'),
(454,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/First_Council_of_Nicaea','Note.\" WHERE `idlk2` = 1548'),
(467,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://docs.wxwidgets.org/3.1/group__group__funcmacro__dialog.html','Note.\" WHERE `idlk2` = 1548'),
(468,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/WxWidgets','Note.\" WHERE `idlk2` = 1548'),
(469,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://zetcode.com/gui/wxwidgets/dialogs/','Note.\" WHERE `idlk2` = 1548'),
(470,162,'https://archman.us:10000/\",`lnk`=\" Webmin','','Note.\" WHERE `idlk2` = 1548'),
(471,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://linuxjournal.com','Note.\" WHERE `idlk2` = 1548'),
(472,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.linux-magazine.com/','Note.\" WHERE `idlk2` = 1548'),
(473,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://lwn.net/','Note.\" WHERE `idlk2` = 1548'),
(474,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.linuxformat.com/','Note.\" WHERE `idlk2` = 1548'),
(475,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.board4all.biz/','Note.\" WHERE `idlk2` = 1548'),
(476,162,'https://archman.us:10000/\",`lnk`=\" Webmin','','Note.\" WHERE `idlk2` = 1548'),
(477,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/cpp-photon/eclipse/eclipse  -data /home/archman/workspace/xw/','Note.\" WHERE `idlk2` = 1548'),
(478,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/cpp-photon/eclipse/eclipse  -data /home/archman/workspace/xw/','Note.\" WHERE `idlk2` = 1548'),
(483,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/cpp-photon/eclipse/eclipse  -data /home/archman/workspace/xw/','Note.\" WHERE `idlk2` = 1548'),
(484,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/filezilla','Note.\" WHERE `idlk2` = 1548'),
(485,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/putty','Note.\" WHERE `idlk2` = 1548'),
(486,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/plasma-discover','Note.\" WHERE `idlk2` = 1548'),
(487,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/k3b','Note.\" WHERE `idlk2` = 1548'),
(488,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/Tes18/Release/Tes18','Note.\" WHERE `idlk2` = 1548'),
(489,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/pithos','Note.\" WHERE `idlk2` = 1548'),
(490,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/apps/waterfox/waterfox','Note.\" WHERE `idlk2` = 1548'),
(491,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://archbrooks.us/wp2/','Note.\" WHERE `idlk2` = 1548'),
(492,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/arch.brooks','Note.\" WHERE `idlk2` = 1548'),
(493,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://twitter.com/','Note.\" WHERE `idlk2` = 1548'),
(494,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/PopularAuthors.aspx','Note.\" WHERE `idlk2` = 1548'),
(495,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/libreoffice -writer','Note.\" WHERE `idlk2` = 1548'),
(496,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://news.softpedia.com/news/Pimp-Your-Kubuntu-in-3-Easy-Steps-51468.shtml','Note.\" WHERE `idlk2` = 1548'),
(497,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/pwb/Release/xbb.sh','Note.\" WHERE `idlk2` = 1548'),
(498,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/sagasu','Note.\" WHERE `idlk2` = 1548'),
(499,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/spectacle','Note.\" WHERE `idlk2` = 1548'),
(500,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://archbrooks.us/b4/','Note.\" WHERE `idlk2` = 1548'),
(501,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/kubuntu/desktopguide.pdf','Note.\" WHERE `idlk2` = 1548'),
(502,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/kate','Note.\" WHERE `idlk2` = 1548'),
(503,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/arch.brooks/movies','Note.\" WHERE `idlk2` = 1548'),
(504,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/konsole','Note.\" WHERE `idlk2` = 1548'),
(505,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/kcalc','Note.\" WHERE `idlk2` = 1548'),
(506,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.kde.org/community/whatiskde/','Note.\" WHERE `idlk2` = 1548'),
(507,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://wiki.wxwidgets.org/Converting_everything_to_and_from_wxString','Note.\" WHERE `idlk2` = 1548'),
(508,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/c++ books/Jumping_into_C_Plus_Plus_Alex_Allain(www.ebook-dl.com).pdf','Note.\" WHERE `idlk2` = 1548'),
(509,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=hnCmSXCZEpU','Note.\" WHERE `idlk2` = 1548'),
(510,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Sass_(stylesheet_language)','Note.\" WHERE `idlk2` = 1548'),
(511,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Npm_(software)','Note.\" WHERE `idlk2` = 1548'),
(513,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://datarecovery.com/rd/how-to-clone-hard-disks-with-ddrescue/','Note.\" WHERE `idlk2` = 1548'),
(514,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://stackoverflow.com/questions/36678625/bootstrap-content-assist-in-html-files-in-eclipse','Note.\" WHERE `idlk2` = 1548'),
(515,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=gr4T47_rkLw','Note.\" WHERE `idlk2` = 1548'),
(516,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=41tTudaQb0I','Note.\" WHERE `idlk2` = 1548'),
(517,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://oncesearch.com/category/ebony/4','Note.\" WHERE `idlk2` = 1548'),
(518,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ancient-egypt-online.com/amun.html','Note.\" WHERE `idlk2` = 1548'),
(519,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.guru99.com/unix-linux-tutorial.html','Note.\" WHERE `idlk2` = 1548'),
(520,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.kjluradio.com/','Note.\" WHERE `idlk2` = 1548'),
(521,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.abc17news.com/','Note.\" WHERE `idlk2` = 1548'),
(522,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.columbiamissourian.com/','Note.\" WHERE `idlk2` = 1548'),
(523,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.columbiatribune.com/','Note.\" WHERE `idlk2` = 1548'),
(524,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.komu.com/home/','Note.\" WHERE `idlk2` = 1548'),
(525,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/xwWidgets Book/0131473816_book.pdf','Note.\" WHERE `idlk2` = 1548'),
(526,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://krcgtv.com/','Note.\" WHERE `idlk2` = 1548'),
(527,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://docs.wxwidgets.org/trunk/classwx_web_view.html','Note.\" WHERE `idlk2` = 1548'),
(528,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/gp/product/B07BQ9SSH7/ref=oh_aui_detailpage_o02_s00?ie=UTF8&psc=1','Note.\" WHERE `idlk2` = 1548'),
(529,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.cnet.com/products/gigabyte-b360m-ds3h-1-0-motherboard-micro-atx-lga1151-socket-b360/specs/','Note.\" WHERE `idlk2` = 1548'),
(530,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.jw.org/en/publications/books/bible-teach/who-is-michael-the-archangel-jesus/','Note.\" WHERE `idlk2` = 1548'),
(531,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.cplusplus.com/forum/beginner/130716/','Note.\" WHERE `idlk2` = 1548'),
(532,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://archbrooks.us:943/admin/','Note.\" WHERE `idlk2` = 1548'),
(533,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/qbittorrent','Note.\" WHERE `idlk2` = 1548'),
(534,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=qnGkCk_npgo','Note.\" WHERE `idlk2` = 1548'),
(535,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.uctv.tv/','Note.\" WHERE `idlk2` = 1548'),
(536,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://bootstrapcreative.com/shop/bootstrap-quick-start/?gclid=EAIaIQobChMIvMC79aTS3QIVh6lpCh3F2AAHEAEYASAAEgKSEvD_BwE','Note.\" WHERE `idlk2` = 1548'),
(537,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://mashable.com/2013/10/20/bootstrap-editors/?europe=true','Note.\" WHERE `idlk2` = 1548'),
(538,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ZBejUQX49ls&list=PLS1QulWo1RIaBQ1DOYYiJz38edqH_zwM1','Note.\" WHERE `idlk2` = 1548'),
(539,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.trannytube.tv/category/black','Note.\" WHERE `idlk2` = 1548'),
(540,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://ubuntuforums.org/showthread.php?t=1807307','Note.\" WHERE `idlk2` = 1548'),
(541,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.shemales-time.com/en/1079/masturbation/2/','Note.\" WHERE `idlk2` = 1548'),
(542,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.shemales-time.com/en/13/ebony/2/','Note.\" WHERE `idlk2` = 1548'),
(543,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://coursetro.com/posts/code/130/Learn-Bootstrap-4-Final-in-2018-with-our-Free-Crash-Course','Note.\" WHERE `idlk2` = 1548'),
(544,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://datatables.net/manual/installation','Note.\" WHERE `idlk2` = 1548'),
(545,162,'https://archman.us:10000/\",`lnk`=\" Webmin','file:///home/archman/apps/wt-4.0.4/INSTALL.html','Note.\" WHERE `idlk2` = 1548'),
(546,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.webtoolkit.eu/wt/download','Note.\" WHERE `idlk2` = 1548'),
(547,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.snopes.com/fact-check/supreme-court-rule-1943-patriotic-rituals/','Note.\" WHERE `idlk2` = 1548'),
(548,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://smallbusiness.chron.com/list-printers-ubuntu-command-line-57593.html','Note.\" WHERE `idlk2` = 1548'),
(561,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=NDcfKNQBqAk','Note.\" WHERE `idlk2` = 1548'),
(569,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=DW-A5Eg4EMc','Note.\" WHERE `idlk2` = 1548'),
(570,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/php-latest-released/eclipse/eclipse','Note.\" WHERE `idlk2` = 1548'),
(571,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.thespruce.com/laundry-starched-shirts-at-home-2146170','Note.\" WHERE `idlk2` = 1548'),
(572,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.fiverr.com/faizan073/program-in-java-cpp-or-c-language?context_referrer=search_gigs&context_type=auto&pckg_id=1&pos=29&ref_ctx_id=74954ff5-4baf-4c2b-80b8-c9a8d43a9b14&funnel=793ff365-fe30-453b-8aee-bf921c32484b','Note.\" WHERE `idlk2` = 1548'),
(573,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.fiverr.com/danishsuthar?source=gig-cards&ref_ctx_id=74954ff5-4baf-4c2b-80b8-c9a8d43a9b14','Note.\" WHERE `idlk2` = 1548'),
(575,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.fiverr.com/smartelectrons/design-and-develop-your-high-end-c-cpp-programs?context_referrer=search_gigs&context_type=auto&pckg_id=1&pos=39&ref_ctx_id=df363f70-9fe4-4111-b3f9-b4f0b5aeaaaa&funnel=b6d53eee-3d0b-4476-b3ff-dc20b671016c','Note.\" WHERE `idlk2` = 1548'),
(576,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://missouribuys.mo.gov/','Note.\" WHERE `idlk2` = 1548'),
(577,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.dice.com/jobs/detail/57026292ae31c49a98b8769e11808daf?src=32&CMPID=AG_ZR_PD_JS_US_OG_RC_&utm_campaign=Advocacy_Ongoing&utm_medium=Aggregator&utm_&rx_campaign=ziprecruiter26&rx_group=100954&rx_job=10330808%2F57026292ae31c49a98b8769e11808daf&rx_medium=cpc&rx_&zip_cid=aef26c5d-a377-47f5-8d55-c8fe068199fc','Note.\" WHERE `idlk2` = 1548'),
(578,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/IBM_Z','Note.\" WHERE `idlk2` = 1548'),
(579,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.hercules-390.org/','Note.\" WHERE `idlk2` = 1548'),
(580,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GRW4iPhCDSM','Note.\" WHERE `idlk2` = 1548'),
(581,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=CZwZuUPCAto','Note.\" WHERE `idlk2` = 1548'),
(582,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://search.google.com/search-console?resource_id=http%3A%2F%2Farchbrooks.us%2Fwp%2F&hl=en','Note.\" WHERE `idlk2` = 1548'),
(583,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.webtoolkit.eu/wt/doc/tutorial/wt.html','Note.\" WHERE `idlk2` = 1548'),
(584,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://github.com/trokam/step2.trokam.com/blob/master/src/topWindow.cpp','Note.\" WHERE `idlk2` = 1548'),
(585,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=wA_MkFKHkrA&feature=youtu.be','Note.\" WHERE `idlk2` = 1548'),
(586,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ixxx.com/c/ebony-shemale?page=35','Note.\" WHERE `idlk2` = 1548'),
(587,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://kubuntu.org/news/plasma-5-14-2-available-in-cosmic-backports-ppa/','Note.\" WHERE `idlk2` = 1548'),
(588,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.linuxbabe.com/ubuntu/upgrade-ubuntu-18-04-to-ubuntu-18-10','Note.\" WHERE `idlk2` = 1548'),
(589,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6YNZlXfW6Ho','Note.\" WHERE `idlk2` = 1548'),
(590,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=W16bk86xIY0','Note.\" WHERE `idlk2` = 1548'),
(591,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LsoLEjrDogU','Note.\" WHERE `idlk2` = 1548'),
(592,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=UqyT8IEBkvY','Note.\" WHERE `idlk2` = 1548'),
(593,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.dummies.com/programming/cpp/source-code-from-c-for-dummies/','Note.\" WHERE `idlk2` = 1548'),
(594,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://blit.tech/','Note.\" WHERE `idlk2` = 1548'),
(595,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://tech.slashdot.org/story/18/11/12/2353231/the-next-version-of-http-wont-be-using-tcp','Note.\" WHERE `idlk2` = 1548'),
(596,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/kubuntu/KubuntuManual.pdf','Note.\" WHERE `idlk2` = 1548'),
(597,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ubuntupit.com/15-best-linux-screen-recorder-and-how-to-install-those-on-ubuntu/','Note.\" WHERE `idlk2` = 1548'),
(598,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://jaxenter.com/jax-magazine','Note.\" WHERE `idlk2` = 1548'),
(599,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B07BN4NJ2J?ref_=pfb_783ij025ml293d24g30heed53dj9&tag=hydfbook0e-20&ascsubtag=pfb-P05-V01-A-O3-X95-HI-AKSQY4','Note.\" WHERE `idlk2` = 1548'),
(600,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B0784SY515/ref=sspa_dk_detail_3?psc=1&pd_rd_i=B0784SY515&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=1713835751726239774&pf_rd_r=CV36TW98VENRCR6PFJRM&pd_rd_wg=e5s8G&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&pd_rd_w=GhVL7&pf_rd_i=desktop-dp-sims&pd_rd_r=b8f7077e-9d7d-11e8-af6e-0720243a5fcc','Note.\" WHERE `idlk2` = 1548'),
(601,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/gp/product/B07BQ9SSH7/ref=oh_aui_detailpage_o02_s00?ie=UTF8&psc=1','Note.\" WHERE `idlk2` = 1548'),
(602,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.cnet.com/products/gigabyte-b360m-ds3h-1-0-motherboard-micro-atx-lga1151-socket-b360/specs/','Note.\" WHERE `idlk2` = 1548'),
(603,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://kubuntu.org/news/','Note.\" WHERE `idlk2` = 1548'),
(604,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/Tes38/Release/Tes38','Note.\" WHERE `idlk2` = 1548'),
(605,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/kazam','Note.\" WHERE `idlk2` = 1548'),
(606,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/kdenlive','Note.\" WHERE `idlk2` = 1548'),
(607,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=VrahRf7KsNk','Note.\" WHERE `idlk2` = 1548'),
(608,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=WsqTkkUzH5w','Note.\" WHERE `idlk2` = 1548'),
(609,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=HbQvkFPTqLY','Note.\" WHERE `idlk2` = 1548'),
(610,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=8BgRO81Y5fU','Note.\" WHERE `idlk2` = 1548'),
(611,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TcaRwlDdhao','Note.\" WHERE `idlk2` = 1548'),
(612,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5qq_qnLHf74','Note.\" WHERE `idlk2` = 1548'),
(613,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/Tes32/Release/Tes32','Note.\" WHERE `idlk2` = 1548'),
(614,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://dbrl.org','Note.\" WHERE `idlk2` = 1548'),
(616,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/kdenlive','Note.\" WHERE `idlk2` = 1548'),
(617,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.kewpie.net/ClassMemorial/1970memorial.html','Note.\" WHERE `idlk2` = 1548'),
(618,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://github.com/PacktPublishing/Bash-Scripting-Solutions-video-','Note.\" WHERE `idlk2` = 1548'),
(619,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://archbrooks.us:943/admin/','Note.\" WHERE `idlk2` = 1548'),
(620,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://getbootstrap.com/','Note.\" WHERE `idlk2` = 1548'),
(621,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.sessions.edu/color-calculator/','Note.\" WHERE `idlk2` = 1548'),
(622,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.spacex.com/','Note.\" WHERE `idlk2` = 1548'),
(623,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.reddit.com/r/cpp/comments/luxxg/a_list_of_rss_c_blogs/','Note.\" WHERE `idlk2` = 1548'),
(624,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=XrsgB48Fr8Q','Note.\" WHERE `idlk2` = 1548'),
(625,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://wordpress.com/go/content-blogging/ways-to-monetize-a-blog/?utm_source=fbads&utm_medium=cpc&utm_campaign=FBProspectingContentPromotion-May2018_US&fbclid=IwAR0hFk07FmnJZl7Y0SrKkhfa2iCQQ-fdOqCxkjKbliWMjJyfctRJnMGRg2w','Note.\" WHERE `idlk2` = 1548'),
(626,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.treefrogframework.org/','Note.\" WHERE `idlk2` = 1548'),
(627,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://siliconframework.org/blog/a_simple_silicon_blog_api.html','Note.\" WHERE `idlk2` = 1548'),
(629,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://store.steampowered.com/','Note.\" WHERE `idlk2` = 1548'),
(630,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://docs.kde.org/stable5/en/applications/konqueror/index.html','Note.\" WHERE `idlk2` = 1548'),
(631,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.codeguru.com/cpp/data/database-programming-with-cc.html','Note.\" WHERE `idlk2` = 1548'),
(632,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://itch.io/jam/como-game-jam-v','Note.\" WHERE `idlk2` = 1548'),
(633,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://atlantablackstar.com/2013/10/06/10-black-scholars-debunked-eurocentric-propaganda/?fbclid=IwAR2bNzsbyducDE1g7Ov7L3b7UEGlaoL-yIkMp8uyH9Tp5Yh_iQp2x9snO6I','Note.\" WHERE `idlk2` = 1548'),
(634,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/CorleyTaalibah/posts/2499160436779207','Note.\" WHERE `idlk2` = 1548'),
(635,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://atlantablackstar.com/2014/11/26/6-startling-things-about-sex-farms-during-slavery-that-you-may-not-know/?fbclid=IwAR1vHwSedIUCM-jznxd2_ELeGdl7qPuD_ZdFiiXQlbFWKKVa7pWhF1j7RlY','Note.\" WHERE `idlk2` = 1548'),
(636,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.smithsonianmag.com/history/lesser-known-history-african-american-cowboys-180962144/?fbclid=IwAR3xDLkWNcGV0Q8LA2eXj82d42mlkrSkBa0oz0_PfFXNmV_O-g14fu0spP0#8M3APK25ciOuD79O.99','Note.\" WHERE `idlk2` = 1548'),
(637,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/ANGELO.C.TURNER/posts/2221921431201580','Note.\" WHERE `idlk2` = 1548'),
(638,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.philly.com/philly/columnists/mike_newall/tuskegegee-lynching-walter-manning-philadelphia-austria-nazi-20180420.html?__vfz=medium%3Dsharebar&fbclid=IwAR0t4hY0hXVRy8I0kN1Y33GVuaGnZKCweIWMMWhFyWb0s3HEelTaX-UUnWM','Note.\" WHERE `idlk2` = 1548'),
(639,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/photo.php?fbid=2507365449305739&set=a.117504778291830&type=3&theater','Note.\" WHERE `idlk2` = 1548'),
(640,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.whenweruled.com/','Note.\" WHERE `idlk2` = 1548'),
(641,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://dev.mysql.com/doc/connector-cpp/1.1/en/connector-cpp-examples-complete-example-2.html','Note.\" WHERE `idlk2` = 1548'),
(642,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://brilliant.org/','Note.\" WHERE `idlk2` = 1548'),
(643,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/kinfocenter','Note.\" WHERE `idlk2` = 1548'),
(644,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.millardfamilychapels.com/obituaries/','Note.\" WHERE `idlk2` = 1548'),
(645,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.htmayfuneralhome.com/obituaries/','Note.\" WHERE `idlk2` = 1548'),
(646,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.kewpie.net/ClassMemorial/1970memorial.html','Note.\" WHERE `idlk2` = 1548'),
(647,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/xw/Tes37/Release/Tes37','Note.\" WHERE `idlk2` = 1548'),
(648,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/local/bin/codeblocks','Note.\" WHERE `idlk2` = 1548'),
(649,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://github.com/bthachdev/web_browser','Note.\" WHERE `idlk2` = 1548'),
(650,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://anchor.fm/tron-jordheim/episodes/Arch-Brooks-talks-about-software-development-since-the-beginning--Punchcards-to-code-generators-e384cg','Note.\" WHERE `idlk2` = 1548'),
(651,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://humansarefree.com/2018/04/the-vatican-removed-14-books-from-bible.html?utm_campaign=shareaholic&utm_medium=facebook&utm_source=socialnetwork&&m=0&fbclid=IwAR2I03aWKVkd32-kI053TLefyUQ6XqhFcHDc9amoimdbfEMTz1sun0NZonE','Note.\" WHERE `idlk2` = 1548'),
(652,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.python.org/doc/','Note.\" WHERE `idlk2` = 1548'),
(653,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.techstars.com/','Note.\" WHERE `idlk2` = 1548'),
(654,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/eclipse/liclipse/LiClipse','Note.\" WHERE `idlk2` = 1548'),
(655,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://bsd.sos.mo.gov/BusinessEntity/BESearch.aspx?SearchType=0','Note.\" WHERE `idlk2` = 1548'),
(656,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://onlineradiobox.com/us/kprs/?cs=us.kprs&played=1','Note.\" WHERE `idlk2` = 1548'),
(657,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://onlineradiobox.com/us/kprs/?cs=us.kprs&played=1','Note.\" WHERE `idlk2` = 1548'),
(658,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://wiki.codeblocks.org/index.php/Installing_Code::Blocks_from_source_on_Linux','Note.\" WHERE `idlk2` = 1548'),
(659,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://slashdot.org/','Note.\" WHERE `idlk2` = 1548'),
(660,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://community.kde.org/Raspberry_Pi','Note.\" WHERE `idlk2` = 1548'),
(662,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.msn.com/','Note.\" WHERE `idlk2` = 1548'),
(665,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Author A Book','Note.\" WHERE `idlk2` = 1548'),
(668,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/user/archman007','Note.\" WHERE `idlk2` = 1548'),
(671,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.abc17news.com/news/columbia','Note.\" WHERE `idlk2` = 1548'),
(674,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://libertywritersafrica.com/africans-discovered-america-around-1292-bc-not-columbus-read-the-complete-history/?fbclid=IwAR3tQKo-vsfmTKwZ41XuQsb41vdMkHaZJmVESdoqcFyNS-Qp8ZtdOilm8Yk','Note.\" WHERE `idlk2` = 1548'),
(678,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://kubuntu.org/news/kubuntu-disco-dingo-19-04-beta-released/','Note.\" WHERE `idlk2` = 1548'),
(682,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/cb/cpp/zip1/bin/Release/zip1','Note.\" WHERE `idlk2` = 1548'),
(683,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://kde.org/','Note.\" WHERE `idlk2` = 1548'),
(684,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/rstudio','Note.\" WHERE `idlk2` = 1548'),
(685,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.msn.com/','Note.\" WHERE `idlk2` = 1548'),
(686,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/codelite','Note.\" WHERE `idlk2` = 1548'),
(687,162,'https://archman.us:10000/\",`lnk`=\" Webmin','python3 /usr/local/bin/opencobolide','Note.\" WHERE `idlk2` = 1548'),
(688,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://people.sc.fsu.edu/~jburkardt/f_src/f_src.html','Note.\" WHERE `idlk2` = 1548'),
(689,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.boost.org/doc/libs/1_69_0/libs/filesystem/doc/tutorial.html','Note.\" WHERE `idlk2` = 1548'),
(690,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.technical-recipes.com/2014/using-boostfilesystem/','Note.\" WHERE `idlk2` = 1548'),
(691,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://astromachineworks.com/what-is-cnc-machining/','Note.\" WHERE `idlk2` = 1548'),
(692,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/WhiteHouseHistory/photos/a.168214769870461/2892820220743222/?type=3&theater','Note.\" WHERE `idlk2` = 1548'),
(693,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://solomonperry.wixsite.com/myexodusorg','Note.\" WHERE `idlk2` = 1548'),
(694,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/falkon','Note.\" WHERE `idlk2` = 1548'),
(695,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.webtoolkit.eu/wt/doc/reference/html/index.html','Note.\" WHERE `idlk2` = 1548'),
(696,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.geeksforgeeks.org/passing-by-pointer-vs-passing-by-reference-in-c/','Note.\" WHERE `idlk2` = 1548'),
(697,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://www.simotime.com/compgnit.htm','Note.\" WHERE `idlk2` = 1548'),
(698,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://myutilitybill.como.gov/manage-services/pay-bills','Note.\" WHERE `idlk2` = 1548'),
(699,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://support.mediacomcable.com/#!/Log/In?eBilling=true','Note.\" WHERE `idlk2` = 1548'),
(700,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://docs.python.org/3/tutorial/index.html','Note.\" WHERE `idlk2` = 1548'),
(701,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.w3schools.com/python/','Note.\" WHERE `idlk2` = 1548'),
(702,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.speedtest.net/','Note.\" WHERE `idlk2` = 1548'),
(703,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://whatismyipaddress.com/','Note.\" WHERE `idlk2` = 1548'),
(705,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://whatismyipaddress.com/','Note.\" WHERE `idlk2` = 1548'),
(706,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://theafricanhistory.com/1099?fbclid=IwAR0ozQti8zJ0Ddt5Gt91ynwuOHqoFuHrV1o5FYNVa3s5ak8HCq_VXyTEHa0','Note.\" WHERE `idlk2` = 1548'),
(707,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/ark','Note.\" WHERE `idlk2` = 1548'),
(708,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://theafricanhistory.com/1099?fbclid=IwAR3o78xAOPlMy4w1kZFbeZnAycOXRHOhUsMhzWxgYeks7M9A3REKvwE8uro','Note.\" WHERE `idlk2` = 1548'),
(710,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://archbrooks.us/b4/','Note.\" WHERE `idlk2` = 1548'),
(711,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://archbrooks.us/b4/','Note.\" WHERE `idlk2` = 1548'),
(729,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xxxdan.com/channel/masturbation/781','Note.\" WHERE `idlk2` = 1548'),
(730,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xxxdan.com/q7qej/japanese-girls-go-pee-over-the-toilet-in-their-panties.html','Note.\" WHERE `idlk2` = 1548'),
(731,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xnxx.com/video-16lywf18/the_chemistry_between_jayla_de_angelis_kiara_lord_and_lana_roy_is_terrific._they_start_by_undressing_each_other_followed_by_caresses_kisses_and_touches.#show-related','Note.\" WHERE `idlk2` = 1548'),
(732,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xnxx.com/video-zihlld0/three_cute_lesbian_roommates_give_each_other_hot_threeway_orgasms','Note.\" WHERE `idlk2` = 1548'),
(733,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xxxdan.com/bk6X9/watch-the-tea-service.html','Note.\" WHERE `idlk2` = 1548'),
(736,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/59wdd/video/patroa+abusa+de+sua+empregada','Note.\" WHERE `idlk2` = 1548'),
(737,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://hdsex.org/video/47573955?utm_source=oklax&utm_medium=click&utm_campaign=oklax','Note.\" WHERE `idlk2` = 1548'),
(738,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.lesbianpornvideos.com/?t=52&utm_source=ratedgross.com','Note.\" WHERE `idlk2` = 1548'),
(739,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://hotmovs.com/videos/8906830/teen-lesbians-threesome-pissing-party/?fr=8906830&rp=3','Note.\" WHERE `idlk2` = 1548'),
(742,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/IM-1.pdf','Note.\" WHERE `idlk2` = 1548'),
(743,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/COBOL.odt','Note.\" WHERE `idlk2` = 1548'),
(744,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/?k=Japanese%20lesbian%20piss','Note.\" WHERE `idlk2` = 1548'),
(747,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/cb/cpp/gf01/bin/Release/gf01','Note.\" WHERE `idlk2` = 1548'),
(750,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2Cp8Ti_f9Gk','Note.\" WHERE `idlk2` = 1548'),
(751,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ZEwVdAxdzys','Note.\" WHERE `idlk2` = 1548'),
(752,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=32iBQvIZQxU','Note.\" WHERE `idlk2` = 1548'),
(753,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://pisshamster.com/29948-lesbo-aussie-professor-gets-hot/','Note.\" WHERE `idlk2` = 1548'),
(755,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/cb/cpp/grailsGen/bin/Release/grailsGen','Note.\" WHERE `idlk2` = 1548'),
(756,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/passwords.odt','Note.\" WHERE `idlk2` = 1548'),
(757,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/video25937503/teach_me_fisting_-_nicolette_lexi_dona','Note.\" WHERE `idlk2` = 1548'),
(758,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/video51454531/siswet_does_extreme_deep_elbow_fisting_see_her_live_on_girls4cock.com_siswet19','Note.\" WHERE `idlk2` = 1548'),
(759,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SrEjoJ_G6tc','Note.\" WHERE `idlk2` = 1548'),
(760,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.analdin.xxx/videos/243427/lactating-lesbians-blowing-eachothers-huge-boobs-big-nipples/','Note.\" WHERE `idlk2` = 1548'),
(761,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/video21514737/caught_masturbator_-_by_sapphic_erotica_lesbian_sex_with_kissy_daphne','Note.\" WHERE `idlk2` = 1548'),
(762,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://forums.wxwidgets.org/viewtopic.php?f=1&t=50272','Note.\" WHERE `idlk2` = 1548'),
(763,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=HmyfjAaPW0g','Note.\" WHERE `idlk2` = 1548'),
(765,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=KmLQLSKqvvI&list=PLwOF5UVsZWUjNR3roRK79QgBcKLyOX48I','Note.\" WHERE `idlk2` = 1548'),
(766,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=HmyfjAaPW0g','Note.\" WHERE `idlk2` = 1548'),
(767,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=HmyfjAaPW0g','Note.\" WHERE `idlk2` = 1548'),
(769,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=KmLQLSKqvvI','Note.\" WHERE `idlk2` = 1548'),
(770,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=axIpjQ4h8qU','Note.\" WHERE `idlk2` = 1548'),
(771,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=XEAqgcoSlk4','Note.\" WHERE `idlk2` = 1548'),
(772,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TE1Hpi1SSaE','Note.\" WHERE `idlk2` = 1548'),
(773,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dYFeNfhnd18','Note.\" WHERE `idlk2` = 1548'),
(774,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.boost.org/doc/libs/1_69_0/libs/filesystem/doc/tutorial.html','Note.\" WHERE `idlk2` = 1548'),
(775,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.boost.org/doc/libs/1_69_0/libs/filesystem/doc/tutorial.html','Note.\" WHERE `idlk2` = 1548'),
(776,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://duckduckgo.com/?q=what+is+flask+for+python+&ia=web','Note.\" WHERE `idlk2` = 1548'),
(777,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://pythonbasics.org/what-is-flask-python/','Note.\" WHERE `idlk2` = 1548'),
(778,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://pythonbasics.org/what-is-flask-python/','Note.\" WHERE `idlk2` = 1548'),
(779,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://pythonbasics.org/what-is-flask-python/','Note.\" WHERE `idlk2` = 1548'),
(780,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://pythonbasics.org/what-is-flask-python/','Note.\" WHERE `idlk2` = 1548'),
(781,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://pythonbasics.org/what-is-flask-python/','Note.\" WHERE `idlk2` = 1548'),
(782,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://duckduckgo.com/?q=what+is+flask+for+python+&ia=web','Note.\" WHERE `idlk2` = 1548'),
(783,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://pythoncourses.gumroad.com/l/IMzBy','Note.\" WHERE `idlk2` = 1548'),
(784,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/japanese-teacher-convinced-by-schoolgirl-to-do-lesbian-acts-8502878','Note.\" WHERE `idlk2` = 1548'),
(788,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/forbidden-lesbian-2-8455309','Note.\" WHERE `idlk2` = 1548'),
(789,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TE1Hpi1SSaE','Note.\" WHERE `idlk2` = 1548'),
(790,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=8pH5Lv4d5-g','Note.\" WHERE `idlk2` = 1548'),
(791,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SK8D1bdJh7s','Note.\" WHERE `idlk2` = 1548'),
(792,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=U1qzt-b_kDc','Note.\" WHERE `idlk2` = 1548'),
(793,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://onlineradiobox.com/us/weup/?cs=us.weup&played=1','Note.\" WHERE `idlk2` = 1548'),
(794,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://player.listenlive.co/20271','Note.\" WHERE `idlk2` = 1548'),
(795,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://player.listenlive.co/20271','Note.\" WHERE `idlk2` = 1548'),
(796,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/85tle/video/japanese+brunette+big+tits+akari+asayiri+is+masturbating+uses+a+vibrator+on+her+pussy+uncensored','Note.\" WHERE `idlk2` = 1548'),
(797,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xnxx.com/video-10sd8le3/japanese_girl_yua_takanashi_sticks_her_hand_in_her_shorts_and_starts_masturbating','Note.\" WHERE `idlk2` = 1548'),
(798,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xnxx.com/video-tdc0l1a/sarina_kurokawa_masturbating_while_reading_a_pornographic_book','Note.\" WHERE `idlk2` = 1548'),
(799,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xnxx.com/video-z3rkr5f/voyeur_japanese_girl_masturbation_through_window','Note.\" WHERE `idlk2` = 1548'),
(800,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.analdin.com/videos/542547/titty-blowing-compilation-with-horny-babes/','Note.\" WHERE `idlk2` = 1548'),
(801,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/6zqw0-fbkt8j/playlist/japan','Note.\" WHERE `idlk2` = 1548'),
(802,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/6zqw0-fbkz41/playlist/japan','Note.\" WHERE `idlk2` = 1548'),
(803,162,'https://archman.us:10000/\",`lnk`=\" Webmin','C:Program Files (x86)TechSmithCamtasia Studio 8CamtasiaStudio.exe','Note.\" WHERE `idlk2` = 1548'),
(804,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://txxx.com/videos/1638058/two-junior-ladies-enjoy-watching-each-other-masturbate/?promo=11914','Note.\" WHERE `idlk2` = 1548'),
(805,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.porndr.com/videos/119718/3-smoking-super-hot-women-preeti-priya-and-their-fresh-mate-are-providing-enjoyment-to-each-other/?utm_source=webclicks24&utm_medium=webclicks24&utm_campaign=webclicks24','Note.\" WHERE `idlk2` = 1548'),
(806,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.geeksforgeeks.org/stdstringcompare-in-c/','Note.\" WHERE `idlk2` = 1548'),
(807,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xnxx.com/video-10x1yda2/lesbians_masturbate_watching_each_other','Note.\" WHERE `idlk2` = 1548'),
(808,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Q5_sBF2d9tI','Note.\" WHERE `idlk2` = 1548'),
(809,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.its.porn/video/blonde-babe-pussy-licking-big-tits-lesbian-stepmom-in-law/?utm_source=aht','Note.\" WHERE `idlk2` = 1548'),
(810,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.lesbianpornvideos.com/?t=52&utm_source=ratedgross.com','Note.\" WHERE `idlk2` = 1548'),
(811,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/looking-at-girlfriends-12662229','Note.\" WHERE `idlk2` = 1548'),
(812,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/stepmommy-lez-milf-teaching-her-taboo-babe-how-to-rub-pussy-xhQFJFI','Note.\" WHERE `idlk2` = 1548'),
(813,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/busty-stepdaughter-talks-dirty-before-wildly-fingering-twat-xhHoDwI','Note.\" WHERE `idlk2` = 1548'),
(814,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/asshole-loving-lesbians-xhqLPnk','Note.\" WHERE `idlk2` = 1548'),
(815,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/?k=Japanese%20lesbian%20piss','Note.\" WHERE `idlk2` = 1548'),
(816,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/blonde-olga-barz-gets-fucked-in-the-ass-xhEbbFL','Note.\" WHERE `idlk2` = 1548'),
(817,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/put-your-hand-in-my-panties-7548613','Note.\" WHERE `idlk2` = 1548'),
(818,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://oxetta.com/','Note.\" WHERE `idlk2` = 1548'),
(819,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://sourceforge.net/directory/report-generators/linux/','Note.\" WHERE `idlk2` = 1548'),
(820,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-epPf7D8oMk','Note.\" WHERE `idlk2` = 1548'),
(821,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TBQwmcBRNoM','Note.\" WHERE `idlk2` = 1548'),
(822,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/c++ books/Cross-Platform GUI Programming with wxWidgets.pdf','Note.\" WHERE `idlk2` = 1548'),
(824,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/bathing-lesbian-sluts-12535080','Note.\" WHERE `idlk2` = 1548'),
(825,162,'https://archman.us:10000/\",`lnk`=\" Webmin','lesbian seduction','Note.\" WHERE `idlk2` = 1548'),
(826,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/you-like-the-way-my-pussy-smells-on-your-panties-8267966','Note.\" WHERE `idlk2` = 1548'),
(827,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/2oa0v-ddouoz/playlist/ifm','Note.\" WHERE `idlk2` = 1548'),
(828,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/6se9b/video/shari+ifm+masturbation+collage+pt3','Note.\" WHERE `idlk2` = 1548'),
(829,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/2oa0v-dgamk6/playlist/ifm','Note.\" WHERE `idlk2` = 1548'),
(830,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/3x0zn/video/unbelievable','Note.\" WHERE `idlk2` = 1548'),
(831,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/7s5be/video/masturbation','Note.\" WHERE `idlk2` = 1548'),
(832,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/5ibq0-acuenz/playlist/orgasm','Note.\" WHERE `idlk2` = 1548'),
(833,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://hotgirlscumming.com/lovely-housewife-having-standing-orgasm/','Note.\" WHERE `idlk2` = 1548'),
(834,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://hotgirlscumming.com/babe-fingering-herself-in-the-basement/','Note.\" WHERE `idlk2` = 1548'),
(835,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/lady-100-lesbian-club-saotome-rabu-kohaku-uta-mio-mikuru-erojapanese-com-xhiTUY7','Note.\" WHERE `idlk2` = 1548'),
(836,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://justpornflix.com/videos/4339/how-many-lesbians-does-it-take-to-look-under-the-hood/?utm_source=pbw&utm_campaign=plugs','Note.\" WHERE `idlk2` = 1548'),
(837,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://justpornflix.com/videos/4339/how-many-lesbians-does-it-take-to-look-under-the-hood/?utm_source=pbw&utm_campaign=plugs','Note.\" WHERE `idlk2` = 1548'),
(838,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(840,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://angular.io/guide/devtools','Note.\" WHERE `idlk2` = 1548'),
(852,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Estimate.pdf','Note.\" WHERE `idlk2` = 1548'),
(853,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/','Note.\" WHERE `idlk2` = 1548'),
(854,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=KR18gJlJY8Q','Note.\" WHERE `idlk2` = 1548'),
(855,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/peed-and-masturbated-in-bed-14972792','Note.\" WHERE `idlk2` = 1548'),
(856,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/peeing-wearing-panties-leggings-and-skirts-xhrD6gZ','Note.\" WHERE `idlk2` = 1548'),
(857,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.tubewolf.com/movies/interracial-gloryhole-fun-with-naughty-dee-williams-kali-roses/?promoid=AlexZ','Note.\" WHERE `idlk2` = 1548'),
(858,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=QTxe8ASdxE0','Note.\" WHERE `idlk2` = 1548'),
(859,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=JvojKiKnp_w','Note.\" WHERE `idlk2` = 1548'),
(860,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=EMvIgNcej-w&t=1596s&pp=sAQB','Note.\" WHERE `idlk2` = 1548'),
(861,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.hostingadvice.com/how-to/month-to-month-web-hosting/','Note.\" WHERE `idlk2` = 1548'),
(862,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.hostgator.com/vps-hosting','Note.\" WHERE `idlk2` = 1548'),
(863,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=iKSj3AyGq8w','Note.\" WHERE `idlk2` = 1548'),
(864,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://109.203.114.119:10000/','Note.\" WHERE `idlk2` = 1548'),
(865,162,'https://archman.us:10000/\",`lnk`=\" Webmin','putty','Note.\" WHERE `idlk2` = 1548'),
(866,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youporn.com/watch/15703810/lovely-hairy-lesbians-pleasure-each-others-bush/','Note.\" WHERE `idlk2` = 1548'),
(867,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://xhamster.com/videos/peeing-wearing-panties-leggings-and-skirts-xhrD6gZ','Note.\" WHERE `idlk2` = 1548'),
(868,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youporn.com/watch/16121238/hot-lesbians-striptease-and-masturbate-each-other/','Note.\" WHERE `idlk2` = 1548'),
(869,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://mycw120.ecwcloud.com/portal16553/jsp/100mp/login_otp.jsp','Note.\" WHERE `idlk2` = 1548'),
(870,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Zzco7nDLo1k','Note.\" WHERE `idlk2` = 1548'),
(871,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=37J449tTrwg','Note.\" WHERE `idlk2` = 1548'),
(872,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_iq4UmxIBK8','Note.\" WHERE `idlk2` = 1548'),
(873,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=QC8sKuN352w&pp=sAQB','Note.\" WHERE `idlk2` = 1548'),
(874,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LRUaL3fr2uY','Note.\" WHERE `idlk2` = 1548'),
(875,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.symbolab.com/solver/algebra-calculator','Note.\" WHERE `idlk2` = 1548'),
(876,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=mgWiHY8UE5c','Note.\" WHERE `idlk2` = 1548'),
(877,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TbNornZ3-ik','Note.\" WHERE `idlk2` = 1548'),
(878,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=a0Kr1TwKhQk&t=22s','Note.\" WHERE `idlk2` = 1548'),
(879,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=PiSqFmWwmKg','Note.\" WHERE `idlk2` = 1548'),
(880,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://stackoverflow.com/questions/26727794/sorting-wxlistctrl-alphabetically-without-using-setitemdata','Note.\" WHERE `idlk2` = 1548'),
(881,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Ya1oGL7ZTvU','Note.\" WHERE `idlk2` = 1548'),
(882,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.columbiatribune.com/news/','Note.\" WHERE `idlk2` = 1548'),
(883,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TRwXKWQ2i00&t=321s','Note.\" WHERE `idlk2` = 1548'),
(884,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=AGmKHntgwyg','Note.\" WHERE `idlk2` = 1548'),
(886,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=p-sprvJX07E','Note.\" WHERE `idlk2` = 1548'),
(887,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=rHux0gMZ3Eg','Note.\" WHERE `idlk2` = 1548'),
(888,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ZzaPdXTrSb8&t=16s','Note.\" WHERE `idlk2` = 1548'),
(889,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xnxx.com/video-16r9zp4a/hidden_shooting_nail_salon_no_hand_pee_leakage','Note.\" WHERE `idlk2` = 1548'),
(890,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=B4OhuzwLc9o','Note.\" WHERE `idlk2` = 1548'),
(892,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=a89vqgK-Qcs','Note.\" WHERE `idlk2` = 1548'),
(893,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=0gomKtNerCY&pp=sAQB','Note.\" WHERE `idlk2` = 1548'),
(894,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=0gomKtNerCY&pp=sAQB','Note.\" WHERE `idlk2` = 1548'),
(895,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ePA-Tg4sJf8&pp=sAQB','Note.\" WHERE `idlk2` = 1548'),
(896,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=YsH3B9qVShE','Note.\" WHERE `idlk2` = 1548'),
(897,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/video1665740/masturbating_on_the_couch','Note.\" WHERE `idlk2` = 1548'),
(898,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/video21838011/japanese_lesbian_peeing_and_squirting_compilation_-_mropete','Note.\" WHERE `idlk2` = 1548'),
(899,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/s?k=motherboard+ddr5+four+ssd+ports&i=electronics&crid=1PSFAFXKVHTZL&sprefix=motherboard+ddr5+four+ssd+ports%2Celectronics%2C98&ref=nb_sb_noss','Note.\" WHERE `idlk2` = 1548'),
(900,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/s?k=motherboard+ddr5+four+ssd+ports&i=electronics&crid=1PSFAFXKVHTZL&sprefix=motherboard+ddr5+four+ssd+ports%2Celectronics%2C98&ref=nb_sb_noss','Note.\" WHERE `idlk2` = 1548'),
(902,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/hz/mycd/digital-console/contentlist/booksAll/dateDsc/','Note.\" WHERE `idlk2` = 1548'),
(903,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://verified.capitalone.com/auth/signin?Product=ENTERPRISE#/Card/Fj2q51QFDwdLtxmIt3N244VK1xx42d48s+FCz6yWSIw=','Note.\" WHERE `idlk2` = 1548'),
(905,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Aramaic_language','Note.\" WHERE `idlk2` = 1548'),
(906,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Aramaic','Note.\" WHERE `idlk2` = 1548'),
(907,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://archbrooks.us:10000','Note.\" WHERE `idlk2` = 1548'),
(908,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=nWbJJ4RnPx8','Note.\" WHERE `idlk2` = 1548'),
(909,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Aramaic','Note.\" WHERE `idlk2` = 1548'),
(910,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=4sosXZsdy-s','Note.\" WHERE `idlk2` = 1548'),
(911,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-qfEOE4vtxE','Note.\" WHERE `idlk2` = 1548'),
(912,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(913,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=WPAiTlQr7no','Note.\" WHERE `idlk2` = 1548'),
(914,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=eow125xV5-c','Note.\" WHERE `idlk2` = 1548'),
(915,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TJF4ldO91n4','Note.\" WHERE `idlk2` = 1548'),
(916,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=MscGIBk68So','Note.\" WHERE `idlk2` = 1548'),
(917,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1v_XcJsGtyA','Note.\" WHERE `idlk2` = 1548'),
(918,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=c9B4TPnak1A','Note.\" WHERE `idlk2` = 1548'),
(919,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://ibm.github.io/zopeneditor-about/Docs/introduction.html#key-capabilities','Note.\" WHERE `idlk2` = 1548'),
(920,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ud1R3M1g6yw','Note.\" WHERE `idlk2` = 1548'),
(921,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=eQdDBhQpU9o','Note.\" WHERE `idlk2` = 1548'),
(922,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1nxSE0R27Gg','Note.\" WHERE `idlk2` = 1548'),
(924,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fXYMM3vjvd4','Note.\" WHERE `idlk2` = 1548'),
(925,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=gGXS513Vj60','Note.\" WHERE `idlk2` = 1548'),
(926,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://en.wikipedia.org/wiki/Aramaic','Note.\" WHERE `idlk2` = 1548'),
(927,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.cyberciti.biz/faq/how-to-show-list-users-in-a-mysql-mariadb-database/','Note.\" WHERE `idlk2` = 1548'),
(928,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.cyberciti.biz/faq/how-to-show-list-users-in-a-mysql-mariadb-database/','Note.\" WHERE `idlk2` = 1548'),
(929,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.cyberciti.biz/faq/how-to-show-list-users-in-a-mysql-mariadb-database/','Note.\" WHERE `idlk2` = 1548'),
(930,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=D-GNd2OaU8Y','Note.\" WHERE `idlk2` = 1548'),
(931,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.firesticktricks.com/best-kodi-alternatives.html','Note.\" WHERE `idlk2` = 1548'),
(932,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.digitalocean.com/community/tutorials/how-to-use-mysql-or-mariadb-with-your-django-application-on-ubuntu-14-04','Note.\" WHERE `idlk2` = 1548'),
(933,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sm1mokevMWk','Note.\" WHERE `idlk2` = 1548'),
(934,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=4mKY_yDq64g','Note.\" WHERE `idlk2` = 1548'),
(935,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GNgdmnuXGR0','Note.\" WHERE `idlk2` = 1548'),
(936,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dam0GPOAvVI&t=108s','Note.\" WHERE `idlk2` = 1548'),
(937,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=o0XbHvKxw7Y','Note.\" WHERE `idlk2` = 1548'),
(938,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=o0XbHvKxw7Y','Note.\" WHERE `idlk2` = 1548'),
(939,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=rHux0gMZ3Eg','Note.\" WHERE `idlk2` = 1548'),
(940,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=xriCKexNT6s','Note.\" WHERE `idlk2` = 1548'),
(941,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=mlr9BF4JomE','Note.\" WHERE `idlk2` = 1548'),
(942,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=OJdFj5hPAKs','Note.\" WHERE `idlk2` = 1548'),
(943,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg','Note.\" WHERE `idlk2` = 1548'),
(944,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg','Note.\" WHERE `idlk2` = 1548'),
(945,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9OfL9H6AmhQ','Note.\" WHERE `idlk2` = 1548'),
(946,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Oe421EPjeBE','Note.\" WHERE `idlk2` = 1548'),
(947,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=jQysXkS3GPw','Note.\" WHERE `idlk2` = 1548'),
(948,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=soxd_xdHR0o','Note.\" WHERE `idlk2` = 1548'),
(949,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=mbNaJCXRUPw','Note.\" WHERE `idlk2` = 1548'),
(950,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=HGrj0EvNQWI','Note.\" WHERE `idlk2` = 1548'),
(951,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=V7ABBlXcn0g&t=31s','Note.\" WHERE `idlk2` = 1548'),
(952,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=pmT1zg8Cie4','Note.\" WHERE `idlk2` = 1548'),
(953,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=JAEN_xjgH5s','Note.\" WHERE `idlk2` = 1548'),
(954,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://github.com/Abdenasser/dr_scaffold/blob/main/README.md','Note.\" WHERE `idlk2` = 1548'),
(955,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.django-rest-framework.org/tutorial/quickstart/','Note.\" WHERE `idlk2` = 1548'),
(956,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=37J449tTrwg','Note.\" WHERE `idlk2` = 1548'),
(957,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ZkHP9ruW5u4','Note.\" WHERE `idlk2` = 1548'),
(958,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg&t=301s','Note.\" WHERE `idlk2` = 1548'),
(960,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=RfzPdYb8o4k','Note.\" WHERE `idlk2` = 1548'),
(961,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-E6zlNuDrZA','Note.\" WHERE `idlk2` = 1548'),
(962,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://realpython.com/python-debugging-pdb/#stepping-through-code','Note.\" WHERE `idlk2` = 1548'),
(963,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.technewstoday.com/copy-paste-putty/','Note.\" WHERE `idlk2` = 1548'),
(964,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://levelup.gitconnected.com/use-git-like-a-senior-engineer-ef6d741c898e','Note.\" WHERE `idlk2` = 1548'),
(965,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ghWECXWi9kU&t=420s','Note.\" WHERE `idlk2` = 1548'),
(966,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2OHrTQVlRMg','Note.\" WHERE `idlk2` = 1548'),
(967,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6ivti-DfZng&pp=ygUbZml2ZSB0b3AgY29tbWFuZCBsaW5lIHRvb2xz','Note.\" WHERE `idlk2` = 1548'),
(968,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Qh7F1yftnHg','Note.\" WHERE `idlk2` = 1548'),
(969,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=uRQH2CFvedY','Note.\" WHERE `idlk2` = 1548'),
(970,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Coj72EzmX20','Note.\" WHERE `idlk2` = 1548'),
(971,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2FeymQoKvrk','Note.\" WHERE `idlk2` = 1548'),
(972,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2FeymQoKvrk','Note.\" WHERE `idlk2` = 1548'),
(973,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=whuIf33v2Ug&t=108s','Note.\" WHERE `idlk2` = 1548'),
(974,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fdfpJ3k21w4&pp=ygUWeWlpMiBhZHZhbmNlZCB0dXRvcmlhbA%3D%3D','Note.\" WHERE `idlk2` = 1548'),
(975,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=XyHHMvRt6Cw&pp=ygUWeWlpMiBhZHZhbmNlZCB0dXRvcmlhbA%3D%3D','Note.\" WHERE `idlk2` = 1548'),
(976,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=BSyXzSjc5jA','Note.\" WHERE `idlk2` = 1548'),
(977,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg&t=301s','Note.\" WHERE `idlk2` = 1548'),
(978,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg','Note.\" WHERE `idlk2` = 1548'),
(979,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg','Note.\" WHERE `idlk2` = 1548'),
(980,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg','Note.\" WHERE `idlk2` = 1548'),
(981,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aSvxwwjaY2U&t=473s','Note.\" WHERE `idlk2` = 1548'),
(982,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=QTxe8ASdxE0','Note.\" WHERE `idlk2` = 1548'),
(983,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5miHyP6lExg','Note.\" WHERE `idlk2` = 1548'),
(984,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=whuIf33v2Ug&t=108s','Note.\" WHERE `idlk2` = 1548'),
(985,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=D17rZyd9r18','Note.\" WHERE `idlk2` = 1548'),
(986,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/results?search_query=yii2+advanced+tutorial','Note.\" WHERE `idlk2` = 1548'),
(987,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GRW4iPhCDSM','Note.\" WHERE `idlk2` = 1548'),
(988,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TRwXKWQ2i00&t=321s','Note.\" WHERE `idlk2` = 1548'),
(989,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Ya1oGL7ZTvU','Note.\" WHERE `idlk2` = 1548'),
(990,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=bvn_HYpix6s','Note.\" WHERE `idlk2` = 1548'),
(991,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6ivti-DfZng','Note.\" WHERE `idlk2` = 1548'),
(992,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Qh7F1yftnHg','Note.\" WHERE `idlk2` = 1548'),
(993,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ghWECXWi9kU&t=512s','Note.\" WHERE `idlk2` = 1548'),
(994,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1R9iHaZoE2Q','Note.\" WHERE `idlk2` = 1548'),
(995,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=o0XbHvKxw7Y','Note.\" WHERE `idlk2` = 1548'),
(996,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dam0GPOAvVI&t=108s','Note.\" WHERE `idlk2` = 1548'),
(997,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aSvxwwjaY2U&t=473s','Note.\" WHERE `idlk2` = 1548'),
(998,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Jyvffr3aCp0','Note.\" WHERE `idlk2` = 1548'),
(999,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.yiiframework.com/','Note.\" WHERE `idlk2` = 1548'),
(1000,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=HGrj0EvNQWI','Note.\" WHERE `idlk2` = 1548'),
(1001,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1UvTNMH7zDo','Note.\" WHERE `idlk2` = 1548'),
(1003,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=4mKY_yDq64g','Note.\" WHERE `idlk2` = 1548'),
(1004,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1005,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=4mKY_yDq64g','Note.\" WHERE `idlk2` = 1548'),
(1008,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2seM0fahBx4','Note.\" WHERE `idlk2` = 1548'),
(1009,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Ya1oGL7ZTvU','Note.\" WHERE `idlk2` = 1548'),
(1010,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1iv0GR3S4h4','Note.\" WHERE `idlk2` = 1548'),
(1012,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=axIpjQ4h8qU','Note.\" WHERE `idlk2` = 1548'),
(1013,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Jyvffr3aCp0','Note.\" WHERE `idlk2` = 1548'),
(1014,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=bvn_HYpix6s','Note.\" WHERE `idlk2` = 1548'),
(1015,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/results?search_query=django+crud','Note.\" WHERE `idlk2` = 1548'),
(1016,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=3GEdd5onOos','Note.\" WHERE `idlk2` = 1548'),
(1017,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=IYKFi74mmkU','Note.\" WHERE `idlk2` = 1548'),
(1018,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=a0Kr1TwKhQk&t=22s','Note.\" WHERE `idlk2` = 1548'),
(1019,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=B4OhuzwLc9o','Note.\" WHERE `idlk2` = 1548'),
(1020,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SPvs0SNiykA','Note.\" WHERE `idlk2` = 1548'),
(1021,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://duckduckgo.com/?q=huffy+multi+terrain+derailer&ia=web','Note.\" WHERE `idlk2` = 1548'),
(1022,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://sourceforge.net/directory/report-generators/linux/?page=4','Note.\" WHERE `idlk2` = 1548'),
(1023,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sQoiM7i5Nqc','Note.\" WHERE `idlk2` = 1548'),
(1024,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=h5I8LB4N5UA','Note.\" WHERE `idlk2` = 1548'),
(1026,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=pUtX2BEGVEM','Note.\" WHERE `idlk2` = 1548'),
(1027,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.speedtest.net/result/14846462119','Note.\" WHERE `idlk2` = 1548'),
(1028,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://authext.autozone.com/auth/XUI/?realm=/Employee&forward=true&spEntityID=https://egud.login.us2.oraclecloud.com:443/oam/fed&goto=/SSORedirect/metaAlias/Employee/AutoZone-Unified-Emp-2018-IdP?ReqID%3Did-3Tvm7JXj6jZr6e9cZ8fDNgrMIH8abfGZBVBArlm0%26index%3Dnull%26acsURL%3D%26spEntityID%3Dhttps://egud.login.us2.oraclecloud.com:443/oam/fed%26binding%3Durn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST&AMAuthCookie=#login/','Note.\" WHERE `idlk2` = 1548'),
(1029,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://business.tutsplus.com/tutorials/microsoft-word-text-effects-101--cms-20703','Note.\" WHERE `idlk2` = 1548'),
(1030,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.textfx.co/','Note.\" WHERE `idlk2` = 1548'),
(1031,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.mockofun.com/tutorials/text-effects/','Note.\" WHERE `idlk2` = 1548'),
(1032,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://bravecare.com/locations/beaverton/cedar-hills','Note.\" WHERE `idlk2` = 1548'),
(1033,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.gohealthuc.com/legacy/locations/cedar-hills','Note.\" WHERE `idlk2` = 1548'),
(1034,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://urgentcarecedarhill.com/','Note.\" WHERE `idlk2` = 1548'),
(1035,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.natlawreview.com/article/addressing-race-discrimination-complaints-workplace','Note.\" WHERE `idlk2` = 1548'),
(1036,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.zenefits.com/workest/discrimination-in-the-workplace-how-to-handle-complaints/','Note.\" WHERE `idlk2` = 1548'),
(1037,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Discrimintion in the Workplace','Note.\" WHERE `idlk2` = 1548'),
(1038,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://mycw120.ecwcloud.com/portal16553/jsp/100mp/login_otp.jsp','Note.\" WHERE `idlk2` = 1548'),
(1039,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://mycw120.ecwcloud.com/portal16553/jsp/100mp/login_otp.jsp','Note.\" WHERE `idlk2` = 1548'),
(1040,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://labour.org.uk/wp-content/uploads/2021/07/Complaint-Handling-Handbook.pdf','Note.\" WHERE `idlk2` = 1548'),
(1041,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ssc.uwo.ca/news/2021/understanding_discrimination_in_london.html','Note.\" WHERE `idlk2` = 1548'),
(1042,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://realpython.com/python-debugging-pdb/#stepping-through-code','Note.\" WHERE `idlk2` = 1548'),
(1043,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=OJdFj5hPAKs','Note.\" WHERE `idlk2` = 1548'),
(1044,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=BA4zAFUnvW8','Note.\" WHERE `idlk2` = 1548'),
(1045,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=QgMQeLymAdU&t=364s','Note.\" WHERE `idlk2` = 1548'),
(1046,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=V7ABBlXcn0g&t=31s','Note.\" WHERE `idlk2` = 1548'),
(1047,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=B4OhuzwLc9o','Note.\" WHERE `idlk2` = 1548'),
(1048,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=4mKY_yDq64g','Note.\" WHERE `idlk2` = 1548'),
(1049,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=4mKY_yDq64g','Note.\" WHERE `idlk2` = 1548'),
(1050,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://angular.io/guide/devtools','Note.\" WHERE `idlk2` = 1548'),
(1051,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://angular.io/guide/devtools','Note.\" WHERE `idlk2` = 1548'),
(1052,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://wiki.archlinux.org/title/Tor','Note.\" WHERE `idlk2` = 1548'),
(1053,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://wiki.archlinux.org/title/Tor','Note.\" WHERE `idlk2` = 1548'),
(1054,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://wiki.archlinux.org/title/Tor','Note.\" WHERE `idlk2` = 1548'),
(1055,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://wiki.archlinux.org/title/Tor','Note.\" WHERE `idlk2` = 1548'),
(1056,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1057,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1058,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1059,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1060,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1061,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=gGXS513Vj60','Note.\" WHERE `idlk2` = 1548'),
(1062,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=cJveiktaOSQ&t=23s','Note.\" WHERE `idlk2` = 1548'),
(1064,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=hCb3d7Cjj3E','Note.\" WHERE `idlk2` = 1548'),
(1065,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=zeijkpC4Das','Note.\" WHERE `idlk2` = 1548'),
(1066,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=EUMpUUXKvP0','Note.\" WHERE `idlk2` = 1548'),
(1067,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=nGIg40xs9e4','Note.\" WHERE `idlk2` = 1548'),
(1068,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=B7HM7XnSx5o','Note.\" WHERE `idlk2` = 1548'),
(1069,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=EcSz2E3dUGk&t=13s','Note.\" WHERE `idlk2` = 1548'),
(1070,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=lUsbhHisRj0','Note.\" WHERE `idlk2` = 1548'),
(1071,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9bqSODeNhsc&pp=sAQB','Note.\" WHERE `idlk2` = 1548'),
(1072,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6yenmPC1jOM','Note.\" WHERE `idlk2` = 1548'),
(1073,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=z37wCZsyxls','Note.\" WHERE `idlk2` = 1548'),
(1074,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.xvideos.com/video72525464/blonde_hotties_sarah_vandella_and_courtney_cummz_fuck_hardcore','Note.\" WHERE `idlk2` = 1548'),
(1075,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=7ggQmHZFJ6I','Note.\" WHERE `idlk2` = 1548'),
(1076,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' Webmin','Note.\" WHERE `idlk2` = 1548'),
(1079,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ufc.com/','Note.\" WHERE `idlk2` = 1548'),
(1080,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ufc.com/','Note.\" WHERE `idlk2` = 1548'),
(1081,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=itvoitzmp0g','Note.\" WHERE `idlk2` = 1548'),
(1082,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=OcT-5MQmpuw','Note.\" WHERE `idlk2` = 1548'),
(1083,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=i9eSnOQuSG4','Note.\" WHERE `idlk2` = 1548'),
(1084,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=065PnkrIzXQ','Note.\" WHERE `idlk2` = 1548'),
(1085,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=vN_eAgW5RfU','Note.\" WHERE `idlk2` = 1548'),
(1086,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2uRNfalA05o','Note.\" WHERE `idlk2` = 1548'),
(1087,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://onecompiler.com/cobol','Note.\" WHERE `idlk2` = 1548'),
(1088,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.techiedelight.com/compiler/cobol','Note.\" WHERE `idlk2` = 1548'),
(1089,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.programiz.com/cpp-programming/online-compiler/','Note.\" WHERE `idlk2` = 1548'),
(1090,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.ssls.com/knowledgebase/how-to-install-an-ssl-certificate-in-webmin/','Note.\" WHERE `idlk2` = 1548'),
(1091,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=B5BCFzIhTzU','Note.\" WHERE `idlk2` = 1548'),
(1092,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ivUx-7tubRk','Note.\" WHERE `idlk2` = 1548'),
(1093,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=D82C7JS_2iw&t=19s','Note.\" WHERE `idlk2` = 1548'),
(1094,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=BQm3ien-kAg','Note.\" WHERE `idlk2` = 1548'),
(1095,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://archman.us:10000/','Note.\" WHERE `idlk2` = 1548'),
(1096,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2L4SbYMCWrY','Note.\" WHERE `idlk2` = 1548'),
(1097,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9fLwFKGvmAY&t=37s','Note.\" WHERE `idlk2` = 1548'),
(1098,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=rar6Dqg63bw','Note.\" WHERE `idlk2` = 1548'),
(1099,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=uRlxN0_zVHo','Note.\" WHERE `idlk2` = 1548'),
(1100,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dTUvlFfThPw&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1101,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=PGPk6Ulm9Ck','Note.\" WHERE `idlk2` = 1548'),
(1102,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_97JOyC1o2o&t=664s','Note.\" WHERE `idlk2` = 1548'),
(1103,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=rar6Dqg63bw','Note.\" WHERE `idlk2` = 1548'),
(1104,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/results?search_query=stevens+tech+talks','Note.\" WHERE `idlk2` = 1548'),
(1105,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=a1M_thDTqmU','Note.\" WHERE `idlk2` = 1548'),
(1106,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/@theHindleyStreetCountryClub','Note.\" WHERE `idlk2` = 1548'),
(1107,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/@SterlingPsychicMedium','Note.\" WHERE `idlk2` = 1548'),
(1108,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=k73gc_C58HA','Note.\" WHERE `idlk2` = 1548'),
(1109,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9ycV9aAWjzM','Note.\" WHERE `idlk2` = 1548'),
(1110,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=DGDJ3l5WcAQ','Note.\" WHERE `idlk2` = 1548'),
(1111,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.howtoforge.com/tutorial/ubuntu-webmin-installation/','Note.\" WHERE `idlk2` = 1548'),
(1112,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SUeVdpV768o','Note.\" WHERE `idlk2` = 1548'),
(1113,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=3Tmr3VWuoDY','Note.\" WHERE `idlk2` = 1548'),
(1114,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.careerbuilder.com/redirect/apply?cbr=https://www.everyjobforme.com/lp-redirect?id=U-112004291366&jobtitle=Senior+System+Engineer+-+Mainframe+-+zOS%2FStorage+%28Work+from+Home%29&jobcompany=Transamerica&joblocation=Cedar+Rapids+IA&transaction_id=980ec6446a72d8ec7d0bfdb94bd2e3e2&csBoost=0&jlmb=v1k&utm_source=kaveh&utm_feed=careerbuilder_new_2&pubid=28110&jobref=U-112004291366&empid=21099&cpvc=0.18&campid=315362','Note.\" WHERE `idlk2` = 1548'),
(1115,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.careerbuilder.com/redirect/apply?cbr=https://www.everyjobforme.com/lp-redirect?id=U-112004291366&jobtitle=Senior+System+Engineer+-+Mainframe+-+zOS%2FStorage+%28Work+from+Home%29&jobcompany=Transamerica&joblocation=Cedar+Rapids+IA&transaction_id=980ec6446a72d8ec7d0bfdb94bd2e3e2&csBoost=0&jlmb=v1k&utm_source=kaveh&utm_feed=careerbuilder_new_2&pubid=28110&jobref=U-112004291366&empid=21099&cpvc=0.18&campid=315362','Note.\" WHERE `idlk2` = 1548'),
(1116,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TC5mCIGwDyA','Note.\" WHERE `idlk2` = 1548'),
(1117,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=yQihbDcnmNA','Note.\" WHERE `idlk2` = 1548'),
(1118,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.linkedin.com/help/linkedin/ask/default-social?source=LNG','Note.\" WHERE `idlk2` = 1548'),
(1119,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SdtOGowW-Dk','Note.\" WHERE `idlk2` = 1548'),
(1120,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=pzFY45La2LE','Note.\" WHERE `idlk2` = 1548'),
(1121,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_JxC6EUxbDo&t=309s','Note.\" WHERE `idlk2` = 1548'),
(1122,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-nTJqx0t29I','Note.\" WHERE `idlk2` = 1548'),
(1123,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6zfIxgaVkQI','Note.\" WHERE `idlk2` = 1548'),
(1124,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://start.spring.io/','Note.\" WHERE `idlk2` = 1548'),
(1125,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=nlR1MxHl1O0&t=1099s','Note.\" WHERE `idlk2` = 1548'),
(1126,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dFwNdLDfxuM','Note.\" WHERE `idlk2` = 1548'),
(1127,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fuV8J770yQM','Note.\" WHERE `idlk2` = 1548'),
(1128,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=gH5vsvZzMpQ','Note.\" WHERE `idlk2` = 1548'),
(1129,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=da3cry73RRY','Note.\" WHERE `idlk2` = 1548'),
(1130,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=KT7Rt-en3sM','Note.\" WHERE `idlk2` = 1548'),
(1132,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GTLGEVpjY5A','Note.\" WHERE `idlk2` = 1548'),
(1133,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dkPJLkXROCg','Note.\" WHERE `idlk2` = 1548'),
(1135,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=oviQ6bwkqMU','Note.\" WHERE `idlk2` = 1548'),
(1136,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=rmhEcri71UQ','Note.\" WHERE `idlk2` = 1548'),
(1137,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dvPEw_fp1lA','Note.\" WHERE `idlk2` = 1548'),
(1138,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5mGI55XgeSk','Note.\" WHERE `idlk2` = 1548'),
(1139,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-yR_YWYi_Aw','Note.\" WHERE `idlk2` = 1548'),
(1140,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=B7GEQuSn5l0','Note.\" WHERE `idlk2` = 1548'),
(1141,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=PGqj90URQ3A','Note.\" WHERE `idlk2` = 1548'),
(1142,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=JayDIkb30UI','Note.\" WHERE `idlk2` = 1548'),
(1143,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=06j1OitTlyM','Note.\" WHERE `idlk2` = 1548'),
(1144,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Joshua | Full Western Movie | Fred Williamson | Cal Bartlett | Brenda Venus - YouTube','Note.\" WHERE `idlk2` = 1548'),
(1145,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=bj-zKsY9kGg','Note.\" WHERE `idlk2` = 1548'),
(1146,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=bPNAI3MmuFY','Note.\" WHERE `idlk2` = 1548'),
(1148,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aqPxusodvwo','Note.\" WHERE `idlk2` = 1548'),
(1149,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=OsxJJ-Y1UDE','Note.\" WHERE `idlk2` = 1548'),
(1150,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=gnR-xDJpzf8','Note.\" WHERE `idlk2` = 1548'),
(1151,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9NH7HgUs3Qs','Note.\" WHERE `idlk2` = 1548'),
(1152,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_bqa8Ba1ECI','Note.\" WHERE `idlk2` = 1548'),
(1153,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=p9rOxlZeO_U','Note.\" WHERE `idlk2` = 1548'),
(1155,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_JxC6EUxbDo','Note.\" WHERE `idlk2` = 1548'),
(1156,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=w471kefKdRc','Note.\" WHERE `idlk2` = 1548'),
(1158,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kp5YkpYdVZ4','Note.\" WHERE `idlk2` = 1548'),
(1161,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=0MBeYc9qcWY','Note.\" WHERE `idlk2` = 1548'),
(1162,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=VYmsoCWjvM4','Note.\" WHERE `idlk2` = 1548'),
(1163,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=EhCz4s2Gh3I&t=324s','Note.\" WHERE `idlk2` = 1548'),
(1164,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ZijRp5Uzo9o','Note.\" WHERE `idlk2` = 1548'),
(1165,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=lc_UYcSibDg&t=216s','Note.\" WHERE `idlk2` = 1548'),
(1166,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=bbsNYKDypQA&t=49s','Note.\" WHERE `idlk2` = 1548'),
(1167,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=W8Rjt54GBuo','Note.\" WHERE `idlk2` = 1548'),
(1168,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=JzfWpiowtqI&t=36s','Note.\" WHERE `idlk2` = 1548'),
(1169,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=7jOI9sh08nA&t=35s','Note.\" WHERE `idlk2` = 1548'),
(1170,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SWDhGSZNF9M','Note.\" WHERE `idlk2` = 1548'),
(1171,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=87sYqhhmLHk','Note.\" WHERE `idlk2` = 1548'),
(1172,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=qCyHcfYo3kc','Note.\" WHERE `idlk2` = 1548'),
(1173,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=0KGq_zTS9BQ','Note.\" WHERE `idlk2` = 1548'),
(1174,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=YEY_1i_MjqM','Note.\" WHERE `idlk2` = 1548'),
(1175,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=jaGznpTTWnk','Note.\" WHERE `idlk2` = 1548'),
(1177,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Nr0PWFGIA2g','Note.\" WHERE `idlk2` = 1548'),
(1179,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=214qTZWFBjE','Note.\" WHERE `idlk2` = 1548'),
(1180,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LLv-j0m_SBc&t=23s','Note.\" WHERE `idlk2` = 1548'),
(1181,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dpOx27hbO6g','Note.\" WHERE `idlk2` = 1548'),
(1182,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=CD7JqSJ4ets&t=1325s','Note.\" WHERE `idlk2` = 1548'),
(1183,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GpyW08BfZx0','Note.\" WHERE `idlk2` = 1548'),
(1184,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GpyW08BfZx0','Note.\" WHERE `idlk2` = 1548'),
(1185,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GpyW08BfZx0','Note.\" WHERE `idlk2` = 1548'),
(1186,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1xl1sIe2y_A','Note.\" WHERE `idlk2` = 1548'),
(1187,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=MiejL2ZBo5I','Note.\" WHERE `idlk2` = 1548'),
(1188,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=stQSrXnJWrc','Note.\" WHERE `idlk2` = 1548'),
(1189,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=s8R50pvRhQE','Note.\" WHERE `idlk2` = 1548'),
(1190,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=yJNiRp9CnOo','Note.\" WHERE `idlk2` = 1548'),
(1191,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=3dJygDTu25Y','Note.\" WHERE `idlk2` = 1548'),
(1192,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_ckDpbVElUA','Note.\" WHERE `idlk2` = 1548'),
(1194,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=eL6DJKQNGY0','Note.\" WHERE `idlk2` = 1548'),
(1195,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TQSM1scRLMk&t=57s','Note.\" WHERE `idlk2` = 1548'),
(1196,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=L2W05Z2W3Wc','Note.\" WHERE `idlk2` = 1548'),
(1198,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Fw3jl0Tckh8&t=13s','Note.\" WHERE `idlk2` = 1548'),
(1201,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Gbl5vYnkI5k','Note.\" WHERE `idlk2` = 1548'),
(1202,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=oeiCJpK1-kc&t=993s','Note.\" WHERE `idlk2` = 1548'),
(1203,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=In1zKdUAEzc','Note.\" WHERE `idlk2` = 1548'),
(1204,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=In1zKdUAEzc','Note.\" WHERE `idlk2` = 1548'),
(1205,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=In1zKdUAEzc','Note.\" WHERE `idlk2` = 1548'),
(1206,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=EAC6vuhOHAQ&t=93s','Note.\" WHERE `idlk2` = 1548'),
(1207,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=711RrprfvNc','Note.\" WHERE `idlk2` = 1548'),
(1208,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Yaj7tBY2UGI','Note.\" WHERE `idlk2` = 1548'),
(1209,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9jYtODX22ZY','Note.\" WHERE `idlk2` = 1548'),
(1210,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=muZ3fHTFL_M','Note.\" WHERE `idlk2` = 1548'),
(1211,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=In1zKdUAEzc','Note.\" WHERE `idlk2` = 1548'),
(1212,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=JqXH0nxkRQQ','Note.\" WHERE `idlk2` = 1548'),
(1213,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_MTkuJd9aig&t=18s','Note.\" WHERE `idlk2` = 1548'),
(1216,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ny1BQh38FgI&t=10s','Note.\" WHERE `idlk2` = 1548'),
(1217,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aRhxeOtIZfc','Note.\" WHERE `idlk2` = 1548'),
(1218,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/CM8064401807100-E5-2697-Fourteen-Core-Haswell-Processor/dp/B07JND5X7G/ref=pd_rhf_ee_s_pd_sbs_rvi_d_sccl_1_4/133-7758810-2271757?pd_rd_w=5WOAg&content-id=amzn1.sym.9c71db11-3b2f-49a1-9fef-afd524b20130&pf_rd_p=9c71db11-3b2f-49a1-9fef-afd524b20130&pf_rd_r=8YN9NF611BA2ZAWXJ9KG&pd_rd_wg=9a7Ey&pd_rd_r=99d2e9ad-2634-41ce-88e9-635b6233434c&pd_rd_i=B07JND5X7G&psc=1','Note.\" WHERE `idlk2` = 1548'),
(1219,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=sr_1_10?crid=39UDW8YZCLRE9&dib=eyJ2IjoiMSJ9.OHacK1lJeg12CujMT0YMZkZXPJ5cljeBKqWl5WD2FwGJ4DRHKvBnvZ2CbZ5OmX9hSKC3gtY--vQLusWkPyyxIWsYjLJDfjs2WeTxfdE2VaHhCc-9cO97v1cKe7SdCiPZyveEi3aW88CHuR6azHXOZIh_Y2natHUMiibbval5tedfYwQspj60G3IX3ssQtIqBRK20uRBCCN-AgZv9eAu__2VJduHJUIl6UstlxOJc5fg.TsPNoTP1vJL24YuOFLvUN_9bOLL1GidsF9He2na30U8&dib_tag=se&keywords=2tb%2Bssd%2Bnvme&qid=1722039679&sprefix=2tb%2Bs%2Caps%2C112&sr=8-10&th=1','Note.\" WHERE `idlk2` = 1548'),
(1220,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B0CT3HDPPQ/ref=sspa_dk_detail_0?pd_rd_i=B0CT3HDPPQ&pd_rd_w=sfpR2&content-id=amzn1.sym.f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_p=f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_r=MSWEZ81AYQXD77R3BEP1&pd_rd_wg=xp7Tu&pd_rd_r=8d0bc79d-52da-431d-8f1c-7c35c2a0d2e6&s=pc&sp_csd=d2lkZ2V0TmFtZT1zcF9kZXRhaWxfdGhlbWF0aWM&th=1','Note.\" WHERE `idlk2` = 1548'),
(1221,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B0C86QNV4Q/ref=sspa_dk_detail_2?pd_rd_i=B0C86QNV4Q&pd_rd_w=sfpR2&content-id=amzn1.sym.f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_p=f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_r=MSWEZ81AYQXD77R3BEP1&pd_rd_wg=xp7Tu&pd_rd_r=8d0bc79d-52da-431d-8f1c-7c35c2a0d2e6&s=pc&sp_csd=d2lkZ2V0TmFtZT1zcF9kZXRhaWxfdGhlbWF0aWM&th=1','Note.\" WHERE `idlk2` = 1548'),
(1222,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=x0dfc0gzBlI','Note.\" WHERE `idlk2` = 1548'),
(1223,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=U9iDYwm-m5Y','Note.\" WHERE `idlk2` = 1548'),
(1225,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1OcRO--s0nA','Note.\" WHERE `idlk2` = 1548'),
(1226,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=jT9peJYfqnA&t=28s','Note.\" WHERE `idlk2` = 1548'),
(1227,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=KavSBDaPua4&t=341s','Note.\" WHERE `idlk2` = 1548'),
(1228,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=MfF5AqFpKFI','Note.\" WHERE `idlk2` = 1548'),
(1229,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/EVGA-SuperNOVA-Modular-Warranty-220-GT-1000-X1/dp/B09CRH8YPV/ref=pd_lutyp_rtpb_d_sccl_3_7/133-7758810-2271757?pd_rd_w=rPFH6&content-id=amzn1.sym.93034bde-bb5f-496a-8d62-a64f3b62277f&pf_rd_p=93034bde-bb5f-496a-8d62-a64f3b62277f&pf_rd_r=A6NB2Y4GE5ZJ9VDPGR7H&pd_rd_wg=SQOQq&pd_rd_r=0f1cad87-c059-4dc3-a2fa-2066ab5908da&pd_rd_i=B09CRH8YPV&th=1','Note.\" WHERE `idlk2` = 1548'),
(1230,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=pd_lutyp_rtpb_d_sccl_3_5/133-7758810-2271757?pd_rd_w=rPFH6&content-id=amzn1.sym.93034bde-bb5f-496a-8d62-a64f3b62277f&pf_rd_p=93034bde-bb5f-496a-8d62-a64f3b62277f&pf_rd_r=A6NB2Y4GE5ZJ9VDPGR7H&pd_rd_wg=SQOQq&pd_rd_r=0f1cad87-c059-4dc3-a2fa-2066ab5908da&pd_rd_i=B0CRC7H66Z&th=1','Note.\" WHERE `idlk2` = 1548'),
(1231,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=L8tTTcmHPY8','Note.\" WHERE `idlk2` = 1548'),
(1232,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=UaXo2krT_Sg','Note.\" WHERE `idlk2` = 1548'),
(1233,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fVTXyHZLqRU','Note.\" WHERE `idlk2` = 1548'),
(1234,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=R_rMX9iuLa0','Note.\" WHERE `idlk2` = 1548'),
(1235,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=4vhk_LgIEM4','Note.\" WHERE `idlk2` = 1548'),
(1236,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Noq_1PVQDTg','Note.\" WHERE `idlk2` = 1548'),
(1237,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=mF7qj1s8WFw','Note.\" WHERE `idlk2` = 1548'),
(1238,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=RA48BtLyEOc','Note.\" WHERE `idlk2` = 1548'),
(1239,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=XyP0p_YTPzY','Note.\" WHERE `idlk2` = 1548'),
(1240,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aRQpGUNqNlE','Note.\" WHERE `idlk2` = 1548'),
(1241,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fGIzlgs6KCc','Note.\" WHERE `idlk2` = 1548'),
(1242,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fGIzlgs6KCc','Note.\" WHERE `idlk2` = 1548'),
(1243,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=t50isShDNwI','Note.\" WHERE `idlk2` = 1548'),
(1244,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=KhYVm-vfOSQ','Note.\" WHERE `idlk2` = 1548'),
(1245,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Ad1UYN10Wg0','Note.\" WHERE `idlk2` = 1548'),
(1246,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=m7bYDJqYW4w','Note.\" WHERE `idlk2` = 1548'),
(1247,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=mF7qj1s8WFw&t=620s','Note.\" WHERE `idlk2` = 1548'),
(1248,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=1LwgLlRCj98','Note.\" WHERE `idlk2` = 1548'),
(1249,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Rabn_eBSBoI','Note.\" WHERE `idlk2` = 1548'),
(1250,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=o3r9M8zldnk','Note.\" WHERE `idlk2` = 1548'),
(1251,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=3j4rBmgDHJ0','Note.\" WHERE `idlk2` = 1548'),
(1252,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=VofxDMzZZHM','Note.\" WHERE `idlk2` = 1548'),
(1253,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Dell-3710-Computer-i9-12900K-Mini-Display/dp/B0CZ56GXNF/ref=rvi_d_sccl_7/133-7758810-2271757?pd_rd_w=7sKPK&content-id=amzn1.sym.f5690a4d-f2bb-45d9-9d1b-736fee412437&pf_rd_p=f5690a4d-f2bb-45d9-9d1b-736fee412437&pf_rd_r=YZF3M2TBTQ3YK0S7CKZZ&pd_rd_wg=tks0W&pd_rd_r=36907ce0-43d2-4fbf-bd3f-4e02b98ddcb2&pd_rd_i=B0CZ56GXNF&th=1','Note.\" WHERE `idlk2` = 1548'),
(1254,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=zbK8pE185Lo','Note.\" WHERE `idlk2` = 1548'),
(1255,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=hZDNfx5zazE','Note.\" WHERE `idlk2` = 1548'),
(1256,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=cXKe0HbYccQ','Note.\" WHERE `idlk2` = 1548'),
(1257,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ZlFpPpnDFwI','Note.\" WHERE `idlk2` = 1548'),
(1258,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=2ELXOntz_uc','Note.\" WHERE `idlk2` = 1548'),
(1259,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=MB2CvO29l8k','Note.\" WHERE `idlk2` = 1548'),
(1261,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ZxCEZi0U-ew','Note.\" WHERE `idlk2` = 1548'),
(1262,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=k2UrUd7fKtw','Note.\" WHERE `idlk2` = 1548'),
(1263,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=0iRuzsIqZoc&t=24s','Note.\" WHERE `idlk2` = 1548'),
(1264,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=USUU_e-tJPI','Note.\" WHERE `idlk2` = 1548'),
(1265,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Sfm8VCBQyHc','Note.\" WHERE `idlk2` = 1548'),
(1266,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=x9G6V27FkmI','Note.\" WHERE `idlk2` = 1548'),
(1267,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=HTtZ_95UVAg','Note.\" WHERE `idlk2` = 1548'),
(1268,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=PHJRSKijm-k','Note.\" WHERE `idlk2` = 1548'),
(1269,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=vOUbs23NKY8','Note.\" WHERE `idlk2` = 1548'),
(1270,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=vOUbs23NKY8','Note.\" WHERE `idlk2` = 1548'),
(1271,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=vOUbs23NKY8','Note.\" WHERE `idlk2` = 1548'),
(1272,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fGIzlgs6KCc','Note.\" WHERE `idlk2` = 1548'),
(1273,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=jT9peJYfqnA&t=28s','Note.\" WHERE `idlk2` = 1548'),
(1274,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_MTkuJd9aig&t=18s','Note.\" WHERE `idlk2` = 1548'),
(1275,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_MTkuJd9aig&t=18s','Note.\" WHERE `idlk2` = 1548'),
(1276,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_MTkuJd9aig&t=18s','Note.\" WHERE `idlk2` = 1548'),
(1277,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=vOUbs23NKY8','Note.\" WHERE `idlk2` = 1548'),
(1278,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fGIzlgs6KCc','Note.\" WHERE `idlk2` = 1548'),
(1279,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=fGIzlgs6KCc','Note.\" WHERE `idlk2` = 1548'),
(1280,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=In1zKdUAEzc','Note.\" WHERE `idlk2` = 1548'),
(1281,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=In1zKdUAEzc','Note.\" WHERE `idlk2` = 1548'),
(1282,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=In1zKdUAEzc','Note.\" WHERE `idlk2` = 1548'),
(1283,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.wired.com/','Note.\" WHERE `idlk2` = 1548'),
(1284,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c','Note.\" WHERE `idlk2` = 1548'),
(1285,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c','Note.\" WHERE `idlk2` = 1548'),
(1286,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c','Note.\" WHERE `idlk2` = 1548'),
(1287,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=v71jwS-2g40','Note.\" WHERE `idlk2` = 1548'),
(1288,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/c++ books/C++ in a Nutshell.pdf','Note.\" WHERE `idlk2` = 1548'),
(1289,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=UalJgO2QuZU','Note.\" WHERE `idlk2` = 1548'),
(1290,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6aW1DE0mb24','Note.\" WHERE `idlk2` = 1548'),
(1291,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=YwMl5iPZ6u0','Note.\" WHERE `idlk2` = 1548'),
(1292,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/dbeaver','Note.\" WHERE `idlk2` = 1548'),
(1293,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/amb bio.odt','Note.\" WHERE `idlk2` = 1548'),
(1294,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://slashdot.org/','Note.\" WHERE `idlk2` = 1548'),
(1295,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=l6GmdWey6cM','Note.\" WHERE `idlk2` = 1548'),
(1296,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_rOUDhCE-x4','Note.\" WHERE `idlk2` = 1548'),
(1297,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_rOUDhCE-x4','Note.\" WHERE `idlk2` = 1548'),
(1298,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_rOUDhCE-x4','Note.\" WHERE `idlk2` = 1548'),
(1299,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Executive Recruiting For Dummies.pdf','Note.\" WHERE `idlk2` = 1548'),
(1300,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/DNS-for-Dummies-ebook-3-min.pdf','Note.\" WHERE `idlk2` = 1548'),
(1301,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/cb/cpp/cppDemo04/bin/Release/cppDemo04','Note.\" WHERE `idlk2` = 1548'),
(1302,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Bernard Daughter.odt','Note.\" WHERE `idlk2` = 1548'),
(1303,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/usr/bin/dbeaver','Note.\" WHERE `idlk2` = 1548'),
(1304,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=IwN9yRwWO_E','Note.\" WHERE `idlk2` = 1548'),
(1305,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' This SHOCKING Weight Loss Secrets That ACTUALLY Work Barbara O\'Neill - YouTube','Note.\" WHERE `idlk2` = 1548'),
(1306,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Columbia, Missouri - Green Health Docs.pdf','Note.\" WHERE `idlk2` = 1548'),
(1307,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Logfile.odt','Note.\" WHERE `idlk2` = 1548'),
(1308,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Untitled 1.odt','Note.\" WHERE `idlk2` = 1548'),
(1309,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/COBOL.odt','Note.\" WHERE `idlk2` = 1548'),
(1310,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/AB Desktop.odt','Note.\" WHERE `idlk2` = 1548'),
(1311,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/ArchBrooksResume.pdf','Note.\" WHERE `idlk2` = 1548'),
(1313,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/AB Desktop.odt','Note.\" WHERE `idlk2` = 1548'),
(1314,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/AB Desktop.odt','Note.\" WHERE `idlk2` = 1548'),
(1315,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=U3YiFa8_BWs','Note.\" WHERE `idlk2` = 1548'),
(1316,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TC5mCIGwDyA','Note.\" WHERE `idlk2` = 1548'),
(1317,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1318,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1319,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/AB Desktop.odt','Note.\" WHERE `idlk2` = 1548'),
(1320,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/AB Desktop.odt','Note.\" WHERE `idlk2` = 1548'),
(1321,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/AB Desktop.odt','Note.\" WHERE `idlk2` = 1548'),
(1322,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TC5mCIGwDyA','Note.\" WHERE `idlk2` = 1548'),
(1323,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1324,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1325,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=TC5mCIGwDyA','Note.\" WHERE `idlk2` = 1548'),
(1326,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1327,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1328,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1329,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1330,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1331,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1332,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1333,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1334,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1339,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=NUmcpehoARo','Note.\" WHERE `idlk2` = 1548'),
(1340,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=7cEM4RYInsg','Note.\" WHERE `idlk2` = 1548'),
(1341,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=otsrQoe4miQ','Note.\" WHERE `idlk2` = 1548'),
(1342,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=RzaNnxobOl0','Note.\" WHERE `idlk2` = 1548'),
(1343,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.wired.com/','Note.\" WHERE `idlk2` = 1548'),
(1344,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Blazor-E-book-ejc-V3.pdf','Note.\" WHERE `idlk2` = 1548'),
(1345,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1347,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Wn3OQL6SggA','Note.\" WHERE `idlk2` = 1548'),
(1348,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1349,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=U3YiFa8_BWs','Note.\" WHERE `idlk2` = 1548'),
(1350,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Wn3OQL6SggA','Note.\" WHERE `idlk2` = 1548'),
(1351,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Wn3OQL6SggA','Note.\" WHERE `idlk2` = 1548'),
(1352,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.wired.com/','Note.\" WHERE `idlk2` = 1548'),
(1353,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=QU1WmSJrZ-8','Note.\" WHERE `idlk2` = 1548'),
(1354,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/SABRENT-Advanced-Performance-Internal-SB-RKT5-2TB/dp/B0CXVGC466/ref=sr_1_3?crid=2BPT6KS5EZVT3&dib=eyJ2IjoiMSJ9.gjovwm7ar2KgzAdgT3TQPOqMPZlJ1sM30ELAZD8OK6SfmRArDOnI5hoKEE77z4IXoslkc4nr73W7fewB2gdSRLP3Rx6iAmy_IjNbDcGDXVlHYzVa7NK8CZWsQOe6G6L_qlm2-q_Zz9l98YdNCtWtbfbwVG4oVzQS1Yewy4ArISdyOz-KHySPpmE__Mg-5Gjt6TLWdS9tfSfjA8n5tKHDjWLTjuQ1OefkwTbtTRYIViBPZwfvGLEvW3IVX26Gxu2_mOF6ZDUbuio8QUyGlPdMQeBN0M9drJgQOZB-Mkltu54.yErCOHx9trg_2SPxTBN5nalvc-9fCu-tDUNbIXsKoRg&dib_tag=se&keywords=pcie%2B5.0%2Bnvme%2Bm.2%2Bssd%2Bgen%2B5&qid=1726965027&s=electronics&sprefix=pcie%2Bgen%2B5%2B%2Celectronics%2C105&sr=1-3&ufe=app_do%3Aamzn1.fos.c3015c4a-46bb-44b9-81a4-dc28e6d374b3&th=1','Note.\" WHERE `idlk2` = 1548'),
(1355,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Dell-Desktop-Computer-i9-12900K-Mini-Display/dp/B0CZ56GXNF/?_encoding=UTF8&pd_rd_w=QIKyc&content-id=amzn1.sym.26dcb73c-abb7-4585-8a67-196fb4eed4cb%3Aamzn1.symc.abfa8731-fff2-4177-9d31-bf48857c2263&pf_rd_p=26dcb73c-abb7-4585-8a67-196fb4eed4cb&pf_rd_r=C3XT009E2BEDHEW4BSWS&pd_rd_wg=eSE3s&pd_rd_r=2a15d857-3ee9-43f6-9bf2-ea9b61d83af9&ref_=pd_hp_d_btf_ci_mcx_mr_ca_id_hp_d','Note.\" WHERE `idlk2` = 1548'),
(1356,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/SABRENT-Advanced-Performance-Internal-SB-RKT5-2TB/dp/B0CXVGC466/ref=sr_1_3?crid=2BPT6KS5EZVT3&dib=eyJ2IjoiMSJ9.gjovwm7ar2KgzAdgT3TQPOqMPZlJ1sM30ELAZD8OK6SfmRArDOnI5hoKEE77z4IXoslkc4nr73W7fewB2gdSRLP3Rx6iAmy_IjNbDcGDXVlHYzVa7NK8CZWsQOe6G6L_qlm2-q_Zz9l98YdNCtWtbfbwVG4oVzQS1Yewy4ArISdyOz-KHySPpmE__Mg-5Gjt6TLWdS9tfSfjA8n5tKHDjWLTjuQ1OefkwTbtTRYIViBPZwfvGLEvW3IVX26Gxu2_mOF6ZDUbuio8QUyGlPdMQeBN0M9drJgQOZB-Mkltu54.yErCOHx9trg_2SPxTBN5nalvc-9fCu-tDUNbIXsKoRg&dib_tag=se&keywords=pcie%2B5.0%2Bnvme%2Bm.2%2Bssd%2Bgen%2B5&qid=1726965027&s=electronics&sprefix=pcie%2Bgen%2B5%2B%2Celectronics%2C105&sr=1-3&ufe=app_do%3Aamzn1.fos.c3015c4a-46bb-44b9-81a4-dc28e6d374b3&th=1','Note.\" WHERE `idlk2` = 1548'),
(1357,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Intel-i9-13900KF-Desktop-Processor-P-cores/dp/B0BCFM3CJ4/ref=sr_1_8?crid=3F3ZJX4EP5T8J&dib=eyJ2IjoiMSJ9.Q4JbY9FLsg8OwPEXVXlXkE0rDSbZ2Zab3VNGfFaXrzpZTZz21mqKSzp1KVNkNNc_zZJ_Fmk78d5LXQeMkNlqsBEllt2AluxtjWHum1A0ugVB8-1c3qzDOokNXYJlSRE3KYw60qSqbz09vY63zMEh92bi1Ls8yzdbfjcTaprQgXCU9LA9GP_jNLJfQCi0Wun6NmA7X7gSjuO-rz2EXf6YsODedCpt1UP1EDv24Ga77tM.MuVOT4Lo_bMvJ6MhUIoWGhUnhj98YdZ1VGZ8gbiHyGs&dib_tag=se&keywords=intel%2Bcpu%2Bcore%2Bi9-14900k%2Btower%2B%241%2C000.00&qid=1726967238&sprefix=%2Caps%2C157&sr=8-8&ufe=app_do%3Aamzn1.fos.c3015c4a-46bb-44b9-81a4-dc28e6d374b3&th=1','Note.\" WHERE `idlk2` = 1548'),
(1358,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=sr_1_10?crid=39UDW8YZCLRE9&dib=eyJ2IjoiMSJ9.OHacK1lJeg12CujMT0YMZkZXPJ5cljeBKqWl5WD2FwGJ4DRHKvBnvZ2CbZ5OmX9hSKC3gtY--vQLusWkPyyxIWsYjLJDfjs2WeTxfdE2VaHhCc-9cO97v1cKe7SdCiPZyveEi3aW88CHuR6azHXOZIh_Y2natHUMiibbval5tedfYwQspj60G3IX3ssQtIqBRK20uRBCCN-AgZv9eAu__2VJduHJUIl6UstlxOJc5fg.TsPNoTP1vJL24YuOFLvUN_9bOLL1GidsF9He2na30U8&dib_tag=se&keywords=2tb%2Bssd%2Bnvme&qid=1722039679&sprefix=2tb%2Bs%2Caps%2C112&sr=8-10&th=1','Note.\" WHERE `idlk2` = 1548'),
(1359,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B0CT3HDPPQ/ref=sspa_dk_detail_0?pd_rd_i=B0CT3HDPPQ&pd_rd_w=sfpR2&content-id=amzn1.sym.f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_p=f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_r=MSWEZ81AYQXD77R3BEP1&pd_rd_wg=xp7Tu&pd_rd_r=8d0bc79d-52da-431d-8f1c-7c35c2a0d2e6&s=pc&sp_csd=d2lkZ2V0TmFtZT1zcF9kZXRhaWxfdGhlbWF0aWM&th=1','Note.\" WHERE `idlk2` = 1548'),
(1360,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/dp/B0CT3HDPPQ/ref=sspa_dk_detail_0?pd_rd_i=B0CT3HDPPQ&pd_rd_w=sfpR2&content-id=amzn1.sym.f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_p=f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_r=MSWEZ81AYQXD77R3BEP1&pd_rd_wg=xp7Tu&pd_rd_r=8d0bc79d-52da-431d-8f1c-7c35c2a0d2e6&s=pc&sp_csd=d2lkZ2V0TmFtZT1zcF9kZXRhaWxfdGhlbWF0aWM&th=1','Note.\" WHERE `idlk2` = 1548'),
(1361,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Intel-i9-13900KF-Desktop-Processor-P-cores/dp/B0BCFM3CJ4/ref=sr_1_8?crid=3F3ZJX4EP5T8J&dib=eyJ2IjoiMSJ9.Q4JbY9FLsg8OwPEXVXlXkE0rDSbZ2Zab3VNGfFaXrzpZTZz21mqKSzp1KVNkNNc_zZJ_Fmk78d5LXQeMkNlqsBEllt2AluxtjWHum1A0ugVB8-1c3qzDOokNXYJlSRE3KYw60qSqbz09vY63zMEh92bi1Ls8yzdbfjcTaprQgXCU9LA9GP_jNLJfQCi0Wun6NmA7X7gSjuO-rz2EXf6YsODedCpt1UP1EDv24Ga77tM.MuVOT4Lo_bMvJ6MhUIoWGhUnhj98YdZ1VGZ8gbiHyGs&dib_tag=se&keywords=intel%2Bcpu%2Bcore%2Bi9-14900k%2Btower%2B%241%2C000.00&qid=1726967238&sprefix=%2Caps%2C157&sr=8-8&ufe=app_do%3Aamzn1.fos.c3015c4a-46bb-44b9-81a4-dc28e6d374b3&th=1','Note.\" WHERE `idlk2` = 1548'),
(1362,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1363,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1364,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1365,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1366,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1367,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1368,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SW2SWqeOw6c&t=20s','Note.\" WHERE `idlk2` = 1548'),
(1369,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Critical HR Record Keeping.pdf','Note.\" WHERE `idlk2` = 1548'),
(1370,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Critical HR Record Keeping.pdf','Note.\" WHERE `idlk2` = 1548'),
(1371,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Critical HR Record Keeping.pdf','Note.\" WHERE `idlk2` = 1548'),
(1372,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Critical HR Record Keeping.pdf','Note.\" WHERE `idlk2` = 1548'),
(1373,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1374,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1375,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1376,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1377,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1378,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/user/archman007','Note.\" WHERE `idlk2` = 1548'),
(1379,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/user/archman007','Note.\" WHERE `idlk2` = 1548'),
(1380,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/user/archman007','Note.\" WHERE `idlk2` = 1548'),
(1381,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/user/archman007','Note.\" WHERE `idlk2` = 1548'),
(1382,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1383,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1384,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Xqzn2jLvrCM','Note.\" WHERE `idlk2` = 1548'),
(1385,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/user/archman007','Note.\" WHERE `idlk2` = 1548'),
(1386,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/user/archman007','Note.\" WHERE `idlk2` = 1548'),
(1387,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=VEhDL_ORUrE','Note.\" WHERE `idlk2` = 1548'),
(1388,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1389,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1390,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1391,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1392,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1393,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9ycV9aAWjzM&t=17s','Note.\" WHERE `idlk2` = 1548'),
(1395,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=xH5-yxNB57Q','Note.\" WHERE `idlk2` = 1548'),
(1396,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1397,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1398,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1399,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1400,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1401,162,'https://archman.us:10000/\",`lnk`=\" Webmin','#1 Absolute Best Way To Lower Blood Sugar - YouTube','Note.\" WHERE `idlk2` = 1548'),
(1402,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=16EAjq7nOrk','Note.\" WHERE `idlk2` = 1548'),
(1403,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1404,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=kTF5PocaUe8','Note.\" WHERE `idlk2` = 1548'),
(1405,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=p2irkfhOpqM&t=17s','Note.\" WHERE `idlk2` = 1548'),
(1406,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-HHUe8IZyks&t=16s','Note.\" WHERE `idlk2` = 1548'),
(1407,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=wb4yLmw6Xfw','Note.\" WHERE `idlk2` = 1548'),
(1408,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=tppkGdL_BgU','Note.\" WHERE `idlk2` = 1548'),
(1409,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=nIxKAk7Hgv8','Note.\" WHERE `idlk2` = 1548'),
(1410,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=NUmcpehoARo&t=453s','Note.\" WHERE `idlk2` = 1548'),
(1411,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=16EAjq7nOrk','Note.\" WHERE `idlk2` = 1548'),
(1412,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=GVuk4iSS9bg','Note.\" WHERE `idlk2` = 1548'),
(1413,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=xv45F4Wjo4M','Note.\" WHERE `idlk2` = 1548'),
(1414,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=16EAjq7nOrk','Note.\" WHERE `idlk2` = 1548'),
(1415,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=jzVqEfXJHVc','Note.\" WHERE `idlk2` = 1548'),
(1416,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=H1zf5kQuvPc','Note.\" WHERE `idlk2` = 1548'),
(1417,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6By5UEaCqog','Note.\" WHERE `idlk2` = 1548'),
(1418,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6By5UEaCqog','Note.\" WHERE `idlk2` = 1548'),
(1420,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=kBDx-ytOvOk','Note.\" WHERE `idlk2` = 1548'),
(1421,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=G3bK-fhUUac','Note.\" WHERE `idlk2` = 1548'),
(1422,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://allnaturellhealing.com/products/over-30-alkaline-plant-based-recipes-by-alkalne-meal-ideas-volume-2-ebook','Note.\" WHERE `idlk2` = 1548'),
(1423,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9vDdYo2qWWU','Note.\" WHERE `idlk2` = 1548'),
(1425,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://soursopstore.com/products/bulk-mixed-whole-partial-soursop-leaves','Note.\" WHERE `idlk2` = 1548'),
(1426,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=dgzop0BWf50','Note.\" WHERE `idlk2` = 1548'),
(1427,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=H9HklcojVFs','Note.\" WHERE `idlk2` = 1548'),
(1428,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9X_eg4TLGCo','Note.\" WHERE `idlk2` = 1548'),
(1429,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Vsc8xfToOnc','Note.\" WHERE `idlk2` = 1548'),
(1430,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=k73gc_C58HA','Note.\" WHERE `idlk2` = 1548'),
(1431,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1432,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1433,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=N9ouYq-2OX0','Note.\" WHERE `idlk2` = 1548'),
(1434,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=V85DwFa6JIo','Note.\" WHERE `idlk2` = 1548'),
(1435,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg&t=229s','Note.\" WHERE `idlk2` = 1548'),
(1436,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=PqzUXcXLGDk','Note.\" WHERE `idlk2` = 1548'),
(1438,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=S04-XqFSfTc&t=13s','Note.\" WHERE `idlk2` = 1548'),
(1439,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Dell-Desktop-Computer-i9-12900K-Mini-Display/dp/B0CZ56GXNF/ref=rvi_d_sccl_8/133-7758810-2271757?pd_rd_w=PS9We&content-id=amzn1.sym.f5690a4d-f2bb-45d9-9d1b-736fee412437&pf_rd_p=f5690a4d-f2bb-45d9-9d1b-736fee412437&pf_rd_r=ZP1TGK9VGRDEWSN0BFK1&pd_rd_wg=NpzOh&pd_rd_r=1a3b669a-578e-4990-8fd3-6625fcbf6d0e&pd_rd_i=B0CZ56GXNF&psc=1','Note.\" WHERE `idlk2` = 1548'),
(1440,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/gp/product/B005404P9I/ref=ox_sc_saved_title_3?smid=ATVPDKIKX0DER&psc=1','Note.\" WHERE `idlk2` = 1548'),
(1441,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/gp/product/B005404P9I/ref=ox_sc_saved_title_3?smid=ATVPDKIKX0DER&psc=1','Note.\" WHERE `idlk2` = 1548'),
(1442,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.amazon.com/Dell-Tower-i9-12900K-DisplayPort-Bluetooth/dp/B0CZ5BRWY7/?_encoding=UTF8&pd_rd_w=pZbxF&content-id=amzn1.sym.26dcb73c-abb7-4585-8a67-196fb4eed4cb%3Aamzn1.symc.abfa8731-fff2-4177-9d31-bf48857c2263&pf_rd_p=26dcb73c-abb7-4585-8a67-196fb4eed4cb&pf_rd_r=AR13E6GMSG4DCJNMG364&pd_rd_wg=ZCkbm&pd_rd_r=cd60d6a1-d826-422e-8c51-d72ecd03ba63&ref_=pd_hp_d_btf_ci_mcx_mr_ca_id_hp_d','Note.\" WHERE `idlk2` = 1548'),
(1443,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://spankbang.com/8bpuu/video/two+girls+joi','Note.\" WHERE `idlk2` = 1548'),
(1444,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=6zfIxgaVkQI','Note.\" WHERE `idlk2` = 1548'),
(1445,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Columbia, Missouri - Green Health Docs.pdf','Note.\" WHERE `idlk2` = 1548'),
(1446,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Columbia, Missouri - Green Health Docs.pdf','Note.\" WHERE `idlk2` = 1548'),
(1447,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' Tsss','Note.\" WHERE `idlk2` = 1548'),
(1448,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Deposit Tenant Web Access - Make A Payment.pdf','Note.\" WHERE `idlk2` = 1548'),
(1449,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ao9kBPYiC5k','Note.\" WHERE `idlk2` = 1548'),
(1450,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=K280JCP_d-k','Note.\" WHERE `idlk2` = 1548'),
(1451,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=XQJdmtHBErQ','Note.\" WHERE `idlk2` = 1548'),
(1452,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=xAT0lHYhHMY&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF','Note.\" WHERE `idlk2` = 1548'),
(1453,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=UnOwDuliqZA&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF&index=2','Note.\" WHERE `idlk2` = 1548'),
(1454,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=R0nRX8jD2D0&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF&index=3','Note.\" WHERE `idlk2` = 1548'),
(1455,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=eM3zi_n7lNs&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF&index=4','Note.\" WHERE `idlk2` = 1548'),
(1456,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=r5DEBMuStPw&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF&index=5','Note.\" WHERE `idlk2` = 1548'),
(1457,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-jRxG84AzCI&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF&index=6','Note.\" WHERE `idlk2` = 1548'),
(1458,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=kWbk-dOJaNQ&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF&index=7','Note.\" WHERE `idlk2` = 1548'),
(1459,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=5K10oYJ5Y-E&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF&index=8','Note.\" WHERE `idlk2` = 1548'),
(1460,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=66gHTTpIfDQ&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=1','Note.\" WHERE `idlk2` = 1548'),
(1461,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=_PvMGUHbN88&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=2','Note.\" WHERE `idlk2` = 1548'),
(1462,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Cd6xvZrjs2U&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=3','Note.\" WHERE `idlk2` = 1548'),
(1463,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=pwYMaIa-1Sk&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=4','Note.\" WHERE `idlk2` = 1548'),
(1464,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=R2gIVQZU24U&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=5','Note.\" WHERE `idlk2` = 1548'),
(1465,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=T-o4rUyH1tU&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=6','Note.\" WHERE `idlk2` = 1548'),
(1466,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=CVjNUCBehFo&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=7','Note.\" WHERE `idlk2` = 1548'),
(1467,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=syy-3fVicUc&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=8','Note.\" WHERE `idlk2` = 1548'),
(1468,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=EaL9HQrrg5M&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=9','Note.\" WHERE `idlk2` = 1548'),
(1469,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=8oVmqA9TBE4&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=10','Note.\" WHERE `idlk2` = 1548'),
(1470,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=08UkIz3KgaI&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=11','Note.\" WHERE `idlk2` = 1548'),
(1471,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=b16KSx-hu84&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=12','Note.\" WHERE `idlk2` = 1548'),
(1472,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=9tWBiBWdtqI&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=13','Note.\" WHERE `idlk2` = 1548'),
(1473,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Scdc_-k5OUo&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=14','Note.\" WHERE `idlk2` = 1548'),
(1474,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=ln30TT_gSlc&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=15','Note.\" WHERE `idlk2` = 1548'),
(1475,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=EqzLKPmXlxM&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=16','Note.\" WHERE `idlk2` = 1548'),
(1476,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=v1ktSgGAKXQ&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=17','Note.\" WHERE `idlk2` = 1548'),
(1477,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LA4I3cWkp1E&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=18','Note.\" WHERE `idlk2` = 1548'),
(1478,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=-XHz9Sy3lKI&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=19','Note.\" WHERE `idlk2` = 1548'),
(1479,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=n8QxPIceeN8&list=PLkmvobsnE0GFK7YKhwqVVwf7plVan23Qn&index=20','Note.\" WHERE `idlk2` = 1548'),
(1480,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.linkedin.com/jobs/collections/similar-jobs/?currentJobId=4041061501&originToLandingJobPostings=4023092376&referenceJobId=4047430596','Note.\" WHERE `idlk2` = 1548'),
(1481,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=LgxFDmcoGeg','Note.\" WHERE `idlk2` = 1548'),
(1482,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1483,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1484,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1485,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1486,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1487,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1488,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1489,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1490,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=QU1WmSJrZ-8','Note.\" WHERE `idlk2` = 1548'),
(1491,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1492,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1493,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1494,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=QU1WmSJrZ-8','Note.\" WHERE `idlk2` = 1548'),
(1495,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1496,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1497,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1498,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1499,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1500,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1501,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1502,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1503,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1504,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1505,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1506,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1507,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1508,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1509,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1510,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' This SHOCKING Weight Loss Secrets That ACTUALLY Work Barbara O\'Neill - YouTube','Note.\" WHERE `idlk2` = 1548'),
(1511,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=sbqu00B6FqY','Note.\" WHERE `idlk2` = 1548'),
(1512,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Deposit Tenant Web Access - Make A Payment.pdf','Note.\" WHERE `idlk2` = 1548'),
(1513,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' Author A Book','Note.\" WHERE `idlk2` = 1548'),
(1514,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aAysDp5fNDM','Note.\" WHERE `idlk2` = 1548'),
(1515,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aAysDp5fNDM','Note.\" WHERE `idlk2` = 1548'),
(1516,162,'https://archman.us:10000/\",`lnk`=\" Webmin','http://cc.embarcadero.com/Item/23065','Note.\" WHERE `idlk2` = 1548'),
(1517,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1518,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1519,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1520,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Author A Book','Note.\" WHERE `idlk2` = 1548'),
(1521,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1522,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Author A Book','Note.\" WHERE `idlk2` = 1548'),
(1523,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m','Note.\" WHERE `idlk2` = 1548'),
(1524,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1525,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1526,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=Kbauf9IgsC4','Note.\" WHERE `idlk2` = 1548'),
(1527,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' Build a Webshop','Note.\" WHERE `idlk2` = 1548'),
(1528,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Strosup c++','Note.\" WHERE `idlk2` = 1548'),
(1529,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/2013 Stroustrup - The C++ Programming Language 4th Edition.pdf','Note.\" WHERE `idlk2` = 1548'),
(1530,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=aAysDp5fNDM','Note.\" WHERE `idlk2` = 1548'),
(1531,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Columbia, Missouri - Green Health Docs.pdf','Note.\" WHERE `idlk2` = 1548'),
(1532,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/Documents/Columbia, Missouri - Green Health Docs.pdf','Note.\" WHERE `idlk2` = 1548'),
(1533,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.linkedin.com/jobs/collections/similar-jobs/?currentJobId=4041061501&originToLandingJobPostings=4023092376&referenceJobId=4047430596','Note.\" WHERE `idlk2` = 1548'),
(1534,162,'https://archman.us:10000/\",`lnk`=\" Webmin','job op','Note.\" WHERE `idlk2` = 1548'),
(1535,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=y9Y6A9TmBSo','Note.\" WHERE `idlk2` = 1548'),
(1536,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=SCtrhisAZE8','Note.\" WHERE `idlk2` = 1548'),
(1537,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=e4WZqx2eeiw','Note.\" WHERE `idlk2` = 1548'),
(1538,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=zccjPEmUVXA','Note.\" WHERE `idlk2` = 1548'),
(1544,162,'https://archman.us:10000/\",`lnk`=\" Webmin','/home/archman/workspace/cb/cpp/cppMD01/bin/Debug/cppMD01','Note.\" WHERE `idlk2` = 1548'),
(1545,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=xd0rwOlQISg','Note.\" WHERE `idlk2` = 1548'),
(1546,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Strosup c++','Note.\" WHERE `idlk2` = 1548'),
(1547,162,'https://archman.us:10000/\",`lnk`=\" Webmin','Green Health','Note.\" WHERE `idlk2` = 1548'),
(1548,162,'https://archman.us:10000/\",`lnk`=\" Webmin',' Webmin','Note.\" WHERE `idlk2` = 1548'),
(1549,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://www.youtube.com/watch?v=kFOWlPbKpvg','Note.\" WHERE `idlk2` = 1548'),
(1550,162,'https://archman.us:10000/\",`lnk`=\" Webmin','https://archman.us:10000/','Note.\" WHERE `idlk2` = 1548'),
(1552,1551,'DNS For Dummies','/home/archman/Documents/DNS-for-Dummies-ebook-3-min.pdf','zzzzz'),
(1553,43,'DNS For Dummies','/home/archman/Documents/DNS-for-Dummies-ebook-3-min.pdf','Note.'),
(1554,170,'PRINCE LIVE - LOS ANGELES 2004 - **HQ* ***PLEASE LIKE &amp; SUBSCRIBE*** (TIME STAMPS) - YouTube','https://www.youtube.com/watch?v=zccjPEmUVXA','Note.'),
(1555,163,'WIRED - The Latest in Technology, Science, Culture and Business | WIRED','https://www.wired.com/','Note.'),
(1556,163,'WIRED - The Latest in Technology, Science, Culture and Business | WIRED','https://www.wired.com/','Note.'),
(1557,195,'How I installed the HARDEST operating system - YouTube','https://www.youtube.com/watch?v=ZHK9mZ6MxTc','Note.'),
(1558,195,'How I installed the HARDEST operating system - YouTube','https://www.youtube.com/watch?v=ZHK9mZ6MxTc','Note.'),
(1559,195,'Arch Linux post install Guide - YouTube','https://www.youtube.com/watch?v=YPrhIfm3VJs','Note.'),
(1560,195,'How Does Linux Boot Process Work? - YouTube','https://www.youtube.com/watch?v=XpFsMB6FoOs','Note.'),
(1561,170,'Blind Audition Covers that BLOW YOUR MIND on The Voice - YouTube','https://www.youtube.com/watch?v=1csdkcPyoZw','Note.'),
(1562,195,'https://www.youtube.com/watch?v=9alDHZTXzuE','','Note.'),
(1563,1562,'','https://www.youtube.com/watch?v=9alDHZTXzuE','Note.'),
(1564,1562,'','https://www.youtube.com/watch?v=9alDHZTXzuE','Note.'),
(1565,195,'Blazing Fast Website','https://www.linkedin.com/feed/update/urn:li:activity:7253071128129089536/','Note.'),
(1566,134,'DNS For Dummies','/home/archman/Documents/DNS-for-Dummies-ebook-3-min.pdf','Note.'),
(1569,195,'Part Picker','https://pcpartpicker.com/','Note.'),
(1570,195,'ONSBO TK-3 Black One-Piece Curved Glass ATX Mid Tower Pc Case, One-Piece Curved Glass, SP BTF MB/Dual 360 AIO/ATX PSU/40Series GPU, with 10 Fan Positions, 270 Degree Side View Display,Black Chassis','https://www.amazon.com/dp/B0D5HKTHY8/ref=sspa_dk_detail_6?pd_rd_i=B0D5HKTHY8&pd_rd_w=JgTsW&content-id=amzn1.sym.f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_p=f2f1cf8f-cab4-44dc-82ba-0ca811fb90cc&pf_rd_r=FQB03CC3901692BM8G5T&pd_rd_wg=mPPTh&pd_rd_r=d9687acf-edf9-4556-b8eb-e53edab7c875&s=pc&sp_csd=d2lkZ2V0TmFtZT1zcF9kZXRhaWxfdGhlbWF0aWM&th=1','Note.'),
(1571,196,'The Dangers of Whitewashing Black History - John Henrik Clarke.','https://www.youtube.com/watch?v=LqgAm2_8scg','Note.'),
(1573,196,'https://www.youtube.com/watch?v=MNQhXZkMhLg','','Note.'),
(1574,1573,'','https://www.youtube.com/watch?v=MNQhXZkMhLg','Note.'),
(1575,196,'Jesus Explained - Dr. John Henrik Clarke and Ishakamusa Barashango African Spiritual Concepts - YouTube','https://www.youtube.com/watch?v=xv7sMQ5ZEK4','Note.'),
(1576,196,'Dr. John Henrik Clarke The rise of Islam in Africa - YouTube','https://www.youtube.com/watch?v=POYTGjMTVKI','Note.'),
(1577,182,'https://www.youtube.com/watch?v=9vDdYo2qWWU&t=300s','The 6 BIGGEST SECRETS They\'re KEEPING FROM YOU! Dr. Sebi & Dr. Bobby Price - YouTube','Note.'),
(1578,196,'John Henrik Clarke European origins of African oppression - YouTube','https://www.youtube.com/watch?v=crCF-tFAAn4','Note.'),
(1580,1577,'The 6 BIGGEST SECRETS They\'re KEEPING FROM YOU! Dr. Sebi & Dr. Bobby Price - YouTube','https://www.youtube.com/watch?v=9vDdYo2qWWU&t=300s','Note.'),
(1582,193,'DR. SEBI DOCUMENTARY - YouTube','https://www.youtube.com/watch?v=9ycV9aAWjzM&t=17s','Note.'),
(1583,187,'The REAL reason Ethiopian bible &amp; book of Enoch was Banned | What they ACTUALLY reveal | #godsword - YouTube','https://www.youtube.com/watch?v=7Il-y0BzZLA&t=37s','Note.'),
(1584,183,'DESTROY Your Weak Erections With THIS Exercise (Only Takes 5 Minutes) - YouTube','https://www.youtube.com/watch?v=EvmG6oWhRsY','Note.'),
(1585,183,'STOP Eating The 7 Testosterone Killers That Make You SOFT!','https://www.youtube.com/watch?v=asyNvO2Lu-s','Note.'),
(1586,168,'ChatGPT Full Course 2024 | ChatGPT Full Course - Basic To Advanced | ChatGPT Tutorial | SImplilearn - YouTube','https://www.youtube.com/watch?v=Nre_UBhOWOY','Note.'),
(1587,167,'KDE Plasma 6.2 - It\'s all about quality of life! - YouTube','https://www.youtube.com/watch?v=x-HtDB8nm7w','Note.'),
(1588,167,'Plasma 6.2 - KDE Community','https://kde.org/announcements/plasma/6/6.2.0/','Note.'),
(1589,167,'Plasma 6.2 - KDE Community','https://kde.org/announcements/plasma/6/6.2.0/','Note.'),
(1590,180,'Amazon.com: JONSBO TK-2 Black ATX Mid-Tower Pc Case,Hyperboloid Glass Design, Separated Cabinet Structure, Al Alloy Shell Desktop Computer Case, Support BTF Motherboard/ATX Power supply/360 AIO, Black','https://www.amazon.com/Mid-Tower-Hyperboloid-Separated-Structure-Motherboard/dp/B0CNKB4BGH?ref_=ast_sto_dp&th=1','Note.'),
(1591,180,'Cooler Master TD500 MAX ATX Mid-Tower Case, Custom Atmos 360 MAX AIO, GX II Gold 850W ATX 3.0 PSU, Mobius 120P ARGB PWM Fan, Type C, Two-Stage Power Connector, Pre-Routed Cable Management','https://www.amazon.com/dp/B0CXLG87RL/ref=syn_sd_onsite_desktop_0?ie=UTF8&pf_rd_p=eece463e-9765-4c82-95e6-6bb6969aa564&pf_rd_r=5QEGHJPK7VKMWB0VRPC4&pd_rd_wg=AQVrY&pd_rd_w=H1136&pd_rd_r=1cf65f38-558e-4b35-b4f8-a0be6ad448e0&aref=M1tPpqPxuN&th=1','Note.'),
(1592,180,'Amazon.com: JONSBO TK-2 Black ATX Mid-Tower Pc Case,Hyperboloid Glass Design, Separated Cabinet Structure, Al Alloy Shell Desktop Computer Case, Support BTF Motherboard/ATX Power supply/360 AIO, Black','https://www.amazon.com/Mid-Tower-Hyperboloid-Separated-Structure-Motherboard/dp/B0CNKB4BGH?ref_=ast_sto_dp&th=1','Note.'),
(1593,183,'Is This Drink Better Than VIAGRA? (Get Hard & Boost Heart Health)','https://www.youtube.com/watch?v=jHONNKRcXA8','Note.'),
(1594,196,'Dr John Henrik Clarke - Exactly Who or What is a Jew - YouTube','https://www.youtube.com/watch?v=Aeo2u-Y2pKY','Note.'),
(1595,184,'Get Hard &amp; Boost Heart Health After 50 - Is This Drink Better Than VIAGRA? | Dr Barbara O\'neill - YouTube','https://www.youtube.com/watch?v=2HbcArP5bN0','Note.'),
(1596,184,'','https://www.youtube.com/watch?v=nCm0kUS_wm8','Note.'),
(1598,184,'','https://www.youtube.com/watch?v=nCm0kUS_wm8','Note.'),
(1599,184,'Mixing CINNAMON with CLOVES Can Trigger IRREVERSIBLE Body Reaction! ','https://www.youtube.com/watch?v=NEkSeiUtxjY','Note.'),
(1600,168,'100+ Linux Things you Need to Know - YouTube','https://www.youtube.com/watch?v=LKCVKw9CzFo&t=17s','Note.'),
(1601,168,'TUXEDO Computers','https://www.tuxedocomputers.com/index.php','Note.'),
(1602,180,'SAMSUNG 990 PRO SSD NVMe M.2 PCIe Gen4, M.2 2280 Internal Solid State Hard Drive, Seq. Read Speeds Up to 7,450 MB/s for High End Computing, Gaming, and Heavy Duty Workstations, MZ-V9P2T0B/AM','https://www.amazon.com/SAMSUNG-Internal-Expansion-MZ-V9P2T0B-AM/dp/B0BHJJ9Y77/ref=sr_1_3?crid=1P7GZQLP540Z8&dib=eyJ2IjoiMSJ9.hq65CJZCZBtlQXwi__p7XTc5g4VXV7cRXofeGNKuMcKMLMx54W1DaJ5qJw_FPs6OH5g3ZOMpECsowwahDbdbEbfe51LXFQmkgZri4w4jzVLaPMGnd_2j2bGtbYsykCpZbkFu-2VIw2QRbF9WHJ6EFiGjyVV9aET2SNB4jeRsFqrdqmIoMHVGRVX3Oh3q7GW1m-PFfp_VvF5O1q5XNPkmXmmqJctCpCcr43kohFdTzho.8CCjhq4cQYf5JP_U4YjNRN4N84Hmgu7W_F2t32hgaE0&dib_tag=se&keywords=pcie%2B4.0%2Bnvme&qid=1731203045&sprefix=pci4%2Bnvme%2B2tb%2Caps%2C167&sr=8-3&th=1','Note.'),
(1603,183,'Fix ED & High Blood Pressure FAST (The Natural Way!) ','https://www.youtube.com/watch?v=-tbOUsrj9K4','Note.'),
(1604,168,'How to Crack Software (Reverse Engineering) - YouTube','https://www.youtube.com/watch?v=FBwRTWEzGN0','Note.'),
(1605,184,'','https://www.youtube.com/watch?v=yUjPqsf2hrU','Note.'),
(1606,168,'Install Windows the Arch Linux Way','https://christitus.com/install-windows-the-arch-linux-way/','Note.'),
(1607,150,'Introduction to Angular - Learning Angular (Part 1) - YouTube','https://www.youtube.com/watch?v=xAT0lHYhHMY&list=PL1w1q3fL4pmj9k1FrJ3Pe91EPub2_h4jF','Note.'),
(1608,169,'Drink It or Chew It Dissolve Mucus Your Sinus, Chest &amp; Lungs Will Love You (not what you think) - YouTube','https://www.youtube.com/watch?v=mUERdv3qqHU','Note.'),
(1609,163,'These 5 Bible Verses Made Me A Millionaire - YouTube','https://www.youtube.com/watch?v=mTT4Km6Yd5E','Note.'),
(1610,197,'Master Detail 01','/home/archman/workspace/cb/cpp/cppMD01/bin/Release/cppMD01','Note.'),
(1611,197,'Generate COBOL Program ','/home/archman/workspace/cb/cpp/gencobo/bin/Release/gencobo','Note.'),
(1612,197,'COBOL Generator','/home/archman/workspace/cb/cpp/gencobo/bin/Debug/gencobo','Note.'),
(1613,197,'Generate COBOL Program','/home/archman/workspace/cb/cpp/gencobo/bin/Release/gencobo','Note.'),
(1614,130,'Generate COBOL Source Code','/home/archman/workspace/cb/cpp/gencobo/bin/Release/gencobo','Note.'),
(1615,130,'Programmer\'s Workbench','/home/archman/workspace/cb/cpp/cppMD01/bin/Release/cppMD01','Note.'),
(1616,130,'Former Version of Workbench','/home/archman/workspace/cb/cpp/grailsGen/bin/Release/grailsGen','Note.'),
(1617,193,'URGENT What They Don\'t Want You Know About my Secret Discovery But I\'ll Expose Everything !!! - YouTube','https://www.youtube.com/watch?v=JDUCqKTusPI&t=339s','Note.'),
(1618,182,'SECRET Page OF THE BIBLE to ATTRACT MONEY without Limits - Law Of Attraction - YouTube','https://www.youtube.com/watch?v=1V7BCvOejBE','Note.'),
(1619,182,'SECRET Page OF THE BIBLE to ATTRACT MONEY without Limits - Law Of Attraction - YouTube','https://www.youtube.com/watch?v=1V7BCvOejBE','Note.'),
(1620,182,'SECRET Page OF THE BIBLE to ATTRACT MONEY without Limits  Law Of Attraction  YouTube','https://www.youtube.com/watch?v=1V7BCvOejBE','Note.'),
(1621,130,'Going Forward','/home/archman/workspace/cb/cpp/gf01/bin/Release/gf01','Note.'),
(1622,130,'Former Toolbox','/home/archman/workspace/cb/cpp/grailsGen/bin/Release/grailsGen','Note.'),
(1623,184,'','https://www.youtube.com/watch?v=b3B8P8Zt97s','Note.'),
(1624,184,'Only 2 Spoons Needed to Cleanse Your Body of Parasites  Naturally!','https://www.youtube.com/watch?v=b3B8P8Zt97s','Note.'),
(1625,184,'','https://www.youtube.com/watch?v=EeqeehFvPnE','Note.'),
(1626,184,'Top 9 BEST Vegetables Diabetics MUST Eat ( Lower Blood Sugar ) - YouTube','https://www.youtube.com/watch?v=Mgb97VErLsM','Note.'),
(1627,184,'Simple Delicious Alkaline Recipes! - YouTube','https://www.youtube.com/watch?v=MuJH-Nr7fAU','Note.'),
(1628,184,'Sperm Will Be Stronger, 50% More If You Do This Also Aids Erections | Barbara O\'neill - YouTube','https://www.youtube.com/watch?v=0wabQxX8jGs','Note.'),
(1629,184,'Joint Pain and Loss of Balance? Avoid These 6 Everyday Foods and Supplement - Dr. Barbara O\'Neill - YouTube','https://www.youtube.com/watch?v=_2JQAlD477Q','Note.'),
(1630,184,'Heart Health and High Blood Pressure - Barbara O\'Neill - YouTube','https://www.youtube.com/watch?v=K1m3FmhDH9I','Note.'),
(1631,184,'When You Eat Cayenne Pepper Every Day, Here\'s What Happened to Your Body (is BAD?) - Barbara O\'Neill - YouTube','https://www.youtube.com/watch?v=NUmcpehoARo&t=1202s','Note.'),
(1632,184,'Ralph Smart Diet - 7 Alkaline Foods That Will Flush Toxins And Mucus From Your Body - YouTube','https://www.youtube.com/watch?v=H2FUDpGVTAw','Note.'),
(1633,184,'16 Alkaline Foods You Must Have In Your Daily Diet - YouTube','https://www.youtube.com/watch?v=J_0Uw_LQobc','Note.'),
(1634,184,'Detoxification Secrets: 12 Foods That Actually Work - YouTube','https://www.youtube.com/watch?v=KLFjpM_1268','Note.'),
(1635,130,'CODE Blocks Code Geneator','/home/archman/workspace/cb/cpp/cg01/bin/Debug/cg01','Note.'),
(1636,130,'Code Blocks Code Generator','/home/archman/workspace/cb/cpp/cppDemo01/bin/Release/cppDemo01','Note.'),
(1637,184,'Ralph Smart Diet - 7 Alkaline Drinks That Will Flush Toxins And Mucus From Your Body - YouTube','https://www.youtube.com/watch?v=cPXmVpkkWTs','Note.'),
(1638,193,'DR. SEBI DOCUMENTARY - YouTube','https://www.youtube.com/watch?v=9ycV9aAWjzM','Note.'),
(1639,193,'How To Heal High Blood Pressure (Hypertension) - Dr. Sebi Methodology - YouTube','https://www.youtube.com/watch?v=H9HklcojVFs&t=2s','Note.'),
(1640,184,'When You Eat Cayenne Pepper Every Day, Here\'s What Happened to Your Body (is BAD?) - Barbara O\'Neill - YouTube','https://www.youtube.com/watch?v=NUmcpehoARo','Note.'),
(1641,184,'Barbara O\'Neill Says YOU\'RE EATING POISON, Throw These DEADLY Foods NOW! - YouTube','https://www.youtube.com/watch?v=K0U-iGaj_2I','Note.'),
(1642,184,'Clean Arteries: 12 Foods to Prevent HEART ATTACK..! - YouTube','https://www.youtube.com/watch?v=WOHTciJw-EA','Note.'),
(1643,184,'The Best MEAL to Clear Out Your Arteries - YouTube','https://www.youtube.com/watch?v=KWS-Tecjxdk','Note.'),
(1644,184,'90% of Diabetes Would be REVERSED [If You STOP These Foods] - YouTube','https://www.youtube.com/watch?v=qCQW9e7CrEk','Note.'),
(1645,184,'5 Miracle Oils to Instantly Lower Blood Pressure & Clear Arteries | Barbara O\'Neill\'s Secrets - YouTube','https://www.youtube.com/watch?v=ZxvUpZ5-BGE','Note.'),
(1646,193,'Ralph Smart Diet - 7 Alkaline Drinks That Will Flush Toxins And Mucus From Your Body - YouTube','https://www.youtube.com/watch?v=cPXmVpkkWTs','Note.'),
(1647,184,'4 TIMES A WEEK To Increase Testosterone, Sperm And ERECTIONS LIKE A 20 YEAR OLD ! | Barbara O\'neill - YouTube','https://www.youtube.com/watch?v=ohu8RVDGIF4','Note.'),
(1648,130,'Date Time Utility','/home/archman/workspace/cb/cpp/cppDT01/bin/Debug/cppDT01','Note.'),
(1649,198,'The Brutal Financial Truth Christians Need to Hear - YouTube','https://www.youtube.com/watch?v=T-fpFPJaPRM','Note.'),
(1651,168,'Install Gentoo Linux (Part 2) to the desktop - YouTube','https://www.youtube.com/watch?v=wQxBsunITaA','Note.'),
(1652,168,'How to install Gentoo Linux - YouTube Part One','https://www.youtube.com/watch?v=q9_sXkA4Rv8&t=29s','Note.'),
(1653,168,'How to Upgrade Your Gentoo Linux Kernel - Best Guide on YouTube! - YouTube','https://www.youtube.com/watch?v=9vHHZfHaAYA','Note.'),
(1654,184,'How To Turn These 3 Simple Ingredients Into NATURAL VIAGRA For Men After 50? - Dr. Barbara O\'neill - YouTube','https://www.youtube.com/watch?v=jznPgLUeyx4','Note.'),
(1655,184,'3 Miracle Herbs to Instantly Lower Blood Pressure & Clear Arteries','https://www.youtube.com/watch?v=nCm0kUS_wm8&t=1065s','Note.'),
(1657,173,'Why This Herb Is BANNED Everywhere But CURES Everything','https://www.youtube.com/watch?v=d14dzy_B5KQ','Note.'),
(1658,193,'If You Do This Your Insulin Resistance Will Be Normal In 2 Weeks! - YouTube','https://www.youtube.com/watch?v=eLIpBAEYQBM','Note.'),
(1659,184,'ONE CUP A DAY For 100% NATURAL Testosterone Boost And 20 Year Old Erections | Dr Barbara ONeil - YouTube','https://www.youtube.com/watch?v=b8DcZ3e4IIY','Note.'),
(1660,184,'This 30-Second Night Ritual REVERSES Fatty Liver & Melts Belly Fat | Barbara O\'Neill Secrets - YouTube','https://www.youtube.com/watch?v=G5qhJXh6hO0','Note.'),
(1661,184,'Barbara O\'Neill Reveals the 30 Second Night Ritual That REVERSES Fatty Liver & Melts Belly Fat! - YouTube','https://www.youtube.com/watch?v=NR1d8Bkzg-Q','Note.'),
(1663,193,'All toxins and parasites will come out of your body','https://www.youtube.com/watch?v=ottk2ECrLcE','Note.'),
(1664,193,'Why This Herb Is BANNED Everywhere But CURES Everything','https://www.youtube.com/watch?v=d14dzy_B5KQ','Note.'),
(1665,168,'Arch Linux: My Basic Maintenance - YouTube','https://www.youtube.com/watch?v=wwSkFi3h2nI','Note.'),
(1667,184,'','https://www.youtube.com/watch?v=Gw6iqJ5q-4o','Note.'),
(1668,184,'1 CUP Before Bed: IMPROVES Pancreas & Lowers Blood Sugar (DIABETES) QUICKLY | Barbara O\'Neill - YouTube','https://www.youtube.com/watch?v=VzrSYKqdOsw','Note.'),
(1669,199,'Gentoo AMD64 Handbook - Gentoo wiki','https://wiki.gentoo.org/wiki/Handbook:AMD64','Note.'),
(1670,184,'Top 10 Best Breakfasts Every Diabetic Must Try! - YouTube','https://www.youtube.com/watch?v=yYZ9Sz_DhxU','Note.'),
(1671,168,'Full Gentoo Installation - Big Brain Edition - YouTube','https://www.youtube.com/watch?v=6yxJoMa05ZM','Note.'),
(1672,168,'Cleaning Up a Gentoo Linux System with Eclean - YouTube','https://www.youtube.com/watch?v=ya0tC-9BMNo','Note.'),
(1673,168,'Speed up Your Emerge Times on Gentoo - YouTube','https://www.youtube.com/watch?v=ttN7dni0ILM','Note.'),
(1674,168,'How to use USE Flags in Gentoo','https://www.youtube.com/watch?v=BkpvZYDMX34','Note.'),
(1675,168,'After Installing Arch And Gentoo - Setting up a Graphical Environment and Users - YouTube','https://www.youtube.com/watch?v=CwLCcRY-xac','Note.'),
(1676,168,'Gentoo Linux Important Details Explained  YouTube','https://www.youtube.com/watch?v=8QcI43IwkVc&t=263s','Note.');
/*!40000 ALTER TABLE `lk2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sdes` varchar(125) NOT NULL,
  `note` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES
(1,'Line One','Test 1.'),
(2,'Line Two.','Test Two');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES
(0,0,'COBOL Programming',5),
(1,0,'c++ Programming',2);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(0,'2024-04-16','Boss Hogg');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdoc`
--

DROP TABLE IF EXISTS `pdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sdes` varchar(125) NOT NULL,
  `fs` varchar(150) NOT NULL,
  `doc` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdoc`
--

LOCK TABLES `pdoc` WRITE;
/*!40000 ALTER TABLE `pdoc` DISABLE KEYS */;
INSERT INTO `pdoc` VALUES
(1,'Basic Skelenton Project','/home/archman/workspace/xw/hw01/Release/hw01','Serves as a base software layer for applications.  Includes support for boost and MySQL.'),
(2,'Program Documentation Interface','/home/archman/workspace/xw/Tes11/Release/Tes11','This application provides a workbench for program documentation.'),
(3,'Run PDoc Links','/home/archman/workspace/xw/Tes07/Release/Tes07','This application executes the Pdoc links program.'),
(4,'Programmer\'s Workbench','/home/archman/workspace/xw/pwb/Release/pwb','BCS Programmers Workbench'),
(5,'Get Title of Web Page','/home/archman/workspace/xw/Tes05/Release/Tes05','This routing gets the title from the web page.'),
(6,'MySQL List Tables In Database','/home/archman/workspace/xw/Tes06/Debug/Tes06','This utility deals with MySQL metadata.'),
(7,'Unused Application','/home/archman/workspace/xw/Tes08/Debug/Tes08','This application is available for subsequent work.'),
(8,'This application is available','/home/archman/workspace/xw/Tes09/Debug/Tes09','Blank Application'),
(9,'Dialog From wvFormBuilder','/home/archman/workspace/xw/Tes10/Release/Tes10','This app makes dialog builder app available.'),
(10,'Working Dialog Calling Sequence','/home/archman/workspace/xw/Tes12/Release/Tes12','This make a working modal dialog.'),
(11,'Boost File Specifications Routine','/home/archman/workspace/xw/Tes14/Release/Tes14','This snippet delivers a list of file specifications.'),
(12,'Notebook Example','/home/archman/workspace/xw/Tes15/Release/Tes15','This program is used to demonstrate notebook cunctionality.'),
(13,'HTML Parser Routine','/home/archman/workspace/xw/Tes16/Release/Tes16','This application is used to demonstrate HTML parser functionality.'),
(14,'Copy DVD to Sub Directory','/home/archman/workspace/xw/Tes19/Release/Tes19','This application copies files from location a to location b.'),
(15,'Programmer\'s Documentation System','/home/archman/workspace/xw/Tes18/Debug/Tes18','This application you use for programmer\'s documentation system.'),
(16,'Unused','/home/archman/workspace/xw/Tes19/Release/Tes19','This application is available for development.'),
(17,'View Text Files','/home/archman/workspace/xw/Tes20/Debug/Tes20','This application opens several files for viewing.'),
(22,'Browse Source Files In Notebook','/home/archman/workspace/xw/Tes22/Release/Tes22','This app allows viewing of source code.'),
(23,'Extratorrent To Table','/home/archman/workspace/xw/Tes26/Release/Tes26','This application reads Extraorrent web pages, scrapes the magnets ans URL and places the contents in a database.'),
(25,'List MySQL Data Elements','/home/archman/workspace/xw/Tes24/Release/Tes24','This app lists the data elements of a MySQL table.'),
(26,'Layout of New Database Interface','/home/archman/workspace/xw/Tes25/Release/Tes25','This is the proposed database layout for new systems.'),
(27,'Extratorrent DB Management','/home/archman/workspace/xw/Tes26/Release/Tes26','Extratorrent to database.'),
(28,'Convert mp3 to Wav','/home/archman/workspace/xw/Tes27/Release/Tes27','Convert mp3 files to wav format.'),
(29,'Periodicals And Webs','/home/archman/workspace/xw/Tes28/Release/Tes28','Links to periodicals and webs'),
(30,'Search Extratorrent DB','/home/archman/workspace/xw/Tes29/Release/Tes29','This applicatin will search the Extratorrent database with specified key words.'),
(31,'Boost Network Client','/home/archman/workspace/xw/Tes31/Release/Tes31','This app utilizes the Boost Client Application'),
(32,'MD Links','/home/archman/workspace/xw/Tes30/Release/Tes30','Master Detail List of links PDF\'s and executables.'),
(33,'BCS Invoice System','/home/archman/workspace/xw/Tes32/Release/Tes32','Prepare Customer Invoices'),
(34,'Prepare Stackoverflow Source','/home/archman/workspace/xw/Tes33/Debug/Tes33','Put four spaces in source code for subsequent use in Stackoverflow.'),
(35,'Display Modal Dialog','/home/archman/workspace/xw/Tes34/Release/Tes34','Invoke a modal dialog stand alone.'),
(36,'Generate Bootstrap 4 pages single menu file','/home/archman/workspace/xw/Tes35/Release/Tes35','Use a single menu to generate multiple bootstrap 4 pages.'),
(37,'Execute Video Tutorials','/home/archman/workspace/xw/Tes38/Release/Tes38','Diver for viewing video tutorials.'),
(38,'Report Popular Authors','/home/archman/workspace/xw/Tes36/Release/Tes36','Report Embarcadero Popular Authors'),
(39,'Paste WordPress Code Blocks','/home/archman/workspace/xw/Tes37/Release/Tes37','Paste WordPress Code Blocks'),
(40,'Create MySQL Dump and Restore','/home/archman/workspace/xw/Tes39/Release/Tes39','Manage MySQL Databases'),
(41,'Programmer\'s Workbench New','/home/archman/workspace/cb/cpp/DlgTst/bin/Release/DlgTst','PWB'),
(42,'Programmer\'s Documentation System New','/home/archman/workspace/cb/cpp/pDoc2/bin/Release/pDoc2','Docs'),
(43,'Update Source Code 01','/home/archman/workspace/cb/cpp/usc01/bin/Release/usc01','Note.'),
(51,'Code Blocks Project Generation Skeleton','/home/archman/workspace/cb/cpp/cbproj/bin/Release/cbproj','Skeleton for new apps.'),
(52,'Code Blocks Project Generator','/home/archman/workspace/cb/cpp/cbpgen/bin/Release/cbpgen','Generates new Codeblocks project.'),
(53,'Generate COBOL Program','/home/archman/workspace/cb/cpp/gencobo/bin/Release/gencobo','Generate COBOL Program'),
(54,'Zip A Sub Directory','/home/archman/workspace/cb/cpp/zipem/bin/Release/zipem','Create Zip File'),
(55,'Directory Control Examples','/home/archman/workspace/cb/cpp/dirCtrl/bin/Release/dirCtrl','Note.'),
(56,'Generate MySql Source Code','/home/archman/workspace/cb/cpp/cloneu/bin/Release/cloneu','Generate code to access every table in mysql.'),
(57,'Directory Control New','/home/archman/workspace/cb/cpp/dirCtrl2/bin/Release/dirCtrl2','Note.'),
(58,'Mount And Copy Utility','/home/archman/workspace/cb/cpp/macUtil/bin/Release/macUtil','Note.'),
(59,'Pick Source And Destination From List','/home/archman/workspace/cb/cpp/psdUTil/bin/Release/psdUTil','Note.');
/*!40000 ALTER TABLE `pdoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES
(1,0,'AJ','(573) 814 1842'),
(2,0,'Algiere Salvage','(573) 474 4000'),
(3,0,'Ameristaff','(573) 256 1638'),
(4,0,'Babe Martin','(573) 424 7615'),
(5,0,'Bernard King','(573) 356 9001'),
(6,0,'Big E Auto','(573) 449 0413'),
(7,0,'Bill T P R','(573) 673 7969'),
(8,0,'Bruce Pavolish','(630) 688 1328'),
(9,0,'Bryant Thompson','(573) 529 1056'),
(10,0,'Buck Simms','(573) 356 90322'),
(11,0,'Butch Johnson','(573) 441 0677'),
(12,0,'CPD','(573) 874 7652'),
(13,0,'Carole Alexander','(816) 363 1037'),
(14,0,'Cason','(573) 303 4483'),
(16,0,'Char Cell','(202) 489 6897'),
(17,0,'Christy Blakemoer','(573) 886 4000'),
(19,0,'CIA Cell','(816) 332 5653'),
(20,0,'Civil Rights','(866) 627 7748'),
(21,0,'Clarence Jones','(816) 442 9115'),
(22,0,'CPS','(573) 214 3400'),
(23,0,'Dwight Penny','(573) 239 1426'),
(24,0,'Dad','(573) 474 7417'),
(25,0,'Dan Carter','(970) 673 4765'),
(26,0,'Dan Tow','(573) 445 1082'),
(27,0,'Danielle','(773) 699 4263'),
(28,0,'DBRL','(573) 443 3161'),
(29,0,'Ded Jeff','(573) 751 3916'),
(30,0,'Delbert Harris','(573) 875 8586'),
(31,0,'Dizzy','(573) 442 9450'),
(32,0,'Dowling Adam','(573) 268 8108'),
(33,0,'Elston','(573) 449 0893'),
(35,0,'Frank Stapleton','(678) 571 4715'),
(36,0,'Freda','(573) 474 7637'),
(37,0,'GSN','(573) 499 3803'),
(38,0,'Geanie G','(573) 819 9691'),
(39,0,'Gene Lynn','(314) 531 9136'),
(40,0,'George','(573) 443 2300'),
(41,0,'Go Daddy','(480) 505 8877'),
(42,0,'Goat','(573) 529 0969'),
(43,0,'Gulden','(573) 529 9280'),
(44,0,'Holiday Inn Exec Center','(573) 445 8531'),
(45,0,'Homers','(573) 442 5415'),
(46,0,'IOC','(800) 843 4753'),
(47,0,'Ivan','(573) 268 8813'),
(48,0,'JB','(573) 489 7755'),
(49,0,'JB2','(573) 424 5209'),
(50,0,'JB Home','(573) 442 6254'),
(51,0,'Jerry Brown','(573) 356 9480'),
(52,0,'Jackman Fayette','(660) 248 3135'),
(53,0,'James','(573) 219 1634'),
(54,0,'James Kerr Carpe Deim','(800) 658 5150'),
(55,0,'Jason','(573) 356 5211'),
(56,0,'Jay Rowen','(314) 223 8580'),
(57,0,'Jerry Hyde','(573) 424 0314'),
(58,0,'Jesus','(573) 219 1096'),
(59,0,'Joe McGlynn','(831) 431 2029'),
(60,0,'John Home','(573) 823 7659'),
(61,0,'John LaFlure','(573) 256 5402'),
(62,0,'John McQuilkin','(573) 874 4190'),
(63,0,'Josh','(573) 449 2929'),
(64,0,'K. G. Cell','(314) 280 0757'),
(65,0,'K. Gooddwin','(314) 355 5073'),
(66,0,'KJ','(573) 424 5462'),
(67,0,'Kieth Haines','(573) 200 3830'),
(68,0,'Kevin','(314) 591 3466'),
(69,0,'Kyle Car Salvage','(573) 823 3095'),
(71,0,'Labor Ready','(573) 874 8916'),
(72,0,'Laval Hickem','(573) 476 5618'),
(73,0,'Leilani','(573) 356 8880'),
(74,0,'Lori Yannis','(573) 529 1277'),
(75,0,'Marvin Banton','(903) 875 5245'),
(76,0,'Matt','(573) 253 3638'),
(77,0,'MEND','(573) 449 2581'),
(78,0,'Midway Arms','(573) 445 6363'),
(79,0,'Mike Blume','(573) 442 8552'),
(80,0,'MO UI','(888) 775 3445'),
(81,0,'Money','(573) 356 1423'),
(82,0,'Money','(573) 239 1914'),
(83,0,'Mrs. J.','(573) 529 6669'),
(84,0,'Mrs. J\'s','(573) 815 9536'),
(85,0,'NAPA','(573) 449 2637'),
(86,0,'Nick','(573) 875 4893'),
(87,0,'Nina','(573) 442 1132'),
(88,0,'O Reilly','(573) 474 9551'),
(89,0,'Osamma','(573) 356 2424'),
(90,0,'P. O.','(573) 884 7016'),
(91,0,'Pastor Stapelton','(573) 823 8698'),
(92,0,'Pastor Stapelton','(573) 356 3123'),
(93,0,'Pastor Woods','(573) 356 5637'),
(94,0,'Paul','(573) 424 0105'),
(95,0,'Quiintel','(573) 881 7090'),
(96,0,'Ray','(573) 268 1692'),
(97,0,'Ray WD Trans','(573) 815 9966'),
(98,0,'Rev. Freeman','(573) 234 9494'),
(99,0,'Rich King','(573) 474 7704'),
(100,0,'Rick','(573) 529 9091'),
(101,0,'Rod','(859) 771 7631'),
(102,0,'Rodney Johnson','(573) 268 0819'),
(103,0,'Rolando','(573) 808 1736'),
(104,0,'Ron Broosters','(630) 495 2442'),
(105,0,'Ron Glover IBM','(573) 442 4157'),
(106,0,'Ron Glover IBM','(914) 449 5704'),
(107,0,'Royce Cell','(931) 309 8289'),
(108,0,'Royce Thrift','(573) 442 3981'),
(109,0,'Rufus','(573) 815 0114'),
(110,0,'Rufus Cell','(573) 489 1402'),
(111,0,'Sage','(573) 268 1169'),
(112,0,'Sam','(573) 424 8368'),
(113,0,'Sam Jr','(573) 673 8669'),
(114,0,'Sandra','(573) 474 2433'),
(115,0,'Shelia','(573) 268 8577'),
(116,0,'Shella','(573) 489 2769'),
(117,0,'Sheriff','(573) 442 6131'),
(118,0,'Simms Automotive','(573) 443 3991'),
(119,0,'Spry Blake','(573) 289 6626'),
(120,0,'Stcy','(913) 722 3252'),
(121,0,'Stella Beason','(573) 219 0105'),
(122,0,'Steve Concannon','(573) 882 5511'),
(123,0,'Taxi Terry','(573) 441 1414'),
(124,0,'Terry Paige','(312) 802 3681'),
(125,0,'Terry Tiger Taxi','(573) 864 2155'),
(126,0,'Tiger Taxi','(573) 474 3222'),
(129,0,'Tony','(205) 381 9342'),
(130,0,'Travis','(573) 875 5529'),
(131,0,'Vick','(573) 886 9613'),
(132,0,'Vicki','(573) 819 2024'),
(133,0,'VISA GSN','(866) 785 3619'),
(134,0,'Wally Bdwy','(573) 445 3146'),
(135,0,'War','(573) 289 9578'),
(136,0,'Woody','(573) 356 2351'),
(137,0,'Woodys','(573) 875 1442'),
(138,0,'Wright\'s Templs','(573) 449 3206'),
(139,0,'Bill Vaden','(816) 921-3748'),
(140,0,'May Etta Carter','(573) 442 8036'),
(141,0,'Allen Edmond Recrafting','(877) 495 5564'),
(142,0,'A2 Hosting','(888) 546 8946'),
(143,0,'Anna','(573) 881 4450'),
(144,0,'Anna Home','(573) 445 4243'),
(146,0,'Bill Jenkins','(573) 673 6540'),
(147,0,'Bill Reardon','(573) 999 4691'),
(148,0,'Bro. Richard','(573) 415 7623'),
(149,0,'Bro. Rich','(573) 644 3312'),
(150,0,'Broadway Diner',' (573)875 1173'),
(151,0,'Brock Williams','(573) 819 8227'),
(153,0,'Eugene Cason','(573) 303 4483'),
(154,0,'cc sECUTIRY','(573) 875 7315'),
(155,0,'Columbia Computer Center (CCC) ','(573) 442 9445'),
(156,0,'Chet King','(573) 881 5227'),
(157,0,'Chineese Wok','(573) 443 5099'),
(158,0,'Chris Carson','(573) 424 2754'),
(159,0,'CIA','(816) 3631037'),
(160,0,'Cody','(573) 673 9324'),
(161,0,'Craig','(573) 554 2608'),
(198,0,'Doree Bardes','(573) 445 4893'),
(163,0,'Deatra Monnogramming','(573) 289 6800'),
(164,0,'Don (Pee Wee) Jackman','(573) 355 1990'),
(165,0,'Dongyan Yan','(510) 936 2843'),
(166,0,'Eugene Jackson','(573) 864 7837'),
(167,0,'Family Health Center','(573) 214 2314'),
(168,0,'French Laundry','(573) 449 4152'),
(169,0,'Go Daddy','(480) 505 8877'),
(170,0,'Jesus','(513) 219 1096'),
(171,0,'Dan Doug Perry','(573) 999 9676'),
(172,0,'CC Help Desk','(573) 875 4357'),
(174,0,'K Simms Cell','(660) 537 3231'),
(175,0,'Kilgore','(573) 442 0194'),
(176,0,'Larry Perry','(660) 888 9608'),
(177,0,'Locksmith','(573) 443 5397'),
(178,0,'Martha','(573)  268 2862'),
(179,0,'Billy Vaden','(816) 898 1580'),
(180,0,'Bryan Kee','(573) 424-3610'),
(181,0,'Charlie Estill','(573) 673 0035'),
(184,0,'Danny Taphouse','(573) 999 9148'),
(185,0,'Eng & Woods','(573) 874-4190'),
(186,0,'Mel Williams','(660) 882-3091'),
(187,0,'Mom Cell','(573) 228-9616'),
(188,0,'Natl Do Not Call','(888) 382-1222'),
(189,0,'O\'Brain','(660) 248-3771'),
(190,0,'Steve Carroll','(573) 673-7703'),
(191,0,'Pam Taylor','(660) 888 1017'),
(192,0,'Raja','(573) 875 4661'),
(193,0,'Ricky Hardiman','(573) 529 9091'),
(194,0,'Sam Shop','(573) 443 7600'),
(195,0,'Smitty (James Smith)','(573) 442 4157'),
(196,0,'Tink','(314) 261 1218'),
(197,0,'Tonfy','(405) 213 9827');
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt`
--

DROP TABLE IF EXISTS `pt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(125) NOT NULL,
  `tip` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt`
--

LOCK TABLES `pt` WRITE;
/*!40000 ALTER TABLE `pt` DISABLE KEYS */;
INSERT INTO `pt` VALUES
(1,'Create New Project','django-admin startproject myshop'),
(2,'Create New Module','django-admin startapp shop'),
(3,'Start Development Server Production','python manage.py runserver 0.0.0.0:8000'),
(4,'Make Migrations','python manage.py makemigrations'),
(5,'Sync Database','python manage.py migrate'),
(6,'Create Super User','python manage.py createsuperuser'),
(7,'MySQL Imports','import pymysql\r\npymysql.install_as_MySQLdb()\r\n'),
(8,'MySQL Declaration','DATABASES = {\r\n    \'default\': {\r\n        \'ENGINE\': \'django.db.backends.mysql\',\r\n        \'NAME\': \'dj02\',\r\n        \'USER\' : \'bcs\', \r\n        \'PASSWORD\' : \'Password\',\r\n        \'HOSTS\' : \'\',\r\n        \'PORT\' : \'\',\r\n    }\r\n}\r\n'),
(9,'Mint Command Line Webmin','iptables -I INPUT 1 -p tcp --dport 10000 -j ACCEPT'),
(10,'Compile c++ Command Line','g++ -std=c++17 *.cc -o example `pkg-config gtkmm-3.0 --cflags --libs`\r\n'),
(11,'Kill Process At Port','fuser -k 8080/tcp');
/*!40000 ALTER TABLE `pt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refs`
--

DROP TABLE IF EXISTS `refs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cval` varchar(5) NOT NULL,
  `rref` varchar(1200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refs`
--

LOCK TABLES `refs` WRITE;
/*!40000 ALTER TABLE `refs` DISABLE KEYS */;
INSERT INTO `refs` VALUES
(1,'1','Birtchnell, J. (2003). The two of me: The rational outer me and the emotional inner me. London; New York: Routledge.'),
(2,'2','Claxton, G. (1997). Hare brain, tortoise mind: How intelligence increases when you think less. Great Britain: Fourth Estate Limited.'),
(3,'3','Damasio, A.R. (1994). Descartes’ error: Emotion, reason, and the human brain. New York: G.P. Putnam.'),
(4,'4','Damasio, A. (2000). The feeling of what happens: Body and emotion in the making of consciousness. New York: Mariner Books.'),
(5,'5','De Coster, J., & Smith, E.R. (2000). Dual-process models in social and cognitive psychology: Conceptual integration and links to underlying memory systems. Personality and Social Psychology Review, 4(2), 108-131.'),
(6,'6','Epstein, S. (1994). Integration of the cognitive and psychodynamic unconscious. American Psychologist, 49(8), 709-724.'),
(7,'7','Evans, J.S.B.T., & Frankish, K. (Eds.). (2009). In two minds: Dual processes and beyond. Oxford; New York: Oxford University Press.'),
(8,'8','Gazzaniga, M.S. (2005). The ethical brain: The science of our moral dilemmas. New York/Washington, D.C.: Dana Press.'),
(9,'9','Gazzaniga, M.S. (1998). The mind’s past. California: University of California Press.'),
(10,'10','Gazzaniga, M.S. (2011). Who\'s in charge? Free will and the science of the brain.  New York: HarperCollins Publishers.'),
(11,'11','Goleman, D. (2006). Social intelligence: The new science of human relationships. New York: Bantam Books.'),
(12,'12','Greenwald, A.G., & Banaji, M.R. (1989). The self as a memory system: powerful, but ordinary. Journal of Personality and Social Psychology, 57(1), 41-54.'),
(13,'13','Haidt, J. (2006). The happiness hypothesis: Finding modern truth in ancient wisdom. New York: Basic Books.'),
(14,'14','Hofmann, W., Gschwendner, T., Friese, M., Wiers, R.W., & Schmitt, M. (2008). Working memory capacity and self-regulatory behavior: Toward an individual differences perspective on behavior determination by automatic versus controlled processes. Journal of Personality and Social Psychology, 95(4), 962-977.'),
(15,'15','Kahneman, D. (2003). A perspective on judgment and choice: Mapping bounded rationality.  American Psychologist, 58(9), 697-720.'),
(16,'16','Kahneman, D. (2011). Thinking, fast and slow. New York: Farrar, Straus and Giroux.'),
(17,'17','Labouvie-Vief, G. (1989). Modes of knowledge and the organization of development. In M.L. Commons, C. Armon, L. Kohlberg, F.A. Richards, T.A. Grotzer, & J.D.  Sinnott (Eds.), Adult development: Models and methods in the study of adolescent and adult thought (Vol. 2) (43-62). New York: Praeger.'),
(18,'18','LeDoux, J.E. (1996). The emotional brain: The mysterious underpinnings of emotional life.  New York: Simon & Schuster.'),
(19,'19','Marcus, G.F. (2008). Kluge: The haphazard construction of the human mind. Boston:  Houghton Mifflin.'),
(20,'20','Mlodinow, L. (2012). Subliminal: How your unconscious mind rules your behavior. New York: Pantheon Books.'),
(21,'21','Moors, A., & De Houwer, J. (2006). Automaticity: A theoretical and conceptual analysis. Psychological Bulletin, 132(2), 297-326.'),
(22,'22','Myers, D.G. (2002). Intuition: Its powers and perils. New Haven, CT; London: Yale University Press.'),
(23,'23','Schmukle, S.C., & Egloff, B. (2005). A latent state-trait analysis of implicit and explicit personality measures. European Journal of Psychological Assessment, 21(2), 100 107.'),
(24,'24','Sloman, S.A. (1996). The empirical case for two systems of reasoning. Psychological Bulletin, 119(1), 3-22.'),
(25,'25','Strack, F., & Deutsch, R. (2004). Reflective and impulsive determinants of social behavior. Personality and Social Psychology Review, 8(3), 220-247.'),
(26,'26','Taylor, S.E. (1991). Asymmetrical effects of positive and negative events: The mobilization-minimization hypothesis. Psychological Bulletin, 110(1), 67-85.'),
(27,'27','Viamontes, G.I., Beitman, B.D., Viamontes, C.T., & Viamontes, J.A. (2004). Neural circuits for self-awareness: Evolutionary origins and implementation in the human brain. In B.D. Beitman, & J. Nair (Eds.), Self-awareness deficits in psychiatric patients: Neurobiology, assessment, and treatment. New York: W. W.  Norton.'),
(28,'28','Wegner, D.M., & Smart, L. (1997). Deep cognitive activation: A new approach to the unconscious. Journal of Consulting and Clinical Psychology, 65(6), 984-995.'),
(29,'29','Wilson, T.D. (2009). Know thyself. Perspectives on Psychological Science, 4(4), 384-389.'),
(30,'30','Wilson, T.D. (2002). Strangers to ourselves: Discovering the adaptive unconscious. Cambridge, MA: Belknap Press of Harvard University Press.'),
(31,'31','Hilgard, E.R. (1980). The trilogy of mind: cognition, affection, and conation. Journal of the History of the Behavioral Sciences, 16(2), 107-117.'),
(32,'32','LeDoux, J.E. (2002). Synaptic self: How our brains become who we are. New York:  Penguin Books.'),
(33,'33','Mayer, J.D. (2001). Primary divisions of personality and their scientific contributions: From the trilogy-of-mind to the systems set, Journal for the Theory of Social Behavior, 31(4), 449-477.'),
(34,'34','Mischel, W. (2004). Toward an integrative science of the person. Annual Review of Psychology,'),
(35,'35','Nisbett, R.E. & Wilson, T.D. (1977). Telling more than we can know: Verbal reports on mental processes. Psychological Review, 84(3), 231-259.'),
(36,'36','Schwartz, S., & Link, B.C. (1991). Sociological perspectives on mental health: An integrative approach. In D. Offer, & M. Sabshin, (Eds.), The diversity of normal behavior: Further contributions to normatology (239-274). New York: Basic Books.'),
(37,'37','Ursano, R.J., & Fullerton, C.S. (1991). Psychotherapy: Medical intervention and the concept of normality. In D. Offer, & M. Sabshin, (Eds.), The diversity of normal behavior: Further contributions to normatology (39-59). New York:  Basic Books.'),
(38,'38','Wirga, M., & De Bernardi, M. (2002). The ABCs of cognition, emotion, and action. Archives of Psychiatry and Psychotherapy, 4(1), 5-16.'),
(39,'39','Wood, W., Quinn, J.M., & Kashy, D.A. (2002). Habits in everyday life: Thought, emotion, and action. Journal of Personality and Social Psychology, 83(6), 1281-1297.'),
(40,'40','American Psychological Association. (n.d.). Personality. Retrieved from http://www.apa.org/topics/personality/index.aspx'),
(41,'41','Anderson, C.A., & Dill, K.E. (2000). Video games and aggressive thoughts, feelings, and behavior in the laboratory and in life. Journal of Personality and Social Psychology, 78(4), 772-790.'),
(42,'42','Begley, S. (2010, March). Low-tech treatment may be best for addiction. Newsweek, 155(11), 20.'),
(43,'43','Berry, D.S., & Hansen. J.S. (1996). Positive affect, negative affect, and social interaction. Journal of Personality and Social Psychology, 71(4), 796-809.'),
(44,'44','Cantor, N. (1990). From thought to behavior: “Having” and “doing” in the study of personality and cognition. American Psychologist, 45(6), 735-750.'),
(45,'45','Corsini, R.J. (2002). Personality. In R.J. Corsini (Ed.), The Dictionary of Psychology (711). New York: Brunner-Routledge.'),
(46,'46','Harrell, E. (2011, November). A flicker of consciousness: A vegetative state is a life sentence. New research on the minimally conscious may help commute it. Time Magazine, 178(21), 42-47.'),
(47,'47','Heppner, P.P., Heppner, M.J., Lee, D., Wang, Y., Park, H., & Wang, L. (2006).  Development and validation of a collectivist coping styles inventory. Journal of Counseling Psychology, 53(1), 107-125.'),
(48,'48','Johnson, N.G. (2003). Psychology and health: Research, practice, and policy. American Psychologist, 58(8), 670-677.'),
(49,'49','Kandel, E.R. (1979). Psychotherapy and the single synapse: The impact of psychiatric thought on neurobiologic research. New England Journal of Medicine, 301(19), 1028-1037.'),
(50,'50','Keyes, C.L.M. (2007). Promoting and protecting mental health as flourishing: A complementary strategy for improving national mental health. American Psychologist, 62(2), 95-108.'),
(51,'51','Keyes, C.L.M. (2009). Toward a science of mental health. In S.J. Lopez & C.R. Snyder (Eds.), Oxford Handbook of Positive Psychology (2nd ed.) (89-95). Oxford; New York: Oxford University Press.'),
(52,'52','Kihlstrom, J. F. (2002). To honor Kraepelin...: From symptoms to pathology in the diagnosis of mental illness. In L. E. Beutler & M. L. Malik (Eds.), Decade of behavior. Rethinking the DSM: A psychological perspective (279-303). Washington, DC, US: American Psychological Association.'),
(53,'53','Kirsch, I., & Lynn, S.J. (1999). Automaticity in clinical psychology. American Psychologist, 54(7), 504-515.'),
(54,'54','Koole, S.L., Dijksterhuis, A., & van Knippenberg, A. (2001). What’s in a name: Implicit self-esteem and the automatic self. Journal of Personality and Social Psychology, 80(4), 669-685.'),
(55,'55','Levy, D.A. (1997). Tools of critical thinking: Metathoughts for psychology. Boston: Allyn & Bacon.'),
(56,'56','Maddi, S.R. (1972). Personality theories: A comparative analysis (Rev. ed.). Homewood, IL: Dorsey Press.'),
(57,'57','Millon, T. (2003). It’s time to rework the blueprints: Building a science for clinical psychology. American Psychologist, 58(11), 949-961.'),
(58,'58','Mikulincer, M. (1995). Attachment style and the mental representation of the self. Journal of Personality and Social Psychology, 69(6), 1203-1215.'),
(59,'59','Neuringer, A. (2004). Reinforced variability in animals and people: Implications for adaptive action. American Psychologist. 59(9), 891-906.'),
(60,'60','Pervin, L.A. (2000). Personality. In A.E. Kazdin (Ed.), Encyclopedia of Psychology (100-106). Washington, D.C.: American Psychological Association.'),
(61,'61','Pinker, S. (2002). The blank slate: The modern denial of human nature. New York: Penguin Group.'),
(62,'62','Reiser, M.F. (1984). Mind, brain, body: Toward a convergence of psychoanalysis and neurobiology. New York: Basic Books.'),
(63,'63','Siegel, D.J. (2006). An interpersonal neurobiology approach to psychotherapy: Awareness, mirror neurons, and neural plasticity in the development of wellbeing. Psychiatric Annals, 36(4), 462-481.'),
(64,'64','Storch, M., Gaab, J. Kuttel, Y., Stussi, A., Fend, H. (2007). Psychoneuroendocrine effects of resource-activating stress management training. Health Psychology, 24 (4), 456-463.'),
(65,'65','Westen, D., & Weinberger, J. (2004). When clinical description becomes statistical prediction. American Psychologist, 59(7), 595-613.'),
(66,'66','Wylie, M.S. (2004). Mindsight; Dan Siegel offers therapists a new vision of the brain. Psychotherapy Networker, 28(5), 28-39.'),
(67,'67','James, W. (1890). The principles of psychology (Vols. 1-2). New York: Holt.'),
(68,'68','Wasserman, E.A., Young, M.E., & Cook, R.G. (2004). Variability discrimination in humans and animals: Implications for adaptive action. American Psychologist, 59(9), 879-890.'),
(69,'69','Bargh, J.A. (1997). In R.S. Wyer, Jr., (Ed.), The automaticity of everyday life (1-61). Mahwah, NJ: Lawrence Erlbaum Associates, Inc.'),
(70,'70','Bartlett, S.J. (2011). Normality does not equal mental health: The need to look elsewhere for standards of good psychological health. Westport, CT: Praeger Publishers.'),
(71,'71','Begley, S. (2007). Train your mind, change your brain: How a new science reveals our extraordinary potential to transform ourselves. New York: Ballatine Books.'),
(72,'72','Brooks. D. (2012). The social animal: The hidden sources of love, character, and achievement. New York: Random House.'),
(73,'73','Bush, G., Luu, P., & Posner, M.I. (2000). Cognitive and emotional influences in anterior cingulate cortex. Trends in Cognitive Sciences, 4(6), 215-222.'),
(74,'74','Carroll, R.T. (2015, October). The Forer Effect. Retrieved from http://skepdic.com/forer.html'),
(75,'75','Challoner, J., Grayson, A., & Harclerode, P. (2001). Equinox Book of Science: The Earth, the Brain, Space, Warfare. London, UK: Channel 4 Books.'),
(76,'76','Chartrand, T. L., & Bargh, J. A. (1999). The chameleon effect: The perception–behavior link and social interaction. Journal of Personality and Social Psychology, 76(6), 893-910.'),
(77,'77','Chomsky, N. (1983). Mental representations. Syracuse Scholar, 4(2), 1-17.'),
(78,'78','Chartrand, T.L., Maddux, W.W., & Lakin, J.L. (2005). Beyond the perception-behavior link: The ubiquitous utility and motivational moderators of nonconscious mimicry. In Hassin, R.R., Uleman, J.S., & Bargh, J.A. (Eds.), The new unconscious. Oxford series in social cognition and social neuroscience (334-361). Oxford, UK: Oxford University Press'),
(79,'79','Churchland, P.S. (2013). Touching a nerve: The self as brain. New York: W.W. Norton & Company.'),
(80,'80','Cunningham, W.A., Johnson, M.K., Gatenby, J.C., Gore, J.C., & Banaji, M.R. (2003). Neural components of social evaluation. Journal of Personality and Social Psychology, 85(4), 639-649.'),
(81,'81','Dehaene, S. (2014). Consciousness and the brain: Deciphering how the brain codes our thoughts. New York: Penguin Books.'),
(82,'82','Dickson, D.H. & Kelly, I.W. (1985). The ‘Barnum effect’ in personality assessment: A review of the literature. Psychological Reports, 57(2), 367-382.'),
(83,'83','Di Martino, A., Scheres, A., Margulies, D.S., Kelly, A.M., Uddin, L.Q., Shehzad, Z., Biswal, B., Walters, J.R., Castellanos, F.X., & Milham, M.P. (2008). Functional connectivity of human striatum: A resting state FMRI study. Cerebral Cortex, 18(12), 2735-2747.'),
(84,'84','Donald, M. (2001). A mind so rare: The evolution of human consciousness. New York: W.W. Norton & Company.'),
(85,'85','Eagleman, D. (2011). Incognito: The secret lives of the brain. New York: Pantheon Books.'),
(86,'86','Edelman, G.M. & Tononi, G. (2000). A universe of consciousness: How matter becomes imagination. London, UK: Penguin Books.'),
(87,'87','Elliott, T., Barron, L., Stein, K., Wright, E., & Lowry, L. (in press). Personality and disability. In D. Dunn (Ed.), The Social Psychology of Disability and Rehabilitation. New York: Oxford University Press.'),
(88,'88','Fodor, J.A. (1983) The modularity of mind. Cambridge, MA: MIT Press.'),
(89,'89','Forer, B.R. (1949). The fallacy of personal validation: A classroom demonstration of gullibility. Journal of Abnormal Psychology, 44(1), 118-121.'),
(90,'90','Giancola, P.R. & Tarter, R.E. (1999). Executive cognitive functioning and risk for substance abuse. Psychological Science, 10(3), 203-205.'),
(91,'91','Gifford, R. (1994). A lens-mapping framework for understanding the encoding and decoding of interpersonal dispositions in nonverbal behavior. Journal of Personality and Social Psychology, 66(2), 398-412.'),
(92,'92','Glaser, J. & Kihlstrom, J.F. (2005). Compensatory automaticity: Unconscious volition is not an oxymoron. In Hassin, R.R., Uleman, J.S., & Bargh, J.A. (Eds.), The new unconscious. Oxford series in social cognition and social neuroscience (pp. 171-195). Oxford, UK: Oxford University Press.'),
(93,'93','Goldberg, Elkhonon. (2002). The executive brain: frontal lobes and the civilized mind. Oxford, UK: Oxford University Press.'),
(94,'94','Gollwitzer, P.M. (1999). Implementation intentions: Strong effects of simple plans.  American Psychologist, 54(7), 493-503.'),
(95,'95','Harris, L.T. & Fiske, Susan T. (2011). Perceiving humanity or not: A social neuroscience approach to dehumanized perception. In Todorov, A., Fiske, S., & Prentice, D. (Eds.), Social neuroscience: toward understanding the underpinnings of the social mind (123-134). Oxford, UK: Oxford University Press.'),
(96,'96','Hogarth, R.M. (2001). Educating intuition. Chicago: University of Chicago Press.'),
(97,'97','Insel, T. (2013, January). Thomas Insel: Toward a new understanding of mental illness [Video file]. Retrieved from https://www.ted.com/talks/thomas_insel_toward_a_new_understanding_of_mental_illness'),
(98,'98','Kahneman, D. & Klein, G. (2009). Conditions for intuitive expertise: A failure to disagree. American Psychologist, 64(4), 515-526.'),
(99,'99','Kandel, E.R. (2006). In search of memory: The emergence of a new science of mind. New York: W.W. Norton & Company.'),
(100,'100','Koziol, L.F. & Budding, D.E. (2010). Subcortical structures and cognition: Implications for neuropsychological assessment. New York: Springer Science+Business Media, LLC.'),
(101,'101','LeDoux, J.E. (2000). Emotion circuits in the brain. Annual Review of Neuroscience, 23, 155-184.'),
(102,'102','Lewis, M. (2016). The undoing project: A friendship that changed our minds. New York, London: W.W. Norton & Company Inc.'),
(103,'103','Linley, P.A., & Joseph, S. (2005). The human capacity for growth through adversity. American Psychologist, 60(3), 262-264.'),
(104,'104','Malle, B.F. (2005). Folk theory of mind: Conceptual foundations of human social cognition. In Hassin, R.R., Uleman, J.S., & Bargh, J.A. (Eds.), The new unconscious. Oxford series in social cognition and social neuroscience (225-255). Oxford, UK: Oxford University Press.'),
(105,'105','McClelland, J.L., McNaughton, B.L., O’Reilly, R.C. (1995). Why there are complementary learning systems in the hippocampus and neocortex: Insights from the successes and failures of connectionist models of learning and memory. Psychological Review, 102(3), 419-457.'),
(106,'106','McNulty, J. K., & Fincham, F. D. (2012). Beyond positive psychology? Toward a contextual view of psychological processes and well-being. American Psychologist, 67(2), 101-110.'),
(107,'107','Paul, A.M. (2004). The cult of personality testing: How personality tests are leading us to miseducate our children, mismanage our companies, and misunderstand ourselves. New York, London, Toronto, Sydney: Free Press.'),
(108,'108','Uleman, J.S. (2005) Introduction: Becoming aware of the new unconscious. In Hassin, R.R., Uleman, J.S., & Bargh, J.A. (Eds.), The new unconscious. Oxford series in social cognition and social neuroscience (3-15). Oxford, UK: Oxford University Press.'),
(109,'109','Ullman, L.K. & Krasner, L. (1969). A psychological approach to abnormal behavior.  Englewood Cliffs, NJ: Prentice-Hall.'),
(110,'110','Ray, O. (2004). How the mind hurts and heals the body. American Psychologist, 59(1), 29- 40.'),
(111,'111','Schmahmann, J.D. (2004). Disorders of the cerebellum: Ataxia, dysmetria of thought, and the cerebellar cognitive affective syndrome. The Journal of Neuropsychiatry and Clinical Neurosciences, 16(3), 367-378.'),
(112,'112','Tarter, R. (2015, November). Executive cognitive impairments: Causes and consequences of substance misuse and substance use disorder. Presented at the 35th annual meeting of the National Academy of Neuropsychology Conference, Austin, Texas.'),
(113,'113','Taylor, S.E. (1981). The interface of cognitive and social psychology. In J.H. Harvey (Ed.), Cognition, social behavior, and the environment (189-211). Hillsdale, NJ: Erlbaum.'),
(114,'114','Thiriart, P. (1991). Acceptance of personality test results. Skeptical Inquirer, 15 (2), 116-165.'),
(115,'115','Waterman, A. S. (2012). In support of labeling psychological traits and processes as positive and negative. American Psychologist, 67(7), 575-576.'),
(116,'116','Wilson, E.O. (1999). Consilience: The unity of knowledge. New York: Vintage Books.'),
(117,'117','Adler, A. (1956). Degree of activity. In H.L. Ansbacher & R.R. Ansbacher (Eds.), The individual psychology of Alfred Adler: A systematic presentation in selections from his writings. New York: Basic Books.'),
(118,'118','Angelone, E.O., & Kunce, J.T. (1990). Personal styles inventory test-retest correlations. Unpublished manuscript, Department of Psychology, University of Missouri- Columbia, Columbia, Missouri.'),
(119,'119','Barkis, M.S. (1988). Personality and subordinate-supervisor dyad relations: Firefighters and their officers (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(120,'120','Brannon, M.E. (1987). Descriptive analysis of adjudicated youthful offenders using a circumplex personality model and behavioral ratings (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(121,'121','Calvi C.J. (1992). Career implications of personal styles for job roles and function and job satisfaction (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(122,'122','Cope, C.S., Kunce, J.T., & Roland, M.M. (1990). Dimensions of normal personality. Unpublished manuscript, Department of Psychology, University of Missouri-Columbia, Columbia, Missouri.'),
(123,'123','Cuty-Ruiz, L (1995). A comparison of assessed personality styles of graduate students, professional counselors, and counselor educators in counselor preparation programs (Unpublished doctoral dissertation). University of Alabama, Tuscaloosa, Alabama.'),
(124,'124','Denny, D. (1989). An adaptive classification system for chemical abusing criminal offenders (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(125,'125','Digman, J.M. (1990). Personality structure: Emergence of the five-factor model. Annual Review of Psychology, 41(1), 417-440.'),
(126,'126','Gittinger, J. (1964) Personality assessment system. New York: Human Ecology Fund.'),
(127,'127','Groff, S.M. (1990). The personal styles and personality traits of collegiate football players (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(128,'128','Gysbers, N.C., & Kunce, J.T. (1989). Personal styles and self-directed search correlations. Unpublished manuscript, Department of Psychology, University of Missouri-Columbia, Columbia, Missouri.'),
(129,'129','Hinkebein, J.H. (1990). Personality, adjustment, and neuropsychological correlates among learning disabled adults: A comparison of subgrouping approaches (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(130,'130','Hinz, M., et al. (1991, August). Personality and its relationship to adaptability of prepracticum counseling style. Presented at the 99th annual meeting of the American Psychological Association, San Francisco, California.'),
(131,'131','Holliday, G.A., Roller, J.R., & Kunce, J.T. (1996). Personality attributes of high IQ/high achieving gifted adolescents: Implications of the personal styles model. Journal for the Education of the Gifted, 20(1), 84-102.'),
(132,'132','Horgan, T.G. (1988). Personality style and cognitive style: A correlational study of conventionality/individualism and field dependence/independence (Unpublished master’s thesis). University of Missouri-Columbia, Columbia, Missouri.'),
(133,'133','Jackson, I. (1989). Perception of therapeutic factors to group counseling in relation to introversion-extroversion and stress components (Unpublished master’s thesis).  University of Missouri-Columbia, Columbia, Missouri.'),
(134,'134','Krauskopf, C.J., & Davis, K.G. (1969). Studies of the normal personality. Columbia, MO: University of Missouri-Columbia, Testing and Counseling Service.'),
(135,'135','Krug, S.E. (1984). The adult personality inventory manual. Champaign, IL: Institute for Personality and Ability Testing.'),
(136,'136','Kunce, J.T. (1979). MMPI scores and adaptive behavior. In C.S. Newmark (Ed.), MMPI, clinical and research trends (306-327). New York: Praeger.'),
(137,'137','Kunce, J.T., & Anderson, W.P. (1976). Normalizing the MMPI. Journal of Clinical Psychology, 32(4), 776-780.'),
(138,'138','Kunce, J.T., & Anderson, W.P. (1984). Perspectives on uses of the MMPI in nonpsychiatric settings. In P. McReynolds & G.J. Chelune (Eds.), Advances in psychological assessment (41-76). Palo Alton, CA: Science and Behavior Books.'),
(139,'139','Kunce, J.T., & Anderson, W.P. (1988). Assessment of nonpathological personality styles of policemen. Journal of Clinical Psychology, 44(2), 115-122.'),
(140,'140','Kunce, J.T., & Angelone, E.O. (1990). Personality characteristics of counselors: Implications for rehabilitation counselor roles and functions. Rehabilitation Counseling Bulletin, 34(1), 4-15.'),
(141,'141','Kunce, J.T., & Cope, C.S. (1987). Personal styles analysis. In N.C. Gysbers & E.J.  Moore (Eds.), Career counseling: Skills and techniques for practitioners (100-130). Englewood Cliffs, NJ: Prentice-Hall.'),
(142,'142','Kunce, J.T., Cope, C.S., & Newton, R.M. (1986a). The personal styles inventory. Columbia, MO: Educational & Psychological Consultants.'),
(143,'143','Kunce, J.T., Cope, C.S., & Newton, R.M. (1986b). Personal styles inventory: Manual for counselors and clinicians. Columbia, MO: Educational & Psychological Consultants.'),
(144,'144','Kunce, J.T., Cope, C.S., & Newton, R.M. (1989). Personal styles inventory: Interpretation guide and scoring directions. Columbia, MO: Educational & Psychological Consultants.'),
(145,'145','Kunce, J.T., Cope, C.S., & Newton, R.M. (1994). PSI-120 manual: A guide to the development and use of a personal styles inventory. Columbia, MO: Educational & Psychological Consultants.'),
(146,'146','Kunce, J.T., Newton, R.M, Cope., C.S. (2005). PSI-120 Manual: A guide to the development and use of the personal styles inventory (Rev. ed.). Columbia, MO: Educational and Psychological Consultants.'),
(147,'147','Kunce, J.T., Cope, C.S., & Newton, R.M. (1991). Personal styles inventory. Journal of Counseling & Development, 70(2), 334-341.'),
(148,'148','Kunce, J.T., Decker, G.L., & Eckelman, C.C. (1976). Strong vocational interest blank basic interest clusters and occupational satisfaction. Journal of Vocational Behavior, 9, 355-362.'),
(149,'149','Kunce, J.T., & Newton, R.M. (1989). Normal and psychopathological personality characteristics of individuals in alcohol rehabilitation. Journal of Counseling Psychology, 36(3), 308-315.'),
(150,'150','Kunce, J.T., Newton, R.M., & Pfost, K.S. (1989, August). Counseling alcoholics: Normal and psychopathological personality characteristics and treatment considerations. Presented at the 97th annual meeting of the American Psychological Association, New Orleans, Louisiana.'),
(151,'151','Kunce, J.T., & Tamkin, A.S. (1981). Rorschach movement and color responses and MMPI social extraversion and thinking introversion personality types. Journal of Personality Assessment, 45(1), 5-10.'),
(152,'152','Leary, T. (1957). Interpersonal diagnosis of personality: A functional theory and methodology for personality evaluation. New York: Ronald Press Co.'),
(153,'153','Maccoby, M. (1976). The gamesman: The new corporate leaders. New York: Simon & Schuster.'),
(154,'154','Merrill, D.W., & Reid, R.H. (1981). Personal styles and effective performance: Make your style work for you. Radnor, PA: Chilton Book Co.'),
(155,'155','Millon, T. (1997). MCMI-III manual: Millon clinical multiaxial inventory. Minneapolis, MN: National Computer Systems.'),
(156,'156','Patterson, W.L. (1994). Police personality and stress: an aspect of role conflict (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(157,'157','Pfost, K.S., Newton, R.M., Kunce, J.T., Cope, C.S., & Greenwood, G.L. (1993). A model for individualizing interventions for alcohol abuse/dependence using basic personality dimensions. Psychotherapy, 30(2), 334-343.'),
(158,'158','Reynolds, J.R., Kunce, J.T., & Cope, C.S. (1991). Personality differences of first-time and repeat offenders arrested for driving while intoxicated. Journal of Counseling Psychology, 38(3), 289-295.'),
(159,'159','Sikyta, D.J. (1995). Personal characteristics of women insurance agents and women insurance operations managers (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(160,'160','Skinner, H.A., & Jackson, D.N. (1978). A model of psychopathology based on an integration of MMPI actuarial systems. Journal of Consulting and Clinical Psychology, 46(2), 231-238.'),
(161,'161','Taydisch, R.A. (1990). Normal personality characteristics of beginning nursing students in selected midwestern private and public baccalaureate nursing programs (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(162,'162','Tedder, N.E. (1987). Vocational rehabilitation counselor characteristics as predictors of employment outcomes for visually impaired clients (Unpublished doctoral dissertation). University of Tennessee-Knoxville, Knoxville, Tennessee.'),
(163,'163','Towle, D. C. (1992). Personality, alcohol consumption, alcohol expectancies, drinking situations, and alcohol consequences among college students (Unpublished doctoral dissertation). University of Missouri-Columbia, Columbia, Missouri.'),
(164,'164','Wright, D.D. (1990). A comparative study of nonpathological characteristics of policemen:  The personal styles inventory (Unpublished master’s thesis).  University of Missouri-Columbia, Columbia, Missouri.'),
(165,'165','Brannon, M.E., Kunce, J.T., Brannon, J.M., & Martray, C. (1990). Toward the nonpathological assessment of behavioral and conduct disordered adolescents. Journal of Addictions and Offender Counseling, 11(1), 20-30.'),
(166,'166','Elliott, T.R., & Umlaf, R.L. (1995). Measurement and instrumentation in psychology. In L.A. Cushman & M.J. Scherer, (Eds.), Psychological Assessment in Medical Rehabilitation (325-358). Washington, DC: American Psychological Association.'),
(167,'167','Hinkebein, J.H., Koller, J.R., & Kunce, J.T. (1992). Normal personality and adults with learning disabilities: Rehabilitation counseling implications. Journal of Rehabilitation, 58(4), 40-46.'),
(168,'168','Kunce, J.T., & Anderson, W.P. (1988). Assessment of nonpathological personality styles of policemen. Journal of Clinical Psychology, 44(2), 115-122.'),
(169,'169','Schauer, A.H. (1991). Reaction: Personal styles inventory. Journal of Counseling & Development, 70(2), 342-343.'),
(170,'170','Wheeler, G., Krausher, K., Cumming, C., Jung, V., Steadward, R., & Cumming, D. (1996). Personal styles and ways of coping in individuals who use wheelchairs. Spinal Cord, 34(6), 351-357.');
/*!40000 ALTER TABLE `refs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt`
--

DROP TABLE IF EXISTS `rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub` varchar(250) NOT NULL,
  `note` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt`
--

LOCK TABLES `rt` WRITE;
/*!40000 ALTER TABLE `rt` DISABLE KEYS */;
INSERT INTO `rt` VALUES
(1,'Advocate for SS','Have the pay the monthly co pay.'),
(2,'c++ Web Browser','Get source code for c++ web browser'),
(3,'Create c++ App for GPS','Get driving directions and mileage.'),
(4,'Create c++ App To Fetch YouTube Playlist','Get entries in play list.  Stuff into database.'),
(5,'libgdamm','archman@archman-Inspiron-5520 ~ $  sudo apt-get install libgdamm-5.0-13\r\n[sudo] password for archman: \r\nReading package lists... Done\r\nBuilding dependency tree       \r\nReading state information... Done\r\nThe following NEW packages will be installed:\r\n  libgdamm-5.0-13\r\n0 upgraded, 1 newly installed, 0 to remove and 24 not upgraded.\r\nNeed to get 107 kB of archives.\r\nAfter this operation, 580 kB of additional disk space will be used.\r\nGet:1 http://archive.ubuntu.com/ubuntu xenial/universe amd64 libgdamm-5.0-13 amd64 4.99.11-0ubuntu1 [107 kB]\r\nFetched 107 kB in 0s (135 kB/s)         \r\nSelecting previously unselected package libgdamm-5.0-13.\r\n(Reading database ... 306567 files and directories currently installed.)\r\nPreparing to unpack .../libgdamm-5.0-13_4.99.11-0ubuntu1_amd64.deb ...\r\nUnpacking libgdamm-5.0-13 (4.99.11-0ubuntu1) ...\r\nProcessing triggers for libc-bin (2.23-0ubuntu9) ...\r\nSetting up libgdamm-5.0-13 (4.99.11-0ubuntu1) ...\r\nProcessing triggers for libc-bin (2.23-0ubuntu9) ...\r\narchman@archman-Inspiron-5520 ~ $ \r\n'),
(6,'Fix OpenSSL','upgrade the security to the highest 256 bit encryption level.'),
(7,'Black Man','I love being a BLACK MAN.  We are hated by many, supported by few and stronger than all.'),
(8,'yii 2 install basic via Composer','composer create-project yiisoft/yii2-app-basic tp01 2.0.12\r\n'),
(9,'Hair Appointment','11/16/2017\r\n7/31/2017 Last Appointment');
/*!40000 ALTER TABLE `rt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaries` (
  `emp_no` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`from_date`),
  CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitems`
--

DROP TABLE IF EXISTS `sitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sdes` varchar(125) NOT NULL,
  `ucost` double NOT NULL,
  `ddes` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitems`
--

LOCK TABLES `sitems` WRITE;
/*!40000 ALTER TABLE `sitems` DISABLE KEYS */;
INSERT INTO `sitems` VALUES
(1,'COBOL',75.05,'Basic COBOL Programming'),
(2,'FORTRAN',65.57,'Basic FORTRAN Programming'),
(3,'Delphi',75,'Basic Delphi Programming'),
(5,'RPG',35.05,'Basic RPG'),
(6,'Consulting',74.5,'General analysis and consulting.'),
(7,'Document Web Site',35,'Document existing web site functionality.'),
(8,'Yii2 Programming',92.67,'Basic Yii Pogramming'),
(9,'c++ Programming',74.37,'Basic c++ programming'),
(10,'Assembly Language Programming',55.42,'Basic c++ programming'),
(11,'Functional Specification',35,'Developing Functional Specification'),
(12,'Analysis',35,'General Analysis'),
(13,'Access Web Site',35,'Get into the web site.'),
(14,'Angular Programming',35,'Creating Angular code.'),
(15,'Python Programming',35,'Program Python'),
(16,'AWS Front End',35,'Access AWS Front end.'),
(17,'AWS Back End',35,'AWS Back End'),
(18,'c++ Programming Support',35,'c++ programming to support overal automation effort.');
/*!40000 ALTER TABLE `sitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spl`
--

DROP TABLE IF EXISTS `spl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lkn` varchar(250) NOT NULL,
  `lnk` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spl`
--

LOCK TABLES `spl` WRITE;
/*!40000 ALTER TABLE `spl` DISABLE KEYS */;
INSERT INTO `spl` VALUES
(1,' Arch Brooks\n - YouTube','https://www.youtube.com/user/archman007'),
(5,'CodeCentral - Author','http://cc.embarcadero.com/Author/268949'),
(6,'BCS Flash Web Site','http://bcsjava.com/fws/bcs/ambx/'),
(7,' BCS MVC Application','http://bcs.bcscomo.us/'),
(8,'Arch Brooks / Profile','https://sourceforge.net/u/archb/profile/'),
(9,'Arch Brooks Facebook','https://www.facebook.com/arch.brooks'),
(10,'Go Daddy E Mail','https://sso.secureserver.net/?app=email&realm=pass'),
(11,'Slashdot: News for nerds, stuff that matters','https://slashdot.org/'),
(12,'Hotmail','https://login.live.com'),
(13,'Webmin','https://archbrooks.us:10000/'),
(14,'Technology Blog','http://bcsjava.com/blg/wordpress/'),
(15,'Web Hosting UK - Leader in Web Hosting and Domains','https://www.webhosting.uk.com/'),
(16,'TracFone Wireless','https://www.tracfone.com/'),
(17,'Debit Card','https://www.walmartmoneycard.com/'),
(18,'Business Card','https://www.landmarkbank.com/'),
(19,'MSN.com - Hotmail, Outlook, Skype, Bing, Latest News, Photos & Videos','https://www.msn.com/'),
(20,'Al Jazeera English','http://www.aljazeera.com/live/'),
(21,'Phpmyadmin - archbrooks.us','https://archbrooks.us/phpmyadmin'),
(22,'Phpmyadmin - localhost','http://localhost/phpmyadmin'),
(23,'Facebook','http://facebook.com/arch.brooks'),
(24,'Go Daddy Web Site','http://godaddy.com'),
(25,'Extratorrent','https://extratorrent.ag/'),
(26,'RARBG','https://rarbg.unblockall.xyz/torrents.php'),
(27,'Mint Community','https://community.linuxmint.com/'),
(28,'Mint Forums','https://forums.linuxmint.com/'),
(29,'DBRL','http://dbrl.org'),
(30,'Code Central Popular Authors','http://cc.embarcadero.com/PopularAuthors.aspx'),
(31,'Wired','https://www.wired.com/'),
(32,'MIT Technology Review','https://www.technologyreview.com/'),
(33,'W3 Schools','https://www.w3schools.com/'),
(34,'How To Geek','https://www.howtogeek.com/'),
(35,'NASA','https://www.nasa.gov/'),
(36,'ABC 17 News - CoMo','http://www.abc17news.com/news/columbia'),
(37,'Follow Up 01','http://www.abc17news.com/news/city-of-columbia-releases-ferguson-litigation-settlement-information/585629141'),
(38,'Books Left Out of the Bible','http://www.anonews.co/vatican-bible-1684/'),
(39,'Rev. Arch Brooks Theology Web Site','http://bab.archbrooks.us/'),
(40,'Brooks Computing Systems Web Site','http://bcs.archbrooks.us/'),
(41,'Yii 2 Definitive Guide','http://www.yiiframework.com/doc-2.0/guide-README.html'),
(42,'Facebook Dr. John Clark','https://www.facebook.com/DrJohnHenrikClarke'),
(43,'Music Motown Review','https://www.youtube.com/watch?v=VQfRJBTY6vA'),
(44,'Music Mowtown\'s Top 100 Hits Part 1','https://www.youtube.com/watch?v=J1Q5-TIC5pc'),
(45,'Music Mary Wells Playlist','https://www.youtube.com/watch?v=_eBHkOJKuCA&list=PLOf1I-PxjP0qyConJkd0ABXV8wAMtuh2g'),
(46,'Grails Tesp App','http://archbrooks.us:8080/ta01-0.1/'),
(47,'Tomcat archbrooks.us','http://archbrooks.us:8080/'),
(48,'Tomcat Localhost','http://localhost:8080'),
(49,'Link on African History','https://www.facebook.com/groups/752555338193062/permalink/1371044936344096/'),
(50,'BCS Programmer\'s Workbench','http://archbrooks.us/pwb'),
(51,'Build Debian Package 01','https://debian-handbook.info/browse/stable/debian-packaging.html'),
(52,'Build Debian Package 02','https://wiki.debian.org/HowToPackageForDebian'),
(53,'Wordpress Theme Generator 01','http://www.wpthemegenerator.com/'),
(54,'Wordpress Theme Generator 02','http://www.yvoschaap.com/wpthemegen/'),
(55,'Eclipse','http://www.eclipse.org'),
(56,'Grails Home','http://www.grails.org'),
(57,'Linked In','http://linkedin.com'),
(58,'Video Create Debian Package','https://www.youtube.com/results?search_query=debian+package+creation+tutorial'),
(59,'Video OpenVpn','https://www.youtube.com/results?search_query=openvpn+tutorial'),
(60,'Video Learn Yii2','https://www.youtube.com/watch?v=H7uON7rcv4g&list=PLBEpR3pmwCayfpaE9Vk-0xDsE5HQRJxuq'),
(61,'Google','https://google.com'),
(62,'The Worlds Largest Scientific Society','https://www.aaas.org/'),
(63,'Political News trump and Russian mobs','https://www.facebook.com/OccupyDemocrats/videos/1620922294667485/'),
(64,'Music Martha and the Vandellas','https://www.youtube.com/watch?v=4YSzv7Bi7KQ'),
(65,'Music Doo Wop','https://www.youtube.com/watch?v=4YSzv7Bi7KQ'),
(66,'Terms Asynchrony (computer programming)','https://en.wikipedia.org/wiki/Asynchrony_(computer_programming)'),
(67,'Terms Java RX','https://github.com/ReactiveX/RxJava/wiki'),
(68,'Terms Reactive X','https://reactivex.io/'),
(69,'Terms Groovy FX','http://groovyfx.org/'),
(70,'Lynda via DBRL','https://www.lynda.com/portal/sip?org=dbrl.org&triedlogout=true'),
(71,'BCS Web Site','https://archbrooks.us/bcsx/'),
(72,'Django How To ','https://docs.djangoproject.com/en/1.11/howto/'),
(73,'Django Reference','https://docs.djangoproject.com/en/1.11/ref/'),
(74,'Lynda Django Application','https://www.lynda.com/Django-tutorials/Django-1-Building-Blog/594453-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3adjango%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2'),
(75,'Yii2 How To Videos','https://www.youtube.com/watch?v=z1xtFbO9jgQ&list=PLRd0zhQj3CBmusDbBzFgg3H20VxLx2mkF'),
(76,'Black History Lynching In Amrica','http://www.huffingtonpost.com/entry/google-launches-lynching-in-america-project-exploring-countrys-violent-racial-history_us_594008a7e4b02402687d00ce'),
(77,'Free Country c++ Source Code','https://www.thefreecountry.com/sourcecode/cpp.shtml'),
(78,'Free Country','https://www.thefreecountry.com/'),
(79,'Radio Atlanta','http://streema.com/radios/play/3806'),
(80,'Radio Slidell Louisiana','https://www.iheart.com/live/q93-new-orleans-1037/?autoplay=true&pname=15400&campid=header&cid=index.html'),
(81,'Black History Farrakan','https://www.facebook.com/OfficialMinisterFarrakhan/videos/1401077043332897/'),
(82,'Video Drive Business To Your Web site','https://v.connatix.com/b03ca50a-46cc-4b83-9d20-08294b6b1a75/Contents/101526/d61f365e-7d9a-4fb0-99e5-b70968900bd8_desktop_high_720.mp4'),
(84,'Black History All Lives Matter Bullsh!t','http://www.huffingtonpost.com/john-halstead/dear-fellow-white-people-_b_11109842.html?ncid=engmodushpmg00000003'),
(85,'Political News Balsts Trumism','https://www.washingtonpost.com/news/powerpost/paloma/daily-202/2017/08/02/daily-202-jeff-flake-delivers-the-most-courageous-conservative-rebuttal-of-trumpism-yet/59812c9b30fb045fdaef10a8/?utm_term=.b9bc9eb87e7e&wpisrc=nl_most-draw10&wpmm=1'),
(86,'Political News NAACP Travel Ban','http://www.essence.com/news/naacp-travel-warning-missouri-racism'),
(87,'Political News Rep. Brandon Ellington','http://www.essence.com/news/naacp-travel-warning-missouri-racism'),
(88,'Political News Rep. Brandon Ellington Tweet','https://twitter.com/ellington_b'),
(89,'Political News WV Governor Switches to republican Russia Money ','http://newcenturytimes.com/2017/08/03/wv-governor-is-in-debt-to-russia-and-its-as-crazy-as-you-think/'),
(90,'GTKMVC','http://pygtkmvc.sourceforge.net/docs/quickstart/'),
(91,'Black History Mass Lynching in Arkansas','https://blackmainstreet.net/never-forget-americas-forgotten-mass-lynching-237-black-sharecroppers-murdered-arkansas/'),
(92,'Tutorial c++','http://www.java2s.com/Tutorial/Cpp/'),
(93,'Black History KKK in America','https://www.facebook.com/294234600956431/photos/a.296147154098509.1073741828.294234600956431/449752395404650/?type=3&theater'),
(94,'Black History Slavery Was Back Then','https://www.youtube.com/watch?v=wCwGpuOHXSY'),
(95,'Black History Africans Came To America Before Columbus','http://www.theblackhomeschool.com/2015/07/30/black-history-was-white-washed-africans-came-to-america-before-columbus/'),
(96,'Political News #PIMPOTUS','http://londonwebnews.com/2017/08/06/a-former-british-politician-has-made-very-serious-allegations-against-trump-this-could-damage-trump-or-damage-the-accuser/'),
(97,'Django Boostrrap 3','https://www.bootply.com/nZaxpxfiXz'),
(98,'Django Twitter Bootstrap 3','https://pypi.python.org/pypi/django-twitter-bootstrap/'),
(99,'Radio Tim Hartman Gospel Radio','http://www.wfbcradio.com/'),
(100,'Radio WEUP Huntsville Alabama','https://tunein.com/radio/WEUP-FM-1031-s28622/'),
(101,'Video E40','https://www.youtube.com/user/E40TV'),
(102,'Video E40 D-Boys','https://www.youtube.com/watch?v=jV1dHMmJaDs&list=PL3o6jPMu2TZLPWtpyNCC3NE_oauu0uUph'),
(103,'Black History Book of the Dead','http://earth-history.com/Egypt/Bodead/bodead-plate23-24.htm'),
(104,'Black History DuBois Booker T. Washington','https://www.facebook.com/groups/752555338193062/permalink/1403012023147387/'),
(105,'Wordpress Multi User','https://codex.wordpress.org/WordPress_MU'),
(106,'Wordpress Create Multi User Site','https://codex.wordpress.org/Installing_WPMU'),
(107,'Django To Do List','https://code.tutsplus.com/articles/intro-to-django-building-a-to-do-list--net-2871'),
(108,'News Black News Station','https://www.vibe.com/2017/08/eric-townsend-black-news-hub/'),
(109,'Django Scaffolding Tool','https://devhub.io/repos/tmpbook-django-scaffold'),
(111,'Black History Black Wallstreet','https://www.facebook.com/RealBlackHistoryRevealed/videos/800353516806955/'),
(112,'c++ Discussions Reddit','https://www.reddit.com/r/cpp/'),
(113,'c++ Discussion Google','https://groups.google.com/forum/#!forum/comp.lang.c++.moderated'),
(114,'c++ Discussion Slack cpplang','https://cpplang.slack.com/messages/C21PKDHSL/'),
(115,'Walgreens','https://www.walgreens.com/'),
(116,'c++ Gtk Programming witn Gtkmm','https://github.com/GNOME/gtkmm-documentation/tree/master/examples'),
(117,'Black History King Keeping It Real','https://vimeo.com/8819692?ref=fb-share&1'),
(118,'c++ gtkmm examples','http://www.lucidarme.me/?p=4359'),
(119,'c++ gtkmm dbm examples','https://www.gtkmm.org/docs/libgnomedbmm-3.0/docs/tutorial/html/'),
(120,'c++ gtkmm Tutorial','https://developer.gnome.org/gtkmm-tutorial/stable/index.html.en'),
(121,'Bible Study Live Stream Tobias Lagrone','https://www.facebook.com/tobias.lagrone.9/videos/1712519072094011/'),
(122,'Facebook Dr. John Henrick Clark How Jesus Was Created','https://www.facebook.com/melanatedmultiverse/videos/448452815529608/'),
(123,'Black History Slave Rebellions','http://historycollection.co/breaking-chains-9-pivotal-slave-rebellions-ancient-times-19th-century/?utm_source=Facebook&utm_medium=Ads&utm_campaign=breaking-the-chains-9-pivotal-slave-rebellions-from-ancient-Desktop'),
(124,'Black History True Meaning Of Hurricane','https://www.facebook.com/photo.php?fbid=856944687794623&set=a.110038939151872.18013.100004372994191&type=3&theater'),
(125,'Black History White Racism Black Racism','https://youtu.be/LR9VRX2RXdo'),
(126,'Black History Slave Stories Breath Of My Ancestors','http://www.blogtalkradio.com/thegistoffreedom/2012/12/07/tys-breath-of-my-ancestors-poet-and-musician'),
(127,'HAARP What Is It','https://duckduckgo.com/?q=HAARP&t=lm&ia=web'),
(128,'The Grio What Is It','https://en.wikipedia.org/wiki/The_Grio'),
(129,'Black History 13th Ammendment To the Constitution Free The Slaves','https://en.wikipedia.org/wiki/Thirteenth_Amendment_to_the_United_States_Constitution'),
(130,'c++ Boost','http://www.boost.org/'),
(131,'Webmin Mint Command','iptables -I INPUT 1 -p tcp --dport 10000 -j ACCEPT'),
(132,'Black History 9/11/1801','https://www.facebook.com/photo.php?fbid=1411518985562347&set=a.1030758543638395.1073741961.100001127761377&type=3&theater'),
(133,'Bible Confession about Jesus','http://truthcommand.com/2017/09/ancient-confession-found-invented-jesus-christ-brainwash-dominate-africans/'),
(134,'Wt (Whitty) Home Page','https://www.webtoolkit.eu/wt'),
(135,'Bible New Testament in Aramaic','https://youtu.be/Bv5LrcKoL-s'),
(136,'Black History Ancient Kemet','https://youtu.be/9xkjsq4u-LY'),
(137,'Arch\'s Twitter Account','https://twitter.com/'),
(138,'Wt (Whitty) Widget Gallery','http://www.webtoolkit.eu/widgets'),
(139,'Black History Lynching In America Targeting Black Soilders ','https://eji.org/reports/online/lynching-in-america-targeting-black-veterans'),
(140,'Black History White Supremacy','http://soaw.org/index.php?option=com_content&view=article&id=482'),
(141,'Eclipse Rapid Clipse','https://www.rapidclipse.com/en/'),
(142,'Grails Reverse Engineer MySql','https://github.com/grails-plugins/grails-db-reverse-engineer/blob/master/src/docs/tutorial.adoc'),
(143,'ASCII Code Table','https://www.ascii-code.com/'),
(144,'Bootstrap 3','http://getbootstrap.com/'),
(145,'c# on Ubuntu','http://www.c-sharpcorner.com/UploadFile/201fc1/guide-for-building-C-Sharp-apps-on-ubuntu-monoproject-introducti/'),
(146,'Black History Farrakan Kapernick','https://www.facebook.com/OfficialMinisterFarrakhan/videos/1471884609585473/'),
(147,'Poseiden TV Guide','http://www.tvguide.com/movies/poseidon/279909'),
(148,'Black History First People in America','https://www.youtube.com/watch?v=r6IrMjfbh6E&feature=youtu.be&list=UUoSVqYZAptJUP7c6x6Fz57g'),
(149,'IEEE TV','https://ieeetv.ieee.org/'),
(150,'IEEE Definition','https://en.wikipedia.org/wiki/Institute_of_Electrical_and_Electronics_Engineers'),
(151,'IEEE Course Technical Writing','http://ieeexplore.ieee.org/courses/details/EW1333'),
(152,'Pat Hill','http://prabook.com/web/person-view.html?profileId=541805'),
(153,'Order of Operation PEMDAS','https://www.mathsisfun.com/operation-order-pemdas.html'),
(154,'Kewpie Homies','http://www.kewpie.net/ClassMemorial/1970memorial.html'),
(155,'Glade UI Designer Home','https://glade.gnome.org/'),
(156,'DB TVU Definition','https://en.wikipedia.org/wiki/TVU_Networks'),
(157,'DB TVU Home Page','http://www.tvunetworks.com/'),
(158,'DB TVU Download Software','http://tvuplayer.en.lo4d.com/'),
(159,'DB TVU White Paper','www.tvunetworks.com/manuals/TVU_Grid_Business_Whitepaper.pdf'),
(160,'DB New Tech','http://newtechindustries.com/'),
(161,'DB TUV KPTM White Paper','www.tvunetworks.com/doc/KPTM.pdf'),
(162,'DB TvTorrents','http://www.moreofit.com/similar-to/www.tvtorrents.com/Top_10_Sites_Like_Tvtorrents/'),
(163,'DB Ditch Cable Watch TV on PC','https://www.youtube.com/watch?v=a4nJVbApfAs'),
(164,'DB What is Bitcoin Block Chain','https://www.bitcoin.com/info/what-is-the-blockchain'),
(165,'Black History Dr. Anderson','http://www.harvestinstitute.org/'),
(166,'c++ Programming Examples','https://www.programiz.com/cpp-programming/examples'),
(167,'Radio Atlanta R & B','https://tunein.com/radio/Radio-RnB-(Atlanta-GA)-s301884/'),
(168,'Radio Black Gospel Radio','http://streamdb6web.securenetsystems.net/cirrusencore/BGRLIVE'),
(169,'PDF Toni Morrison','/home/archman/Documents/tm01.pdf'),
(170,'c++ MySQL CRUD Example','https://github.com/agusk/crud-mysql-cpp'),
(171,'Sample Resume','https://www.monster.com/career-advice/article/sample-resume-it-developer-experienced'),
(172,'xwWidgets Libraries','http://codelite.org/LiteEditor/WxWidgets30Binaries'),
(173,'wxWidges Web Site','http://wxwidgets.org/'),
(174,'wxWidgets FAQ','http://codelite.org/LiteEditor/FAQ'),
(175,'TTD Opne PGP Keyserer','https://keyserver.mattrude.com/guides/building-server/'),
(176,'Mint TecMint','https://www.tecmint.com/'),
(177,'The St. Louis American','http://www.stlamerican.com/'),
(178,'Author A Book','https://www.facebook.com/RealJimEdwards/videos/10214068602642635/?hc_ref=ART8KROlHvbk_zDb_B37wIwW-XFHC4mcWdYxJCKZH7xwLrBWC3SPSRi-GuKDifjJqhw&__xts__[0]=68.AI%406f3eba53dafffbf43dd779b57abdccc7&__tn__=C-R&ft[tn]=FC-R-R&ft[qid]=6563412656858348193&ft[m'),
(179,'Fiverr','https://www.fiverr.com/');
/*!40000 ALTER TABLE `spl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb`
--

DROP TABLE IF EXISTS `tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tower` varchar(125) NOT NULL,
  `PowSup` varchar(125) NOT NULL,
  `Motherboard` varchar(125) NOT NULL,
  `Memory` varchar(125) NOT NULL,
  `NvMe` varchar(125) NOT NULL,
  `SSD` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb`
--

LOCK TABLES `tb` WRITE;
/*!40000 ALTER TABLE `tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Comps`
--

DROP TABLE IF EXISTS `tb_Comps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Comps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(4000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(30000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(30000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cost` double DEFAULT NULL,
  `ddes` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Comps`
--

LOCK TABLES `tb_Comps` WRITE;
/*!40000 ALTER TABLE `tb_Comps` DISABLE KEYS */;
INSERT INTO `tb_Comps` VALUES
(1,'Tower Case','Tower','https://www.amazon.com/s?k=midsize+tower&crid=3BXENNKAWSE29&sprefix=midsize+tower%2Caps%2C128&ref=nb_sb_noss_1',250.76,'Case'),
(2,'CPU','cpu','https://www.amazon.com/gp/product/B005404P9I/ref=ox_sc_saved_title_3?smid=ATVPDKIKX0DER&th=1',499.99,'cpu'),
(3,'Motherboard','Asus','https://www.amazon.com/ASUS-TUF-Intel%C2%AE12th-Motherboard-Thunderbolt/dp/B0BQD58D96/ref=sr_1_3?crid=3HP9MMFFQRUS8&dib=eyJ2IjoiMSJ9.zHOkotf-y3BorN3Agucnt8Az4Uf7GEIjLJQpo1IoDs5Zx-PbHiRJNJ84VlbqHB9TfoMPsdi6LaL5722daNgeB8MbNJSW7CI4oF-T1kc8p5yOMvByZXc79FMJcCsRkPYrlUAw4pjqwgrSX351yZUaBqWd2UQ85xuANQwIrLIZlDEvydtuZrA62CWRQntKbE1JUX2GT67_u0kislynvgPYbefUMmLDxxOs47yVN1m7kZ0.Q1rZlAmx6VjJrjsKozBqrXDsLLznk4J3rtksGb-RfsE&dib_tag=se&keywords=motherboard%2Bddr5%2Bintel%2B14th%2Bgen&qid=1728913386&sprefix=motheroard%2Bddr5%2B%2Caps%2C126&sr=8-3&ufe=app_do%3Aamzn1.fos.f5122f16-c3e8-4386-bf32-63e904010ad0&th=1',256.87,'Moher'),
(4,'Power Supply','Power Supply','https://www.amazon.com/Corsair-RM1000x-Fully-Modular-Supply/dp/B08R5PH1VY/ref=sr_1_3?crid=12GF6H7MG7IT9&dib=eyJ2IjoiMSJ9.8HckD6OvfR2flKZhbvIJBThbivjWr0ZhjnyAz6lxi5y2d4ZfmTRKtMWxvM0EKU-FQ6Zkvt_Cs07DTTYEAIQ878aoc9IqVk24UwJkDjlWohAwZgyznPGlIU1kvLqPCnq_y-5eFziMrHk52d7tFpUIa3cqR4zVEwjPMRiVXgy2JgA2YcoDoV8cL03EPv-rGv6YW39t1HpbZAMnrn4ST-mR-iwJULiiMr6gwdIVehWobqc.N_sBNL87DfgYAkBmRyRKNh-ctR5iWS6YNJV1TKG0ShE&dib_tag=se&keywords=power%2Bsupply%2B1000w&qid=1728913555&sprefix=power%2Bsupply%2Caps%2C132&sr=8-3&th=1',250.57,'Power'),
(5,'Power Supply','Power  Supply','https://www.amazon.com/Corsair-RM1000x-Fully-Modular-Supply/dp/B08R5PH1VY/ref=sr_1_3?crid=12GF6H7MG7IT9&dib=eyJ2IjoiMSJ9.8HckD6OvfR2flKZhbvIJBThbivjWr0ZhjnyAz6lxi5y2d4ZfmTRKtMWxvM0EKU-FQ6Zkvt_Cs07DTTYEAIQ878aoc9IqVk24UwJkDjlWohAwZgyznPGlIU1kvLqPCnq_y-5eFziMrHk52d7tFpUIa3cqR4zVEwjPMRiVXgy2JgA2YcoDoV8cL03EPv-rGv6YW39t1HpbZAMnrn4ST-mR-iwJULiiMr6gwdIVehWobqc.N_sBNL87DfgYAkBmRyRKNh-ctR5iWS6YNJV1TKG0ShE&dib_tag=se&keywords=power%2Bsupply%2B1000w&qid=1728913555&sprefix=power%2Bsupply%2Caps%2C132&sr=8-3&th=1',248.67,'Power'),
(6,'Tower Case','Tower Case','https://www.amazon.com/Corsair-4000D-Airflow-Tempered-Mid-Tower/dp/B08C7BGV3D/ref=sr_1_3?crid=2GY5RQAQKG3B7&dib=eyJ2IjoiMSJ9.ggwuYTc12wUG66xb9DMNLHSuoaFlZiXlSOtaPHt3xYzJpysRXhKvZwQC1RSkXkohuxGXOzO5Z-Q_4HLeTRbxBpEYgQMGz_BmXAlsHRj_S-lClcNKZG4pe8-lhUW3uuvhVUj4Wa11ahRuPW6LDCCSc4nBmT75otP9fK1E6xURSK_kTo_pL0P1Ec9xM-T8-dwQ9oDwM2a1GRu4x-TUuVOMC4yApkEH4_mJIJnYZLmkgzw.EF_-ZLo20cFv_bqarYAT5vTUyEHTJ3cbTkp1EbGNih0&dib_tag=se&keywords=mid%2Btower%2Batx%2Bcase&qid=1728913922&sprefix=mid%2Btower%2Caps%2C145&sr=8-3&th=1',170.87,'Tower'),
(7,'Nvme','Disk Drive 2 TB','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=sr_1_10?crid=15GNPNJK3FOAI&dib=eyJ2IjoiMSJ9.fqgp8sNKcJ5k3mu4vII5eF1_jSZoDI_FgqDnHZKshXNMbvtg8Z1an6JNHFZPgXQJvlflIUZF4Hvmw222MOPb3g7tbks6sqHFjSJFtfzSJiikF_5AW2w_OoVYbvD1OaSUL7VXbna_ferYz4uLq9p0budSUC2X9kGK1cT9sazMdD3YWjtl5NkGKWXT8prEhMGr5q8Qqj2Btq7c_jWCcTJ4mjydrJL-LoACSHqthsqolO0.f8hPrJThz_kkfx_HWt4tjlKvabpDZNKjWKhU97g0o1k&dib_tag=se&keywords=nvme%2Bp5&qid=1728914386&sprefix=nvme%2Bp5%2Caps%2C145&sr=8-10&th=1',129.35,'disk'),
(8,'Nvme','Hard Disk 2 TB','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=sr_1_10?crid=15GNPNJK3FOAI&dib=eyJ2IjoiMSJ9.fqgp8sNKcJ5k3mu4vII5eF1_jSZoDI_FgqDnHZKshXNMbvtg8Z1an6JNHFZPgXQJvlflIUZF4Hvmw222MOPb3g7tbks6sqHFjSJFtfzSJiikF_5AW2w_OoVYbvD1OaSUL7VXbna_ferYz4uLq9p0budSUC2X9kGK1cT9sazMdD3YWjtl5NkGKWXT8prEhMGr5q8Qqj2Btq7c_jWCcTJ4mjydrJL-LoACSHqthsqolO0.f8hPrJThz_kkfx_HWt4tjlKvabpDZNKjWKhU97g0o1k&dib_tag=se&keywords=nvme%2Bp5&qid=1728914386&sprefix=nvme%2Bp5%2Caps%2C145&sr=8-10&th=1',129.76,'Disk'),
(9,'Nvme','Hard Disk 2 TB','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=sr_1_10?crid=15GNPNJK3FOAI&dib=eyJ2IjoiMSJ9.fqgp8sNKcJ5k3mu4vII5eF1_jSZoDI_FgqDnHZKshXNMbvtg8Z1an6JNHFZPgXQJvlflIUZF4Hvmw222MOPb3g7tbks6sqHFjSJFtfzSJiikF_5AW2w_OoVYbvD1OaSUL7VXbna_ferYz4uLq9p0budSUC2X9kGK1cT9sazMdD3YWjtl5NkGKWXT8prEhMGr5q8Qqj2Btq7c_jWCcTJ4mjydrJL-LoACSHqthsqolO0.f8hPrJThz_kkfx_HWt4tjlKvabpDZNKjWKhU97g0o1k&dib_tag=se&keywords=nvme%2Bp5&qid=1728914386&sprefix=nvme%2Bp5%2Caps%2C145&sr=8-10&th=1',129.35,'Disk'),
(10,'Nvme','Hard Disk 2 TB','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=sr_1_10?crid=15GNPNJK3FOAI&dib=eyJ2IjoiMSJ9.fqgp8sNKcJ5k3mu4vII5eF1_jSZoDI_FgqDnHZKshXNMbvtg8Z1an6JNHFZPgXQJvlflIUZF4Hvmw222MOPb3g7tbks6sqHFjSJFtfzSJiikF_5AW2w_OoVYbvD1OaSUL7VXbna_ferYz4uLq9p0budSUC2X9kGK1cT9sazMdD3YWjtl5NkGKWXT8prEhMGr5q8Qqj2Btq7c_jWCcTJ4mjydrJL-LoACSHqthsqolO0.f8hPrJThz_kkfx_HWt4tjlKvabpDZNKjWKhU97g0o1k&dib_tag=se&keywords=nvme%2Bp5&qid=1728914386&sprefix=nvme%2Bp5%2Caps%2C145&sr=8-10&th=1',149.34,'Disk'),
(11,'Nvme','Hard Disk 2 TB','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E2T0B-AM/dp/B0CRC7H66Z/ref=sr_1_10?crid=15GNPNJK3FOAI&dib=eyJ2IjoiMSJ9.fqgp8sNKcJ5k3mu4vII5eF1_jSZoDI_FgqDnHZKshXNMbvtg8Z1an6JNHFZPgXQJvlflIUZF4Hvmw222MOPb3g7tbks6sqHFjSJFtfzSJiikF_5AW2w_OoVYbvD1OaSUL7VXbna_ferYz4uLq9p0budSUC2X9kGK1cT9sazMdD3YWjtl5NkGKWXT8prEhMGr5q8Qqj2Btq7c_jWCcTJ4mjydrJL-LoACSHqthsqolO0.f8hPrJThz_kkfx_HWt4tjlKvabpDZNKjWKhU97g0o1k&dib_tag=se&keywords=nvme%2Bp5&qid=1728914386&sprefix=nvme%2Bp5%2Caps%2C145&sr=8-10&th=1',149.34,'Disk'),
(12,'Nvme','Black TB','https://www.amazon.com/Western-Digital-Officially-Licensed-Expansion/dp/B0C47ZX1WB/ref=sr_1_2?crid=2X3S19LVJOLOR&dib=eyJ2IjoiMSJ9.GNPCNtfeOIIiXd_YXu5V_CbtwhQCcdku6xhKfK9ZHB7iq3EvimeQz4wLu0cERfOg85OH3Zdel7lTmLZZQ8vJnhTWopKuogXfiLgoC4VLLAQUJhKYSDjiv_hMXXv9yoDAlklCZFpW76wFCVgBLOHXHzyufBU69J4V7ArdqhxqBX0duLV5Ty33iB4-QQVQA01cAcT4yklgqsYmWJB3P8weQDyn279IAYKdoZp43mQ9VOo.p6_RbEWbS8VRK0BR57LuSg7OMh5GzEYzIKsEhm3aBAE&dib_tag=se&keywords=p5%2Binternal%2Bmemory%2Bstick&qid=1728915559&sprefix=p5%2Bmemory%2Caps%2C120&sr=8-2&th=1',176.74,'disk'),
(13,'Nvme','2 TB','https://www.amazon.com/Western-Digital-Officially-Licensed-Expansion/dp/B0C47ZX1WB/ref=sr_1_2?crid=2X3S19LVJOLOR&dib=eyJ2IjoiMSJ9.GNPCNtfeOIIiXd_YXu5V_CbtwhQCcdku6xhKfK9ZHB7iq3EvimeQz4wLu0cERfOg85OH3Zdel7lTmLZZQ8vJnhTWopKuogXfiLgoC4VLLAQUJhKYSDjiv_hMXXv9yoDAlklCZFpW76wFCVgBLOHXHzyufBU69J4V7ArdqhxqBX0duLV5Ty33iB4-QQVQA01cAcT4yklgqsYmWJB3P8weQDyn279IAYKdoZp43mQ9VOo.p6_RbEWbS8VRK0BR57LuSg7OMh5GzEYzIKsEhm3aBAE&dib_tag=se&keywords=p5%2Binternal%2Bmemory%2Bstick&qid=1728915559&sprefix=p5%2Bmemory%2Caps%2C120&sr=8-2&th=1',198.45,'Disk'),
(14,'Nvme','2 TB ','https://www.amazon.com/Western-Digital-Officially-Licensed-Expansion/dp/B0C47ZX1WB/ref=sr_1_2?crid=2X3S19LVJOLOR&dib=eyJ2IjoiMSJ9.GNPCNtfeOIIiXd_YXu5V_CbtwhQCcdku6xhKfK9ZHB7iq3EvimeQz4wLu0cERfOg85OH3Zdel7lTmLZZQ8vJnhTWopKuogXfiLgoC4VLLAQUJhKYSDjiv_hMXXv9yoDAlklCZFpW76wFCVgBLOHXHzyufBU69J4V7ArdqhxqBX0duLV5Ty33iB4-QQVQA01cAcT4yklgqsYmWJB3P8weQDyn279IAYKdoZp43mQ9VOo.p6_RbEWbS8VRK0BR57LuSg7OMh5GzEYzIKsEhm3aBAE&dib_tag=se&keywords=p5%2Binternal%2Bmemory%2Bstick&qid=1728915559&sprefix=p5%2Bmemory%2Caps%2C120&sr=8-2&th=1',159.9,'disk'),
(15,'Wireless Keyboard And Mouse','Amazon.com: seenda Wireless Backlit Keyboard and Mouse Combo, 2.4G USB Silent Keyboard and Mouse Rechargeable Full-Size Ultra Slim Keyboard &amp; Mouse Set for Windows PC Computer, Laptop, Desktop : Electronics','https://www.amazon.com/seenda-Wireless-Keyboard-Rechargeable-Full-Size/dp/B094C5SGT6/ref=sr_1_3_pp?crid=38DX2J2BZSAXW&dib=eyJ2IjoiMSJ9.ENNzxIuA5claR0VF6WO58_09YKEHqalCqLMsnOPJZa-DVUUDFrUZgo83mOx9ROGTFcOlHKz4K0UwUz8J7WAYc_OVKK62CybsoVdy_STwIwIsXjJGfbjJ8wUJkafUp6bQE296Twv30LGXKB0oS6BxPmb1jnhaEiCpqmef5CXs4UtH39KZZMj7q-zfhKT5oE48MN1drIOGZa7VBLBY3TYVg0Htt3oCwoonKOgI1cPZaOg.zKEKJcDHEhOHV3Pp2yLQxk6bdTlcMk9ZOMcaquYHlJ8&dib_tag=se&keywords=wireless+keyboard+and+mouse&qid=1728916601&sprefix=wireless+%2Caps%2C153&sr=8-3',48.57,'Wireless Mouse'),
(16,'Wireless Keyboard And Mouse','wireless mouse','https://www.amazon.com/seenda-Wireless-Keyboard-Rechargeable-Full-Size/dp/B094C5SGT6/ref=sr_1_3_pp?crid=38DX2J2BZSAXW&dib=eyJ2IjoiMSJ9.ENNzxIuA5claR0VF6WO58_09YKEHqalCqLMsnOPJZa-DVUUDFrUZgo83mOx9ROGTFcOlHKz4K0UwUz8J7WAYc_OVKK62CybsoVdy_STwIwIsXjJGfbjJ8wUJkafUp6bQE296Twv30LGXKB0oS6BxPmb1jnhaEiCpqmef5CXs4UtH39KZZMj7q-zfhKT5oE48MN1drIOGZa7VBLBY3TYVg0Htt3oCwoonKOgI1cPZaOg.zKEKJcDHEhOHV3Pp2yLQxk6bdTlcMk9ZOMcaquYHlJ8&dib_tag=se&keywords=wireless+keyboard+and+mouse&qid=1728916601&sprefix=wireless+%2Caps%2C153&sr=8-3',45.89,'mouse'),
(17,'Wireless Keyboard And Mouse','Wireless Logitech','https://www.amazon.com/Logitech-MK270-Wireless-Keyboard-Mouse/dp/B079JLY5M5/ref=sr_1_4?crid=38DX2J2BZSAXW&dib=eyJ2IjoiMSJ9.ENNzxIuA5claR0VF6WO58_09YKEHqalCqLMsnOPJZa-DVUUDFrUZgo83mOx9ROGTFcOlHKz4K0UwUz8J7WAYc_OVKK62CybsoVdy_STwIwIsXjJGfbjJ8wUJkafUp6bQE296Twv30LGXKB0oS6BxPmb1jnhaEiCpqmef5CXs4UtH39KZZMj7q-zfhKT5oE48MN1drIOGZa7VBLBY3TYVg0Htt3oCwoonKOgI1cPZaOg.zKEKJcDHEhOHV3Pp2yLQxk6bdTlcMk9ZOMcaquYHlJ8&dib_tag=se&keywords=wireless+keyboard+and+mouse&qid=1728916601&sprefix=wireless+%2Caps%2C153&sr=8-4',24.9,'mouse'),
(18,'','Series 200 Motherboard','https://www.aorus.com/motherboards/Z890-AORUS-MASTER/Key-Features',599.99,'Motheroard'),
(19,'CPU','Motherboard for 200 Seres Intel','Z890 AORUS MASTER',599.99,'Motherboard');
/*!40000 ALTER TABLE `tb_Comps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_table`
--

DROP TABLE IF EXISTS `test_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_table`
--

LOCK TABLES `test_table` WRITE;
/*!40000 ALTER TABLE `test_table` DISABLE KEYS */;
INSERT INTO `test_table` VALUES
(0,'Tesss',33);
/*!40000 ALTER TABLE `test_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`title`,`from_date`),
  CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uorij`
--

DROP TABLE IF EXISTS `uorij`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uorij` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(125) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uorij`
--

LOCK TABLES `uorij` WRITE;
/*!40000 ALTER TABLE `uorij` DISABLE KEYS */;
INSERT INTO `uorij` VALUES
(1,'Cat');
/*!40000 ALTER TABLE `uorij` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volApp`
--

DROP TABLE IF EXISTS `volApp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volApp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `appDate` date NOT NULL COMMENT 'Application Date',
  `volMin` varchar(125) NOT NULL COMMENT 'Ministry',
  `volName` varchar(125) NOT NULL COMMENT 'Name',
  `volAddr` mediumtext NOT NULL COMMENT 'Current Address',
  `howLong` int(11) NOT NULL COMMENT 'Years At Address',
  `preAddr` mediumtext NOT NULL COMMENT 'Previous Address',
  `workPhone` varchar(20) NOT NULL COMMENT 'Work Phone',
  `homePhone` varchar(20) NOT NULL COMMENT 'Home Phone',
  `dlNo` varchar(20) NOT NULL COMMENT 'Driver''s License No,',
  `ssan` varchar(20) NOT NULL COMMENT 'SSAN',
  `adEd` varchar(125) NOT NULL COMMENT 'Highest Grade',
  `adEdMemo` mediumtext NOT NULL COMMENT 'Education Memo',
  `curEmpl` mediumtext NOT NULL COMMENT 'Current Employer',
  `posTtl` varchar(125) NOT NULL COMMENT 'Position Title',
  `empFromDate` date NOT NULL COMMENT 'From Date',
  `empToDate` date NOT NULL COMMENT 'To Date',
  `empAddr` mediumtext NOT NULL COMMENT 'Employer Address',
  `keepAbr` varchar(20) NOT NULL COMMENT 'Keep Abreast',
  `specSkills` mediumtext NOT NULL COMMENT 'Special Skills',
  `grpClubs` mediumtext NOT NULL COMMENT 'Groups or Clubs',
  `priorExp` mediumtext NOT NULL COMMENT 'Prior Experience ',
  `prepExpr` mediumtext NOT NULL COMMENT 'Preparatory Experience',
  `whyVol` mediumtext NOT NULL COMMENT 'Reason Volunteering',
  `convictDesc` mediumtext NOT NULL COMMENT 'Conviction Decription',
  `refOne` mediumtext NOT NULL COMMENT 'First Reference ',
  `refTwo` mediumtext NOT NULL COMMENT 'Second Reference',
  `refThree` mediumtext NOT NULL COMMENT 'Third Reference',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volApp`
--

LOCK TABLES `volApp` WRITE;
/*!40000 ALTER TABLE `volApp` DISABLE KEYS */;
/*!40000 ALTER TABLE `volApp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_data`
--

DROP TABLE IF EXISTS `web_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(8000) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `url` varchar(6000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_data`
--

LOCK TABLES `web_data` WRITE;
/*!40000 ALTER TABLE `web_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `your_table_name`
--

DROP TABLE IF EXISTS `your_table_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `your_table_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `your_table_name`
--

LOCK TABLES `your_table_name` WRITE;
/*!40000 ALTER TABLE `your_table_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `your_table_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `current_dept_emp`
--

/*!50001 DROP VIEW IF EXISTS `current_dept_emp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bcs`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `current_dept_emp` AS select `l`.`emp_no` AS `emp_no`,`d`.`dept_no` AS `dept_no`,`l`.`from_date` AS `from_date`,`l`.`to_date` AS `to_date` from (`dept_emp` `d` join `dept_emp_latest_date` `l` on(`d`.`emp_no` = `l`.`emp_no` and `d`.`from_date` = `l`.`from_date` and `l`.`to_date` = `d`.`to_date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dept_emp_latest_date`
--

/*!50001 DROP VIEW IF EXISTS `dept_emp_latest_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bcs`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dept_emp_latest_date` AS select `dept_emp`.`emp_no` AS `emp_no`,max(`dept_emp`.`from_date`) AS `from_date`,max(`dept_emp`.`to_date`) AS `to_date` from `dept_emp` group by `dept_emp`.`emp_no` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-12-28 20:47:31
