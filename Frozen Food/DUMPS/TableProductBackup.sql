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
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'lamb shank',5,'lamb shank in rosemary and mint sauce',10.00,20,9.99,0),(2,'veal',5,'veal osso buco',15.50,15,11.99,0),(3,'short rib',5,'braveheart angus beef boneless short rib',12.00,40,7.99,0),(4,'flank steak',5,'braveheart angus beef flank steak',2.00,30,16.99,0),(5,'chicken',5,'boneless chicken breasts',8.00,56,21.99,0),(6,'pork chops',5,'bacon-wrapped pork chops',4.00,42,19.99,0),(7,'langoustines',5,'medium wild langoustines',7.00,25,20.99,0),(8,'octopus',5,'cooked small octopus tentacles',3.00,15,23.00,0),(9,'shrimp',5,'red shrimp from argentina XL',12.00,50,12.99,0),(10,'clams',5,'coquina clams',12.00,45,9.99,0),(11,'peas',5,'extra fine french peas',2.00,60,5.99,0),(12,'artichoke',5,'artichoke bottoms',2.00,24,17.69,0),(13,'bean',5,'very find yellow wax beans',2.00,30,6.29,0),(14,'broccoli',5,'broccoli florets',2.00,55,4.49,0),(15,'potatoes',5,'family size smashed red potatoes',32.00,55,12.99,0),(16,'potatoes',5,'family size whipped sweet potatoes',32.00,55,14.49,0),(17,'potatoes',5,'potatoes au gratin',3.00,55,8.49,0),(18,'rice',5,'jasmine rice',2.00,45,9.99,0),(19,'rice',5,'brown, red and wild rice medley',2.00,35,9.99,0),(20,'quinoa',5,'organic quinoa',2.00,26,12.99,0),(21,'lentils',5,'black beluga lentils',2.00,18,9.99,0),(22,'pastry',5,'frangipane king cake',19.00,32,19.99,0),(23,'pastry',5,'chocolate croissant',3.00,90,1.90,0),(24,'dessert',5,'tiramisu classico',3.00,60,4.99,0),(25,'dessert',5,'authentic french creme brulee',5.00,54,5.99,0),(26,'pie',5,'cappuccino pie',3.00,10,36.50,0),(27,'cake',5,'red berry cheesecake',3.00,12,36.50,0),(28,'bread',5,'brioche burger buns',4.00,44,4.80,0),(29,'bread',5,'ciabatta sandwich 6 inch',3.00,28,3.29,0),(30,'dough',5,'mini blinis',16.00,26,4.46,0),(31,'steak',1,'Butcher\'s Cut Filet Mignon',10.00,30,33.74,1),(32,'steak',1,'Butcher\'s Cut Top Sirloin',5.00,50,14.99,1),(33,'steak',1,'T-Bone Steak',18.00,40,33.33,1),(34,'bison',1,'Ground Bison',1.00,20,22.49,2),(35,'turkey',1,'Home-Style Roasted Turkey Breast',1.80,45,21.99,2),(36,'turkey',1,'Turkey Burgers',8.00,30,21.99,3),(37,'ham',1,'Spiral Sliced Ham',9.00,15,89.99,2),(38,'pork',1,'Breaded Pork Tenderloin',4.00,25,19.99,3),(39,'salmon',2,'Lemon Dill Salmon Fillets',6.00,20,8.79,1),(40,'seabass',2,'Chilean Sea Bass',5.00,30,19.99,1),(41,'crab',2,'King Crab Legs',2.00,16,109.99,2),(42,'crab',2,'Gourmet Crab Cakes',4.00,26,34.99,3),(43,'lobster',2,'Cold Water Lobster Tails',5.00,35,22.99,1),(44,'bean',3,'Green Beans',6.50,45,10.99,1),(45,'broccoli',3,'Steakhouse Broccoli and Cauliflower Gratin',22.00,35,12.99,1),(46,'brussels sprouts',3,'Brussels Sprouts with Bacon & Shallots',9.50,35,14.99,1),(47,'corn',3,'Steakhouse Creamed Corn',20.00,40,10.99,1),(48,'mixed',3,'Roasted Vegetable Medley',7.00,50,9.99,1),(49,'asparagus',3,'Asparagus Spears With Hollandaise Sauce',12.00,30,15.99,1),(50,'potatoes',3,'Potatoes au Gratin',8.00,55,14.99,3),(51,'risotto',4,'Pepper Jack Risotto Cakes',8.00,25,19.99,3),(52,'rice',4,'Harvest Rice Pilaf',25.00,45,14.99,1),(53,'bread',5,'Mini Baguettes with Garlic Butter',4.00,35,49.99,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'frozenfood'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-23  8:17:38
