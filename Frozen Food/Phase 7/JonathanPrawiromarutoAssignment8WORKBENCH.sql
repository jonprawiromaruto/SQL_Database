CREATE DATABASE  IF NOT EXISTS `frozenfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `frozenfood`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: frozenfood
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cityState`
--

DROP TABLE IF EXISTS `cityState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cityState` (
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  PRIMARY KEY (`zipCode`),
  UNIQUE KEY `zipCode` (`zipCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityState`
--

LOCK TABLES `cityState` WRITE;
/*!40000 ALTER TABLE `cityState` DISABLE KEYS */;
INSERT INTO `cityState` VALUES ('Piscataway','NJ','08854'),('Lanham','MD','20706'),('Abingdon','VA','24210'),('Clover','SC','29710'),('Duluth','GA','30096'),('Jupiter','FL','33458'),('Nashville','TN','37205'),('Memphis','TN','38117'),('Willoughby','OH','44094'),('Cuyahoga Falls','OH','44223'),('Battle Creek','MI','49016'),('Jefferson','LA','70121'),('Covington','LA','70433'),('Scottsdale','AZ','85260'),('Ontario','CA','91764'),('San Marcos','CA','92078'),('Huntington Beach','CA','92647');
/*!40000 ALTER TABLE `cityState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `cityState` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Goodman','Yvonne','12 Creekside St','37205','2025550109','ygoodman@isp.com'),(2,'Mackenzie','Dante','137 Wall St','37205','2025550112','dmackenzie@isp.com'),(3,'Rollins','Alysha','411 Shirley St','37205','2025550115','arollins@isp.com'),(4,'Gonzalez','Avaya','7771 Border Court','37205','2025550119','agonzalez@isp.com'),(5,'Kelly','Haniya','6 South Sulphur Springs Street','37205','2025550121','hkelly@isp.com'),(6,'Chambers','Nathalie','942 New Saddle Drive','29710','2025550122','nchambers@isp.com'),(7,'Rollins','Dante','9 Wrangler Ave','29710','2025550124','drollins@isp.com'),(8,'Mckee','Beverley','7319 S. Greenview Drive','29710','2025550125','bmckee@isp.com'),(9,'Lindsey','Paris','763 West Mulberry St','29710','2025550132','plindsey@isp.com'),(10,'Melia','Umaiza','545 Ohio Ave','29710','2025550135','umelia@isp.com'),(11,'Prince','Nico','20 Middle River Street','44094','2025550137','nprince@isp.com'),(12,'Rennie','Javan','8112 North Country St','44094','2025550139','jrennie@isp.com'),(13,'Waters','Ali','83 Rockland Lane','44094','2025550144','awaters@isp.com'),(14,'Clarke','JohnPaul','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com'),(15,'Kaiser','Dane','694 Wall Road','44094','2025550155','kdaiser@isp.com'),(16,'Newman','Hammad','9970 State Court','30096','2025550157','hnewman@isp.com'),(17,'Guthrie','Maha','54 Woodsman Drive','30096','2025550161','mguthrie@isp.com'),(18,'Roberts','Tulisa','7174 Studebaker Street','30096','2025550163','troberts@isp.com'),(19,'Solis','Robin','8474 Wentworth Street','30096','2025550164','rsolis@isp.com'),(20,'Heath','Kavita','796 Hartford St','30096','2025550165','kheath@isp.com'),(21,'White','Meera','484 Bridge St','08854','2025550166','mwhite@isp.com'),(22,'Esparza','Bradlee','7031 Gainsway St','08854','2025550173','besparza@isp.com'),(23,'Leonard','Leilani','37 Monroe Street','08854','2025550175','lleonard@isp.com'),(24,'Brook','Stefanie','7990 West Surrey St','08854','2025550179','sbrook@isp.com'),(25,'Squires','Grover','7618 Madison Court','08854','2025550180','gsquires@isp.com'),(26,'Kumar','Jonathan','25 Annadale Court','33458','2025550182','jkumar@isp.com'),(27,'Neville','Angus','9841 Smith Drive','33458','2025550187','aneville@isp.com'),(28,'Sparrow','Uzair','7999 Hall Street','33458','2025550188','usparrow@isp.com'),(29,'Currie','Amari','8411 Pleasant St','33458','2025550194','acurrie@isp.com'),(30,'Wallace','Imaani','33 Pierce Rd','33458','2025550195','iwallace@isp.com'),(31,'House','Efe','97 High Point Street','20706','2025550196','ehouse@isp.com'),(32,'Atkinson','Atticus','66 Harrison Dr','20706','2025550197','aatkinson@isp.com'),(33,'Ramirez','Michelle','370 Hill Field Ave','20706','2025550198','mramirez@isp.com'),(34,'Hassan','Remy','249 Devon Lane','20706','2025550199','rhassan@isp.com'),(35,'Beck','Jordana','7911 Carson Lane','20706','2025550200','jbeck@isp.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerOrder`
--

DROP TABLE IF EXISTS `customerOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerOrder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL,
  `orderDate` date NOT NULL,
  `orderStateId` int NOT NULL,
  `total` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `customerId` (`customerId`),
  KEY `productId` (`productId`),
  KEY `orderStateId` (`orderStateId`),
  CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`ID`),
  CONSTRAINT `customerorder_ibfk_3` FOREIGN KEY (`orderStateId`) REFERENCES `customer` (`ID`),
  CONSTRAINT `customerorder_ibfk_4` FOREIGN KEY (`customerId`) REFERENCES `customer` (`ID`),
  CONSTRAINT `customerorder_ibfk_5` FOREIGN KEY (`productId`) REFERENCES `product` (`ID`),
  CONSTRAINT `customerorder_ibfk_6` FOREIGN KEY (`orderStateId`) REFERENCES `orderState` (`ID`),
  CONSTRAINT `customerorder_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerOrder`
--

LOCK TABLES `customerOrder` WRITE;
/*!40000 ALTER TABLE `customerOrder` DISABLE KEYS */;
INSERT INTO `customerOrder` VALUES (21,22,23,2,'2021-03-21',7,3.80),(22,22,24,4,'2021-03-21',7,19.96),(23,33,14,6,'2021-03-21',7,26.94),(24,33,20,4,'2021-03-21',7,51.96),(25,11,34,4,'2021-03-21',7,89.96),(26,11,44,10,'2021-03-21',7,109.90),(27,35,1,4,'2021-03-21',7,39.96),(28,15,10,6,'2021-03-21',7,59.94),(29,25,17,3,'2021-03-21',7,25.47),(30,12,9,8,'2021-03-21',7,103.92);
/*!40000 ALTER TABLE `customerOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerPayment`
--

DROP TABLE IF EXISTS `customerPayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerPayment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `customerOrderId` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `paymentDate` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`ID`),
  KEY `customerOrderId` (`customerOrderId`),
  CONSTRAINT `customerpayment_ibfk_1` FOREIGN KEY (`customerOrderId`) REFERENCES `customerOrder` (`ID`),
  CONSTRAINT `customerpayment_chk_1` CHECK ((`total` > 0.0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerPayment`
--

LOCK TABLES `customerPayment` WRITE;
/*!40000 ALTER TABLE `customerPayment` DISABLE KEYS */;
INSERT INTO `customerPayment` VALUES (1,21,3.80,'2021-03-26'),(2,22,19.96,'2021-03-26'),(3,23,26.94,'2021-03-26'),(4,24,51.96,'2021-03-26'),(5,25,89.96,'2021-03-26'),(6,26,109.90,'2021-03-26'),(7,27,39.96,'2021-03-26'),(8,28,59.94,'2021-03-26'),(9,29,25.47,'2021-03-26'),(10,30,103.92,'2021-03-26');
/*!40000 ALTER TABLE `customerPayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `cityState` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Prince','Yvonne','12 Creekside St','92647','2025550109','yprince@frozenfoods.com'),(2,'Rennie','Dante','137 Wall St','38117','2025550112','drennie@frozenfoods.com'),(3,'Waters','Alysha','411 Shirley St','24210','2025550115','awaters@frozenfoods.com'),(4,'Clarke','Avaya','7771 Border Court','92078','2025550119','aclarke@frozenfoods.com'),(5,'Kaiser','Haniya','6 South Sulphur Springs Street','70121','2025550121','hkaiser@frozenfoods.com'),(6,'Newman','Nathalie','942 New Saddle Drive','70433','2025550122','nnewman@frozenfoods.com'),(7,'Guthrie','Dante','9 Wrangler Ave','91764','2025550124','dguthrie@frozenfoods.com'),(8,'Roberts','Beverley','7319 S. Greenview Drive','44223','2025550125','broberts@frozenfoods.com'),(9,'Solis','Paris','763 West Mulberry St','49016','2025550132','psolis@frozenfoods.com'),(10,'Heath','Umaiza','545 Ohio Ave','85260','2025550135','uheath@frozenfoods.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeSupplier`
--

DROP TABLE IF EXISTS `employeeSupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeSupplier` (
  `employeeId` int NOT NULL,
  `supplierId` int NOT NULL,
  PRIMARY KEY (`employeeId`,`supplierId`),
  KEY `supplierId` (`supplierId`),
  CONSTRAINT `employeesupplier_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`ID`),
  CONSTRAINT `employeesupplier_ibfk_2` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeSupplier`
--

LOCK TABLES `employeeSupplier` WRITE;
/*!40000 ALTER TABLE `employeeSupplier` DISABLE KEYS */;
INSERT INTO `employeeSupplier` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `employeeSupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderState`
--

DROP TABLE IF EXISTS `orderState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderState` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderState`
--

LOCK TABLES `orderState` WRITE;
/*!40000 ALTER TABLE `orderState` DISABLE KEYS */;
INSERT INTO `orderState` VALUES (1,'New order'),(2,'Buyer contacted'),(3,'Seller contacted'),(4,'Invoice sent'),(5,'Invoice received'),(6,'Payment pending'),(7,'Payment received'),(8,'Shipped'),(9,'Awaiting pickup'),(10,'Cancelled'),(11,'Backordered'),(12,'Completed'),(13,'Payment sent');
/*!40000 ALTER TABLE `orderState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(90) NOT NULL,
  `productType` int NOT NULL,
  `description` varchar(90) NOT NULL,
  `size` decimal(7,2) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `sizeTypeId` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `productType` (`productType`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productType`) REFERENCES `productType` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'lamb shank',5,'lamb shank in rosemary and mint sauce',10.00,20,9.99,0),(2,'veal',5,'veal osso buco',15.50,15,11.99,0),(3,'short rib',5,'braveheart angus beef boneless short rib',12.00,40,7.99,0),(4,'flank steak',5,'braveheart angus beef flank steak',2.00,30,16.99,0),(5,'chicken',5,'boneless chicken breasts',8.00,56,21.99,0),(6,'pork chops',5,'bacon-wrapped pork chops',4.00,42,19.99,0),(7,'langoustines',5,'medium wild langoustines',7.00,25,20.99,0),(8,'octopus',5,'cooked small octopus tentacles',3.00,15,23.00,0),(9,'shrimp',5,'red shrimp from argentina XL',12.00,50,12.99,0),(10,'clams',5,'coquina clams',12.00,45,9.99,0),(11,'peas',5,'extra fine french peas',2.00,60,5.99,0),(12,'artichoke',5,'artichoke bottoms',2.00,24,17.69,0),(13,'bean',5,'very find yellow wax beans',2.00,30,6.29,0),(14,'broccoli',5,'broccoli florets',2.00,55,4.49,0),(15,'potatoes',5,'family size smashed red potatoes',32.00,55,12.99,0),(16,'potatoes',5,'family size whipped sweet potatoes',32.00,55,14.49,0),(17,'potatoes',5,'potatoes au gratin',3.00,55,8.49,0),(18,'rice',5,'jasmine rice',2.00,45,9.99,0),(19,'rice',5,'brown, red and wild rice medley',2.00,35,9.99,0),(20,'quinoa',5,'organic quinoa',2.00,26,12.99,0),(21,'lentils',5,'black beluga lentils',2.00,18,9.99,0),(22,'pastry',5,'frangipane king cake',19.00,32,19.99,0),(23,'pastry',5,'chocolate croissant',3.00,90,1.90,0),(24,'dessert',5,'tiramisu classico',3.00,60,4.99,0),(25,'dessert',5,'authentic french creme brulee',5.00,54,5.99,0),(26,'pie',5,'cappuccino pie',3.00,10,36.50,0),(27,'cake',5,'red berry cheesecake',3.00,12,36.50,0),(28,'bread',5,'brioche burger buns',4.00,44,4.80,0),(29,'bread',5,'ciabatta sandwich 6 inch',3.00,28,3.29,0),(30,'dough',5,'mini blinis',16.00,26,4.46,0),(31,'steak',1,'Butcher\'s Cut Filet Mignon',10.00,30,33.74,1),(32,'steak',1,'Butcher\'s Cut Top Sirloin',5.00,50,14.99,1),(33,'steak',1,'T-Bone Steak',18.00,40,33.33,1),(34,'bison',1,'Ground Bison',1.00,20,22.49,2),(35,'turkey',1,'Home-Style Roasted Turkey Breast',1.80,45,21.99,2),(36,'turkey',1,'Turkey Burgers',8.00,30,21.99,3),(37,'ham',1,'Spiral Sliced Ham',9.00,15,89.99,2),(38,'pork',1,'Breaded Pork Tenderloin',4.00,25,19.99,3),(39,'salmon',2,'Lemon Dill Salmon Fillets',6.00,20,8.79,1),(40,'seabass',2,'Chilean Sea Bass',5.00,30,19.99,1),(41,'crab',2,'King Crab Legs',2.00,16,109.99,2),(42,'crab',2,'Gourmet Crab Cakes',4.00,26,34.99,3),(43,'lobster',2,'Cold Water Lobster Tails',5.00,35,22.99,1),(44,'bean',3,'Green Beans',6.50,45,10.99,1),(45,'broccoli',3,'Steakhouse Broccoli and Cauliflower Gratin',22.00,35,12.99,1),(46,'brussels sprouts',3,'Brussels Sprouts with Bacon & Shallots',9.50,35,14.99,1),(47,'corn',3,'Steakhouse Creamed Corn',20.00,40,10.99,1),(48,'mixed',3,'Roasted Vegetable Medley',7.00,50,9.99,1),(49,'asparagus',3,'Asparagus Spears With Hollandaise Sauce',12.00,30,15.99,1),(50,'potatoes',3,'Potatoes au Gratin',8.00,55,14.99,3),(51,'risotto',4,'Pepper Jack Risotto Cakes',8.00,25,19.99,3),(52,'rice',4,'Harvest Rice Pilaf',25.00,45,14.99,1),(53,'bread',5,'Mini Baguettes with Garlic Butter',4.00,35,49.99,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productSupplier`
--

DROP TABLE IF EXISTS `productSupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productSupplier` (
  `productId` int NOT NULL,
  `supplierId` int NOT NULL,
  PRIMARY KEY (`productId`,`supplierId`),
  KEY `supplierId` (`supplierId`),
  CONSTRAINT `productsupplier_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`ID`),
  CONSTRAINT `productsupplier_ibfk_2` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productSupplier`
--

LOCK TABLES `productSupplier` WRITE;
/*!40000 ALTER TABLE `productSupplier` DISABLE KEYS */;
INSERT INTO `productSupplier` VALUES (1,1),(2,1),(3,1),(31,1),(32,1),(33,1),(4,2),(5,2),(6,2),(34,2),(35,2),(7,3),(8,3),(9,3),(36,3),(37,3),(10,4),(11,4),(12,4),(38,4),(39,4),(13,5),(14,5),(15,5),(40,5),(41,5),(16,6),(17,6),(18,6),(42,6),(43,6),(19,7),(20,7),(21,7),(44,7),(45,7),(22,8),(23,8),(24,8),(46,8),(47,8),(25,9),(26,9),(27,9),(48,9),(49,9),(50,9),(28,10),(29,10),(30,10),(51,10),(52,10),(53,10);
/*!40000 ALTER TABLE `productSupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productType`
--

DROP TABLE IF EXISTS `productType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productType` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productType`
--

LOCK TABLES `productType` WRITE;
/*!40000 ALTER TABLE `productType` DISABLE KEYS */;
INSERT INTO `productType` VALUES (1,'meat'),(2,'seafood'),(3,'vegetable'),(4,'grain and rice'),(5,'bakery');
/*!40000 ALTER TABLE `productType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseOrder`
--

DROP TABLE IF EXISTS `purchaseOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseOrder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `quantity` int NOT NULL,
  `orderDate` date NOT NULL,
  `orderStateId` int NOT NULL,
  `supplierId` int NOT NULL,
  `total` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `productId` (`productId`),
  KEY `orderStateId` (`orderStateId`),
  KEY `supplierId` (`supplierId`),
  CONSTRAINT `purchaseorder_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`ID`),
  CONSTRAINT `purchaseorder_ibfk_3` FOREIGN KEY (`orderStateId`) REFERENCES `orderState` (`ID`),
  CONSTRAINT `purchaseorder_ibfk_4` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`ID`),
  CONSTRAINT `purchaseorder_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseOrder`
--

LOCK TABLES `purchaseOrder` WRITE;
/*!40000 ALTER TABLE `purchaseOrder` DISABLE KEYS */;
INSERT INTO `purchaseOrder` VALUES (1,1,10,'2021-03-21',1,1,99.90),(2,2,15,'2021-03-21',1,1,179.85),(3,8,15,'2021-03-21',13,3,345.00),(4,21,12,'2021-03-21',1,7,119.88),(5,26,20,'2021-03-21',13,9,730.00),(6,27,18,'2021-03-21',13,9,657.00),(7,34,10,'2021-03-21',1,2,224.90),(8,37,15,'2021-03-21',13,3,1349.85),(9,41,14,'2021-03-21',13,4,1539.86),(10,39,10,'2021-03-21',1,5,87.90);
/*!40000 ALTER TABLE `purchaseOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizeType`
--

DROP TABLE IF EXISTS `sizeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizeType` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizeType`
--

LOCK TABLES `sizeType` WRITE;
/*!40000 ALTER TABLE `sizeType` DISABLE KEYS */;
INSERT INTO `sizeType` VALUES (1,'ounce'),(2,'pound'),(3,'count');
/*!40000 ALTER TABLE `sizeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `supplierName` (`supplierName`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `cityState` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'New Direction Foods','16321 Gothard St. Suite C-F','92647','5626068511','info@new-direction-foods.com'),(2,'Monogram Foods','530 Oak Court Drive Suite 400','38117','9016857167','info@monogram-foods.com'),(3,'Dutt and Wagner of Virginia Inc','1142 West Main Street','24210','8006882116','info@dutt-wagner-virginia.com'),(4,'Culinary Specialties Inc','1231 Linda Vista Drive','92078','7607448220','info@culinary-specialties.com'),(5,'John E. Koerner Company','4820 Jefferson Hwy','70121','8003331913','info@koerner-company.com'),(6,'Diversified Foods and Seasonings LLC','1404 Greengate Drive Suite 300','70433','8009142382','info@diversified-foods.com'),(7,'Ajinomoto Foods North America','4200 Concours Street Suite 100','91764','9094774700','info@ajinomoto-foods-na.com'),(8,'Ascot Valley Foods','205 Ascot Pkwy','44223','3303769411','info@ascotvalleyfoods.com'),(9,'Kellogg NA Company','P.O. Box CAMB','49016','8009621413','info@kelloggs.com'),(10,'AppetizersUSA','15210 N. 75th Street Suite A','85260','4804712601','info@appetizers-usa.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplierTransaction`
--

DROP TABLE IF EXISTS `supplierTransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplierTransaction` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `purchaseOrderId` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `paymentDate` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`ID`),
  KEY `purchaseOrderId` (`purchaseOrderId`),
  CONSTRAINT `suppliertransaction_ibfk_1` FOREIGN KEY (`purchaseOrderId`) REFERENCES `purchaseOrder` (`ID`),
  CONSTRAINT `suppliertransaction_chk_1` CHECK ((`total` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplierTransaction`
--

LOCK TABLES `supplierTransaction` WRITE;
/*!40000 ALTER TABLE `supplierTransaction` DISABLE KEYS */;
INSERT INTO `supplierTransaction` VALUES (1,3,345.00,'2021-03-26'),(2,5,730.00,'2021-03-26'),(3,6,657.00,'2021-03-26'),(4,8,1349.85,'2021-03-26'),(5,9,1539.86,'2021-03-26');
/*!40000 ALTER TABLE `supplierTransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 14:53:21
