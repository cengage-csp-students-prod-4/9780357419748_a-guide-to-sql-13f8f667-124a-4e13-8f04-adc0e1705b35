-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: StayWell
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.22.04.1

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
-- Table structure for table `OFFICE`
--

DROP TABLE IF EXISTS `OFFICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFICE` (
  `OFFICE_NUM` tinyint NOT NULL,
  `OFFICE_NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `AREA` varchar(50) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `STATE` char(2) NOT NULL,
  `ZIP_CODE` char(5) NOT NULL,
  PRIMARY KEY (`OFFICE_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFICE`
--

LOCK TABLES `OFFICE` WRITE;
/*!40000 ALTER TABLE `OFFICE` DISABLE KEYS */;
INSERT INTO `OFFICE` VALUES (1,'StayWell-Columbia City','1135 N. Wells Avenue','Columbia City','Seattle','WA','98118'),(2,'StayWell-Georgetown','986 S. Madison Rd','Georgetown','Seattle','WA','98108');
/*!40000 ALTER TABLE `OFFICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OWNER`
--

DROP TABLE IF EXISTS `OWNER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OWNER` (
  `OWNER_NUM` char(5) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `STATE` char(2) NOT NULL,
  `ZIP_CODE` char(5) NOT NULL,
  PRIMARY KEY (`OWNER_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OWNER`
--

LOCK TABLES `OWNER` WRITE;
/*!40000 ALTER TABLE `OWNER` DISABLE KEYS */;
INSERT INTO `OWNER` VALUES ('AK102','Aksoy','Ceyda','411 Griffin Rd.','Seattle','WA','98131'),('BI109','Bianchi','Nicole','7990 Willow Dr.','New York','NY','10005'),('BU106','Burke','Ernest','613 Old Pleasant St.','Twin Falls','ID','83303'),('CO103','Cole','Meerab','9486 Circle Ave.','Olympia','WA','98506'),('JO110','Jones','Ammarah','730 Military Ave.','Seattle','WA','98126'),('KO104','Kowalczyk','Jakub','7431 S. Bishop St.','Bellingham','WA','98226'),('LO108','Lopez','Janine','9856 Pumpkin Hill Ln.','Everett','WA','98213'),('MO100','Moore','Elle-May','8006 W. Newport Ave.','Reno','NV','89508'),('PA101','Patel','Makesh','7337 Sheffield St.','Seattle','WA','98119'),('RE107','Redman','Seth','7681 Fordham St.','Seattle','WA','98119'),('SI105','Sims','Haydon','527 Primrose Rd.','Portland','OR','97203');
/*!40000 ALTER TABLE `OWNER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROPERTY`
--

DROP TABLE IF EXISTS `PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROPERTY` (
  `PROPERTY_ID` smallint NOT NULL,
  `OFFICE_NUM` tinyint NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `SQR_FT` smallint NOT NULL,
  `BDRMS` tinyint NOT NULL,
  `FLOORS` tinyint NOT NULL,
  `MONTHLY_RENT` smallint DEFAULT NULL,
  `OWNER_NUM` char(5) NOT NULL,
  PRIMARY KEY (`PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROPERTY`
--

LOCK TABLES `PROPERTY` WRITE;
/*!40000 ALTER TABLE `PROPERTY` DISABLE KEYS */;
INSERT INTO `PROPERTY` VALUES (1,1,'30 West Thomas Rd.',1600,3,1,1400,'BU106'),(2,1,'782 Queen Ln.',2100,4,2,1900,'AK102'),(3,1,'9800 Sunbeam Ave.',1005,2,1,1200,'BI109'),(4,1,'105 North Illinois Rd.',1750,3,1,1650,'KO104'),(5,1,'887 Vine Rd.',1125,2,1,1160,'SI105'),(6,1,'8 Laurel Dr.',2125,4,2,2050,'MO100'),(7,2,'447 Goldfield St.',1675,3,2,1700,'CO103'),(8,2,'594 Leatherwood Dr.',2700,5,2,2750,'KO104'),(9,2,'504 Windsor Ave.',700,2,1,1050,'PA101'),(10,2,'891 Alton Dr.',1300,3,1,1600,'LO108'),(11,2,'9531 Sherwood Rd.',1075,2,1,1100,'JO110'),(12,2,'2 Bow Ridge Ave.',1400,3,2,1700,'RE107');
/*!40000 ALTER TABLE `PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESIDENTS`
--

DROP TABLE IF EXISTS `RESIDENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESIDENTS` (
  `RESIDENT_ID` smallint NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `SURNAME` varchar(20) NOT NULL,
  `PROPERTY_ID` smallint NOT NULL,
  PRIMARY KEY (`RESIDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESIDENTS`
--

LOCK TABLES `RESIDENTS` WRITE;
/*!40000 ALTER TABLE `RESIDENTS` DISABLE KEYS */;
INSERT INTO `RESIDENTS` VALUES (1,'Albie ','ORyan',1),(2,'Tariq ','Khan',1),(3,'Ismail ','Salib',1),(4,'Callen ','Beck',2),(5,'Milosz ','Polansky',2),(6,'Ashanti ','Lucas',2),(7,'Randy ','Woodrue',2),(8,'Aislinn ','Lawrence',3),(9,'Monique ','French',3),(10,'Amara ','Dejsuwan',4),(12,'Rosalie ','Blackmore',4),(13,'Carina ','Britton',4),(14,'Valentino ','Ortega',5),(15,'Kaylem ','Kent',5),(16,'Alessia ','Wagner',6),(17,'Tyrone ','Galvan',6),(18,'Constance ','Fleming',6),(19,'Eamonn ','Bain',6),(20,'Misbah ','Yacob',7),(21,'Gianluca ','Esposito',7),(22,'Elinor ','Lake',7),(23,'Ray ','Rosas',8),(24,'Damon ','Caldwell',8),(25,'Dawood ','Busby',8),(26,'Dora ','Harris',8),(27,'Leroy ','Stokes',8),(28,'Tamia ','Hess',9),(29,'Amelia ','Sanders',9),(30,'Zarah ','Byers',10),(31,'Sara ','Farrow',10),(32,'Delilah ','Roy',10),(33,'Dougie ','McDaniel',11),(34,'Tahir ','Halabi',11),(35,'Mila ','Zhikin',12),(36,'Glenn ','Donovan',12),(37,'Zayn ','Fowler',12);
/*!40000 ALTER TABLE `RESIDENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERVICE_CATEGORY`
--

DROP TABLE IF EXISTS `SERVICE_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SERVICE_CATEGORY` (
  `CATEGORY_NUM` tinyint NOT NULL,
  `CATEGORY_DESCRIPTION` varchar(100) NOT NULL,
  PRIMARY KEY (`CATEGORY_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVICE_CATEGORY`
--

LOCK TABLES `SERVICE_CATEGORY` WRITE;
/*!40000 ALTER TABLE `SERVICE_CATEGORY` DISABLE KEYS */;
INSERT INTO `SERVICE_CATEGORY` VALUES (1,'Plumbing'),(2,'Heating'),(3,'Painting'),(4,'Electrical Systems'),(5,'Carpentry'),(6,'Furniture replacement');
/*!40000 ALTER TABLE `SERVICE_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERVICE_REQUEST`
--

DROP TABLE IF EXISTS `SERVICE_REQUEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SERVICE_REQUEST` (
  `SERVICE_ID` smallint NOT NULL,
  `PROPERTY_ID` smallint NOT NULL,
  `CATEGORY_NUMBER` tinyint NOT NULL,
  `OFFICE_ID` tinyint NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `STATUS` varchar(200) NOT NULL,
  `EST_HOURS` tinyint NOT NULL,
  `SPENT_HOURS` tinyint NOT NULL,
  `NEXT_SERVICE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVICE_REQUEST`
--

LOCK TABLES `SERVICE_REQUEST` WRITE;
/*!40000 ALTER TABLE `SERVICE_REQUEST` DISABLE KEYS */;
INSERT INTO `SERVICE_REQUEST` VALUES (1,11,2,2,'The second bedroom upstairs is not heating up at night.','Problem has been confirmed. central heating engineer has been scheduled. ',2,1,'2019-11-01'),(2,1,4,1,'A new strip light is needed for the kitchen.','Scheduled',1,0,'2019-10-02'),(3,6,5,1,'The bathroom door does not close properly.','Service rep has confirmed issue. Scheduled to be refitted.',3,1,'2019-11-09'),(4,2,4,1,'New outlet has been requested for the first upstairs bedroom. (There is currently no outlet).','Scheduled',1,0,'2019-10-02'),(5,8,3,2,'New paint job requested for the common area (lounge). ','Open',10,0,NULL),(6,4,1,1,'Shower is dripping when not in use.','Problem confirmed. Plumber has been scheduled.',4,2,'2019-10-07'),(7,2,2,1,'Heating unit in the entrance smells like its burning.','Service rep confirmed the issue to be dust in the heating unit. To be cleaned.  ',1,0,'2019-10-09'),(8,9,1,2,'Kitchen sink does not drain properly. ','Problem confirmed. Plumber scheduled.',6,2,'2019-11-12'),(9,12,6,2,'New sofa requested.','Open',2,0,NULL);
/*!40000 ALTER TABLE `SERVICE_REQUEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'StayWell'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-18  0:39:24
