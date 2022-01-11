-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerceWeb
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.10.1

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `address_line1` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'764 Melrose Court',NULL,'Prescott','Arizona','United States'),(2,2,'26 Anniversary Court','Claremont','Florence','South Carolina','United States'),(3,3,'89 Ryan Place',NULL,'Port Washington','New York','United States'),(4,4,'4901 Welch Crossing','Alpine','Flushing','New York','United States'),(5,5,'1314 Jay Drive',NULL,'Houston','Texas','United States'),(6,6,'9679 Warrior Plaza',NULL,'Houston','Texas','United States'),(7,7,'6 Kim Pass',NULL,'Philadelphia','Pennsylvania','United States'),(8,8,'4 Sutherland Terrace','Colorado','Colorado Springs','Colorado','United States'),(9,9,'5 Manufacturers Parkway','Morningstar','Iowa City','Iowa','United States'),(10,10,'47611 Declaration Crossing',NULL,'Dayton','Ohio','United States'),(11,11,'02587 Thompson Lane','Hoard','Tulsa','Oklahoma','United States'),(12,12,'7727 Dunning Trail',NULL,'Charleston','West Virginia','United States'),(13,13,'6305 Dawn Park','Loomis','Murfreesboro','Tennessee','United States'),(14,14,'05 Dayton Terrace','Esker','Detroit','Michigan','United States'),(15,15,'2457 Larry Alley','Morning','South Bend','Indiana','United States'),(16,16,'9 Columbus Junction','Pepper Wood','Richmond','Virginia','United States'),(17,17,'74213 Forest Run Avenue',NULL,'New York City','New York','United States'),(18,18,'8 Lerdahl Terrace',NULL,'Raleigh','North Carolina','United States'),(19,19,'121 Killdeer Point','Reinke','High Point','North Carolina','United States'),(20,20,'8 Lakeland Lane',NULL,'Charlotte','North Carolina','United States'),(21,21,'9 Oakridge Hill',NULL,'Miami','Florida','United States'),(22,22,'37917 Fieldstone Center','Clemons','Hicksville','New York','United States'),(23,23,'2859 Knutson Center','Mccormick','Odessa','Texas','United States'),(24,24,'061 Dorton Trail','Northland','Bakersfield','California','United States'),(25,25,'72 Merry Park',NULL,'Dallas','Texas','United States'),(26,26,'87701 Twin Pines Avenue',NULL,'Sioux Falls','South Dakota','United States'),(27,27,'2797 Merry Lane',NULL,'Jackson','Mississippi','United States'),(28,28,'6956 Jana Avenue','Cody','Buffalo','New York','United States'),(29,29,'3210 Blackbird Pass',NULL,'Los Angeles','California','United States'),(30,30,'3585 Sutteridge Junction','Stuart','Washington','District of Columbia','United States'),(31,31,'6 Sunfield Point',NULL,'Indianapolis','Indiana','United States'),(32,32,'21660 High Crossing Place','Fairfield','Sacramento','California','United States'),(33,33,'08 Oxford Pass',NULL,'Aurora','Illinois','United States'),(34,34,'563 Center Road',NULL,'Pasadena','California','United States'),(35,35,'00 Di Loreto Road','Mandrake','Glendale','California','United States'),(36,36,'85 Alpine Road','Ludington','Shreveport','Louisiana','United States'),(37,37,'220 Anthes Lane',NULL,'Detroit','Michigan','United States'),(38,38,'40 Lien Trail','Shasta','Jamaica','New York','United States'),(39,39,'7 Randy Junction','Northport','Albany','New York','United States'),(40,40,'77 Mockingbird Terrace','Blackbird','Boca Raton','Florida','United States'),(41,41,'0 Northland Center','School','Portsmouth','Virginia','United States'),(42,42,'55 Banding Trail',NULL,'Marietta','Georgia','United States'),(43,43,'9 Old Gate Street','Thierer','Kansas City','Missouri','United States'),(44,44,'7 Thierer Avenue','Troy','Tallahassee','Florida','United States'),(45,45,'023 1st Place',NULL,'Grand Rapids','Michigan','United States'),(46,46,'1 West Pass','Stephen','Fort Myers','Florida','United States'),(47,47,'2098 Di Loreto Alley','Golf View','Akron','Ohio','United States'),(48,48,'4 Dapin Way',NULL,'Southfield','Michigan','United States'),(49,49,'9586 Anthes Lane',NULL,'Santa Monica','California','United States'),(50,50,'9415 Northland Place','Dixon','Las Vegas','Nevada','United States');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `order_date` datetime NOT NULL,
  `address_id` int NOT NULL,
  `payment_mode` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping` float NOT NULL,
  `sub_total` float NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `total` float NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id_idx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,24,'2021-06-10 14:58:55',24,'CARD','CONFIRMED',40,3857.06,2000,1897.06),(2,43,'2021-03-09 10:52:48',43,'EMI','CONFIRMED',40,7851.24,2000,5891.24),(3,14,'2021-05-15 06:50:19',14,'CARD','PENDING',40,3520,2000,1560),(4,7,'2021-04-28 16:06:02',7,'NETBANKING','PENDING',40,8123.79,2000,6163.79),(5,39,'2021-10-07 14:47:51',39,'EMI','PENDING',40,4132.37,2000,2172.37),(6,38,'2021-04-27 14:29:18',38,'EMI','PENDING',40,163.89,203.89,0),(7,20,'2021-12-06 03:32:11',20,'CARD','CONFIRMED',40,1881.12,1921.12,0),(8,24,'2021-07-20 05:02:34',24,'CARD','CONFIRMED',40,4879.2,2000,2919.2),(9,24,'2021-09-22 19:39:46',24,'COD','CONFIRMED',40,8528.24,2000,6568.24),(10,14,'2021-11-01 00:50:58',14,'NETBANKING','PENDING',40,6350.11,2000,4390.11),(11,25,'2021-10-01 11:16:07',25,'NETBANKING','CONFIRMED',40,7919.7,2000,5959.7),(12,41,'2021-01-19 07:33:23',41,'NETBANKING','CONFIRMED',40,2754.38,2000,794.38),(13,19,'2021-11-14 00:31:04',19,'CARD','PENDING',40,8017.49,2000,6057.49),(14,29,'2021-07-17 12:42:28',29,'COD','CONFIRMED',40,1736.05,1776.05,0),(15,45,'2021-09-06 19:59:19',45,'EMI','PENDING',40,5718.05,2000,3758.05),(16,34,'2021-01-13 17:36:06',34,'COD','CONFIRMED',40,7004.16,2000,5044.16),(17,23,'2021-10-03 23:17:12',23,'CARD','CONFIRMED',40,2555.44,2000,595.44),(18,18,'2021-08-25 07:28:22',18,'EMI','CONFIRMED',40,2887.55,2000,927.55),(19,27,'2021-06-08 10:15:35',27,'NETBANKING','CONFIRMED',40,3994.26,2000,2034.26),(20,17,'2021-02-14 08:57:34',17,'NETBANKING','CONFIRMED',40,543.05,583.05,0),(21,5,'2021-12-05 16:08:15',5,'CARD','CONFIRMED',40,2514.54,2000,554.54),(22,46,'2021-04-25 19:38:31',46,'EMI','CONFIRMED',40,3355.72,2000,1395.72),(23,32,'2021-11-04 01:51:57',32,'COD','PENDING',40,4333.4,2000,2373.4),(24,46,'2021-10-29 17:44:31',46,'NETBANKING','PENDING',40,3881.1,2000,1921.1),(25,37,'2021-11-02 12:54:17',37,'CARD','PENDING',40,4004.77,2000,2044.77),(26,18,'2021-07-03 20:38:03',18,'CARD','PENDING',40,6741.75,2000,4781.75),(27,36,'2021-05-08 01:11:56',36,'NETBANKING','CONFIRMED',40,5863.53,2000,3903.53),(28,26,'2021-02-18 11:06:13',26,'CARD','PENDING',40,5060.45,2000,3100.45),(29,50,'2022-01-09 19:17:13',50,'CARD','CONFIRMED',40,3429.05,2000,1469.05),(30,38,'2021-11-07 15:06:39',38,'NETBANKING','PENDING',40,8623.67,2000,6663.67),(31,40,'2021-06-10 18:11:57',40,'EMI','PENDING',40,6327.22,2000,4367.22),(32,23,'2021-10-28 10:44:33',23,'EMI','CONFIRMED',40,961.26,1001.26,0),(33,6,'2021-05-01 16:49:52',6,'CARD','CONFIRMED',40,7267.43,2000,5307.43),(34,22,'2021-11-03 04:13:57',22,'NETBANKING','CONFIRMED',40,1113.67,1153.67,0),(35,23,'2021-08-04 06:41:10',23,'EMI','CONFIRMED',40,7527.62,2000,5567.62),(36,41,'2021-11-10 12:29:43',41,'EMI','PENDING',40,5715.41,2000,3755.41),(37,10,'2021-01-17 13:50:23',10,'COD','CONFIRMED',40,3707.89,2000,1747.89),(38,19,'2021-07-10 06:06:01',19,'NETBANKING','CONFIRMED',40,9916.02,2000,7956.02),(39,46,'2021-09-01 01:09:43',46,'NETBANKING','CONFIRMED',40,4248.05,2000,2288.05),(40,25,'2021-06-24 21:10:20',25,'NETBANKING','CONFIRMED',40,2294.45,2000,334.45),(41,13,'2021-09-07 19:08:30',13,'CARD','CONFIRMED',40,6096.05,2000,4136.05),(42,50,'2021-12-01 08:22:11',50,'NETBANKING','CONFIRMED',40,2694.45,2000,734.45),(43,3,'2021-07-30 08:29:34',3,'COD','PENDING',40,1623.52,1663.52,0),(44,2,'2021-12-19 18:49:09',2,'NETBANKING','CONFIRMED',40,4705.95,2000,2745.95),(45,7,'2021-10-13 18:10:45',7,'NETBANKING','CONFIRMED',40,2021.6,2000,61.6),(46,46,'2021-08-05 02:10:32',46,'EMI','PENDING',40,9464.82,2000,7504.82),(47,16,'2021-08-17 23:10:06',16,'NETBANKING','CONFIRMED',40,860.8,900.8,0),(48,25,'2021-06-27 04:59:57',25,'COD','PENDING',40,9182.73,2000,7222.73),(49,16,'2021-12-19 01:21:37',16,'EMI','CONFIRMED',40,9210.51,2000,7250.51),(50,24,'2021-01-30 22:01:42',24,'COD','PENDING',40,8785.95,2000,6825.95),(51,48,'2021-06-23 22:08:35',48,'EMI','PENDING',40,6113.8,2000,4153.8),(52,39,'2021-01-17 12:33:07',39,'CARD','CONFIRMED',40,1161.52,1201.52,0),(53,20,'2021-10-31 22:12:45',20,'EMI','PENDING',40,1603.45,1643.45,0),(54,29,'2021-12-26 15:06:29',29,'EMI','CONFIRMED',40,3045.58,2000,1085.58),(55,12,'2021-03-01 00:30:53',12,'NETBANKING','PENDING',40,1467.6,1507.6,0),(56,2,'2021-06-04 11:47:05',2,'NETBANKING','CONFIRMED',40,4188.65,2000,2228.65),(57,4,'2021-03-28 20:45:17',4,'COD','CONFIRMED',40,6921.87,2000,4961.87),(58,12,'2021-03-12 07:21:47',12,'NETBANKING','PENDING',40,239.95,279.95,-0.0000152588),(59,37,'2021-04-08 01:44:06',37,'NETBANKING','CONFIRMED',40,8686.99,2000,6726.99),(60,18,'2021-08-09 11:42:07',18,'NETBANKING','CONFIRMED',40,5820.15,2000,3860.15),(61,16,'2021-05-06 18:40:01',16,'NETBANKING','CONFIRMED',40,4362.96,2000,2402.96),(62,22,'2021-02-26 11:32:43',22,'EMI','CONFIRMED',40,5374.71,2000,3414.71),(63,22,'2021-01-19 22:49:14',22,'CARD','CONFIRMED',40,3550.76,2000,1590.76),(64,21,'2021-08-31 04:06:18',21,'CARD','PENDING',40,9563.23,2000,7603.23),(65,12,'2021-09-27 19:47:32',12,'CARD','CONFIRMED',40,1558.21,1598.21,0),(66,42,'2022-01-05 22:16:59',42,'CARD','CONFIRMED',40,2840.45,2000,880.45),(67,42,'2022-01-07 10:06:44',42,'NETBANKING','PENDING',40,3538.06,2000,1578.06),(68,32,'2021-09-11 04:40:26',32,'COD','PENDING',40,9804.44,2000,7844.44),(69,39,'2021-03-21 18:28:04',39,'NETBANKING','CONFIRMED',40,1728.8,1768.8,0),(70,44,'2021-09-15 09:56:59',44,'COD','CONFIRMED',40,7619.07,2000,5659.07),(71,46,'2021-03-09 13:06:17',46,'NETBANKING','CONFIRMED',40,2306.63,2000,346.63),(72,40,'2021-02-23 20:12:27',40,'CARD','PENDING',40,223.39,263.39,-0.0000152588),(73,39,'2021-04-18 20:01:28',39,'CARD','PENDING',40,7726.59,2000,5766.59),(74,39,'2021-09-11 21:26:10',39,'EMI','CONFIRMED',40,8105.5,2000,6145.5),(75,15,'2021-07-05 20:38:04',15,'EMI','PENDING',40,5887.12,2000,3927.12),(76,25,'2021-12-31 23:33:46',25,'EMI','CONFIRMED',40,987.27,1027.27,0),(77,26,'2021-10-16 12:52:30',26,'COD','PENDING',40,5361.6,2000,3401.6),(78,18,'2021-02-03 04:03:21',18,'COD','PENDING',40,9763.11,2000,7803.11),(79,1,'2021-08-13 17:51:54',1,'EMI','PENDING',40,3140.69,2000,1180.69),(80,44,'2022-01-07 13:30:24',44,'NETBANKING','CONFIRMED',40,3737.04,2000,1777.04),(81,41,'2021-06-19 13:43:36',41,'EMI','CONFIRMED',40,923.26,963.26,0),(82,44,'2021-11-05 05:05:16',44,'EMI','PENDING',40,2981.31,2000,1021.31),(83,33,'2021-11-07 06:18:27',33,'EMI','PENDING',40,4367.53,2000,2407.53),(84,41,'2021-05-14 12:44:56',41,'NETBANKING','CONFIRMED',40,6330.56,2000,4370.56),(85,44,'2021-08-27 08:32:37',44,'COD','PENDING',40,5799.53,2000,3839.53),(86,6,'2021-07-05 08:19:03',6,'NETBANKING','PENDING',40,8242.04,2000,6282.04),(87,19,'2021-10-20 21:33:56',19,'COD','PENDING',40,2249.85,2000,289.85),(88,28,'2021-07-17 16:40:21',28,'COD','CONFIRMED',40,822.81,862.81,0),(89,1,'2021-06-17 15:46:36',1,'EMI','CONFIRMED',40,6769.39,2000,4809.39),(90,7,'2021-11-15 02:15:06',7,'COD','CONFIRMED',40,1359.92,1399.92,0),(91,26,'2021-10-09 10:36:54',26,'NETBANKING','CONFIRMED',40,6839.13,2000,4879.13),(92,28,'2021-02-09 19:55:47',28,'COD','PENDING',40,6619.18,2000,4659.18),(93,46,'2021-08-21 13:27:32',46,'EMI','CONFIRMED',40,3327.93,2000,1367.93),(94,18,'2021-05-24 14:29:53',18,'NETBANKING','CONFIRMED',40,6104.56,2000,4144.56),(95,25,'2021-06-07 20:07:59',25,'CARD','PENDING',40,349.27,389.27,0),(96,13,'2021-05-03 18:00:26',13,'NETBANKING','PENDING',40,5788.44,2000,3828.44),(97,44,'2021-09-26 13:53:08',44,'CARD','PENDING',40,798.05,838.05,0),(98,50,'2021-04-01 13:18:15',50,'EMI','PENDING',40,4640.11,2000,2680.11),(99,36,'2021-07-30 04:05:17',36,'NETBANKING','PENDING',40,3699.67,2000,1739.67),(100,38,'2021-02-05 23:30:22',38,'COD','PENDING',40,2175.41,2000,215.41);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `category_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Ice Cream Bar - Oreo Sandwich',4,'Grocery',9),(2,2,'Capon - Breast, Wing On',8,'Grocery',13),(3,3,'Split Peas - Green, Dry',3,'Grocery',13),(4,4,'Leeks - Baby, White',9,'Grocery',5),(5,5,'Cauliflower',10,'Grocery',8),(6,6,'Spinach - Spinach Leaf',4,'Grocery',15),(7,7,'Wine - Niagara,vqa Reisling',1,'Grocery',12),(8,8,'Beef - Ox Tail, Frozen',14,'Grocery',15),(9,9,'Cocoa Butter',8,'Grocery',12),(10,10,'Irish Cream - Butterscotch',14,'Grocery',14),(11,11,'Quail - Whole, Boneless',7,'Grocery',10),(12,12,'Beer - Original Organic Lager',14,'Grocery',5),(13,13,'Wine - Barossa Valley Estate',6,'Grocery',8),(14,14,'Grapes - Black',12,'Grocery',12),(15,15,'Tart Shells - Sweet, 2',4,'Grocery',14),(16,16,'Cake Circle, Foil, Scallop',13,'Grocery',5),(17,17,'Rappini - Andy Boy',15,'Grocery',7),(18,18,'Wine - Periguita Fonseca',9,'Grocery',13),(19,19,'Rice - Jasmine Sented',15,'Grocery',9),(20,20,'Aspic - Amber',6,'Grocery',7),(21,21,'Cake - Cake Sheet Macaroon',1,'Grocery',11),(22,22,'Egg - Salad Premix',1,'Grocery',9),(23,23,'Beets',11,'Grocery',9),(24,24,'Scallops - 20/30',7,'Grocery',6),(25,25,'Nut - Almond, Blanched, Ground',8,'Grocery',5),(26,26,'Bread - Onion Focaccia',12,'Grocery',11),(27,27,'Beer - Heinekin',6,'Grocery',12),(28,28,'Plaintain',7,'Grocery',14),(29,29,'Mushroom - Lg - Cello',6,'Grocery',5),(30,30,'Beans - Kidney White',5,'Grocery',8),(31,31,'Watercress',4,'Grocery',7),(32,32,'Pastry - Baked Cinnamon Stick',5,'Grocery',8),(33,33,'Taro Root',1,'Grocery',14),(34,34,'Vinegar - Cider',8,'Grocery',5),(35,35,'Roe - Lump Fish, Red',4,'Grocery',12),(36,36,'Butter - Pod',8,'Grocery',14),(37,37,'Extract - Almond',11,'Grocery',11),(38,38,'7up Diet, 355 Ml',8,'Grocery',12),(39,39,'Ice Cream - Life Savers',15,'Grocery',5),(40,40,'Bread Sour Rolls',14,'Grocery',9),(41,41,'Duck - Breast',12,'Grocery',12),(42,42,'Wine - Baron De Rothschild',11,'Grocery',11),(43,43,'Cookie Choc',7,'Grocery',15),(44,44,'Olives - Green, Pitted',11,'Grocery',12),(45,45,'Vegetable - Base',2,'Grocery',9),(46,46,'Eggplant Oriental',13,'Grocery',11),(47,47,'Rice Pilaf, Dry,package',10,'Grocery',11),(48,48,'Tea - Herbal Sweet Dreams',8,'Grocery',9),(49,49,'Broom - Angled',3,'Grocery',15),(50,50,'Soup - Knorr, Ministrone',4,'Grocery',12),(51,51,'V8 - Berry Blend',11,'Grocery',7),(52,52,'Mints - Striped Red',2,'Grocery',7),(53,53,'Clam - Cherrystone',2,'Grocery',8),(54,54,'Ice Cream - Turtles Stick Bar',1,'Grocery',5),(55,55,'Nantucket - Carrot Orange',7,'Grocery',7),(56,56,'Longos - Grilled Chicken With',4,'Grocery',10),(57,57,'Lamb - Sausage Casings',8,'Grocery',11),(58,58,'Rabbit - Frozen',6,'Grocery',11),(59,59,'Champagne - Brights, Dry',10,'Grocery',10),(60,60,'Wine - Cave Springs Dry Riesling',4,'Grocery',10),(61,61,'Oil - Margarine',7,'Grocery',10),(62,62,'Pastrami',7,'Grocery',13),(63,63,'Muffin Carrot - Individual',12,'Grocery',6),(64,64,'Turnip - Wax',1,'Grocery',5),(65,65,'Wine - Ej Gallo Sonoma',14,'Grocery',6),(66,66,'Versatainer Nc - 888',12,'Grocery',11),(67,67,'Madeira',5,'Grocery',6),(68,68,'Juice Peach Nectar',2,'Grocery',5),(69,69,'Flower - Commercial Bronze',10,'Grocery',5),(70,70,'Bread - Sour Batard',15,'Grocery',14),(71,71,'Ecolab Crystal Fusion',13,'Grocery',15),(72,72,'Shark - Loin',14,'Grocery',14),(73,73,'Sponge Cake Mix - Vanilla',6,'Grocery',9),(74,74,'Salad Dressing',9,'Grocery',8),(75,75,'Sultanas',14,'Grocery',13),(76,76,'Calypso - Strawberry Lemonade',15,'Grocery',7),(77,77,'Ecolab - Hobart Washarm End Cap',10,'Grocery',15),(78,78,'Venison - Racks Frenched',3,'Grocery',10),(79,79,'Parasol Pick Stir Stick',14,'Grocery',14),(80,80,'Split Peas - Yellow, Dry',15,'Grocery',5),(81,81,'Sauce - Chili',8,'Grocery',13),(82,82,'Croissants Thaw And Serve',1,'Grocery',13),(83,83,'Olives - Green, Pitted',13,'Grocery',15),(84,84,'Pepper - Jalapeno',1,'Grocery',10),(85,85,'Sugar - Splenda Sweetener',10,'Grocery',10),(86,86,'Red Cod Fillets - 225g',4,'Grocery',7),(87,87,'Wine - Fume Blanc Fetzer',12,'Grocery',7),(88,88,'Blueberries - Frozen',8,'Grocery',12),(89,89,'Pastry - Apple Muffins - Mini',9,'Grocery',9),(90,90,'Lid - High Heat, Super Clear',8,'Grocery',11),(91,91,'Oil - Shortening,liqud, Fry',1,'Grocery',6),(92,92,'Pepper - Sorrano',5,'Grocery',13),(93,93,'Cornflakes',1,'Grocery',13),(94,94,'Pickle - Dill',6,'Grocery',10),(95,95,'Chocolate - Unsweetened',3,'Grocery',12),(96,96,'Yogurt - Assorted Pack',3,'Grocery',10),(97,97,'Chips - Potato Jalapeno',10,'Grocery',12),(98,98,'Roe - White Fish',8,'Grocery',7),(99,99,'Calypso - Strawberry Lemonade',7,'Grocery',15),(100,100,'Lamb - Pieces, Diced',1,'Grocery',11),(101,1,'Cheese - Brie, Triple Creme',1,'Grocery',12),(102,2,'Wine - Prem Select Charddonany',13,'Grocery',6),(103,3,'Coke - Classic, 355 Ml',3,'Grocery',7),(104,4,'Sprite, Diet - 355ml',7,'Grocery',8),(105,5,'Tortillas - Flour, 12',8,'Grocery',7),(106,6,'Veal - Kidney',3,'Grocery',9),(107,7,'Stock - Beef, White',9,'Grocery',5),(108,8,'Sauce - Vodka Blush',15,'Grocery',15),(109,9,'Noodles - Steamed Chow Mein',4,'Grocery',15),(110,10,'Cherries - Bing, Canned',8,'Grocery',15),(111,11,'Tea Peppermint',7,'Grocery',7),(112,12,'Five Alive Citrus',9,'Grocery',12),(113,13,'Cream - 18%',6,'Grocery',8),(114,14,'Goat - Leg',6,'Grocery',15),(115,15,'Juice - Tomato, 10 Oz',5,'Grocery',14),(116,16,'Beef - Diced',10,'Grocery',10),(117,17,'Veal - Provimi Inside',13,'Grocery',8),(118,18,'Soup - Campbells Beef Noodle',5,'Grocery',15),(119,19,'Dip - Tapenade',7,'Grocery',14),(120,20,'Thermometer Digital',5,'Grocery',6),(121,21,'Arctic Char - Fresh, Whole',6,'Grocery',5),(122,22,'Flour - Buckwheat, Dark',8,'Grocery',8),(148,48,'Oil - Grapeseed Oil',5,'Grocery',7),(149,49,'Lobster - Live',13,'Grocery',9),(150,50,'Soy Protein',12,'Grocery',11),(151,51,'Beer - Heinekin',9,'Grocery',5),(152,52,'Onions Granulated',7,'Grocery',8),(153,53,'Chutney Sauce',7,'Grocery',8),(154,54,'Persimmons',1,'Grocery',7),(155,55,'Pizza Pizza Dough',10,'Grocery',14),(156,56,'Truffle Paste',4,'Grocery',10),(157,57,'Napkin - Beverge, White 2 - Ply',8,'Grocery',15),(158,58,'Milk - Condensed',12,'Grocery',6),(159,59,'Pasta - Elbows, Macaroni, Dry',7,'Grocery',7),(160,60,'Vegetable - Base',12,'Grocery',15),(161,61,'Cream Of Tartar',3,'Grocery',10),(162,62,'Broom - Corn',11,'Grocery',6),(163,63,'Chicken Giblets',8,'Grocery',10),(164,64,'Trout Rainbow Whole',5,'Grocery',7),(165,65,'Sauce - Alfredo',5,'Grocery',10),(166,66,'Yeast Dry - Fleischman',1,'Grocery',7),(167,67,'Beer - Heinekin',9,'Grocery',14),(168,68,'Spring Roll Veg Mini',14,'Grocery',11),(169,69,'Pepper - Green, Chili',3,'Grocery',12),(170,70,'Apple - Delicious, Golden',15,'Grocery',15),(171,71,'Butter - Salted',7,'Grocery',6),(172,72,'Appetizer - Mango Chevre',11,'Grocery',15);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middleName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordHash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_mobile` (`mobile`),
  UNIQUE KEY `uq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'cseneschal0','Clyde',NULL,'Seneschal','686 268 5857','cseneschal0@noaa.gov','fUOGTSgFEU5','2021-06-19 12:21:02'),(2,'ckuhwald1','Codie',NULL,'Kuhwald','453 701 5517','ckuhwald1@nytimes.com','dIrK9PKZ','2021-06-09 17:00:49'),(3,'bandri2','Bourke',NULL,'Andri','909 654 9278','bandri2@slate.com','nP0wmZ','2021-05-10 10:32:21'),(4,'tdrysdale3','Terrye','McArdle','Drysdale','305 779 7992','tdrysdale3@businessinsider.com','FYxAmucL','2021-06-17 06:42:25'),(5,'jcrebbin4','Jesus',NULL,'Crebbin','779 374 8011','jcrebbin4@foxnews.com','U6NnKZh','2021-05-02 17:27:24'),(6,'tkettell5','Tybie',NULL,'Kettell','720 232 0927','tkettell5@sitemeter.com','BMAuUZ3MMl','2021-05-28 08:49:19'),(7,'lethelstone6','Laurence','Rainger','Ethelstone','160 519 6340','lethelstone6@nasa.gov','n71h7o','2021-09-30 06:16:13'),(8,'gjovanovic7','Gusti',NULL,'Jovanovic','754 638 0312','gjovanovic7@youtu.be','hnFb3OANBJ','2021-05-01 00:00:03'),(9,'pharmond8','Peg',NULL,'Harmond','255 834 4583','pharmond8@usnews.com','a4BH7qO','2021-08-21 09:40:34'),(10,'tboomes9','Tiertza','Paylor','Boomes','898 100 6164','tboomes9@infoseek.co.jp','TLso9v','2022-01-01 11:28:02'),(11,'lfransewicha','Loreen',NULL,'Fransewich','497 460 2352','lfransewicha@blogger.com','zt6LHmntaS','2021-09-10 14:40:43'),(12,'tpigneyb','Thorstein',NULL,'Pigney','923 189 2567','tpigneyb@reference.com','v96xbHz2','2021-06-17 17:42:31'),(13,'sgrevattc','Sisile',NULL,'Grevatt','307 413 6436','sgrevattc@engadget.com','2F5cgebw','2022-01-05 22:45:40'),(14,'rmuncied','Ranique','Corteney','Muncie','234 939 2171','rmuncied@friendfeed.com','WXwcd9qu','2021-02-19 06:32:23'),(15,'sessexe','Skye',NULL,'Essex','223 333 6165','sessexe@paginegialle.it','eVYxNi','2021-01-12 19:17:36'),(16,'kmugef','Karlotte',NULL,'Muge','119 447 9345','kmugef@w3.org','MWNJv0','2021-08-23 12:27:54'),(17,'llimpennyg','Leontine',NULL,'Limpenny','707 561 8920','llimpennyg@altervista.org','laj3PU3zP','2021-04-19 12:06:49'),(18,'sboothmanh','Stephie','Storrock','Boothman','121 850 0488','sboothmanh@sourceforge.net','UILf75GmWtY','2021-10-30 01:04:22'),(19,'gyakubovicsi','Giana',NULL,'Yakubovics','975 337 2785','gyakubovicsi@vimeo.com','AZLaIZeVJ9dg','2021-08-21 21:44:44'),(20,'mdeathj','Molli',NULL,'De\'Ath','401 673 9641','mdeathj@studiopress.com','k31l10','2021-04-28 05:18:41'),(21,'smclenaghank','Sandye',NULL,'McLenaghan','771 462 1381','smclenaghank@posterous.com','ZViEFIt2v','2021-10-12 03:36:17'),(22,'llillel','Latrina',NULL,'Lille','150 680 8357','llillel@eventbrite.com','mXbeZrsSuGaz','2021-05-26 08:02:33'),(23,'mwindlem','Maxie',NULL,'Windle','250 211 2204','mwindlem@statcounter.com','46a49Y7x','2021-03-10 20:01:03'),(24,'dleggettn','Dario',NULL,'Leggett','286 874 0858','dleggettn@msu.edu','ryeDWGi5I4mu','2021-11-05 21:37:28'),(25,'jdohro','Jolynn',NULL,'Dohr','677 226 8156','jdohro@dion.ne.jp','ODz7AoS','2021-06-13 12:40:52'),(26,'ebrinkworthp','Edita',NULL,'Brinkworth','740 541 7498','ebrinkworthp@live.com','l0Nw7ii3','2021-09-26 16:36:01'),(27,'slemonnierq','Skippie',NULL,'Le Monnier','841 373 6227','slemonnierq@walmart.com','UniugbUSimhw','2021-09-03 18:24:41'),(28,'cfreibergr','Corry',NULL,'Freiberg','982 876 2715','cfreibergr@google.com','xKT8gLlhrPid','2021-01-12 04:09:36'),(29,'agrosiers','Angelina',NULL,'Grosier','199 930 3471','agrosiers@auda.org.au','plxqW4Y','2021-09-08 02:26:32'),(30,'bbrumt','Burch',NULL,'Brum','813 482 2947','bbrumt@huffingtonpost.com','fB9TpZV','2021-09-18 07:30:27'),(31,'rfairestu','Rene',NULL,'Fairest','651 575 8757','rfairestu@jimdo.com','TiG09Fl','2021-07-21 09:48:29'),(32,'bfoucarv','Briano',NULL,'Foucar','890 743 5795','bfoucarv@shop-pro.jp','4kUzfwX','2021-04-17 09:03:26'),(33,'hfrazerw','Hastie',NULL,'Frazer','201 755 8133','hfrazerw@wikimedia.org','76Odjtn7','2021-04-18 18:17:11'),(34,'ipogosianx','Ignacius',NULL,'Pogosian','645 838 0883','ipogosianx@state.gov','ePlnlo','2021-02-13 15:35:29'),(35,'msmalecombey','Maybelle','Van den Velde','Smalecombe','934 429 7097','msmalecombey@spotify.com','nc1HCQnGAVc','2021-12-06 18:45:07'),(36,'sdanilishinz','Son',NULL,'Danilishin','286 848 2262','sdanilishinz@plala.or.jp','qlZgiK','2021-08-10 02:05:13'),(37,'kbowdler10','Karissa',NULL,'Bowdler','230 686 1971','kbowdler10@cnet.com','3mze7fg5d4IB','2021-12-14 03:22:40'),(38,'dcanadas11','Dolley','Shawley','Canadas','100 755 9667','dcanadas11@about.me','kwd9UX4J','2021-01-22 08:15:08'),(39,'cprestie12','Calhoun',NULL,'Prestie','762 142 1942','cprestie12@imdb.com','6oAIvLBaym','2021-08-11 13:28:17'),(40,'zgerardot13','Zonnya',NULL,'Gerardot','162 908 6625','zgerardot13@nationalgeographic.com','rW03OrA1nt','2021-09-28 13:55:26'),(41,'cjockle14','Chic',NULL,'Jockle','600 922 6250','cjockle14@arstechnica.com','2fgVEd','2021-10-04 04:21:46'),(42,'faddlestone15','Field',NULL,'Addlestone','910 356 7132','faddlestone15@globo.com','IgJtQMpAhrG','2021-03-09 12:59:12'),(43,'dbisley16','Daisey','Tothe','Bisley','846 427 2772','dbisley16@nasa.gov','pa43il','2021-10-01 08:07:50'),(44,'msidle17','Marshall','Bengal','Sidle','334 850 3495','msidle17@nsw.gov.au','o1Rv8pP','2021-11-10 17:27:54'),(45,'cshilliday18','Collette',NULL,'Shilliday','903 280 1045','cshilliday18@dagondesign.com','iM0BIHvvE','2021-08-02 22:05:52'),(46,'vbromige19','Verge',NULL,'Bromige','650 233 5508','vbromige19@psu.edu','ksmnxzJrj0KF','2021-06-04 15:05:26'),(47,'kfaithfull1a','Karney',NULL,'Faithfull','525 183 1762','kfaithfull1a@msn.com','B556rXYxcah6','2021-08-21 21:49:11'),(48,'ctommeo1b','Charmane','Van Son','Tommeo','521 449 7190','ctommeo1b@vinaora.com','MtniD9','2021-04-14 04:13:40'),(49,'mraulston1c','Meara',NULL,'Raulston','449 180 1443','mraulston1c@163.com','93yV11Myw','2021-01-27 13:26:54'),(50,'hbinny1d','Henrietta',NULL,'Binny','523 969 4789','hbinny1d@wsj.com','a3EKdlrl','2021-02-04 18:14:25');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-11 21:41:21
