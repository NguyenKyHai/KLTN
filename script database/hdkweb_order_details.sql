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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` decimal(19,2) DEFAULT NULL,
  `quantity` int NOT NULL,
  `shipping_fee` decimal(19,2) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,'https://lh3.googleusercontent.com/yh2DbfQQt65VoTudA6-sUlXxq8lq_QLs404beNvcQqPlIkOrAl5N1i80816P38ecR9Ga90IQsrYMKrKXtYo1z5M9rfdesFM=rw','Laptop ASUS Vivobook X415EA-EK675W',10084200.00,1,46000.00,1,1),(2,'https://lh3.googleusercontent.com/qoEnJmWNXfA2zxn80I714vQtKwDy2LVwwEl3rFBzecvThNg5kMHc_iNKINOucSUIs6U3RkI3Ce3nDsmbjg=w500-rw','Mực in Canon CL 98',500720.00,1,46000.00,2,9),(3,'https://lh3.googleusercontent.com/9xa_AVllEWDIiNqjwOlf5twzYnbQDn3VxitAcOV7FULuwKNMJqpU9DdJZwP404G8NZQ62NEA78yXxLu_33E=w500-rw','Đế tản nhiệt Laptop Cooler Master C3',178200.00,1,46000.00,3,4),(4,'https://lh3.googleusercontent.com/QU6CbbZ0CzJHIoPTCxFvDZkE-bSOqxwQYHwTK1JMp8d_PeFOchAdsNQ8i7a-L3nkKabDLynMmCRbHP-pjWg=w500-rw','Mực in HP CE311A',1850700.00,1,46000.00,4,11),(5,'https://lh3.googleusercontent.com/5PazMudYy0NOXJ1wFHuqHRwkNVuhfChwrMlLIQOVESs5LOxr9LwkkGlGTVskjqmLsDb6NPulC4RAOhj6mF3FU9iHcdlLDW8V=rw','Laptop ACER Swift 3 SF314-44-R2U3',18610200.00,1,46000.00,5,8),(6,'https://lh3.googleusercontent.com/yh2DbfQQt65VoTudA6-sUlXxq8lq_QLs404beNvcQqPlIkOrAl5N1i80816P38ecR9Ga90IQsrYMKrKXtYo1z5M9rfdesFM=rw','Laptop ASUS Vivobook X415EA-EK675W',10084200.00,1,46000.00,6,1),(7,'https://lh3.googleusercontent.com/9xa_AVllEWDIiNqjwOlf5twzYnbQDn3VxitAcOV7FULuwKNMJqpU9DdJZwP404G8NZQ62NEA78yXxLu_33E=w500-rw','Đế tản nhiệt Laptop Cooler Master C3',178200.00,1,46000.00,7,4),(8,'https://lh3.googleusercontent.com/9xa_AVllEWDIiNqjwOlf5twzYnbQDn3VxitAcOV7FULuwKNMJqpU9DdJZwP404G8NZQ62NEA78yXxLu_33E=w500-rw','Đế tản nhiệt Laptop Cooler Master C3',178200.00,1,46000.00,8,4),(9,'https://lh3.googleusercontent.com/PmBanKnRACo_qFVZ71pPRCXH2m16KkZmHdyQNvMOMWaAL-e2cTupwsR4heH6oKMaE-EERPSp2gr5IiRpyw=w500-rw','Máy in laser trắng đen CANON MF3010AE',6683300.00,1,71003.00,8,2),(10,'https://lh3.googleusercontent.com/yh2DbfQQt65VoTudA6-sUlXxq8lq_QLs404beNvcQqPlIkOrAl5N1i80816P38ecR9Ga90IQsrYMKrKXtYo1z5M9rfdesFM=rw','Laptop ASUS Vivobook X415EA-EK675W',10084200.00,1,46000.00,9,1),(11,'https://lh3.googleusercontent.com/HYcklxK3FdDwRIBZzxbBVsc8GsnGAInSX9V9R_BMtRG3NrUMB6GSZ1p6TdUWsUbc1Pn8XFbsI8oPqB6rWiM=w500-rw','Màn hình LCD ASUS 23.8 VZ249H',4064300.00,1,96006.00,10,3),(12,'https://lh3.googleusercontent.com/9xa_AVllEWDIiNqjwOlf5twzYnbQDn3VxitAcOV7FULuwKNMJqpU9DdJZwP404G8NZQ62NEA78yXxLu_33E=w500-rw','Đế tản nhiệt Laptop Cooler Master C3',178200.00,1,46000.00,11,4),(13,'https://lh3.googleusercontent.com/AXJjJmmCGE-oUm-urSsrH-BE3UyM8wSXtIv2ywrTvOMlVxvLQu98h3VHWLyq0sv1p7I4s-GKE41RsWhv23KtggnNFtSXfuEG=rw','Laptop Lenovo Ideapad 3 - 15IAU7',12086400.00,2,46000.00,11,19),(14,'https://lh3.googleusercontent.com/HYcklxK3FdDwRIBZzxbBVsc8GsnGAInSX9V9R_BMtRG3NrUMB6GSZ1p6TdUWsUbc1Pn8XFbsI8oPqB6rWiM=w500-rw','Màn hình LCD ASUS 23.8 VZ249H',4064300.00,1,96006.00,12,3),(15,'https://lh3.googleusercontent.com/lB2mie6tBy-aa5QzSo8xJtWydl2lg70XNJRvJD5eclRGgW_WjGvB8iHc1lFJZoEsEXGUxjPGYJQ_rRJv7nU=w500-rw','Đế tản nhiệt Laptop DEEPCOOL Windpal Mini',166600.00,2,56001.00,13,23),(16,'https://lh3.googleusercontent.com/NmGTCg-mLniaY1ZN6BtCntR2LXBWj7Km0VFffqdZUJWuKISEjXbxnnSb-kLOyZK7rs2PKAwo1bnvnTLASuc=w500-rw','Máy in laser trắng đen CANON LBP 2900',4075500.00,1,61002.00,14,17),(17,'https://lh3.googleusercontent.com/XpKoZGx9kCsQcRab8QZoJ0LTyJTkMF_R6ucgiOpK91ROlqFRz7veqEqF6Sfc1dvUWDY4qzdyc0SyR3rDImi7=w500-rw','Máy in phun màu EPSON L1300',3158100.00,1,46000.00,15,43);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 21:04:32
