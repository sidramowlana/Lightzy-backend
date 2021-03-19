-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lightzy
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `blog_post_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_name` varchar(255) DEFAULT NULL,
  `date_posted` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `posted_user` varchar(255) DEFAULT NULL,
  `catergory` int(11) DEFAULT NULL,
  PRIMARY KEY (`blog_post_id`),
  KEY `FKh9car99uyxciqxkkie5wx7057` (`catergory`),
  CONSTRAINT `FKh9car99uyxciqxkkie5wx7057` FOREIGN KEY (`catergory`) REFERENCES `catergory` (`catergory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'Blue Giant','2020-12-12 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://ienveyeb.sirv.com/dev/wp-content/uploads/2019/11/M/o/1/Modern-Italian-Geometric-Designer-Table-Lamp-With-Shade-1.jpg','Mark',1),(2,'Hut Shade','2020-02-15 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://images.pexels.com/photos/1457844/pexels-photo-1457844.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260','Maze',1),(3,'Multi Light','2020-02-09 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://lunares.eu/p/84513/elegance-60w-e27.jpg','Anny',1),(4,'One Way Chandelier','2020-06-23 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://www.dhresource.com/0x0/f2/albu/g8/M00/4E/78/rBVaV15c1Z2AKb7gAAbTjDV3Yfs812.jpg/cafe-restaurant-bar-american-vintage-style.jpg','Sam',2),(5,'Hangman','2020-02-17 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://www.dhresource.com/0x0/f2/albu/g10/M00/9B/C3/rBVaWV5cksuABJW-AAkPIL-Ozn8468.png/nordic-creative-personality-cafe-restaurant.jpg','Annah',4),(6,'Shine Light','2020-02-18 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://images.pexels.com/photos/937526/pexels-photo-937526.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260','Lucy',3),(7,'Bright Light','2020-02-02 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://images-na.ssl-images-amazon.com/images/I/71vsN5Huo%2BL._AC_SX342_.jpg','Robert',5),(8,'Candle Cake','2020-02-11 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://images.pexels.com/photos/5770563/pexels-photo-5770563.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260','Sarah',6),(9,'Rainbow Shade','2020-02-12 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://images.pexels.com/photos/705194/pexels-photo-705194.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260','Maven',4),(10,'White Night Lamp','2020-02-14 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://images.pexels.com/photos/2333855/pexels-photo-2333855.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260','Edward',3),(11,'Galaxy','2020-02-17 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://lunares.eu/p/84513/elegance-60w-e27.jpg','Linda',2),(12,'Giant Handler','2020-02-16 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://images.beautifulhalo.com/images/v/201810/D/1539655178353.jpg','Mosh',2),(13,'Dandilion','2020-02-15 00:00:00.000000','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus perferendis quasi veniam pariatur accusamus.','https://www.modern.place/wp-content/uploads/2017/07/48e149d31f9ea032047145f3e97fec06.jpg','Max',4);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catergory`
--

DROP TABLE IF EXISTS `catergory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catergory` (
  `catergory_id` int(11) NOT NULL AUTO_INCREMENT,
  `catergory_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catergory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catergory`
--

LOCK TABLES `catergory` WRITE;
/*!40000 ALTER TABLE `catergory` DISABLE KEYS */;
INSERT INTO `catergory` VALUES (1,'Floor Lamps','../../../assets/categories/floorLamp.png'),(2,'Pendant','../../../assets/categories/pendantLamp.png'),(3,'Home Accent','../../../assets/categories/homeAccent.png'),(4,'Table Lamp','../../../assets/categories/tableLamp.png'),(5,'Wall Lamps','../../../assets/categories/wallLamp.png'),(6,'Chandaliers','../../../assets/categories/chandaliers.png');
/*!40000 ALTER TABLE `catergory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designer_product`
--

DROP TABLE IF EXISTS `designer_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designer_product` (
  `designer_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `designer_product_name` varchar(255) DEFAULT NULL,
  `designer_user_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`designer_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designer_product`
--

LOCK TABLES `designer_product` WRITE;
/*!40000 ALTER TABLE `designer_product` DISABLE KEYS */;
INSERT INTO `designer_product` VALUES (1,NULL,'Designer Blue Giant','Emmy','https://ienveyeb.sirv.com/dev/wp-content/uploads/2019/11/M/o/1/Modern-Italian-Geometric-Designer-Table-Lamp-With-Shade-1.jpg',100),(2,NULL,'Designer Red Giant','Jack','https://images.pexels.com/photos/1457844/pexels-photo-1457844.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',200),(3,NULL,'Designer Purple Giant','Emma','https://lunares.eu/p/84513/elegance-60w-e27.jpg',123),(4,NULL,'Designer Blue Giant','Steven','https://www.dhresource.com/0x0/f2/albu/g8/M00/4E/78/rBVaV15c1Z2AKb7gAAbTjDV3Yfs812.jpg/cafe-restaurant-bar-american-vintage-style.jpg',153),(5,NULL,'Designer WoodStock','Lissana','https://www.dhresource.com/0x0/f2/albu/g10/M00/9B/C3/rBVaWV5cksuABJW-AAkPIL-Ozn8468.png/nordic-creative-personality-cafe-restaurant.jpg',343),(6,NULL,'Designer Goldent Accent','Mira','https://images.pexels.com/photos/937526/pexels-photo-937526.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',545),(7,NULL,'Designer Goldent','Gray','https://images-na.ssl-images-amazon.com/images/I/71vsN5Huo%2BL._AC_SX342_.jpg',764),(8,NULL,'Designer Giant','Erza','https://images.pexels.com/photos/5770563/pexels-photo-5770563.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',676),(9,NULL,'Designer Giant C','Eren','https://images.pexels.com/photos/705194/pexels-photo-705194.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',500),(10,NULL,'Designer Giant B','Falco','https://images.pexels.com/photos/2333855/pexels-photo-2333855.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',500),(11,NULL,'Designer Giant A','Micasa','https://lunares.eu/p/84513/elegance-60w-e27.jpg',760),(12,NULL,'Designer Galaxy','Robin','https://images.beautifulhalo.com/images/v/201810/D/1539655178353.jpg',700),(13,NULL,'Designer Dandelion','Reiner','https://www.modern.place/wp-content/uploads/2017/07/48e149d31f9ea032047145f3e97fec06.jpg',900);
/*!40000 ALTER TABLE `designer_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `dimension` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `catergory` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK10xidgaru93qe1xyvuxbv5y3d` (`catergory`),
  CONSTRAINT `FK10xidgaru93qe1xyvuxbv5y3d` FOREIGN KEY (`catergory`) REFERENCES `catergory` (`catergory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','23 x 3','https://www.dhresource.com/0x0/f2/albu/g10/M01/E4/F9/rBVaVl7d-F6AdJcWAAEuhwlVMwA196.jpg/modern-dandelion-led-ceiling-light-crystal.jpg',100,'Blue Giant','70',1),(2,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','63 x 3','https://static.3dbaza.com/models/0/4acaad1112a748ebb19f8e0f.jpg',300,'Apple Moon Light','60',2),(3,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','63 x 3','https://lunares.eu/p/84513/elegance-60w-e27.jpg',3000,'Goldent Accent','60',2),(4,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','43 x 3','https://www.dhresource.com/0x0/f2/albu/g8/M00/4E/78/rBVaV15c1Z2AKb7gAAbTjDV3Yfs812.jpg/cafe-restaurant-bar-american-vintage-style.jpg',400,'Black Pendant','78',3),(5,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','23 x 2','https://www.dhresource.com/0x0/f2/albu/g10/M00/9B/C3/rBVaWV5cksuABJW-AAkPIL-Ozn8468.png/nordic-creative-personality-cafe-restaurant.jpg',500,'Shine Light','65',4),(6,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','23 x 3','https://images.pexels.com/photos/937526/pexels-photo-937526.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',600,'One Way Chandaliers','89',5),(7,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','23 x 3','https://images-na.ssl-images-amazon.com/images/I/71vsN5Huo%2BL._AC_SX342_.jpg',700,'Candle Deco','60',5),(8,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','23 x 3','https://images.pexels.com/photos/5770563/pexels-photo-5770563.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',800,'Mendo','566',6),(9,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','23 x 3','https://images.pexels.com/photos/705194/pexels-photo-705194.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',900,'Ninto Hut','45',3),(10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','23 x 3','https://images.pexels.com/photos/2333855/pexels-photo-2333855.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',1000,'Glass Handling','80',3),(12,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed veniam necessitatibus eos sequi officia provident consequuntur amet, accusamus nulla ad explicabo nisi dolores laborum perspiciatis libero enim culpa eius neque?','11 x 1 x 2','https://images.indianexpress.com/2020/05/lighting-home_759_getty.jpg',1000,'Starling','9',2),(13,'Rose Gold Glass Pretty','11 x 2 x 3','https://cdn.home-designing.com/wp-content/uploads/2017/11/thick-orange-middle-copper-table-lamp-600x822.jpg',2000,'Golden Tight','30',4),(14,'Livia Table Lamp - Copper Glass & Grey Faux Silk','12 x 1 x 2','https://www.moonlightdesign.co.uk/images/endon-lighting-livia-table-lamp-copper-glass-grey-faux-silk-p10189-15150_image.jpg',2500,'Endon Lighting','35',4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_location` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,'Colombo','Mark','Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium quos similique error accusamus. Iusto eos cumque vitae eveniet, suscipit quibusdam totam nesciunt alias voluptatum rerum dolorem quidem tempore ex quasi.',5),(2,'Mount Lavania','Linda','Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium quos similique error accusamus. Iusto eos cumque vitae eveniet, suscipit quibusdam totam nesciunt alias voluptatum rerum dolorem quidem tempore ex quasi.',5),(3,'Dehiwela','Mosh','Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium quos similique error accusamus. Iusto eos cumque vitae eveniet, suscipit quibusdam totam nesciunt alias voluptatum rerum dolorem quidem tempore ex quasi.',5),(4,'Nugegoda','Lucy','Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium quos similique error accusamus. Iusto eos cumque vitae eveniet, suscipit quibusdam totam nesciunt alias voluptatum rerum dolorem quidem tempore ex quasi.',4),(5,'Colombo','Anny','Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium quos similique error accusamus. Iusto eos cumque vitae eveniet, suscipit quibusdam totam nesciunt alias voluptatum rerum dolorem quidem tempore ex quasi.',3),(6,'Colombo','Sarah','Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium quos similique error accusamus. Iusto eos cumque vitae eveniet, suscipit quibusdam totam nesciunt alias voluptatum rerum dolorem quidem tempore ex quasi.',2);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lightzy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19 10:22:12
