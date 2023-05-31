-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: hdkweb.mysql.database.azure.com    Database: hdkweb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `default_address` bit(1) DEFAULT NULL,
  `delete_flag` bit(1) DEFAULT NULL,
  `district` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward_code` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdt5fd00epxprc1imerd0vtv1s` (`address_id`),
  CONSTRAINT `FKdt5fd00epxprc1imerd0vtv1s` FOREIGN KEY (`address_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--

LOCK TABLES `shipping_address` WRITE;
/*!40000 ALTER TABLE `shipping_address` DISABLE KEYS */;
INSERT INTO `shipping_address` VALUES (1,_binary '\0',_binary '\0','Quận Bình Thạnh',1462,'KhanhQuoc','0966230556','293 Bạch Đằng','Phường 15',21611,2),(2,_binary '\0',_binary '\0','Quận Thủ Đức',1463,'Hải Nguyễn','0386058778','Đường 9','Phường Trường Thọ',21812,1),(3,_binary '\0',_binary '\0','Quận 2',1443,'KhanhTran','0966230556','Nguyễn Cơ Thạch','Phường An Lợi Đông',20202,3),(4,_binary '\0',_binary '\0','Quận 2',1443,'KhanhTran','0966230556','79 Nguyễn Cơ Thạch B','Phường Thạnh Mỹ Lợi',20209,2),(5,_binary '\0',_binary '','Quận Tân Bình',1455,'KhanhNguyen','0966230556','ABC','Phường 2',21402,2),(6,_binary '\0',_binary '','Quận Bình Thạnh',1462,'TEST','0966230556','abcd','Phường 14',21610,2),(7,_binary '\0',_binary '\0','Quận Phú Nhuận',1457,'123','1234','abc','Phường 9',21708,4),(8,_binary '\0',_binary '','Quận Bình Tân',1458,'duong','12333','abc','Phường Bình Hưng Hoà B',21905,4),(9,_binary '',_binary '\0','Quận Tân Bình',1455,'abc','123','abc','Phường 3',21403,4),(10,_binary '\0',_binary '\0','Quận 11',1453,'KHANH','0966230556','ABC','Phường 9',21109,2);
/*!40000 ALTER TABLE `shipping_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 21:04:11
