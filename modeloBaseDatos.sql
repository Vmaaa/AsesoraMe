-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: asesorame
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievement` (
  `name` varchar(45) NOT NULL,
  `description` varchar(450) NOT NULL,
  `points` int NOT NULL,
  `url` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement`
--

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` VALUES ('Aprendiz de Asesor','Genial, has completado 3 asesorías en total.',15,'url_imagen_3'),('Aprendiz Rápido','Completa 3 asesorías en 3 días consecutivos.',15,'url_imagen_7'),('Asesor de Élite','Asesor de élite, alcanza una calificación promedio de 4.5 estrellas en tus asesorías.',25,'url_imagen_14'),('Asesor Incansable','Asesor incansable, realiza 5 asesorías en 5 días consecutivos.',20,'url_imagen_8'),('Asesor Maestro','Gana tu insignia de \'Asesor Maestro\' al completar 15 asesorías en 15 días consecutivos.',60,'url_imagen_20'),('Asesoría en Grupo','Asesoría en grupo, realiza una asesoría con un grupo de 5 clientes.',20,'url_imagen_18'),('Asesoría Inicial','Felicidades, has completado tu primera asesoría.',10,'url_imagen_2'),('Avance Continuo','Avanza, has completado 5 asesorías en total.',20,'url_imagen_4'),('Camino hacia la Maestría','Camino hacia la maestría, completa una asesoría en cada día de la semana.',40,'url_imagen_19'),('Dedicación Continua','Dedicación continua, completa 10 asesorías en 10 días consecutivos.',30,'url_imagen_9'),('Diversificación de Conocimientos','Diversificación de conocimientos, completa asesorías en 5 categorías diferentes.',20,'url_imagen_12'),('Dominio Temático','Dominio temático, completa 10 asesorías en 10 categorías diferentes.',30,'url_imagen_13'),('Experto en Asesorías','Impresionante, has completado 10 asesorías en total.',30,'url_imagen_5'),('Experto Temático','Experto en temas específicos, completa 3 asesorías en la misma categoría.',15,'url_imagen_11'),('Leyenda de la Asesoría','Leyenda de la asesoría, alcanza una calificación promedio de 5 estrellas en tus asesorías.',50,'url_imagen_15'),('Maestro Asesor','Maestro de asesorías, has completado 15 asesorías en total.',50,'url_imagen_6'),('Maestro Consistente','Maestro consistente, realiza 15 asesorías en 15 días consecutivos.',50,'url_imagen_10'),('Maestro Motivador','Maestro motivador, inspira a 3 clientes a completar sus objetivos con tus asesorías.',30,'url_imagen_17'),('Primer registro','Completa tu primer registro en la aplicación.',5,'url_imagen_1'),('Solucionador de Problemas','Solucionador de problemas, ayuda a resolver 5 problemas complejos en asesorías.',25,'url_imagen_16');
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `idClassroom` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idClassroom`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computer`
--

DROP TABLE IF EXISTS `computer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computer` (
  `idComputer` int NOT NULL AUTO_INCREMENT,
  `details` varchar(350) DEFAULT NULL,
  `idLab` int NOT NULL,
  PRIMARY KEY (`idComputer`),
  KEY `fk_computer_laboratory_idx` (`idLab`),
  CONSTRAINT `fk_computer_laboratory` FOREIGN KEY (`idLab`) REFERENCES `laboratory` (`idLab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer`
--

LOCK TABLES `computer` WRITE;
/*!40000 ALTER TABLE `computer` DISABLE KEYS */;
/*!40000 ALTER TABLE `computer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counseling`
--

DROP TABLE IF EXISTS `counseling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counseling` (
  `idCounseling` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date DEFAULT NULL,
  `type` enum('Asesoria','Actividad extracurricular','Privada') NOT NULL DEFAULT 'Asesoria',
  `extracurricular_category` int DEFAULT NULL,
  `topics` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`idCounseling`),
  KEY `fk_counseling_extracurricular_category1_idx` (`extracurricular_category`),
  CONSTRAINT `foreing_key` FOREIGN KEY (`extracurricular_category`) REFERENCES `extracurricular_category` (`idCategory`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counseling`
--

LOCK TABLES `counseling` WRITE;
/*!40000 ALTER TABLE `counseling` DISABLE KEYS */;
/*!40000 ALTER TABLE `counseling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counseling_advisor`
--

DROP TABLE IF EXISTS `counseling_advisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counseling_advisor` (
  `idUser` varchar(10) NOT NULL,
  `idCounseling` int NOT NULL,
  PRIMARY KEY (`idCounseling`,`idUser`),
  KEY `fk_counseling_advisors_user1_idx` (`idUser`),
  KEY `fk_counseling_advisors_counseling1_idx` (`idCounseling`),
  CONSTRAINT `fk_counseling_advisors_counseling1` FOREIGN KEY (`idCounseling`) REFERENCES `counseling` (`idCounseling`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_counseling_advisors_user1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counseling_advisor`
--

LOCK TABLES `counseling_advisor` WRITE;
/*!40000 ALTER TABLE `counseling_advisor` DISABLE KEYS */;
/*!40000 ALTER TABLE `counseling_advisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counseling_enrolled`
--

DROP TABLE IF EXISTS `counseling_enrolled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counseling_enrolled` (
  `idCounseling` int NOT NULL,
  `idUser` varchar(10) NOT NULL,
  PRIMARY KEY (`idCounseling`,`idUser`),
  KEY `fk_counseling_enrolled_counseling1_idx` (`idCounseling`),
  KEY `fk_counseling_enrolled_user1_idx` (`idUser`),
  CONSTRAINT `fk_counseling_enrolled_counseling1` FOREIGN KEY (`idCounseling`) REFERENCES `counseling` (`idCounseling`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_counseling_enrolled_user1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counseling_enrolled`
--

LOCK TABLES `counseling_enrolled` WRITE;
/*!40000 ALTER TABLE `counseling_enrolled` DISABLE KEYS */;
/*!40000 ALTER TABLE `counseling_enrolled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day` (
  `day` varchar(9) NOT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES ('Domingo'),('Jueves'),('Lunes'),('Martes'),('Miercoles'),('Sabado'),('Viernes');
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_of_counseling`
--

DROP TABLE IF EXISTS `day_of_counseling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_of_counseling` (
  `idCounseling` int NOT NULL,
  `day` varchar(12) NOT NULL,
  `idModule_start` int NOT NULL,
  `idModule_end` int NOT NULL,
  `idDayOfCounseling` int NOT NULL AUTO_INCREMENT,
  `confirmed` tinyint DEFAULT '1',
  `idAdvisor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idDayOfCounseling`),
  KEY `fk_day_of_advisory_advisory1_idx` (`idCounseling`),
  KEY `fk_day_of_advisory_day1_idx` (`day`),
  KEY `fk_day_of_advisory_module1_idx` (`idModule_start`),
  KEY `fk_day_of_advisory_module2_idx` (`idModule_end`),
  KEY `fk_day_of_advisory_idAdvisor_idx` (`idAdvisor`),
  CONSTRAINT `fk_day_of_advisory_advisory1` FOREIGN KEY (`idCounseling`) REFERENCES `counseling` (`idCounseling`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_day_of_advisory_day1` FOREIGN KEY (`day`) REFERENCES `day` (`day`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_day_of_advisory_module1` FOREIGN KEY (`idModule_start`) REFERENCES `module` (`idModule`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_day_of_advisory_module2` FOREIGN KEY (`idModule_end`) REFERENCES `module` (`idModule`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_of_counseling`
--

LOCK TABLES `day_of_counseling` WRITE;
/*!40000 ALTER TABLE `day_of_counseling` DISABLE KEYS */;
/*!40000 ALTER TABLE `day_of_counseling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extracurricular_category`
--

DROP TABLE IF EXISTS `extracurricular_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extracurricular_category` (
  `name` varchar(45) NOT NULL,
  `idCategory` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idCategory`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extracurricular_category`
--

LOCK TABLES `extracurricular_category` WRITE;
/*!40000 ALTER TABLE `extracurricular_category` DISABLE KEYS */;
INSERT INTO `extracurricular_category` VALUES ('Actividades Artísticas',1),('Actividades Deportivas',2),('Otras Actividades',3);
/*!40000 ALTER TABLE `extracurricular_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratory`
--

DROP TABLE IF EXISTS `laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratory` (
  `idLab` int NOT NULL AUTO_INCREMENT,
  `type` enum('Programación','Física','Biologia') NOT NULL,
  `labName` varchar(45) NOT NULL,
  PRIMARY KEY (`idLab`),
  UNIQUE KEY `labName_UNIQUE` (`labName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory`
--

LOCK TABLES `laboratory` WRITE;
/*!40000 ALTER TABLE `laboratory` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `idModule` int NOT NULL AUTO_INCREMENT,
  `startHour` time NOT NULL,
  `endHour` time NOT NULL,
  PRIMARY KEY (`idModule`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'07:00:00','07:30:00'),(2,'07:30:00','08:00:00'),(3,'08:00:00','08:30:00'),(4,'08:30:00','09:00:00'),(5,'09:00:00','09:30:00'),(6,'09:30:00','10:00:00'),(7,'10:00:00','10:30:00'),(8,'10:30:00','11:00:00'),(9,'11:00:00','11:30:00'),(10,'11:30:00','12:00:00'),(11,'12:00:00','12:30:00'),(12,'12:30:00','13:00:00'),(13,'13:00:00','13:30:00'),(14,'13:30:00','14:00:00'),(15,'14:00:00','14:30:00'),(16,'14:30:00','15:00:00'),(17,'15:00:00','15:30:00'),(18,'15:30:00','16:00:00'),(19,'16:00:00','16:30:00'),(20,'16:30:00','17:00:00'),(21,'17:00:00','17:30:00'),(22,'17:30:00','18:00:00'),(23,'18:00:00','18:30:00'),(24,'18:30:00','19:00:00'),(25,'19:00:00','19:30:00'),(26,'19:30:00','20:00:00'),(27,'20:00:00','20:30:00'),(28,'20:30:00','21:00:00'),(29,'21:00:00','21:30:00'),(30,'21:30:00','22:00:00');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `type` enum('Monstruo','Humano','Alien','Animal') NOT NULL,
  `idUser` varchar(10) NOT NULL,
  `points` int DEFAULT '0',
  `level` int DEFAULT '0',
  `score` float NOT NULL DEFAULT '3',
  `counselings_completed` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUser`),
  KEY `fk_player_user1_idx` (`idUser`),
  CONSTRAINT `fk_player_user1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='It creates a new row for player table, it assigns this new value to its corresponing row in the other table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `player_BEFORE_UPDATE` BEFORE UPDATE ON `player` FOR EACH ROW BEGIN
	 SET NEW.score = ROUND(((NEW.score + IFNULL(OLD.score, 0))) / 2,2);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `player_achievement`
--

DROP TABLE IF EXISTS `player_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_achievement` (
  `idUser` varchar(10) NOT NULL,
  `achievement_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idUser`,`achievement_name`),
  KEY `fk_player_achievement_player1_idx` (`idUser`),
  KEY `fk_player_achievement_achievement1_idx` (`achievement_name`),
  CONSTRAINT `fk_player_achievement_achievement1` FOREIGN KEY (`achievement_name`) REFERENCES `achievement` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_player_achievement_player1` FOREIGN KEY (`idUser`) REFERENCES `player` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_achievement`
--

LOCK TABLES `player_achievement` WRITE;
/*!40000 ALTER TABLE `player_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `idSeat` int NOT NULL AUTO_INCREMENT,
  `details` varchar(350) DEFAULT NULL,
  `idClassroom` int NOT NULL,
  PRIMARY KEY (`idSeat`),
  KEY `fk_seat_classroom1_idx` (`idClassroom`),
  CONSTRAINT `fk_seat_classroom1` FOREIGN KEY (`idClassroom`) REFERENCES `classroom` (`idClassroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specific_counseling`
--

DROP TABLE IF EXISTS `specific_counseling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specific_counseling` (
  `idSpecificCounseling` int NOT NULL AUTO_INCREMENT,
  `idDayOfCounseling` int NOT NULL,
  `extras` varchar(450) DEFAULT NULL,
  `topic` varchar(45) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idSpecificCounseling`),
  KEY `fk_specific_counseling_day_of_counseling1_idx` (`idDayOfCounseling`),
  CONSTRAINT `fk_specific_counseling_day_of_counseling1` FOREIGN KEY (`idDayOfCounseling`) REFERENCES `day_of_counseling` (`idDayOfCounseling`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specific_counseling`
--

LOCK TABLES `specific_counseling` WRITE;
/*!40000 ALTER TABLE `specific_counseling` DISABLE KEYS */;
/*!40000 ALTER TABLE `specific_counseling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUser` varchar(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `hash` varchar(250) NOT NULL,
  `username` varchar(45) NOT NULL,
  `type` enum('Alumno','Asesor','Admin') NOT NULL,
  `mail` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_player` AFTER INSERT ON `user` FOR EACH ROW BEGIN
INSERT INTO player(type,points,level,idUser) values("Humano",0,1,new.idUser);
INSERT INTO player_achievement(idUser,achievement_name) values(new.idUser,"Primer registro");
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'asesorame'
--

--
-- Dumping routines for database 'asesorame'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-01 21:14:08
