-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: jongchyi
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.04.2

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
-- Current Database: `jongchyi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jongchyi` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `jongchyi`;

--
-- Table structure for table `friendly_id_slugs`
--

DROP TABLE IF EXISTS `friendly_id_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendly_id_slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sluggable_id` int(11) NOT NULL,
  `sluggable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope` (`slug`,`sluggable_type`,`scope`),
  KEY `index_friendly_id_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_friendly_id_slugs_on_slug_and_sluggable_type` (`slug`,`sluggable_type`),
  KEY `index_friendly_id_slugs_on_sluggable_type` (`sluggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendly_id_slugs`
--

LOCK TABLES `friendly_id_slugs` WRITE;
/*!40000 ALTER TABLE `friendly_id_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendly_id_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `avatar_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (2,'2014-03-17 17:59:39','2014-03-17 17:59:43','螢幕快照_2014-03-17_下午11.58.06.png','image/png',24097,'2014-03-17 17:59:43'),(3,'2014-03-17 17:59:57','2014-03-17 18:00:05','螢幕快照_2014-02-23_下午5.15.17.png','image/png',1591408,'2014-03-17 18:00:04'),(4,'2014-03-18 12:38:38','2014-03-18 12:38:46','V-CUT.png','image/png',254076,'2014-03-18 12:38:46'),(5,'2014-03-18 12:49:44','2014-03-18 12:49:52','V-CUT.png','image/png',254076,'2014-03-18 12:49:51'),(6,'2014-03-18 12:55:21','2014-03-18 12:55:30','壓克力拋邊.png','image/png',261867,'2014-03-18 12:55:30'),(7,'2014-03-18 13:23:20','2014-03-18 13:23:32','牙刀.png','image/png',272734,'2014-03-18 13:23:32'),(8,'2014-03-18 13:51:35','2014-03-18 13:51:41','golf.png','image/png',212939,'2014-03-18 13:51:41'),(9,'2014-03-18 13:55:44','2014-03-18 13:55:54','單刃銑刀.png','image/png',303553,'2014-03-18 13:55:53'),(10,'2014-03-18 14:08:54','2014-03-18 14:09:02','LGP.png','image/png',323378,'2014-03-18 14:09:02'),(11,'2014-03-18 14:26:54','2014-03-18 14:27:03','WSGC.png','image/png',395207,'2014-03-18 14:27:02'),(12,'2014-03-22 13:41:22','2014-03-22 13:42:13','golf.png','image/png',208620,'2014-03-22 13:42:13'),(13,'2014-03-22 14:10:17','2014-03-22 14:11:03','55.png','image/png',403395,'2014-03-22 14:11:02'),(14,'2014-03-22 14:19:08','2014-03-22 14:19:15','Untitled.png','image/png',221454,'2014-03-22 14:19:15'),(15,'2014-03-22 14:54:57','2014-03-22 14:55:05','55.png','image/png',368735,'2014-03-22 14:55:04'),(16,'2014-04-06 12:23:22','2014-04-06 12:23:33','Untitled_5.png','image/png',456201,'2014-04-06 12:23:32'),(17,'2014-04-06 12:26:17','2014-04-06 12:26:31','Untitled_3.png','image/png',407849,'2014-04-06 12:26:31'),(18,'2014-04-06 12:28:59','2014-04-06 12:29:06','Untitled_4.png','image/png',409726,'2014-04-06 12:29:06'),(19,'2014-04-06 12:29:55','2014-04-06 12:30:09','Untitled_2.png','image/png',423545,'2014-04-06 12:30:08'),(20,'2014-04-06 12:32:28','2014-04-06 12:32:37','LGP.png','image/png',267340,'2014-04-06 12:32:36'),(21,'2014-04-06 12:36:30','2014-04-06 12:36:38','壓克力拋邊.png','image/png',223395,'2014-04-06 12:36:38'),(22,'2014-04-06 12:43:23','2014-04-06 12:43:30','單刃銑刀.png','image/png',253842,'2014-04-06 12:43:29'),(23,'2014-04-09 13:54:13','2014-04-09 13:54:24','an_cd_pcd.png','image/png',412839,'2014-04-09 13:54:23'),(24,'2014-04-09 14:31:21','2014-04-09 14:31:31','pcd_cd_iso_55.png','image/png',449296,'2014-04-09 14:31:30'),(25,'2014-04-14 15:38:27','2014-04-14 15:39:27','jewelry.png','image/png',499454,'2014-04-14 15:39:26'),(26,'2014-04-14 15:46:57','2014-04-14 15:47:07','jewelry.png','image/png',499454,'2014-04-14 15:47:06'),(27,'2014-04-14 15:51:32','2014-04-14 15:51:40','R_end-milling_cutter.png','image/png',221747,'2014-04-14 15:51:40'),(28,'2014-04-14 15:57:31','2014-04-14 15:57:40','Chamfer_tool.png','image/png',389262,'2014-04-14 15:57:39'),(29,'2014-04-14 16:00:07','2014-04-14 16:00:15','Chamfer_tool.png','image/png',389262,'2014-04-14 16:00:14'),(30,'2014-04-17 01:15:20','2014-04-17 01:15:30','PCD_45.png','image/png',495213,'2014-04-17 01:15:29'),(31,'2014-04-17 02:36:44','2014-04-17 02:37:12','PCD_45.png','image/png',495213,'2014-04-17 02:37:11');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zh_cn_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci,
  `zh_cn_content` text COLLATE utf8_unicode_ci,
  `photo_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'V-Cut加工刀','V-Cut加工刀','<p>背光模組導光板V-Cut微結構加工刀具</p>\r\n','<p><span style=\"color:#000000\"><span style=\"font-family:arial,sans-serif; font-size:small\">背光</span><span style=\"font-family:arial,sans-serif; font-size:small\">模组导光板</span><span style=\"font-family:arial,sans-serif; font-size:small\">V</span><span style=\"font-family:arial,sans-serif; font-size:small\">-</span><span style=\"font-family:arial,sans-serif; font-size:small\">Cut</span></span>微结构<span style=\"color:#000000\"><span style=\"font-family:arial,sans-serif; font-size:small\">加工刀具</span></span></p>\r\n',5,'2014-03-18 12:52:23','2014-03-18 12:52:23',10),(3,'面板側邊拋光刀','面板侧边抛光刀','<p>用於液晶面板側邊拋光</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>前間隙角</td>\r\n			<td>半徑</td>\r\n		</tr>\r\n		<tr>\r\n			<td>一般規格</td>\r\n			<td>7~12<span style=\"color:rgb(0, 0, 0); font-family:sans-serif; font-size:15px\">&deg;</span></td>\r\n			<td>6mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n','<p>用于液晶面板侧边抛光</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>前间隙角</td>\r\n			<td>半径</td>\r\n		</tr>\r\n		<tr>\r\n			<td>一般规格</td>\r\n			<td>7~12&deg;</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n',6,'2014-03-18 13:20:21','2014-03-18 13:20:54',11),(4,'螺紋加工刀具','螺纹加工刀具','<p>使用住友電工BNGG型刀桿的螺紋加工刀具</p>\r\n\r\n<table align=\"left\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>刀鼻半徑</td>\r\n			<td>&ge;0.03mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>帶有負角</td>\r\n			<td>是</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n','<p>使用住友电工BNGG型刀杆的螺纹加工刀具</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>刀鼻半径</td>\r\n			<td>&ge;0.03mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>带有负角</td>\r\n			<td>是</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n',7,'2014-03-18 13:50:08','2014-03-18 13:50:08',12),(5,'壓克力精拋刀','有机玻璃精抛刀','<p>用於鏡面拋光加工，可達到最佳表面光潔度</p>\r\n','<p>用于镜面抛光加工，可达到最佳表面光洁度</p>\r\n',9,'2014-03-18 14:06:39','2014-03-18 14:06:39',14),(6,'面板拋光刀','面板抛光刀','<p>液晶面板表面拋光，達到光學等級的最佳光潔度</p>\r\n','<p>液晶面板表面抛光，达到光学等级的最佳光洁度</p>\r\n',10,'2014-03-18 14:10:51','2014-03-18 14:10:51',10),(7,'微細溝槽加工刀','微细沟槽加工刀','<p>捨棄式80度菱形單晶鑽石微細溝槽加工刀</p>\r\n','<p>舍弃式80度菱形单晶钻石微细沟槽加工刀</p>\r\n',11,'2014-03-18 14:33:49','2014-03-18 14:33:49',10),(8,'分模線拋光刀','分模線拋光刀','<p>適用於聚酯材料加工</p>\r\n','<p>適用於聚酯材料加工</p>\r\n',12,'2014-03-22 13:58:38','2014-03-22 13:58:38',14),(9,'微細溝槽加工刀','微细沟槽加工刀','<p>捨棄式55度菱形單晶鑽石微細溝槽加工刀</p>\r\n','<p>舍弃式55度菱形单晶钻石微细沟槽加工刀</p>\r\n',13,'2014-03-22 14:13:21','2014-03-22 14:13:21',10),(10,'R角單刃銑刀','R角单刃铣刀','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">用於鏡面加工，可達到最佳表面光潔度</span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>R角半徑</td>\r\n			<td><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">&ge;0.03mm</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n','<p>用于镜面加工，可达到最佳表面光洁度</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:396px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>R角半径</td>\r\n			<td><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">&ge;0.03mm</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',14,'2014-03-22 14:27:11','2014-03-22 14:27:11',18),(11,'55度捨棄式外徑加工刀','55度舍弃式外径加工刀','<p>適用於加工淬硬黑色金属</p>\r\n\r\n<table align=\"left\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px; max-width:100%; width:396px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>刀鼻半徑</td>\r\n			<td>&ge;0.03mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>帶有負角</td>\r\n			<td>可</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','<p>适用于加工淬硬黑色金属</p>\r\n\r\n<table align=\"left\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px; max-width:100%; width:396px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>刀鼻半径</td>\r\n			<td>&ge;0.03mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>带有负角</td>\r\n			<td>可</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n',15,'2014-03-22 15:08:14','2014-03-22 15:08:57',12),(12,'80度捨棄式外徑加工刀','80度舍弃式外径加工刀','<p>適用於加工淬硬黑色金属</p>\r\n\r\n<table align=\"left\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px; max-width:100%; width:396px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>刀鼻半徑</td>\r\n			<td>&ge;0.03mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>帶有負角</td>\r\n			<td>可</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','<p>适用于加工淬硬黑色金属</p>\r\n\r\n<table align=\"left\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px; max-width:100%; width:396px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>刀鼻半径</td>\r\n			<td>&ge;0.03mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>带有负角</td>\r\n			<td>可</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n',16,'2014-04-06 12:25:29','2014-04-06 12:25:52',12),(13,'V-Cut加工刀','V-Cut加工刀','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">背光模組導光板V-Cut微結構加工刀具</span></p>\r\n','<p><span style=\"color:rgb(0, 0, 0); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\"><span style=\"font-family:arial,sans-serif; font-size:small\">背光</span><span style=\"font-family:arial,sans-serif; font-size:small\">模组导光板</span><span style=\"font-family:arial,sans-serif; font-size:small\">V</span><span style=\"font-family:arial,sans-serif; font-size:small\">-</span><span style=\"font-family:arial,sans-serif; font-size:small\">Cut</span></span><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">微结构</span><span style=\"color:rgb(0, 0, 0); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\"><span style=\"font-family:arial,sans-serif; font-size:small\">加工刀具</span></span></p>\r\n',17,'2014-04-06 12:27:37','2014-04-06 12:27:37',10),(14,'面板抛光刀','面板抛光刀','<div>&nbsp;</div>\r\n\r\n<div><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">液晶面板表面拋光，達到光學等級的最佳光潔度</span></div>\r\n','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">液晶面板表面抛光，达到光学等级的最佳光洁度</span></p>\r\n',18,'2014-04-06 12:29:14','2014-04-06 12:29:14',10),(15,'模仁加工刀','模仁加工刀','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">液晶面板</span>模仁<span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">表面拋光，達到光學等級的最佳光潔度</span></p>\r\n','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">液晶面板</span>模仁<span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">表面抛光，达到光学等级的最佳光洁度</span></p>\r\n',19,'2014-04-06 12:30:41','2014-04-07 00:33:16',10),(16,'壓克力精拋刀','有机玻璃抛光刀','<p>壓克力精<span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">拋光，達到光學等級的最佳光潔度</span></p>\r\n','<p>有机玻璃抛光<span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">，达到光学等级的最佳光洁度</span></p>\r\n',20,'2014-04-06 12:36:03','2014-04-06 12:36:03',14),(17,'壓克力粗車刀','有机玻璃粗車刀','<p>壓克力粗加工刀，高壽命並有光潔的表面粗糙度。</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px; max-width:100%; width:396px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>前間隙角</td>\r\n			<td>半徑</td>\r\n		</tr>\r\n		<tr>\r\n			<td>一般規格</td>\r\n			<td>7~12<span style=\"color:rgb(0, 0, 0); font-family:sans-serif; font-size:15px\">&deg;</span></td>\r\n			<td>6mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n','<p>有机玻璃粗加工刀，高寿命并有光洁的表面粗糙度。</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px; max-width:100%; width:396px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>前间隙角</td>\r\n			<td>半径</td>\r\n		</tr>\r\n		<tr>\r\n			<td>一般规格</td>\r\n			<td>7~12&deg;</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n',21,'2014-04-06 12:39:15','2014-04-15 10:53:16',15),(18,'單刃銑刀','單刃铣刀','<p>用於鋁材鏡面拋光加工，可達到最佳表面光潔度</p>\r\n','<p>用于铝材镜面抛光加工，可达到最佳表面光洁度</p>\r\n',22,'2014-04-06 12:48:23','2014-04-06 12:48:23',18),(19,'CD紋加工刀','CD纹加工刀','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">適用與鋁材</span>CD紋加工，俱<span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">高壽命、光潔的表面粗糙度。</span></p>\r\n','<p>适用与铝材CD纹加工，​​俱高寿命、光洁的表面粗糙度。</p>\r\n',23,'2014-04-09 14:07:51','2014-04-09 14:08:05',19),(20,'CD紋捨棄式加工刀','CD纹舍弃式加工刀','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">適用與鋁材</span><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">CD紋加工，俱</span><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">高壽命、光潔的表面粗糙度。</span></p>\r\n','<p>适用与铝材CD纹加工，​​俱高寿命、光洁的表面粗糙度。</p>\r\n',24,'2014-04-09 14:36:43','2014-04-09 14:36:43',19),(21,'批花刀','批花刀','<p>油壓錶盤字釘，勞力士圈加工用，達到最佳表面光潔度。</p>\r\n','<p>油压表盘字钉，劳力士圈加工用，达到最佳表面光洁度。</p>\r\n',25,'2014-04-14 15:45:49','2014-04-15 01:59:29',2),(22,'批花刀','批花刀','<p>金銀飾品刻花加工用，達到最佳表面光潔度。</p>\r\n','<p>金银饰品刻花加工用，达到最佳表面光洁度。</p>\r\n',26,'2014-04-14 15:51:03','2014-04-15 02:00:59',6),(23,'壓克力端銑刀','有机玻璃端铣刀','<p>用於端面鏡面加工，可達到最佳表面光潔度</p>\r\n','<p>用于端面镜面加工，可达到最佳表面光洁度</p>\r\n',27,'2014-04-14 15:56:07','2014-04-14 15:56:16',14),(24,'壓克力倒角刀','有机玻璃倒角刀','<p>用於倒角加工，可達到最佳表面光潔度</p>\r\n','<p>用于倒角加工，可达到最佳表面光洁度</p>\r\n',28,'2014-04-14 15:59:18','2014-04-14 15:59:18',14),(25,'鋁殼倒角刀','铝壳倒角刀','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">用於倒角加工，可達到最佳表面光潔度</span></p>\r\n','<p><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">用于倒角加工，可达到最佳表面光洁度</span></p>\r\n',29,'2014-04-14 16:01:52','2014-04-14 16:01:52',18),(26,'鋁殼倒角刀','铝壳倒角刀','<div>&nbsp;</div>\r\n\r\n<div><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">用於倒角粗加工，有著高壽命，並可達到優質表面光潔度。</span></div>\r\n','<p>用于倒角粗加工，有着高寿命，并可达到优质表面光洁度。</p>\r\n',30,'2014-04-17 01:19:09','2014-04-17 01:19:57',19),(27,'壓克力倒角刀','有机玻璃倒角刀','<div><span style=\"color:rgb(55, 55, 55); font-family:微軟正黑體,lihei pro,新細明體,tahoma,simsun,arial,helvetica,sans-serif; font-size:14px\">用於倒角粗加工，有著高壽命，並可達到優質表面光潔度。</span></div>\r\n','<p>用于倒角粗加工，有着高寿命，并可达到优质表面光洁度。</p>\r\n',31,'2014-04-17 02:39:25','2014-04-17 02:39:46',16);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131103142222'),('20131103142223'),('20140224163927'),('20140226024103'),('20140227092605'),('20140227093051'),('20140227181419'),('20140227202045');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `super` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_username` (`username`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$fqO2HDL4w3.BxA2.aJ2zueMQZ5tPmWHXCYM9Kxzh3PZS0xNdWFM1C',1,0,'user-admin',NULL,NULL,NULL,8,'2014-04-24 11:50:31','2014-04-24 11:48:24','223.140.182.69','223.140.182.69',NULL,NULL,NULL,NULL,'2014-03-17 17:58:27','2014-04-24 11:50:31',1),(2,'r89yu27m','$2a$10$DLvBLbwRuOE5FY5J5Mzrm.cjye4PssuvVN7uo4UQEUq6o3XODs/eS',1,0,'r89yu27m',NULL,NULL,NULL,9,'2014-04-17 01:15:03','2014-04-15 10:52:53','118.171.122.6','114.35.227.67',NULL,NULL,NULL,NULL,'2014-03-18 12:33:27','2014-04-17 01:15:03',0);
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

-- Dump completed on 2014-08-24 17:35:53
