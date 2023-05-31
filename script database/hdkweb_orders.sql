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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_time` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(19,2) DEFAULT NULL,
  `ward` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward_code` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpxtb8awmi0dk6smoh2vp1litg` (`customer_id`),
  CONSTRAINT `FKpxtb8awmi0dk6smoh2vp1litg` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Quận Bình Thạnh',1462,NULL,'2023-05-15 14:24:41.641000','COD','0966230556','KhanhQuoc','PROCESSING','293 Bạch Đằng',10130200.00,'Phường 15',21611,2),(2,'Quận Bình Thạnh',1462,NULL,'2023-05-15 23:24:15.665000','COD','0966230556','KhanhQuoc','DELIVERED','293 Bạch Đằng',546720.00,'Phường 15',21611,2),(3,'Quận 2',1443,NULL,'2023-05-16 08:31:09.655000','COD','0966230556','KhanhTran','NEW','Nguyễn Cơ Thạch',224200.00,'Phường An Lợi Đông',20202,3),(4,'Quận 2',1443,NULL,'2023-05-16 08:42:02.701000','VNPAY','0966230556','KhanhTran','PAID','Nguyễn Cơ Thạch',1896700.00,'Phường An Lợi Đông',20202,3),(5,'Quận Thủ Đức',1463,NULL,'2023-05-16 08:52:42.960000','COD','0386058778','Hải Nguyễn','NEW','Đường 10',18656200.00,'Phường Trường Thọ',21812,1),(6,'Quận Bình Thạnh',1462,NULL,'2023-05-19 05:11:04.193000','COD','0966230556','KhanhQuoc','RETURNED','293 Bạch Đằng',10130200.00,'Phường 15',21611,2),(7,'Quận Bình Thạnh',1462,NULL,'2023-05-20 15:26:04.812000','VNPAY','0966230556','KhanhQuoc','PAID','293 Bạch Đằng',224200.00,'Phường 15',21611,2),(8,'Quận Thủ Đức',1463,NULL,'2023-05-20 15:33:09.920000','COD','0386058778','Hải Nguyễn','PROCESSING','Đường 10',6978503.00,'Phường Trường Thọ',21812,1),(9,'Quận Thủ Đức',1463,NULL,'2023-05-20 09:20:29.553000','COD','0386058778','Hải Nguyễn','NEW','Đường 9',10130200.00,'Phường Trường Thọ',21812,1),(10,'Quận Thủ Đức',1463,NULL,'2023-05-20 10:59:47.850000','COD','0386058778','Hải Nguyễn','SHIPPING','Đường 9',4160306.00,'Phường Trường Thọ',21812,1),(11,'Quận Bình Thạnh',1462,NULL,'2023-05-23 06:26:54.374000','COD','0966230556','KhanhQuoc','RETURNED','293 Bạch Đằng',24489000.00,'Phường 15',21611,2),(12,'Quận Thủ Đức',1463,NULL,'2023-05-25 13:42:54.532000','VNPAY','0386058778','Hải Nguyễn','SHIPPING','Đường 9',4160306.00,'Phường Trường Thọ',21812,1),(13,'Quận 2',1443,'NOTE','2023-05-26 03:51:02.753000','COD','0966230556','KhanhTran','NEW','Nguyễn Cơ Thạch',445202.00,'Phường An Lợi Đông',20202,3),(14,'Quận Bình Thạnh',1462,NULL,'2023-05-26 14:48:57.990000','COD','0966230556','KhanhQuoc','RETURNED','293 Bạch Đằng',4136502.00,'Phường 15',21611,2),(15,'Quận Tân Bình',1455,'abc','2023-05-28 15:16:19.556000','COD','12345','abc','RETURNED','abc',3204100.00,'Phường 3',21403,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 21:04:58
