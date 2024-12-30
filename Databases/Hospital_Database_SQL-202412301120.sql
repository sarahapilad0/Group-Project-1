-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_database_sql
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `ID` int unsigned NOT NULL,
  `Hospital` varchar(100) DEFAULT NULL,
  `Date_Of_Appointment` date DEFAULT NULL,
  `Patient_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Doctor_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases` (
  `ID` int unsigned NOT NULL,
  `Disease_Name` varchar(100) DEFAULT NULL,
  `Disease_Treatment` varchar(100) DEFAULT NULL,
  `Specialist_Doctor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `ID` int unsigned NOT NULL,
  `Doctor_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Name of Doctor',
  `Hospital_Base` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Hospital_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Hospital_Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `size_beds` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `emergency_services` varchar(50) DEFAULT NULL,
  `year_of_accreditation` year DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (39,'Royal London Hospital','Whitechapel Rd, London E1 1BB','720','General','Yes',2015),(40,'Manchester Royal Infirmary','Oxford Rd, Manchester M13 9WL','750','Teaching','Yes',2016),(41,'St. Thomas\' Hospital','Westminster Bridge Rd, London SE1 7EH','840','General','No',2014),(42,'Birmingham City Hospital','Dudley Rd, Birmingham B18 7QH','580','General','Yes',2013),(43,'Addenbrooke\'s Hospital','Hills Rd, Cambridge CB2 0QQ','1,000','Teaching','Yes',2017),(44,'Great Ormond Street Hospital','Great Ormond St, London WC1N 3JH','389','Children\'s','No',2016),(45,'University Hospital Southampton','Tremona Rd, Southampton SO16 6YD','1,100','Teaching','Yes',2018),(46,'Royal Victoria Infirmary','Queen Victoria Rd, Newcastle NE1 4LP','580','General','Yes',2015),(47,'Queen Elizabeth Hospital','Mindelsohn Way, Birmingham B15 2GW','1,200','General','Yes',2017),(48,'Norfolk and Norwich Hospital','Colney Ln, Norwich NR4 7UY','1,000','General','No',2014),(49,'Leeds General Infirmary','Great George St, Leeds LS1 3EX','850','General','Yes',2019),(50,'Guy\'s Hospital','Great Maze Pond, London SE1 9RT','400','Specialist','No',2016),(51,'Charing Cross Hospital','Fulham Palace Rd, London W6 8RF','511','Teaching','Yes',2017),(52,'John Radcliffe Hospital','Headley Way, Oxford OX3 9DU','950','Teaching','Yes',2013),(53,'King\'s College Hospital','Denmark Hill, London SE5 9RS','1,200','Teaching','No',2015),(54,'Hull Royal Infirmary','Anlaby Rd, Hull HU3 2JZ','650','General','Yes',2018),(55,'Bristol Royal Infirmary','Upper Maudlin St, Bristol BS2 8HW','677','General','No',2016),(56,'Western General Hospital','Crewe Rd S, Edinburgh EH4 2XU','600','General','Yes',2019),(57,'Ninewells Hospital','Dundee DD2 1SY','900','Teaching','Yes',2017),(58,'Queen\'s Medical Centre','Derby Rd, Nottingham NG7 2UH','1,300','Teaching','Yes',2014),(59,'Royal Free Hospital','Pond St, London NW3 2QG','500','General','No',2016),(60,'Freeman Hospital','Freeman Rd, Newcastle NE7 7DN','800','Specialist','Yes',2013),(61,'Glasgow Royal Infirmary','Castle St, Glasgow G4 0SF','1,000','General','Yes',2018),(62,'Royal Sussex County Hospital','Eastern Rd, Brighton BN2 5BE','600','General','No',2019),(63,'St. George\'s Hospital','Blackshaw Rd, London SW17 0QT','1,300','Teaching','Yes',2015),(64,'Wythenshawe Hospital','Southmoor Rd, Manchester M23 9LT','900','Teaching','Yes',2017),(65,'Morriston Hospital','Heol Maes Eglwys, Swansea SA6 6NL','750','General','No',2014),(66,'Derriford Hospital','Derriford Rd, Plymouth PL6 8DH','1,000','General','Yes',2016),(67,'Royal Blackburn Hospital','Haslingden Rd, Blackburn BB2 3HH','700','General','No',2015),(68,'Stoke Mandeville Hospital','Mandeville Rd, Aylesbury HP21 8AL','550','Specialist','Yes',2013),(69,'James Cook University Hospital','Marton Rd, Middlesbrough TS4 3BW','1,000','Teaching','Yes',2019),(70,'Aberdeen Royal Infirmary','Foresterhill, Aberdeen AB25 2ZN','900','General','Yes',2018),(71,'Queen Elizabeth University Hosp','Govan Rd, Glasgow G51 4TF','1,700','Teaching','Yes',2017),(72,'York Hospital','Wigginton Rd, York YO31 8HE','700','General','No',2016),(73,'Royal Derby Hospital','Uttoxeter Rd, Derby DE22 3NE','1,200','General','Yes',2015),(74,'Milton Keynes University Hosp','Standing Way, Milton Keynes MK6 5LD','500','General','Yes',2019),(75,'Southmead Hospital','Southmead Rd, Bristol BS10 5NB','1,000','General','Yes',2018),(76,'Princess Royal Hospital','Lewes Rd, Haywards Heath RH16 4EX','550','General','No',2014);
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_results`
--

DROP TABLE IF EXISTS `lab_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_results` (
  `ID` int unsigned NOT NULL,
  `Patient` varchar(100) DEFAULT NULL,
  `Requesting_Doctor` varchar(100) DEFAULT NULL,
  `Lab_Test` varchar(100) DEFAULT NULL,
  `Test_Result` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_results`
--

LOCK TABLES `lab_results` WRITE;
/*!40000 ALTER TABLE `lab_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `ID` int unsigned NOT NULL,
  `Medication_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Patient_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Patient Name',
  `Date_Of_Birth` date DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL COMMENT 'Patient Address',
  `Assigned_Doctor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `ID` int unsigned NOT NULL,
  `Medication` varchar(100) DEFAULT NULL,
  `Patient_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Date_Of_Prescription` date DEFAULT NULL,
  `Prescribing_Doctor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hospital_database_sql'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-30 11:20:44
