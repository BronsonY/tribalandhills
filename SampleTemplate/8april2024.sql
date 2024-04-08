-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: tahscheme
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add permission',3,'add_permission'),(4,'Can change permission',3,'change_permission'),(5,'Can delete permission',3,'delete_permission'),(6,'Can view permission',3,'view_permission'),(7,'Can add group',4,'add_group'),(8,'Can change group',4,'change_group'),(9,'Can delete group',4,'delete_group'),(10,'Can view group',4,'view_group'),(11,'Can add user',5,'add_user'),(12,'Can change user',5,'change_user'),(13,'Can delete user',5,'delete_user'),(14,'Can view user',5,'view_user'),(15,'Can add content type',6,'add_contenttype'),(16,'Can change content type',6,'change_contenttype'),(17,'Can delete content type',6,'delete_contenttype'),(18,'Can view content type',6,'view_contenttype'),(19,'Can add session',7,'add_session'),(20,'Can change session',7,'change_session'),(21,'Can delete session',7,'delete_session'),(22,'Can view session',7,'view_session'),(23,'Can add log entry',8,'add_logentry'),(24,'Can change log entry',8,'change_logentry'),(25,'Can delete log entry',8,'delete_logentry'),(26,'Can view log entry',8,'view_logentry'),(27,'Can add site',9,'add_site'),(28,'Can change site',9,'change_site'),(29,'Can delete site',9,'delete_site'),(30,'Can view site',9,'view_site'),(31,'Can add cms plugin',10,'add_cmsplugin'),(32,'Can change cms plugin',10,'change_cmsplugin'),(33,'Can delete cms plugin',10,'delete_cmsplugin'),(34,'Can view cms plugin',10,'view_cmsplugin'),(35,'Can add alias plugin model',11,'add_aliaspluginmodel'),(36,'Can change alias plugin model',11,'change_aliaspluginmodel'),(37,'Can delete alias plugin model',11,'delete_aliaspluginmodel'),(38,'Can view alias plugin model',11,'view_aliaspluginmodel'),(39,'Can add Page global permission',12,'add_globalpagepermission'),(40,'Can change Page global permission',12,'change_globalpagepermission'),(41,'Can delete Page global permission',12,'delete_globalpagepermission'),(42,'Can view Page global permission',12,'view_globalpagepermission'),(43,'Can add page',2,'add_page'),(44,'Can delete page',2,'delete_page'),(45,'Can view page',2,'view_page'),(46,'Can publish page',2,'publish_page'),(47,'Can edit static placeholders',2,'edit_static_placeholder'),(48,'Can add Page permission',13,'add_pagepermission'),(49,'Can change Page permission',13,'change_pagepermission'),(50,'Can delete Page permission',13,'delete_pagepermission'),(51,'Can view Page permission',13,'view_pagepermission'),(52,'Can add User (page)',14,'add_pageuser'),(53,'Can change User (page)',14,'change_pageuser'),(54,'Can delete User (page)',14,'delete_pageuser'),(55,'Can view User (page)',14,'view_pageuser'),(56,'Can add User group (page)',15,'add_pageusergroup'),(57,'Can change User group (page)',15,'change_pageusergroup'),(58,'Can delete User group (page)',15,'delete_pageusergroup'),(59,'Can view User group (page)',15,'view_pageusergroup'),(60,'Can add placeholder',1,'add_placeholder'),(61,'Can change placeholder',1,'change_placeholder'),(62,'Can delete placeholder',1,'delete_placeholder'),(63,'Can view placeholder',1,'view_placeholder'),(64,'Can add placeholder reference',16,'add_placeholderreference'),(65,'Can change placeholder reference',16,'change_placeholderreference'),(66,'Can delete placeholder reference',16,'delete_placeholderreference'),(67,'Can view placeholder reference',16,'view_placeholderreference'),(68,'Can add static placeholder',17,'add_staticplaceholder'),(69,'Can change static placeholder',17,'change_staticplaceholder'),(70,'Can delete static placeholder',17,'delete_staticplaceholder'),(71,'Can view static placeholder',17,'view_staticplaceholder'),(72,'Can add title',18,'add_title'),(73,'Can change title',18,'change_title'),(74,'Can delete title',18,'delete_title'),(75,'Can view title',18,'view_title'),(76,'Can add user setting',19,'add_usersettings'),(77,'Can change user setting',19,'change_usersettings'),(78,'Can delete user setting',19,'delete_usersettings'),(79,'Can view user setting',19,'view_usersettings'),(80,'Can add urlconf revision',20,'add_urlconfrevision'),(81,'Can change urlconf revision',20,'change_urlconfrevision'),(82,'Can delete urlconf revision',20,'delete_urlconfrevision'),(83,'Can view urlconf revision',20,'view_urlconfrevision'),(84,'Can add cache key',23,'add_cachekey'),(85,'Can change cache key',23,'change_cachekey'),(86,'Can delete cache key',23,'delete_cachekey'),(87,'Can view cache key',23,'view_cachekey'),(88,'Can add text',24,'add_text'),(89,'Can change text',24,'change_text'),(90,'Can delete text',24,'delete_text'),(91,'Can view text',24,'view_text'),(92,'Can add clipboard',25,'add_clipboard'),(93,'Can change clipboard',25,'change_clipboard'),(94,'Can delete clipboard',25,'delete_clipboard'),(95,'Can view clipboard',25,'view_clipboard'),(96,'Can add clipboard item',26,'add_clipboarditem'),(97,'Can change clipboard item',26,'change_clipboarditem'),(98,'Can delete clipboard item',26,'delete_clipboarditem'),(99,'Can view clipboard item',26,'view_clipboarditem'),(100,'Can add file',27,'add_file'),(101,'Can change file',27,'change_file'),(102,'Can delete file',27,'delete_file'),(103,'Can view file',27,'view_file'),(104,'Can add Folder',28,'add_folder'),(105,'Can change Folder',28,'change_folder'),(106,'Can delete Folder',28,'delete_folder'),(107,'Can view Folder',28,'view_folder'),(108,'Can use directory listing',28,'can_use_directory_listing'),(109,'Can add folder permission',29,'add_folderpermission'),(110,'Can change folder permission',29,'change_folderpermission'),(111,'Can delete folder permission',29,'delete_folderpermission'),(112,'Can view folder permission',29,'view_folderpermission'),(113,'Can add image',30,'add_image'),(114,'Can change image',30,'change_image'),(115,'Can delete image',30,'delete_image'),(116,'Can view image',30,'view_image'),(117,'Can add thumbnail option',31,'add_thumbnailoption'),(118,'Can change thumbnail option',31,'change_thumbnailoption'),(119,'Can delete thumbnail option',31,'delete_thumbnailoption'),(120,'Can view thumbnail option',31,'view_thumbnailoption'),(121,'Can add source',32,'add_source'),(122,'Can change source',32,'change_source'),(123,'Can delete source',32,'delete_source'),(124,'Can view source',32,'view_source'),(125,'Can add thumbnail',33,'add_thumbnail'),(126,'Can change thumbnail',33,'change_thumbnail'),(127,'Can delete thumbnail',33,'delete_thumbnail'),(128,'Can view thumbnail',33,'view_thumbnail'),(129,'Can add thumbnail dimensions',34,'add_thumbnaildimensions'),(130,'Can change thumbnail dimensions',34,'change_thumbnaildimensions'),(131,'Can delete thumbnail dimensions',34,'delete_thumbnaildimensions'),(132,'Can view thumbnail dimensions',34,'view_thumbnaildimensions'),(133,'Can add bootstrap4 alerts',35,'add_bootstrap4alerts'),(134,'Can change bootstrap4 alerts',35,'change_bootstrap4alerts'),(135,'Can delete bootstrap4 alerts',35,'delete_bootstrap4alerts'),(136,'Can view bootstrap4 alerts',35,'view_bootstrap4alerts'),(137,'Can add bootstrap4 badge',36,'add_bootstrap4badge'),(138,'Can change bootstrap4 badge',36,'change_bootstrap4badge'),(139,'Can delete bootstrap4 badge',36,'delete_bootstrap4badge'),(140,'Can view bootstrap4 badge',36,'view_bootstrap4badge'),(141,'Can add bootstrap4 card',37,'add_bootstrap4card'),(142,'Can change bootstrap4 card',37,'change_bootstrap4card'),(143,'Can delete bootstrap4 card',37,'delete_bootstrap4card'),(144,'Can view bootstrap4 card',37,'view_bootstrap4card'),(145,'Can add bootstrap4 card inner',38,'add_bootstrap4cardinner'),(146,'Can change bootstrap4 card inner',38,'change_bootstrap4cardinner'),(147,'Can delete bootstrap4 card inner',38,'delete_bootstrap4cardinner'),(148,'Can view bootstrap4 card inner',38,'view_bootstrap4cardinner'),(149,'Can add bootstrap4 carousel',39,'add_bootstrap4carousel'),(150,'Can change bootstrap4 carousel',39,'change_bootstrap4carousel'),(151,'Can delete bootstrap4 carousel',39,'delete_bootstrap4carousel'),(152,'Can view bootstrap4 carousel',39,'view_bootstrap4carousel'),(153,'Can add bootstrap4 carousel slide',40,'add_bootstrap4carouselslide'),(154,'Can change bootstrap4 carousel slide',40,'change_bootstrap4carouselslide'),(155,'Can delete bootstrap4 carousel slide',40,'delete_bootstrap4carouselslide'),(156,'Can view bootstrap4 carousel slide',40,'view_bootstrap4carouselslide'),(157,'Can add bootstrap4 collapse',41,'add_bootstrap4collapse'),(158,'Can change bootstrap4 collapse',41,'change_bootstrap4collapse'),(159,'Can delete bootstrap4 collapse',41,'delete_bootstrap4collapse'),(160,'Can view bootstrap4 collapse',41,'view_bootstrap4collapse'),(161,'Can add bootstrap4 collapse container',42,'add_bootstrap4collapsecontainer'),(162,'Can change bootstrap4 collapse container',42,'change_bootstrap4collapsecontainer'),(163,'Can delete bootstrap4 collapse container',42,'delete_bootstrap4collapsecontainer'),(164,'Can view bootstrap4 collapse container',42,'view_bootstrap4collapsecontainer'),(165,'Can add bootstrap4 collapse trigger',43,'add_bootstrap4collapsetrigger'),(166,'Can change bootstrap4 collapse trigger',43,'change_bootstrap4collapsetrigger'),(167,'Can delete bootstrap4 collapse trigger',43,'delete_bootstrap4collapsetrigger'),(168,'Can view bootstrap4 collapse trigger',43,'view_bootstrap4collapsetrigger'),(169,'Can add bootstrap4 blockquote',44,'add_bootstrap4blockquote'),(170,'Can change bootstrap4 blockquote',44,'change_bootstrap4blockquote'),(171,'Can delete bootstrap4 blockquote',44,'delete_bootstrap4blockquote'),(172,'Can view bootstrap4 blockquote',44,'view_bootstrap4blockquote'),(173,'Can add bootstrap4 code',45,'add_bootstrap4code'),(174,'Can change bootstrap4 code',45,'change_bootstrap4code'),(175,'Can delete bootstrap4 code',45,'delete_bootstrap4code'),(176,'Can view bootstrap4 code',45,'view_bootstrap4code'),(177,'Can add bootstrap4 figure',46,'add_bootstrap4figure'),(178,'Can change bootstrap4 figure',46,'change_bootstrap4figure'),(179,'Can delete bootstrap4 figure',46,'delete_bootstrap4figure'),(180,'Can view bootstrap4 figure',46,'view_bootstrap4figure'),(181,'Can add bootstrap4 grid column',47,'add_bootstrap4gridcolumn'),(182,'Can change bootstrap4 grid column',47,'change_bootstrap4gridcolumn'),(183,'Can delete bootstrap4 grid column',47,'delete_bootstrap4gridcolumn'),(184,'Can view bootstrap4 grid column',47,'view_bootstrap4gridcolumn'),(185,'Can add bootstrap4 grid container',48,'add_bootstrap4gridcontainer'),(186,'Can change bootstrap4 grid container',48,'change_bootstrap4gridcontainer'),(187,'Can delete bootstrap4 grid container',48,'delete_bootstrap4gridcontainer'),(188,'Can view bootstrap4 grid container',48,'view_bootstrap4gridcontainer'),(189,'Can add bootstrap4 grid row',49,'add_bootstrap4gridrow'),(190,'Can change bootstrap4 grid row',49,'change_bootstrap4gridrow'),(191,'Can delete bootstrap4 grid row',49,'delete_bootstrap4gridrow'),(192,'Can view bootstrap4 grid row',49,'view_bootstrap4gridrow'),(193,'Can add bootstrap4 jumbotron',50,'add_bootstrap4jumbotron'),(194,'Can change bootstrap4 jumbotron',50,'change_bootstrap4jumbotron'),(195,'Can delete bootstrap4 jumbotron',50,'delete_bootstrap4jumbotron'),(196,'Can view bootstrap4 jumbotron',50,'view_bootstrap4jumbotron'),(197,'Can add bootstrap4 link',51,'add_bootstrap4link'),(198,'Can change bootstrap4 link',51,'change_bootstrap4link'),(199,'Can delete bootstrap4 link',51,'delete_bootstrap4link'),(200,'Can view bootstrap4 link',51,'view_bootstrap4link'),(201,'Can add bootstrap4 list group',52,'add_bootstrap4listgroup'),(202,'Can change bootstrap4 list group',52,'change_bootstrap4listgroup'),(203,'Can delete bootstrap4 list group',52,'delete_bootstrap4listgroup'),(204,'Can view bootstrap4 list group',52,'view_bootstrap4listgroup'),(205,'Can add bootstrap4 list group item',53,'add_bootstrap4listgroupitem'),(206,'Can change bootstrap4 list group item',53,'change_bootstrap4listgroupitem'),(207,'Can delete bootstrap4 list group item',53,'delete_bootstrap4listgroupitem'),(208,'Can view bootstrap4 list group item',53,'view_bootstrap4listgroupitem'),(209,'Can add bootstrap4 media',54,'add_bootstrap4media'),(210,'Can change bootstrap4 media',54,'change_bootstrap4media'),(211,'Can delete bootstrap4 media',54,'delete_bootstrap4media'),(212,'Can view bootstrap4 media',54,'view_bootstrap4media'),(213,'Can add bootstrap4 media body',55,'add_bootstrap4mediabody'),(214,'Can change bootstrap4 media body',55,'change_bootstrap4mediabody'),(215,'Can delete bootstrap4 media body',55,'delete_bootstrap4mediabody'),(216,'Can view bootstrap4 media body',55,'view_bootstrap4mediabody'),(217,'Can add bootstrap4 picture',56,'add_bootstrap4picture'),(218,'Can change bootstrap4 picture',56,'change_bootstrap4picture'),(219,'Can delete bootstrap4 picture',56,'delete_bootstrap4picture'),(220,'Can view bootstrap4 picture',56,'view_bootstrap4picture'),(221,'Can add bootstrap4 tab',57,'add_bootstrap4tab'),(222,'Can change bootstrap4 tab',57,'change_bootstrap4tab'),(223,'Can delete bootstrap4 tab',57,'delete_bootstrap4tab'),(224,'Can view bootstrap4 tab',57,'view_bootstrap4tab'),(225,'Can add bootstrap4 tab item',58,'add_bootstrap4tabitem'),(226,'Can change bootstrap4 tab item',58,'change_bootstrap4tabitem'),(227,'Can delete bootstrap4 tab item',58,'delete_bootstrap4tabitem'),(228,'Can view bootstrap4 tab item',58,'view_bootstrap4tabitem'),(229,'Can add bootstrap4 spacing',59,'add_bootstrap4spacing'),(230,'Can change bootstrap4 spacing',59,'change_bootstrap4spacing'),(231,'Can delete bootstrap4 spacing',59,'delete_bootstrap4spacing'),(232,'Can view bootstrap4 spacing',59,'view_bootstrap4spacing'),(233,'Can add file',60,'add_file'),(234,'Can change file',60,'change_file'),(235,'Can delete file',60,'delete_file'),(236,'Can view file',60,'view_file'),(237,'Can add folder',61,'add_folder'),(238,'Can change folder',61,'change_folder'),(239,'Can delete folder',61,'delete_folder'),(240,'Can view folder',61,'view_folder'),(241,'Can add icon',62,'add_icon'),(242,'Can change icon',62,'change_icon'),(243,'Can delete icon',62,'delete_icon'),(244,'Can view icon',62,'view_icon'),(245,'Can add link',63,'add_link'),(246,'Can change link',63,'change_link'),(247,'Can delete link',63,'delete_link'),(248,'Can view link',63,'view_link'),(249,'Can add picture',64,'add_picture'),(250,'Can change picture',64,'change_picture'),(251,'Can delete picture',64,'delete_picture'),(252,'Can view picture',64,'view_picture'),(253,'Can add style',65,'add_style'),(254,'Can change style',65,'change_style'),(255,'Can delete style',65,'delete_style'),(256,'Can view style',65,'view_style'),(257,'Can add google map',66,'add_googlemap'),(258,'Can change google map',66,'change_googlemap'),(259,'Can delete google map',66,'delete_googlemap'),(260,'Can view google map',66,'view_googlemap'),(261,'Can add google map marker',67,'add_googlemapmarker'),(262,'Can change google map marker',67,'change_googlemapmarker'),(263,'Can delete google map marker',67,'delete_googlemapmarker'),(264,'Can view google map marker',67,'view_googlemapmarker'),(265,'Can add google map route',68,'add_googlemaproute'),(266,'Can change google map route',68,'change_googlemaproute'),(267,'Can delete google map route',68,'delete_googlemaproute'),(268,'Can view google map route',68,'view_googlemaproute'),(269,'Can add video player',69,'add_videoplayer'),(270,'Can change video player',69,'change_videoplayer'),(271,'Can delete video player',69,'delete_videoplayer'),(272,'Can view video player',69,'view_videoplayer'),(273,'Can add video source',70,'add_videosource'),(274,'Can change video source',70,'change_videosource'),(275,'Can delete video source',70,'delete_videosource'),(276,'Can view video source',70,'view_videosource'),(277,'Can add video track',71,'add_videotrack'),(278,'Can change video track',71,'change_videotrack'),(279,'Can delete video track',71,'delete_videotrack'),(280,'Can view video track',71,'view_videotrack'),(281,'Can add contact us',73,'add_contactus'),(282,'Can change contact us',73,'change_contactus'),(283,'Can delete contact us',73,'delete_contactus'),(284,'Can view contact us',73,'view_contactus'),(285,'Can add gallery',72,'add_gallery'),(286,'Can change gallery',72,'change_gallery'),(287,'Can delete gallery',72,'delete_gallery'),(288,'Can view gallery',72,'view_gallery');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$WJIycFT5mu1b$MnDWAoivAoBJjBK0+RmMTHQoUeXVt84POjXLXDXUWqU=','2023-10-16 15:43:32.853576',1,'admin','','','admin@admin.com',1,1,'2021-06-16 06:24:40.483000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_alerts_bootstrap4alerts`
--

DROP TABLE IF EXISTS `bootstrap4_alerts_bootstrap4alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_alerts_bootstrap4alerts` (
  `cmsplugin_ptr_id` int NOT NULL,
  `alert_context` varchar(255) NOT NULL,
  `alert_dismissable` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_alerts_bootstrap4alerts`
--

LOCK TABLES `bootstrap4_alerts_bootstrap4alerts` WRITE;
/*!40000 ALTER TABLE `bootstrap4_alerts_bootstrap4alerts` DISABLE KEYS */;
INSERT INTO `bootstrap4_alerts_bootstrap4alerts` VALUES (185,'success',0,'div','{\"class\": \"pright\"}'),(1292,'success',0,'div','{}'),(1294,'light',0,'div','{\"class\": \"news\"}'),(2439,'success',0,'div','{}'),(2441,'light',0,'div','{\"class\": \"news\"}'),(2446,'success',0,'div','{\"class\": \"pright\"}');
/*!40000 ALTER TABLE `bootstrap4_alerts_bootstrap4alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_badge_bootstrap4badge`
--

DROP TABLE IF EXISTS `bootstrap4_badge_bootstrap4badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_badge_bootstrap4badge` (
  `cmsplugin_ptr_id` int NOT NULL,
  `badge_text` varchar(255) NOT NULL,
  `badge_context` varchar(255) NOT NULL,
  `badge_pills` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_badge_bootstrap4badge`
--

LOCK TABLES `bootstrap4_badge_bootstrap4badge` WRITE;
/*!40000 ALTER TABLE `bootstrap4_badge_bootstrap4badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_badge_bootstrap4badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_card_bootstrap4card`
--

DROP TABLE IF EXISTS `bootstrap4_card_bootstrap4card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_card_bootstrap4card` (
  `cmsplugin_ptr_id` int NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_context` varchar(255) NOT NULL,
  `card_alignment` varchar(255) NOT NULL,
  `card_outline` tinyint(1) NOT NULL,
  `card_text_color` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_card_bootstrap4card`
--

LOCK TABLES `bootstrap4_card_bootstrap4card` WRITE;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4card` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_card_bootstrap4cardinner`
--

DROP TABLE IF EXISTS `bootstrap4_card_bootstrap4cardinner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_card_bootstrap4cardinner` (
  `cmsplugin_ptr_id` int NOT NULL,
  `inner_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_card_bootstrap4cardinner`
--

LOCK TABLES `bootstrap4_card_bootstrap4cardinner` WRITE;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4cardinner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4cardinner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carousel`
--

DROP TABLE IF EXISTS `bootstrap4_carousel_bootstrap4carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_carousel_bootstrap4carousel` (
  `cmsplugin_ptr_id` int NOT NULL,
  `template` varchar(255) NOT NULL,
  `carousel_interval` int NOT NULL,
  `carousel_controls` tinyint(1) NOT NULL,
  `carousel_indicators` tinyint(1) NOT NULL,
  `carousel_keyboard` tinyint(1) NOT NULL,
  `carousel_pause` varchar(255) NOT NULL,
  `carousel_ride` varchar(255) NOT NULL,
  `carousel_wrap` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `carousel_aspect_ratio` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carousel`
--

LOCK TABLES `bootstrap4_carousel_bootstrap4carousel` WRITE;
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carousel` DISABLE KEYS */;
INSERT INTO `bootstrap4_carousel_bootstrap4carousel` VALUES (8,'default',3000,1,1,1,'hover','carousel',1,'div','{}','21x9'),(1523,'default',3000,1,1,1,'hover','carousel',1,'div','{}','21x9'),(2436,'default',3000,1,1,1,'hover','carousel',1,'div','{}','21x9'),(2469,'default',3000,1,1,1,'hover','carousel',1,'div','{}','21x9');
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carouselslide`
--

DROP TABLE IF EXISTS `bootstrap4_carousel_bootstrap4carouselslide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_carousel_bootstrap4carouselslide` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int NOT NULL,
  `carousel_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `carousel_image_id` int DEFAULT NULL,
  `internal_link_id` int DEFAULT NULL,
  `file_link_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` (`internal_link_id`),
  KEY `bootstrap4_carousel_bootstr_carousel_image_id_c7547e1f` (`carousel_image_id`),
  KEY `bootstrap4_carousel_bootstr_file_link_id_926e466f` (`file_link_id`),
  CONSTRAINT `bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima` FOREIGN KEY (`carousel_image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carouselslide`
--

LOCK TABLES `bootstrap4_carousel_bootstrap4carouselslide` WRITE;
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide` DISABLE KEYS */;
INSERT INTO `bootstrap4_carousel_bootstrap4carouselslide` VALUES ('default','','','','','','','{}',9,'','div',NULL,NULL,NULL),('default','','','','','','','{}',10,'','div',NULL,NULL,NULL),('default','','','','','','','{}',1547,'','div',35,NULL,NULL),('default','','','','','','','{}',1548,'','div',34,NULL,NULL),('default','','','','','','','{}',2437,'','div',NULL,NULL,NULL),('default','','','','','','','{}',2438,'','div',NULL,NULL,NULL),('default','','','','','','','{}',2470,'','div',35,NULL,NULL),('default','','','','','','','{}',2471,'','div',34,NULL,NULL);
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapse`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapse` (
  `cmsplugin_ptr_id` int NOT NULL,
  `siblings` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapse`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapse` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapsecontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` (
  `cmsplugin_ptr_id` int NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_collapse_bootstr_identifier_ed2446e8` (`identifier`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapsecontainer` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapsetrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` (
  `cmsplugin_ptr_id` int NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_collapse_bootstr_identifier_70258b88` (`identifier`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapsetrigger` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4blockquote`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4blockquote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_content_bootstrap4blockquote` (
  `cmsplugin_ptr_id` int NOT NULL,
  `quote_content` longtext NOT NULL,
  `quote_origin` longtext NOT NULL,
  `quote_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4blockquote`
--

LOCK TABLES `bootstrap4_content_bootstrap4blockquote` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4blockquote` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4blockquote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4code`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_content_bootstrap4code` (
  `cmsplugin_ptr_id` int NOT NULL,
  `code_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4code`
--

LOCK TABLES `bootstrap4_content_bootstrap4code` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4code` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4figure`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4figure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_content_bootstrap4figure` (
  `cmsplugin_ptr_id` int NOT NULL,
  `figure_caption` varchar(255) NOT NULL,
  `figure_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4figure`
--

LOCK TABLES `bootstrap4_content_bootstrap4figure` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcolumn`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridcolumn` (
  `cmsplugin_ptr_id` int NOT NULL,
  `column_type` varchar(255) NOT NULL,
  `column_alignment` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `xs_col` int DEFAULT NULL,
  `xs_order` int DEFAULT NULL,
  `xs_ml` tinyint(1) NOT NULL,
  `xs_mr` tinyint(1) NOT NULL,
  `sm_col` int DEFAULT NULL,
  `sm_order` int DEFAULT NULL,
  `sm_ml` tinyint(1) NOT NULL,
  `sm_mr` tinyint(1) NOT NULL,
  `md_col` int DEFAULT NULL,
  `md_order` int DEFAULT NULL,
  `md_ml` tinyint(1) NOT NULL,
  `md_mr` tinyint(1) NOT NULL,
  `lg_col` int DEFAULT NULL,
  `lg_order` int DEFAULT NULL,
  `lg_ml` tinyint(1) NOT NULL,
  `lg_mr` tinyint(1) NOT NULL,
  `xl_col` int DEFAULT NULL,
  `xl_order` int DEFAULT NULL,
  `xl_ml` tinyint(1) NOT NULL,
  `xl_mr` tinyint(1) NOT NULL,
  `lg_offset` int DEFAULT NULL,
  `md_offset` int DEFAULT NULL,
  `sm_offset` int DEFAULT NULL,
  `xl_offset` int DEFAULT NULL,
  `xs_offset` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridcolumn`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridcolumn` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn` DISABLE KEYS */;
INSERT INTO `bootstrap4_grid_bootstrap4gridcolumn` VALUES (2175,'col','','div','{}',NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(2176,'col','','div','{}',NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(2428,'col','','div','{}',NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(2432,'col','','div','{}',NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcontainer`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridcontainer` (
  `cmsplugin_ptr_id` int NOT NULL,
  `container_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridcontainer`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridcontainer` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer` DISABLE KEYS */;
INSERT INTO `bootstrap4_grid_bootstrap4gridcontainer` VALUES (1577,'container-fluid','div','{\"class\": \"bg-primary rounded p-0 \"}'),(1578,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(1581,'container-fluid','div','{\"class\": \"bg-light rounded p-0\", \"style\": \"height:300px;overflow-y:scroll;\"}'),(1612,'container-fluid','div','{\"class\": \"rounded pt-5 pb-3 mb-3\", \"style\": \"background-color:#d4edda; min-height: 367px;\"}'),(1725,'container-fluid','div','{\"class\": \"rounded pt-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(1727,'container-fluid','div','{\"class\": \"bg-light pt-3 mt-2 rounded\", \"style\": \"height:100%;\"}'),(1979,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(1985,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(1988,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(1991,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2040,'container-fluid','div','{\"class\": \"p-0 pl-2 pt-2\", \"style\": \"height: 277px;background-color:white;\"}'),(2041,'container-fluid','div','{\"class\": \"p-0\"}'),(2102,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2167,'container-fluid','div','{\"class\": \"bg-light pt-3 mt-2 rounded\", \"style\": \"height:100%;\"}'),(2171,'container-fluid','div','{\"class\": \"bg-light pt-3 mt-2 rounded\", \"style\": \"height:100%;\"}'),(2173,'container-fluid','div','{\"class\": \"d-flex rounded\", \"style\": \"box-shadow: 2px 1px 8px 1px #888888; background-color:#fafafa;align-items:center;height:250px; margin-bottom:20px;\"}'),(2180,'container-fluid','div','{\"class\": \"p-0\"}'),(2184,'container-fluid','div','{\"class\": \"p-0\"}'),(2387,'container-fluid','div','{\"class\": \"rounded pt-5 pb-3 mb-3\", \"style\": \"background-color:#d4edda; min-height: 367px;\"}'),(2388,'container-fluid','div','{\"class\": \"p-0\"}'),(2389,'container-fluid','div','{\"class\": \"bg-primary rounded p-0 \"}'),(2391,'container-fluid','div','{\"class\": \"p-0\", \"style\": \"height: 277px;overflow-y:scroll; background-color:white;\"}'),(2392,'container-fluid','div','{\"class\": \"bg-light pt-2\", \"style\": \"border-bottom:1px solid black;\"}'),(2394,'container-fluid','div','{\"class\": \"bg-light pt-2\", \"style\": \"border-bottom:1px solid black;\"}'),(2396,'container-fluid','div','{\"class\": \"bg-light pt-2\", \"style\": \"border-bottom:1px solid black;\"}'),(2401,'container-fluid','div','{\"class\": \"rounded pt-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(2403,'container-fluid','div','{\"class\": \"rounded pl-5 py-3 mb-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(2405,'container-fluid','div','{\"class\": \"rounded pt-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(2407,'container-fluid','div','{\"class\": \"rounded pl-5 py-3 mb-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(2409,'container-fluid','div','{\"class\": \"rounded pt-5 pb-3 mb-3\", \"style\": \"background-color:#d4edda; min-height: 367px;\"}'),(2410,'container-fluid','div','{\"class\": \"p-0\"}'),(2411,'container-fluid','div','{\"class\": \"bg-primary rounded p-0 \"}'),(2413,'container-fluid','div','{\"class\": \"p-0\", \"style\": \"height: 277px;overflow-y:scroll; background-color:white;\"}'),(2414,'container-fluid','div','{\"class\": \"bg-light pt-2\", \"style\": \"border-bottom:1px solid black;\"}'),(2416,'container-fluid','div','{\"class\": \"bg-light pt-2\", \"style\": \"border-bottom:1px solid black;\"}'),(2418,'container-fluid','div','{\"class\": \"bg-light pt-2\", \"style\": \"border-bottom:1px solid black;\"}'),(2420,'container-fluid','div','{\"class\": \"rounded pt-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(2422,'container-fluid','div','{\"class\": \"rounded pl-5 py-3 mb-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(2426,'container-fluid','div','{\"class\": \"d-flex rounded\", \"style\": \"box-shadow: 2px 1px 8px 1px #888888; background-color:#fafafa;align-items:center;height:250px; margin-bottom:20px;\"}'),(2429,'container-fluid','div','{\"class\": \"p-0\"}'),(2433,'container-fluid','div','{\"class\": \"p-0\"}'),(2448,'container-fluid','div','{\"class\": \"bg-light rounded p-0\", \"style\": \"height:300px;overflow-y:scroll;\"}'),(2449,'container-fluid','div','{\"class\": \"bg-primary rounded p-0 \"}'),(2451,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2454,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2457,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2460,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2463,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2466,'container-fluid','div','{\"class\": \"bg-light\", \"style\": \"border-bottom:1px solid black;\"}'),(2472,'container-fluid','div','{\"class\": \"rounded pt-5 pb-3 mb-3\", \"style\": \"background-color:#d4edda; min-height: 367px;\"}'),(2473,'container-fluid','div','{\"class\": \"p-0\"}'),(2474,'container-fluid','div','{\"class\": \"p-0 pl-2 pt-2\", \"style\": \"height: 277px;background-color:white;\"}'),(2477,'container-fluid','div','{\"class\": \"rounded pt-3\", \"style\": \"box-shadow: 0px 3px 5px 3px #888888;\"}'),(2479,'container-fluid','div','{\"class\": \"bg-light pt-3 mt-2 rounded\", \"style\": \"height:100%;\"}'),(2481,'container-fluid','div','{\"class\": \"bg-light pt-3 mt-2 rounded\", \"style\": \"height:100%;\"}');
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridrow`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridrow` (
  `cmsplugin_ptr_id` int NOT NULL,
  `vertical_alignment` varchar(255) NOT NULL,
  `horizontal_alignment` varchar(255) NOT NULL,
  `gutters` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridrow`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridrow` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridrow` DISABLE KEYS */;
INSERT INTO `bootstrap4_grid_bootstrap4gridrow` VALUES (2174,'','',0,'div','{}'),(2427,'','',0,'div','{}');
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

DROP TABLE IF EXISTS `bootstrap4_jumbotron_bootstrap4jumbotron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` (
  `cmsplugin_ptr_id` int NOT NULL,
  `fluid` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

LOCK TABLES `bootstrap4_jumbotron_bootstrap4jumbotron` WRITE;
/*!40000 ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_link_bootstrap4link`
--

DROP TABLE IF EXISTS `bootstrap4_link_bootstrap4link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_link_bootstrap4link` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link_context` varchar(255) NOT NULL,
  `link_size` varchar(255) NOT NULL,
  `link_outline` tinyint(1) NOT NULL,
  `link_block` tinyint(1) NOT NULL,
  `internal_link_id` int DEFAULT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `file_link_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` (`internal_link_id`),
  KEY `bootstrap4_link_bootstrap4link_file_link_id_73e3dbff` (`file_link_id`),
  CONSTRAINT `bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_link_bootstrap4link`
--

LOCK TABLES `bootstrap4_link_bootstrap4link` WRITE;
/*!40000 ALTER TABLE `bootstrap4_link_bootstrap4link` DISABLE KEYS */;
INSERT INTO `bootstrap4_link_bootstrap4link` VALUES ('default','- Notice for Presidential Award 2021','','','','','','{}',1492,'link','','',0,0,NULL,'','',NULL),('default','- Letter from Ministry of Education for Presidential Award 2021','','','','','','{}',1493,'link','','',0,0,NULL,'','',NULL),('default','- National Schemes in Manipur','','','','','','{}',1494,'link','','',0,0,NULL,'','',NULL),('default','Read More','','','','','','{}',2425,'link','','',0,0,28,'','',NULL),('default','- Notice for Presidential Award 2021','','','','','','{}',2443,'link','','',0,0,NULL,'','',NULL),('default','- Letter from Ministry of Education for Presidential Award 2021','','','','','','{}',2444,'link','','',0,0,NULL,'','',NULL),('default','- National Schemes in Manipur','','','','','','{}',2445,'link','','',0,0,NULL,'','',NULL),('default','Read More','','','','','','{}',2476,'link','','',0,0,28,'','',NULL);
/*!40000 ALTER TABLE `bootstrap4_link_bootstrap4link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroup`
--

DROP TABLE IF EXISTS `bootstrap4_listgroup_bootstrap4listgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroup` (
  `cmsplugin_ptr_id` int NOT NULL,
  `list_group_flush` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_listgroup_bootstrap4listgroup`
--

LOCK TABLES `bootstrap4_listgroup_bootstrap4listgroup` WRITE;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

DROP TABLE IF EXISTS `bootstrap4_listgroup_bootstrap4listgroupitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` (
  `cmsplugin_ptr_id` int NOT NULL,
  `list_context` varchar(255) NOT NULL,
  `list_state` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

LOCK TABLES `bootstrap4_listgroup_bootstrap4listgroupitem` WRITE;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_media_bootstrap4media`
--

DROP TABLE IF EXISTS `bootstrap4_media_bootstrap4media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_media_bootstrap4media` (
  `cmsplugin_ptr_id` int NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_media_bootstrap4media`
--

LOCK TABLES `bootstrap4_media_bootstrap4media` WRITE;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4media` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_media_bootstrap4mediabody`
--

DROP TABLE IF EXISTS `bootstrap4_media_bootstrap4mediabody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_media_bootstrap4mediabody` (
  `cmsplugin_ptr_id` int NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_media_bootstrap4mediabody`
--

LOCK TABLES `bootstrap4_media_bootstrap4mediabody` WRITE;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4mediabody` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4mediabody` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_picture_bootstrap4picture`
--

DROP TABLE IF EXISTS `bootstrap4_picture_bootstrap4picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_picture_bootstrap4picture` (
  `template` varchar(255) NOT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `caption_text` longtext,
  `attributes` longtext NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_attributes` longtext NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `cmsplugin_ptr_id` int NOT NULL,
  `picture_fluid` tinyint(1) NOT NULL,
  `picture_rounded` tinyint(1) NOT NULL,
  `picture_thumbnail` tinyint(1) NOT NULL,
  `link_page_id` int DEFAULT NULL,
  `picture_id` int DEFAULT NULL,
  `thumbnail_options_id` int DEFAULT NULL,
  `use_responsive_image` varchar(7) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` (`thumbnail_options_id`),
  KEY `bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21` (`link_page_id`),
  KEY `bootstrap4_picture_bootstrap4picture_picture_id_f26d968d` (`picture_id`),
  CONSTRAINT `bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`),
  CONSTRAINT `bootstrap4_picture_bootstrap4picture_chk_1` CHECK ((`width` >= 0)),
  CONSTRAINT `bootstrap4_picture_bootstrap4picture_chk_2` CHECK ((`height` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_picture_bootstrap4picture`
--

LOCK TABLES `bootstrap4_picture_bootstrap4picture` WRITE;
/*!40000 ALTER TABLE `bootstrap4_picture_bootstrap4picture` DISABLE KEYS */;
INSERT INTO `bootstrap4_picture_bootstrap4picture` VALUES ('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,2179,1,0,0,NULL,41,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,2186,1,0,0,NULL,41,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,2431,1,0,0,NULL,41,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,2435,1,0,0,NULL,41,NULL,'inherit');
/*!40000 ALTER TABLE `bootstrap4_picture_bootstrap4picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tab`
--

DROP TABLE IF EXISTS `bootstrap4_tabs_bootstrap4tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_tabs_bootstrap4tab` (
  `cmsplugin_ptr_id` int NOT NULL,
  `template` varchar(255) NOT NULL,
  `tab_type` varchar(255) NOT NULL,
  `tab_alignment` varchar(255) NOT NULL,
  `tab_index` int unsigned DEFAULT NULL,
  `tab_effect` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_tabs_bootstrap4tab_chk_1` CHECK ((`tab_index` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_tabs_bootstrap4tab`
--

LOCK TABLES `bootstrap4_tabs_bootstrap4tab` WRITE;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tabitem`
--

DROP TABLE IF EXISTS `bootstrap4_tabs_bootstrap4tabitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_tabs_bootstrap4tabitem` (
  `cmsplugin_ptr_id` int NOT NULL,
  `tab_title` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_tabs_bootstrap4tabitem`
--

LOCK TABLES `bootstrap4_tabs_bootstrap4tabitem` WRITE;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_utilities_bootstrap4spacing`
--

DROP TABLE IF EXISTS `bootstrap4_utilities_bootstrap4spacing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap4_utilities_bootstrap4spacing` (
  `cmsplugin_ptr_id` int NOT NULL,
  `space_property` varchar(255) NOT NULL,
  `space_sides` varchar(255) NOT NULL,
  `space_size` varchar(255) NOT NULL,
  `space_device` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_utilities_bootstrap4spacing`
--

LOCK TABLES `bootstrap4_utilities_bootstrap4spacing` WRITE;
/*!40000 ALTER TABLE `bootstrap4_utilities_bootstrap4spacing` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_utilities_bootstrap4spacing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_aliaspluginmodel`
--

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int NOT NULL,
  `plugin_id` int DEFAULT NULL,
  `alias_placeholder_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_aliaspluginmodel`
--

LOCK TABLES `cms_aliaspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` smallint unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `placeholder_id` int DEFAULT NULL,
  `depth` int unsigned NOT NULL,
  `numchild` int unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`),
  KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`),
  CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_cmsplugin_chk_1` CHECK ((`position` >= 0)),
  CONSTRAINT `cms_cmsplugin_chk_6` CHECK ((`depth` >= 0)),
  CONSTRAINT `cms_cmsplugin_chk_7` CHECK ((`numchild` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2483 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (8,0,'en','Bootstrap4CarouselPlugin','2021-06-16 08:36:03.244000','2021-06-16 08:39:52.902000',NULL,9,1,2,'0007'),(9,0,'en','Bootstrap4CarouselSlidePlugin','2021-06-16 08:36:18.937000','2021-06-16 08:36:18.946000',8,9,2,0,'00070001'),(10,1,'en','Bootstrap4CarouselSlidePlugin','2021-06-16 08:36:48.408000','2021-06-16 08:36:48.416000',8,9,2,0,'00070002'),(185,0,'en','Bootstrap4AlertsPlugin','2021-06-21 05:52:03.353000','2021-11-10 03:48:41.601410',NULL,20,1,2,'001J'),(714,0,'en','TextPlugin','2021-06-29 09:28:07.639000','2021-10-07 20:36:52.877000',185,20,2,0,'001J0003'),(887,0,'en','TextPlugin','2021-06-29 11:27:31.737000','2021-06-29 11:27:31.738000',NULL,2,1,0,'002N'),(1176,0,'en','TextPlugin','2021-06-30 10:52:21.300000','2021-06-30 11:03:21.231000',NULL,38,1,0,'003G'),(1178,0,'en','TextPlugin','2021-06-30 10:52:21.300000','2021-06-30 11:03:47.410000',NULL,42,1,0,'003H'),(1179,0,'en','TextPlugin','2021-06-30 11:04:56.317000','2021-06-30 11:05:52.953000',NULL,46,1,0,'003I'),(1181,0,'en','TextPlugin','2021-06-30 11:04:56.317000','2021-06-30 11:06:37.158000',NULL,50,1,0,'003J'),(1292,0,'en','Bootstrap4AlertsPlugin','2021-09-30 06:41:26.622000','2021-10-01 05:22:32.494000',NULL,19,1,2,'004B'),(1293,0,'en','TextPlugin','2021-09-30 06:41:39.192000','2021-09-30 06:41:58.423000',1292,19,2,0,'004B0001'),(1294,1,'en','Bootstrap4AlertsPlugin','2021-09-30 06:42:13.327000','2021-09-30 06:45:08.823000',1292,19,2,1,'004B0002'),(1491,0,'en','TextPlugin','2021-10-01 05:39:10.351000','2021-10-01 05:42:45.414000',1294,19,3,3,'004B00020001'),(1492,0,'en','Bootstrap4LinkPlugin','2021-10-01 05:41:40.644000','2021-10-01 05:41:40.652000',1491,19,4,0,'004B000200010001'),(1493,1,'en','Bootstrap4LinkPlugin','2021-10-01 05:42:11.515000','2021-10-01 05:42:11.523000',1491,19,4,0,'004B000200010002'),(1494,2,'en','Bootstrap4LinkPlugin','2021-10-01 05:42:38.104000','2021-10-01 05:42:38.112000',1491,19,4,0,'004B000200010003'),(1523,0,'en','Bootstrap4CarouselPlugin','2021-10-07 18:52:49.488000','2021-10-07 19:20:52.981000',NULL,36,1,2,'004Y'),(1547,0,'en','Bootstrap4CarouselSlidePlugin','2021-10-07 19:08:42.066000','2021-11-16 11:31:14.516272',1523,36,2,0,'004Y0001'),(1548,1,'en','Bootstrap4CarouselSlidePlugin','2021-10-07 19:09:20.301000','2021-10-07 19:09:20.314000',1523,36,2,0,'004Y0002'),(1575,0,'en','TextPlugin','2021-10-07 19:40:04.044000','2021-10-07 19:47:42.734000',1577,20,4,0,'001J000600010001'),(1577,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:43:30.373000','2021-11-10 03:50:03.134203',1581,20,3,7,'001J00060001'),(1578,5,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-10 03:50:16.867561',1577,20,4,1,'001J000600010003'),(1579,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-10 03:55:43.343726',1578,20,5,1,'001J0006000100030001'),(1580,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-10 03:55:41.090567',1579,20,6,0,'001J00060001000300010001'),(1581,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:54:02.775000','2021-10-07 19:54:41.446000',185,20,2,1,'001J0006'),(1612,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 20:27:37.398000','2021-11-10 04:01:35.356697',NULL,80,1,1,'005C'),(1725,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:21:30.107000','2021-10-08 09:07:37.672000',NULL,85,1,1,'005T'),(1726,0,'en','TextPlugin','2021-06-29 11:29:18.883000','2021-11-16 11:45:35.936408',1725,85,2,0,'005T0001'),(1727,0,'en','Bootstrap4GridContainerPlugin','2021-10-08 09:15:29.744000','2021-10-08 09:55:10.182000',NULL,86,1,1,'005U'),(1728,0,'en','TextPlugin','2021-10-08 09:15:39.351000','2021-10-08 09:18:22.368000',1727,86,2,0,'005U0001'),(1979,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-10 03:50:30.437321',1577,20,4,1,'001J000600010004'),(1980,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-10 03:53:02.203572',1979,20,5,1,'001J0006000100040001'),(1981,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-10 03:52:58.672330',1980,20,6,0,'001J00060001000400010001'),(1985,2,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-10 03:53:18.853480',1577,20,4,1,'001J000600010005'),(1986,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-10 03:53:52.317351',1985,20,5,1,'001J0006000100050001'),(1987,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-10 03:53:49.473717',1986,20,6,0,'001J00060001000500010001'),(1988,3,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-10 03:54:08.469197',1577,20,4,1,'001J000600010006'),(1989,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-10 03:54:31.498389',1988,20,5,1,'001J0006000100060001'),(1990,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-10 03:54:25.890541',1989,20,6,0,'001J00060001000600010001'),(1991,4,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-10 03:54:47.763187',1577,20,4,1,'001J000600010007'),(1992,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-10 03:55:18.548899',1991,20,5,1,'001J0006000100070001'),(1993,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-10 03:55:14.472221',1992,20,6,0,'001J00060001000700010001'),(2040,0,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:17:35.646987','2021-11-16 11:40:48.426631',2041,80,3,1,'005C00020002'),(2041,0,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:20:26.831305','2021-11-16 11:34:24.051112',1612,80,2,1,'005C0002'),(2102,6,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-10 04:23:54.235784',1577,20,4,1,'001J000600010008'),(2103,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-10 04:23:54.279232',2102,20,5,1,'001J0006000100080001'),(2104,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-10 04:23:54.256263',2103,20,6,0,'001J00060001000800010001'),(2167,0,'en','Bootstrap4GridContainerPlugin','2021-10-08 09:15:29.744000','2021-11-16 11:03:31.481026',NULL,101,1,1,'006Q'),(2168,0,'en','TextPlugin','2021-10-08 09:15:39.351000','2021-11-16 11:48:10.125606',2167,101,2,0,'006Q0001'),(2171,0,'en','Bootstrap4GridContainerPlugin','2021-10-08 09:15:29.744000','2021-11-16 11:05:23.866143',NULL,117,1,1,'006S'),(2172,0,'en','TextPlugin','2021-10-08 09:15:39.351000','2021-11-16 11:05:23.883187',2171,117,2,0,'006S0001'),(2173,1,'en','Bootstrap4GridContainerPlugin','2021-11-16 11:07:12.313787','2021-11-16 11:25:57.357110',NULL,8,1,1,'006T'),(2174,0,'en','Bootstrap4GridRowPlugin','2021-11-16 11:07:24.050656','2021-11-16 11:07:24.054721',2173,8,2,2,'006T0001'),(2175,0,'en','Bootstrap4GridColumnPlugin','2021-11-16 11:07:24.055787','2021-11-16 11:13:32.922122',2174,8,3,1,'006T00010001'),(2176,1,'en','Bootstrap4GridColumnPlugin','2021-11-16 11:07:24.058168','2021-11-16 11:07:24.060691',2174,8,3,1,'006T00010002'),(2177,0,'en','TextPlugin','2021-11-16 11:08:16.542916','2021-11-16 11:29:44.051094',2180,8,5,1,'006T0001000100030001'),(2179,1,'en','Bootstrap4PicturePlugin','2021-11-16 11:17:56.507437','2021-11-16 11:17:56.515814',2177,8,6,0,'006T00010001000300010002'),(2180,1,'en','Bootstrap4GridContainerPlugin','2021-11-16 11:19:11.490032','2021-11-16 11:23:52.601389',2175,8,4,1,'006T000100010003'),(2184,0,'en','Bootstrap4GridContainerPlugin','2021-11-16 11:19:11.490032','2021-11-16 11:24:07.032534',2176,8,4,1,'006T000100020001'),(2185,0,'en','TextPlugin','2021-11-16 11:08:16.542916','2021-11-16 11:30:19.633507',2184,8,5,1,'006T0001000200010001'),(2186,1,'en','Bootstrap4PicturePlugin','2021-11-16 11:17:56.507437','2021-11-16 11:23:09.064226',2185,8,6,0,'006T00010002000100010001'),(2387,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 20:27:37.398000','2021-11-16 11:32:48.873112',NULL,118,1,1,'0075'),(2388,0,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:20:26.831305','2021-11-16 11:32:48.882317',2387,118,2,2,'00750001'),(2389,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:43:30.373000','2021-11-16 11:32:48.891091',2388,118,3,1,'007500010001'),(2390,0,'en','TextPlugin','2021-10-07 19:40:04.044000','2021-11-16 11:32:48.986607',2389,118,4,0,'0075000100010001'),(2391,1,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:17:35.646987','2021-11-16 11:32:48.912521',2388,118,3,3,'007500010002'),(2392,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:32:48.921519',2391,118,4,1,'0075000100020001'),(2393,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:32:48.995104',2392,118,5,0,'00750001000200010001'),(2394,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:32:48.943296',2391,118,4,1,'0075000100020002'),(2395,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:32:49.002887',2394,118,5,0,'00750001000200020001'),(2396,2,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:32:48.964318',2391,118,4,1,'0075000100020003'),(2397,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:32:49.010774',2396,118,5,0,'00750001000200030001'),(2400,0,'en','PlaceholderPlugin','2021-11-16 11:33:09.620111','2021-11-16 11:33:09.621542',NULL,1,1,0,'0076'),(2401,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:21:30.107000','2021-11-16 11:33:09.630877',NULL,119,1,1,'0077'),(2402,0,'en','TextPlugin','2021-06-29 11:29:18.883000','2021-11-16 11:33:09.672024',2401,119,2,0,'00770001'),(2403,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 20:27:37.398000','2021-11-16 11:33:09.651619',NULL,119,1,1,'0078'),(2404,0,'en','TextPlugin','2021-10-07 20:27:50.401000','2021-11-16 11:33:09.683209',2403,119,2,0,'00780001'),(2405,2,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:21:30.107000','2021-11-16 11:33:17.778523',NULL,118,1,1,'0079'),(2406,0,'en','TextPlugin','2021-06-29 11:29:18.883000','2021-11-16 11:33:17.816833',2405,118,2,0,'00790001'),(2407,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 20:27:37.398000','2021-11-16 11:33:17.798383',NULL,118,1,1,'007A'),(2408,0,'en','TextPlugin','2021-10-07 20:27:50.401000','2021-11-16 11:33:17.827104',2407,118,2,0,'007A0001'),(2409,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 20:27:37.398000','2021-11-16 11:33:33.854273',NULL,120,1,1,'007B'),(2410,0,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:20:26.831305','2021-11-16 11:33:33.856726',2409,120,2,2,'007B0001'),(2411,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:43:30.373000','2021-11-16 11:33:33.859164',2410,120,3,1,'007B00010001'),(2412,0,'en','TextPlugin','2021-10-07 19:40:04.044000','2021-11-16 11:33:33.914039',2411,120,4,0,'007B000100010001'),(2413,1,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:17:35.646987','2021-11-16 11:33:33.867631',2410,120,3,3,'007B00010002'),(2414,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:33:33.870343',2413,120,4,1,'007B000100020001'),(2415,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:33:33.919613',2414,120,5,0,'007B0001000200010001'),(2416,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:33:33.878165',2413,120,4,1,'007B000100020002'),(2417,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:33:33.925102',2416,120,5,0,'007B0001000200020001'),(2418,2,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:33:33.886223',2413,120,4,1,'007B000100020003'),(2419,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:33:33.930431',2418,120,5,0,'007B0001000200030001'),(2420,2,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:21:30.107000','2021-11-16 11:33:33.893088',NULL,120,1,1,'007C'),(2421,0,'en','TextPlugin','2021-06-29 11:29:18.883000','2021-11-16 11:33:33.935737',2420,120,2,0,'007C0001'),(2422,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 20:27:37.398000','2021-11-16 11:33:33.904223',NULL,120,1,1,'007D'),(2423,0,'en','TextPlugin','2021-10-07 20:27:50.401000','2021-11-16 11:33:33.944936',2422,120,2,0,'007D0001'),(2424,0,'en','TextPlugin','2021-11-16 11:36:52.591575','2021-11-16 11:46:44.267079',2040,80,4,1,'005C000200020001'),(2425,0,'en','Bootstrap4LinkPlugin','2021-11-16 11:39:02.657562','2021-11-16 11:39:02.664383',2424,80,5,0,'005C0002000200010001'),(2426,1,'en','Bootstrap4GridContainerPlugin','2021-11-16 11:07:12.313787','2021-11-16 11:46:52.417208',NULL,10,1,1,'007E'),(2427,0,'en','Bootstrap4GridRowPlugin','2021-11-16 11:07:24.050656','2021-11-16 11:46:52.420216',2426,10,2,2,'007E0001'),(2428,0,'en','Bootstrap4GridColumnPlugin','2021-11-16 11:07:24.055787','2021-11-16 11:46:52.424431',2427,10,3,1,'007E00010001'),(2429,1,'en','Bootstrap4GridContainerPlugin','2021-11-16 11:19:11.490032','2021-11-16 11:46:52.427237',2428,10,4,1,'007E000100010001'),(2430,0,'en','TextPlugin','2021-11-16 11:08:16.542916','2021-11-16 11:46:52.457558',2429,10,5,1,'007E0001000100010001'),(2431,1,'en','Bootstrap4PicturePlugin','2021-11-16 11:17:56.507437','2021-11-16 11:46:52.435459',2430,10,6,0,'007E00010001000100010001'),(2432,1,'en','Bootstrap4GridColumnPlugin','2021-11-16 11:07:24.058168','2021-11-16 11:46:52.441147',2427,10,3,1,'007E00010002'),(2433,0,'en','Bootstrap4GridContainerPlugin','2021-11-16 11:19:11.490032','2021-11-16 11:46:52.443605',2432,10,4,1,'007E000100020001'),(2434,0,'en','TextPlugin','2021-11-16 11:08:16.542916','2021-11-16 11:46:52.465375',2433,10,5,1,'007E0001000200010001'),(2435,1,'en','Bootstrap4PicturePlugin','2021-11-16 11:17:56.507437','2021-11-16 11:46:52.451445',2434,10,6,0,'007E00010002000100010001'),(2436,0,'en','Bootstrap4CarouselPlugin','2021-06-16 08:36:03.244000','2021-11-16 11:46:52.476391',NULL,11,1,2,'007F'),(2437,0,'en','Bootstrap4CarouselSlidePlugin','2021-06-16 08:36:18.937000','2021-11-16 11:46:52.478758',2436,11,2,0,'007F0001'),(2438,1,'en','Bootstrap4CarouselSlidePlugin','2021-06-16 08:36:48.408000','2021-11-16 11:46:52.482703',2436,11,2,0,'007F0002'),(2439,0,'en','Bootstrap4AlertsPlugin','2021-09-30 06:41:26.622000','2021-11-16 11:46:52.491955',NULL,21,1,2,'007G'),(2440,0,'en','TextPlugin','2021-09-30 06:41:39.192000','2021-11-16 11:46:52.519317',2439,21,2,0,'007G0001'),(2441,1,'en','Bootstrap4AlertsPlugin','2021-09-30 06:42:13.327000','2021-11-16 11:46:52.500016',2439,21,2,1,'007G0002'),(2442,0,'en','TextPlugin','2021-10-01 05:39:10.351000','2021-11-16 11:46:52.528855',2441,21,3,3,'007G00020001'),(2443,0,'en','Bootstrap4LinkPlugin','2021-10-01 05:41:40.644000','2021-11-16 11:46:52.508742',2442,21,4,0,'007G000200010001'),(2444,1,'en','Bootstrap4LinkPlugin','2021-10-01 05:42:11.515000','2021-11-16 11:46:52.512715',2442,21,4,0,'007G000200010002'),(2445,2,'en','Bootstrap4LinkPlugin','2021-10-01 05:42:38.104000','2021-11-16 11:46:52.516686',2442,21,4,0,'007G000200010003'),(2446,0,'en','Bootstrap4AlertsPlugin','2021-06-21 05:52:03.353000','2021-11-16 11:46:52.544818',NULL,22,1,2,'007H'),(2447,0,'en','TextPlugin','2021-06-29 09:28:07.639000','2021-11-16 11:46:52.634976',2446,22,2,0,'007H0001'),(2448,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:54:02.775000','2021-11-16 11:46:52.552652',2446,22,2,1,'007H0002'),(2449,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:43:30.373000','2021-11-16 11:46:52.555040',2448,22,3,7,'007H00020001'),(2450,0,'en','TextPlugin','2021-10-07 19:40:04.044000','2021-11-16 11:46:52.640525',2449,22,4,0,'007H000200010001'),(2451,5,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:46:52.563397',2449,22,4,1,'007H000200010002'),(2452,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:46:52.648745',2451,22,5,1,'007H0002000100020001'),(2453,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-16 11:46:52.570242',2452,22,6,0,'007H00020001000200010001'),(2454,1,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:46:52.575486',2449,22,4,1,'007H000200010003'),(2455,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:46:52.657085',2454,22,5,1,'007H0002000100030001'),(2456,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-16 11:46:52.582213',2455,22,6,0,'007H00020001000300010001'),(2457,2,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:46:52.587393',2449,22,4,1,'007H000200010004'),(2458,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:46:52.665805',2457,22,5,1,'007H0002000100040001'),(2459,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-16 11:46:52.594452',2458,22,6,0,'007H00020001000400010001'),(2460,3,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:46:52.599578',2449,22,4,1,'007H000200010005'),(2461,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:46:52.674247',2460,22,5,1,'007H0002000100050001'),(2462,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-16 11:46:52.606454',2461,22,6,0,'007H00020001000500010001'),(2463,4,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:46:52.611624',2449,22,4,1,'007H000200010006'),(2464,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:46:52.682563',2463,22,5,1,'007H0002000100060001'),(2465,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-16 11:46:52.618410',2464,22,6,0,'007H00020001000600010001'),(2466,6,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:48:03.921000','2021-11-16 11:46:52.623605',2449,22,4,1,'007H000200010007'),(2467,0,'en','TextPlugin','2021-10-07 19:48:46.999000','2021-11-16 11:46:52.691702',2466,22,5,1,'007H0002000100070001'),(2468,0,'en','FilePlugin','2021-10-07 19:50:30.825000','2021-11-16 11:46:52.630587',2467,22,6,0,'007H00020001000700010001'),(2469,0,'en','Bootstrap4CarouselPlugin','2021-10-07 18:52:49.488000','2021-11-16 11:46:52.702543',NULL,37,1,2,'007I'),(2470,0,'en','Bootstrap4CarouselSlidePlugin','2021-10-07 19:08:42.066000','2021-11-16 11:46:52.705583',2469,37,2,0,'007I0001'),(2471,1,'en','Bootstrap4CarouselSlidePlugin','2021-10-07 19:09:20.301000','2021-11-16 11:46:52.709465',2469,37,2,0,'007I0002'),(2472,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 20:27:37.398000','2021-11-16 11:46:52.720159',NULL,81,1,1,'007J'),(2473,0,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:20:26.831305','2021-11-16 11:46:52.722858',2472,81,2,1,'007J0001'),(2474,0,'en','Bootstrap4GridContainerPlugin','2021-11-10 04:17:35.646987','2021-11-16 11:46:52.725342',2473,81,3,1,'007J00010001'),(2475,0,'en','TextPlugin','2021-11-16 11:36:52.591575','2021-11-16 11:46:52.737373',2474,81,4,1,'007J000100010001'),(2476,0,'en','Bootstrap4LinkPlugin','2021-11-16 11:39:02.657562','2021-11-16 11:46:52.733158',2475,81,5,0,'007J0001000100010001'),(2477,0,'en','Bootstrap4GridContainerPlugin','2021-10-07 19:21:30.107000','2021-11-16 11:46:52.748309',NULL,84,1,1,'007K'),(2478,0,'en','TextPlugin','2021-06-29 11:29:18.883000','2021-11-16 11:46:52.757761',2477,84,2,0,'007K0001'),(2479,0,'en','Bootstrap4GridContainerPlugin','2021-10-08 09:15:29.744000','2021-11-16 11:46:52.768593',NULL,83,1,1,'007L'),(2480,0,'en','TextPlugin','2021-10-08 09:15:39.351000','2021-11-16 11:46:52.776231',2479,83,2,0,'007L0001'),(2481,0,'en','Bootstrap4GridContainerPlugin','2021-10-08 09:15:29.744000','2021-11-16 11:48:13.585991',NULL,108,1,1,'007M'),(2482,0,'en','TextPlugin','2021-10-08 09:15:39.351000','2021-11-16 11:48:13.594225',2481,108,2,0,'007M0001');
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`),
  CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int NOT NULL,
  `publisher_public_id` int DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  KEY `cms_page_is_home_edadca07` (`is_home`),
  KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`),
  CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'admin','admin','2021-06-16 06:26:28.962000','2021-06-29 06:21:44.774000','2021-06-16 06:26:28.976000',NULL,1,0,NULL,NULL,'normal_page.html',0,NULL,1,'',NULL,1,'en',0,2,0,1),(2,'admin','admin','2021-06-16 06:26:28.976000','2021-11-16 11:46:52.191493','2021-06-16 06:26:28.976000',NULL,1,0,NULL,NULL,'normal_page.html',0,NULL,1,'',NULL,0,'en',0,1,0,1),(15,'admin','admin','2021-06-30 10:51:26.261000','2021-06-30 10:51:50.260000','2021-06-30 10:53:35.976000',NULL,0,0,NULL,NULL,'sample_page.html',0,NULL,0,'',NULL,1,'en',0,16,0,8),(16,'admin','admin','2021-06-30 10:53:35.976000','2021-06-30 11:03:47.312000','2021-06-30 10:53:35.976000',NULL,0,0,NULL,NULL,'sample_page.html',0,NULL,0,'',NULL,0,'en',0,15,0,8),(17,'admin','admin','2021-06-30 11:04:34.024000','2021-06-30 11:06:32.551000','2021-06-30 11:05:57.438000',NULL,0,0,NULL,NULL,'sample_page.html',0,NULL,0,'',NULL,1,'en',0,18,0,9),(18,'admin','admin','2021-06-30 11:05:57.438000','2021-06-30 11:06:37.056000','2021-06-30 11:05:57.438000',NULL,0,0,NULL,NULL,'sample_page.html',0,NULL,0,'',NULL,0,'en',0,17,0,9),(24,'admin','admin','2021-09-30 07:42:42.147000','2021-09-30 07:43:02.675000','2021-09-30 07:43:09.722000',NULL,0,0,NULL,NULL,'sitemap.html',0,NULL,0,'',NULL,1,'en',0,25,0,13),(25,'admin','admin','2021-09-30 07:43:09.723000','2021-09-30 07:43:09.723000','2021-09-30 07:43:09.722000',NULL,0,0,NULL,NULL,'sitemap.html',0,NULL,0,'',NULL,0,'en',0,24,0,13),(26,'admin','admin','2021-11-16 10:58:45.216824','2021-11-16 11:05:03.309817','2021-11-16 10:58:54.566854',NULL,1,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,1,'en',0,27,0,14),(27,'admin','admin','2021-11-16 10:58:54.567136','2021-11-16 11:00:43.580069','2021-11-16 10:58:54.566854',NULL,1,0,NULL,NULL,'normal_page.html',0,NULL,0,NULL,NULL,0,'en',0,26,0,14),(28,'admin','admin','2021-11-16 11:00:02.365076','2021-11-16 11:03:17.168921','2021-11-16 11:00:09.703790',NULL,1,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,1,'en',0,29,0,15),(29,'admin','admin','2021-11-16 11:00:09.704079','2021-11-16 11:48:13.515000','2021-11-16 11:00:09.703790',NULL,1,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,0,'en',0,28,0,15),(30,'admin','admin','2021-11-16 11:00:32.841959','2021-11-16 11:04:49.585022','2021-11-16 11:00:39.454460',NULL,1,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,1,'en',0,31,0,16),(31,'admin','admin','2021-11-16 11:00:39.454740','2021-11-16 11:04:52.409591','2021-11-16 11:00:39.454460',NULL,1,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,0,'en',0,30,0,16),(32,'admin','admin','2021-11-16 11:00:58.581604','2021-11-16 11:05:18.396071','2021-11-16 11:01:10.718543',NULL,1,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,1,'en',0,33,0,17),(33,'admin','admin','2021-11-16 11:01:10.718836','2021-11-16 11:01:10.718868','2021-11-16 11:01:10.718543',NULL,1,0,NULL,NULL,'sitemap.html',0,NULL,0,NULL,NULL,0,'en',0,32,0,17),(34,'admin','admin','2021-11-16 11:32:04.974789','2021-11-16 11:32:42.179292','2021-11-16 11:33:33.834235',NULL,0,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,1,'en',0,35,0,18),(35,'admin','admin','2021-11-16 11:33:33.834514','2021-11-16 11:33:33.834545','2021-11-16 11:33:33.834235',NULL,0,0,NULL,NULL,'sample_page.html',0,NULL,0,NULL,NULL,0,'en',0,34,0,18);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `placeholder_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`),
  CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,2),(3,1,8),(4,1,9),(7,1,19),(8,1,20),(2,1,36),(5,1,78),(6,1,80),(9,1,85),(10,1,86),(11,2,3),(13,2,10),(14,2,11),(20,2,21),(21,2,22),(12,2,37),(15,2,79),(16,2,81),(17,2,82),(18,2,83),(19,2,84),(24,15,38),(25,15,39),(22,15,40),(23,15,41),(26,16,42),(27,16,43),(28,16,44),(29,16,45),(32,17,46),(33,17,47),(30,17,48),(31,17,49),(34,18,50),(35,18,51),(36,18,52),(37,18,53),(38,26,87),(39,26,88),(40,26,89),(41,26,90),(42,26,91),(43,26,92),(44,26,93),(45,27,94),(46,27,95),(47,27,96),(48,27,97),(49,27,98),(50,27,99),(51,27,100),(52,28,101),(53,28,102),(54,28,103),(55,28,104),(56,28,105),(57,28,106),(58,28,107),(59,29,108),(60,29,109),(61,29,110),(62,29,111),(63,29,112),(64,29,113),(65,29,114),(66,30,115),(67,31,116),(68,32,117),(69,34,118),(70,35,120);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pagepermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int NOT NULL,
  `group_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int NOT NULL,
  `created_by_id` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int NOT NULL,
  `created_by_id` int NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_placeholder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_slot_0bc04d21` (`slot`),
  CONSTRAINT `cms_placeholder_chk_1` CHECK ((`default_width` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'clipboard',NULL),(2,'content',NULL),(3,'content',NULL),(8,'cm_photo',NULL),(9,'carousal',NULL),(10,'cm_photo',NULL),(11,'carousal',NULL),(19,'content_section',NULL),(20,'news',NULL),(21,'content_section',NULL),(22,'news',NULL),(36,'carausal',NULL),(37,'carausal',NULL),(38,'content',NULL),(39,'carausal',NULL),(40,'content_section',NULL),(41,'news',NULL),(42,'content',NULL),(43,'carausal',NULL),(44,'content_section',NULL),(45,'news',NULL),(46,'content',NULL),(47,'carausal',NULL),(48,'content_section',NULL),(49,'news',NULL),(50,'content',NULL),(51,'carausal',NULL),(52,'content_section',NULL),(53,'news',NULL),(78,'Notification',NULL),(79,'Notification',NULL),(80,'Notes',NULL),(81,'Notes',NULL),(82,'Contact',NULL),(83,'Contact',NULL),(84,'MainContent',NULL),(85,'MainContent',NULL),(86,'Contact',NULL),(87,'content',NULL),(88,'carausal',NULL),(89,'cm_photo',NULL),(90,'news',NULL),(91,'Notes',NULL),(92,'MainContent',NULL),(93,'Contact',NULL),(94,'content',NULL),(95,'carausal',NULL),(96,'cm_photo',NULL),(97,'news',NULL),(98,'Notes',NULL),(99,'MainContent',NULL),(100,'Contact',NULL),(101,'content',NULL),(102,'carausal',NULL),(103,'cm_photo',NULL),(104,'news',NULL),(105,'Notes',NULL),(106,'MainContent',NULL),(107,'Contact',NULL),(108,'content',NULL),(109,'carausal',NULL),(110,'cm_photo',NULL),(111,'news',NULL),(112,'Notes',NULL),(113,'MainContent',NULL),(114,'Contact',NULL),(115,'content',NULL),(116,'content',NULL),(117,'content',NULL),(118,'content',NULL),(119,'clipboard',NULL),(120,'content',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholderreference`
--

DROP TABLE IF EXISTS `cms_placeholderreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`),
  CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholderreference`
--

LOCK TABLES `cms_placeholderreference` WRITE;
/*!40000 ALTER TABLE `cms_placeholderreference` DISABLE KEYS */;
INSERT INTO `cms_placeholderreference` VALUES (2400,'Maincontent',119);
/*!40000 ALTER TABLE `cms_placeholderreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_staticplaceholder`
--

DROP TABLE IF EXISTS `cms_staticplaceholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_staticplaceholder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int DEFAULT NULL,
  `public_id` int DEFAULT NULL,
  `site_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`),
  CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_staticplaceholder`
--

LOCK TABLES `cms_staticplaceholder` WRITE;
/*!40000 ALTER TABLE `cms_staticplaceholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_staticplaceholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_title` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint NOT NULL,
  `page_id` int NOT NULL,
  `publisher_public_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  KEY `cms_title_language_50a0dfa1` (`language`),
  KEY `cms_title_slug_4947d146` (`slug`),
  KEY `cms_title_path_c484314c` (`path`),
  KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','Home','','','Minister of Art & Culture\r\n\r\nShri N. Biren Singh Honourable Chief Minister, Manipur. Minister Incharge Art & Culture Manipur.\r\n\r\nIntroduction\r\n\r\nThe Department of Art & Culture, Manipur started functioning as a full-fledged Department in 1990 after bifurcation of the erstwhile Department of Social Welfar','home','',0,NULL,'2021-06-16 06:26:28.964000',1,1,0,1,2),(2,'en','Home','','','Minister of Art & Culture\r\n\r\nShri N. Biren Singh Honourable Chief Minister, Manipur. Minister Incharge Art & Culture Manipur.\r\n\r\nIntroduction\r\n\r\nThe Department of Art & Culture, Manipur started functioning as a full-fledged Department in 1990 after bifurcation of the erstwhile Department of Social Welfar','home','',0,NULL,'2021-06-16 06:26:28.964000',1,0,0,2,1),(15,'en','otherlink','','','','otherlink','otherlink',0,NULL,'2021-06-30 10:51:26.262000',1,1,0,15,16),(16,'en','otherlink','','','','otherlink','otherlink',0,NULL,'2021-06-30 10:51:26.262000',1,0,0,16,15),(17,'en','screen reader','','','','screen-reader','screen-reader',0,NULL,'2021-06-30 11:04:34.025000',1,1,0,17,18),(18,'en','screen reader','','','','screen-reader','screen-reader',0,NULL,'2021-06-30 11:04:34.025000',1,0,0,18,17),(24,'en','sitemap','','','','sitemap','sitemap',0,NULL,'2021-09-30 07:42:42.150000',1,1,0,24,25),(25,'en','sitemap','','','','sitemap','sitemap',0,NULL,'2021-09-30 07:42:42.150000',1,0,0,25,24),(26,'en','ADCs','','','','adcs','adcs',0,NULL,'2021-11-16 10:58:45.217762',1,1,1,26,27),(27,'en','ADCs','','','','adcs','adcs',0,NULL,'2021-11-16 10:58:45.217762',1,0,0,27,26),(28,'en','About Us','','','','about-us','about-us',0,NULL,'2021-11-16 11:00:02.365984',1,1,0,28,29),(29,'en','About Us','','','','about-us','about-us',0,NULL,'2021-11-16 11:00:02.365984',1,0,0,29,28),(30,'en','Schemes','','','','schemes','schemes',0,NULL,'2021-11-16 11:00:32.842885',1,1,0,30,31),(31,'en','Schemes','','','','schemes','schemes',0,NULL,'2021-11-16 11:00:32.842885',1,0,0,31,30),(32,'en','Contact Us','','','','contact-us','contact-us',0,NULL,'2021-11-16 11:00:58.582469',1,1,1,32,33),(33,'en','Contact Us','','','','contact-us','contact-us',0,NULL,'2021-11-16 11:00:58.582469',1,0,0,33,32),(34,'en','backup','','','','backup','backup',0,NULL,'2021-11-16 11:32:04.975679',1,1,0,34,35),(35,'en','backup','','','','backup','backup',0,NULL,'2021-11-16 11:32:04.975679',1,0,0,35,34);
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_treenode`
--

DROP TABLE IF EXISTS `cms_treenode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_treenode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int unsigned NOT NULL,
  `numchild` int unsigned NOT NULL,
  `parent_id` int DEFAULT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`),
  CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `cms_treenode_chk_1` CHECK ((`depth` >= 0)),
  CONSTRAINT `cms_treenode_chk_2` CHECK ((`numchild` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_treenode`
--

LOCK TABLES `cms_treenode` WRITE;
/*!40000 ALTER TABLE `cms_treenode` DISABLE KEYS */;
INSERT INTO `cms_treenode` VALUES (1,'0001',1,0,NULL,1),(8,'000F',1,0,NULL,1),(9,'000G',1,0,NULL,1),(13,'000H',1,0,NULL,1),(14,'000D',1,0,NULL,1),(15,'000B',1,0,NULL,1),(16,'000C',1,0,NULL,1),(17,'000E',1,0,NULL,1),(18,'000I',1,0,NULL,1);
/*!40000 ALTER TABLE `cms_treenode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_urlconfrevision`
--

DROP TABLE IF EXISTS `cms_urlconfrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_urlconfrevision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_urlconfrevision`
--

LOCK TABLES `cms_urlconfrevision` WRITE;
/*!40000 ALTER TABLE `cms_urlconfrevision` DISABLE KEYS */;
INSERT INTO `cms_urlconfrevision` VALUES (1,'29cceabb-e7e6-44b0-8e52-e3fcf85a0a3a');
/*!40000 ALTER TABLE `cms_urlconfrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_usersettings`
--

DROP TABLE IF EXISTS `cms_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_usersettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_usersettings`
--

LOCK TABLES `cms_usersettings` WRITE;
/*!40000 ALTER TABLE `cms_usersettings` DISABLE KEYS */;
INSERT INTO `cms_usersettings` VALUES (1,'en',1,1);
/*!40000 ALTER TABLE `cms_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-06-16 06:37:51.377000','1','Home',2,'',2,1),(2,'2021-06-16 06:38:02.926000','3','About',2,'',2,1),(3,'2021-06-16 06:39:28.068000','1','Home',2,'[]',2,1),(4,'2021-06-16 06:39:31.302000','1','Home',2,'',2,1),(5,'2021-06-16 06:40:56.195000','1','Home',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(6,'2021-06-16 06:57:24.995000','1','Home',2,'',2,1),(7,'2021-06-16 08:37:13.472000','1','Home',2,'',2,1),(8,'2021-06-16 08:49:46.509000','16','16',3,'',37,1),(9,'2021-06-16 08:52:45.576000','23','23',3,'',56,1),(10,'2021-06-16 09:42:21.318000','25','25',3,'',35,1),(11,'2021-06-16 09:46:10.046000','1','Home',2,'',2,1),(12,'2021-06-18 05:11:46.940000','3','About',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(13,'2021-06-18 05:11:56.662000','3','About',2,'',2,1),(14,'2021-06-18 05:15:20.013000','1','Home',2,'',2,1),(15,'2021-06-18 05:30:00.056000','50','50',3,'',35,1),(16,'2021-06-18 10:37:05.044000','1','Home',2,'',2,1),(17,'2021-06-18 10:45:26.599000','53','53',3,'',35,1),(18,'2021-06-18 10:45:55.074000','1','Home',2,'',2,1),(19,'2021-06-21 05:46:53.134000','5','RTI',1,'[{\"added\": {}}]',2,1),(20,'2021-06-21 05:47:44.032000','5','RTI',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(21,'2021-06-21 05:48:01.276000','5','RTI',2,'',2,1),(22,'2021-06-21 06:02:44.989000','84','84',3,'',56,1),(23,'2021-06-21 06:02:48.684000','1','Home',2,'',2,1),(24,'2021-06-21 06:27:16.006000','98','98',3,'',51,1),(25,'2021-06-21 06:27:22.249000','3','About',2,'',2,1),(26,'2021-06-21 10:15:51.170000','1','Home',2,'[{\"changed\": {\"fields\": [\"Description meta tag\"]}}]',2,1),(27,'2021-06-21 10:16:43.948000','1','Home',2,'The en page \"Home\" was successfully unpublished',2,1),(28,'2021-06-21 10:20:26.679000','1','Home',2,'',2,1),(29,'2021-06-21 10:48:38.005000','3','About',2,'[{\"changed\": {\"fields\": [\"Description meta tag\"]}}]',2,1),(30,'2021-06-21 10:48:43.702000','3','About',2,'',2,1),(31,'2021-06-21 11:54:11.220000','121','121',3,'',51,1),(32,'2021-06-21 12:00:29.719000','118','118',3,'',41,1),(33,'2021-06-21 12:09:20.582000','126','126',3,'',57,1),(34,'2021-06-21 12:09:23.172000','3','About',2,'',2,1),(35,'2021-06-21 12:16:25.583000','136','News &amp; Events',3,'',24,1),(36,'2021-06-21 12:16:34.285000','135','135',3,'',35,1),(37,'2021-06-21 12:16:48.361000','141','The Department of...',3,'',24,1),(38,'2021-06-21 12:23:23.338000','1','Home',2,'',2,1),(39,'2021-06-22 05:55:17.926000','7','Notice',1,'[{\"added\": {}}]',2,1),(40,'2021-06-22 05:55:40.474000','7','Notice',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(41,'2021-06-22 05:56:15.425000','8','Abou1',1,'[{\"added\": {}}]',2,1),(42,'2021-06-22 05:58:17.436000','8','Abou1',2,'',2,1),(43,'2021-06-29 06:20:03.518000','1','Home',2,'[{\"changed\": {\"fields\": [\"X Frame Options\"]}}]',2,1),(44,'2021-06-29 06:20:31.743000','1','Home',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(45,'2021-06-29 06:20:42.321000','1','Home',2,'[{\"changed\": {\"fields\": [\"X Frame Options\"]}}]',2,1),(46,'2021-06-29 06:21:44.777000','1','Home',2,'[{\"changed\": {\"fields\": [\"X Frame Options\"]}}]',2,1),(47,'2021-06-29 06:22:37.175000','51','51',3,'',35,1),(48,'2021-06-29 06:22:46.479000','140','140',3,'',35,1),(49,'2021-06-29 06:29:31.134000','1','Home',2,'',2,1),(50,'2021-06-29 06:50:19.401000','224','224',3,'',35,1),(51,'2021-06-29 06:51:33.506000','227','227',3,'',35,1),(52,'2021-06-29 06:55:17.055000','222','222',3,'',49,1),(53,'2021-06-29 06:57:21.286000','194','194',3,'',35,1),(54,'2021-06-29 06:58:42.679000','1','Home',2,'',2,1),(55,'2021-06-29 07:27:02.861000','1','Home',2,'',2,1),(56,'2021-06-29 07:29:00.536000','1','Home',2,'',2,1),(57,'2021-06-29 07:45:20.486000','1','Home',2,'',2,1),(58,'2021-06-29 07:48:14.447000','1','Home',2,'',2,1),(59,'2021-06-29 07:49:31.353000','1','Home',2,'',2,1),(60,'2021-06-29 08:33:27.923000','1','Home',2,'',2,1),(61,'2021-06-29 09:12:41.050000','382','382',3,'',35,1),(62,'2021-06-29 09:12:46.452000','1','Home',2,'',2,1),(63,'2021-06-29 09:16:32.266000','1','Home',2,'',2,1),(64,'2021-06-29 09:17:57.362000','669','669',3,'',35,1),(65,'2021-06-29 09:18:08.492000','1','Home',2,'',2,1),(66,'2021-06-29 09:39:59.269000','1','Home',2,'',2,1),(67,'2021-06-29 09:59:46.730000','1','Home',2,'',2,1),(68,'2021-06-29 10:59:21.222000','1','Home',2,'',2,1),(69,'2021-06-29 11:00:54.715000','1','Home',2,'',2,1),(70,'2021-06-30 06:11:40.857000','82','82',3,'',35,1),(71,'2021-06-30 06:18:24.097000','3','About',2,'',2,1),(72,'2021-06-30 06:21:05.014000','3','About',2,'',2,1),(73,'2021-06-30 06:52:56.244000','3','About',2,'',2,1),(74,'2021-06-30 06:58:56.722000','3','About',2,'',2,1),(75,'2021-06-30 07:01:33.089000','5','RTI',2,'',2,1),(76,'2021-06-30 07:04:33.760000','8','Abou1',3,'',2,1),(77,'2021-06-30 07:05:12.108000','5','Schems',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',2,1),(78,'2021-06-30 07:05:20.152000','5','Schems',2,'',2,1),(79,'2021-06-30 07:05:34.093000','7','General Information',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',2,1),(80,'2021-06-30 07:05:40.052000','7','General Information',2,'',2,1),(81,'2021-06-30 07:06:08.673000','5','Schemes',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',2,1),(82,'2021-06-30 07:06:13.564000','5','Schemes',2,'',2,1),(83,'2021-06-30 07:06:54.154000','11','Report & Publication',1,'[{\"added\": {}}]',2,1),(84,'2021-06-30 07:07:05.189000','11','Report & Publication',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(85,'2021-06-30 07:07:14.208000','7','General Information',2,'[{\"changed\": {\"fields\": [\"X Frame Options\"]}}]',2,1),(86,'2021-06-30 07:07:36.054000','12','Contact Us',1,'[{\"added\": {}}]',2,1),(87,'2021-06-30 07:07:41.428000','12','Contact Us',2,'',2,1),(88,'2021-06-30 07:07:48.762000','11','Report & Publication',2,'',2,1),(89,'2021-06-30 07:08:04.446000','12','Contact Us',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(90,'2021-06-30 07:08:13.862000','7','General Information',2,'',2,1),(91,'2021-06-30 07:08:22.870000','12','Contact Us',2,'',2,1),(92,'2021-06-30 07:09:17.826000','176','176',3,'',49,1),(93,'2021-06-30 08:02:11.754000','992','992',3,'',56,1),(94,'2021-06-30 08:08:33.741000','7','General Information',2,'',2,1),(95,'2021-06-30 08:13:35.034000','11','Report & Publication',2,'',2,1),(96,'2021-06-30 08:14:16.348000','11','Report & Publication',2,'',2,1),(97,'2021-06-30 08:16:36.824000','12','Contact Us',2,'',2,1),(98,'2021-06-30 08:30:06.154000','1','Home',2,'',2,1),(99,'2021-06-30 08:44:02.115000','1','Home',2,'',2,1),(100,'2021-06-30 08:57:09.864000','1','Home',2,'',2,1),(101,'2021-06-30 10:51:26.278000','15','otherlink',1,'[{\"added\": {}}]',2,1),(102,'2021-06-30 10:51:50.262000','15','otherlink',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(103,'2021-06-30 10:53:36.034000','15','otherlink',2,'',2,1),(104,'2021-06-30 11:03:47.431000','15','otherlink',2,'',2,1),(105,'2021-06-30 11:04:34.041000','17','screen reader',1,'[{\"added\": {}}]',2,1),(106,'2021-06-30 11:04:44.262000','17','screen reader',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(107,'2021-06-30 11:05:57.495000','17','screen reader',2,'',2,1),(108,'2021-06-30 11:06:37.177000','17','screen reader',2,'',2,1),(109,'2021-06-30 11:06:44.100000','12','Contact Us',2,'',2,1),(110,'2021-06-30 11:06:48.005000','7','General Information',2,'',2,1),(111,'2021-06-30 11:07:41.338000','12','Contact Us',2,'',2,1),(112,'2021-06-30 11:08:11.974000','7','General Information',2,'',2,1),(113,'2021-07-01 09:27:18.389000','186','Proposal for amendment...',3,'',24,1),(114,'2021-07-01 09:37:15.832000','19','News Files',1,'[{\"added\": {}}]',2,1),(115,'2021-07-01 09:37:42.151000','19','News Files',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(116,'2021-07-01 09:42:53.268000','1210','Tender Documents for procurement of Coconut Seednuts.pdf',3,'',60,1),(117,'2021-07-01 09:42:58.331000','1212','Tender Documents for procurement of Coconut Seednuts.pdf',3,'',60,1),(118,'2021-07-01 14:35:20.198000','3','About',2,'The en page \"About\" was successfully unpublished',2,1),(119,'2021-07-02 04:05:58.750000','15','Tender Documents for procurement of Coconut Seednuts.pdf',3,'',27,1),(120,'2021-07-02 04:22:37.794000','1215','1215',3,'',60,1),(121,'2021-07-02 04:26:53.573000','1216','ApplicationFormat.doc',3,'',60,1),(122,'2021-07-02 07:10:50.190000','1','Home',2,'',2,1),(123,'2021-07-02 07:13:17.939000','987','Proposal for amendment...',3,'',24,1),(124,'2021-07-02 07:13:23.991000','7','General Information',2,'',2,1),(125,'2021-09-30 06:40:24.574000','1024','1024',3,'',39,1),(126,'2021-09-30 06:40:50.801000','189','189',3,'',49,1),(127,'2021-09-30 06:45:17.187000','1','Home',2,'',2,1),(128,'2021-09-30 06:47:00.752000','271','271',3,'',49,1),(129,'2021-09-30 06:48:48.295000','1','Home',2,'',2,1),(130,'2021-09-30 06:50:49.830000','1213','Tender Notice for...',3,'',24,1),(131,'2021-09-30 06:50:55.603000','1','Home',2,'',2,1),(132,'2021-09-30 06:53:51.619000','3','About',2,'',2,1),(133,'2021-09-30 06:55:55.923000','3','About',2,'',2,1),(134,'2021-09-30 06:56:55.044000','3','About',2,'',2,1),(135,'2021-09-30 06:57:10.826000','3','About',2,'',2,1),(136,'2021-09-30 07:00:45.684000','1','Basanta-Barnan.jpg',3,'',30,1),(137,'2021-09-30 07:00:50.409000','2','Manipuri-Classical-Dance.jpg',3,'',30,1),(138,'2021-09-30 07:00:53.265000','3','Anro-Lere.jpg',3,'',30,1),(139,'2021-09-30 07:00:54.150000','4','CM-biren.jpg',3,'',30,1),(140,'2021-09-30 07:00:55.698000','5','pp_pineapple.png',3,'',30,1),(141,'2021-09-30 07:00:57.177000','6','MIDHlogo2.jpg',3,'',30,1),(142,'2021-09-30 07:00:59.195000','7','chart1.gif',3,'',30,1),(143,'2021-09-30 07:01:01.345000','8','soil_resource_map.pdf',3,'',27,1),(144,'2021-09-30 07:01:01.987000','9','annualreport.pdf',3,'',27,1),(145,'2021-09-30 07:01:02.884000','10','Final_Copy_TM.pdf',3,'',27,1),(146,'2021-09-30 07:01:03.571000','11','slide2.jpg',3,'',30,1),(147,'2021-09-30 07:01:06.159000','12','slide3.jpg',3,'',30,1),(148,'2021-09-30 07:01:07.533000','13','slide1.jpg',3,'',30,1),(149,'2021-09-30 07:01:09.307000','14','slide.jpg',3,'',30,1),(150,'2021-09-30 07:01:11.639000','16','Tender Documents for procurement of Coconut Seednuts.pdf',3,'',27,1),(151,'2021-09-30 07:01:12.135000','17','ApplicationFormat.doc',3,'',27,1),(152,'2021-09-30 07:01:12.653000','18','List of Empanelled Firms.pdf',3,'',27,1),(153,'2021-09-30 07:01:14.185000','19','Tender Notice procurement of Coconut Seednuts.pdf',3,'',27,1),(154,'2021-09-30 07:01:14.850000','20','List of Empanelled Firms.pdf',3,'',27,1),(155,'2021-09-30 07:01:15.266000','21','List of Items and Technical Specifications.pdf',3,'',27,1),(156,'2021-09-30 07:01:15.775000','22','Terms and Conditions.pdf',3,'',27,1),(157,'2021-09-30 07:01:16.447000','23','new transfer order.pdf',3,'',27,1),(158,'2021-09-30 07:01:17.599000','24','seminar_banana.pdf',3,'',27,1),(159,'2021-09-30 07:01:18.201000','25','kachi_lemon.pdf',3,'',27,1),(160,'2021-09-30 07:01:18.809000','26','horti_expo.pdf',3,'',27,1),(161,'2021-09-30 07:01:19.396000','1','photo',3,'',28,1),(162,'2021-09-30 07:04:51.498000','894','894',3,'',58,1),(163,'2021-09-30 07:05:07.911000','895','895',3,'',58,1),(164,'2021-09-30 07:05:13.416000','3','About',2,'',2,1),(165,'2021-09-30 07:06:22.377000','5','Vision & Meesion',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',2,1),(166,'2021-09-30 07:06:31.657000','5','Vision & Meesion',2,'',2,1),(167,'2021-09-30 07:10:41.594000','5','Vision & Meesion',2,'',2,1),(168,'2021-09-30 07:12:00.640000','5','Vision & Meesion',2,'',2,1),(169,'2021-09-30 07:25:19.671000','7','Annual Report',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',2,1),(170,'2021-09-30 07:25:48.646000','11','Who\'s Who',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',2,1),(171,'2021-09-30 07:25:59.680000','11','Who\'s Who',2,'',2,1),(172,'2021-09-30 07:26:29.275000','19','News Files',3,'',2,1),(173,'2021-09-30 07:26:38.230000','7','Annual Report',2,'',2,1),(174,'2021-09-30 07:27:26.657000','20','Downloads',1,'[{\"added\": {}}]',2,1),(175,'2021-09-30 07:27:40.831000','20','Downloads',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(176,'2021-09-30 07:28:03.189000','21','Gallery',1,'[{\"added\": {}}]',2,1),(177,'2021-09-30 07:28:20.359000','20','Downloads',2,'',2,1),(178,'2021-09-30 07:28:30.533000','21','Gallery',2,'',2,1),(179,'2021-09-30 07:29:25.018000','1014','1014',3,'',51,1),(180,'2021-09-30 07:29:34.942000','1015','1015',3,'',51,1),(181,'2021-09-30 07:32:21.267000','11','Who\'s Who',2,'',2,1),(182,'2021-09-30 07:35:57.489000','985','985',3,'',57,1),(183,'2021-09-30 07:39:25.657000','7','Annual Report',2,'',2,1),(184,'2021-09-30 07:42:42.178000','24','sitemap',1,'[{\"added\": {}}]',2,1),(185,'2021-09-30 07:43:02.680000','24','sitemap',2,'[{\"changed\": {\"fields\": [\"Template\", \"X Frame Options\"]}}]',2,1),(186,'2021-09-30 07:43:09.748000','24','sitemap',2,'',2,1),(187,'2021-09-30 07:45:38.703000','12','Contact Us',2,'',2,1),(188,'2021-09-30 07:46:06.337000','12','Contact Us',2,'',2,1),(189,'2021-09-30 07:47:59.208000','7','Annual Report',2,'',2,1),(190,'2021-09-30 07:48:49.261000','5','Vision & Mission',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',2,1),(191,'2021-09-30 07:48:55.919000','5','Vision & Mission',2,'',2,1),(192,'2021-10-01 05:22:41.889000','1','Home',2,'',2,1),(193,'2021-10-01 05:42:50.449000','1','Home',2,'',2,1),(194,'2021-10-06 09:18:45.372000','26','test',1,'[{\"added\": {}}]',2,1),(195,'2021-10-06 09:18:52.257000','26','test',2,'',2,1),(196,'2021-10-06 09:39:19.929000','28','test1',1,'[{\"added\": {}}]',2,1),(197,'2021-10-06 09:39:27.212000','28','test1',2,'',2,1),(198,'2021-10-07 15:54:56.415000','1518','1518',3,'',49,1),(199,'2021-10-07 16:52:32.528000','12','Contact Us',3,'',2,1),(200,'2021-10-07 16:52:47.331000','21','Gallery',3,'',2,1),(201,'2021-10-07 16:52:58.970000','20','Downloads',3,'',2,1),(202,'2021-10-07 16:53:10.399000','11','Who\'s Who',3,'',2,1),(203,'2021-10-07 16:53:16.673000','7','Annual Report',3,'',2,1),(204,'2021-10-07 16:53:23.333000','5','Vision & Mission',3,'',2,1),(205,'2021-10-07 19:04:37.856000','1','Home',2,'',2,1),(206,'2021-10-07 19:07:36.483000','27','org_strut.png',3,'',30,1),(207,'2021-10-07 19:36:07.524000','270','270',3,'',35,1),(208,'2021-10-07 19:38:32.662000','1','Home',2,'',2,1),(209,'2021-10-07 19:43:53.654000','1576','1576',3,'',35,1),(210,'2021-10-07 19:48:39.556000','713','713',3,'',35,1),(211,'2021-10-07 19:49:47.624000','30','AAR 2015-16.pdf',3,'',27,1),(212,'2021-10-07 19:49:50.766000','29','AAR 2016-17.pdf',3,'',27,1),(213,'2021-10-07 19:49:53.314000','28','AAR-2014-15.pdf',3,'',27,1),(214,'2021-10-07 19:49:55.479000','32','Presidential Award 2021 for Sanskrit 001.jpg.pdf',3,'',27,1),(215,'2021-10-07 19:49:57.940000','33','PresidentialAward2021.pdf',3,'',27,1),(216,'2021-10-07 19:50:00.452000','31','SchemeBengali.pdf',3,'',27,1),(217,'2021-10-07 19:55:26.754000','1','Home',2,'',2,1),(218,'2021-10-07 20:18:17.728000','26','Minister of Art...',3,'',24,1),(219,'2021-10-07 20:37:00.509000','1','Home',2,'',2,1),(220,'2021-10-07 20:44:40.445000','1','Home',2,'',2,1),(221,'2021-10-07 20:47:15.978000','18','18',3,'',49,1),(222,'2021-10-07 20:49:34.485000','1678','1678',3,'',38,1),(223,'2021-10-07 20:49:47.378000','1688','1688',3,'',38,1),(224,'2021-10-07 20:50:15.608000','1676','1676',3,'',37,1),(225,'2021-10-07 20:50:47.422000','1687','1687',3,'',37,1),(226,'2021-10-07 20:57:54.875000','1','Home',2,'',2,1),(227,'2021-10-08 09:07:46.723000','1549','1549',3,'',48,1),(228,'2021-10-08 09:19:44.262000','1','Home',2,'',2,1),(229,'2021-10-08 09:55:18.980000','1','Home',2,'',2,1),(230,'2021-10-08 09:58:20.080000','1','Home',2,'',2,1),(231,'2021-10-08 10:06:04.498000','3','About',3,'',2,1),(232,'2021-10-08 10:31:29.199000','1','Home',2,'',2,1),(233,'2021-10-08 10:46:32.957000','1','Home',2,'',2,1),(234,'2021-10-08 10:59:09.875000','1','Home',2,'',2,1),(235,'2021-10-11 08:04:48.841000','1927','1927',3,'',37,1),(236,'2021-10-11 08:08:12.758000','1','Home',2,'',2,1),(237,'2021-10-11 08:20:51.628000','30','About',1,'[{\"added\": {}}]',2,1),(238,'2021-10-11 08:21:04.903000','31','test',1,'[{\"added\": {}}]',2,1),(239,'2021-10-11 08:21:20.148000','30','About',2,'',2,1),(240,'2021-10-11 08:21:26.500000','31','test',2,'',2,1),(241,'2021-10-11 08:21:54.512000','31','test',3,'',2,1),(242,'2021-10-11 08:22:39.469000','30','About',3,'',2,1),(243,'2021-11-10 03:48:41.687855','1970','1970',3,'',48,1),(244,'2021-11-10 04:00:20.218929','1613','* Notes :...',3,'',24,1),(245,'2021-11-10 04:00:30.912477','1999','FOR OFFLINE APPLICATION',3,'',24,1),(246,'2021-11-10 04:09:59.924412','2025','2025',3,'',48,1),(247,'2021-11-10 04:10:05.673162','2028','2028',3,'',48,1),(248,'2021-11-10 04:10:09.437676','2031','2031',3,'',48,1),(249,'2021-11-10 04:10:13.756228','2019','2019',3,'',48,1),(250,'2021-11-10 04:22:15.915729','1','Home',2,'',2,1),(251,'2021-11-10 04:24:57.841318','1','Home',2,'',2,1),(252,'2021-11-16 10:58:45.234617','26','ADCs',1,'[{\"added\": {}}]',2,1),(253,'2021-11-16 10:58:54.580650','26','ADCs',2,'',2,1),(254,'2021-11-16 11:00:02.380690','28','About Us',1,'[{\"added\": {}}]',2,1),(255,'2021-11-16 11:00:09.717790','28','About Us',2,'',2,1),(256,'2021-11-16 11:00:32.857368','30','Schemes',1,'[{\"added\": {}}]',2,1),(257,'2021-11-16 11:00:39.467917','30','Schemes',2,'',2,1),(258,'2021-11-16 11:00:43.610693','26','ADCs',2,'',2,1),(259,'2021-11-16 11:00:58.599779','32','Contact Us',1,'[{\"added\": {}}]',2,1),(260,'2021-11-16 11:01:10.731171','32','Contact Us',2,'',2,1),(261,'2021-11-16 11:01:27.806117','28','About Us',2,'',2,1),(262,'2021-11-16 11:03:23.862482','28','About Us',2,'',2,1),(263,'2021-11-16 11:04:28.639189','28','About Us',2,'',2,1),(264,'2021-11-16 11:04:52.426912','30','Schemes',2,'',2,1),(265,'2021-11-16 11:11:55.049193','1929','1929',3,'',48,1),(266,'2021-11-16 11:12:19.620428','1681','1681',3,'',47,1),(267,'2021-11-16 11:13:32.999317','17','17',3,'',35,1),(268,'2021-11-16 11:29:48.051855','1','Home',2,'',2,1),(269,'2021-11-16 11:30:29.069947','1','Home',2,'',2,1),(270,'2021-11-16 11:31:22.548802','1','Home',2,'',2,1),(271,'2021-11-16 11:32:04.992870','34','backup',1,'[{\"added\": {}}]',2,1),(272,'2021-11-16 11:33:33.955210','34','backup',2,'',2,1),(273,'2021-11-16 11:34:24.132318','2017','2017',3,'',48,1),(274,'2021-11-16 11:34:43.174677','2022','2022',3,'',48,1),(275,'2021-11-16 11:34:49.389837','2036','2036',3,'',48,1),(276,'2021-11-16 11:34:54.098068','2038','2038',3,'',48,1),(277,'2021-11-16 11:35:21.880855','1996','1996',3,'',48,1),(278,'2021-11-16 11:46:52.786855','1','Home',2,'',2,1),(279,'2021-11-16 11:48:13.613873','28','About Us',2,'',2,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(35,'bootstrap4_alerts','bootstrap4alerts'),(36,'bootstrap4_badge','bootstrap4badge'),(37,'bootstrap4_card','bootstrap4card'),(38,'bootstrap4_card','bootstrap4cardinner'),(39,'bootstrap4_carousel','bootstrap4carousel'),(40,'bootstrap4_carousel','bootstrap4carouselslide'),(41,'bootstrap4_collapse','bootstrap4collapse'),(42,'bootstrap4_collapse','bootstrap4collapsecontainer'),(43,'bootstrap4_collapse','bootstrap4collapsetrigger'),(44,'bootstrap4_content','bootstrap4blockquote'),(45,'bootstrap4_content','bootstrap4code'),(46,'bootstrap4_content','bootstrap4figure'),(47,'bootstrap4_grid','bootstrap4gridcolumn'),(48,'bootstrap4_grid','bootstrap4gridcontainer'),(49,'bootstrap4_grid','bootstrap4gridrow'),(50,'bootstrap4_jumbotron','bootstrap4jumbotron'),(51,'bootstrap4_link','bootstrap4link'),(52,'bootstrap4_listgroup','bootstrap4listgroup'),(53,'bootstrap4_listgroup','bootstrap4listgroupitem'),(54,'bootstrap4_media','bootstrap4media'),(55,'bootstrap4_media','bootstrap4mediabody'),(56,'bootstrap4_picture','bootstrap4picture'),(57,'bootstrap4_tabs','bootstrap4tab'),(58,'bootstrap4_tabs','bootstrap4tabitem'),(59,'bootstrap4_utilities','bootstrap4spacing'),(11,'cms','aliaspluginmodel'),(10,'cms','cmsplugin'),(12,'cms','globalpagepermission'),(2,'cms','page'),(13,'cms','pagepermission'),(21,'cms','pagetype'),(14,'cms','pageuser'),(15,'cms','pageusergroup'),(1,'cms','placeholder'),(16,'cms','placeholderreference'),(17,'cms','staticplaceholder'),(18,'cms','title'),(22,'cms','treenode'),(20,'cms','urlconfrevision'),(19,'cms','usersettings'),(6,'contenttypes','contenttype'),(60,'djangocms_file','file'),(61,'djangocms_file','folder'),(66,'djangocms_googlemap','googlemap'),(67,'djangocms_googlemap','googlemapmarker'),(68,'djangocms_googlemap','googlemaproute'),(62,'djangocms_icon','icon'),(63,'djangocms_link','link'),(64,'djangocms_picture','picture'),(65,'djangocms_style','style'),(24,'djangocms_text_ckeditor','text'),(69,'djangocms_video','videoplayer'),(70,'djangocms_video','videosource'),(71,'djangocms_video','videotrack'),(32,'easy_thumbnails','source'),(33,'easy_thumbnails','thumbnail'),(34,'easy_thumbnails','thumbnaildimensions'),(25,'filer','clipboard'),(26,'filer','clipboarditem'),(27,'filer','file'),(28,'filer','folder'),(29,'filer','folderpermission'),(30,'filer','image'),(31,'filer','thumbnailoption'),(23,'menus','cachekey'),(73,'SampleTemplate','contactus'),(72,'SampleTemplate','gallery'),(7,'sessions','session'),(9,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-11 09:28:23.101265'),(2,'auth','0001_initial','2021-10-11 09:28:23.298983'),(3,'admin','0001_initial','2021-10-11 09:28:23.783421'),(4,'admin','0002_logentry_remove_auto_add','2021-10-11 09:28:23.904543'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-11 09:28:23.916255'),(6,'contenttypes','0002_remove_content_type_name','2021-10-11 09:28:24.026791'),(7,'auth','0002_alter_permission_name_max_length','2021-10-11 09:28:24.096680'),(8,'auth','0003_alter_user_email_max_length','2021-10-11 09:28:24.128556'),(9,'auth','0004_alter_user_username_opts','2021-10-11 09:28:24.141172'),(10,'auth','0005_alter_user_last_login_null','2021-10-11 09:28:24.205490'),(11,'auth','0006_require_contenttypes_0002','2021-10-11 09:28:24.210429'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-11 09:28:24.221681'),(13,'auth','0008_alter_user_username_max_length','2021-10-11 09:28:24.300434'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-11 09:28:24.399617'),(15,'auth','0010_alter_group_name_max_length','2021-10-11 09:28:24.427915'),(16,'auth','0011_update_proxy_permissions','2021-10-11 09:28:24.440196'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-11 09:28:24.509315'),(18,'sites','0001_initial','2021-10-11 09:28:24.542964'),(19,'cms','0001_initial','2021-10-11 09:28:24.854307'),(20,'cms','0002_auto_20140816_1918','2021-10-11 09:28:26.853014'),(21,'cms','0003_auto_20140926_2347','2021-10-11 09:28:28.047497'),(22,'cms','0004_auto_20140924_1038','2021-10-11 09:28:28.868284'),(23,'cms','0005_auto_20140924_1039','2021-10-11 09:28:28.903646'),(24,'cms','0006_auto_20140924_1110','2021-10-11 09:28:29.854200'),(25,'cms','0007_auto_20141028_1559','2021-10-11 09:28:29.919040'),(26,'cms','0008_auto_20150208_2149','2021-10-11 09:28:29.948392'),(27,'cms','0008_auto_20150121_0059','2021-10-11 09:28:30.087736'),(28,'cms','0009_merge','2021-10-11 09:28:30.095583'),(29,'cms','0010_migrate_use_structure','2021-10-11 09:28:30.150258'),(30,'cms','0011_auto_20150419_1006','2021-10-11 09:28:30.296488'),(31,'cms','0012_auto_20150607_2207','2021-10-11 09:28:30.619190'),(32,'cms','0013_urlconfrevision','2021-10-11 09:28:30.652616'),(33,'cms','0014_auto_20160404_1908','2021-10-11 09:28:30.681253'),(34,'cms','0015_auto_20160421_0000','2021-10-11 09:28:30.802762'),(35,'cms','0016_auto_20160608_1535','2021-10-11 09:28:31.022003'),(36,'bootstrap4_alerts','0001_initial','2021-10-11 09:28:31.084398'),(37,'bootstrap4_badge','0001_initial','2021-10-11 09:28:31.192876'),(38,'bootstrap4_card','0001_initial','2021-10-11 09:28:31.355833'),(39,'filer','0001_initial','2021-10-11 09:28:32.249572'),(40,'filer','0002_auto_20150606_2003','2021-10-11 09:28:32.925421'),(41,'filer','0003_thumbnailoption','2021-10-11 09:28:32.960711'),(42,'filer','0004_auto_20160328_1434','2021-10-11 09:28:33.034410'),(43,'filer','0005_auto_20160623_1425','2021-10-11 09:28:33.523172'),(44,'filer','0006_auto_20160623_1627','2021-10-11 09:28:33.652046'),(45,'filer','0007_auto_20161016_1055','2021-10-11 09:28:33.669230'),(46,'filer','0008_auto_20171117_1313','2021-10-11 09:28:33.704695'),(47,'filer','0009_auto_20171220_1635','2021-10-11 09:28:33.811752'),(48,'filer','0010_auto_20180414_2058','2021-10-11 09:28:33.912502'),(49,'filer','0011_auto_20190418_0137','2021-10-11 09:28:34.109576'),(50,'bootstrap4_carousel','0001_initial','2021-10-11 09:28:34.252508'),(51,'bootstrap4_carousel','0002_bootstrap4carousel_carousel_aspect_ratio','2021-10-11 09:28:34.555557'),(52,'bootstrap4_carousel','0003_auto_20180610_1102','2021-10-11 09:28:34.588236'),(53,'bootstrap4_carousel','0004_auto_20190703_0831','2021-10-11 09:28:34.728432'),(54,'bootstrap4_collapse','0001_initial','2021-10-11 09:28:34.944633'),(55,'bootstrap4_content','0001_initial','2021-10-11 09:28:35.307915'),(56,'bootstrap4_content','0002_added_figure','2021-10-11 09:28:35.475205'),(57,'bootstrap4_grid','0001_initial','2021-10-11 09:28:35.760908'),(58,'bootstrap4_grid','0002_auto_20180709_0808','2021-10-11 09:28:36.134801'),(59,'bootstrap4_grid','0003_migrate_column_size','2021-10-11 09:28:36.181601'),(60,'bootstrap4_grid','0004_remove_bootstrap4gridcolumn_column_size','2021-10-11 09:28:36.247846'),(61,'bootstrap4_jumbotron','0001_initial','2021-10-11 09:28:36.318785'),(62,'bootstrap4_link','0001_initial','2021-10-11 09:28:36.446464'),(63,'bootstrap4_link','0002_add_icons','2021-10-11 09:28:36.737787'),(64,'bootstrap4_link','0003_icon_updates','2021-10-11 09:28:36.798337'),(65,'bootstrap4_link','0004_auto_20190703_0831','2021-10-11 09:28:37.010510'),(66,'bootstrap4_listgroup','0001_initial','2021-10-11 09:28:37.190338'),(67,'bootstrap4_media','0001_initial','2021-10-11 09:28:37.435498'),(68,'djangocms_picture','0001_initial','2021-10-11 09:28:37.632868'),(69,'djangocms_picture','0002_auto_20151018_1927','2021-10-11 09:28:37.838038'),(70,'djangocms_picture','0003_migrate_to_filer','2021-10-11 09:28:38.423801'),(71,'djangocms_picture','0004_adapt_fields','2021-10-11 09:28:40.528124'),(72,'djangocms_picture','0005_reset_null_values','2021-10-11 09:28:40.593086'),(73,'djangocms_picture','0006_remove_null_values','2021-10-11 09:28:40.926426'),(74,'djangocms_picture','0007_fix_alignment','2021-10-11 09:28:40.972093'),(75,'djangocms_picture','0008_picture_use_responsive_image','2021-10-11 09:28:41.052082'),(76,'bootstrap4_picture','0001_initial','2021-10-11 09:28:41.156653'),(77,'bootstrap4_picture','0002_bootstrap4picture_use_responsive_image','2021-10-11 09:28:41.551989'),(78,'bootstrap4_picture','0003_auto_20181212_1055','2021-10-11 09:28:41.790935'),(79,'bootstrap4_picture','0004_auto_20190703_0831','2021-10-11 09:28:42.091162'),(80,'bootstrap4_tabs','0001_initial','2021-10-11 09:28:42.262951'),(81,'bootstrap4_tabs','0002_auto_20180610_1106','2021-10-11 09:28:42.410334'),(82,'bootstrap4_utilities','0001_initial','2021-10-11 09:28:42.498102'),(83,'cms','0017_pagetype','2021-10-11 09:28:42.742231'),(84,'cms','0018_pagenode','2021-10-11 09:28:43.596307'),(85,'cms','0019_set_pagenode','2021-10-11 09:28:43.852873'),(86,'cms','0020_old_tree_cleanup','2021-10-11 09:28:45.548980'),(87,'cms','0021_auto_20180507_1432','2021-10-11 09:28:45.577270'),(88,'cms','0022_auto_20180620_1551','2021-10-11 09:28:45.626686'),(89,'djangocms_file','0001_initial','2021-10-11 09:28:45.713280'),(90,'djangocms_file','0002_auto_20151202_1551','2021-10-11 09:28:45.887861'),(91,'djangocms_file','0003_remove_related_name_for_cmsplugin_ptr','2021-10-11 09:28:46.013720'),(92,'djangocms_file','0004_set_related_name_for_cmsplugin_ptr','2021-10-11 09:28:46.142122'),(93,'djangocms_file','0005_auto_20160119_1534','2021-10-11 09:28:46.180022'),(94,'djangocms_file','0006_migrate_to_filer','2021-10-11 09:28:46.420526'),(95,'djangocms_file','0007_adapted_fields','2021-10-11 09:28:47.122914'),(96,'djangocms_file','0008_add_folder','2021-10-11 09:28:47.217603'),(97,'djangocms_file','0009_fixed_null_fields','2021-10-11 09:28:47.399713'),(98,'djangocms_file','0010_removed_null_fields','2021-10-11 09:28:47.503289'),(99,'djangocms_file','0011_auto_20181211_0357','2021-10-11 09:28:47.595500'),(100,'djangocms_googlemap','0001_initial','2021-10-11 09:28:47.775627'),(101,'djangocms_googlemap','0002_auto_20160622_1031','2021-10-11 09:28:48.149997'),(102,'djangocms_googlemap','0003_auto_20160825_1829','2021-10-11 09:28:48.190406'),(103,'djangocms_googlemap','0004_adapted_fields','2021-10-11 09:28:49.890793'),(104,'djangocms_googlemap','0005_create_nested_plugins','2021-10-11 09:28:50.058549'),(105,'djangocms_googlemap','0006_remove_fields','2021-10-11 09:28:50.595393'),(106,'djangocms_googlemap','0007_reset_null_values','2021-10-11 09:28:50.662158'),(107,'djangocms_googlemap','0008_removed_null_fields','2021-10-11 09:28:50.785619'),(108,'djangocms_googlemap','0009_googlemapmarker_icon','2021-10-11 09:28:50.968160'),(109,'djangocms_googlemap','0010_auto_20190718_1021','2021-10-11 09:28:51.181527'),(110,'djangocms_icon','0001_initial','2021-10-11 09:28:51.278844'),(111,'djangocms_icon','0002_auto_20190218_2017','2021-10-11 09:28:51.392912'),(112,'djangocms_link','0001_initial','2021-10-11 09:28:51.493756'),(113,'djangocms_link','0002_auto_20140929_1705','2021-10-11 09:28:51.667228'),(114,'djangocms_link','0003_auto_20150212_1310','2021-10-11 09:28:51.717432'),(115,'djangocms_link','0004_auto_20150708_1133','2021-10-11 09:28:51.819636'),(116,'djangocms_link','0005_auto_20151003_1710','2021-10-11 09:28:51.880678'),(117,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2021-10-11 09:28:52.031550'),(118,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2021-10-11 09:28:52.246940'),(119,'djangocms_link','0008_link_attributes','2021-10-11 09:28:52.358107'),(120,'djangocms_link','0009_auto_20160705_1344','2021-10-11 09:28:52.411063'),(121,'djangocms_link','0010_adapted_fields','2021-10-11 09:28:53.062803'),(122,'djangocms_link','0011_fixed_null_values','2021-10-11 09:28:53.128017'),(123,'djangocms_link','0012_removed_null','2021-10-11 09:28:53.620852'),(124,'djangocms_link','0013_fix_hostname','2021-10-11 09:28:53.670579'),(125,'djangocms_link','0014_link_file_link','2021-10-11 09:28:53.796696'),(126,'djangocms_link','0015_auto_20190621_0407','2021-10-11 09:28:53.872774'),(127,'djangocms_picture','0009_auto_20181212_1003','2021-10-11 09:28:54.069857'),(128,'djangocms_picture','0010_auto_20190627_0432','2021-10-11 09:28:54.446728'),(129,'djangocms_picture','0011_auto_20190314_1536','2021-10-11 09:28:54.610768'),(130,'djangocms_style','0001_initial','2021-10-11 09:28:54.712682'),(131,'djangocms_style','0002_set_related_name_for_cmsplugin_ptr','2021-10-11 09:28:54.912372'),(132,'djangocms_style','0003_adapted_fields','2021-10-11 09:28:55.654832'),(133,'djangocms_style','0004_use_positive_small_integer_field','2021-10-11 09:28:56.853371'),(134,'djangocms_style','0005_reset_null_values','2021-10-11 09:28:56.923188'),(135,'djangocms_style','0006_removed_null_fields','2021-10-11 09:28:57.055680'),(136,'djangocms_style','0007_style_template','2021-10-11 09:28:57.140134'),(137,'djangocms_text_ckeditor','0001_initial','2021-10-11 09:28:57.236166'),(138,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2021-10-11 09:28:57.422206'),(139,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2021-10-11 09:28:57.555110'),(140,'djangocms_text_ckeditor','0004_auto_20160706_1339','2021-10-11 09:28:57.636707'),(141,'djangocms_video','0001_initial','2021-10-11 09:28:57.745337'),(142,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2021-10-11 09:28:57.944512'),(143,'djangocms_video','0003_field_adaptions','2021-10-11 09:28:58.963339'),(144,'djangocms_video','0004_move_to_attributes','2021-10-11 09:29:00.446040'),(145,'djangocms_video','0005_migrate_to_filer','2021-10-11 09:29:00.519581'),(146,'djangocms_video','0006_field_adaptions','2021-10-11 09:29:01.058251'),(147,'djangocms_video','0007_create_nested_plugin','2021-10-11 09:29:01.477777'),(148,'djangocms_video','0008_reset_null_values','2021-10-11 09:29:01.548000'),(149,'djangocms_video','0009_removed_null_values','2021-10-11 09:29:01.681890'),(150,'djangocms_video','0010_videoplayer_parameters','2021-10-11 09:29:01.805789'),(151,'easy_thumbnails','0001_initial','2021-10-11 09:29:01.921731'),(152,'easy_thumbnails','0002_thumbnaildimensions','2021-10-11 09:29:02.098113'),(153,'filer','0012_file_mime_type','2021-10-11 09:29:02.419822'),(154,'menus','0001_initial','2021-10-11 09:29:02.457908'),(155,'sessions','0001_initial','2021-10-11 09:29:02.492047'),(156,'sites','0002_alter_domain_unique','2021-10-11 09:29:02.626496'),(157,'cms','0018_create_pagenode','2021-10-11 09:29:02.636684');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0lglvvn1ed5k460t6r3en88m1zdcj4ed','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rVYix:tjtcv6CVtbI1WbCh98icgiBxIae19nkV0Y7oG6gqibY','2024-02-15 15:11:31.998812'),('1jyu68jkmr1ngueijugl7lq7nv6vsnut','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1qzfho:RGmIhAoYAt_ZBH0LP568Wm7USZKK5EnznCBNpZ8RQeE','2023-11-19 16:10:32.631685'),('58e303jvvymppez2dzal3mm6m48gw3jg','.eJxVjkEOwiAURO_C2jQUKLQu3XsG8oGPRbEYoLow3t02dmG3895M5k00zHXUc8GsgyNH0pLDf2bA3nBagbvCdEmNTVPNwTSr0my0NOfkMJ42dzcwQhmXtndSCYbK8sELxlEyj0NLpaNt33VWCaDKGI526Hrfc9kKKgamqAHGAK1dRu296JpSNJC1CwVMxOWXh1jwB9GFugseGZ8BX-RY84yfL_AcT18:1mWB0N:tgJThghaIYVIj2aK_Us5a57jpmJRXAb5vmXvnxgQs8g','2021-10-15 05:22:43.124000'),('5ul4zp18thejqhus4j2s4s3cl8v8ffap','.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1lyVoW:mxc8IPfi-09CuWL5dFXvo2P0YijVE24C4w3iS_Ir3mw','2021-07-14 08:43:20.908000'),('622vhr5e1awvd52gakgc7l5szhjboyc4','.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mn0P1:fSEBvB8NQKJRc0-5vOfsH2XlpJ32ZDoL72oXCnUbg6s','2021-11-30 15:29:43.390581'),('7qx34hkox321gfmjocjz0nxioljezjw4','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rT67w:djfZmhexk_GMOQOEvZLxRqLV4qhSf8SkuIGJp4PZ1uc','2024-02-08 20:15:08.631945'),('80cpo5e1zytgwpvxdtrgft9l0pfwkld9','.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mn0J9:FxALQ71bGr4NqdwZBxsmvYECRG5wGum14SRbvhgMdkM','2021-11-30 15:23:39.965679'),('9jnl0ss446z2ky8vh3jo66cpg1p87j2b','.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mn0IB:ZZI8lSsJz4s_sgyqEfUkmuQe5PYAPx5a30_KIhwAZiQ','2021-11-30 15:22:39.409200'),('9qn9riwmbdw0rihdizo54yhxlhw405mf','eyJjbXNfZWRpdCI6ZmFsc2V9:1mn0M5:MR2dYDWZoa5cYFNwG7h6ba_vd3e96wfikPeJjghgE1w','2021-11-30 15:26:41.906084'),('ay3tgk4fhfgq8r265bpc68tj9b37e963','.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mn0GD:rgZeSPJT6jNYvTc9t7SZz5brHosL1aiEmSwrzi5-ouo','2021-11-30 15:20:37.909533'),('c80z81lmetoosqqvgdga2nlukb2kitoq','.eJxVj0EOwiAQRe_C2jQUaGm7dO8ZyACDRbEYoLow3l2Mmtjte39-_jyIgrXMas2YlLdkIi3Z_TMN5ozLW9gTLMfYmLiU5HXzjjRfm5tDtBj23-ymYIY812tneykYSsNHJxjHnjkcW9pb2g5dZ6QAKrXmaMZucAPvW0HFyCTVwBigMbXUXLIqMQYNSVmfQQesuxyEjB-J1pcNuCa8ebyTqaS1IudDHRQgF-VisL-POXm-ANVUWKw:1mYnap:Z6Psd4ElaNGr9YRKVgCnLUd-hBe4JisitneVGIcrxLI','2021-10-22 10:59:11.486000'),('c8ueop8gwta9oz4jtvtah0g0w6awm6eg','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1qsPWp:qCKpL7FoPkUZR2iN611hn_-JfC3vlzXDlK1U56AojP4','2023-10-30 15:29:11.839528'),('cq5nkhpeibzsecryq2vhou2y2le64jam','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rVYpv:-of6E8ayh2quEFHmx3Ucqbs2atpdo77895WEq6Lft4I','2024-02-15 15:18:43.781409'),('e3fylpokd346z21o00p5dkyzic7fef3b','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rT680:UsliL7C9sy-9O9hWs5FhgLUMaIX9Kj2k0j0J2kO58gA','2024-02-08 20:15:12.521738'),('e9uuxl5b0w5ttsxuzc4dj1a0ce2zoavb','.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mn0O3:fZvJk60XfE4nz_g2mUU7RXk5Ka-VttZm6r1Dhl-iva0','2021-11-30 15:28:43.099159'),('fel2tw5jkz1inf9c227jre0nzt0hhz4k','.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mn0L7:Lcmz7_ieVbEBqL5OcZentfdx038SLmizM7dc-YVNuXI','2021-11-30 15:25:41.656693'),('hcs8aanzojivg35ulhn783s412q09453','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rT67x:rSE_sjiKvw4HVPKkDct7OwXQgjJGtbCuNnlQlIOlJfA','2024-02-08 20:15:09.103074'),('hhg7vz3i3vhm2xxbcbbzd7m4tohy9vto','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1qsPWS:SJ_M6dhJsdOP-bi9zoWVisP0_hlQppi3P64e7w-nxFg','2023-10-30 15:28:48.731297'),('k1ipzfdllhrbxtu5ntn0co73sio8jmss','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1qsPWY:CzPO9NVhwXIlc3C4VbDUJ4ahTYiwwrCcGFvOxKPngPk','2023-10-30 15:28:54.048990'),('k7nkbze112tiablagwkvyjrb3lz0uj13','.eJxVj0EOwiAQRe_C2jQUaGm7dO8ZyACDRbEYoLow3t02VqPLmffm58-DKJjLqOaMSXlLBlKT3e9OgznjtAJ7gukYKxOnkryuVqXaaK4O0WLYb-5fwAh5XK6dbaVgKA3vnWAcW-awr2lrad01jZECqNSao-mbznW8rQUVPZNUA2OAxiyh5pJViTFoSMr6DDrg0stByPiGaH0hQ0nzNl8T3jzev47zYSkUIBflYrCfjzl5vgDW0Vis:1mZrgt:2aJB4R9UFZWDgvT5f4lWla8-CNvLPwEuXvJqEFo3GqE','2021-10-25 09:33:51.216188'),('kk3v171hkf9jx0chdlyvhy39vck61a9t','.eJxVj0EOwiAQRe_C2jSU0tJ26d4zkAEGi2IxQHVhvLs0VqPLmffm58-DSFjyJJeEUTpDRlKT3e9OgT7jvAJzgvkYKh3mHJ2qVqXaaKoOwaDfb-5fwARpKtfWdIIzFLoZLGcNdsziUNPO0LpvWy04UKFUg3poe9s3Xc0pH5igChgD1LqE6kuSOQSvIErjEiiPpZcFn_AN0bhMxhyXbb5GvDm8fx3rfCnkIWVpgzefjxl5vgDWzlir:1lzBop:Ci26KRsGFdytgyiuVLYp8891L655if04NAzSzRiIsWg','2021-07-16 05:34:27.571000'),('m07yqt7qokkrsg95pqetzc4r614ith3z','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rTWfu:7YH-Ufn-sg2VXsOiYkVcNbuQdtgvyai2MFOeK0L1mMI','2024-02-10 00:35:58.751261'),('ndumfoxl1ek8imzorxkq5a8ht1y1pv7s','.eJxVj0EOwiAQRe_C2jSU0tJ26d4zkAEGi2IxQHVhvLs0NtFu3_vz8-dFJCx5kkvCKJ0hI6nJ4Z8p0FecV2EuMJ9DpcOco1PVGqk2m6pTMOiPW3ZXMEGayrU1neAMhW4Gy1mDHbM41LQztO7bVgsOVCjVoB7a3vZNV3PKByaoAsYAtS6l-pZkDsEriNK4BMpj2WXBJ_xKNC7vwD3iw-GTjDkuBVnnyyAPKUsbvPl9_P4A1U5Yqg:1luE0U:H5xdNMPazPg1H_XyUHzkMl2bXeXT-D5REZH9XcE5TlA','2021-07-02 12:53:58.772000'),('nh6oerlgqae0s1amsdxgvc0f1ezk2uge','eyJjbXNfZWRpdCI6ZmFsc2V9:1mn0FH:J54CjHwT3uK22Br7e12j6nOcvZ4jaU7d9L0JrqnU4kk','2021-11-30 15:19:39.716257'),('nj0m1ckyv17knmv6d7np8i7jxbwh6g7e','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rT684:vxQip0q8T6ht_V3wMhTkTYwOQZUhY8S0JPF34iMnxeI','2024-02-08 20:15:16.857368'),('pclqiwhj0nd5pd9m2n97ijxrc2ixlalo','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1qzgjX:Gh1wHD_ibiKLubfT_fVLi1Dn_DrlFpDYb-jpBSYsQ9E','2023-11-19 17:16:23.468800'),('qiv9h4nrdw579xbbfc19p0brxxxo7cak','.eJxVjDsOwjAQBe_iGln-fyjpOYO1Xq9xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MwkO_1uGfBBfQflDv02c5z7ukyZ7wo_6ODXudDzcrh_Bw1G-9a1OG8UedSxGqXJqUpRCleEDNaiNyB8zpow2lCDdtIIE5UXGZQCQmTvD9HxN3M:1qsPki:G86iAJlnuFegfVEe6gXJYt-bevLByge6cee1nQ6MO5U','2023-10-30 15:43:32.860475'),('qromktyzev6sudnbwmb6jr7a3o2m41uj','.eJxVjkEOwiAURO_C2jQUKLQu3XsG8oGPRbEYoLow3t02dmG3895M5k00zHXUc8GsgyNH0pLDf2bA3nBagbvCdEmNTVPNwTSr0my0NOfkMJ42dzcwQhmXtndSCYbK8sELxlEyj0NLpaNt33VWCaDKGI526Hrfc9kKKgamqAHGAK1dRu296JpSNJC1CwVMxOWXh1jwB9GFugseGZ8BX-RY84yfL_AcT18:1lvDP1:XETPvzuYJ0SpVJj2yNzpbu5-VYGZNgSHrd1FfCplaJg','2021-07-05 06:27:23.843000'),('r5lx6axtooghoapauuma8743u4shbzci','.eJxVjDsOwjAQBe_iGln-fyjpOYO1Xq9xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MwkO_1uGfBBfQflDv02c5z7ukyZ7wo_6ODXudDzcrh_Bw1G-9a1OG8UedSxGqXJqUpRCleEDNaiNyB8zpow2lCDdtIIE5UXGZQCQmTvD9HxN3M:1qsPkZ:wcAF1qmnqcDnMOQJupOny3tpc54oCld31ZKn31SuAFo','2023-10-30 15:43:23.709430'),('t81ewymets6kbhlvzvyl5brc8lyydxgy','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1rTWbF:NqmjfrR4c5amI9ORfP9_xt0LZtlZKTXQ3rSGEN3-Hto','2024-02-10 00:31:09.591129'),('u7npgk7a1k0vff7f4qs2kf9lio3whr5c','eyJjbXNfZWRpdCI6ZmFsc2V9:1mn0HC:BA-99C0oIIHK_m90NB6ipwpiESLosv-U_B-AYEqQzak','2021-11-30 15:21:38.824250'),('vljo834pqstlp3t10bksh2ioyiekhnkz','.eJxVjDsOwjAQBe_iGln-fyjpOYO1Xq9xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MwkO_1uGfBBfQflDv02c5z7ukyZ7wo_6ODXudDzcrh_Bw1G-9a1OG8UedSxGqXJqUpRCleEDNaiNyB8zpow2lCDdtIIE5UXGZQCQmTvD9HxN3M:1mfK1S:5RBq1iGSbVuWyT3QU1gbwR1XP9Ninkp3Ghw2DFyqWjg','2021-11-09 10:49:38.840684'),('w2y4d5n26cyou1x8js5cyog2sjwcsjt9','.eJxVjkEOwiAURO_C2jQUKLQu3XsG8oGPRbEYoLow3t02dmG3895M5k00zHXUc8GsgyNH0pLDf2bA3nBagbvCdEmNTVPNwTSr0my0NOfkMJ42dzcwQhmXtndSCYbK8sELxlEyj0NLpaNt33VWCaDKGI526Hrfc9kKKgamqAHGAK1dRu296JpSNJC1CwVMxOWXh1jwB9GFugseGZ8BX-RY84yfL_AcT18:1lzDMd:LCHB30iqiSC3LCQSjYfWGLIrh-_r7t_l-oiQpJK6TnI','2021-07-16 07:13:27.016000'),('xri1nxcsqrpgducu9npzzaeu74k9sl44','.eJxVjkEOwiAQRe_C2jSUUihduvcMZIDBolgMUF0Y724bu9Dln_fm57-IhqVOeimYdXBkJC05_N4M2CvOG3AXmM-psWmuOZhmU5qdluaUHMbj7v4VTFCm9ds7ITlDaTvlOetQMI-qpcLRduh7KzlQaUyHVvWDHzrRcsoVk9QAY4DWrqX2VnRNKRrI2oUCJuK6y0Ms-IXoQiVjzcue7xkfAZ-78_4A8ZlPXw:1ltQ1z:sEHMKg4ETczwoUyuN2-B5WOzAlzOFbT1zcX9NYjvbNI','2021-06-30 07:32:11.965000'),('yuevdap8elrttp6gt16kdmv8e88ozejj','eyJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlfQ:1qsPYN:F4uTU1F2eqGx1PTyeydVBIg2LAZEMCTNkEH7ALYNfoI','2023-10-30 15:30:47.888913'),('zfh069b2gp8rqkh9fg4jh16fs0whma7x','.eJxVj0EOwiAQRe_C2jQUaGm7dO8ZyACDRbEYoLow3t02VqPLmffm58-DKJjLqOaMSXlLBlKT3e9OgznjtAJ7gukYKxOnkryuVqXaaK4O0WLYb-5fwAh5XK6dbaVgKA3vnWAcW-awr2lrad01jZECqNSao-mbznW8rQUVPZNUA2OAxiyh5pJViTFoSMr6DDrg0stByPiGaH0hQ0nzNl8T3jzev47zYSkUIBflYrCfjzl5vgDW0Vis:1mn1WZ:xpGWkUa0IRSyC8vEVW4nw4TU9uXy9HgF_oxOPZyes88','2021-11-30 16:41:35.774161');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_file`
--

DROP TABLE IF EXISTS `djangocms_file_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_file_file` (
  `cmsplugin_ptr_id` int NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `file_src_id` int DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_file_file_src_id_74ac14a5` (`file_src_id`),
  CONSTRAINT `djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id` FOREIGN KEY (`file_src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_file`
--

LOCK TABLES `djangocms_file_file` WRITE;
/*!40000 ALTER TABLE `djangocms_file_file` DISABLE KEYS */;
INSERT INTO `djangocms_file_file` VALUES (1580,'Offline form for Intensive Residential Training.','_blank','',36,'{}','default',0),(1981,'Offline form for Water Storage Scheme.','_blank','',40,'{}','default',0),(1987,'Offline form for Sewing Machine Scheme.','_blank','',39,'{}','default',0),(1990,'Offline form for Rural Shelter Scheme.','_blank','',38,'{}','default',0),(1993,'Offline form for Self Help Group Scheme.','_blank','',38,'{}','default',0),(2104,'Offline form for Water Storage Scheme.','_blank','',40,'{}','default',0),(2453,'Offline form for Intensive Residential Training.','_blank','',36,'{}','default',0),(2456,'Offline form for Water Storage Scheme.','_blank','',40,'{}','default',0),(2459,'Offline form for Sewing Machine Scheme.','_blank','',39,'{}','default',0),(2462,'Offline form for Rural Shelter Scheme.','_blank','',38,'{}','default',0),(2465,'Offline form for Self Help Group Scheme.','_blank','',38,'{}','default',0),(2468,'Offline form for Water Storage Scheme.','_blank','',40,'{}','default',0);
/*!40000 ALTER TABLE `djangocms_file_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_folder`
--

DROP TABLE IF EXISTS `djangocms_file_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_file_folder` (
  `template` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int NOT NULL,
  `folder_src_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_folder_folder_src_id_9558406a` (`folder_src_id`),
  CONSTRAINT `djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id` FOREIGN KEY (`folder_src_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_folder`
--

LOCK TABLES `djangocms_file_folder` WRITE;
/*!40000 ALTER TABLE `djangocms_file_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint unsigned NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_googlemap_googlemap_chk_1` CHECK ((`zoom` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

LOCK TABLES `djangocms_googlemap_googlemap` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemapmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemapmarker`
--

LOCK TABLES `djangocms_googlemap_googlemapmarker` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemaproute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemaproute`
--

LOCK TABLES `djangocms_googlemap_googlemaproute` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_icon_icon`
--

DROP TABLE IF EXISTS `djangocms_icon_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_icon_icon` (
  `cmsplugin_ptr_id` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_icon_icon`
--

LOCK TABLES `djangocms_icon_icon` WRITE;
/*!40000 ALTER TABLE `djangocms_icon_icon` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_icon_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_link_link`
--

DROP TABLE IF EXISTS `djangocms_link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `file_link_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  KEY `djangocms_link_link_file_link_id_c7869e4c` (`file_link_id`),
  CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_link_link`
--

LOCK TABLES `djangocms_link_link` WRITE;
/*!40000 ALTER TABLE `djangocms_link_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_picture_picture`
--

DROP TABLE IF EXISTS `djangocms_picture_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `width` int unsigned DEFAULT NULL,
  `picture_id` int DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int DEFAULT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `template` varchar(255) NOT NULL,
  `use_responsive_image` varchar(7) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`),
  KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`),
  CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`),
  CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `djangocms_picture_picture_height_3db3e080_check` CHECK ((`height` >= 0)),
  CONSTRAINT `djangocms_picture_picture_width_5bba3699_check` CHECK ((`width` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_picture_picture`
--

LOCK TABLES `djangocms_picture_picture` WRITE;
/*!40000 ALTER TABLE `djangocms_picture_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_picture_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_style_style`
--

DROP TABLE IF EXISTS `djangocms_style_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint unsigned DEFAULT NULL,
  `padding_right` smallint unsigned DEFAULT NULL,
  `padding_top` smallint unsigned DEFAULT NULL,
  `padding_bottom` smallint unsigned DEFAULT NULL,
  `margin_left` smallint unsigned DEFAULT NULL,
  `margin_right` smallint unsigned DEFAULT NULL,
  `margin_top` smallint unsigned DEFAULT NULL,
  `margin_bottom` smallint unsigned DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_style_style_margin_bottom_08e7c851_check` CHECK ((`margin_bottom` >= 0)),
  CONSTRAINT `djangocms_style_style_margin_left_e51dea0a_check` CHECK ((`margin_left` >= 0)),
  CONSTRAINT `djangocms_style_style_margin_right_40a4928b_check` CHECK ((`margin_right` >= 0)),
  CONSTRAINT `djangocms_style_style_margin_top_929f0506_check` CHECK ((`margin_top` >= 0)),
  CONSTRAINT `djangocms_style_style_padding_bottom_566948a6_check` CHECK ((`padding_bottom` >= 0)),
  CONSTRAINT `djangocms_style_style_padding_left_2426413b_check` CHECK ((`padding_left` >= 0)),
  CONSTRAINT `djangocms_style_style_padding_right_90146b20_check` CHECK ((`padding_right` >= 0)),
  CONSTRAINT `djangocms_style_style_padding_top_fbca5ac1_check` CHECK ((`padding_top` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_style_style`
--

LOCK TABLES `djangocms_style_style` WRITE;
/*!40000 ALTER TABLE `djangocms_style_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_style_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

LOCK TABLES `djangocms_text_ckeditor_text` WRITE;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` DISABLE KEYS */;
INSERT INTO `djangocms_text_ckeditor_text` VALUES (714,'<p style=\"color: #ff0000;\"><strong>Notifications</strong></p>'),(1176,'<p><strong>Related Links</strong></p>\n\n<p style=\"text-align: center;\"><a href=\"http://www.india.gov.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/india.png\"></a> <a href=\"http://www.manipur.gov.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/manipur.png\"></a> <a href=\"http://www.dacnet.nic.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/dacnet.png\"></a> <a href=\"http://www.agmarknet.nic.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/agmarket.png\"></a> </p>\n\n<p style=\"text-align: center;\"><a href=\"http://www.agricoop.nic.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/deptagri.png\"></a></p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>'),(1178,'<p><strong>Related Links</strong></p>\n\n<p style=\"text-align: center;\"><a href=\"http://www.india.gov.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/india.png\"></a> <a href=\"http://www.manipur.gov.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/manipur.png\"></a> <a href=\"http://www.dacnet.nic.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/dacnet.png\"></a> <a href=\"http://www.agmarknet.nic.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/agmarket.png\"></a> </p>\n\n<p style=\"text-align: center;\"><a href=\"http://www.agricoop.nic.in/\" target=\"_blank\"><img src=\"https://horticulture.mn.gov.in/images/relatedimage/deptagri.png\"></a></p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>'),(1179,'<p tabindex=\"0\"><strong>This will enable people with visual impairments access the website using assistive technologies, such as screen readers.</strong></p>\n\n<p tabindex=\"0\"><strong>The information of the website is accessible with different screen readers.</strong></p>\n\n<p tabindex=\"0\"><a href=\"http://www.gwmicro.com/Window-Eyes/\" target=\"_blank\">http://www.gwmicro.com/Window-Eyes/</a></p>\n\n<p tabindex=\"0\"><a href=\"http://webanywhere.cs.washington.edu/wa.php\" target=\"_blank\">http://webanywhere.cs.washington.edu/wa.php</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.screenreader.net/index.php?pageid=2\" target=\"_blank\">http://www.screenreader.net/index.php?pageid=2</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.satogo.com/\" target=\"_blank\">http://www.satogo.com/</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.yourdolphin.co.uk/productdetail.asp?id=1\" target=\"_blank\">http://www.yourdolphin.co.uk/productdetail.asp?id=1</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.nvda-project.org/\" target=\"_blank\">http://www.nvda-project.org/</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.freedomscientific.com/jaws-hq.asp\" target=\"_blank\">http://www.freedomscientific.com/jaws-hq.asp</a></p>\n\n<p tabindex=\"0\"> </p>\n\n<p tabindex=\"0\"> </p>'),(1181,'<p tabindex=\"0\"><strong>This will enable people with visual impairments access the website using assistive technologies, such as screen readers.</strong></p>\n\n<p tabindex=\"0\"><strong>The information of the website is accessible with different screen readers.</strong></p>\n\n<p tabindex=\"0\"><a href=\"http://www.gwmicro.com/Window-Eyes/\" target=\"_blank\">http://www.gwmicro.com/Window-Eyes/</a></p>\n\n<p tabindex=\"0\"><a href=\"http://webanywhere.cs.washington.edu/wa.php\" target=\"_blank\">http://webanywhere.cs.washington.edu/wa.php</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.screenreader.net/index.php?pageid=2\" target=\"_blank\">http://www.screenreader.net/index.php?pageid=2</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.satogo.com/\" target=\"_blank\">http://www.satogo.com/</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.yourdolphin.co.uk/productdetail.asp?id=1\" target=\"_blank\">http://www.yourdolphin.co.uk/productdetail.asp?id=1</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.nvda-project.org/\" target=\"_blank\">http://www.nvda-project.org/</a></p>\n\n<p tabindex=\"0\"><a href=\"http://www.freedomscientific.com/jaws-hq.asp\" target=\"_blank\">http://www.freedomscientific.com/jaws-hq.asp</a></p>\n\n<p tabindex=\"0\"> </p>\n\n<p tabindex=\"0\"> </p>'),(1293,'<p><strong>Notifications</strong></p>'),(1491,'<p><strong><cms-plugin alt=\"Link / Button - 1492 \" title=\"Link / Button - 1492\" id=\"1492\"></cms-plugin></strong></p>\n\n<p><strong><cms-plugin alt=\"Link / Button - 1493 \" title=\"Link / Button - 1493\" id=\"1493\"></cms-plugin></strong></p>\n\n<p><strong><cms-plugin alt=\"Link / Button - 1494 \" title=\"Link / Button - 1494\" id=\"1494\"></cms-plugin></strong></p>'),(1575,'<p style=\"text-align: center; margin-bottom: 2px;\"><b>FOR OFFLINE APPLICATION</b></p>'),(1579,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - note.pdf \" title=\"File - note.pdf\" id=\"1580\"></cms-plugin></p>'),(1726,'<article style=\"\">\n<div class=\"rounded py-1 my-3 bg-primary\" id=\"pagecontent-title\" style=\"text-align: center;\"><b>Tribal Affair and Hills</b></div>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Senectus et netus et malesuada fames ac. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Sed lectus vestibulum mattis ullamcorper velit. Auctor neque vitae tempus quam pellentesque nec nam aliquam. Viverra aliquet eget sit amet tellus cras adipiscing enim. Nam libero justo laoreet sit amet cursus sit amet dictum. Ullamcorper a lacus vestibulum sed arcu non odio. Sed enim ut sem viverra aliquet eget sit. Vitae proin sagittis nisl rhoncus mattis rhoncus urna. Amet cursus sit amet dictum sit amet justo. Cursus in hac habitasse platea dictumst quisque sagittis purus sit. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Diam volutpat commodo sed egestas egestas fringilla phasellus. Nisl purus in mollis nunc sed id. Semper viverra nam libero justo laoreet sit amet cursus sit. Molestie nunc non blandit massa. Netus et malesuada fames ac turpis egestas maecenas.</p>\n\n<p>Venenatis urna cursus eget nunc scelerisque viverra mauris in. Vestibulum lorem sed risus ultricies tristique nulla aliquet. Consequat nisl vel pretium lectus quam id leo in vitae. Morbi tristique senectus et netus. Pellentesque elit eget gravida cum sociis natoque penatibus et magnis. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Elementum nibh tellus molestie nunc. Montes nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Sit amet nisl purus in mollis nunc sed id semper. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh. Pretium fusce id velit ut tortor pretium viverra suspendisse. Quis lectus nulla at volutpat diam ut venenatis tellus in. Dui vivamus arcu felis bibendum ut. Cras sed felis eget velit. Et malesuada fames ac turpis egestas integer.</p>\n\n<p>Leo a diam sollicitudin tempor id eu nisl nunc mi. Tellus rutrum tellus pellentesque eu tincidunt tortor. Blandit turpis cursus in hac. Amet justo donec enim diam vulputate ut pharetra. Quisque id diam vel quam elementum pulvinar etiam. Quis blandit turpis cursus in. Amet consectetur adipiscing elit duis tristique. Sed tempus urna et pharetra pharetra massa. Vel risus commodo viverra maecenas accumsan lacus. Fringilla urna porttitor rhoncus dolor purus. Adipiscing bibendum est ultricies integer quis. Enim diam vulputate ut pharetra sit amet aliquam. In mollis nunc sed id.</p>\n\n<p style=\"text-align: justify;\"> </p>\n</article>'),(1728,'<h4>Contact Us</h4>\n\n<hr>\n<p style=\"text-align: center;\"> </p>\n\n<p style=\"text-align: center;\"><strong>Tribal Affairs and Hills</strong></p>\n\n<p style=\"text-align: center;\">Near Police Hd.Qtr., Sanakhwa Yaima Kollup, Imphal, Manipur 795001</p>\n\n<p style=\"text-align: center;\"> </p>'),(1980,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - waters.pdf \" title=\"File - waters.pdf\" id=\"1981\"></cms-plugin></p>'),(1986,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - sewingm.pdf \" title=\"File - sewingm.pdf\" id=\"1987\"></cms-plugin></p>'),(1989,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - rs.pdf \" title=\"File - rs.pdf\" id=\"1990\"></cms-plugin></p>'),(1992,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - rs.pdf \" title=\"File - rs.pdf\" id=\"1993\"></cms-plugin></p>'),(2103,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - waters.pdf \" title=\"File - waters.pdf\" id=\"2104\"></cms-plugin></p>'),(2168,'<h4>About Us</h4>\n\n<hr>\n<p>    Tellus at urna condimentum mattis pellentesque id nibh tortor id. Sed risus pretium quam vulputate dignissim suspendisse in. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Nec ullamcorper sit amet risus nullam. Mauris a diam maecenas sed. Tortor vitae purus faucibus ornare. Aliquam ultrices sagittis orci a scelerisque purus semper eget. Nibh nisl condimentum id venenatis a condimentum. Purus in mollis nunc sed id semper. Consequat nisl vel pretium lectus.</p>\n\n<p>Nibh ipsum consequat nisl vel. In vitae turpis massa sed elementum tempus egestas sed sed. Varius morbi enim nunc faucibus a pellentesque. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Felis eget nunc lobortis mattis. Tempus urna et pharetra pharetra massa massa ultricies. Volutpat diam ut venenatis tellus in metus vulputate eu scelerisque. Morbi tincidunt augue interdum velit euismod in. Rutrum quisque non tellus orci ac auctor augue mauris augue. Proin libero nunc consequat interdum varius sit. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque.</p>\n\n<p style=\"text-align: center;\"> </p>'),(2172,'<h4>Contact Us</h4>\n\n<hr>\n<p style=\"text-align: center;\"> </p>\n\n<p style=\"text-align: center;\"><strong>Tribal Affairs and Hills</strong></p>\n\n<p style=\"text-align: center;\">Near Police Hd.Qtr., Sanakhwa Yaima Kollup, Imphal, Manipur 795001</p>\n\n<p style=\"text-align: center;\"> </p>'),(2177,'<div style=\"text-align: center;\"><cms-plugin alt=\"Picture / Image - 2179 \" title=\"Picture / Image - 2179\" id=\"2179\"></cms-plugin> </div>\n\n<div style=\"text-align: center;\">Hon\'ble Minister</div>\n\n<p> </p>'),(2185,'<div style=\"text-align: center;\"><cms-plugin alt=\"Picture / Image - 2186 \" title=\"Picture / Image - 2186\" id=\"2186\"></cms-plugin></div>\n\n<div style=\"text-align: center;\"> </div>\n\n<div style=\"text-align: center;\">Additional Chief Secretary</div>\n\n<p> </p>'),(2390,'<p style=\"text-align: center; margin-bottom: 2px;\"><b>Apply for Scheme / Training Online Here</b></p>'),(2393,'<p>Water-Storage/Sewing-Machine/Rural-Shelter             <a href=\"/\">Apply Here</a></p>'),(2395,'<p>Self Help Group                                                             <a href=\"/\">Apply Here</a></p>'),(2397,'<p>Intensive Residential Training                                        <a href=\"/\">Apply Here</a></p>'),(2402,'<article style=\"\">\n<div class=\"rounded py-1 my-3\" id=\"pagecontent-title\" style=\"background-color: rgb(255, 0, 0); text-align: center;\"><b>GENERAL INSTRUCTION FOR FORM FILL-UP</b></div>\n\n<p><b>• One Applicant can apply once.<br>\n• Applicant should enclosed his/her photo copy in Jpeg/png format.<br>\n• Aadhaar number is compulsary for the applicant.<br>\n• Scan copy of the aadhaar in PDF format for the applicant should be enclosed.<br>\n• Scan copy of the Income certificate in PDF format issued by DC/SDO/SDC should be enclosed.<br>\n• Photo Copy of the signature in Jpeg/Png is mandatory.<br>\n• Aadhaar copy,Income certificate copy should be in PDF format and maximum size of 400kb.<br>\n• Signature photo,Applicant\'s photo should be in JPEG/PNG format and maximum size of 400kb.<br>\n• After the completion of form fill-up,a copy of the details can be printed.<br>\n• Once applied,you can check the status in the CHECK MY STATUS button above by entering the registered mobile number and Aadhaar No.</b></p>\n\n<form action=\"\" id=\"w0\" method=\"post\">\n<p><label><input id=\"checkcl\" name=\"HousingRegistrationSearch[check]\" type=\"checkbox\" value=\"1\"> I have read and accepted the above instructions carefully</label></p>\n</form>\n\n<p style=\"text-align: justify;\"> </p>\n</article>'),(2404,'<div><b><span style=\"color: #ff0000;\">* Notes</span> :</b><br>\n• Read all the <b>Instructions</b> carefully first.<br>\n• After that, click on the <b>\"I have read and accepted the above instructions carefully\"</b> checkbox.<br>\n• Then,<b>Continue</b> button will appear. Now,click on <b>Continue</b> Button.<br>\n• It will redirect to <b>Verification Page</b>.Then, Verify your <b>Phone</b> and <b>Aadhaar</b>.</div>\n\n<div>• Once <b>Verified</b>, you can fill up the form. If you <b>already applied</b>, you will not be allowed to apply again.<br>\n• In order to make change to your previous application,click on CHANGE REGISTRATION.You need to upload your PHOTO,AADHAAR COPY,INCOME COPY and SIGNATURE again.</div>'),(2406,'<article style=\"\">\n<div class=\"rounded py-1 my-3\" id=\"pagecontent-title\" style=\"background-color: rgb(255, 0, 0); text-align: center;\"><b>GENERAL INSTRUCTION FOR FORM FILL-UP</b></div>\n\n<p><b>• One Applicant can apply once.<br>\n• Applicant should enclosed his/her photo copy in Jpeg/png format.<br>\n• Aadhaar number is compulsary for the applicant.<br>\n• Scan copy of the aadhaar in PDF format for the applicant should be enclosed.<br>\n• Scan copy of the Income certificate in PDF format issued by DC/SDO/SDC should be enclosed.<br>\n• Photo Copy of the signature in Jpeg/Png is mandatory.<br>\n• Aadhaar copy,Income certificate copy should be in PDF format and maximum size of 400kb.<br>\n• Signature photo,Applicant\'s photo should be in JPEG/PNG format and maximum size of 400kb.<br>\n• After the completion of form fill-up,a copy of the details can be printed.<br>\n• Once applied,you can check the status in the CHECK MY STATUS button above by entering the registered mobile number and Aadhaar No.</b></p>\n\n<form action=\"\" id=\"w0\" method=\"post\">\n<p><label><input id=\"checkcl\" name=\"HousingRegistrationSearch[check]\" type=\"checkbox\" value=\"1\"> I have read and accepted the above instructions carefully</label></p>\n</form>\n\n<p style=\"text-align: justify;\"> </p>\n</article>'),(2408,'<div><b><span style=\"color: #ff0000;\">* Notes</span> :</b><br>\n• Read all the <b>Instructions</b> carefully first.<br>\n• After that, click on the <b>\"I have read and accepted the above instructions carefully\"</b> checkbox.<br>\n• Then,<b>Continue</b> button will appear. Now,click on <b>Continue</b> Button.<br>\n• It will redirect to <b>Verification Page</b>.Then, Verify your <b>Phone</b> and <b>Aadhaar</b>.</div>\n\n<div>• Once <b>Verified</b>, you can fill up the form. If you <b>already applied</b>, you will not be allowed to apply again.<br>\n• In order to make change to your previous application,click on CHANGE REGISTRATION.You need to upload your PHOTO,AADHAAR COPY,INCOME COPY and SIGNATURE again.</div>'),(2412,'<p style=\"text-align: center; margin-bottom: 2px;\"><b>Apply for Scheme / Training Online Here</b></p>'),(2415,'<p>Water-Storage/Sewing-Machine/Rural-Shelter             <a href=\"/\">Apply Here</a></p>'),(2417,'<p>Self Help Group                                                             <a href=\"/\">Apply Here</a></p>'),(2419,'<p>Intensive Residential Training                                        <a href=\"/\">Apply Here</a></p>'),(2421,'<article style=\"\">\n<div class=\"rounded py-1 my-3\" id=\"pagecontent-title\" style=\"background-color: rgb(255, 0, 0); text-align: center;\"><b>GENERAL INSTRUCTION FOR FORM FILL-UP</b></div>\n\n<p><b>• One Applicant can apply once.<br>\n• Applicant should enclosed his/her photo copy in Jpeg/png format.<br>\n• Aadhaar number is compulsary for the applicant.<br>\n• Scan copy of the aadhaar in PDF format for the applicant should be enclosed.<br>\n• Scan copy of the Income certificate in PDF format issued by DC/SDO/SDC should be enclosed.<br>\n• Photo Copy of the signature in Jpeg/Png is mandatory.<br>\n• Aadhaar copy,Income certificate copy should be in PDF format and maximum size of 400kb.<br>\n• Signature photo,Applicant\'s photo should be in JPEG/PNG format and maximum size of 400kb.<br>\n• After the completion of form fill-up,a copy of the details can be printed.<br>\n• Once applied,you can check the status in the CHECK MY STATUS button above by entering the registered mobile number and Aadhaar No.</b></p>\n\n<form action=\"\" id=\"w0\" method=\"post\">\n<p><label><input id=\"checkcl\" name=\"HousingRegistrationSearch[check]\" type=\"checkbox\" value=\"1\"> I have read and accepted the above instructions carefully</label></p>\n</form>\n\n<p style=\"text-align: justify;\"> </p>\n</article>'),(2423,'<div><b><span style=\"color: #ff0000;\">* Notes</span> :</b><br>\n• Read all the <b>Instructions</b> carefully first.<br>\n• After that, click on the <b>\"I have read and accepted the above instructions carefully\"</b> checkbox.<br>\n• Then,<b>Continue</b> button will appear. Now,click on <b>Continue</b> Button.<br>\n• It will redirect to <b>Verification Page</b>.Then, Verify your <b>Phone</b> and <b>Aadhaar</b>.</div>\n\n<div>• Once <b>Verified</b>, you can fill up the form. If you <b>already applied</b>, you will not be allowed to apply again.<br>\n• In order to make change to your previous application,click on CHANGE REGISTRATION.You need to upload your PHOTO,AADHAAR COPY,INCOME COPY and SIGNATURE again.</div>'),(2424,'<h4><strong>About Tribal Affair and Hills</strong></h4>\n\n<p>    Tellus at urna condimentum mattis pellentesque id nibh tortor id. Sed risus pretium quam vulputate dignissim suspendisse in. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Nec ullamcorper sit amet risus nullam. Mauris a diam maecenas sed. Tortor vitae purus faucibus ornare. Aliquam ultrices sagittis orci a scelerisque purus semper eget. Nibh nisl condimentum id venenatis a condimentum. Purus in mollis nunc sed id semper. Consequat nisl vel pretium lectus.</p>\n\n<p>Nibh ipsum consequat nisl vel. In vitae turpis massa sed elementum tempus egestas sed sed. Varius morbi enim nunc faucibus a pellentesque........<cms-plugin alt=\"Link / Button - 2425 \" title=\"Link / Button - 2425\" id=\"2425\"></cms-plugin></p>\n\n<p> </p>'),(2430,'<div style=\"text-align: center;\"><cms-plugin alt=\"Picture / Image - 2431 \" title=\"Picture / Image - 2431\" id=\"2431\"></cms-plugin> </div>\n\n<div style=\"text-align: center;\">Hon\'ble Minister</div>\n\n<p> </p>'),(2434,'<div style=\"text-align: center;\"><cms-plugin alt=\"Picture / Image - 2435 \" title=\"Picture / Image - 2435\" id=\"2435\"></cms-plugin></div>\n\n<div style=\"text-align: center;\"> </div>\n\n<div style=\"text-align: center;\">Additional Chief Secretary</div>\n\n<p> </p>'),(2440,'<p><strong>Notifications</strong></p>'),(2442,'<p><strong><cms-plugin alt=\"Link / Button - 2443 \" title=\"Link / Button - 2443\" id=\"2443\"></cms-plugin></strong></p>\n\n<p><strong><cms-plugin alt=\"Link / Button - 2444 \" title=\"Link / Button - 2444\" id=\"2444\"></cms-plugin></strong></p>\n\n<p><strong><cms-plugin alt=\"Link / Button - 2445 \" title=\"Link / Button - 2445\" id=\"2445\"></cms-plugin></strong></p>'),(2447,'<p style=\"color: #ff0000;\"><strong>Notifications</strong></p>'),(2450,'<p style=\"text-align: center; margin-bottom: 2px;\"><b>FOR OFFLINE APPLICATION</b></p>'),(2452,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - note.pdf \" title=\"File - note.pdf\" id=\"2453\"></cms-plugin></p>'),(2455,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - waters.pdf \" title=\"File - waters.pdf\" id=\"2456\"></cms-plugin></p>'),(2458,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - sewingm.pdf \" title=\"File - sewingm.pdf\" id=\"2459\"></cms-plugin></p>'),(2461,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - rs.pdf \" title=\"File - rs.pdf\" id=\"2462\"></cms-plugin></p>'),(2464,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - rs.pdf \" title=\"File - rs.pdf\" id=\"2465\"></cms-plugin></p>'),(2467,'<p style=\"margin: 0; padding-bottom: 5px;\"><cms-plugin alt=\"File - waters.pdf \" title=\"File - waters.pdf\" id=\"2468\"></cms-plugin></p>'),(2475,'<h4><strong>About Tribal Affair and Hills</strong></h4>\n\n<p>    Tellus at urna condimentum mattis pellentesque id nibh tortor id. Sed risus pretium quam vulputate dignissim suspendisse in. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Nec ullamcorper sit amet risus nullam. Mauris a diam maecenas sed. Tortor vitae purus faucibus ornare. Aliquam ultrices sagittis orci a scelerisque purus semper eget. Nibh nisl condimentum id venenatis a condimentum. Purus in mollis nunc sed id semper. Consequat nisl vel pretium lectus.</p>\n\n<p>Nibh ipsum consequat nisl vel. In vitae turpis massa sed elementum tempus egestas sed sed. Varius morbi enim nunc faucibus a pellentesque........<cms-plugin alt=\"Link / Button - 2476 \" title=\"Link / Button - 2476\" id=\"2476\"></cms-plugin></p>\n\n<p> </p>'),(2478,'<article style=\"\">\n<div class=\"rounded py-1 my-3 bg-primary\" id=\"pagecontent-title\" style=\"text-align: center;\"><b>Tribal Affair and Hills</b></div>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Senectus et netus et malesuada fames ac. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Sed lectus vestibulum mattis ullamcorper velit. Auctor neque vitae tempus quam pellentesque nec nam aliquam. Viverra aliquet eget sit amet tellus cras adipiscing enim. Nam libero justo laoreet sit amet cursus sit amet dictum. Ullamcorper a lacus vestibulum sed arcu non odio. Sed enim ut sem viverra aliquet eget sit. Vitae proin sagittis nisl rhoncus mattis rhoncus urna. Amet cursus sit amet dictum sit amet justo. Cursus in hac habitasse platea dictumst quisque sagittis purus sit. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Diam volutpat commodo sed egestas egestas fringilla phasellus. Nisl purus in mollis nunc sed id. Semper viverra nam libero justo laoreet sit amet cursus sit. Molestie nunc non blandit massa. Netus et malesuada fames ac turpis egestas maecenas.</p>\n\n<p>Venenatis urna cursus eget nunc scelerisque viverra mauris in. Vestibulum lorem sed risus ultricies tristique nulla aliquet. Consequat nisl vel pretium lectus quam id leo in vitae. Morbi tristique senectus et netus. Pellentesque elit eget gravida cum sociis natoque penatibus et magnis. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Elementum nibh tellus molestie nunc. Montes nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Sit amet nisl purus in mollis nunc sed id semper. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh. Pretium fusce id velit ut tortor pretium viverra suspendisse. Quis lectus nulla at volutpat diam ut venenatis tellus in. Dui vivamus arcu felis bibendum ut. Cras sed felis eget velit. Et malesuada fames ac turpis egestas integer.</p>\n\n<p>Leo a diam sollicitudin tempor id eu nisl nunc mi. Tellus rutrum tellus pellentesque eu tincidunt tortor. Blandit turpis cursus in hac. Amet justo donec enim diam vulputate ut pharetra. Quisque id diam vel quam elementum pulvinar etiam. Quis blandit turpis cursus in. Amet consectetur adipiscing elit duis tristique. Sed tempus urna et pharetra pharetra massa. Vel risus commodo viverra maecenas accumsan lacus. Fringilla urna porttitor rhoncus dolor purus. Adipiscing bibendum est ultricies integer quis. Enim diam vulputate ut pharetra sit amet aliquam. In mollis nunc sed id.</p>\n\n<p style=\"text-align: justify;\"> </p>\n</article>'),(2480,'<h4>Contact Us</h4>\n\n<hr>\n<p style=\"text-align: center;\"> </p>\n\n<p style=\"text-align: center;\"><strong>Tribal Affairs and Hills</strong></p>\n\n<p style=\"text-align: center;\">Near Police Hd.Qtr., Sanakhwa Yaima Kollup, Imphal, Manipur 795001</p>\n\n<p style=\"text-align: center;\"> </p>'),(2482,'<h4>About Us</h4>\n\n<hr>\n<p>    Tellus at urna condimentum mattis pellentesque id nibh tortor id. Sed risus pretium quam vulputate dignissim suspendisse in. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Nec ullamcorper sit amet risus nullam. Mauris a diam maecenas sed. Tortor vitae purus faucibus ornare. Aliquam ultrices sagittis orci a scelerisque purus semper eget. Nibh nisl condimentum id venenatis a condimentum. Purus in mollis nunc sed id semper. Consequat nisl vel pretium lectus.</p>\n\n<p>Nibh ipsum consequat nisl vel. In vitae turpis massa sed elementum tempus egestas sed sed. Varius morbi enim nunc faucibus a pellentesque. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Felis eget nunc lobortis mattis. Tempus urna et pharetra pharetra massa massa ultricies. Volutpat diam ut venenatis tellus in metus vulputate eu scelerisque. Morbi tincidunt augue interdum velit euismod in. Rutrum quisque non tellus orci ac auctor augue mauris augue. Proin libero nunc consequat interdum varius sit. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque.</p>\n\n<p style=\"text-align: center;\"> </p>');
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videoplayer`
--

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `parameters` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_poster_id_07790e24` (`poster_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_poster_id_07790e24_fk_filer_ima` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

LOCK TABLES `djangocms_video_videoplayer` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videosource`
--

DROP TABLE IF EXISTS `djangocms_video_videosource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_source_file_id_16f11167` (`source_file_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_source_file_id_16f11167_fk_filer_fil` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videosource`
--

LOCK TABLES `djangocms_video_videosource` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videosource` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videosource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videotrack`
--

DROP TABLE IF EXISTS `djangocms_video_videotrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_src_id_e5a015d8` (`src_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videotrack`
--

LOCK TABLES `djangocms_video_videotrack` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videotrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videotrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (34,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965/pexels-ali-yasser-arwand-693521.jpg','2021-10-07 19:08:44.766000'),(35,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894/pexels-pixabay-459225.jpg','2021-11-16 11:31:16.090453'),(36,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/20/ac/20ac9148-5bb8-447e-b245-81da175e980b/note.pdf','2021-10-07 19:50:20.689000'),(37,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d/cm_manipur.jpg','2021-10-07 20:20:07.816000'),(38,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/4d/70/4d70687c-8aef-41be-b574-9c69c6f47cdb/rs.pdf','2021-11-10 03:52:09.632845'),(39,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/fe/07/fe07fa78-e2dd-4ef0-8d65-9cea472e3f69/sewingm.pdf','2021-11-10 03:52:09.673869'),(40,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/b5/2f/b52ffbe5-a88c-427b-a723-9b0296505412/waters.pdf','2021-11-10 03:52:09.709357'),(41,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png','2021-11-16 11:10:27.067948');
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (79,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965\\pexels-ali-yasser-arwand-693521.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:27.229000',34),(80,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965\\pexels-ali-yasser-arwand-693521.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:27.782000',34),(81,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965\\pexels-ali-yasser-arwand-693521.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:28.340000',34),(82,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965\\pexels-ali-yasser-arwand-693521.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:28.888000',34),(83,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965\\pexels-ali-yasser-arwand-693521.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:29.485000',34),(84,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894\\pexels-pixabay-459225.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:31.302000',35),(85,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894\\pexels-pixabay-459225.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:32.182000',35),(86,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894\\pexels-pixabay-459225.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:33.056000',35),(87,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894\\pexels-pixabay-459225.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:34.151000',35),(88,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894\\pexels-pixabay-459225.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2021-10-07 19:08:35.221000',35),(89,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965\\pexels-ali-yasser-arwand-693521.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2021-10-07 19:08:44.954000',34),(90,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d\\cm_manipur.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2021-10-07 20:19:21.479000',37),(91,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d\\cm_manipur.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2021-10-07 20:19:22.283000',37),(92,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d\\cm_manipur.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2021-10-07 20:19:22.823000',37),(93,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d\\cm_manipur.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2021-10-07 20:19:23.206000',37),(94,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d\\cm_manipur.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2021-10-07 20:19:23.853000',37),(95,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d\\cm_manipur.jpg__214x215_q85_subsampling-2.jpg','2021-10-07 20:20:07.926000',37),(96,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png__16x16_q85_crop_subsampling-2_upscale.png','2021-11-16 11:10:21.844918',41),(97,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png__32x32_q85_crop_subsampling-2_upscale.png','2021-11-16 11:10:21.871068',41),(98,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png__48x48_q85_crop_subsampling-2_upscale.png','2021-11-16 11:10:21.896258',41),(99,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png__64x64_q85_crop_subsampling-2_upscale.png','2021-11-16 11:10:21.919514',41),(100,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png__180x180_q85_crop_subsampling-2_upscale.png','2021-11-16 11:10:21.953308',41),(101,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png__860x693_q85_subsampling-2.png','2021-11-16 11:10:27.075238',41),(102,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894/pexels-pixabay-459225.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2021-11-16 11:31:16.097226',35);
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int NOT NULL,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`),
  CONSTRAINT `easy_thumbnails_thumbnaildimensions_chk_1` CHECK ((`width` >= 0)),
  CONSTRAINT `easy_thumbnails_thumbnaildimensions_chk_2` CHECK ((`height` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_clipboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
INSERT INTO `filer_clipboard` VALUES (1,1);
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clipboard_id` int NOT NULL,
  `file_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `polymorphic_ctype_id` int DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
INSERT INTO `filer_file` VALUES (34,'filer_public/15/78/15784c30-78c6-4300-9a1e-802bd8ed3965/pexels-ali-yasser-arwand-693521.jpg',3976803,'90df4bd519e054b7ffbec2feb3dcf0aab3fb5955',0,'pexels-ali-yasser-arwand-693521.jpg','',NULL,'2021-10-07 19:08:25.889000','2021-10-07 19:08:25.889000',1,3,1,30,'image/jpeg'),(35,'filer_public/87/d1/87d198e9-7f6b-4ec5-9297-fd8304eb4894/pexels-pixabay-459225.jpg',4051554,'e38f315028a06f876b70b7cd921f64c693a53fc0',0,'pexels-pixabay-459225.jpg','',NULL,'2021-10-07 19:08:30.040000','2021-10-07 19:08:30.040000',1,3,1,30,'image/jpeg'),(36,'filer_public/20/ac/20ac9148-5bb8-447e-b245-81da175e980b/note.pdf',828101,'8819ff4b2f9f94f8eed9df6a655a9ae040d7b6df',0,'note.pdf','',NULL,'2021-10-07 19:50:20.982000','2021-10-07 19:50:20.983000',1,4,1,27,'application/pdf'),(37,'filer_public/ac/4b/ac4bc88a-5b74-4aeb-acee-35dc231e3c0d/cm_manipur.jpg',48439,'3f26a97aa1a898408b5548990233ae11adbe6854',0,'CM_manipur.jpg','',NULL,'2021-10-07 20:19:16.716000','2021-10-07 20:19:16.716000',1,3,1,30,'image/jpeg'),(38,'filer_public/4d/70/4d70687c-8aef-41be-b574-9c69c6f47cdb/rs.pdf',328686,'2ab92323d005e8016a27019d1ec576a0288a59e7',0,'rs.pdf','',NULL,'2021-11-10 03:52:09.642343','2021-11-10 03:52:09.642373',1,4,1,27,'application/pdf'),(39,'filer_public/fe/07/fe07fa78-e2dd-4ef0-8d65-9cea472e3f69/sewingm.pdf',329614,'523471f4fa5d44b0d535dc243783fdba36ec76e7',0,'sewingm.pdf','',NULL,'2021-11-10 03:52:09.683379','2021-11-10 03:52:09.683412',1,4,1,27,'application/pdf'),(40,'filer_public/b5/2f/b52ffbe5-a88c-427b-a723-9b0296505412/waters.pdf',329790,'cda16075b038b0b02eb0a462c91877171b1e1f15',0,'waters.pdf','',NULL,'2021-11-10 03:52:09.715665','2021-11-10 03:52:09.715693',1,4,1,27,'application/pdf'),(41,'filer_public/c4/75/c475ca6a-b095-4469-b9f4-c2d897fb0889/download_2.png',16968,'39c24a745f3701820c3ac98fef45ece2d0ca0fe0',0,'download (2).png','',NULL,'2021-11-16 11:10:21.790351','2021-11-16 11:10:21.790378',1,4,1,30,'image/png');
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_folder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int unsigned NOT NULL,
  `rght` int unsigned NOT NULL,
  `tree_id` int unsigned NOT NULL,
  `level` int unsigned NOT NULL,
  `owner_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  KEY `filer_folder_tree_id_lft_088ce52b_idx` (`tree_id`,`lft`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folder_chk_1` CHECK ((`lft` >= 0)),
  CONSTRAINT `filer_folder_chk_2` CHECK ((`rght` >= 0)),
  CONSTRAINT `filer_folder_chk_3` CHECK ((`tree_id` >= 0)),
  CONSTRAINT `filer_folder_chk_4` CHECK ((`level` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
INSERT INTO `filer_folder` VALUES (3,'photo','2021-09-30 07:01:31.631000','2021-09-30 07:01:31.631000','2021-09-30 07:01:31.631000',1,2,1,0,1,NULL),(4,'doc','2021-09-30 07:36:32.315000','2021-09-30 07:36:32.315000','2021-09-30 07:36:32.315000',1,2,2,0,1,NULL);
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_folderpermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` smallint NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint DEFAULT NULL,
  `can_read` smallint DEFAULT NULL,
  `can_add_children` smallint DEFAULT NULL,
  `folder_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int NOT NULL,
  `_height` int DEFAULT NULL,
  `_width` int DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
INSERT INTO `filer_image` VALUES (34,2132,3791,'2021-10-07 19:08:25.500000',NULL,NULL,NULL,0,0,''),(35,2848,6000,'2021-10-07 19:08:29.921000',NULL,NULL,NULL,0,0,''),(37,215,214,'2021-10-07 20:19:15.365000',NULL,NULL,NULL,0,0,''),(41,693,860,'2021-11-16 11:10:21.784015',NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus_cachekey` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `menus_cachekey_chk_1` CHECK ((`site` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (248,'en',1,'cms_3.8.0_menu_nodes_en_1_1_user:public'),(249,'en',1,'cms_3.8.0_menu_nodes_en_1:public'),(250,'en',1,'cms_3.8.0_menu_nodes_en_1_1_user:draft');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-08  5:57:50
