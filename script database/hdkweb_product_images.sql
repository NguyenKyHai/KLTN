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
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `extra_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqnq71xsohugpqwf3c9gxmsuy` (`product_id`),
  CONSTRAINT `FKqnq71xsohugpqwf3c9gxmsuy` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://lh3.googleusercontent.com/yh2DbfQQt65VoTudA6-sUlXxq8lq_QLs404beNvcQqPlIkOrAl5N1i80816P38ecR9Ga90IQsrYMKrKXtYo1z5M9rfdesFM=rw','link',1),(2,'https://lh3.googleusercontent.com/Ik5ERNtA1xsq1cwYAXQ37C7TmnnbnWQdVe5f_WmC2Ts5pnTthsjodlMbBp0Q10HNe-rapKK9qzWHp0P1FImaMEmTa62-Z3g=rw','link',1),(3,'https://lh3.googleusercontent.com/Ed2ttcViYWhggkYzpW9_a32pm8RY6pQ8H9OSK992EWbyCXEcC3KkURmlAhiGQcig9oNAtQESaGEOD5KEcvZJSlM8eDIRoJJwAg=rw','link',1),(4,'https://lh3.googleusercontent.com/PmBanKnRACo_qFVZ71pPRCXH2m16KkZmHdyQNvMOMWaAL-e2cTupwsR4heH6oKMaE-EERPSp2gr5IiRpyw=w500-rw','link',2),(5,'https://lh3.googleusercontent.com/kdSdPlWJh2vXR5hQ-56rtElD2DPSUEwOFF26VZfh9BFk8gPtQ39stxJ6sKWKjy_7dr-Fhz8Vc4N-V89wBw=w500-rw','link',2),(6,'https://lh3.googleusercontent.com/HYcklxK3FdDwRIBZzxbBVsc8GsnGAInSX9V9R_BMtRG3NrUMB6GSZ1p6TdUWsUbc1Pn8XFbsI8oPqB6rWiM=w500-rw','link',3),(7,'https://lh3.googleusercontent.com/XNwpu_zPMUmqKQG06QMn_cPdd6UAKq_nS6hZourpLrNguyZEo5AxyZ2mRsN8HIURyYNRqlzf4U1CGhSMwQ=w500-rw','link',3),(8,'https://lh3.googleusercontent.com/ttHZeSe-WP8W2Bp_VhrZ3OIqICogB6CarPJGh6yX6BCWduEhs3GnuNQgkoEh5d3QlExyq8ePyh6YmdpjN8U=w500-rw','link',3),(9,'https://lh3.googleusercontent.com/9xa_AVllEWDIiNqjwOlf5twzYnbQDn3VxitAcOV7FULuwKNMJqpU9DdJZwP404G8NZQ62NEA78yXxLu_33E=w500-rw','link',4),(10,'https://lh3.googleusercontent.com/cIvVsKO6nDYQc8X_Ayc2XFzGU-J1NuUpOu5lIfPQTDm4Giyp2N_EEozcTwlVwgvGBjwxjE13dHKCE3V7PLkU=w500-rw','link',4),(11,'https://lh3.googleusercontent.com/U_jpa0LKoYFcWp3APf7j6evEj8fl8tL1rXO7Ls9IGMnlJwCMzvxCPVGeS-Jwk-twBJew8dyhHCrHwmVF4O92=w500-rw','link',4),(12,'https://lh3.googleusercontent.com/q0WnWWvyP93B7nQonI_LtqXne2zD6sA9XhY6prfn7H6jr_nkBHQZtNldXJXo3amL-gn3nExDBE9q3Evl8NPd=w500-rw','link',5),(13,'https://lh3.googleusercontent.com/m4B-ZpL3KoKH66VDv9qdSrcao2MuoN5BLOpdgTgtBYjjvpqPCCPaX7Il6gq_wPoz8GrKTI0YJ8O2fAThk-k=w500-rw','link',5),(14,'https://lh3.googleusercontent.com/tfgh5ULM965FgskkiLUh7biayYJLaAgQxyqwQxmfjeApVwsajMmWmxODVraLWO4YcPw0omEFl0yhYIkLYno=w500-rw','link',5),(15,'https://lh3.googleusercontent.com/WLP3MpcvthXoUVp2NigXFEkxpM_dDhLY0Z2nzmPmHpQVY6nsBoMqM439Za3iyw73q7fwA7YzAPbHFQzA05gSNTl7XR66YhHQ=w500-rw','link',6),(16,'https://lh3.googleusercontent.com/TqNpkueSxQVwIgg13lfIziFlrTRxl0OkHu7sWaGTntT8siGTlQmuWKQ5d8i-TtNKNKOxo5eee2I3IbpwuBh2GeDfCre9IgbA=w500-rw','link',6),(17,'https://lh3.googleusercontent.com/v2dNLZjvj4-gJgMcKEFsSZallujzexMwR71LUtCywOFyZAZxYkd7V7GN1WzfIcy4rqy6sF-tts-Y3RP_262vs6xHp3U0zaA=w500-rw','link',6),(18,'https://lh3.googleusercontent.com/vLzvJHJ5BLOXE_vshoXX20e7FV1FtVne25smP4HRDyddsmehlk7vYc8VYoflC4M3ut-KS6b1UwiIJyR2xg=w500-rw','link',7),(19,'https://lh3.googleusercontent.com/BpFK_j0d6Fa6niWtW57JSZTsmYMmLFfuQevcWzayTMKh1-Rn7mUGSQRxKit0qhGU4GvT-u7Hxtbu9cs6Gga9=w500-rw','link',7),(20,'https://lh3.googleusercontent.com/MxbG1y49VcwrFsJ9vgQqifk4aTHBXxRome56z7ZgBaqK2vm0UPCOdiFEDHmDx4stWe436n95USKosPyBV5Js=w500-rw','link',7),(21,'https://lh3.googleusercontent.com/5PazMudYy0NOXJ1wFHuqHRwkNVuhfChwrMlLIQOVESs5LOxr9LwkkGlGTVskjqmLsDb6NPulC4RAOhj6mF3FU9iHcdlLDW8V=rw','link',8),(22,'https://lh3.googleusercontent.com/yEJGbfi0dDfupxzpH68U5sxhzgAEcDZ7cnjnvX3djpYBee-uPH94ysg63X7TD52FZbXE6la_aD2WfLNfIFQ-YfqqTCLt-tFM-Q=rw','link',8),(23,'https://lh3.googleusercontent.com/FwPNZtnjyFRuaWRpjJ0vX-palQoLUKorfIHlIgcKnVP3la1KJ2QpBgQxTQwX21Q6NfwL-LNAQX9fVR2QjK9_5jMVBh8NcNs=rw','link',8),(24,'https://lh3.googleusercontent.com/qoEnJmWNXfA2zxn80I714vQtKwDy2LVwwEl3rFBzecvThNg5kMHc_iNKINOucSUIs6U3RkI3Ce3nDsmbjg=w500-rw','link',9),(25,'https://lh3.googleusercontent.com/7NsuysiN3YV2aV2KYTCFzoBXKcBuvKVdi1U0JJak75k50cVOD-vSG6KNx-rAlPcYxStDLiKvbteLF6Yqpaw=w500-rw','link',9),(26,'https://lh3.googleusercontent.com/8Kx9c5AIl_zXssYyg3XrxoxO5KEOo32Xc03HSWtHBFskndJqhvTFREDpWZGjPUI6v04aXQRdKwjPxGE9vKnMd5N-R0Aw9oTD=rw','link',10),(27,'https://lh3.googleusercontent.com/ynrc2x5xbyiyYCpKRZQdNJ13Tb4weBpbiWVH8x2EjAFsSit_9D6cQsvR4tx3KGb6Xua66oqkUzWCkYiAYTOQDyaYhuv0yAA=rw','link',10),(28,'https://lh3.googleusercontent.com/DZ-1N_rW07zTt3NqRBONe9vv31sjifzt6EbzCtQdTc0A2cCDj6xoZDXysbxsGQy385TqTwt84KYXMl-5MT9bbS5QyBESqcFw=rw','link',10),(29,'https://lh3.googleusercontent.com/QU6CbbZ0CzJHIoPTCxFvDZkE-bSOqxwQYHwTK1JMp8d_PeFOchAdsNQ8i7a-L3nkKabDLynMmCRbHP-pjWg=w500-rw','link',11),(30,'https://lh3.googleusercontent.com/WLP3MpcvthXoUVp2NigXFEkxpM_dDhLY0Z2nzmPmHpQVY6nsBoMqM439Za3iyw73q7fwA7YzAPbHFQzA05gSNTl7XR66YhHQ=w500-rw','link',12),(31,'https://lh3.googleusercontent.com/TqNpkueSxQVwIgg13lfIziFlrTRxl0OkHu7sWaGTntT8siGTlQmuWKQ5d8i-TtNKNKOxo5eee2I3IbpwuBh2GeDfCre9IgbA=w500-rw','link',12),(32,'https://lh3.googleusercontent.com/v2dNLZjvj4-gJgMcKEFsSZallujzexMwR71LUtCywOFyZAZxYkd7V7GN1WzfIcy4rqy6sF-tts-Y3RP_262vs6xHp3U0zaA=w500-rw','link',12),(33,'https://lh3.googleusercontent.com/9Jt3F5HKVd93CNjU7ugGbE-6LfxZkRy8TWcSw9TErDK2gU0tq_cX0jJz-j5IcKVFbzrd6jkJLyuHtryP7LOZ8A0fskicobcJ=w500-rw','link',13),(34,'https://lh3.googleusercontent.com/0xuTEoitUwKDRlZw7MjrvPBqH9CXzuEkoc0e2eLaxlLBRiW3uZZ2Ij5f7Y9xLiKZk7CJmXW0RBp2ZL1R1zB2P7Mrj1eYcDIz=w500-rw','link',13),(35,'https://lh3.googleusercontent.com/q_ndG9TcIp4DGGN7Guy8algTlCDaCSvCs1j7TJjZBqYRM2LERU2y1f9G-z44RTQjNH032dq6nCzIpiD2b7v72DBuxFXFc7_K=w500-rw','link',13),(36,'https://lh3.googleusercontent.com/_SApryKFms-BYshoOG9JRUG14-JLrnShoUSZ7_4_JqcYW5YaL2eRJ0cw4AXNjOmHDi1q-f-dVFH3BwyiCMxg-7-mAsKPGA-LcA=rw','link',14),(37,'https://lh3.googleusercontent.com/TMzf4NWHcqy1EtU851La6R83YP5i_2bQZoz3mmqplG9a-tPJqY_pHL8oeqkTuf0x00ipw7XN0r_YhQm-fB3HMXwk5oEEuUvt=rw','link',14),(38,'https://lh3.googleusercontent.com/DMFtL22zhD3hvuunhr9mJROV07cjlqYYm_F1yLKZqbmMvS-2VtNs97-VXFGYAANJ-h6-7-oIQFPpEu3cGEBo0m4JyYYn2X4=rw','link',14),(39,'https://lh3.googleusercontent.com/nOikqpVL4HXGK3Hs6wKff1Wnl-U7aYbpvw6lu83FHjfGNVGMdF6OyoVLq_pErwB-MmmfDmN7VKIEaQ6Fc9T7k6hKYoXafeYhYg=rw','link',15),(40,'https://lh3.googleusercontent.com/X5ayFDjqcUFP8_57qqK_cPZVfX4BFHNukrC2yuR46KCFlfDzZcraJhQCs3nYx2x8ygZddB2NCRJBRN8CuUDvKTRkTF93jqfa=rw','link',15),(41,'https://lh3.googleusercontent.com/SFmiRPLVXbXccMdY7lfFHGBqbZdpm2Rm2taPoeWaF6nCikpQQUNCgQVcKOmG78WpKlE6MdK4_pd0jexbB-IOF6KBQoGtTQc=rw','link',15),(42,'https://lh3.googleusercontent.com/c86p5Wr-8xWX6ASiSrC6idRcS_B0Xgmd_Ki5OVE-bOVwNlJ30w20EWSiFpOJMrK7t6HoWj4T7g8YrzMw7Si5wet2A78FO37YUA=rw','link',16),(43,'https://lh3.googleusercontent.com/eToZtNfh96A0-_MhHeQN2RwU-X63YnYtCW9AZrwMWz7Hlhzf4QS6oNWAq0SodgDgQP9jYqV6mRrK3d8-e_s4cmzcKK8f1XNy1Q=rw','link',16),(44,'https://lh3.googleusercontent.com/W_jh6jOg_MX9ArLdo1FgfQclS0LLlYqfsEEUv8zuOHREmboQ1UeNQaJvn_WdOaIWqWgYSna_lw1cQW1pGlJskWNtAAQ2wQ=rw','link',16),(45,'https://lh3.googleusercontent.com/NmGTCg-mLniaY1ZN6BtCntR2LXBWj7Km0VFffqdZUJWuKISEjXbxnnSb-kLOyZK7rs2PKAwo1bnvnTLASuc=w500-rw','link',17),(46,'https://lh3.googleusercontent.com/mLnklkjRU5MewtUVZ_gZRks8i_AjtVIy0bokuxLZnJ6xN4qQgZKSLCK2EbPKIWS8F_6kuJpKnSPMuSrjyA=w500-rw','link',17),(47,'https://lh3.googleusercontent.com/_geLvnKONNB_EFEm7q3pEoz4_bQVq3KkuKJBZc2oj6qWzsKmG5y9XrJqFserkTHLlfGxkgStl2nkU-Q-V1A=w500-rw','link',17),(48,'https://lh3.googleusercontent.com/j4nf1ga8a8OsElysXKW0Dw8iey4HCK2D_e0GEDENiT-q8xjqrsFEZ340kEAKRMm8iKo4dc4plZjgFjkAhDo=w500-rw','link',18),(49,'https://lh3.googleusercontent.com/JcydkxTsr_nah7jN-AQPWhzC-h40C6oMxLjJVC3IH_9u0chq9-NrmWlrmSU8NVB3VSyew8b9u3-dBlm3m8E=w500-rw','link',18),(50,'https://lh3.googleusercontent.com/D1Cyk-bKibpWpZXdRYXHjmZMp-1MR54p9ZQ7Ic9sZZmj2rMSI-9Wj8Lq66MU-2OxEjAyd5H02lzejrj9DkE=w500-rw','link',18),(51,'https://lh3.googleusercontent.com/AXJjJmmCGE-oUm-urSsrH-BE3UyM8wSXtIv2ywrTvOMlVxvLQu98h3VHWLyq0sv1p7I4s-GKE41RsWhv23KtggnNFtSXfuEG=rw','link',19),(52,'https://lh3.googleusercontent.com/U06XO82An32dEgSR5sP21369es4lVY3DkmFckfRcqPQEvzS5BDtc0pyCGNDN0cbzkREpSPdvlW8ZXibwXuH6tZpbUnEWVmEy=rw','link',19),(53,'https://lh3.googleusercontent.com/DibuZBtsy_6OgKNCJyh5nf3zER7mwxpblkSDkOPuftvC20BTullfRt9bHB6UpAEWFOVvRktvPnZXrBzVdJXWuNbq-GuMIT-AIg=rw','link',19),(54,'https://lh3.googleusercontent.com/PjhHXXreUCNNLITAJ3gfR2heYwi7JRjbjIwC4Rh-zDi8cUqQT0CoVQVQ0WzoOuKG487h__xpEZQ_zQDXfWvRWWrKDYFSmc0wZA=rw','link',20),(55,'https://lh3.googleusercontent.com/BjzfYhElRNbnFhQR3aFcMonovMkU34YrH4o5MBARtrG3y-6etUQXxx4aTmZ_zv-sZvNC9A6Fcmt9BpD4j-pXXNF50IHi_wz-=rw','link',20),(56,'https://lh3.googleusercontent.com/sNOeg9vzswbZ1V-scJyqvAOMrCaHhP6gIMkOXS66gvwAjQTRYM9RQTfBQkwiigCHqIv3uwTQzY4FxwWBpc59vWyrMs41Od4=rw','link',20),(57,'https://lh3.googleusercontent.com/cEj-_wpPF1w8YsBWiG4sEMYPS-QInZKj6HaCHGBbfO0Tz6JA5OkaP5N6_vOYHygJYmAy-Pt0wfIibbGXKI850Z3Fi_pDYKgK=w500-rw','link',21),(58,'https://lh3.googleusercontent.com/PvOruwgdA8qMO7IQavqMrHEh1SlXf1RT9CZKbrcd1u55jb8jIfTmQYuUgCdtLxJocm4-EDrhx8omQaHKM5s-QCZZtKYf2jHy=w500-rw','link',21),(59,'https://lh3.googleusercontent.com/nkonzCloYeNWO9pP5h7a_6LgzIjehvs6Vnnf3kHY121Q0vtg_gFivJifWNPzS0Pp75uzbMzfYuh0kdc_BqnydcLJTNGcZqvh=w500-rw','link',21),(60,'https://lh3.googleusercontent.com/ZBToRyYa17JBrl2PKbUHqJ94Bz0nTLdQF43-R0cXldvVXrX-uNTwhRmZOjjV7eDyt8FWRn7d6sz-jKXnHAo=w500-rw','link',22),(61,'https://lh3.googleusercontent.com/lB2mie6tBy-aa5QzSo8xJtWydl2lg70XNJRvJD5eclRGgW_WjGvB8iHc1lFJZoEsEXGUxjPGYJQ_rRJv7nU=w500-rw','link',23),(62,'https://lh3.googleusercontent.com/TSontnhSM-cmfQ3dujSg1fIBjrod_AaSgbUQJKYiO5ZJIG6dPKWrG_E-a5sW0IHz5mnUajjoDzfZ4la5E04=w500-rw','link',23),(63,'https://lh3.googleusercontent.com/ILg8rJXKl6YMSaGomRKoeV3FJg2QuQqmVRWPsuftbrq-KuHwL0fAVw0zHyLrtgkxuhU5sZFD3wWjgBPrk4c=w500-rw','link',23),(64,'https://lh3.googleusercontent.com/8FecSldH7JLOp0ak_fceKa7uwb0BYa1WcUr5fmiXfYEN7lsq6j_p_WCSPfYrE96nSp7gfc4qLYUJq9it4IehZ6NB5XVNUA=rw','link',24),(65,'https://lh3.googleusercontent.com/4xCtgfAduKCG1FHRukjYhTiTb0mRT_4I-2a-9I8-ALubvEQ5_0qTygGF3W2j9msAabDR8u-pa7GJ8ZMyw2UByrqERgyfX-A=rw','link',24),(66,'https://lh3.googleusercontent.com/VV5i8sa5m5R-U7lVU4wPGX-uDaCuHG7Q09LvaEd2bR_6HwIe0zsLoPcCK6Ptgy8QigR_79bUCKfjdPk7agp2qTy1fmQs5Ih6pw=rw','link',24),(67,'https://lh3.googleusercontent.com/Cn-d0ShE2Ow2fBhxps9RIbzsBbtUDTYMxpr9ITgwbCev2yaiWde3ei8Z9F_NDbHnRF-6RJ2fyBFi6aLpNhWXekN9qU6EbWsu=w500-rw','link',25),(68,'https://lh3.googleusercontent.com/dIikUZE0WneXyDvkiWg_K2w5jAwWSsrUc7A-TiIWiBLoklRufALruoCqThrjH4fRw1r1gXxi-SlO9RycTstM8q96EwBZtzg=w500-rw','link',25),(69,'https://lh3.googleusercontent.com/xtGREeVp6mCgKeRyyHuagJecKmZtWatWwj8gGkIu5ed98Ql80ffKdZjQFmvWUHozz3FGTDtfA8ZAWzRpThKaLbhtH7pq9PGyxQ=w1000-rw','link',25),(70,'https://lh3.googleusercontent.com/lQ4T9Fe-3dg8APYZ5XukbFYjUj3Tx2Y3GhjkwTa71piKRiPZ-b1qmUtlVciz8ErubnbbOXQ0vOqUJZPYZmWC=w500-rw','link',26),(71,'https://lh3.googleusercontent.com/jkfse-h_P9ghinL9Vybgkrr0VWkghIWJD-bJtudZgDddcc68HqajBkoSbM_489P9r9m_jRTB557divJ6Og=w500-rw','link',26),(72,'https://lh3.googleusercontent.com/oOf7b49fYE-B1c7AVi4KjVqyZkSU5DssTbbSffD3RzXojubS2cv0tH6TIFT5fkwS9L4uIvTig2ySMBfmS98=w500-rw','link',26),(73,'https://lh3.googleusercontent.com/RNNPCDlBIDpSug73zuV9xiJX8h_biX5D0j1OevuaAnOv6afqXr9fL2hte50UWgxr62DR1lDhBdVyP0-tRbU=w500-rw','link',27),(74,'https://lh3.googleusercontent.com/X3EB1fAbjMMTWxbFla0U7BzpfoEPGlGX2Uwug9wDEk5YYAa2mT_d1LOicQNLX7OWL_hC1skInUjPABsrBQ=w500-rw','link',27),(75,'https://lh3.googleusercontent.com/7xs3RNYg37UTaerCAhK9FXNi7fcp2PkDdTez0mwlAeLwh0uktSaOluFYeDsGb4jVcRTkrW5gaOLqIHCm0Q=w500-rw','link',27),(76,'https://lh3.googleusercontent.com/qlustj1MiVfWRrCR8eNhFr8eOmAwMaRUhMmYeGFVMAoG3bnryY0czFXZjF6kMhr-k1mj6sKwpxHO0DYCfMgne4oF18-QehQ=w500-rw','link',28),(77,'https://lh3.googleusercontent.com/9XVDSArZemhDHJdTjB_ZtCOdfJiHjX8454Ajjp0KkIVXc7etr1C09dYQ6McusO3XhTh0ccqdLhURPlQyNexPM5hqWqcNZORl=w500-rw','link',28),(78,'https://lh3.googleusercontent.com/-RT4f3WAvElhKVD4fzuy7G5rO9LmZw_PdxSZsKZid-xDAVeEZGpiVh2vIsshZgSj21Gc1doczfq0pV15O8r9xyEtqp49Ubbb=w500-rw','link',28),(79,'https://lh3.googleusercontent.com/P6NV9CA54zQ8YbIxM-dQ8WjOldgdaNpI5wzBH_K1sQva4Yzdq31yBhuhlpAmolw45qrglakDDjXN1be_xi_K6yLxliul3t7a=w500-rw','link',29),(80,'https://lh3.googleusercontent.com/roiOsTiqv2elSw_ZsoBuuXzPwlrjXMCDbyfwUSkxrnDebUQ4l2aRhq41qaBPyiHnSiPXHMWYni0RnL7EdUp3xe8Ik_wk-ho=w500-rw','link',30),(81,'https://lh3.googleusercontent.com/EyOEKFQ_OCy2nxzuMrIT_yPb_AIF0hV9QIxCoIVyEz_i3UiVGg0IhgarQCPmNZGyxqmhvv23b_46-4OUyftrJxy-JiugEiE=rw','link',30),(82,'https://lh3.googleusercontent.com/83XhL8cpo5luI2GwbNV6E8jfTbVycCZ_Q422ncxi2bcnadts3GRGPHjBU0GFLfD2BTfK-FuS4wNj1EqFrA9w1-sOCNcernQ=rw','link',30),(83,'https://lh3.googleusercontent.com/wflNzk1T5EhPrWSx-jSab0XSBru-nt-b8tIzoMYLoyk0Hf-AFv3jmOanC2T5CtCyjAQHhVq1TISP1vClyCjzscxaJLoAOC1y6g=w500-rw','link',31),(84,'https://lh3.googleusercontent.com/-5Gktk4_xTEuANN46n-6wCj3wnapDPhbbDcrom12firdJV5J-awQqCS37xnnrZTxRcAXaRKLbd9C3vGYm5yLFGnF6g3xfoXa=w500-rw','link',31),(85,'https://lh3.googleusercontent.com/owr1fkaf-Yb3eDFtzKDcVnzd7PiAEMMOGF23hasV2Cmogxfv_GbbOSLE0cADjzXmI6XwuYs6Psd8KDgrqgiP2Joh6YBNBcPt=w500-rw','link',31),(86,'https://lh3.googleusercontent.com/wvq7R2UhLOI9i5-Q7xaOyvkjMRW2UrPmGFouqQ_Iz6Bqzfy9_LW05t-2CWQsHbr9fj-Ra1IG1oKRQcar3CCn=w500-rw','link',32),(87,'https://lh3.googleusercontent.com/mOmGVJ4diYMDs7rrrm-muO0zzK_Y7j33b8HpSjnEuKhBTCrE9rbF3mJrK03gg1Cs6gss5IRSHzcjXI6hgkTkTsNOQP-d78p9=w500-rw','link',33),(88,'https://lh3.googleusercontent.com/ZsmcTo5voE__bRjvBNlh-dHnY6DdO5IdKYjR3bgX3Wo-jEO-Hdxp7m04sG2sVRNSZfk16kcq6r6tdlVpduPffFRKsMcjRRI=w500-rw','link',33),(89,'https://lh3.googleusercontent.com/I_jn7R5ap_WZOBnjg1ct7df_p8eHTQ6IhU2D-CxBkSn6otueSOMS6Mj2hAlZDxDPo2Y48g2K6STdV54ZMbwmV8KIWVjwQ3a5Qw=w500-rw','link',33),(90,'https://lh3.googleusercontent.com/IV2pNCSctg3M9UlvUDAOk6kZbhsL_32_GgrRuBuWB9JJMdNqxPP57itmW-EYtka_NvaT8wiVLf2-o_BNmNurGPJi1EV-jALB=w500-rw','link',34),(91,'https://lh3.googleusercontent.com/_3sO3QIKL3u6pkGaug9lK7Xcl-7EYklqFLT8Bx0TNLNIWhNmLBEbcU2Xg5YXKV4kOvsRQcFZ8s0bx7mybmo2s3awRG4ROtk2=w500-rw','link',34),(92,'https://lh3.googleusercontent.com/KJunkMJaWvZvrQ88gE2y0F3iR-3528ZhCliGwuHsxSCup47A1I7mrg4an2NCbDMf2cVzp7tnEbjxWyUgdzrz=w500-rw','link',35),(93,'https://lh3.googleusercontent.com/L8TvYv3WTqIKTvrqpwjbSRN4iZ9m483k363UfbOR88wC2WYOvwd1es33b3ctL_0ZKv1NGYv75cN4TB6zJ4h-au7L1ZNtnJk7=w500-rw','link',36),(94,'https://lh3.googleusercontent.com/ZwV1DdQos5oioUN4OflQNRU0SX0wU2_bf33MkTDyuklnDqKmXJO5fj1jNzFKMKAraKSPVO9tPRlupT_rIXQEAemCZu8-KJw=w500-rw','link',36),(95,'https://lh3.googleusercontent.com/NE5sWTWa7hvnmIv-zjWT5fj9QbG8tjf-gmB-1GABf2WOiBZeZwvhoW6HfDrGxYV-kYXMdmxjdmCf8xdD40V5dH9aOpEVsz6q=w500-rw','link',36),(96,'https://lh3.googleusercontent.com/_vIy7YgkXE7nB9UnLcdnLElAQWZ4Bkx6BclT1J2yA5iGJ2zlRBOgkektA_8CUZ64NM-shcyVq5sLjhU--w=w500-rw','link',37),(97,'https://lh3.googleusercontent.com/7-6CQSePTfy73qXCAbDytGIOP5ogO0MVA63IjwwHshmhnjoXxs71i5ueYrOY9Rvv9xOvqLPxkmVIsgl8Nxs=w500-rw','link',37),(98,'https://lh3.googleusercontent.com/jm_9ph7MQU5hBp3GxvHQ1VVsmnXfupokDRYqIvRpmUYsWWRpti5HfzPRo09_Q4mghaYOBAUXDCl3cZ4fkw=w500-rw','link',37),(99,'https://lh3.googleusercontent.com/4AiEyaLmRaj9oJofF0_uW2Lqj6oCi7JxjonO3jLKoRYV1jv8rcq_bX_11_I9W6OwW7f7kTx66OxWkzLLwwFgJVTqstts4-6NeQ=w500-rw','link',38),(100,'https://lh3.googleusercontent.com/hXg4iTU30DfpuMg724Pur1m8xZzRiKYEZEu6iLx6bB096TmOq2T--3I8uVFFYK5wGV0vLSFD0_Qlwc6gAq_hhaZ25NpG0pIm=w500-rw','link',38),(101,'https://lh3.googleusercontent.com/NExTZZmG8gTGGMQal_GFq-QvZovfYosxaqakgXlxOCPry34iJBxU61nadpbekn_zHvahAMyEBbzzE5ATF67swsts_CLCbLhYPg=w500-rw','link',38),(102,'https://lh3.googleusercontent.com/4yA0z2nqdT08hwp5YDA9wlmj_8R2Yc7jL35SLqNpmvvw2y_iG6RUDKCdOl-6dGRv5MMiDJhinOvFY5rwTtBX0y5D_vNSsSMn=w500-rw','link',39),(103,'https://lh3.googleusercontent.com/AhFFHLi5aUWapF5-XebnwMPAXldNjO4AWVeQ06slW3WDf9ITDUYNn-aIS3QDPIdYRPJVnHvzMMI5KIrbNHCTRmAj6FMdJdY=w500-rw','link',39),(104,'https://lh3.googleusercontent.com/7lqJTshQpb-GK1wKgfqnbTId5NpehzaL1PmFRqXfb6qNDb3kr3WXdh-QezFRoNzPxhQA_E99xgAkh4Ym58eak_nJhyxmIUTb=w500-rw','link',39),(105,'https://lh3.googleusercontent.com/Md38nfRvafqU4NXUDdDSNLHCg7DdM8kBrANiTaQMekVmj8F10t8L66ldC7_QWmt0RgYXeTvYXa1EH1MwsQ=w500-rw','link',40),(106,'https://lh3.googleusercontent.com/2etX3vRmFy1GJl2wZ0ySC_1uHdpVIO2xgJaAGpempb2LosMVRyIE4FxtzhpKlGbdtoTUEys3MpjI_Q1u5o4=w500-rw','link',41),(107,'https://lh3.googleusercontent.com/BZ6UaUFFzMitpcsZIlZPofevrkFr1567XdblHlyKjl1w1oEO1Ph_UFoYI7ISjQMg_2pUgEYokN9DwlrmozI=w500-rw','link',41),(108,'https://lh3.googleusercontent.com/T4dQPx6nSJi3y147mwJH6kDJsxM6ULAAtIoZjgDDIi3yF5YpFYW7QbWh_nfT0Lhi2LxIDFuNPMamXlrBW-EcZ1NUGYBZ6VqbLw=w500-rw','link',42),(109,'https://lh3.googleusercontent.com/OHdARig5sCojhKNlywEaQ2sRNdI8j5YkQ25mjENel6Nnc9bc9eEv75tV2rhFO6uPRwd5D4NhzHJJ6oaxfO4QO49Xw1qQBe6YUA=w500-rw','link',42),(110,'https://lh3.googleusercontent.com/yffSILp0UOfum2KEujefBhtH1pRpkQINrMMWthoviyBvkVYVQ8MXGshEPlnGLizzfYUfcXgKspKKiSQHiDcrx1VNWwUg_tIx=w500-rw','link',42),(111,'https://lh3.googleusercontent.com/XpKoZGx9kCsQcRab8QZoJ0LTyJTkMF_R6ucgiOpK91ROlqFRz7veqEqF6Sfc1dvUWDY4qzdyc0SyR3rDImi7=w500-rw','link',43),(112,'https://lh3.googleusercontent.com/WynLDrInnKnGErCyfzB1Hh9IcrlGIZJ0IVBWvuNsQnk1frPALJ1Zsfx232Ua-Zjx0J1TO3Dh3-9PhN3q4rM=w500-rw','link',43),(113,'https://lh3.googleusercontent.com/mWIQhqcjlRYgNUd5Hjpn5VoklKhOp_1Bn61CBqpx2J1CMrpf5-emnBeDvbx1fkxJCJLmtEPa4RgvW5ppXfE=w500-rw','link',43),(114,'https://lh3.googleusercontent.com/rZVKBiLKn1pZ7rB6uiwSY4JMlCzXdiUlwJpCK3ahPWy6N6mo73tGT-I0keKt3p8cBfcMNK1qjK_rIOfhzRozzw0iNUzd_aw=w500-rw','link',44),(115,'https://lh3.googleusercontent.com/I8IQC0Vj1yZ9V2bUqKQZ-4_emuPijOfDmknAnj3RFEfMbnB_YyXuzxSCACeBzFY7yk4dvoOkVRwpJBR61Zpe53Z-OFMmx_Xj=w500-rw','link',44),(116,'https://lh3.googleusercontent.com/KJ6Ndqsna_viBNBjKgznOncU5DDy1U-nqPMi6Wdp9eHIm4g0w6lPMYW-hfp72ZcgHamx1XyGxi5u9zha4wYbmkZr07ULhMI=w500-rw','link',44);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 21:04:45
