-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: b92085mx_ocar1
-- ------------------------------------------------------
-- Server version	5.5.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','ygR132WL0kY8c11eqySpgnbGodDyExU2BrVCVfqPI60TCbRgS8y8k2S0UUyuyafqyNi4Q8bNLKNW4WBnbEb0eqcTruUELgV7alSSIV2kFbXaVvFbnBqFsLDiA64jn6PzBWwz5pim0mi2sxNugYowryNNRaLU3zi272b4FKxNuyXb16gB83C2oMIKsIip6C2SD9NoUlCDR1Xmda8Hzdp5pajNNFILO0ZhxRNOSAEDoA1R4cuaqRZqFZa7WSIVozm7',1,'2017-06-26 14:46:31','2017-06-26 14:46:31');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(1,2,'Description'),(2,1,'No. of Cores'),(2,2,'No. of Cores'),(3,1,'Clockspeed'),(3,2,'Clockspeed'),(4,1,'test 1'),(4,2,'test 1'),(5,1,'test 2'),(5,2,'test 2'),(6,1,'test 3'),(6,2,'test 3'),(7,1,'test 4'),(7,2,'test 4'),(8,1,'test 5'),(8,2,'test 5'),(9,1,'test 6'),(9,2,'test 6'),(10,1,'test 7'),(10,2,'test 7'),(11,1,'test 8'),(11,2,'test 8');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(3,2,'Memory'),(4,1,'Technical'),(4,2,'Technical'),(5,1,'Motherboard'),(5,2,'Motherboard'),(6,1,'Processor'),(6,2,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',0),(9,'Products',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(101,6,2,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(113,8,2,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(114,8,2,'Dell','','catalog/demo/manufacturer/dell.png',0),(115,8,2,'Disney','','catalog/demo/manufacturer/disney.png',0),(116,8,2,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(117,8,2,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(118,8,2,'Canon','','catalog/demo/manufacturer/canon.png',0),(119,8,2,'NFL','','catalog/demo/manufacturer/nfl.png',0),(120,8,2,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(121,8,2,'Sony','','catalog/demo/manufacturer/sony.png',0),(122,8,2,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(123,8,2,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),(124,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(125,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(126,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(127,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(128,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(129,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(130,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(131,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(132,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(133,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(134,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),(135,7,2,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(136,7,2,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(137,7,2,'Glass','','catalog/slider/4-layers.jpg',0),(138,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(139,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (59,'',0,1,1,0,1,'2019-02-16 12:25:08','2019-02-16 12:27:54');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (59,1,'Очки','','Очки','',''),(59,2,'Glasses','','Glasses','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (59,59,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (59,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (59,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (20,'Белоруссия (Беларусь)','BY','BLR','',0,1),(80,'Грузия','GE','GEO','',0,1),(109,'Казахстан','KZ','KAZ','',0,1),(115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1),(176,'Российская Федерация','RU','RUS','',0,1),(220,'Украина','UA','UKR','',0,1),(226,'Узбекистан','UZ','UZB','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Рубль','RUB','','р.','0',1.00000000,1,'2019-02-17 21:09:44'),(2,'USD','USD','$ ','','2',0.01400000,1,'2019-02-15 21:35:08');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test'),(1,2,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','theme_default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'module','latest'),(30,'module','newsblog_articles'),(31,'module','bestseller');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'Зона НДС','Облагаемые НДС','2014-09-09 11:48:13','2014-05-21 22:30:20');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (3,1,'Политика Безопасности','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','Политика Безопасности','',''),(3,2,'Политика Безопасности','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','Политика Безопасности','',''),(4,1,'О нас','&lt;p&gt;\r\n	About Us&lt;/p&gt;','О нас','',''),(4,2,'О нас','&lt;p&gt;\r\n	About Us&lt;/p&gt;','О нас','',''),(5,1,'Условия соглашения','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;','Условия соглашения','',''),(5,2,'Условия соглашения','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;','Условия соглашения','',''),(6,1,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;','Доставка','',''),(6,2,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;','Доставка','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'Russian','ru-ru','ru_RU.UTF-8,ru_RU,russian','ru-ru.png','russian',1,1),(2,'English','en-gb','en_US.UTF-8,en_US,en-gb,english','','',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search'),(14,'Feedback');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(68,6,'account','column_right',1),(69,10,'affiliate','column_right',1),(80,3,'category','column_left',1),(81,1,'slideshow.27','content_top',1),(82,1,'featured.28','content_bottom',0),(83,1,'bestseller.33','content_bottom',1),(84,1,'latest.32','content_bottom',2),(85,1,'category','column_right',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (17,10,0,'affiliate/%'),(20,2,0,'product/product'),(23,7,0,'checkout/%'),(24,11,0,'information/information'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(38,6,0,'account/%'),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search'),(56,3,0,'product/category'),(77,14,0,'feedback/feedback'),(78,1,0,'common/home');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Сантиметр','см'),(1,2,'Сантиметр','см'),(2,1,'Миллиметр','мм'),(2,2,'Миллиметр','мм');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu`
--

DROP TABLE IF EXISTS `oc_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu`
--

LOCK TABLES `oc_menu` WRITE;
/*!40000 ALTER TABLE `oc_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu_description`
--

DROP TABLE IF EXISTS `oc_menu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu_description`
--

LOCK TABLES `oc_menu_description` WRITE;
/*!40000 ALTER TABLE `oc_menu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu_module`
--

DROP TABLE IF EXISTS `oc_menu_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_module_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu_module`
--

LOCK TABLES `oc_menu_module` WRITE;
/*!40000 ALTER TABLE `oc_menu_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (1,'Local copy OCMOD by iSenseLabs','isensealabs_quickfix_ocmod','iSenseLabs','1.3','http://ocmod.net','<modification>\r\n    <name><a href=\"http://ocmod.net\" target=\"_blank\" data-toggle=\"tooltip\" data-placement=\"right\" data-original-title=\"Скачано с сайта ocmod.net\"><i class=\"fa fa-cloud-download\" aria-hidden=\"true\" style=\"margin-right: 5px;\"></i>Local copy OCMOD by iSenseLabs</a></name>\r\n	<version>1.3</version>\r\n	<link>http://ocmod.net</link>\r\n	<author>iSenseLabs</author>\r\n	<code>isensealabs_quickfix_ocmod</code>\r\n\r\n	<file path=\"admin/controller/extension/installer.php\">\r\n		<operation error=\"skip\">\r\n			<search ><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/ftp\', \'token=\' . $this->session->data[\'token\'],]]></search>\r\n			<add position=\"replace\"><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/localcopy\', \'token=\' . $this->session->data[\'token\'],]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position=\"before\"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(\'extension/installer\');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'extension/installer\')) {\r\n			$json[\'error\'] = $this->language->get(\'error_permission\');\r\n		}\r\n\r\n		if (VERSION == \'2.0.0.0\') {\r\n		    $directory = DIR_DOWNLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n		} else {\r\n		    $directory = DIR_UPLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n		}\r\n\r\n		if (!is_dir($directory)) {\r\n			$json[\'error\'] = $this->language->get(\'error_directory\');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . \'*\');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . \'/*\';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).\'/\';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = substr($file, strlen($directory));\r\n\r\n				// Update from newer OpenCart versions:\r\n				if (substr($destination, 0, 5) == \'admin\') {\r\n					$destination = DIR_APPLICATION . substr($destination, 5);\r\n				} else if (substr($destination, 0, 7) == \'catalog\') {\r\n					$destination = DIR_CATALOG . substr($destination, 7);\r\n				} else if (substr($destination, 0, 5) == \'image\') {\r\n					$destination = DIR_IMAGE . substr($destination, 5);\r\n				} else if (substr($destination, 0, 6) == \'system\') {\r\n					$destination = DIR_SYSTEM . substr($destination, 6);\r\n				} else {\r\n					$destination = $root.$destination;\r\n				}\r\n\r\n				if (is_dir($file)) {\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[\'error\'] = sprintf($this->language->get(\'error_ftp_directory\'), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[\'error\'] = sprintf($this->language->get(\'error_ftp_file\'), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>\r\n',1,'2019-02-15 11:27:00'),(2,'NewsBlog - create unlimited categories with articles','newsblog','netruxa','20171002 for opencart 2.3.x','http://nedorogoi-internet-magazin.ru/opencart/','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n    <name>NewsBlog - create unlimited categories with articles</name>\r\n    <code>newsblog</code>\r\n    <version>20171002 for opencart 2.3.x</version>\r\n    <author>netruxa</author>\r\n    <link>http://nedorogoi-internet-magazin.ru/opencart/</link>\r\n  <file path=\"admin/controller/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[// Catalog]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      		$newsblog = array();\r\n\r\n			if ($this->user->hasPermission(\'access\', \'newsblog/category\')) {\r\n				$newsblog[] = array(\r\n					\'name\'	   => $this->language->get(\'text_newsblog_category\'),\r\n					\'href\'     => $this->url->link(\'newsblog/category\', \'token=\' . $this->session->data[\'token\'], true),\r\n					\'children\' => array()\r\n				);\r\n			}\r\n\r\n			if ($this->user->hasPermission(\'access\', \'newsblog/article\')) {\r\n				$newsblog[] = array(\r\n					\'name\'	   => $this->language->get(\'text_newsblog_article\'),\r\n					\'href\'     => $this->url->link(\'newsblog/article\', \'token=\' . $this->session->data[\'token\'], true),\r\n					\'children\' => array()\r\n				);\r\n			}\r\n\r\n			if ($newsblog) {\r\n				$data[\'menus\'][] = array(\r\n					\'id\'       => \'menu-newsblog\',\r\n					\'icon\'	   => \'fa-newspaper-o\',\r\n					\'name\'	   => $this->language->get(\'text_newsblog\'),\r\n					\'href\'     => \'\',\r\n					\'children\' => $newsblog\r\n				);\r\n			}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"admin/language/ru-ru/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[$_[\'text_catalog\']]]></search>\r\n      <add position=\"before\"><![CDATA[$_[\'text_newsblog\'] = \'NewsBlog материалы\';$_[\'text_newsblog_category\'] = \'Список категорий\';$_[\'text_newsblog_article\'] = \'Список материалов\';]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"admin/language/en-gb/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[$_[\'text_catalog\']]]></search>\r\n      <add position=\"before\"><![CDATA[$_[\'text_newsblog\'] = \'NewsBlog articles\';$_[\'text_newsblog_category\'] = \'Category list\';$_[\'text_newsblog_article\'] = \'Item list\';]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/controller/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[if ($route == \'information/information\' && isset($this->request->get[\'information_id\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      if ($route == \'newsblog/category\' && isset($this->request->get[\'newsblog_path\'])) {\r\n			$this->load->model(\'newsblog/category\');\r\n\r\n			$path = explode(\'_\', (string)$this->request->get[\'newsblog_path\']);\r\n\r\n			$layout_id = $this->model_newsblog_category->getCategoryLayoutId(end($path));\r\n		}\r\n\r\n		if ($route == \'newsblog/article\' && isset($this->request->get[\'newsblog_article_id\'])) {\r\n			$this->load->model(\'newsblog/article\');\r\n\r\n			$layout_id = $this->model_newsblog_article->getArticleLayoutId($this->request->get[\'newsblog_article_id\']);\r\n		}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/controller/common/column_right.php\">\r\n    <operation>\r\n      <search><![CDATA[if ($route == \'information/information\' && isset($this->request->get[\'information_id\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      if ($route == \'newsblog/category\' && isset($this->request->get[\'newsblog_path\'])) {\r\n			$this->load->model(\'newsblog/category\');\r\n\r\n			$path = explode(\'_\', (string)$this->request->get[\'newsblog_path\']);\r\n\r\n			$layout_id = $this->model_newsblog_category->getCategoryLayoutId(end($path));\r\n		}\r\n\r\n		if ($route == \'newsblog/article\' && isset($this->request->get[\'newsblog_article_id\'])) {\r\n			$this->load->model(\'newsblog/article\');\r\n\r\n			$layout_id = $this->model_newsblog_article->getArticleLayoutId($this->request->get[\'newsblog_article_id\']);\r\n		}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/controller/common/content_bottom.php\">\r\n    <operation>\r\n      <search><![CDATA[if ($route == \'information/information\' && isset($this->request->get[\'information_id\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      if ($route == \'newsblog/category\' && isset($this->request->get[\'newsblog_path\'])) {\r\n			$this->load->model(\'newsblog/category\');\r\n\r\n			$path = explode(\'_\', (string)$this->request->get[\'newsblog_path\']);\r\n\r\n			$layout_id = $this->model_newsblog_category->getCategoryLayoutId(end($path));\r\n		}\r\n\r\n		if ($route == \'newsblog/article\' && isset($this->request->get[\'newsblog_article_id\'])) {\r\n			$this->load->model(\'newsblog/article\');\r\n\r\n			$layout_id = $this->model_newsblog_article->getArticleLayoutId($this->request->get[\'newsblog_article_id\']);\r\n		}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/controller/common/content_top.php\">\r\n    <operation>\r\n      <search><![CDATA[if ($route == \'information/information\' && isset($this->request->get[\'information_id\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      if ($route == \'newsblog/category\' && isset($this->request->get[\'newsblog_path\'])) {\r\n			$this->load->model(\'newsblog/category\');\r\n\r\n			$path = explode(\'_\', (string)$this->request->get[\'newsblog_path\']);\r\n\r\n			$layout_id = $this->model_newsblog_category->getCategoryLayoutId(end($path));\r\n		}\r\n\r\n		if ($route == \'newsblog/article\' && isset($this->request->get[\'newsblog_article_id\'])) {\r\n			$this->load->model(\'newsblog/article\');\r\n\r\n			$layout_id = $this->model_newsblog_article->getArticleLayoutId($this->request->get[\'newsblog_article_id\']);\r\n		}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/controller/startup/seo_url.php\">\r\n    <operation>\r\n      <search><![CDATA[if ($url[0] == \'information_id\') {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      				if ($url[0] == \'newsblog_article_id\') {\r\n						$this->request->get[\'newsblog_article_id\'] = $url[1];\r\n					}\r\n\r\n					if ($url[0] == \'newsblog_category_id\') {\r\n						if (!isset($this->request->get[\'newsblog_path\'])) {\r\n							$this->request->get[\'newsblog_path\'] = $url[1];\r\n						} else {\r\n							$this->request->get[\'newsblog_path\'] .= \'_\' . $url[1];\r\n						}\r\n					}\r\n		]]></add>\r\n	</operation>\r\n	<operation>\r\n		<search><![CDATA[$url[0] != \'information_id\']]></search>\r\n	    <add position=\"replace \"><![CDATA[$url[0] != \'newsblog_category_id\' && $url[0] != \'newsblog_article_id\' && $url[0] != \'information_id\']]></add>\r\n	</operation>\r\n	<operation>\r\n	    <search><![CDATA[} elseif (isset($this->request->get[\'information_id\'])) {]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n      			} elseif (isset($this->request->get[\'newsblog_article_id\'])) {\r\n					$this->request->get[\'route\'] = \'newsblog/article\';\r\n				} elseif (isset($this->request->get[\'newsblog_path\'])) {\r\n					$this->request->get[\'route\'] = \'newsblog/category\';\r\n		]]></add>\r\n	</operation>\r\n	<operation>\r\n		<search><![CDATA[($data[\'route\'] == \'information/information\' && $key == \'information_id\')]]></search>\r\n	    <add position=\"replace\"><![CDATA[($data[\'route\'] == \'newsblog/article\' && $key == \'newsblog_article_id\') || ($data[\'route\'] == \'information/information\' && $key == \'information_id\')]]></add>\r\n	</operation>\r\n	<operation>\r\n	    <search><![CDATA[} elseif ($key == \'path\') {]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n      			} elseif ($key == \'newsblog_path\') {\r\n					$categories = explode(\'_\', $value);\r\n\r\n					foreach ($categories as $category) {\r\n						$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"url_alias WHERE `query` = \'newsblog_category_id=\" . (int)$category . \"\'\");\r\n\r\n						if ($query->num_rows && $query->row[\'keyword\']) {\r\n							$url .= \'/\' . $query->row[\'keyword\'];\r\n						} else {\r\n							$url = \'\';\r\n\r\n							break;\r\n						}\r\n					}\r\n\r\n					unset ($data[$key]);\r\n		]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/controller/startup/seo_pro.php\">\r\n    <operation>\r\n      <search><![CDATA[if ($url[0] == \'category_id\') {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      				if ($url[0] == \'newsblog_category_id\') {\r\n						if (!isset($this->request->get[\'newsblog_path\'])) {\r\n							$this->request->get[\'newsblog_path\'] = $url[1];\r\n						} else {\r\n							$this->request->get[\'newsblog_path\'] .= \'_\' . $url[1];\r\n						}\r\n					} else\r\n		]]></add>\r\n	</operation>\r\n	<operation>\r\n		<search><![CDATA[if (isset($this->request->get[\'product_id\'])) {]]></search>\r\n	    <add position=\"before\"><![CDATA[\r\n		    if (isset($this->request->get[\'newsblog_article_id\'])) {\r\n				$this->request->get[\'route\'] = \'newsblog/article\';\r\n				if (!isset($this->request->get[\'newsblog_path\'])) {\r\n					$path = $this->getPathByNewsBlogArticle($this->request->get[\'newsblog_article_id\']);\r\n					if ($path) $this->request->get[\'newsblog_path\'] = $path;\r\n				}\r\n			} elseif (isset($this->request->get[\'newsblog_path\'])) {\r\n				$this->request->get[\'route\'] = \'newsblog/category\';\r\n			} else\r\n	    ]]></add>\r\n	</operation>\r\n	<operation>\r\n	    <search><![CDATA[case \'product/product\':]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n      			case \'newsblog/article\':\r\n				if (isset($data[\'newsblog_article_id\'])) {\r\n					$tmp = $data;\r\n					$data = array();\r\n					if ($this->config->get(\'config_seo_url_include_path\')) {\r\n						$data[\'newsblog_path\'] = $this->getPathByNewsBlogArticle($tmp[\'newsblog_article_id\']);\r\n						if (!$data[\'newsblog_path\']) return $link;\r\n					}\r\n					$data[\'newsblog_article_id\'] = $tmp[\'newsblog_article_id\'];\r\n				}\r\n				break;\r\n\r\n			case \'newsblog/category\':\r\n				if (isset($data[\'newsblog_path\'])) {\r\n					$category = explode(\'_\', $data[\'newsblog_path\']);\r\n					$category = end($category);\r\n					$data[\'newsblog_path\'] = $this->getPathByNewsBlogCategory($category);\r\n					if (!$data[\'newsblog_path\']) return $link;\r\n				}\r\n				break;\r\n		]]></add>\r\n	</operation>\r\n	<operation>\r\n		<search><![CDATA[case \'product_id\':]]></search>\r\n	    <add position=\"before\"><![CDATA[\r\n	       			case \'newsblog_path\':\r\n						$categories = explode(\'_\', $value);\r\n						foreach($categories as $category) {\r\n							$queries[] = \'newsblog_category_id=\' . $category;\r\n						}\r\n						unset($data[$key]);\r\n						break;\r\n\r\n					case \'newsblog_article_id\':\r\n					case \'newsblog_category_id\':\r\n	    ]]></add>\r\n	</operation>\r\n	<operation>\r\n	    <search><![CDATA[private function getPathByProduct($product_id) {]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n	private function getPathByNewsBlogArticle($article_id) {\r\n		$article_id = (int)$article_id;\r\n		if ($article_id < 1) return false;\r\n\r\n		static $path = null;\r\n		if (!isset($path)) {\r\n			$path = $this->cache->get(\'newsblog.article.seopath\');\r\n			if (!isset($path)) $path = array();\r\n		}\r\n\r\n		if (!isset($path[$article_id])) {\r\n			$query = $this->db->query(\"SELECT category_id FROM \" . DB_PREFIX . \"newsblog_article_to_category WHERE article_id = \'\" . $article_id . \"\' ORDER BY main_category DESC LIMIT 1\");\r\n\r\n			$path[$article_id] = $this->getPathByNewsBlogCategory($query->num_rows ? (int)$query->row[\'category_id\'] : 0);\r\n\r\n			$this->cache->set(\'newsblog.article.seopath\', $path);\r\n		}\r\n\r\n		return $path[$article_id];\r\n	}\r\n\r\n	private function getPathByNewsBlogCategory($category_id) {\r\n		$category_id = (int)$category_id;\r\n		if ($category_id < 1) return false;\r\n\r\n		static $path = null;\r\n		if (!isset($path)) {\r\n			$path = $this->cache->get(\'newsblog.category.seopath\');\r\n			if (!isset($path)) $path = array();\r\n		}\r\n\r\n		if (!isset($path[$category_id])) {\r\n			$max_level = 10;\r\n\r\n			$sql = \"SELECT CONCAT_WS(\'_\'\";\r\n			for ($i = $max_level-1; $i >= 0; --$i) {\r\n				$sql .= \",t$i.category_id\";\r\n			}\r\n			$sql .= \") AS path FROM \" . DB_PREFIX . \"newsblog_category t0\";\r\n			for ($i = 1; $i < $max_level; ++$i) {\r\n				$sql .= \" LEFT JOIN \" . DB_PREFIX . \"newsblog_category t$i ON (t$i.category_id = t\" . ($i-1) . \".parent_id)\";\r\n			}\r\n			$sql .= \" WHERE t0.category_id = \'\" . $category_id . \"\'\";\r\n\r\n			$query = $this->db->query($sql);\r\n\r\n			$path[$category_id] = $query->num_rows ? $query->row[\'path\'] : false;\r\n\r\n			$this->cache->set(\'newsblog.category.seopath\', $path);\r\n		}\r\n\r\n		return $path[$category_id];\r\n	}\r\n		]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/controller/information/sitemap.php\">\r\n    <operation>\r\n      <search><![CDATA[$this->load->model(\'catalog/information\');]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      	$this->load->model(\'newsblog/category\');\r\n        $this->load->model(\'newsblog/article\');\r\n\r\n		$data[\'newsblog_categories\'] = array();\r\n\r\n		$categories = $this->model_newsblog_category->getCategories(0);\r\n\r\n		foreach ($categories as $category) {\r\n			if ($category[\'settings\']) {\r\n				$settings=unserialize($category[\'settings\']);\r\n				if ($settings[\'show_in_sitemap\']==0) continue;\r\n			}\r\n\r\n			$articles = array();\r\n\r\n			if ($category[\'settings\'] && $settings[\'show_in_sitemap_articles\']) {\r\n				$filter=array(\'filter_category_id\'=>$category[\'category_id\'],\'filter_sub_category\'=>true);\r\n				$results = $this->model_newsblog_article->getArticles($filter);\r\n\r\n				foreach ($results as $result) {\r\n					$articles[] = array(\r\n						\'name\'        => $result[\'name\'],\r\n						\'href\'        => $this->url->link(\'newsblog/article\', \'newsblog_path=\' . $category[\'category_id\'] . \'&newsblog_article_id=\' . $result[\'article_id\'])\r\n					);\r\n				}\r\n            }\r\n			$data[\'newsblog_categories\'][] = array(\r\n				\'name\'     => $category[\'name\'],\r\n				\'children\' => $articles,\r\n				\'href\'     => $this->url->link(\'newsblog/category\', \'newsblog_path=\' . $category[\'category_id\'])\r\n			);\r\n		}\r\n		]]></add>\r\n	</operation>\r\n  </file>\r\n  <file path=\"catalog/view/theme/*/template/information/sitemap.tpl\">\r\n    <operation>\r\n      <search><![CDATA[<li><?php echo $text_information; ?>]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      	<?php foreach ($newsblog_categories as $category) { ?>\r\n            <li><a href=\"<?php echo $category[\'href\']; ?>\"><?php echo $category[\'name\']; ?></a>\r\n              <?php if ($category[\'children\']) { ?>\r\n              <ul>\r\n                <?php foreach ($category[\'children\'] as $article) { ?>\r\n                <li><a href=\"<?php echo $article[\'href\']; ?>\"><?php echo $article[\'name\']; ?></a></li>\r\n                <?php } ?>\r\n              </ul>\r\n              <?php } ?>\r\n            </li>\r\n            <?php } ?>\r\n		]]></add>\r\n	</operation>\r\n  </file>\r\n  <file path=\"catalog/controller/common/header.php\">\r\n    <operation>\r\n      <search><![CDATA[$data[\'language\'] = $this->load->controller(\'common/language\');]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      	$this->load->model(\'newsblog/category\');\r\n        $this->load->model(\'newsblog/article\');\r\n\r\n		$data[\'newsblog_categories\'] = array();\r\n\r\n		$categories = $this->model_newsblog_category->getCategories(0);\r\n\r\n		foreach ($categories as $category) {\r\n			if ($category[\'settings\']) {\r\n				$settings=unserialize($category[\'settings\']);\r\n				if ($settings[\'show_in_top\']==0) continue;\r\n			}\r\n\r\n			$articles = array();\r\n\r\n			if ($category[\'settings\'] && $settings[\'show_in_top_articles\']) {\r\n				$filter=array(\'filter_category_id\'=>$category[\'category_id\'],\'filter_sub_category\'=>true);\r\n				$results = $this->model_newsblog_article->getArticles($filter);\r\n\r\n				foreach ($results as $result) {\r\n					$articles[] = array(\r\n						\'name\'        => $result[\'name\'],\r\n						\'href\'        => $this->url->link(\'newsblog/article\', \'newsblog_path=\' . $category[\'category_id\'] . \'&newsblog_article_id=\' . $result[\'article_id\'])\r\n					);\r\n				}\r\n            }\r\n			$data[\'categories\'][] = array(\r\n				\'name\'     => $category[\'name\'],\r\n				\'children\' => $articles,\r\n				\'column\'   => 1,\r\n				\'href\'     => $this->url->link(\'newsblog/category\', \'newsblog_path=\' . $category[\'category_id\'])\r\n			);\r\n		}\r\n		]]></add>\r\n	</operation>\r\n  </file>\r\n</modification>',1,'2019-02-15 11:27:32');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"2100\",\"height\":\"712\",\"status\":\"1\"}'),(28,'Home Page','featured','{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"50\",\"51\",\"52\"],\"limit\":\"4\",\"width\":\"233\",\"height\":\"229\",\"status\":\"1\"}'),(29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),(30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(32,'NewItems','latest','{\"name\":\"NewItems\",\"limit\":\"5\",\"width\":\"233\",\"height\":\"229\",\"status\":\"1\"}'),(33,'Хиты Продаж','bestseller','{\"name\":\"\\u0425\\u0438\\u0442\\u044b \\u041f\\u0440\\u043e\\u0434\\u0430\\u0436\",\"limit\":\"5\",\"width\":\"233\",\"height\":\"229\",\"status\":\"1\"}'),(34,'Products','banner','{\"name\":\"Products\",\"banner_id\":\"9\",\"width\":\"77\",\"height\":\"77\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article`
--

DROP TABLE IF EXISTS `oc_newsblog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `date_available` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article`
--

LOCK TABLES `oc_newsblog_article` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article_attribute`
--

DROP TABLE IF EXISTS `oc_newsblog_article_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article_attribute` (
  `article_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`article_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article_attribute`
--

LOCK TABLES `oc_newsblog_article_attribute` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article_description`
--

DROP TABLE IF EXISTS `oc_newsblog_article_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `preview` text NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`article_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article_description`
--

LOCK TABLES `oc_newsblog_article_description` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article_image`
--

DROP TABLE IF EXISTS `oc_newsblog_article_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `article_id` (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article_image`
--

LOCK TABLES `oc_newsblog_article_image` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article_related`
--

DROP TABLE IF EXISTS `oc_newsblog_article_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article_related` (
  `article_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  PRIMARY KEY (`article_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article_related`
--

LOCK TABLES `oc_newsblog_article_related` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article_to_category`
--

DROP TABLE IF EXISTS `oc_newsblog_article_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article_to_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article_to_category`
--

LOCK TABLES `oc_newsblog_article_to_category` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article_to_layout`
--

DROP TABLE IF EXISTS `oc_newsblog_article_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article_to_layout` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article_to_layout`
--

LOCK TABLES `oc_newsblog_article_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_article_to_store`
--

DROP TABLE IF EXISTS `oc_newsblog_article_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_article_to_store`
--

LOCK TABLES `oc_newsblog_article_to_store` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_article_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_newsblog_article_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_category`
--

DROP TABLE IF EXISTS `oc_newsblog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_category`
--

LOCK TABLES `oc_newsblog_category` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_category` DISABLE KEYS */;
INSERT INTO `oc_newsblog_category` VALUES (1,'',0,0,1,'2019-02-15 11:28:28','2019-02-15 13:21:43','a:27:{s:11:\"date_format\";s:9:\"d.m.Y H:i\";s:16:\"image_size_width\";s:2:\"80\";s:17:\"image_size_height\";s:2:\"80\";s:30:\"images_size_articles_big_width\";s:3:\"500\";s:31:\"images_size_articles_big_height\";s:3:\"500\";s:32:\"images_size_articles_small_width\";s:3:\"228\";s:33:\"images_size_articles_small_height\";s:3:\"228\";s:17:\"images_size_width\";s:3:\"228\";s:18:\"images_size_height\";s:3:\"228\";s:5:\"limit\";s:2:\"10\";s:15:\"show_in_sitemap\";i:1;s:24:\"show_in_sitemap_articles\";i:1;s:11:\"show_in_top\";i:1;s:20:\"show_in_top_articles\";i:0;s:12:\"show_preview\";i:0;s:7:\"sort_by\";s:16:\"a.date_available\";s:14:\"sort_direction\";s:4:\"desc\";s:16:\"template_article\";s:0:\"\";s:17:\"template_category\";s:0:\"\";s:19:\"show_comments_vk_id\";s:0:\"\";s:25:\"show_comments_vk_category\";i:0;s:24:\"show_comments_vk_article\";i:0;s:25:\"show_comments_fb_category\";i:0;s:24:\"show_comments_fb_article\";i:0;s:19:\"show_comments_dq_id\";s:0:\"\";s:25:\"show_comments_dq_category\";i:0;s:24:\"show_comments_dq_article\";i:0;}');
/*!40000 ALTER TABLE `oc_newsblog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_category_description`
--

DROP TABLE IF EXISTS `oc_newsblog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_category_description`
--

LOCK TABLES `oc_newsblog_category_description` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_category_description` DISABLE KEYS */;
INSERT INTO `oc_newsblog_category_description` VALUES (1,2,'News','','','','',''),(1,1,'Новости','','','','','');
/*!40000 ALTER TABLE `oc_newsblog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_category_path`
--

DROP TABLE IF EXISTS `oc_newsblog_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_category_path`
--

LOCK TABLES `oc_newsblog_category_path` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_category_path` DISABLE KEYS */;
INSERT INTO `oc_newsblog_category_path` VALUES (1,1,0);
/*!40000 ALTER TABLE `oc_newsblog_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_newsblog_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_category_to_layout`
--

LOCK TABLES `oc_newsblog_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_newsblog_category_to_layout` VALUES (1,0,0);
/*!40000 ALTER TABLE `oc_newsblog_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_newsblog_category_to_store`
--

DROP TABLE IF EXISTS `oc_newsblog_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_newsblog_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_newsblog_category_to_store`
--

LOCK TABLES `oc_newsblog_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_newsblog_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_newsblog_category_to_store` VALUES (1,0);
/*!40000 ALTER TABLE `oc_newsblog_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(1,2,'Radio'),(2,1,'Checkbox'),(2,2,'Checkbox'),(4,1,'Text'),(4,2,'Text'),(5,1,'Select'),(5,2,'Select'),(6,1,'Textarea'),(6,2,'Textarea'),(7,1,'File'),(7,2,'File'),(8,1,'Date'),(8,2,'Date'),(9,1,'Time'),(9,2,'Time'),(10,1,'Date &amp; Time'),(10,2,'Date &amp; Time'),(11,1,'Size'),(11,2,'Size'),(12,1,'Delivery Date'),(12,2,'Delivery Date');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (23,2,'',1),(24,2,'',2),(31,1,'',2),(32,1,'',1),(39,5,'',1),(40,5,'',2),(41,5,'',3),(42,5,'',4),(43,1,'',3),(44,2,'',3),(45,2,'',4),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (23,1,2,'Checkbox 1'),(23,2,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(24,2,2,'Checkbox 2'),(31,1,1,'Medium'),(31,2,1,'Medium'),(32,1,1,'Small'),(32,2,1,'Small'),(39,1,5,'Red'),(39,2,5,'Red'),(40,1,5,'Blue'),(40,2,5,'Blue'),(41,1,5,'Green'),(41,2,5,'Green'),(42,1,5,'Yellow'),(42,2,5,'Yellow'),(43,1,1,'Large'),(43,2,1,'Large'),(44,1,2,'Checkbox 3'),(44,2,2,'Checkbox 3'),(45,1,2,'Checkbox 4'),(45,2,2,'Checkbox 4'),(46,1,11,'Small'),(46,2,11,'Small'),(47,1,11,'Medium'),(47,2,11,'Medium'),(48,1,11,'Large'),(48,2,11,'Large');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (1,1,'Ожидание'),(1,2,'Ожидание'),(2,1,'В обработке'),(2,2,'В обработке'),(3,1,'Доставлено'),(3,2,'Доставлено'),(5,1,'Сделка завершена'),(5,2,'Сделка завершена'),(7,1,'Отменено'),(7,2,'Отменено'),(8,1,'Возврат'),(8,2,'Возврат'),(9,1,'Отмена и аннулирование'),(9,2,'Отмена и аннулирование'),(10,1,'Неудавшийся'),(10,2,'Неудавшийся'),(11,1,'Возмещенный'),(11,2,'Возмещенный'),(12,1,'Полностью измененный'),(12,2,'Полностью измененный'),(13,1,'Полный возврат'),(13,2,'Полный возврат');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `extra` (`status`,`date_available`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (50,'glass1','','','','','','','',100,7,'catalog/glasses/Layer_14.png',0,1,800.0000,0,0,'2019-02-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2019-02-16 12:26:00','2019-02-16 13:27:44'),(51,'glass2','','','','','','','',100,7,'catalog/glasses/Layer_15.png',0,1,590.0000,0,0,'2019-02-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,5,'2019-02-16 12:27:23','2019-02-16 16:41:19'),(52,'glass3','','','','','','','',100,7,'catalog/glasses/Layer_16.png',0,1,0.0000,0,0,'2019-02-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2019-02-16 12:33:36','2019-02-16 12:34:22'),(53,'glass4','','','','','','','',100,7,'catalog/glasses/Layer_17.png',0,1,640.0000,0,0,'2019-02-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2019-02-16 12:35:44','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (50,1,'glass1','','','glass1','',''),(50,2,'glass1','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;','','glass1','',''),(51,1,'glass2','','','glass2','',''),(51,2,'glass2','','','glass2','',''),(52,1,'glass3','','','glass3','',''),(52,2,'glass3','','','glass3','',''),(53,1,'glass4','','','glass4','',''),(53,2,'glass4','','','glass4','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2384 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (2364,52,'catalog/glasses/Layer_17.png',0),(2365,52,'catalog/glasses/Layer_18.png',0),(2366,52,'catalog/glasses/Layer_19.png',0),(2367,53,'catalog/glasses/Layer_18.png',0),(2368,53,'catalog/glasses/Layer_19.png',0),(2369,53,'catalog/glasses/Layer_20.png',0),(2370,50,'catalog/glasses/Layer_15.png',0),(2371,50,'catalog/glasses/Layer_16.png',0),(2372,50,'catalog/glasses/Layer_17.png',0),(2373,50,'catalog/glasses/Layer_18.png',0),(2374,50,'catalog/glasses/Layer_19.png',0),(2375,50,'catalog/glasses/Layer_21.png',0),(2376,50,'catalog/glasses/Layer_22.png',0),(2377,50,'catalog/glasses/Layer_24.png',0),(2378,50,'catalog/glasses/Layer_25.png',0),(2379,51,'catalog/glasses/Layer_16.png',0),(2380,51,'catalog/glasses/Layer_17.png',0),(2381,51,'catalog/glasses/Layer_18.png',0),(2382,51,'catalog/glasses/Layer_24.png',0),(2383,51,'catalog/glasses/Layer_22.png',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` VALUES (442,52,1,0,380.0000,'0000-00-00','0000-00-00'),(443,50,1,0,600.0000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (50,59),(51,59),(52,59),(53,59);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (50,0,0),(51,0,0),(52,0,0),(53,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (50,0),(51,0),(52,0),(53,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Возвращены средства'),(1,2,'Возвращены средства'),(2,1,'Выдан в кредит'),(2,2,'Выдан в кредит'),(3,1,'Отправлен другой товар для замены'),(3,2,'Отправлен другой товар для замены');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Получен/доставлен неисправным (сломан)'),(1,2,'Получен/доставлен неисправным (сломан)'),(2,1,'Получен не тот (ошибочный) товар'),(2,2,'Получен не тот (ошибочный) товар'),(4,1,'Ошибка, пожалуйста укажите/приложите подробности'),(4,2,'Ошибка, пожалуйста укажите/приложите подробности'),(5,1,'Другое (другая причина), пожалуйста укажите/приложите подробности'),(5,2,'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Рассматриваемый'),(1,2,'Рассматриваемый'),(2,1,'Заказ в ожидании'),(2,2,'Заказ в ожидании'),(3,1,'Готов (к отправке)'),(3,2,'Готов (к отправке)');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (4,0,'voucher','voucher_sort_order','8',0),(5,0,'voucher','voucher_status','1',0),(95,0,'free_checkout','free_checkout_status','1',0),(96,0,'free_checkout','free_checkout_order_status_id','1',0),(97,0,'shipping','shipping_sort_order','3',0),(98,0,'sub_total','sub_total_sort_order','1',0),(99,0,'sub_total','sub_total_status','1',0),(100,0,'tax','tax_status','0',0),(101,0,'total','total_sort_order','9',0),(102,0,'total','total_status','1',0),(103,0,'tax','tax_sort_order','5',0),(104,0,'free_checkout','free_checkout_sort_order','1',0),(105,0,'cod','cod_sort_order','5',0),(106,0,'cod','cod_total','0.01',0),(107,0,'cod','cod_order_status_id','1',0),(108,0,'cod','cod_geo_zone_id','0',0),(109,0,'cod','cod_status','1',0),(110,0,'shipping','shipping_status','1',0),(111,0,'shipping','shipping_estimator','1',0),(112,0,'coupon','coupon_sort_order','4',0),(113,0,'coupon','coupon_status','1',0),(114,0,'flat','flat_sort_order','1',0),(115,0,'flat','flat_status','1',0),(116,0,'flat','flat_geo_zone_id','0',0),(117,0,'flat','flat_tax_class_id','9',0),(118,0,'flat','flat_cost','5.00',0),(119,0,'credit','credit_sort_order','7',0),(120,0,'credit','credit_status','1',0),(121,0,'reward','reward_sort_order','2',0),(122,0,'reward','reward_status','1',0),(123,0,'category','category_status','1',0),(124,0,'account','account_status','1',0),(125,0,'affiliate','affiliate_status','1',0),(150,0,'dashboard_activity','dashboard_activity_status','1',0),(151,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(152,0,'dashboard_sale','dashboard_sale_status','1',0),(153,0,'dashboard_sale','dashboard_sale_width','3',0),(154,0,'dashboard_chart','dashboard_chart_status','1',0),(155,0,'dashboard_chart','dashboard_chart_width','6',0),(156,0,'dashboard_customer','dashboard_customer_status','1',0),(157,0,'dashboard_customer','dashboard_customer_width','3',0),(158,0,'dashboard_map','dashboard_map_status','1',0),(159,0,'dashboard_map','dashboard_map_width','6',0),(160,0,'dashboard_online','dashboard_online_status','1',0),(161,0,'dashboard_online','dashboard_online_width','3',0),(162,0,'dashboard_order','dashboard_order_sort_order','1',0),(163,0,'dashboard_order','dashboard_order_status','1',0),(164,0,'dashboard_order','dashboard_order_width','3',0),(165,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(166,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(167,0,'dashboard_online','dashboard_online_sort_order','4',0),(168,0,'dashboard_map','dashboard_map_sort_order','5',0),(169,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(170,0,'dashboard_recent','dashboard_recent_status','1',0),(171,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(172,0,'dashboard_activity','dashboard_activity_width','4',0),(173,0,'dashboard_recent','dashboard_recent_width','8',0),(268,0,'config','config_meta_title','Leo Shop',0),(269,0,'config','config_meta_description','Мой магазин',0),(270,0,'config','config_meta_keyword','',0),(271,0,'config','config_theme','theme_default',0),(272,0,'config','config_layout_id','4',0),(273,0,'config','config_name','Leo Shop',0),(274,0,'config','config_owner','Иванов Иван',0),(275,0,'config','config_address','г. Москва, ул. Ленина 10 оф. 32',0),(276,0,'config','config_geocode','',0),(277,0,'config','config_email','seltor@mail.ru',0),(278,0,'config','config_telephone','495 888-88-88',0),(279,0,'config','config_fax','495 888-88-88',0),(280,0,'config','config_image','',0),(281,0,'config','config_open','',0),(282,0,'config','config_comment','',0),(283,0,'config','config_country_id','176',0),(284,0,'config','config_zone_id','',0),(285,0,'config','config_language','ru-ru',0),(286,0,'config','config_admin_language','ru-ru',0),(287,0,'config','config_currency','RUB',0),(288,0,'config','config_currency_auto','1',0),(289,0,'config','config_length_class_id','1',0),(290,0,'config','config_weight_class_id','1',0),(291,0,'config','config_product_count','1',0),(292,0,'config','config_limit_admin','20',0),(293,0,'config','config_review_status','1',0),(294,0,'config','config_review_guest','1',0),(295,0,'config','config_voucher_min','1',0),(296,0,'config','config_voucher_max','1000',0),(297,0,'config','config_tax','0',0),(298,0,'config','config_tax_default','shipping',0),(299,0,'config','config_tax_customer','shipping',0),(300,0,'config','config_customer_online','0',0),(301,0,'config','config_customer_activity','0',0),(302,0,'config','config_customer_search','0',0),(303,0,'config','config_customer_group_id','1',0),(304,0,'config','config_customer_group_display','[\"1\"]',1),(305,0,'config','config_customer_price','0',0),(306,0,'config','config_login_attempts','5',0),(307,0,'config','config_account_id','3',0),(308,0,'config','config_invoice_prefix','INV-2016-00',0),(309,0,'config','config_cart_weight','1',0),(310,0,'config','config_checkout_guest','1',0),(311,0,'config','config_checkout_id','5',0),(312,0,'config','config_order_status_id','1',0),(313,0,'config','config_processing_status','[\"2\",\"3\",\"1\",\"12\",\"5\"]',1),(314,0,'config','config_complete_status','[\"3\",\"5\"]',1),(315,0,'config','config_fraud_status_id','2',0),(316,0,'config','config_api_id','1',0),(317,0,'config','config_stock_display','0',0),(318,0,'config','config_stock_warning','0',0),(319,0,'config','config_stock_checkout','0',0),(320,0,'config','config_affiliate_approval','0',0),(321,0,'config','config_affiliate_auto','0',0),(322,0,'config','config_affiliate_commission','5',0),(323,0,'config','config_affiliate_id','4',0),(324,0,'config','config_return_id','0',0),(325,0,'config','config_return_status_id','2',0),(326,0,'config','config_captcha','',0),(327,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),(328,0,'config','config_logo','catalog/logo.png',0),(329,0,'config','config_icon','catalog/cart.png',0),(330,0,'config','config_ftp_hostname','b92085mx.beget.tech',0),(331,0,'config','config_ftp_port','21',0),(332,0,'config','config_ftp_username','',0),(333,0,'config','config_ftp_password','',0),(334,0,'config','config_ftp_root','',0),(335,0,'config','config_ftp_status','0',0),(336,0,'config','config_mail_protocol','mail',0),(337,0,'config','config_mail_parameter','',0),(338,0,'config','config_mail_smtp_hostname','',0),(339,0,'config','config_mail_smtp_username','',0),(340,0,'config','config_mail_smtp_password','',0),(341,0,'config','config_mail_smtp_port','25',0),(342,0,'config','config_mail_smtp_timeout','5',0),(343,0,'config','config_mail_alert','[\"order\"]',1),(344,0,'config','config_mail_alert_email','',0),(345,0,'config','config_maintenance','0',0),(346,0,'config','config_seo_url','0',0),(347,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(348,0,'config','config_compression','0',0),(349,0,'config','config_secure','0',0),(350,0,'config','config_password','1',0),(351,0,'config','config_shared','0',0),(352,0,'config','config_encryption','1HPFI7AgDAAQIc33so488pBgzmW9nJc2oTvXCqIXNcuEAk4yOtScuj3KxPBeyNdF06Ov8NaK4nsW7VX1dnqSof1N2gsNpaZgibwGQcXSzQN6FjaCMQtIcE4Qf4S8507Eu1SEqdPsIrZjdrSYBvv6py6e8DVJvBXudB84GQywTWBrUxtO5DoMk8OtF89t8aCXdbmi0kMsighWXYW6i2ls3flDlKrRDw7xGh1bRXNgAaB4pqaLKHoI5hzrqkLcDk1wA0W1rw7wAHA3LZwgJAKhX61zLCgyEBJjykqZSRTuTjTfmuUhVDSKK9HuU8YnGHiGqiR8sZ6Crts0U3MzS35g8klK5z6ojq5ZXkZ6rMIRD0mkx17TXSAUAdhcZKTYgGFol36fx0ke1wl8W74rCejTW24nw0zfst87lMtcT5FG7H0KUhSVlPD5xzxTlwAQm9ownI4ZctLD3N7PBYEdgGijjAk9lOWbDlAFGVAHdv9wsDvdxmR8KrLZXsXWbRIknOgkSmSextIh3B4i7ZzgrYvVmeNkS160Tv724gZzy5RIrxj7NSWCnfXNaIYRoVfeDigAbLDtYRcPf58C5OPXOXklmuJTJsHp39w3JsnxIJLGvDk7QisgRt9DsVokNYMwSadWy1GXVA5yVw0oWeJkgCTJavC6zOb2u1lc7Kbt9iVyVVaos6VbsOv3oQsTesLBkQOLtHZFj9GaUqWaFzPYkpQyU2sQXX2arpzDTzwZ4TUY1tDbntpV7V6h6wFNOMuyf6CF4T8D2PV6hyMtEQlE9Pe7VYNCzRfzGfZvucYZbipQIAaSxkXA1cuK1flJuTDG6AvklwvIlu4EEQPvc6SZWo6SnIF4fnstzOBUFxR9hNhJW2DCyj1KU41ySxkQcvUEJSdV2a5OVBKPDTCmcsXGvfrHqIGxENmGbc89vNpQPxa1hbEHRx3zeW22fVwOlboklyneMZJM1guNdWHqWcEiNXLJRo5nAKRsCI0ty68MmjmU7oO6iYx1kYqB25dgiwqwi7Oj',0),(353,0,'config','config_file_max_size','300000',0),(354,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(355,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(356,0,'config','config_error_display','1',0),(357,0,'config','config_error_log','1',0),(358,0,'config','config_error_filename','error.log',0),(383,0,'theme_default','theme_default_directory','our_theme',0),(384,0,'theme_default','theme_default_status','1',0),(385,0,'theme_default','theme_default_product_limit','10',0),(386,0,'theme_default','theme_default_product_description_length','100',0),(387,0,'theme_default','theme_default_image_category_width','80',0),(388,0,'theme_default','theme_default_image_category_height','80',0),(389,0,'theme_default','theme_default_image_thumb_width','233',0),(390,0,'theme_default','theme_default_image_thumb_height','229',0),(391,0,'theme_default','theme_default_image_popup_width','500',0),(392,0,'theme_default','theme_default_image_popup_height','500',0),(393,0,'theme_default','theme_default_image_product_width','233',0),(394,0,'theme_default','theme_default_image_product_height','229',0),(395,0,'theme_default','theme_default_image_additional_width','74',0),(396,0,'theme_default','theme_default_image_additional_height','74',0),(397,0,'theme_default','theme_default_image_related_width','200',0),(398,0,'theme_default','theme_default_image_related_height','200',0),(399,0,'theme_default','theme_default_image_compare_width','90',0),(400,0,'theme_default','theme_default_image_compare_height','90',0),(401,0,'theme_default','theme_default_image_wishlist_width','47',0),(402,0,'theme_default','theme_default_image_wishlist_height','47',0),(403,0,'theme_default','theme_default_image_cart_width','47',0),(404,0,'theme_default','theme_default_image_cart_height','47',0),(405,0,'theme_default','theme_default_image_location_width','268',0),(406,0,'theme_default','theme_default_image_location_height','50',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (5,1,'Нет в наличии'),(5,2,'Нет в наличии'),(6,1,'Ожидание 2-3 дня'),(6,2,'Ожидание 2-3 дня'),(7,1,'В наличии'),(7,2,'В наличии'),(8,1,'Предзаказ'),(8,2,'Предзаказ');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Налоги','Облагаемые налогом','2014-06-06 23:00:00','2014-09-09 11:50:31');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (87,3,'НДС',18.0000,'F','2011-09-21 21:49:23','2014-09-09 11:49:32');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (120,10,87,'store',0),(121,10,86,'payment',1),(127,9,87,'shipping',2),(128,9,86,'shipping',1);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_theme`
--

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_translation`
--

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=899 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (730,'manufacturer_id=8','apple'),(772,'information_id=4','about_us'),(828,'manufacturer_id=9','canon'),(829,'manufacturer_id=5','htc'),(830,'manufacturer_id=7','hewlett-packard'),(831,'manufacturer_id=6','palm'),(832,'manufacturer_id=10','sony'),(841,'information_id=6','delivery'),(842,'information_id=3','privacy'),(843,'information_id=5','terms'),(845,'common/home',''),(846,'information/contact','contact'),(847,'information/sitemap','sitemap'),(848,'product/special','specials'),(849,'product/manufacturer','brands'),(850,'product/compare','compare-products'),(851,'product/search','search'),(852,'checkout/cart','cart'),(853,'checkout/checkout','checkout'),(854,'account/login','login'),(855,'account/logout','logout'),(856,'account/voucher','vouchers'),(857,'account/wishlist','wishlist'),(858,'account/account','my-account'),(859,'account/order','order-history'),(860,'account/newsletter','newsletter'),(861,'account/return/add','return-add'),(862,'account/forgotten','forgot-password'),(863,'account/download','downloads'),(864,'account/return','returns'),(865,'account/transaction','transactions'),(866,'account/register','create-account'),(867,'account/recurring','recurring'),(868,'account/address','address-book'),(869,'account/reward','reward-points'),(870,'account/edit','edit-account'),(871,'account/password','change-password'),(880,'affiliate/forgotten','affiliate-forgot-password'),(881,'affiliate/register','create-affiliate-account'),(882,'affiliate/login','affiliate-login'),(883,'affiliate/payment','affiliate-payment'),(884,'affiliate/tracking','affiliate-tracking'),(885,'affiliate/transaction','affiliate-transaction'),(886,'affiliate/account','affiliates'),(888,'newsblog_category_id=1','novosti'),(893,'category_id=59','ochki'),(895,'product_id=52','glass3'),(896,'product_id=53','glass4'),(897,'product_id=50','glass1'),(898,'product_id=51','glass2');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'cartcart','8e91084e22a031978d4fa3f452951c77','','John','Doe','seltor@mail.ru','','','::1',1,'2019-02-15 08:26:16');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"newsblog\\/category\",\"newsblog\\/article\",\"extension\\/module\\/newsblog_articles\",\"extension\\/module\\/latest\",\"extension\\/module\\/newsblog_articles\",\"extension\\/module\\/bestseller\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"newsblog\\/category\",\"newsblog\\/article\",\"extension\\/module\\/newsblog_articles\",\"extension\\/module\\/latest\",\"extension\\/module\\/newsblog_articles\",\"extension\\/module\\/bestseller\"]}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (6,'catalog/demo/apple_logo.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(8,'catalog/demo/canon_eos_5d_2.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Новый год'),(6,2,'Новый год'),(7,1,'День рождения'),(7,2,'День рождения'),(8,1,'Другое'),(8,2,'Другое');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Килограмм','кг'),(1,2,'Килограмм','кг'),(2,1,'Грамм','г'),(2,2,'Грамм','г');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,20,'Брест','BR',1),(2,20,'Гомель','HO',1),(3,20,'Минск','HM',1),(4,20,'Гродно','HR',1),(5,20,'Могилев','MA',1),(6,20,'Минская область','MI',1),(7,20,'Витебск','VI',1),(8,80,'Abkhazia','AB',1),(9,80,'Ajaria','AJ',1),(10,80,'Tbilisi','TB',1),(11,80,'Guria','GU',1),(12,80,'Imereti','IM',1),(13,80,'Kakheti','KA',1),(14,80,'Kvemo Kartli','KK',1),(15,80,'Mtskheta-Mtianeti','MM',1),(16,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(17,80,'Samegrelo-Zemo Svaneti','SZ',1),(18,80,'Samtskhe-Javakheti','SJ',1),(19,80,'Shida Kartli','SK',1),(20,109,'Алматинская область','AL',1),(21,109,'Алматы - город республ-го значения','AC',1),(22,109,'Акмолинская область','AM',1),(23,109,'Актюбинская область','AQ',1),(24,109,'Астана - город республ-го значения','AS',1),(25,109,'Атырауская область','AT',1),(26,109,'Западно-Казахстанская область','BA',1),(27,109,'Байконур - город республ-го значения','BY',1),(28,109,'Мангистауская область','MA',1),(29,109,'Южно-Казахстанская область','ON',1),(30,109,'Павлодарская область','PA',1),(31,109,'Карагандинская область','QA',1),(32,109,'Костанайская область','QO',1),(33,109,'Кызылординская область','QY',1),(34,109,'Восточно-Казахстанская область','SH',1),(35,109,'Северо-Казахстанская область','SO',1),(36,109,'Жамбылская область','ZH',1),(37,115,'Bishkek','GB',1),(38,115,'Batken','B',1),(39,115,'Chu','C',1),(40,115,'Jalal-Abad','J',1),(41,115,'Naryn','N',1),(42,115,'Osh','O',1),(43,115,'Talas','T',1),(44,115,'Ysyk-Kol','Y',1),(45,176,'Республика Хакасия','KK',1),(46,176,'Московская область','MOS',1),(47,176,'Чукотский АО','CHU',1),(48,176,'Архангельская область','ARK',1),(49,176,'Астраханская область','AST',1),(50,176,'Алтайский край','ALT',1),(51,176,'Белгородская область','BEL',1),(52,176,'Еврейская АО','YEV',1),(53,176,'Амурская область','AMU',1),(54,176,'Брянская область','BRY',1),(55,176,'Чувашская Республика','CU',1),(56,176,'Челябинская область','CHE',1),(57,176,'Карачаево-Черкесия','KC',1),(58,176,'Забайкальский край','ZAB',1),(59,176,'Ленинградская область','LEN',1),(60,176,'Республика Калмыкия','KL',1),(61,176,'Сахалинская область','SAK',1),(62,176,'Республика Алтай','AL',1),(63,176,'Чеченская Республика','CE',1),(64,176,'Иркутская область','IRK',1),(65,176,'Ивановская область','IVA',1),(66,176,'Удмуртская Республика','UD',1),(67,176,'Калининградская область','KGD',1),(68,176,'Калужская область','KLU',1),(69,176,'Республика Татарстан','TA',1),(70,176,'Кемеровская область','KEM',1),(71,176,'Хабаровский край','KHA',1),(72,176,'Ханты-Мансийский АО - Югра','KHM',1),(73,176,'Костромская область','KOS',1),(74,176,'Краснодарский край','KDA',1),(75,176,'Красноярский край','KYA',1),(76,176,'Курганская область','KGN',1),(77,176,'Курская область','KRS',1),(78,176,'Республика Тыва','TY',1),(79,176,'Липецкая область','LIP',1),(80,176,'Магаданская область','MAG',1),(81,176,'Республика Дагестан','DA',1),(82,176,'Республика Адыгея','AD',1),(83,176,'Москва','MOW',1),(84,176,'Мурманская область','MUR',1),(85,176,'Республика Кабардино-Балкария','KB',1),(86,176,'Ненецкий АО','NEN',1),(87,176,'Республика Ингушетия','IN',1),(88,176,'Нижегородская область','NIZ',1),(89,176,'Новгородская область','NGR',1),(90,176,'Новосибирская область','NVS',1),(91,176,'Омская область','OMS',1),(92,176,'Орловская область','ORL',1),(93,176,'Оренбургская область','ORE',1),(94,176,'Пензенская область','PNZ',1),(95,176,'Пермский край','PER',1),(96,176,'Камчатский край','KAM',1),(97,176,'Республика Карелия','KR',1),(98,176,'Псковская область','PSK',1),(99,176,'Ростовская область','ROS',1),(100,176,'Рязанская область','RYA',1),(101,176,'Ямало-Ненецкий АО','YAN',1),(102,176,'Самарская область','SAM',1),(103,176,'Республика Мордовия','MO',1),(104,176,'Саратовская область','SAR',1),(105,176,'Смоленская область','SMO',1),(106,176,'Санкт-Петербург','SPE',1),(107,176,'Ставропольский край','STA',1),(108,176,'Республика Коми','KO',1),(109,176,'Тамбовская область','TAM',1),(110,176,'Томская область','TOM',1),(111,176,'Тульская область','TUL',1),(112,176,'Тверская область','TVE',1),(113,176,'Тюменская область','TYU',1),(114,176,'Республика Башкортостан','BA',1),(115,176,'Ульяновская область','ULY',1),(116,176,'Республика Бурятия','BU',1),(117,176,'Республика Северная Осетия','SE',1),(118,176,'Владимирская область','VLA',1),(119,176,'Приморский край','PRI',1),(120,176,'Волгоградская область','VGG',1),(121,176,'Вологодская область','VLG',1),(122,176,'Воронежская область','VOR',1),(123,176,'Кировская область','KIR',1),(124,176,'Республика Саха','SA',1),(125,176,'Ярославская область','YAR',1),(126,176,'Свердловская область','SVE',1),(127,176,'Республика Марий Эл','ME',1),(128,176,'Республика Крым','CR',1),(129,220,'Черкассы','CK',1),(130,220,'Чернигов','CH',1),(131,220,'Черновцы','CV',1),(132,220,'Днепропетровск','DN',1),(133,220,'Донецк','DO',1),(134,220,'Ивано-Франковск','IV',1),(135,220,'Харьков','KH',1),(136,220,'Хмельницкий','KM',1),(137,220,'Кировоград','KR',1),(138,220,'Киевская область','KV',1),(139,220,'Киев','KY',1),(140,220,'Луганск','LU',1),(141,220,'Львов','LV',1),(142,220,'Николаев','MY',1),(143,220,'Одесса','OD',1),(144,220,'Полтава','PO',1),(145,220,'Ровно','RI',1),(146,176,'Севастополь','SEV',1),(147,220,'Сумы','SU',1),(148,220,'Тернополь','TE',1),(149,220,'Винница','VI',1),(150,220,'Луцк','VO',1),(151,220,'Ужгород','ZK',1),(152,220,'Запорожье','ZA',1),(153,220,'Житомир','ZH',1),(154,220,'Херсон','KE',1),(155,226,'Andijon','AN',1),(156,226,'Buxoro','BU',1),(157,226,'Farg\'ona','FA',1),(158,226,'Jizzax','JI',1),(159,226,'Namangan','NG',1),(160,226,'Navoiy','NW',1),(161,226,'Qashqadaryo','QA',1),(162,226,'Qoraqalpog\'iston Republikasi','QR',1),(163,226,'Samarqand','SA',1),(164,226,'Sirdaryo','SI',1),(165,226,'Surxondaryo','SU',1),(166,226,'Toshkent City','TK',1),(167,226,'Toshkent Region','TO',1),(168,226,'Xorazm','XO',1),(169,176,'Байконур - город республ-го значения','BY',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,176,0,3,'2014-09-09 11:48:13','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-17 21:39:09
