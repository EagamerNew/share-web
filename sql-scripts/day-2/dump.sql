-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: fastfriday
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lessonId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (49,64,12,'attend'),(50,65,18,'attend');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(125) DEFAULT NULL,
  `sphereId` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `curator` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `studentCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,64,'1',1,'1','1','1','1',NULL,NULL,NULL),(2,69,'Тест1',0,'факт1','фио1','7077007733','hel@mail.ru','2019-01-11 06:00:00','2021-06-11 06:00:00',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_participant_map`
--

DROP TABLE IF EXISTS `company_participant_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_participant_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_participant_map_id_uindex` (`id`),
  KEY `company_participant_map_company_id_fk` (`companyId`),
  KEY `company_participant_map_participant_id_fk` (`participantId`),
  CONSTRAINT `company_participant_map_company_id_fk` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`),
  CONSTRAINT `company_participant_map_participant_id_fk` FOREIGN KEY (`participantId`) REFERENCES `participant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_participant_map`
--

LOCK TABLES `company_participant_map` WRITE;
/*!40000 ALTER TABLE `company_participant_map` DISABLE KEYS */;
INSERT INTO `company_participant_map` VALUES (23,2,1),(24,2,20);
/*!40000 ALTER TABLE `company_participant_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_graphic`
--

DROP TABLE IF EXISTS `education_graphic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_graphic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `dayId` int(11) NOT NULL,
  `timeStartId` int(11) NOT NULL,
  `timeEndId` int(11) NOT NULL,
  `educProgId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_graphic`
--

LOCK TABLES `education_graphic` WRITE;
/*!40000 ALTER TABLE `education_graphic` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_graphic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_program`
--

DROP TABLE IF EXISTS `education_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `specId` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `busy` int(11) NOT NULL,
  `theme` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_program`
--

LOCK TABLES `education_program` WRITE;
/*!40000 ALTER TABLE `education_program` DISABLE KEYS */;
INSERT INTO `education_program` VALUES (37,69,1,12,0,'fb');
/*!40000 ALTER TABLE `education_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (25),(25),(25),(25),(25);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacherId` int(11) NOT NULL,
  `educGraphId` int(11) NOT NULL,
  `qrText` varchar(255) NOT NULL,
  `mil` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `created` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (64,51,16,'a19fc25cbf0551f31b151ad29b1169b69d29c3b6fa0c55e49f5c7df2320ae3dd','','started','22.09.2019'),(65,60,20,'8e9980739d9beaa3615f22327f0fd750f895be1eb2b223de24b63e4be427e232','','started','22.09.2019'),(66,68,24,'550e04139459c9066553b68c21e50acb296945f834ce9aca483d48290f1bdce7','','started','07.10.2019');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) DEFAULT NULL,
  `lastname` varchar(45) NOT NULL,
  `surname` varchar(145) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(49) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `uchcenter` varchar(45) NOT NULL,
  `bin` varchar(45) DEFAULT NULL,
  `fact_address` varchar(45) DEFAULT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  `project_vmest` varchar(45) DEFAULT NULL,
  `srokObuch` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `lessons` varchar(45) DEFAULT NULL,
  `groups` varchar(45) DEFAULT NULL,
  `file_ustav` varchar(155) DEFAULT NULL,
  `file_rekvisity` varchar(155) DEFAULT NULL,
  `file_uchdocs` varchar(155) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `form` varchar(255) DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (64,'Айгуль','Мараткызы','Наурызбаева','nbrmediakz@gmail.com','+7 702 2557722','7022557722','We Art','180640003972','Жандосова 53а','Швейное дело','15','','1','1','1','WhatsApp Image 2019-09-19 at 17.16.30.jpeg','Реквизиты.docx','WhatsApp Image 2019-09-19 at 17.09.33.jpeg',NULL,NULL,NULL),(65,'БАУРЖАН','ОРЫНТАЕВИЧ','ТЛЕУКУЛОВ','enterprint@bk.ru','+7 708 493 2831','$veta1969','Интерпринт','000740004374','г.Алматы, ПРОСПЕКТ АБАЯ, 143/93','Бухгалтер','Обучение','','1','1','1','Устав.pdf','Реквизиты интерпринт.docx','Справка о гос рег.bmp.bmp',NULL,NULL,NULL),(68,'Анна','Николаевна','Беляева','akniet2030@gmail.com','7055751176','Suleyman789','ТОО «RiquezaGroup»','160940006904','мкр. Баянаул 46А','Мастер парикмахер','обучение','','1','1','1','Устав ТОО Riqueza Group .pdf','ТОО реквизиты KZ.docx','P30.01 - ru - 10100259426111.pdf',NULL,NULL,NULL),(69,'testing','testing','testing','190997@list.ru','7772539319','qwerty','testing','123123123123','testing','testing','500','','1','2','1','Отчёт. OneLife.pdf','Отчёт. OneLife.pdf','Отчёт. OneLife.pdf',NULL,NULL,NULL),(70,'admin czn','admin','admin','admincnz01@mail.ru','7777777777','123','Czn','123','123','123','1','1','1','1','1','131231','123312','132','312','1','1');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `idn` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(45) NOT NULL,
  `regionId` int(11) NOT NULL,
  `specId` int(11) NOT NULL,
  `qualId` int(11) NOT NULL,
  `educId` int(11) NOT NULL,
  `skills` varchar(40) NOT NULL,
  `attend` int(11) NOT NULL,
  `absent` int(11) NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,64,'Bauka','Bauka','Bauka','971213799799','781231231312','zivadinov.b@gmail.com','123',1,1,1,1,'',1,1,''),(20,64,'2','2','2','2','2','2','2',1,1,1,1,'',1,1,'');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulation`
--

DROP TABLE IF EXISTS `tabulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `fileUchet` varchar(55) NOT NULL,
  `fileSchet` varchar(55) NOT NULL,
  `fileAkt` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulation`
--

LOCK TABLES `tabulation` WRITE;
/*!40000 ALTER TABLE `tabulation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FK55itppkw3i07do3h7qoclqd4k` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_spec`
--

DROP TABLE IF EXISTS `user_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_spec`
--

LOCK TABLES `user_spec` WRITE;
/*!40000 ALTER TABLE `user_spec` DISABLE KEYS */;
INSERT INTO `user_spec` VALUES (43,1,'Модельер-закройщик',NULL),(44,1,'Конструкторы',NULL),(45,1,'Агент Коммерческого',NULL),(46,1,'Швейное дело',NULL),(47,1,'Агент (всех наименований',NULL),(48,1,'Секретарь - референт',NULL),(49,1,'Контролер-кассир',NULL),(50,1,'Бухгалтер',NULL),(53,1,'Юрист',NULL),(54,1,'Мастер парикмахер',NULL),(70,1,'testing2',NULL),(71,1,'testing',NULL),(72,69,'testing',NULL);
/*!40000 ALTER TABLE `user_spec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-15  2:26:20
