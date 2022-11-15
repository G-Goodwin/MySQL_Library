CREATE DATABASE  IF NOT EXISTS `lib_project` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lib_project`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: lib_project
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
-- Table structure for table `access_records`
--

DROP TABLE IF EXISTS `access_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_records` (
  `access_id` int NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `book_id` int NOT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`access_id`),
  UNIQUE KEY `access_id_UNIQUE` (`access_id`),
  KEY `fk_access_records_books1_idx` (`book_id`),
  KEY `fk_access_records_people1_idx` (`person_id`),
  CONSTRAINT `fk_access_records_books1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `fk_access_records_people1` FOREIGN KEY (`person_id`) REFERENCES `people` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_records`
--

LOCK TABLES `access_records` WRITE;
/*!40000 ALTER TABLE `access_records` DISABLE KEYS */;
INSERT INTO `access_records` VALUES (1,'2021-01-14 11:16:34','2021-01-14 12:16:34',20,7),(2,'2021-02-21 23:51:00','2021-02-21 23:57:00',13,26),(3,'2018-08-03 17:31:19','2018-08-03 17:40:19',13,7),(4,'2021-05-29 08:52:16','2021-05-29 08:55:16',2,13),(5,'2021-08-21 05:40:52','2021-08-21 05:47:52',8,16),(6,'2019-03-31 12:13:10','2019-03-31 12:20:10',21,11),(7,'2020-01-29 12:53:47','2020-01-29 12:57:47',23,21),(8,'2018-08-31 17:08:55','2018-08-31 17:56:55',19,18),(9,'2018-01-11 16:40:15','2018-01-11 16:56:15',15,1),(10,'2019-10-02 03:25:56','2019-10-02 03:45:56',24,11),(11,'2020-02-21 09:49:39','2020-02-21 10:30:39',10,16),(12,'2020-12-05 02:57:01','2020-12-05 03:30:01',16,16),(13,'2021-05-02 23:16:24','2021-05-02 23:30:24',8,5),(14,'2020-04-08 20:45:15','2020-04-08 20:55:15',19,24),(15,'2018-02-24 09:39:55','2018-02-24 09:45:55',8,24),(16,'2019-02-24 02:07:20','2019-02-24 02:45:20',15,9),(17,'2020-02-28 16:34:45','2020-02-28 16:44:45',20,12),(18,'2018-06-21 23:32:32','2018-06-21 23:45:32',9,25),(19,'2021-08-19 20:08:03','2021-08-19 20:34:03',2,11),(20,'2022-02-04 06:22:25','2022-02-04 06:32:25',27,18),(21,'2018-06-21 21:20:46','2018-06-21 21:45:46',10,6),(22,'2019-02-25 19:00:10','2019-02-25 19:10:10',19,23),(23,'2021-05-10 09:52:19','2021-05-10 10:20:19',10,22),(24,'2020-05-12 00:19:41','2020-05-12 00:39:41',24,26),(25,'2021-02-18 12:28:01','2021-02-18 12:35:01',12,14),(26,'2021-10-27 05:15:02','2021-10-27 05:19:02',1,24),(27,'2021-03-20 15:40:31','2021-03-20 15:55:31',11,17),(28,'2020-06-08 03:26:25','2020-06-08 03:26:25',9,7),(29,'2022-01-14 16:16:27','2022-01-14 16:26:27',28,19),(30,'2019-07-29 18:56:22','2019-07-29 19:32:22',3,3),(31,'2019-05-12 17:16:00','2019-05-12 17:18:00',23,8);
/*!40000 ALTER TABLE `access_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `accessed_since_2020`
--

DROP TABLE IF EXISTS `accessed_since_2020`;
/*!50001 DROP VIEW IF EXISTS `accessed_since_2020`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `accessed_since_2020` AS SELECT 
 1 AS `title`,
 1 AS `name`,
 1 AS `checkout_date`,
 1 AS `return_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `asian_history_books`
--

DROP TABLE IF EXISTS `asian_history_books`;
/*!50001 DROP VIEW IF EXISTS `asian_history_books`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `asian_history_books` AS SELECT 
 1 AS `title`,
 1 AS `author`,
 1 AS `country_name`,
 1 AS `course`,
 1 AS `course_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `book_publishers`
--

DROP TABLE IF EXISTS `book_publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_publishers` (
  `book_id` int NOT NULL,
  `publisher_id` int NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_book_publisher_pub_id_idx` (`publisher_id`),
  CONSTRAINT `fk_book_publisher_book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `fk_book_publisher_pub_id` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_publishers`
--

LOCK TABLES `book_publishers` WRITE;
/*!40000 ALTER TABLE `book_publishers` DISABLE KEYS */;
INSERT INTO `book_publishers` VALUES (1,1),(16,1),(28,1),(2,2),(3,3),(8,3),(4,4),(5,5),(7,5),(6,6),(9,7),(10,8),(25,8),(11,9),(12,10),(29,10),(13,11),(14,12),(15,12),(18,13),(17,14),(31,14),(19,15),(20,15),(21,16),(22,17),(23,18),(24,19),(27,20),(26,21),(30,21);
/*!40000 ALTER TABLE `book_publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `author_fname` varchar(45) DEFAULT NULL,
  `author_lname` varchar(45) DEFAULT NULL,
  `num_pg` int DEFAULT NULL,
  `ISBN` varchar(55) NOT NULL,
  `publisher_id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `book_id_UNIQUE` (`book_id`),
  UNIQUE KEY `call_num_UNIQUE` (`ISBN`),
  KEY `fk_books_publishers1_idx` (`publisher_id`),
  KEY `fk_books_countries1_idx` (`country_id`),
  KEY `fk_books_regions1_idx` (`region_id`),
  KEY `fk_books_umd_courses1_idx` (`course_id`),
  KEY `fk_books_languages1_idx` (`language_id`),
  CONSTRAINT `fk_books_lang_id` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`),
  CONSTRAINT `fk_books_region_id` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Ancient Mediterranean Civilizations','Ralph','Mathisen',608,'978-0199384457',1,0,8,1,1),(2,'Achilles in Vietnam: Combat Trauma and the Undoing of Character','Jonathan','Shay',246,'978-0684813219',2,1,2,1,1),(3,'Through Women\'s Eyes, Volume 2','Ellen','Dubois',552,'978-1319156275',3,1,1,0,1),(4,'Premodern Japan : a historical survey','Mikiso','Hane',395,'978-0813349657',4,2,2,2,1),(5,'Everyday things in premodern Japan : the hidden legacy of material culture\n ','Susan','Hanley',0,'978-0520218123',5,2,2,2,1),(6,'Rethinking Japanese history','Amino ','Yoshihiko',317,'978-1929280711',6,2,2,2,4),(7,'Popular culture in late imperial China','David','Johnson',449,'978-0520357082',5,4,2,3,1),(8,'Between Dignity and Despair: Jewish Life in Nazi Germany','Marion','Kaplan',304,'978-0195130928',3,3,3,4,1),(9,'Divine justice : religion and the development of Chinese legal culture','Paul','Katz',224,'978-0415574334',7,4,2,3,1),(10,'Britain Since 1688: A Nation In The World','Stephanie','Barczewski',390,'978-0415506601',8,5,3,5,1),(11,'Chinese civilization : a sourcebook','Patricia ','Ebrey',524,'978-0029087527',9,4,2,3,1),(12,'The first emperor : selections from the Historical records','Qian ','Sima',238,'978-0199574391',10,4,2,6,2),(13,'Pre-modern East Asia, to 1800 : a cultural, social, and political history','Patricia ','Ebrey',651,'978-1133606512',11,NULL,2,6,1),(14,'Sources of East Asian tradition','Wm. ','Theodore de Bary',215,'978-0231143042',12,NULL,2,6,1),(15,'Sources of Korean tradition','Peter','Lee',269,'978-0231105675',12,6,2,6,1),(16,'The land of enterprise : a business history of the United States','Benjamin ','Waterhouse',280,'978-1476766652',1,2,1,7,1),(17,'A History Of Modern Iran','Ervand','Abrahamian',272,'978-1316648148',14,8,5,8,1),(18,'America for Americans: A History of Xenophobia in the United States','Erika','Lee',480,'978-1541672611',13,1,1,9,1),(19,'Hadji Murat','Leo','Tolstoy',144,'978-0307951342',15,9,6,10,3),(20,'Captains Daughter and other Stories','Alexander','Pushkin',320,'978-0394707143',15,9,6,10,1),(21,'Slave Revolution in the Carribean, 1789-1804','Laurent','Dubois',224,'978-1319048785',16,NULL,4,11,1),(22,'The imperial tense','Andrew','Bacevich',288,'978-1566635332',17,7,1,12,1),(23,'Darwin, A norton critical edition','Phillip','Appleman',695,'978-0393958492',18,5,3,13,1),(24,'Franklin D Roosevelt and the New Deal:1932-1940','William','Leuchtenberg',432,'978-0061836961',19,1,1,14,1),(25,'History of the Modern Middle East','William','Cleveland',624,'978-0813349800',8,NULL,5,8,1),(26,'South African tradition : a brief survey of the arts and cultures of the diverse peoples of South Africa.',NULL,NULL,144,'978-0028416628',20,10,7,15,1),(27,'Journal of African Histroy',NULL,NULL,139,'978-0130132728',14,NULL,7,16,1),(28,'Modern Middle East: A History - 4th Edition','James','Gelvin',432,'9780190218867',1,NULL,5,17,1),(29,'Peruvian traditions','Ricardo','Palma',308,'978-962865717',10,NULL,1,NULL,1),(30,'Canadian History','James ','Hughes',672,'978-3890809205',21,NULL,1,NULL,1),(31,'Turkey Volume 1: Byzantium to Turkey 1071 - 1453',NULL,NULL,522,'9781139055963',14,11,5,NULL,1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `checked_out_until`
--

DROP TABLE IF EXISTS `checked_out_until`;
/*!50001 DROP VIEW IF EXISTS `checked_out_until`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `checked_out_until` AS SELECT 
 1 AS `title`,
 1 AS `patron`,
 1 AS `checkout_date`,
 1 AS `return_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) NOT NULL,
  `region_id` int NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_id_UNIQUE` (`country_id`),
  KEY `fk_countries_regions1_idx` (`region_id`),
  CONSTRAINT `fk_countries_country_id` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'USA',1),(2,'Japan',2),(3,'Germany',3),(4,'China',2),(5,'Great Britain',3),(6,'Korea',2),(7,'Italy',3),(8,'Iran',5),(9,'Russia',6),(10,'South Africa',7),(11,'Turkey',5);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_books`
--

DROP TABLE IF EXISTS `course_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_books` (
  `book_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  KEY `fk_course_books_book_id_idx` (`book_id`),
  KEY `fk_course_books_course_id_idx` (`course_id`),
  CONSTRAINT `fk_course_books_book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `fk_course_books_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_books`
--

LOCK TABLES `course_books` WRITE;
/*!40000 ALTER TABLE `course_books` DISABLE KEYS */;
INSERT INTO `course_books` VALUES (1,1),(2,1),(4,2),(5,2),(6,2),(7,3),(8,4),(9,3),(10,5),(11,3),(12,6),(13,6),(14,6),(15,6),(16,7),(17,8),(18,9),(19,10),(20,10),(21,11),(22,12),(23,13),(24,14),(25,8),(26,15),(27,16),(28,17),(3,18),(28,19),(31,17),(29,20);
/*!40000 ALTER TABLE `course_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(45) NOT NULL,
  `course_number` varchar(10) NOT NULL,
  `course_description` varchar(500) NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'HIST','110','The Ancient World'),(2,'HIST','482','History of Japan to 1800'),(3,'HIST','319A','City God, Dragon Boat, and Monkey King: Popular Culture and Society in Imperial China'),(4,'HIST','307','The Holocaust of European Jewry'),(5,'HIST','236','From Peacocks to Punks: Modern Britain from 1688 to Today'),(6,'HIST','284','East Asian Civilization I'),(7,'HIST','136','MoneyLand: Busine$s in American Culture'),(8,'HIST','219X','Modern Iran'),(9,'HIST','208N','Historical Research and Methods Seminar; America for Americans: Researching & Writing the History of Nativism, Xenophobia, & Anti-immigration in the US'),(10,'HIST','425','Imperial Russia'),(11,'HIST','473','History of the Caribbean'),(12,'CLAS','289A','Jews, Christians, and Muslims in Medieval Spain: Tolerance, Oppression, and the Problematic Past'),(13,'HIST','339P','Special Topics in History; Science in Europe, 1700-1950'),(14,'HIST','356','Emergence of Modern America, 1900-1945'),(15,'HIST','310','History of South Africa'),(16,'HIST','100','The Ancient World'),(17,'HIST','245','Reformers, Radicals, and Revolutionaries: The Middle East in the Twentieth Century'),(18,'HIST','211','Women in America Since 1880'),(19,'HIST','415','Ideas and Politics in Europe Since 1900'),(20,'HIST','142','Looking at America through a Global Lens');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(45) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English'),(2,'Chinese'),(3,'Russian'),(4,'Japanese');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `long_reads_us`
--

DROP TABLE IF EXISTS `long_reads_us`;
/*!50001 DROP VIEW IF EXISTS `long_reads_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `long_reads_us` AS SELECT 
 1 AS `title`,
 1 AS `author_fname`,
 1 AS `author_lname`,
 1 AS `num_pg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_accessed`
--

DROP TABLE IF EXISTS `most_accessed`;
/*!50001 DROP VIEW IF EXISTS `most_accessed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_accessed` AS SELECT 
 1 AS `title`,
 1 AS `author`,
 1 AS `num_accessed`,
 1 AS `num_accessorss`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `not_in_english`
--

DROP TABLE IF EXISTS `not_in_english`;
/*!50001 DROP VIEW IF EXISTS `not_in_english`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `not_in_english` AS SELECT 
 1 AS `title`,
 1 AS `author`,
 1 AS `language`,
 1 AS `country_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `person_id_UNIQUE` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Nayan','Moses'),(2,'Stanley','Bradley'),(3,'Savanna','Sanford'),(4,'Aden','Everett'),(5,'Leja','Waters'),(6,'Chester','Cunningham'),(7,'Hadiya','Potts'),(8,'Zoha','Vasquez'),(9,'Nora','Ponce'),(10,'Kyal','Davila'),(11,'Sahib','Valenzuela'),(12,'Louie','Lawson'),(13,'Sapphire','Chapman'),(14,'Roland','Sweet'),(15,'Clay','Fox'),(16,'Jannah','Moyer'),(17,'Caio','Peters'),(18,'Ella-Rose','Hunt'),(19,'Yousif','Head'),(20,'Fahmida','Roberson'),(21,'Ema','Wu'),(22,'Ashraf','Lord'),(23,'Zidan','Duncan'),(24,'Byron','Sparks'),(25,'Adeel','Mclellan'),(26,'Jeanne','Bryan');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(100) NOT NULL,
  PRIMARY KEY (`publisher_id`),
  UNIQUE KEY `publisher_id_UNIQUE` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'OXF'),(2,'Simon & Schuster'),(3,'MAC HIGHER'),(4,'Westview Press'),(5,'University of California Press'),(6,'University of Michigan Center for Japanese Studies'),(7,'Routledge'),(8,'TAYLOR'),(9,'The Free Press'),(10,'Oxford University Pres'),(11,'Cengage Learning'),(12,'Columbia University Press'),(13,'Basic Books'),(14,'Cambridge University Press'),(15,'Vintage'),(16,'Bedford/St.Martins'),(17,'Ivan R.Dee'),(18,'Norton'),(19,'Harper Perennial'),(20,'South Africa. Department of Information'),(21,'Forgotten Books');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `region_name` varchar(45) NOT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `region_id_UNIQUE` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Americas'),(2,'Asia'),(3,'Europe'),(4,'Carribean'),(5,'Middle East'),(6,'Russia'),(7,'Africa'),(8,'Mediteranean');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `short_read_us`
--

DROP TABLE IF EXISTS `short_read_us`;
/*!50001 DROP VIEW IF EXISTS `short_read_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `short_read_us` AS SELECT 
 1 AS `title`,
 1 AS `author_fname`,
 1 AS `author_lname`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `accessed_since_2020`
--

/*!50001 DROP VIEW IF EXISTS `accessed_since_2020`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `accessed_since_2020` AS select `books`.`title` AS `title`,concat(`people`.`fname`,' ',`people`.`lname`) AS `name`,`access_records`.`start_time` AS `checkout_date`,`access_records`.`end_time` AS `return_date` from ((`people` join `access_records` on((`people`.`person_id` = `access_records`.`person_id`))) join `books` on((`access_records`.`book_id` = `books`.`book_id`))) where (`access_records`.`end_time` > '2020-01-01 00:00:00') order by `access_records`.`end_time`,`books`.`title`,concat(`people`.`fname`,' ',`people`.`lname`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `asian_history_books`
--

/*!50001 DROP VIEW IF EXISTS `asian_history_books`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `asian_history_books` AS select `books`.`title` AS `title`,concat(`books`.`author_fname`,' ',`books`.`author_lname`) AS `author`,`countries`.`country_name` AS `country_name`,concat(`courses`.`course_code`,' ',`courses`.`course_number`) AS `course`,`courses`.`course_description` AS `course_description` from (((`books` join `regions` on((`books`.`region_id` = `regions`.`region_id`))) join `countries` on((`books`.`country_id` = `countries`.`country_id`))) join `courses` on((`books`.`course_id` = `courses`.`course_id`))) where (`regions`.`region_name` = 'Asia') order by `books`.`author_fname`,`books`.`author_lname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `checked_out_until`
--

/*!50001 DROP VIEW IF EXISTS `checked_out_until`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `checked_out_until` AS select `books`.`title` AS `title`,concat(`people`.`fname`,' ',`people`.`lname`) AS `patron`,`access_records`.`start_time` AS `checkout_date`,`access_records`.`end_time` AS `return_date` from ((`people` join `access_records` on((`people`.`person_id` = `access_records`.`person_id`))) join `books` on((`access_records`.`book_id` = `books`.`book_id`))) where (`access_records`.`end_time` > '2021-01-01 00:00:00') order by `people`.`lname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `long_reads_us`
--

/*!50001 DROP VIEW IF EXISTS `long_reads_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `long_reads_us` AS select `books`.`title` AS `title`,`books`.`author_fname` AS `author_fname`,`books`.`author_lname` AS `author_lname`,`books`.`num_pg` AS `num_pg` from `books` where ((`books`.`num_pg` > (select avg(`books`.`num_pg`) from `books`)) and (`books`.`country_id` = 1)) order by `books`.`num_pg` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_accessed`
--

/*!50001 DROP VIEW IF EXISTS `most_accessed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_accessed` AS select `books`.`title` AS `title`,concat(`books`.`author_fname`,' ',`books`.`author_lname`) AS `author`,count(`access_records`.`book_id`) AS `num_accessed`,count(`access_records`.`person_id`) AS `num_accessorss` from ((`books` join `access_records` on((`books`.`book_id` = `access_records`.`book_id`))) join `people` on((`access_records`.`person_id` = `people`.`person_id`))) group by `books`.`title`,`author` order by `num_accessed` desc,`books`.`title`,`author` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `not_in_english`
--

/*!50001 DROP VIEW IF EXISTS `not_in_english`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `not_in_english` AS select `books`.`title` AS `title`,concat(`books`.`author_fname`,' ',`books`.`author_lname`) AS `author`,`languages`.`language` AS `language`,`countries`.`country_name` AS `country_name` from ((`books` join `languages` on((`books`.`language_id` = `languages`.`language_id`))) join `countries` on((`books`.`country_id` = `countries`.`country_id`))) where (`books`.`language_id` <> 1) order by `books`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `short_read_us`
--

/*!50001 DROP VIEW IF EXISTS `short_read_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `short_read_us` AS select `books`.`title` AS `title`,`books`.`author_fname` AS `author_fname`,`books`.`author_lname` AS `author_lname` from `books` where ((`books`.`num_pg` < (select avg(`books`.`num_pg`) from `books`)) and (`books`.`country_id` = 1)) order by `books`.`num_pg` */;
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
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 13:52:56
