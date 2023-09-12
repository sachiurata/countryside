-- MySQL dump 10.13  Distrib 5.7.41, for Linux (x86_64)
--
-- Host: localhost    Database: countryside_development
-- ------------------------------------------------------
-- Server version	5.7.41

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
-- Table structure for table `action_text_rich_texts`
--

DROP TABLE IF EXISTS `action_text_rich_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_text_rich_texts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` longtext,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_action_text_rich_texts_uniqueness` (`record_type`,`record_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_text_rich_texts`
--

LOCK TABLES `action_text_rich_texts` WRITE;
/*!40000 ALTER TABLE `action_text_rich_texts` DISABLE KEYS */;
INSERT INTO `action_text_rich_texts` VALUES (1,'content','<div>bbbbbbbbbb</div>','Article',1,'2023-08-10 22:46:47.276327','2023-08-11 21:26:14.849315'),(5,'content','<div>bbbbbbbbbb</div>','Article',5,'2023-08-10 22:58:51.099460','2023-08-11 21:26:15.026870'),(7,'content','<div><action-text-attachment sgid=\"BAh7CEkiCGdpZAY6BkVUSSI4Z2lkOi8vY291bnRyeXNpZGUvQWN0aXZlU3RvcmFnZTo6QmxvYi8zNj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--a0e2317f186bda377171272367c9434e843b441c\" content-type=\"image/png\" url=\"https://a27662a8f0e3470baef768e2a1920ec7.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--90a8c05c4f4a45d7e6885ac65de21964637d6354/edit.png\" filename=\"edit.png\" filesize=\"7347\" width=\"256\" height=\"256\" presentation=\"gallery\"></action-text-attachment></div>','Article',7,'2023-08-11 21:32:13.580280','2023-08-11 21:32:13.597754'),(8,'content','<div>あいうえおかきくけこ<br><action-text-attachment sgid=\"BAh7CEkiCGdpZAY6BkVUSSI4Z2lkOi8vY291bnRyeXNpZGUvQWN0aXZlU3RvcmFnZTo6QmxvYi80OT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--220fef22b2ec027b7e89d6a31b39e1d9986bed5d\" content-type=\"image/jpeg\" url=\"https://a27662a8f0e3470baef768e2a1920ec7.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBOZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e19053d86eb8662b80a06bd2c1d94ecfe5036cd5/20221014-1.jpg\" filename=\"20221014-1.jpg\" filesize=\"678127\" width=\"1706\" height=\"960\" previewable=\"true\" presentation=\"gallery\"></action-text-attachment></div>','Article',8,'2023-08-11 21:46:01.588863','2023-08-12 09:37:39.953638'),(9,'content','<div>あいうえおあいうえおあいうえおあいうえおあいうえおあいうえお</div>','Article',9,'2023-08-12 00:49:09.450525','2023-08-12 00:49:09.450525'),(10,'content','<div>あいうえおあいうえおあいうえおあいうえお</div>','Article',10,'2023-08-12 01:11:31.681222','2023-08-12 01:11:31.681222'),(11,'content','<div>あいうえおあいうえおあいうえおあいうえおあいうえお</div>','Article',11,'2023-08-12 01:12:07.383297','2023-08-12 01:29:16.981414'),(12,'content','','Article',12,'2023-09-05 06:09:38.578466','2023-09-05 06:09:38.578466'),(13,'content','','Article',13,'2023-09-05 06:10:25.080777','2023-09-05 06:10:25.080777'),(14,'content','','Article',14,'2023-09-05 06:12:55.657935','2023-09-05 06:12:55.657935'),(17,'content','','Article',17,'2023-09-05 06:25:34.717028','2023-09-05 06:25:34.717028'),(20,'content','<div>aaaaaaaaaaaaaaa<action-text-attachment sgid=\"BAh7CEkiCGdpZAY6BkVUSSI4Z2lkOi8vY291bnRyeXNpZGUvQWN0aXZlU3RvcmFnZTo6QmxvYi83NT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--d31e8c2b225967dd33d1cf0905b5021bf4fbee8d\" content-type=\"image/jpeg\" url=\"https://a27662a8f0e3470baef768e2a1920ec7.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBVQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--da6c1f18cb2f12ad7636fa41b779800e7d2c4608/DSC_0251%201.jpg\" filename=\"DSC_0251 1.jpg\" filesize=\"3934160\" width=\"4032\" height=\"2268\" presentation=\"gallery\"></action-text-attachment></div>','Article',20,'2023-09-05 07:09:10.842720','2023-09-05 07:49:21.597254'),(21,'content','<div>aaaaaaa<action-text-attachment sgid=\"BAh7CEkiCGdpZAY6BkVUSSI4Z2lkOi8vY291bnRyeXNpZGUvQWN0aXZlU3RvcmFnZTo6QmxvYi84ND9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--c35bce46c487a9737387e8735045ce6c1a457671\" content-type=\"image/jpeg\" url=\"https://a27662a8f0e3470baef768e2a1920ec7.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBXUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6b3c38ab775b83bf4e681113ba0c69d8470988c7/20221014-1.jpg\" filename=\"20221014-1.jpg\" filesize=\"678127\" width=\"1706\" height=\"960\" previewable=\"true\" presentation=\"gallery\"></action-text-attachment>aaaaaaa<br><action-text-attachment sgid=\"BAh7CEkiCGdpZAY6BkVUSSI4Z2lkOi8vY291bnRyeXNpZGUvQWN0aXZlU3RvcmFnZTo6QmxvYi84OD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--80273fdd92b16169a040298fa7ef112bff8f1180\" content-type=\"image/jpeg\" url=\"https://a27662a8f0e3470baef768e2a1920ec7.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBYUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4e9f52fe24e15d4ed9a92c84ecb83faad42fbe64/DSC_0251%201.jpg\" filename=\"DSC_0251 1.jpg\" filesize=\"3934160\" width=\"4032\" height=\"2268\" presentation=\"gallery\"></action-text-attachment><br><br></div>','Article',21,'2023-09-06 07:09:32.965562','2023-09-06 07:10:38.478232'),(22,'content','<div>ああああああああ<action-text-attachment sgid=\"BAh7CEkiCGdpZAY6BkVUSSI4Z2lkOi8vY291bnRyeXNpZGUvQWN0aXZlU3RvcmFnZTo6QmxvYi85MT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--d4ec658f91d8b90e574a53a913b78628ab19d50b\" content-type=\"image/jpeg\" url=\"https://a27662a8f0e3470baef768e2a1920ec7.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBZQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8fdf34d54b7a575c9ca3b4c699d55d9f64f6bc53/20221014-1.jpg\" filename=\"20221014-1.jpg\" filesize=\"678127\" width=\"1706\" height=\"960\" presentation=\"gallery\"></action-text-attachment></div>','Article',22,'2023-09-09 03:05:21.035606','2023-09-09 03:05:21.065214');
/*!40000 ALTER TABLE `action_text_rich_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (4,'images','Post',1,4,'2023-06-23 00:01:56.818914'),(5,'images','Post',1,5,'2023-06-23 00:01:56.829784'),(7,'image','ActiveStorage::VariantRecord',3,7,'2023-06-23 00:02:00.579943'),(8,'image','ActiveStorage::VariantRecord',4,8,'2023-06-23 00:02:00.592267'),(10,'avatar','UserProfile',1,10,'2023-06-23 00:52:43.383869'),(11,'image','ActiveStorage::VariantRecord',6,11,'2023-06-23 00:52:43.831818'),(12,'images','Post',1,12,'2023-06-23 00:54:09.767880'),(13,'images','Post',1,13,'2023-06-23 00:54:09.772832'),(14,'images','Post',1,14,'2023-06-23 00:54:09.778604'),(15,'image','ActiveStorage::VariantRecord',7,15,'2023-06-23 00:54:11.638854'),(16,'image','ActiveStorage::VariantRecord',8,16,'2023-06-23 00:54:13.037510'),(17,'image','ActiveStorage::VariantRecord',9,17,'2023-06-23 00:54:13.045651'),(18,'image','ActiveStorage::VariantRecord',10,18,'2023-06-23 01:19:19.100963'),(19,'avatar','UserProfile',2,19,'2023-06-24 07:53:52.440584'),(20,'image','ActiveStorage::VariantRecord',11,20,'2023-06-24 07:53:52.964930'),(21,'images','Post',5,21,'2023-06-27 02:18:59.796476'),(22,'image','ActiveStorage::VariantRecord',12,22,'2023-06-27 02:19:00.516887'),(23,'image','ActiveStorage::VariantRecord',13,23,'2023-06-27 02:20:02.889294'),(24,'image','ActiveStorage::VariantRecord',14,24,'2023-06-27 02:21:39.036015'),(25,'image','ActiveStorage::VariantRecord',15,25,'2023-06-28 04:07:55.815140'),(26,'images','Post',10,26,'2023-06-30 02:26:44.390873'),(27,'image','ActiveStorage::VariantRecord',16,27,'2023-06-30 02:26:45.139948'),(28,'image','ActiveStorage::VariantRecord',17,28,'2023-06-30 02:26:58.429001'),(29,'images','Post',11,29,'2023-06-30 02:36:17.455062'),(30,'images','Post',11,30,'2023-06-30 02:36:17.468477'),(31,'image','ActiveStorage::VariantRecord',18,31,'2023-06-30 02:36:18.641948'),(32,'image','ActiveStorage::VariantRecord',19,32,'2023-06-30 02:36:19.443707'),(33,'image','ActiveStorage::VariantRecord',20,33,'2023-06-30 02:54:30.833481'),(34,'embeds','ActionText::RichText',5,34,'2023-08-10 22:58:51.132217'),(35,'image','ActiveStorage::VariantRecord',21,35,'2023-08-10 22:58:51.615728'),(36,'embeds','ActionText::RichText',1,34,'2023-08-11 21:23:25.237163'),(38,'embeds','ActionText::RichText',7,36,'2023-08-11 21:32:13.594188'),(39,'image','ActiveStorage::VariantRecord',22,37,'2023-08-11 21:32:13.949738'),(40,'embeds','ActionText::RichText',8,40,'2023-08-11 21:46:01.625410'),(41,'image','ActiveStorage::VariantRecord',23,41,'2023-08-11 21:46:02.035811'),(42,'thumbnail','Article',9,42,'2023-08-12 00:49:09.471927'),(43,'thumbnail','Article',10,43,'2023-08-12 01:11:31.713360'),(44,'thumbnail','Article',11,44,'2023-08-12 01:12:07.401392'),(45,'images','Post',43,45,'2023-08-12 08:21:20.048718'),(46,'image','ActiveStorage::VariantRecord',24,46,'2023-08-12 08:21:21.419981'),(47,'image','ActiveStorage::VariantRecord',25,47,'2023-08-12 08:21:36.335277'),(48,'embeds','ActionText::RichText',8,49,'2023-08-12 09:37:28.262920'),(49,'image','ActiveStorage::VariantRecord',26,50,'2023-08-12 09:37:28.788084'),(50,'thumbnail','Article',8,51,'2023-08-12 09:38:01.750850'),(51,'avatar','UserProfile',42,52,'2023-08-29 06:07:14.352400'),(52,'image','ActiveStorage::VariantRecord',27,53,'2023-08-29 06:07:20.162235'),(53,'avatar','UserProfile',43,54,'2023-08-29 23:17:18.798425'),(54,'avatar','UserProfile',44,55,'2023-08-29 23:19:34.088318'),(55,'avatar','UserProfile',45,56,'2023-08-30 00:47:26.679985'),(56,'image','ActiveStorage::VariantRecord',28,57,'2023-08-30 00:47:58.585806'),(57,'avatar','UserProfile',46,58,'2023-08-30 01:38:37.535005'),(58,'avatar','UserProfile',47,59,'2023-08-30 01:39:43.621432'),(59,'image','ActiveStorage::VariantRecord',29,60,'2023-08-30 01:40:06.959542'),(60,'avatar','UserProfile',48,61,'2023-08-31 00:53:54.991384'),(61,'image','ActiveStorage::VariantRecord',30,62,'2023-08-31 00:54:20.867568'),(62,'image','ActiveStorage::VariantRecord',31,63,'2023-09-01 07:39:42.544246'),(63,'image','ActiveStorage::VariantRecord',32,64,'2023-09-01 07:39:43.187167'),(64,'image','ActiveStorage::VariantRecord',33,65,'2023-09-01 07:41:19.875383'),(65,'image','ActiveStorage::VariantRecord',34,66,'2023-09-01 07:41:20.408297'),(66,'image','ActiveStorage::VariantRecord',35,67,'2023-09-02 00:12:02.795866'),(67,'image','ActiveStorage::VariantRecord',36,68,'2023-09-02 00:12:03.037371'),(68,'image','ActiveStorage::VariantRecord',37,69,'2023-09-02 00:12:03.933504'),(69,'thumbnail','Article',17,70,'2023-09-05 06:25:34.753004'),(74,'embeds','ActionText::RichText',20,75,'2023-09-05 07:49:21.590618'),(75,'thumbnail','Article',20,76,'2023-09-05 07:49:21.633553'),(76,'image','ActiveStorage::VariantRecord',38,77,'2023-09-05 07:49:24.248128'),(77,'avatar','UserProfile',50,78,'2023-09-05 23:30:03.886403'),(78,'image','ActiveStorage::VariantRecord',39,79,'2023-09-05 23:30:11.149406'),(81,'avatar','UserProfile',52,82,'2023-09-06 01:01:22.688940'),(82,'image','ActiveStorage::VariantRecord',41,83,'2023-09-06 01:01:23.306951'),(83,'embeds','ActionText::RichText',21,84,'2023-09-06 07:09:32.990948'),(85,'image','ActiveStorage::VariantRecord',42,87,'2023-09-06 07:09:39.148797'),(86,'embeds','ActionText::RichText',21,88,'2023-09-06 07:10:38.474999'),(87,'thumbnail','Article',21,89,'2023-09-06 07:10:38.493859'),(88,'image','ActiveStorage::VariantRecord',43,90,'2023-09-06 07:10:40.347883'),(89,'embeds','ActionText::RichText',22,91,'2023-09-09 03:05:21.059873'),(90,'thumbnail','Article',22,92,'2023-09-09 03:05:21.081622'),(91,'image','ActiveStorage::VariantRecord',44,93,'2023-09-09 03:05:22.158649');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (4,'jiy3sgswho98ci3m8tl3yrp3ac3y','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-06-23 00:01:56.815579'),(5,'44kcg0fi9k4lhnudvteha0jgt550','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-06-23 00:01:56.824387'),(7,'5gw4vyyd25jqf3g8mi10ae4r4oal','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',154399,'SJplAh2Ge6OEJGL4ct7QHw==','2023-06-23 00:02:00.564890'),(8,'m986e6tr3mela47yqulntum0jvok','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',156142,'HSr4MshlrjRYFnWE/NUYRg==','2023-06-23 00:02:00.575132'),(10,'d92k0v7xos8gswgok3msq7eq6ec3','mouth_boy1_a.png','image/png','{\"identified\":true,\"width\":687,\"height\":800,\"analyzed\":true}','test',332206,'VydeZhYXT6WkPy0e8jT1bQ==','2023-06-23 00:52:43.371274'),(11,'mlhz6phgwl0fnu6jqog3tp867g4t','mouth_boy1_a.png','image/png','{\"identified\":true,\"width\":344,\"height\":400,\"analyzed\":true}','test',99554,'OFKxbcnVENja6sMWCCpaVw==','2023-06-23 00:52:43.829167'),(12,'6fugqk30l51kzkvdfop5l183h1ri','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-06-23 00:54:09.765523'),(13,'9scpd9dtrk1fm0a49jfvrapw6x3n','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-06-23 00:54:09.770630'),(14,'wdmfctkzcw2iprmzy7bnz8is641h','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-06-23 00:54:09.775467'),(15,'m2w6e9vexp73nvmkagdz4yck511o','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',100608,'DjeIBBeromoBcZLiC6ixuQ==','2023-06-23 00:54:11.628411'),(16,'j3av9fjvrppdapdl9m6fmkh6jetx','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',156142,'HSr4MshlrjRYFnWE/NUYRg==','2023-06-23 00:54:13.031724'),(17,'wbgd35e970lfwtozcyyl0o0wx6az','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',154399,'SJplAh2Ge6OEJGL4ct7QHw==','2023-06-23 00:54:13.040260'),(18,'f2hm2p0r083kznisack9s8i2wxve','mouth_boy1_a.png','image/png','{\"identified\":true,\"width\":50,\"height\":50,\"analyzed\":true}','test',4362,'n4uZyq11NgT5xgc0bgithA==','2023-06-23 01:19:19.098118'),(19,'jh4yh0mdguq8um373terid0nmell','f_f_object_123_s512_f_object_123_0bg.jpg','image/jpeg','{\"identified\":true,\"width\":512,\"height\":512,\"analyzed\":true}','test',23607,'Y/w0iTGdbsvVufgW+UQH7A==','2023-06-24 07:53:52.433191'),(20,'urvcynw9hiucb6i1yfrk6h3kwt48','f_f_object_123_s512_f_object_123_0bg.jpg','image/jpeg','{\"identified\":true,\"width\":400,\"height\":400,\"analyzed\":true}','test',19202,'hVBU6gCwilST57HQc+ZM5Q==','2023-06-24 07:53:52.960951'),(21,'2c0qginwuedb2u5dv29agy7whqbn','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-06-27 02:18:59.791527'),(22,'gum9665pwi3nnn1bfd5zzppsgkjs','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',100608,'DjeIBBeromoBcZLiC6ixuQ==','2023-06-27 02:19:00.512780'),(23,'sbtjryuc77hbamlxyhcbnonv0ptq','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":220,\"analyzed\":true}','test',27052,'ecNve0i8iFn0xcSMdxOxPw==','2023-06-27 02:20:02.884620'),(24,'ng84gwqer7guei1wmn5js3jm1jwq','f_f_object_123_s512_f_object_123_0bg.jpg','image/jpeg','{\"identified\":true,\"width\":50,\"height\":50,\"analyzed\":true}','test',1941,'fL8/pbwjFfUl2n6pPuLGOg==','2023-06-27 02:21:39.028017'),(25,'nzd721i347uj7ib6xbpgo673mvqk','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":220,\"analyzed\":true}','test',78518,'/LdszZ90KthzA3k7GXLRXw==','2023-06-28 04:07:55.811957'),(26,'kb0llxytsmb7po0qzwohdaxz06r5','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-06-30 02:26:44.384606'),(27,'v9v13xk7opqpxezudvsa2alupite','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',100608,'DjeIBBeromoBcZLiC6ixuQ==','2023-06-30 02:26:45.121284'),(28,'fbptwdt451rgorc3q62hwwwg10fb','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":220,\"analyzed\":true}','test',27052,'ecNve0i8iFn0xcSMdxOxPw==','2023-06-30 02:26:58.424818'),(29,'mpg57z7em4c1jztrnfm5c5bjabz9','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-06-30 02:36:17.448054'),(30,'x89tsx1ss7cr89vj69lfcg1gmu78','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-06-30 02:36:17.463349'),(31,'586djcchdh6i07q4zridese7w0at','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',100608,'DjeIBBeromoBcZLiC6ixuQ==','2023-06-30 02:36:18.624869'),(32,'qon3vchme3vj439q0v9d8bp5959m','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',156142,'HSr4MshlrjRYFnWE/NUYRg==','2023-06-30 02:36:19.434572'),(33,'5yfjhs9v3svlxcjbzad8wif8t3r9','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":220,\"analyzed\":true}','test',27052,'ecNve0i8iFn0xcSMdxOxPw==','2023-06-30 02:54:30.827380'),(34,'ajijso95m57094fq8vc7movxsa40','edit.png','image/png','{\"identified\":true,\"width\":256,\"height\":256,\"analyzed\":true}','test',7347,'Myi5VlXg3sFgLMuWo4YMIA==','2023-08-10 22:58:42.631104'),(35,'yalhe362fe5j5jwwvjsex14h379a','edit.png','image/png','{\"identified\":true,\"width\":256,\"height\":256,\"analyzed\":true}','test',4568,'kxFYvTZtcFP/+kc9za0m/g==','2023-08-10 22:58:51.611861'),(36,'lfxsh9kbuoz69cnaxxgrvg3qgffy','edit.png','image/png','{\"identified\":true,\"width\":256,\"height\":256,\"analyzed\":true}','test',7347,'Myi5VlXg3sFgLMuWo4YMIA==','2023-08-11 21:32:12.065945'),(37,'70rphh6k8moge751ahyqr1k814zv','edit.png','image/png','{\"identified\":true,\"width\":256,\"height\":256,\"analyzed\":true}','test',4568,'ETVKDsWMKXkPFGdhPWO1OQ==','2023-08-11 21:32:13.946852'),(38,'sd66w40ay1r8jyf8y83ig5pcmwt8','edit.png','image/png',NULL,'test',7347,'Myi5VlXg3sFgLMuWo4YMIA==','2023-08-11 21:45:05.971636'),(39,'twq55rbz2p80cunj85h6t67b5y5o','edit.png','image/png',NULL,'test',7347,'Myi5VlXg3sFgLMuWo4YMIA==','2023-08-11 21:45:26.375816'),(40,'x29bc4qt42rith8r79zt8xuxqgdu','edit.png','image/png','{\"identified\":true,\"width\":256,\"height\":256,\"analyzed\":true}','test',7347,'Myi5VlXg3sFgLMuWo4YMIA==','2023-08-11 21:45:59.898222'),(41,'1q1bmb6a4ogf0e17nt2l10t6bpkv','edit.png','image/png','{\"identified\":true,\"width\":256,\"height\":256,\"analyzed\":true}','test',4568,'NyCIXnAhXg6Vpl93LmSrIA==','2023-08-11 21:46:02.031460'),(42,'39a5eieplgo3ema37yvbhj9pj3t3','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-08-12 00:49:09.463823'),(43,'btkfmek7zftb8yis2l5n0n4fomw3','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-08-12 01:11:31.707114'),(44,'0uvgwho6hjdwbslsbjwo59rl7wbj','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-08-12 01:12:07.398027'),(45,'t8h80rwjsofixc02bdtyo3uq904c','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-08-12 08:21:20.044251'),(46,'71ivnl96rbyv8t9e2t7lv4bjz7zh','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":622,\"height\":350,\"analyzed\":true}','test',156142,'HSr4MshlrjRYFnWE/NUYRg==','2023-08-12 08:21:21.416436'),(47,'vxz1ulyoah3awx2l3vyrq5x9356x','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":220,\"analyzed\":true}','test',78518,'/LdszZ90KthzA3k7GXLRXw==','2023-08-12 08:21:36.331295'),(48,'ekr86v5ht3cbhasjm8whrvn03x0q','DSC_0251 1.jpg','image/jpeg',NULL,'test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-08-12 09:37:01.556614'),(49,'8g2ywplk6u4a0jiatz3pefs9cn0j','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-08-12 09:37:20.679752'),(50,'sjisyisz9bgqwjf26kuol3pclod6','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1024,\"height\":576,\"analyzed\":true}','test',261490,'ROPtMYsW9Q8Od6gqyuVyBg==','2023-08-12 09:37:28.783902'),(51,'rd8bijxxujqr7iwai60xdop8kyga','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-08-12 09:38:01.748184'),(52,'3da7joahtrle7uz5po09awjr8d2z','CIMG8171.JPG','image/jpeg','{\"identified\":true,\"width\":960,\"height\":720,\"analyzed\":true}','test',116795,'02/HW3KjFBvL7zIstsuyHg==','2023-08-29 06:07:14.347474'),(53,'n7nuim1zmedcrvzah8poat5lr00y','CIMG8171.jpg','image/jpeg','{\"identified\":true,\"width\":400,\"height\":300,\"analyzed\":true}','test',27998,'hjcsTnVudHi96I6YEzkghg==','2023-08-29 06:07:20.159378'),(54,'kdka0ho01atlfm3uka84w3apc3uw','mouth_boy1_a.png','image/png','{\"identified\":true,\"width\":687,\"height\":800,\"analyzed\":true}','test',332206,'VydeZhYXT6WkPy0e8jT1bQ==','2023-08-29 23:17:18.794556'),(55,'r8jvm33v34wunszeb831matgwdw5','mouth_boy1_a.png','image/png','{\"identified\":true,\"width\":687,\"height\":800,\"analyzed\":true}','test',332206,'VydeZhYXT6WkPy0e8jT1bQ==','2023-08-29 23:19:34.082904'),(56,'l0wjec3jzsypyjjm40fs0o1cm7j4','CIMG8171.JPG','image/jpeg','{\"identified\":true,\"width\":960,\"height\":720,\"analyzed\":true}','test',116795,'02/HW3KjFBvL7zIstsuyHg==','2023-08-30 00:47:26.674941'),(57,'8zpwqtq254ocfz5sdw8nzkp09hgb','CIMG8171.jpg','image/jpeg','{\"identified\":true,\"width\":400,\"height\":300,\"analyzed\":true}','test',27998,'hjcsTnVudHi96I6YEzkghg==','2023-08-30 00:47:58.582936'),(58,'y6zj6iytdu4v3g2yzunpqxvlek3g','CIMG8171.JPG','image/jpeg','{\"identified\":true,\"width\":960,\"height\":720,\"analyzed\":true}','test',116795,'02/HW3KjFBvL7zIstsuyHg==','2023-08-30 01:38:37.528768'),(59,'5miqzvk698qa9t1jyuufa8dl1o02','CIMG8171.JPG','image/jpeg','{\"identified\":true,\"width\":960,\"height\":720,\"analyzed\":true}','test',116795,'02/HW3KjFBvL7zIstsuyHg==','2023-08-30 01:39:43.617731'),(60,'m2owvrt5vcfy9d46o8cytal9vted','CIMG8171.jpg','image/jpeg','{\"identified\":true,\"width\":400,\"height\":300,\"analyzed\":true}','test',27998,'hjcsTnVudHi96I6YEzkghg==','2023-08-30 01:40:06.936084'),(61,'wmb6xx65l9xnta2kvetl2bpcjdkm','CIMG8171.JPG','image/jpeg','{\"identified\":true,\"width\":960,\"height\":720,\"analyzed\":true}','test',116795,'02/HW3KjFBvL7zIstsuyHg==','2023-08-31 00:53:54.984126'),(62,'l4d5gx5y3l2s8bi2jawo2ph9r9pe','CIMG8171.jpg','image/jpeg','{\"identified\":true,\"width\":400,\"height\":300,\"analyzed\":true}','test',27998,'hjcsTnVudHi96I6YEzkghg==','2023-08-31 00:54:20.863128'),(63,'1utp8cmzdxvesr7kcmb4b8udiszv','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":300,\"analyzed\":true}','test',36460,'QCwLekmOrRwo/fp5TAv7JQ==','2023-09-01 07:39:42.535347'),(64,'546hh920rh5491vbcy8uxa7s9byd','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":300,\"analyzed\":true}','test',87554,'jS29e5vHjfTvPtPDRWRJwQ==','2023-09-01 07:39:43.183305'),(65,'e3drii85rob987qltqykw64nb7nu','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":350,\"analyzed\":true}','test',42297,'T7GI420YjWCswR9yib9ptg==','2023-09-01 07:41:19.867323'),(66,'t9omebodtru500mcuvqhye354h90','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":350,\"analyzed\":true}','test',93192,'4EGcOg6tekyAfIc5eIahHg==','2023-09-01 07:41:20.404884'),(67,'lq7kpprpd5kiagq4ds9xel4x43qw','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":300,\"analyzed\":true}','test',36460,'QCwLekmOrRwo/fp5TAv7JQ==','2023-09-02 00:12:02.786217'),(68,'4f65cltczy55d5st21dilwc33ao1','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":300,\"analyzed\":true}','test',36460,'QCwLekmOrRwo/fp5TAv7JQ==','2023-09-02 00:12:03.000792'),(69,'xly8o1hlq2lwxfpcf75zhtitmfl0','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":250,\"height\":300,\"analyzed\":true}','test',87554,'jS29e5vHjfTvPtPDRWRJwQ==','2023-09-02 00:12:03.928128'),(70,'0j1bek1booxypxlzuz7c7sygnnrc','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-09-05 06:25:34.746285'),(75,'zjur6nw7ssterzy0tsuvxczvqu7h','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-09-05 07:48:52.468331'),(76,'yje3jafc2yvp5heji46203gaoitt','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-09-05 07:49:21.626274'),(77,'9o629t06gi0iqbm9hwf9mc8o5ord','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":1024,\"height\":576,\"analyzed\":true}','test',336224,'lLfKYQrMVHjBLENJeZ9F+w==','2023-09-05 07:49:24.240854'),(78,'rx3wtu70lvh1ptknrn05s8b4pl7p','CIMG8171.JPG','image/jpeg','{\"identified\":true,\"width\":960,\"height\":720,\"analyzed\":true}','test',116795,'02/HW3KjFBvL7zIstsuyHg==','2023-09-05 23:30:03.849000'),(79,'wvw53l0gy3p5pgc4hh88fv5p5fwo','CIMG8171.jpg','image/jpeg','{\"identified\":true,\"width\":400,\"height\":300,\"analyzed\":true}','test',27998,'hjcsTnVudHi96I6YEzkghg==','2023-09-05 23:30:11.116740'),(82,'2gf3f0ybdfqnz6ardg0vyhjin3ob','P1080020.JPG','image/jpeg','{\"identified\":true,\"width\":592,\"height\":789,\"analyzed\":true}','test',85978,'UWgFDbi4X3607qODVFOmFQ==','2023-09-06 01:01:22.683116'),(83,'l0rvp00y86ir3fwz9qrg1ve4yzai','P1080020.jpg','image/jpeg','{\"identified\":true,\"width\":300,\"height\":400,\"analyzed\":true}','test',27696,'tG7eI/sURacSrK3rxWtH2g==','2023-09-06 01:01:23.301398'),(84,'xqhrbx7oggucrs083vss4q60i3w8','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-09-06 07:09:10.349999'),(85,'uqrwuf10p3nltkqtw2fbkwimv4xa','DSC_0251 1.jpg','image/jpeg',NULL,'test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-09-06 07:09:22.196990'),(87,'im5beuqsbv1qix37vp8rmjjkr37b','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1024,\"height\":576,\"analyzed\":true}','test',261490,'ROPtMYsW9Q8Od6gqyuVyBg==','2023-09-06 07:09:39.144594'),(88,'ez6237wcef69o8qqpnu5j4j19rgp','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3934160,'/O9zzSqjK1kD5Wj+1sZc5A==','2023-09-06 07:10:20.869080'),(89,'j0gy0zmczf3vr6kyrdpigvixrg9i','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-09-06 07:10:38.489981'),(90,'4f8hh99g7xcfx8s3n22lt1fx75li','DSC_0251 1.jpg','image/jpeg','{\"identified\":true,\"width\":1024,\"height\":576,\"analyzed\":true}','test',336224,'lLfKYQrMVHjBLENJeZ9F+w==','2023-09-06 07:10:40.342992'),(91,'umw21oo5mo1avcvl3v1y7tj7zd9b','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1706,\"height\":960,\"analyzed\":true}','test',678127,'UG9Uwc3y/Zq1V9K0/3Xyjg==','2023-09-09 03:04:08.071316'),(92,'w31pcw4uuqzp3qv7yl7ff1jnoz1y','DSC_0235 1.jpg','image/jpeg','{\"identified\":true,\"width\":4032,\"height\":2268,\"analyzed\":true}','test',3933647,'W62snd1lz5PP88PpWSQbdw==','2023-09-09 03:05:21.077690'),(93,'3g13xcoygr8dvii9cn81s3f78ob0','20221014-1.jpg','image/jpeg','{\"identified\":true,\"width\":1024,\"height\":576,\"analyzed\":true}','test',261490,'ROPtMYsW9Q8Od6gqyuVyBg==','2023-09-09 03:05:22.150335');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_variant_records`
--

DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blob_id` bigint(20) NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_variant_records`
--

LOCK TABLES `active_storage_variant_records` WRITE;
/*!40000 ALTER TABLE `active_storage_variant_records` DISABLE KEYS */;
INSERT INTO `active_storage_variant_records` VALUES (32,4,'cG9G1rXuCWvVwueGi9yFA1PCwpg='),(34,4,'dueApK0s7PrNC09D+/QLv6wMXhQ='),(15,4,'EJdVl95E3/+gT6J8VKqx8p5CY1Q='),(4,4,'nO3UuUgQbj40eBeDsjeXY199AtU='),(3,5,'nO3UuUgQbj40eBeDsjeXY199AtU='),(6,10,'Dlgz0m4mVC+VlcMW9TAcOJcuuBU='),(10,10,'GpbqFrz72EOYyzJySt7hZlTJGAs='),(7,12,'nO3UuUgQbj40eBeDsjeXY199AtU='),(8,13,'nO3UuUgQbj40eBeDsjeXY199AtU='),(9,14,'nO3UuUgQbj40eBeDsjeXY199AtU='),(11,19,'511iy5HjR/JOPn6SHwBHIp4Cz5c='),(14,19,'FoGro3T/qHGg3QlFXfhi3ffv0NU='),(31,21,'cG9G1rXuCWvVwueGi9yFA1PCwpg='),(33,21,'dueApK0s7PrNC09D+/QLv6wMXhQ='),(13,21,'EJdVl95E3/+gT6J8VKqx8p5CY1Q='),(12,21,'nO3UuUgQbj40eBeDsjeXY199AtU='),(36,26,'cG9G1rXuCWvVwueGi9yFA1PCwpg='),(17,26,'EJdVl95E3/+gT6J8VKqx8p5CY1Q='),(16,26,'nO3UuUgQbj40eBeDsjeXY199AtU='),(35,29,'cG9G1rXuCWvVwueGi9yFA1PCwpg='),(20,29,'EJdVl95E3/+gT6J8VKqx8p5CY1Q='),(18,29,'nO3UuUgQbj40eBeDsjeXY199AtU='),(19,30,'nO3UuUgQbj40eBeDsjeXY199AtU='),(21,34,'wjqVtOuFppDd1oEBBMUc2TyD8vk='),(22,36,'wjqVtOuFppDd1oEBBMUc2TyD8vk='),(23,40,'wjqVtOuFppDd1oEBBMUc2TyD8vk='),(37,45,'cG9G1rXuCWvVwueGi9yFA1PCwpg='),(25,45,'EJdVl95E3/+gT6J8VKqx8p5CY1Q='),(24,45,'nO3UuUgQbj40eBeDsjeXY199AtU='),(26,49,'g9oDsuZ2Ke1OimlPvx7V2sj306E='),(27,52,'Gk3NNO1f6vn7wZBN/Oi/iddZVK8='),(28,56,'Gk3NNO1f6vn7wZBN/Oi/iddZVK8='),(29,59,'Gk3NNO1f6vn7wZBN/Oi/iddZVK8='),(30,61,'Gk3NNO1f6vn7wZBN/Oi/iddZVK8='),(38,75,'g9oDsuZ2Ke1OimlPvx7V2sj306E='),(39,78,'Gk3NNO1f6vn7wZBN/Oi/iddZVK8='),(41,82,'Gk3NNO1f6vn7wZBN/Oi/iddZVK8='),(42,84,'g9oDsuZ2Ke1OimlPvx7V2sj306E='),(43,88,'g9oDsuZ2Ke1OimlPvx7V2sj306E='),(44,91,'g9oDsuZ2Ke1OimlPvx7V2sj306E=');
/*!40000 ALTER TABLE `active_storage_variant_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `remember_created_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'bakke.tome@gmail.com','$2a$12$6LbfNu372iF0ucx4ADHhSuNUoohbOVxJX/7iNFm1bu3MPeaCUnBQ.','bb7223eebdb6a8a51d43def2cd480dff7b34388c36be63e8caf43629f2d5cfd7','2023-06-27 01:43:47.288990',NULL,'2023-06-25 23:29:00.196271','2023-09-11 00:37:05.285397');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2023-06-21 06:56:53.396756','2023-06-21 06:56:53.396756');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'2023-08-10 22:46:47.213874','2023-08-11 21:26:14.887035','aaa'),(5,'2023-08-10 22:58:51.021716','2023-08-11 21:26:15.079438','aaa'),(7,'2023-08-11 21:32:13.564163','2023-08-11 21:32:13.603790','あああああああ'),(8,'2023-08-11 21:46:01.521409','2023-08-12 09:38:01.753689','テスト'),(9,'2023-08-12 00:49:09.425296','2023-08-12 00:49:09.474580','あああああああああああ'),(10,'2023-08-12 01:11:31.653487','2023-08-12 01:11:31.719438','いいいいいいいいいいいい'),(11,'2023-08-12 01:12:07.376922','2023-08-12 01:29:17.071265','うううううううううううううう'),(12,'2023-09-05 06:09:38.557662','2023-09-05 06:09:38.586766',''),(13,'2023-09-05 06:10:25.039005','2023-09-05 06:10:25.105821',''),(14,'2023-09-05 06:12:55.639176','2023-09-05 06:12:55.669437',''),(17,'2023-09-05 06:25:34.701400','2023-09-05 06:25:34.758547','aa'),(20,'2023-09-05 07:09:10.827211','2023-09-05 07:49:21.640728','aaa'),(21,'2023-09-06 07:09:32.946622','2023-09-06 07:10:38.496617','aaa'),(22,'2023-09-09 03:05:21.009917','2023-09-09 03:05:21.094097','あああああああああああ');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_about_regions`
--

DROP TABLE IF EXISTS `category_about_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_about_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_about_regions`
--

LOCK TABLES `category_about_regions` WRITE;
/*!40000 ALTER TABLE `category_about_regions` DISABLE KEYS */;
INSERT INTO `category_about_regions` VALUES (6,'移住者が多い','2023-07-19 04:48:48.340691','2023-09-09 01:14:12.143262'),(7,'離島','2023-07-19 04:49:08.969626','2023-07-19 04:49:08.969626'),(10,'農村','2023-09-08 09:05:42.774623','2023-09-08 09:05:42.774623');
/*!40000 ALTER TABLE `category_about_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_earnests`
--

DROP TABLE IF EXISTS `category_earnests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_earnests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_earnests`
--

LOCK TABLES `category_earnests` WRITE;
/*!40000 ALTER TABLE `category_earnests` DISABLE KEYS */;
INSERT INTO `category_earnests` VALUES (2,'今すぐやりたい','2023-07-05 00:29:15.584085','2023-07-05 05:34:22.624883'),(3,'企画書あり','2023-07-06 05:33:52.180963','2023-07-06 05:33:52.180963'),(4,'まだアイデア段階','2023-07-18 05:01:20.002905','2023-07-18 05:01:20.002905'),(5,'仲間を募集','2023-07-18 05:01:26.058102','2023-07-18 05:01:26.058102');
/*!40000 ALTER TABLE `category_earnests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_features`
--

DROP TABLE IF EXISTS `category_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_features` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_features`
--

LOCK TABLES `category_features` WRITE;
/*!40000 ALTER TABLE `category_features` DISABLE KEYS */;
INSERT INTO `category_features` VALUES (2,'農山村','2023-07-03 01:59:46.195936','2023-07-03 01:59:46.195936'),(3,'海','2023-07-03 01:59:56.819839','2023-07-03 01:59:56.819839'),(4,'山','2023-07-03 04:22:31.118496','2023-07-03 04:22:31.118496'),(5,'地方都市','2023-07-18 04:59:51.922139','2023-07-18 04:59:51.922139');
/*!40000 ALTER TABLE `category_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_immigration_supports`
--

DROP TABLE IF EXISTS `category_immigration_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_immigration_supports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_immigration_supports`
--

LOCK TABLES `category_immigration_supports` WRITE;
/*!40000 ALTER TABLE `category_immigration_supports` DISABLE KEYS */;
INSERT INTO `category_immigration_supports` VALUES (1,'地方創生移住支援金','2023-07-07 00:33:41.321273','2023-07-07 00:33:41.321273'),(2,'空き家バンク','2023-07-07 00:34:04.593017','2023-07-07 00:34:04.593017'),(3,'お試し住宅','2023-07-07 00:34:08.225780','2023-07-07 00:34:08.225780'),(4,'移住支援金','2023-08-12 08:33:09.994158','2023-08-12 08:33:09.994158');
/*!40000 ALTER TABLE `category_immigration_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_incubations`
--

DROP TABLE IF EXISTS `category_incubations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_incubations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_incubations`
--

LOCK TABLES `category_incubations` WRITE;
/*!40000 ALTER TABLE `category_incubations` DISABLE KEYS */;
INSERT INTO `category_incubations` VALUES (1,'地方創生起業支援金','2023-07-07 00:33:22.508162','2023-07-07 00:33:22.508162'),(2,'市町村独自の起業補助金','2023-07-07 00:33:27.848988','2023-07-07 00:33:27.848988'),(3,'アドバイザー','2023-07-07 00:33:32.355762','2023-07-07 00:33:32.355762'),(5,'シェアオフィス','2023-09-08 21:12:40.459057','2023-09-08 21:12:40.459057');
/*!40000 ALTER TABLE `category_incubations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_interests`
--

DROP TABLE IF EXISTS `category_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_interests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_interests`
--

LOCK TABLES `category_interests` WRITE;
/*!40000 ALTER TABLE `category_interests` DISABLE KEYS */;
INSERT INTO `category_interests` VALUES (1,'観光','2023-07-07 01:55:23.393248','2023-07-07 01:55:23.393248'),(2,'農業','2023-07-07 01:55:27.629740','2023-07-07 01:55:27.629740'),(3,'教育','2023-07-07 01:55:34.833981','2023-07-07 01:55:34.833981'),(4,'漁業','2023-09-05 07:04:43.438720','2023-09-05 07:04:43.438720');
/*!40000 ALTER TABLE `category_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_issues`
--

DROP TABLE IF EXISTS `category_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_issues` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_issues`
--

LOCK TABLES `category_issues` WRITE;
/*!40000 ALTER TABLE `category_issues` DISABLE KEYS */;
INSERT INTO `category_issues` VALUES (2,'人材不足','2023-06-27 13:05:31.972664','2023-06-27 13:05:31.972664'),(3,'高齢化','2023-06-27 13:34:00.531192','2023-06-28 00:25:56.094763'),(13,'少子高齢化','2023-06-27 20:57:51.415232','2023-07-03 01:48:05.658692');
/*!40000 ALTER TABLE `category_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_jobs`
--

DROP TABLE IF EXISTS `category_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_jobs`
--

LOCK TABLES `category_jobs` WRITE;
/*!40000 ALTER TABLE `category_jobs` DISABLE KEYS */;
INSERT INTO `category_jobs` VALUES (2,'接客業','2023-07-07 01:55:01.427047','2023-07-07 01:55:01.427047'),(3,'教育関連','2023-07-07 01:55:04.626098','2023-07-07 01:55:04.626098'),(4,'飲食業','2023-09-09 01:12:57.872291','2023-09-09 01:12:57.872291');
/*!40000 ALTER TABLE `category_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_markets`
--

DROP TABLE IF EXISTS `category_markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_markets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_markets`
--

LOCK TABLES `category_markets` WRITE;
/*!40000 ALTER TABLE `category_markets` DISABLE KEYS */;
INSERT INTO `category_markets` VALUES (1,'小売','2023-07-01 22:22:53.035014','2023-07-01 23:04:51.134028'),(2,'飲食店','2023-07-02 22:52:54.589752','2023-07-02 22:52:54.589752'),(3,'教育','2023-07-03 01:03:38.485008','2023-07-03 01:03:38.485008'),(4,'医療・福祉','2023-07-18 05:00:14.154634','2023-07-18 05:00:14.154634');
/*!40000 ALTER TABLE `category_markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_realizabilities`
--

DROP TABLE IF EXISTS `category_realizabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_realizabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_realizabilities`
--

LOCK TABLES `category_realizabilities` WRITE;
/*!40000 ALTER TABLE `category_realizabilities` DISABLE KEYS */;
INSERT INTO `category_realizabilities` VALUES (2,'思いつき','2023-07-03 05:56:17.940663','2023-07-03 05:56:17.940663'),(3,'すぐにでも実現してほしい','2023-07-18 04:58:20.222252','2023-07-18 04:58:20.222252'),(4,'地域で合意あり','2023-07-18 04:58:46.165214','2023-07-18 04:58:46.165214'),(5,'物件所有者の合意あり','2023-07-18 04:59:13.373187','2023-07-18 04:59:13.373187'),(6,'サポートする人がいる','2023-07-18 04:59:22.953883','2023-07-18 04:59:22.953883');
/*!40000 ALTER TABLE `category_realizabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_resources`
--

DROP TABLE IF EXISTS `category_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_resources`
--

LOCK TABLES `category_resources` WRITE;
/*!40000 ALTER TABLE `category_resources` DISABLE KEYS */;
INSERT INTO `category_resources` VALUES (1,'自然環境','2023-06-26 20:53:10.893462','2023-09-08 21:22:30.727415'),(2,'地場産品','2023-06-26 20:54:16.758480','2023-06-26 20:54:16.758480'),(3,'景観','2023-06-26 20:54:21.794861','2023-06-26 20:54:21.794861'),(4,'歴史・文化','2023-06-26 20:54:28.126068','2023-06-26 20:54:28.126068'),(5,'人','2023-06-26 20:54:31.451931','2023-09-11 02:04:45.790917'),(7,'物件','2023-06-26 20:54:38.826433','2023-06-26 20:54:38.826433'),(18,'祭り','2023-06-27 07:20:14.906409','2023-06-27 07:20:14.906409');
/*!40000 ALTER TABLE `category_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_skills`
--

DROP TABLE IF EXISTS `category_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_skills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_skills`
--

LOCK TABLES `category_skills` WRITE;
/*!40000 ALTER TABLE `category_skills` DISABLE KEYS */;
INSERT INTO `category_skills` VALUES (1,'ものづくり','2023-07-07 01:55:07.863655','2023-07-07 01:55:07.863655'),(2,'デザイン','2023-07-07 01:55:12.390605','2023-07-07 01:55:12.390605'),(3,'コミュニケーション','2023-07-07 01:55:15.960447','2023-07-07 01:55:15.960447');
/*!40000 ALTER TABLE `category_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_wants`
--

DROP TABLE IF EXISTS `category_wants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_wants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_wants`
--

LOCK TABLES `category_wants` WRITE;
/*!40000 ALTER TABLE `category_wants` DISABLE KEYS */;
INSERT INTO `category_wants` VALUES (1,'飲食店','2023-07-04 21:03:41.191218','2023-07-04 23:32:54.256133'),(2,'小売','2023-07-06 05:33:31.574983','2023-07-06 05:33:31.574983'),(3,'観光業','2023-07-06 05:33:46.432177','2023-07-06 05:33:46.432177'),(4,'農林水産業','2023-07-18 05:00:58.003012','2023-07-18 05:00:58.003012'),(5,'教育','2023-07-18 05:01:03.471776','2023-07-18 05:01:03.471776');
/*!40000 ALTER TABLE `category_wants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'仙台牛カレーパンが食べたい。','2023-06-23 01:19:18.608772','2023-06-23 01:19:18.608772'),(6,3,1,'いいですね。','2023-07-28 07:49:15.443456','2023-07-28 07:49:15.443456'),(7,3,1,'!','2023-07-28 07:50:29.743942','2023-07-28 07:50:29.743942'),(8,1,1,'?','2023-07-31 06:56:56.863618','2023-07-31 06:56:56.863618'),(9,2,3,'いいですね！','2023-09-11 00:40:35.045317','2023-09-11 00:40:35.045317'),(10,1,3,'いいでしょ！','2023-09-12 00:13:04.103877','2023-09-12 00:13:04.103877');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (3,2,5,'2023-06-27 02:21:49.859305','2023-06-27 02:21:49.859305'),(5,4,3,'2023-08-02 05:30:13.950072','2023-08-02 05:30:13.950072'),(6,4,1,'2023-08-02 05:49:50.493841','2023-08-02 05:49:50.493841'),(7,4,2,'2023-08-02 05:50:02.716294','2023-08-02 05:50:02.716294'),(8,4,4,'2023-08-02 05:51:09.900086','2023-08-02 05:51:09.900086'),(15,1,59,'2023-09-02 00:17:19.409982','2023-09-02 00:17:19.409982'),(21,1,2,'2023-09-09 01:06:37.570727','2023-09-09 01:06:37.570727'),(22,1,2,'2023-09-09 01:06:37.689655','2023-09-09 01:06:37.689655'),(24,1,3,'2023-09-09 01:07:20.650003','2023-09-09 01:07:20.650003'),(25,1,3,'2023-09-09 01:07:20.792678','2023-09-09 01:07:20.792678'),(26,1,3,'2023-09-09 01:07:20.955441','2023-09-09 01:07:20.955441'),(27,1,3,'2023-09-09 01:07:21.088170','2023-09-09 01:07:21.088170'),(28,1,3,'2023-09-09 01:07:21.275981','2023-09-09 01:07:21.275981'),(29,1,3,'2023-09-09 01:07:21.419280','2023-09-09 01:07:21.419280'),(30,1,3,'2023-09-09 01:07:21.569872','2023-09-09 01:07:21.569872'),(31,1,5,'2023-09-09 01:07:41.314446','2023-09-09 01:07:41.314446'),(32,1,5,'2023-09-09 01:07:41.435549','2023-09-09 01:07:41.435549'),(33,1,5,'2023-09-09 01:07:41.533215','2023-09-09 01:07:41.533215'),(36,1,1,'2023-09-09 02:19:46.827164','2023-09-09 02:19:46.827164'),(37,1,6,'2023-09-09 02:21:21.666957','2023-09-09 02:21:21.666957'),(38,1,7,'2023-09-09 02:21:51.395207','2023-09-09 02:21:51.395207');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_messages_on_from_id` (`from_id`),
  KEY `index_messages_on_to_id` (`to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,4,1,'こんにちは','2023-08-02 02:03:53.686232','2023-08-02 02:03:53.686232'),(2,4,2,'おはよう','2023-08-03 01:39:17.917463','2023-08-03 01:39:17.917463'),(3,4,3,'こんばんは','2023-08-03 01:39:33.094363','2023-08-03 01:39:33.094363'),(4,4,2,'おはようございます。','2023-08-03 01:49:47.508843','2023-08-03 01:49:47.508843'),(5,4,3,'元気ですか？','2023-08-03 01:53:25.035359','2023-08-03 01:53:25.035359'),(6,4,1,' 久しぶり','2023-08-03 01:54:00.906819','2023-08-03 01:54:00.906819'),(7,1,4,'久しぶりだね','2023-08-03 05:13:22.834688','2023-08-03 05:13:22.834688'),(8,1,2,'元気？','2023-08-03 05:13:57.846336','2023-08-03 05:13:57.846336'),(9,4,3,'お返事ください。','2023-08-03 05:24:07.565582','2023-08-03 05:24:07.565582'),(10,1,4,'元気？','2023-08-09 08:29:58.594991','2023-08-09 08:29:58.594991'),(11,1,2,'最近どう？','2023-08-09 08:30:37.377732','2023-08-09 08:30:37.377732'),(12,2,4,'おはよう。','2023-08-09 08:39:42.084679','2023-08-09 08:39:42.084679'),(13,2,1,'忙しい。','2023-08-09 08:57:37.781518','2023-08-09 08:57:37.781518'),(14,2,4,'元気？','2023-08-09 08:58:08.358822','2023-08-09 08:58:08.358822'),(15,2,1,'暑い。','2023-08-09 09:16:12.950915','2023-08-09 09:16:12.950915'),(16,1,2,'暑いよね。','2023-08-09 09:17:06.817770','2023-08-09 09:17:06.817770'),(17,1,4,'最近どうしてるの？','2023-08-09 09:18:56.665409','2023-08-09 09:18:56.665409'),(18,1,2,'台風大丈夫？','2023-08-09 09:24:16.647863','2023-08-09 09:24:16.647863'),(19,4,2,'元気だよ。','2023-08-09 09:28:15.146790','2023-08-09 09:28:15.146790'),(20,1,4,'元気？','2023-08-12 08:26:48.052665','2023-08-12 08:26:48.052665'),(21,1,2,'台風また来てるよね。\nこっちに来ないといいけれど','2023-08-27 06:01:15.049671','2023-08-27 06:01:15.049671'),(22,1,2,'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああ\nああああああああああああああああああああああああああああああああああああああああああ','2023-08-27 06:49:36.811654','2023-08-27 06:49:36.811654'),(24,1,2,'あああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ\n','2023-08-27 06:51:31.658966','2023-08-27 06:51:31.658966'),(25,1,4,'ええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええ','2023-08-28 07:51:56.189178','2023-08-28 07:51:56.189178'),(27,1,2,'9月になっても暑いね。','2023-09-02 21:07:36.041995','2023-09-02 21:07:36.041995'),(28,4,1,'元気です。','2023-09-02 21:09:45.490269','2023-09-02 21:09:45.490269'),(29,1,2,'元気？','2023-09-02 21:11:33.586314','2023-09-02 21:11:33.586314'),(31,1,2,'aaaaaa','2023-09-12 00:35:35.653599','2023-09-12 00:35:35.653599');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_earnests`
--

DROP TABLE IF EXISTS `post_category_earnests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_earnests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_earnest_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_earnests`
--

LOCK TABLES `post_category_earnests` WRITE;
/*!40000 ALTER TABLE `post_category_earnests` DISABLE KEYS */;
INSERT INTO `post_category_earnests` VALUES (1,35,2,'2023-07-05 01:37:55.079961','2023-07-05 01:37:55.079961'),(8,36,3,'2023-07-18 05:03:09.841844','2023-07-18 05:03:09.841844'),(9,37,5,'2023-07-18 05:03:52.500030','2023-07-18 05:03:52.500030'),(18,5,2,'2023-09-12 00:31:46.690540','2023-09-12 00:31:46.690540'),(19,5,3,'2023-09-12 00:31:46.707516','2023-09-12 00:31:46.707516');
/*!40000 ALTER TABLE `post_category_earnests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_features`
--

DROP TABLE IF EXISTS `post_category_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_features` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_feature_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_features`
--

LOCK TABLES `post_category_features` WRITE;
/*!40000 ALTER TABLE `post_category_features` DISABLE KEYS */;
INSERT INTO `post_category_features` VALUES (3,25,4,'2023-07-04 05:36:35.581790','2023-07-04 05:36:35.581790'),(18,8,4,'2023-07-12 02:15:00.935735','2023-07-12 02:15:00.935735'),(19,41,5,'2023-07-18 06:41:30.662558','2023-07-18 06:41:30.662558'),(21,43,5,'2023-08-12 08:21:20.136991','2023-08-12 08:21:20.136991'),(30,2,2,'2023-09-03 22:06:32.183117','2023-09-03 22:06:32.183117'),(32,62,2,'2023-09-06 07:25:05.089140','2023-09-06 07:25:05.089140'),(33,1,2,'2023-09-09 02:30:15.968779','2023-09-09 02:30:15.968779');
/*!40000 ALTER TABLE `post_category_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_issues`
--

DROP TABLE IF EXISTS `post_category_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_issues` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_issue_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_issues`
--

LOCK TABLES `post_category_issues` WRITE;
/*!40000 ALTER TABLE `post_category_issues` DISABLE KEYS */;
INSERT INTO `post_category_issues` VALUES (1,15,2,'2023-06-30 06:14:46.517609','2023-06-30 06:14:46.517609'),(2,19,2,'2023-07-02 23:01:13.857480','2023-07-02 23:01:13.857480'),(3,21,3,'2023-07-02 23:05:01.147502','2023-07-02 23:05:01.147502'),(11,40,3,'2023-07-10 05:22:59.150208','2023-07-10 05:22:59.150208'),(12,9,3,'2023-07-10 05:48:02.340207','2023-07-10 05:48:02.340207'),(14,43,2,'2023-08-12 08:21:20.106425','2023-08-12 08:21:20.106425'),(19,4,2,'2023-08-28 00:11:05.699973','2023-08-28 00:11:05.699973'),(20,49,3,'2023-08-29 00:01:21.927531','2023-08-29 00:01:21.927531'),(26,62,3,'2023-09-06 07:25:05.010880','2023-09-06 07:25:05.010880'),(27,65,2,'2023-09-07 00:30:21.856340','2023-09-07 00:30:21.856340'),(28,76,2,'2023-09-08 22:30:41.958323','2023-09-08 22:30:41.958323'),(29,1,3,'2023-09-09 02:30:15.799975','2023-09-09 02:30:15.799975');
/*!40000 ALTER TABLE `post_category_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_markets`
--

DROP TABLE IF EXISTS `post_category_markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_markets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_market_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_markets`
--

LOCK TABLES `post_category_markets` WRITE;
/*!40000 ALTER TABLE `post_category_markets` DISABLE KEYS */;
INSERT INTO `post_category_markets` VALUES (1,21,2,'2023-07-02 23:05:01.159978','2023-07-02 23:05:01.159978'),(8,41,1,'2023-07-18 06:41:30.650866','2023-07-18 06:41:30.650866'),(11,43,4,'2023-08-12 08:21:20.120545','2023-08-12 08:21:20.120545'),(20,4,1,'2023-08-28 00:11:05.871572','2023-08-28 00:11:05.871572'),(21,47,4,'2023-08-28 23:54:43.503334','2023-08-28 23:54:43.503334'),(22,48,3,'2023-08-28 23:58:35.791869','2023-08-28 23:58:35.791869'),(29,61,1,'2023-09-06 07:17:10.022526','2023-09-06 07:17:10.022526'),(30,65,2,'2023-09-07 00:30:21.878644','2023-09-07 00:30:21.878644'),(31,1,2,'2023-09-09 02:30:15.859180','2023-09-09 02:30:15.859180'),(32,1,3,'2023-09-09 02:30:15.871471','2023-09-09 02:30:15.871471');
/*!40000 ALTER TABLE `post_category_markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_realizabilities`
--

DROP TABLE IF EXISTS `post_category_realizabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_realizabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_realizability_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_realizabilities`
--

LOCK TABLES `post_category_realizabilities` WRITE;
/*!40000 ALTER TABLE `post_category_realizabilities` DISABLE KEYS */;
INSERT INTO `post_category_realizabilities` VALUES (1,32,2,'2023-07-03 06:11:05.376907','2023-07-03 06:11:05.376907'),(2,41,4,'2023-07-18 06:41:30.673643','2023-07-18 06:41:30.673643'),(4,43,5,'2023-08-12 08:21:20.146719','2023-08-12 08:21:20.146719'),(10,1,6,'2023-09-09 02:30:16.000337','2023-09-09 02:30:16.000337');
/*!40000 ALTER TABLE `post_category_realizabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_resources`
--

DROP TABLE IF EXISTS `post_category_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_resource_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_resources`
--

LOCK TABLES `post_category_resources` WRITE;
/*!40000 ALTER TABLE `post_category_resources` DISABLE KEYS */;
INSERT INTO `post_category_resources` VALUES (119,39,1,'2023-07-08 21:10:57.752047','2023-07-08 21:10:57.752047'),(120,39,3,'2023-07-08 21:10:57.772788','2023-07-08 21:10:57.772788'),(121,7,7,'2023-07-09 20:43:36.419640','2023-07-09 20:43:36.419640'),(124,40,5,'2023-07-10 05:22:59.116438','2023-07-10 05:22:59.116438'),(129,9,4,'2023-07-10 05:48:02.274791','2023-07-10 05:48:02.274791'),(130,8,2,'2023-07-12 02:15:00.904760','2023-07-12 02:15:00.904760'),(131,41,3,'2023-07-18 06:41:30.639822','2023-07-18 06:41:30.639822'),(138,43,4,'2023-08-12 08:21:20.089874','2023-08-12 08:21:20.089874'),(174,4,1,'2023-08-28 00:11:05.658044','2023-08-28 00:11:05.658044'),(175,4,2,'2023-08-28 00:11:05.668912','2023-08-28 00:11:05.668912'),(178,50,4,'2023-08-29 00:02:25.635920','2023-08-29 00:02:25.635920'),(191,2,1,'2023-09-03 22:06:32.135968','2023-09-03 22:06:32.135968'),(192,2,3,'2023-09-03 22:06:32.147223','2023-09-03 22:06:32.147223'),(201,62,1,'2023-09-06 07:25:04.949475','2023-09-06 07:25:04.949475'),(205,1,1,'2023-09-09 02:30:15.617248','2023-09-09 02:30:15.617248'),(206,1,4,'2023-09-09 02:30:15.635453','2023-09-09 02:30:15.635453'),(207,1,5,'2023-09-09 02:30:15.692068','2023-09-09 02:30:15.692068'),(209,1,7,'2023-09-09 02:30:15.725611','2023-09-09 02:30:15.725611'),(210,1,18,'2023-09-09 02:30:15.743002','2023-09-09 02:30:15.743002'),(213,3,18,'2023-09-11 03:34:05.491446','2023-09-11 03:34:05.491446');
/*!40000 ALTER TABLE `post_category_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_wants`
--

DROP TABLE IF EXISTS `post_category_wants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_wants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_want_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_wants`
--

LOCK TABLES `post_category_wants` WRITE;
/*!40000 ALTER TABLE `post_category_wants` DISABLE KEYS */;
INSERT INTO `post_category_wants` VALUES (1,38,1,'2023-07-05 02:05:50.922578','2023-07-05 02:05:50.922578'),(9,36,1,'2023-07-18 05:03:09.832975','2023-07-18 05:03:09.832975'),(10,37,2,'2023-07-18 05:03:52.488970','2023-07-18 05:03:52.488970'),(14,44,4,'2023-08-27 22:55:54.596444','2023-08-27 22:55:54.596444'),(15,75,3,'2023-09-08 22:30:13.639701','2023-09-08 22:30:13.639701'),(17,5,5,'2023-09-12 00:31:46.636854','2023-09-12 00:31:46.636854');
/*!40000 ALTER TABLE `post_category_wants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_type` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prefecture` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `body1` text,
  `body2` text,
  `feature` text,
  `attachment` varchar(255) DEFAULT NULL,
  `realizability` varchar(255) DEFAULT NULL,
  `earnest` varchar(255) DEFAULT NULL,
  `public_status_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'山間の清流の集落にパン屋さんがほしい テスト','宮城県','登米市東和町','この辺に石窯で焼くパン屋さんがあったら素敵だと思います。\r\n〇〇市は米の生産地なので、地元産米粉を使ってはいかがでしょう？\r\n新鮮な野菜や果物が豊富に取れますが、出荷できずに廃棄するものも多いです。\r\n地域には石窯を作れる人もいるので、地域活性化の一貫としてやれば、協力してもらえるかもしれません。\r\n薪の材料となる木材資源も豊富にあります。\r\n春から秋には川沿いのキャンプ場や公園に、人が集まります。\r\n近くの道の駅に出荷してもいいかもしれません。\r\n',NULL,'平野部に田畑の広がる〇〇市の端っこ、北上川の支流が流れる中山間地域の集落です。\r\n夏は涼しく、冬は寒いですが、雪はほとんど降りません。\r\n自家用に米や野菜を作っている人が多いです。\r\n地域の人は面倒見が良く、移住者に色々教えてくれます。\r\n小学校は一学年十数人の少人数なので、手厚い指導を受け、子どもたちは他学年とも仲が良く、いじめもありません。保育園も入りやすいです。\r\n買い物は車で15分圏内に、道の駅・ドラッグストア・コンビニ・ホームセンターがあります。スーパーは車で20分ほど。車で30分ほどの市中心部には、イオン初め、多くのチェーン店があり、生活には困りません。',NULL,'空き家はちらほらありますが、使える物件があるかは不明です。','口コミ等のお手伝いはします。',1,'2023-06-23 00:54:09.760595','2023-09-05 03:28:18.440236'),(2,1,1,'aaaaaaa','北海道','','aaaaaaaaaaa',NULL,'',NULL,'','',3,'2023-06-26 01:24:28.906155','2023-09-03 22:06:32.108917'),(3,1,1,'aaaaaaa','青森県','','aaaaaaaa',NULL,'',NULL,'','',1,'2023-06-26 01:28:35.484687','2023-09-11 03:33:51.359325'),(4,1,1,'aaaaaaa','岩手県','','aaaaaaa',NULL,'',NULL,'','',2,'2023-06-26 01:40:41.622684','2023-08-28 00:11:05.625392'),(5,1,2,'フリースクール開校','宮城県','',NULL,'自然豊かな環境でフリースクールを開校したいです。',NULL,NULL,'','必ず実現させます。',1,'2023-06-27 02:18:59.784209','2023-09-12 00:31:46.572605'),(6,1,2,'aaaaaaa','茨城県','',NULL,'aaaaaaa',NULL,NULL,'','',1,'2023-06-27 04:58:13.364203','2023-09-06 07:44:16.831454'),(7,1,1,'zzzzzzz','岩手県','','zzzzzzz',NULL,'',NULL,'','',1,'2023-06-28 04:23:48.762855','2023-06-28 04:23:48.762855'),(8,1,1,'bbbbbbb','千葉県','','パン屋',NULL,'',NULL,'','',1,'2023-06-30 02:12:01.389893','2023-07-12 02:15:00.855801'),(9,1,1,'cccccc','山形県','','ccccccc',NULL,'',NULL,'','',1,'2023-06-30 02:26:05.797412','2023-06-30 02:26:05.797412'),(10,1,1,'cccccc','青森','','ccccccc',NULL,'',NULL,'','',1,'2023-06-30 02:26:44.379216','2023-06-30 02:26:44.394667'),(11,1,1,'aaaaaaa','山形県','','aaaaaaaaaaa',NULL,'',NULL,'','',1,'2023-06-30 02:36:17.441797','2023-06-30 02:36:17.473052'),(12,1,1,'cccccc','青森','','cccccccc',NULL,'',NULL,'','',1,'2023-06-30 03:29:50.689924','2023-06-30 03:29:50.689924'),(13,1,1,'ddddd','茨城県','','ddddddd',NULL,'',NULL,'','',1,'2023-06-30 05:11:42.325141','2023-06-30 05:11:42.325141'),(14,1,1,'cccccc','北海道','','ccccccc',NULL,'',NULL,'','',1,'2023-06-30 05:12:35.647036','2023-06-30 05:12:35.647036'),(15,1,1,'aaaaaaa','栃木県','','aaaaaaa',NULL,'',NULL,'','',1,'2023-06-30 06:14:46.475011','2023-06-30 06:14:46.475011'),(16,1,1,'aaaaaaa','埼玉県','','aaaaaa',NULL,'',NULL,'','',1,'2023-07-01 23:06:43.187252','2023-07-01 23:06:43.187252'),(17,1,1,'aaaaaaa','青森','','aaaaaaaa',NULL,'',NULL,'','',1,'2023-07-02 21:30:16.542694','2023-07-02 21:30:16.542694'),(18,1,1,'aaaaaaa','青森','','aaaaaaaa',NULL,'',NULL,'','',1,'2023-07-02 22:57:38.854938','2023-07-02 22:57:38.854938'),(19,1,1,'bbbbbbb','茨城県','','bbbbbb',NULL,'',NULL,'','',1,'2023-07-02 23:01:13.844430','2023-07-02 23:01:13.844430'),(20,1,1,'cccccc','岩手県','','cccccc',NULL,'',NULL,'','',1,'2023-07-02 23:03:48.147505','2023-07-02 23:03:48.147505'),(21,1,1,'aaaaaaa','岩手県','','aaaa',NULL,'',NULL,'','',1,'2023-07-02 23:05:01.134909','2023-07-02 23:05:01.134909'),(22,1,1,'cccccc','新潟県','','cccccc',NULL,'',NULL,'','',1,'2023-07-03 02:34:16.578331','2023-07-03 02:34:16.578331'),(23,1,1,'cccccc','新潟県','','ccccc',NULL,'',NULL,'','',1,'2023-07-03 02:35:30.296708','2023-07-03 02:35:30.296708'),(24,1,1,'aaaaaaa','新潟県','','aaaaaaaa',NULL,'',NULL,'','',1,'2023-07-03 02:38:24.917901','2023-07-03 02:38:24.917901'),(25,1,1,'aaaaaaa','新潟県','','aaaaaa',NULL,'',NULL,'','',1,'2023-07-03 02:39:48.118116','2023-07-03 02:39:48.118116'),(26,1,1,'bbbbbbb','岩手県','','bbbbbbbb',NULL,'',NULL,'',NULL,1,'2023-07-03 05:57:03.824892','2023-07-03 05:57:03.824892'),(27,1,1,'aaaaaaa','青森','','aaaa',NULL,'',NULL,'',NULL,1,'2023-07-03 06:04:22.770212','2023-07-03 06:04:22.770212'),(28,1,1,'aaaaaaa','青森','','aaaaaa',NULL,'',NULL,'',NULL,1,'2023-07-03 06:07:14.324305','2023-07-03 06:07:14.324305'),(29,1,1,'aaaaaaa','青森','','aaaa',NULL,'',NULL,'',NULL,1,'2023-07-03 06:07:42.460081','2023-07-03 06:07:42.460081'),(30,1,1,'aaaaaaa','青森','','aaaaaa',NULL,'',NULL,'',NULL,1,'2023-07-03 06:08:19.456277','2023-07-03 06:08:19.456277'),(31,1,1,'aaaaaaa','北海道','','aaaaa',NULL,'',NULL,'',NULL,1,'2023-07-03 06:10:19.424078','2023-07-03 06:10:19.424078'),(32,1,1,'aaaaaaa','北海道','','aaaaaa',NULL,'',NULL,'',NULL,1,'2023-07-03 06:11:05.349206','2023-07-03 06:11:05.349206'),(33,3,2,'カフェを開きたい','秋田県','',NULL,'aaaaa',NULL,NULL,'','',1,'2023-07-05 00:39:56.809029','2023-07-05 00:39:56.809029'),(34,3,2,'aaaaaaa','岩手県','',NULL,'aaaaaaaaa',NULL,NULL,NULL,'',1,'2023-07-05 01:36:36.480464','2023-07-05 01:36:36.480464'),(35,3,2,'aaaaaaa','秋田県','',NULL,'aaaaaaa',NULL,NULL,NULL,'',1,'2023-07-05 01:37:55.055416','2023-07-05 01:37:55.055416'),(36,3,2,'aaaaaaa','青森県','',NULL,'aaaaaaa',NULL,NULL,NULL,'',1,'2023-07-05 01:52:42.449185','2023-07-18 05:03:09.813008'),(37,3,2,'aaaaaaa','青森県','',NULL,'aaaaa',NULL,NULL,NULL,'',1,'2023-07-05 01:53:48.511083','2023-07-18 05:03:52.472798'),(38,3,2,'aaaaaaa','岩手県','',NULL,'aaaaaa',NULL,NULL,NULL,'',1,'2023-07-05 02:05:50.882603','2023-07-05 02:05:50.882603'),(39,1,1,'aaaaaaa','北海道','','aaaa',NULL,'',NULL,'',NULL,1,'2023-07-08 21:10:57.719465','2023-07-08 21:10:57.719465'),(40,1,1,'aaaaaaa','青森','','aaaaa',NULL,'',NULL,'',NULL,1,'2023-07-10 05:22:59.075665','2023-07-10 05:22:59.075665'),(41,2,1,'aaaaaaa','栃木県','','aaaaaaaa',NULL,'',NULL,'',NULL,1,'2023-07-18 06:41:30.625909','2023-07-18 06:41:30.625909'),(42,1,1,'ccccccc','福島県','','ccccc',NULL,'',NULL,'',NULL,1,'2023-07-27 21:06:22.520218','2023-07-27 21:06:22.520218'),(43,1,1,'ffffffffffffffff','群馬県','','ffffffffffffffffff',NULL,'ffffffffffffffff',NULL,'',NULL,1,'2023-08-12 08:21:20.039051','2023-08-12 08:21:20.051232'),(44,1,2,'aaaaaaa','北海道','',NULL,'あああああ',NULL,NULL,NULL,'',1,'2023-08-27 22:55:54.504789','2023-08-27 22:55:54.504789'),(45,1,1,'bbbbbbb','宮城県','','ああああああああああ',NULL,'',NULL,'',NULL,1,'2023-08-27 22:58:54.725343','2023-08-27 22:58:54.725343'),(46,1,1,'cccccc','青森県','','いいいいいいいい',NULL,'',NULL,'',NULL,1,'2023-08-27 23:01:08.417697','2023-08-27 23:01:08.417697'),(47,1,1,'aaaaaaa','栃木県','','aaaaaa',NULL,'',NULL,'',NULL,1,'2023-08-28 23:54:43.454891','2023-08-28 23:54:43.454891'),(48,1,1,'bbbbbbb','福島県','',' bbbbbb',NULL,'',NULL,'',NULL,1,'2023-08-28 23:58:35.772057','2023-08-28 23:58:35.772057'),(49,1,1,'cccccc','新潟県','','cccccccc',NULL,'',NULL,'',NULL,1,'2023-08-29 00:01:21.899623','2023-08-29 00:01:21.899623'),(50,1,1,'aaaaaaa','岩手県','','aaaaaa',NULL,'',NULL,'',NULL,1,'2023-08-29 00:02:25.578374','2023-08-29 00:02:25.578374'),(51,1,1,'cccccc','茨城県','','ccccccccc',NULL,'',NULL,'',NULL,1,'2023-08-29 00:08:55.360039','2023-08-29 00:08:55.360039'),(52,1,1,'bbbbbbb','茨城県','','bbbbbbb',NULL,'',NULL,'',NULL,1,'2023-08-29 00:14:22.876824','2023-08-29 00:14:22.876824'),(53,1,2,'aaaaaaa','青森県','',NULL,'aaaaaa',NULL,NULL,NULL,'',1,'2023-08-30 06:55:26.135499','2023-08-30 06:55:26.135499'),(54,1,2,'aaaaaaa','青森県','',NULL,'aaaaa',NULL,NULL,NULL,'',1,'2023-08-30 06:56:16.606498','2023-08-30 06:56:16.606498'),(55,1,2,'aaaaaaa','秋田県','',NULL,'aaaaaaa',NULL,NULL,NULL,'',1,'2023-08-30 07:03:37.725243','2023-08-30 07:03:37.725243'),(57,1,1,'aaaaaaaa','秋田県','','aaaaaaaaa',NULL,'',NULL,'',NULL,1,'2023-08-31 07:41:13.185917','2023-08-31 07:41:13.185917'),(58,1,1,'aaaaaaa','岩手県','','aaaaa',NULL,'',NULL,'',NULL,1,'2023-08-31 07:50:46.369493','2023-08-31 07:50:46.369493'),(59,1,1,'aaaaaaa','青森県','','aaaaaa',NULL,'',NULL,'',NULL,1,'2023-08-31 08:18:32.245729','2023-08-31 08:18:32.245729'),(61,1,1,'aaaaaaa','島根県','','',NULL,'',NULL,'',NULL,1,'2023-09-06 07:17:09.991751','2023-09-06 07:17:09.991751'),(62,1,1,'aaaaaaa','山口県','','aaaa',NULL,'',NULL,'',NULL,1,'2023-09-06 07:22:11.378690','2023-09-06 07:22:52.437022'),(63,1,1,'aaaaaaa','岩手県','','aaa',NULL,'',NULL,'',NULL,1,'2023-09-06 07:25:32.127290','2023-09-06 07:25:32.127290'),(64,1,2,'aaaaaaa','青森県','',NULL,'aaa',NULL,NULL,NULL,'',1,'2023-09-06 07:47:34.950377','2023-09-06 07:47:45.306760'),(65,1,1,'aaaaaaa','秋田県','','aaaaa',NULL,'',NULL,'',NULL,1,'2023-09-07 00:30:21.820549','2023-09-07 00:30:21.820549'),(66,1,1,'aaaaaaa','栃木県','','aaaaaa',NULL,'',NULL,'',NULL,2,'2023-09-07 06:36:51.836340','2023-09-07 06:36:51.836340'),(67,1,1,'aaaaaaa','岩手県','','aaaa',NULL,'',NULL,'',NULL,1,'2023-09-07 06:51:11.474792','2023-09-07 06:51:11.474792'),(68,1,1,'aa','北海道','','aaaaaa',NULL,'',NULL,'',NULL,2,'2023-09-07 08:25:37.684633','2023-09-07 08:25:37.684633'),(69,1,1,'aaaaaaa','青森県','','aaa',NULL,'',NULL,'',NULL,2,'2023-09-07 08:33:32.506701','2023-09-07 08:33:32.506701'),(70,1,2,'あああ','宮城県','',NULL,'ああああ',NULL,NULL,NULL,'',2,'2023-09-07 08:53:33.615861','2023-09-07 08:53:33.615861'),(71,1,1,'aaaaaaa','岩手県','','aaaaaaaa',NULL,'',NULL,'',NULL,2,'2023-09-08 00:15:54.737872','2023-09-08 00:15:54.737872'),(72,1,2,'bbbbbbb','栃木県','',NULL,'bbbbbbb',NULL,NULL,NULL,'',2,'2023-09-08 00:16:21.572505','2023-09-08 00:16:21.572505'),(73,1,1,'aaaaaaa','茨城県','','aaaaaaaaa',NULL,'',NULL,'',NULL,1,'2023-09-08 00:20:55.215673','2023-09-08 00:21:06.873958'),(74,1,2,'bbbbbbb','宮城県','',NULL,'aaaaa',NULL,NULL,NULL,'',1,'2023-09-08 00:23:34.229299','2023-09-08 00:23:45.478627'),(75,1,2,'bbbbbbb','山形県','',NULL,'cccccc',NULL,NULL,NULL,'',1,'2023-09-08 22:30:13.556761','2023-09-08 22:30:13.556761'),(76,1,1,'dddd','埼玉県','','hhhhhh',NULL,'',NULL,'',NULL,1,'2023-09-08 22:30:41.919690','2023-09-08 22:30:41.919690');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_about_regions`
--

DROP TABLE IF EXISTS `profile_category_about_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_about_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_about_region_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_about_regions`
--

LOCK TABLES `profile_category_about_regions` WRITE;
/*!40000 ALTER TABLE `profile_category_about_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_category_about_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_immigration_supports`
--

DROP TABLE IF EXISTS `profile_category_immigration_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_immigration_supports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_immigration_support_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_immigration_supports`
--

LOCK TABLES `profile_category_immigration_supports` WRITE;
/*!40000 ALTER TABLE `profile_category_immigration_supports` DISABLE KEYS */;
INSERT INTO `profile_category_immigration_supports` VALUES (1,25,1,'2023-07-07 01:53:41.771256','2023-07-07 01:53:41.771256'),(2,33,1,'2023-07-07 02:39:18.785810','2023-07-07 02:39:18.785810'),(30,2,1,'2023-08-07 22:25:30.617876','2023-08-07 22:25:30.617876');
/*!40000 ALTER TABLE `profile_category_immigration_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_incubations`
--

DROP TABLE IF EXISTS `profile_category_incubations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_incubations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_incubation_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_incubations`
--

LOCK TABLES `profile_category_incubations` WRITE;
/*!40000 ALTER TABLE `profile_category_incubations` DISABLE KEYS */;
INSERT INTO `profile_category_incubations` VALUES (1,15,1,'2023-07-07 00:54:54.532993','2023-07-07 00:54:54.532993'),(2,15,2,'2023-07-07 00:54:54.543510','2023-07-07 00:54:54.543510'),(3,15,3,'2023-07-07 00:54:54.553568','2023-07-07 00:54:54.553568'),(4,16,1,'2023-07-07 01:04:06.344114','2023-07-07 01:04:06.344114'),(5,16,2,'2023-07-07 01:04:06.355282','2023-07-07 01:04:06.355282'),(6,16,3,'2023-07-07 01:04:06.365987','2023-07-07 01:04:06.365987'),(7,24,1,'2023-07-07 01:29:28.363170','2023-07-07 01:29:28.363170'),(8,2,3,'2023-08-07 22:25:30.592446','2023-08-07 22:25:30.592446');
/*!40000 ALTER TABLE `profile_category_incubations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_interests`
--

DROP TABLE IF EXISTS `profile_category_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_interests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_interest_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_interests`
--

LOCK TABLES `profile_category_interests` WRITE;
/*!40000 ALTER TABLE `profile_category_interests` DISABLE KEYS */;
INSERT INTO `profile_category_interests` VALUES (1,39,1,'2023-07-07 03:14:16.463776','2023-07-07 03:14:16.463776'),(2,3,1,'2023-07-20 01:27:57.803876','2023-07-20 01:27:57.803876'),(38,45,3,'2023-08-30 00:48:28.741991','2023-08-30 00:48:28.741991');
/*!40000 ALTER TABLE `profile_category_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_jobs`
--

DROP TABLE IF EXISTS `profile_category_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_job_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_jobs`
--

LOCK TABLES `profile_category_jobs` WRITE;
/*!40000 ALTER TABLE `profile_category_jobs` DISABLE KEYS */;
INSERT INTO `profile_category_jobs` VALUES (38,42,2,'2023-08-30 00:30:30.157207','2023-08-30 00:30:30.157207'),(39,45,2,'2023-08-30 00:48:28.710956','2023-08-30 00:48:28.710956');
/*!40000 ALTER TABLE `profile_category_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_category_skills`
--

DROP TABLE IF EXISTS `profile_category_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_category_skills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_profile_id` int(11) DEFAULT NULL,
  `category_skill_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_category_skills`
--

LOCK TABLES `profile_category_skills` WRITE;
/*!40000 ALTER TABLE `profile_category_skills` DISABLE KEYS */;
INSERT INTO `profile_category_skills` VALUES (1,26,1,'2023-07-07 02:08:35.418515','2023-07-07 02:08:35.418515'),(2,3,3,'2023-07-20 01:27:57.788346','2023-07-20 01:27:57.788346'),(38,42,3,'2023-08-30 00:30:30.187647','2023-08-30 00:30:30.187647'),(39,45,1,'2023-08-30 00:48:28.728813','2023-08-30 00:48:28.728813');
/*!40000 ALTER TABLE `profile_category_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20230522065701'),('20230525071856'),('20230529001819'),('20230604205251'),('20230613205406'),('20230620004150'),('20230623215032'),('20230625230312'),('20230626225354'),('20230627051719'),('20230630061143'),('20230701204207'),('20230701205525'),('20230703002619'),('20230703021718'),('20230703035609'),('20230703035619'),('20230703035648'),('20230703035659'),('20230703035719'),('20230703035734'),('20230705023326'),('20230705023351'),('20230705023416'),('20230705023427'),('20230705023459'),('20230705023510'),('20230705023536'),('20230705023543'),('20230705023600'),('20230705023611'),('20230705023629'),('20230705023637'),('20230725031726'),('20230810213413'),('20230810214912'),('20230810224251'),('20230815003545'),('20230815004602');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `profile_type1` tinyint(1) DEFAULT NULL,
  `profile_type2` tinyint(1) DEFAULT NULL,
  `screen_name` varchar(255) DEFAULT NULL,
  `prefecture` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `about_region` text,
  `incubation` text,
  `immigration_support` text,
  `job` text,
  `skill` text,
  `interest` text,
  `other1` text,
  `other2` text,
  `public_status_region` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `public_status_business` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,1,1,1,'佐藤太郎','宮城県','登米市東和町','平野部に田畑の広がる〇〇市の端っこ、北上川の支流が流れる中山間地域の集落です。\n夏は涼しく、冬は寒いですが、雪はほとんど降りません。\n自家用に米や野菜を作っている人が多いです。\n地域の人は面倒見が良く、移住者に色々教えてくれます。\n小学校は一学年十数人の少人数なので、手厚い指導を受け、子どもたちは他学年とも仲が良く、いじめもありません。保育園も入りやすいです。\n買い物は車で15分圏内に、道の駅・ドラッグストア・コンビニ・ホームセンターがあります。スーパーは車で20分ほど。車で30分ほどの市中心部には、イオン初め、多くのチェーン店があり、生活には困りません。','〇〇県UIJターン起業支援\n対象者：東京圏（埼玉県,千葉県,東京都,神奈川県）から宮城県内にUIJターンで移住し,社会的事業において起業する方\n補助額：上限年200万円\n補助率：2分の1以内\n詳細：​Link\n\n〇〇市ビジネスチャンス支援事業補助金\n対象事業：​農林漁業、商業及び工業分野　価値の発掘を行う新たなビジネスにより、需要及び雇用を創出する事業\n　　　　　ソーシャルビジネスにより、需要及び雇用を創出する事業\n補助額：最大200万円\n補助率：3分の2（ただし、消費税を除く）\n詳細：Link','〇〇市住まいサポート事業\n住宅を新築・購入、中古住宅購入で　17万5千円〜50万円\n住宅本体の取得経費の10分の1\nLink\n\n〇〇市移住支援金\n世帯移住　100万円　　単身移住　60万円　（要件あり）\nLink\n\nオンライン移住相談　Link\n\nお試し住宅　Link','小学校教師','DIY','人を育てること','','',1,'2023-06-23 00:52:43.352778','2023-09-11 05:34:46.742172',1),(2,2,1,NULL,'鈴木二郎','北海道','','','','','','','','','',1,'2023-06-24 07:53:52.388171','2023-06-24 07:53:52.447122',NULL),(3,3,NULL,1,'山田花子','茨城県','','','','','','','','','',1,'2023-06-29 03:51:45.899902','2023-06-29 03:51:45.899902',NULL),(4,1,1,NULL,'aaaaaa','青森','','','','','','','','','',1,'2023-07-06 20:59:21.241833','2023-07-06 20:59:21.241833',NULL),(5,1,1,NULL,'aaaaaa','群馬県','','','','','','','','','',1,'2023-07-06 21:11:06.492739','2023-07-06 21:11:06.492739',NULL),(6,1,1,NULL,'aaaaaa','山形県','','','','','','','','','',1,'2023-07-06 21:14:24.235382','2023-07-06 21:14:24.235382',NULL),(7,1,1,NULL,'aaaaaa','埼玉県','','','','','','','','','',1,'2023-07-06 21:14:55.381872','2023-07-06 21:14:55.381872',NULL),(8,1,1,NULL,'aaaaaa','群馬県','','','','','','','','','',1,'2023-07-06 21:16:05.764361','2023-07-06 21:16:05.764361',NULL),(9,1,1,NULL,'aaaaaa','岩手県','','','','','','','','','',1,'2023-07-06 21:23:53.904720','2023-07-06 21:23:53.904720',NULL),(10,1,1,NULL,'aaaaaa','埼玉県','','','','','','','','','',1,'2023-07-06 22:50:30.408255','2023-07-06 22:50:30.408255',NULL),(11,1,1,NULL,'aaaaaa','山形県','','','','','','','','','',1,'2023-07-06 22:55:58.514190','2023-07-06 22:55:58.514190',NULL),(12,1,1,NULL,'aaaaaa','青森','','','','','','','','','',1,'2023-07-06 23:00:38.678299','2023-07-06 23:00:38.678299',NULL),(13,1,1,NULL,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 00:39:17.684100','2023-07-07 00:39:17.684100',NULL),(14,1,1,NULL,'aaaaaa','埼玉県','','','','','','','','','',1,'2023-07-07 00:39:59.766962','2023-07-07 00:39:59.766962',NULL),(15,1,1,NULL,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 00:54:54.470669','2023-07-07 00:54:54.470669',NULL),(16,1,1,NULL,'bbbb','群馬県','','','','','','','','','',1,'2023-07-07 01:04:06.294324','2023-07-07 01:04:06.294324',NULL),(17,1,1,NULL,'bbbb','福島県','','','','','','','','','',1,'2023-07-07 01:06:06.064244','2023-07-07 01:06:06.064244',NULL),(18,1,1,NULL,'aaaaaa','群馬県','','','','','','','','','',1,'2023-07-07 01:07:50.163534','2023-07-07 01:07:50.163534',NULL),(19,1,1,NULL,'aaaaaa','東京都','','','','','','','','','',1,'2023-07-07 01:13:05.462959','2023-07-07 01:13:05.462959',NULL),(20,1,1,NULL,'bbbb','埼玉県','','','','','','','','','',1,'2023-07-07 01:16:42.495872','2023-07-07 01:16:42.495872',NULL),(21,1,1,NULL,'aaaaaa','栃木県','','','','','','','','','',1,'2023-07-07 01:19:35.658045','2023-07-07 01:19:35.658045',NULL),(22,1,1,NULL,'bbbb','千葉県','','','','','','','','','',1,'2023-07-07 01:20:56.427386','2023-07-07 01:20:56.427386',NULL),(23,1,1,NULL,'bbbb','青森','','','','','','','','','',1,'2023-07-07 01:28:20.087977','2023-07-07 01:28:20.087977',NULL),(24,1,1,NULL,'bbbb','青森','','','','','','','','','',1,'2023-07-07 01:29:28.340803','2023-07-07 01:29:28.340803',NULL),(25,1,1,NULL,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 01:53:41.742095','2023-07-07 01:53:41.742095',NULL),(26,1,NULL,1,'aaaa','千葉県','','','','','','','','','',1,'2023-07-07 02:08:35.387688','2023-07-07 02:08:35.387688',NULL),(27,1,NULL,1,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 02:10:35.392455','2023-07-07 02:10:35.392455',NULL),(28,1,NULL,1,'aaaaaa','富山県','','','','','','','','','',1,'2023-07-07 02:11:41.472004','2023-07-07 02:11:41.472004',NULL),(29,1,NULL,1,'bbbb','千葉県','','','','','','','','','',1,'2023-07-07 02:13:17.195145','2023-07-07 02:13:17.195145',NULL),(30,1,NULL,1,'aaaaaa','群馬県','','','','','','','','','',1,'2023-07-07 02:32:10.995785','2023-07-07 02:32:10.995785',NULL),(31,1,NULL,1,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 02:33:26.145954','2023-07-07 02:33:26.145954',NULL),(32,1,NULL,1,'aaaaaa','埼玉県','','','','','','','','','',1,'2023-07-07 02:34:40.676837','2023-07-07 02:34:40.676837',NULL),(33,1,1,NULL,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 02:37:37.456034','2023-07-07 02:37:37.456034',NULL),(34,1,NULL,1,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 02:39:40.164008','2023-07-07 02:39:40.164008',NULL),(35,1,NULL,1,'aaaaaa','愛知県','','','','','','','','','',1,'2023-07-07 02:40:44.802689','2023-07-07 02:40:44.802689',NULL),(36,1,NULL,1,'bbbb','千葉県','','','','','','','','','',1,'2023-07-07 02:41:36.469858','2023-07-07 02:41:36.469858',NULL),(37,1,NULL,1,'aaaaaa','埼玉県','','','','','','','','','',1,'2023-07-07 02:44:21.319803','2023-07-07 02:44:21.319803',NULL),(38,1,NULL,1,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 02:44:55.844190','2023-07-07 02:44:55.844190',NULL),(39,1,NULL,1,'aaaaaa','千葉県','','','','','','','','','',1,'2023-07-07 03:14:16.441714','2023-07-07 03:14:16.441714',NULL),(40,4,1,NULL,'高橋三郎','新潟県','','','','','','','','','',1,'2023-07-28 06:48:54.727175','2023-07-28 06:57:43.045538',NULL),(41,4,1,NULL,'高橋三郎','広島県','','','','','','','','','',1,'2023-07-28 06:55:42.044020','2023-07-28 06:55:42.044020',NULL);
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `remember_created_at` datetime(6) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime(6) DEFAULT NULL,
  `last_sign_in_at` datetime(6) DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'satotaro@gmail.com','$2a$12$6d.qP0Idlhpyw8abu/zZOOsU78A7bCVvHO85v34ipc5oHAhNmg3nm',NULL,NULL,NULL,108,'2023-09-12 00:12:47.203455','2023-09-11 07:21:22.477136','220.147.192.151','220.147.192.151','2023-06-23 00:49:57.668391','2023-09-12 00:12:47.203875'),(2,'suzukijiro@gmail.com','$2a$12$WT0nCZoVN7fRCdRPXq8fL.XOwLZOY6ONliI1OER2lEeLt5CI1b/9S',NULL,NULL,NULL,27,'2023-09-11 00:38:47.451213','2023-08-09 08:37:25.314750','220.147.192.151','124.246.226.110','2023-06-23 01:40:57.813959','2023-09-11 00:38:47.451538'),(3,'yamadahanako@gmail.com','$2a$12$EV/wBZr46CPPstZVyxXIfePTQx8hoTVaFLPHLQbsBjIuqB0/w2Gjy',NULL,NULL,NULL,8,'2023-08-03 05:15:22.439606','2023-07-28 21:23:39.058458','220.147.192.151','220.147.192.151','2023-06-29 03:05:44.856416','2023-08-03 05:15:22.439876'),(4,'takahashisaburo@gmail.com','$2a$12$lNCjq24SyZML3YLz.b0mL.a9CmWFTcNUU5tiVJavE2jcbHWYLVLie',NULL,NULL,NULL,8,'2023-09-03 07:32:12.990698','2023-09-02 21:08:57.736655','220.147.192.151','220.147.192.151','2023-07-28 06:34:02.901317','2023-09-03 07:32:12.991041'),(5,'tanakashiro@gmail.com','$2a$12$.CKzNgvcyefZUys05.y5xevww0RecLLZLlFRmMeWEKI3cXvmMHtUq',NULL,NULL,NULL,22,'2023-09-11 03:55:53.758459','2023-09-11 01:59:24.718866','220.147.192.151','220.147.192.151','2023-08-12 21:46:54.924199','2023-09-11 03:55:53.758793');
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

-- Dump completed on 2023-09-12  1:09:22
