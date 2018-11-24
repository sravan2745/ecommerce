-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: DMart
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout` (
  `order_id` varchar(100) NOT NULL,
  `pid` varchar(100) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `totalamount` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES ('cb15b4af-334c-4360-96d5-aac4536b2e70','4726fa2f-4410-4895-b447-053c7e890111',1,'15748.95');
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` varchar(100) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `dispatch_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `totalamount` varchar(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  KEY `order_id` (`order_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `checkout` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('cb15b4af-334c-4360-96d5-aac4536b2e70','user@dmart.com','2018-02-26','2018-02-27','2018-03-01','15748.95','Order Placed','Visakhapatnam','none');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `pid` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('2c333910-58d2-4e7f-8dfa-7cb272797d21','Sony Xperia XZ Blue','6 GB RAM | 64 GB ROM',15,'electronics','Sony',29999,'xperia-XZ-Blue.png'),('4726fa2f-4410-4895-b447-053c7e890111','Xiaomi Redmi Note 5 Pro','4 GB RAM | 64 GB ROM',10,'electronics','Xiaomi',14999,'Xiaomi-Redmi-Note-5-Pro.jpg'),('25df86c8-8503-4cef-9fb6-4d01d71ada0b','Samsung Galaxy S8 Plus','4 GB RAM | 64 GB ROM | Expandable Upto 256 GB\r\n6.2 inch Quad HD+ Display\r\n12MP Rear Camera | 8MP Front Camera\r\n3500 mAh Battery\r\nExynos 8895 Octa Core 2.3GHz Processor',5,'electronics','Samsung',58900,'samsung_galaxy_s8_plus.png'),('39c759ed-9d05-4908-9ffa-9e1184b15654','Apple iPhone X (Silver, 64 GB)','64 GB ROM |\r\n5.8 inch Super Retina HD Display\r\n12MP + 12MP Dual Rear Camera | 7MP Front Camera\r\nA11 Bionic Chip with 64-bit Architecture, Neural Engine, Embedded M11 Motion Coprocessor Processor',1,'electronics','Apple',83499,'Apple iPhone X(256 GB).png'),('abb383f2-159f-4daf-8ee7-c37f8d32b3ec','Samsung Galaxy On Nxt','3 GB RAM | 16 GB ROM | Expandable Upto 256 GB\r\n5.5 inch Full HD Display\r\n13MP Rear Camera | 8MP Front Camera\r\n3300 mAh Li-ion Battery\r\nExynos 7870 Octa Core 1.6 GHz Processor',1,'electronics','Samsung',10999,'Samsung Galaxy On Nxt.png'),('5cb36a31-c95c-403a-ad53-d06eeceb8d0e','Moto G5 Plus (Gold, 32 GB)','4 GB RAM | 32 GB ROM | Expandable Upto 128 GB\r\n5.2 inch Full HD Display\r\n12MP Rear Camera | 5MP Front Camera\r\n3000 mAh Battery\r\nQualcomm Snapdragon 625 Octa Core 2GHz Processor',1,'electronics','Motorola',11999,'Moto G5 Plus (Fine Gold, 32 GB).png');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `email` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `security_question` varchar(100) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('sravs1538@gmail.com','Sravan','Kumar','8331004135','1995-04-27','male','favcar','McLaren','9032132615','9032132615','admin'),('Sree30@gmail.com','Bhagya Sree','Vallu','9573567910','1995-06-30','female','nickname','Sweety','9032132615','9032132615','user'),('shivapuppala06@gmail.com','Shiva','Puppala','8500690160','1995-10-06','male','nickname','Artist','8500690160','8500690160','admin'),('riturocks96@gmail.com','Ritu Shree','Gowswami','8331004135','1996-05-19','female','nickname','Vampire','8331004135','8331004135','user'),('prasanthianu96@gmail.com','Prasanthi','Anu','9441472022','1996-07-19','female','firstkiss','Mother','9441472022','9441472022','user'),('akhil11@gmail.com','akhil','bhuvanagiri','9441472022','1995-04-29','male','vacation','Kerala','akhil','akhil','admin'),('admin@dmart.com','admin','admin','8331004135','1995-04-27','male','petname','Harry','admin','admin','admin'),('user@dmart.com','user','user','8331004138','1995-04-27','male','nickname','sony','user','user','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-26 16:41:03
