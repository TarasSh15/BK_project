-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: display
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `disp_list`
--

DROP TABLE IF EXISTS `disp_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disp_list` (
  `tech_id` tinyint NOT NULL,
  `disp_name` varchar(45) DEFAULT NULL,
  `resol_id` tinyint NOT NULL,
  `disp_diag` smallint DEFAULT NULL,
  `view_angle` varchar(45) DEFAULT NULL,
  `brightness` smallint DEFAULT NULL,
  `contrast` varchar(45) DEFAULT NULL,
  `respon_time` tinyint DEFAULT NULL,
  `power_cons` smallint DEFAULT NULL,
  `comp_id` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disp_list`
--

LOCK TABLES `disp_list` WRITE;
/*!40000 ALTER TABLE `disp_list` DISABLE KEYS */;
INSERT INTO `disp_list` VALUES (3,'QM32R',19,32,'178/178',400,'5000:1',8,128,2),(3,'QB65R',38,65,'178/178',350,'4000:1',8,128,2),(4,'98UM3DG-H',38,98,'178/178',350,'1000000:1',8,355,1),(5,'LAEC015',38,136,'160/160',500,'3000:1',16,395,1),(4,'32SM5J',38,32,'178/178',400,'1000000:1',10,55,1),(6,'OH85N-DK',38,82,'178/178',3300,'3000:1',8,2020,2),(6,'OH85N',38,85,'178/178',3300,'3000:1',8,1800,2),(7,'OMN',19,46,'178/178',4000,'5000:1',6,330,2),(7,'OH-F',19,46,'178/178',2500,'5000:1',6,440,2),(6,'OH55F',19,55,'178/178',2500,'5000:1',6,510,2),(3,'QP65A-8K',76,65,'178/178',2000,'1200:1',6,370,2),(4,'BE24EQ',19,23,'178/178',300,'1000:1',5,240,3);
/*!40000 ALTER TABLE `disp_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 14:57:09
