-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: biblioteka
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add genre',7,'add_genre'),(26,'Can change genre',7,'change_genre'),(27,'Can delete genre',7,'delete_genre'),(28,'Can view genre',7,'view_genre'),(29,'Can add author',8,'add_author'),(30,'Can change author',8,'change_author'),(31,'Can delete author',8,'delete_author'),(32,'Can view author',8,'view_author'),(33,'Can add book',9,'add_book'),(34,'Can change book',9,'change_book'),(35,'Can delete book',9,'delete_book'),(36,'Can view book',9,'view_book');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$UEPuQ8chyj4z$O1vHGxOYVyk79uHJrbEAFpY9uEXQRhtnjEt0Ar8ELOY=','2019-07-28 04:34:02.872417',1,'saddam','','','eatDatCode@gmail.com',1,1,'2019-07-20 00:41:58.059662');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `place` varchar(100) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `honor` varchar(4) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authors_slug_3bad909a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Rabindranath','Tagore','1861-05-07','calcutta, british india','authors/rabindranath.jpg','Mr.','rabindranath-tagore'),(2,'Satyajit','Rai','1921-05-02','calcutta,bengal presidency, british india','authors/satyajit.jpg','Mr.','satyajit-rai'),(3,'Bankim Chandra','Chatterjee','1828-06-27','naihati, bengal presidency, british india','authors/bamkimchandra.jpg','Mr.','bankim-chandra-chatterjee'),(4,'Ruskin','Bond','1934-05-19','Kasauli, Punjab States Agency, British India','authors/ruskin_bond.jpg','Mr.','ruskin-bond'),(5,'Sunil','Gangopadhyay','1934-09-07','Faridpur, Bengal Presidency, British India','authors/sunil_ganguly.jpg','Mr.','sunil-gangopadhyay'),(6,'Samaresh','Basu','1924-12-11','Bikrampur, Dhaka, Bangladesh','authors/SamareshBasuPic.jpg','Mr.','samaresh-basu'),(7,'Smaranjit','Chakrabarty','1976-06-19','Batnagar, west bengal, India','authors/smaranjit-chatterjee.jpg','Mr.','smaranjit-chakrabarty'),(8,'Amitav','Ghosh','1956-07-11','Kolkata, west bengal, India','authors/amitav-ghosh.jpg','Mr.','amitav-ghosh'),(9,'Arundhati','Roy','1956-11-24','Shillog, Asam, India','authors/arundhati-roy.jpg','Mrs.','arundhati-roy'),(10,'Jhumpa','Lahiri','1967-07-11','London, England, UK','authors/jhumpa-lahiri.jpg','Mrs.','jhumpa-lahiri'),(11,'Rasipuram Krishnaswami','Iyer Narayanaswami','1906-10-10','Madras Presidency, British India','authors/RK_Narayan.jpg','Mr.','rasipuram-krishnaswami-iyer-narayanaswami'),(12,'Edward','James Corbett','1875-07-25','Nainital, North-Western Provinces, British India','authors/Jim_Corbett.jpg','Mr.','edward-james-corbett'),(13,'George','Orwell','1903-06-25','England, UK','authors/George_Orwell.jpg','Mr.','george'),(14,'Sarat Chandra','Chattopadhyay','1876-09-15','Debanandapur, Hooghly district, Bengal Presidency, India','authors/saratchandra.jpg','Mr.','sarat-chandra-chattopadhyay'),(15,'Khaled','Husseini','1964-03-04','Kabul, Kingdom of Afghasnistan','authors/khaled-hosseini.jpg','Mr.','khaled-husseini');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(17) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pages` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `first_published` date NOT NULL,
  `language` varchar(20) NOT NULL,
  `book_cover` varchar(100) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_genre_id_0d946827_fk_genres_id` (`genre_id`),
  KEY `books_slug_30be353b` (`slug`),
  CONSTRAINT `books_genre_id_0d946827_fk_genres_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'978-8193387641','Animal Farm',88,125.00,'1945-08-17','English','bookCovers/animal-farm.jpg',21,'animal-farm'),(2,'978-8192910901','1984',310,195.00,'1949-06-08','English','bookCovers/1984.jpg',15,'1984'),(3,'978-0143419297','Listening to Grasshoppers',310,150.00,'2009-05-15','English','bookCovers/listen-to-grasshoper_Mad3hOT.jpg',7,'listening-to-grasshoppers'),(4,'978-9794614020','The God of small things',356,450.00,'1997-01-01','English','bookCovers/god-of-small-things.jpg',17,'the-god-of-small-things'),(5,'978-8172236137','The hungry tide',400,399.00,'2004-01-01','English','bookCovers/hungry-tide.jpg',3,'the-hungry-tide'),(6,'978-0143066569','The shadow line',288,0.00,'1988-01-01','English','bookCovers/shadow-line.jpg',3,'the-shadow-line'),(7,'978-0670089635','The ministry of utmost happiness',464,599.00,'2017-06-01','English','bookCovers/ministry-of-utmost-happiness.jpg',3,'the-ministry-of-utmost-happiness'),(8,'978-1408844441','A thousand splendid suns',419,499.00,'2007-03-01','English','bookCovers/thousands-splendid-suns.jpg',3,'a-thousand-splendid-suns'),(9,'978-1408850251','The kite runner',343,499.00,'2003-04-29','English','bookCovers/kite-runner.jpg',3,'the-kite-runner'),(10,'978-9384898083','And the mountains echoed',480,499.00,'2013-05-21','English','bookCovers/And_the_Mountains_Echoed_book_cover.jpg',3,'and-the-mountains-echoed'),(11,'978-0143425038','The Complete Adventures of Feluda',804,499.00,'1970-05-23','Bengali','bookCovers/feluda.jpg',14,'the-complete-adventures-of-feluda');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_written_by`
--

DROP TABLE IF EXISTS `books_written_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_written_by` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_written_by_book_id_author_id_ad29b2e4_uniq` (`book_id`,`author_id`),
  KEY `books_written_by_author_id_37f5b665_fk_author_id` (`author_id`),
  CONSTRAINT `books_written_by_author_id_37f5b665_fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_written_by_book_id_4b8f18a5_fk_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_written_by`
--

LOCK TABLES `books_written_by` WRITE;
/*!40000 ALTER TABLE `books_written_by` DISABLE KEYS */;
INSERT INTO `books_written_by` VALUES (1,1,13),(2,2,13),(3,3,9),(4,4,9),(5,5,8),(6,6,8),(7,7,9),(8,8,15),(9,9,15),(10,10,15),(11,11,2);
/*!40000 ALTER TABLE `books_written_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-07-20 00:55:27.645525','1','drama',1,'[{\"added\": {}}]',7,1),(2,'2019-07-20 00:55:32.961526','2','crime',1,'[{\"added\": {}}]',7,1),(3,'2019-07-20 00:55:37.626000','3','fiction',1,'[{\"added\": {}}]',7,1),(4,'2019-07-20 00:55:40.514201','4','horror',1,'[{\"added\": {}}]',7,1),(5,'2019-07-20 00:55:58.154094','5','mystery',1,'[{\"added\": {}}]',7,1),(6,'2019-07-20 00:56:06.815725','6','suspence',1,'[{\"added\": {}}]',7,1),(7,'2019-07-20 00:56:10.778420','7','non-fiction',1,'[{\"added\": {}}]',7,1),(8,'2019-07-20 00:56:19.147847','8','text-book',1,'[{\"added\": {}}]',7,1),(9,'2019-07-20 00:56:49.411709','9','fantasy',1,'[{\"added\": {}}]',7,1),(10,'2019-07-20 00:56:57.414245','10','science-fiction',1,'[{\"added\": {}}]',7,1),(11,'2019-07-20 00:57:46.668083','8','text-book',3,'',7,1),(12,'2019-07-20 00:57:46.959078','6','suspence',3,'',7,1),(13,'2019-07-20 00:57:47.115303','5','mystery',3,'',7,1),(14,'2019-07-20 00:57:47.159859','4','horror',3,'',7,1),(15,'2019-07-20 00:57:47.204472','2','crime',3,'',7,1),(16,'2019-07-20 00:57:47.249172','1','drama',3,'',7,1),(17,'2019-07-20 00:57:59.607829','11','western',1,'[{\"added\": {}}]',7,1),(18,'2019-07-20 00:58:02.960745','12','romance',1,'[{\"added\": {}}]',7,1),(19,'2019-07-20 00:58:10.536583','13','mystery',1,'[{\"added\": {}}]',7,1),(20,'2019-07-20 00:58:13.562507','14','detective',1,'[{\"added\": {}}]',7,1),(21,'2019-07-20 00:58:23.324325','15','dystopia',1,'[{\"added\": {}}]',7,1),(22,'2019-07-20 00:58:26.574520','16','thriller',1,'[{\"added\": {}}]',7,1),(23,'2019-07-20 00:58:33.410514','17','memoir',1,'[{\"added\": {}}]',7,1),(24,'2019-07-20 00:58:36.688435','18','biography',1,'[{\"added\": {}}]',7,1),(25,'2019-07-20 00:58:45.222564','19','play',1,'[{\"added\": {}}]',7,1),(26,'2019-07-20 00:58:48.577037','20','musical',1,'[{\"added\": {}}]',7,1),(27,'2019-07-20 00:58:52.436576','21','satire',1,'[{\"added\": {}}]',7,1),(28,'2019-07-20 00:59:00.584521','22','horror',1,'[{\"added\": {}}]',7,1),(29,'2019-07-20 00:59:05.308273','23','DIY',1,'[{\"added\": {}}]',7,1),(30,'2019-07-20 00:59:18.738594','24','young-adult-fiction',1,'[{\"added\": {}}]',7,1),(31,'2019-07-20 00:59:29.290522','25','childrens-book',1,'[{\"added\": {}}]',7,1),(32,'2019-07-20 00:59:55.183414','26','classic-fiction',1,'[{\"added\": {}}]',7,1),(33,'2019-07-20 18:41:39.199933','1','Mr.. Rabindranath Tagore',1,'[{\"added\": {}}]',8,1),(34,'2019-07-20 18:44:05.807890','2','Mr. Satyajit Rai',1,'[{\"added\": {}}]',8,1),(35,'2019-07-20 18:46:13.974683','3','Mr. Bankim Chandra Chatterjee',1,'[{\"added\": {}}]',8,1),(36,'2019-07-20 18:48:30.117453','1','Mr. Rabindranath Tagore',2,'[{\"changed\": {\"fields\": [\"avatar\"]}}]',8,1),(37,'2019-07-20 18:48:42.447499','2','Mr. Satyajit Rai',2,'[{\"changed\": {\"fields\": [\"avatar\"]}}]',8,1),(38,'2019-07-20 18:50:42.673298','4','Mr. Ruskin Bond',1,'[{\"added\": {}}]',8,1),(39,'2019-07-20 18:52:38.701367','5','Mr. Sunil Gangopadhyay',1,'[{\"added\": {}}]',8,1),(40,'2019-07-20 18:55:04.403265','6','Mr. Samaresh Basu',1,'[{\"added\": {}}]',8,1),(41,'2019-07-20 18:58:30.513204','7','Mr. Smaranjit Chakrabarty',1,'[{\"added\": {}}]',8,1),(42,'2019-07-20 19:00:13.140141','8','Mr. Amitav Ghosh',1,'[{\"added\": {}}]',8,1),(43,'2019-07-20 19:03:04.591644','9','Mrs. Arundhat Roy',1,'[{\"added\": {}}]',8,1),(44,'2019-07-20 19:04:18.735208','10','Mr. Jhumpa Lahiri',1,'[{\"added\": {}}]',8,1),(45,'2019-07-20 19:06:10.894740','11','Mr. Rasipuram Krishnaswami Iyer Narayanaswami',1,'[{\"added\": {}}]',8,1),(46,'2019-07-20 19:07:13.063759','10','Mrs. Jhumpa Lahiri',2,'[{\"changed\": {\"fields\": [\"honor\"]}}]',8,1),(47,'2019-07-20 19:08:55.305640','12','Mr. Edward James Corbett',1,'[{\"added\": {}}]',8,1),(48,'2019-07-20 19:10:28.221241','13','Mr. Eric Arthur Blair',1,'[{\"added\": {}}]',8,1),(49,'2019-07-20 19:12:52.268374','14','Mr. Sarat Chandra Chattopadhyay',1,'[{\"added\": {}}]',8,1),(50,'2019-07-20 19:16:45.213406','1','Animal Farm[978-8193387641]',1,'[{\"added\": {}}]',9,1),(51,'2019-07-20 19:19:29.285125','2','1984[978-8192910901]',1,'[{\"added\": {}}]',9,1),(52,'2019-07-20 19:26:14.247333','3','Listening to Grasshoppers[978-0143419297]',1,'[{\"added\": {}}]',9,1),(53,'2019-07-20 19:26:44.349534','9','Mrs. Arundhati Roy',2,'[{\"changed\": {\"fields\": [\"first_name\"]}}]',8,1),(54,'2019-07-20 19:29:15.924739','4','The God of small things[978-9794614020]',1,'[{\"added\": {}}]',9,1),(55,'2019-07-20 19:31:25.079151','5','The hungry tide[978-8172236137]',1,'[{\"added\": {}}]',9,1),(56,'2019-07-20 19:33:08.327152','6','The shadow line[978-0143066569]',1,'[{\"added\": {}}]',9,1),(57,'2019-07-20 19:35:19.134594','7','The ministry of utmost happiness[978-0670089635]',1,'[{\"added\": {}}]',9,1),(58,'2019-07-20 19:38:59.094566','15','Mr. Khaled Husseini',1,'[{\"added\": {}}]',8,1),(59,'2019-07-20 19:40:12.624972','8','A thousand splendid suns[978-1408844441]',1,'[{\"added\": {}}]',9,1),(60,'2019-07-20 19:41:58.426957','9','The kite runner[978-1408850251]',1,'[{\"added\": {}}]',9,1),(61,'2019-07-20 19:43:55.690628','10','And the mountains echoed[978-9384898083]',1,'[{\"added\": {}}]',9,1),(62,'2019-07-20 19:46:19.508842','11','The Complete Adventures of Feluda[978-0143425038]',1,'[{\"added\": {}}]',9,1),(63,'2019-07-20 23:58:15.526889','26','classic-fiction',2,'[]',7,1),(64,'2019-07-20 23:58:20.093272','25','childrens-book',2,'[]',7,1),(65,'2019-07-20 23:58:24.408180','24','young-adult-fiction',2,'[]',7,1),(66,'2019-07-20 23:58:41.882595','26','classic fiction',2,'[{\"changed\": {\"fields\": [\"genre\"]}}]',7,1),(67,'2019-07-20 23:58:49.800105','25','childrens book',2,'[{\"changed\": {\"fields\": [\"genre\"]}}]',7,1),(68,'2019-07-20 23:59:01.196221','24','young adult fiction',2,'[{\"changed\": {\"fields\": [\"genre\"]}}]',7,1),(69,'2019-07-20 23:59:05.650240','23','DIY',2,'[]',7,1),(70,'2019-07-20 23:59:10.826930','22','horror',2,'[]',7,1),(71,'2019-07-20 23:59:16.065103','21','satire',2,'[]',7,1),(72,'2019-07-20 23:59:20.988837','20','musical',2,'[]',7,1),(73,'2019-07-20 23:59:26.161950','19','play',2,'[]',7,1),(74,'2019-07-20 23:59:35.408795','18','biography',2,'[]',7,1),(75,'2019-07-20 23:59:42.702078','18','biography',2,'[]',7,1),(76,'2019-07-20 23:59:48.138821','17','memoir',2,'[]',7,1),(77,'2019-07-21 00:00:17.232737','3','fiction',2,'[]',7,1),(78,'2019-07-21 00:00:19.715095','16','thriller',2,'[]',7,1),(79,'2019-07-21 00:00:21.736968','15','dystopia',2,'[]',7,1),(80,'2019-07-21 00:00:24.935951','14','detective',2,'[]',7,1),(81,'2019-07-21 00:00:27.027797','13','mystery',2,'[]',7,1),(82,'2019-07-21 00:00:28.772316','12','romance',2,'[]',7,1),(83,'2019-07-21 00:00:30.613883','11','western',2,'[]',7,1),(84,'2019-07-21 00:00:32.384706','10','science-fiction',2,'[]',7,1),(85,'2019-07-21 00:00:34.424091','9','fantasy',2,'[]',7,1),(86,'2019-07-21 00:00:36.338963','7','non-fiction',2,'[]',7,1),(87,'2019-07-22 13:46:18.460447','13','Mr. George Orwell',2,'[{\"changed\": {\"fields\": [\"slug\", \"place\"]}}]',8,1),(88,'2019-07-28 04:44:20.420205','8','Mr. Amitav Ghosh',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(89,'2019-07-28 04:44:40.433325','8','Mr. Amitav Ghosh',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(90,'2019-07-28 04:44:58.101049','8','Mr. Amitav Ghosh',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(91,'2019-07-28 04:45:07.910538','9','Mrs. Arundhati Roy',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(92,'2019-07-28 04:45:15.621269','9','Mrs. Arundhati Roy',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(93,'2019-07-28 04:48:15.424623','8','Mr. Amitav Ghosh',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(94,'2019-07-28 04:50:47.851563','8','Mr. Amitav Ghosh',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(95,'2019-07-28 04:51:13.594820','8','Mr. Amitav Ghosh',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(96,'2019-07-28 04:51:32.448021','8','Mr. Amitav Ghosh',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(97,'2019-07-28 04:57:47.256658','9','Mrs. Arundhati Roy',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'authors','author'),(9,'books','book'),(7,'books','genre'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-07-20 00:17:09.971150'),(2,'auth','0001_initial','2019-07-20 00:17:12.463116'),(3,'admin','0001_initial','2019-07-20 00:17:25.879639'),(4,'admin','0002_logentry_remove_auto_add','2019-07-20 00:17:27.943098'),(5,'admin','0003_logentry_add_action_flag_choices','2019-07-20 00:17:27.992573'),(6,'contenttypes','0002_remove_content_type_name','2019-07-20 00:17:29.054076'),(7,'auth','0002_alter_permission_name_max_length','2019-07-20 00:17:30.025815'),(8,'auth','0003_alter_user_email_max_length','2019-07-20 00:17:31.166666'),(9,'auth','0004_alter_user_username_opts','2019-07-20 00:17:31.232386'),(10,'auth','0005_alter_user_last_login_null','2019-07-20 00:17:32.245035'),(11,'auth','0006_require_contenttypes_0002','2019-07-20 00:17:32.294016'),(12,'auth','0007_alter_validators_add_error_messages','2019-07-20 00:17:32.354066'),(13,'auth','0008_alter_user_username_max_length','2019-07-20 00:17:32.546614'),(14,'auth','0009_alter_user_last_name_max_length','2019-07-20 00:17:32.704231'),(15,'auth','0010_alter_group_name_max_length','2019-07-20 00:17:34.382192'),(16,'auth','0011_update_proxy_permissions','2019-07-20 00:17:34.447135'),(17,'sessions','0001_initial','2019-07-20 00:17:34.794913'),(18,'authors','0001_initial','2019-07-20 00:51:26.129776'),(19,'books','0001_initial','2019-07-20 00:51:26.460468'),(20,'authors','0002_author_avatar','2019-07-20 00:54:54.009575'),(21,'authors','0003_author_honor','2019-07-20 01:18:15.074353'),(22,'books','0002_auto_20190720_0648','2019-07-20 01:18:16.093388'),(23,'authors','0004_auto_20190720_0648','2019-07-20 01:18:57.974466'),(24,'authors','0005_auto_20190720_1854','2019-07-20 13:28:49.356303'),(25,'books','0003_auto_20190720_1854','2019-07-20 13:28:51.612757'),(26,'books','0004_auto_20190720_1858','2019-07-20 13:28:53.469990');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2evgi7a635p6qcy3p6hs2i3hxgl0yace','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-03 15:20:12.459215'),('3ooprnyhjvnqwvsx5n217auasrvtedqo','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-05 13:45:07.738455'),('4uh99jwfsm21dc81y309z9z5rgexuvx8','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-05 19:21:26.696469'),('hbjmj30r7ev5bb27cgs8f16ojl8ze97q','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-08 10:00:50.550142'),('iky4eklkjuili5b52uuk13y5xtpoak0q','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-03 13:42:23.726966'),('iyik8cmm0zix4s08yzfjxqldtb3ufwbx','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-11 04:34:02.930156'),('o0349j76c391dce0fwvst9trxnd4arl9','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-03 00:42:30.444800'),('yyokwr5pxiqhcxvsyh2zqhhgznhbp041','ZDU4MWQyMGY1NDE2N2IwN2U4MGE2YzAxNTBjNjg1ZDYzMmI1MmQxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODNmMDI5NTJiM2NkNGYzNDI5MTVkNzEwNjJkMjVkMmJjNmI5YWY4In0=','2019-08-03 18:37:45.839748');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `genres_slug_99e229b7` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (3,'fiction','fiction'),(7,'non-fiction','non-fiction'),(9,'fantasy','fantasy'),(10,'science-fiction','science-fiction'),(11,'western','western'),(12,'romance','romance'),(13,'mystery','mystery'),(14,'detective','detective'),(15,'dystopia','dystopia'),(16,'thriller','thriller'),(17,'memoir','memoir'),(18,'biography','biography'),(19,'play','play'),(20,'musical','musical'),(21,'satire','satire'),(22,'horror','horror'),(23,'DIY','diy'),(24,'young adult fiction','young-adult-fiction'),(25,'childrens book','childrens-book'),(26,'classic fiction','classic-fiction');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-28 23:40:52
