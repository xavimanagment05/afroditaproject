-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wp_mail_smtp');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-05-27 08:27:01','2021-05-27 08:27:01','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_duplicator_packages`
--

DROP TABLE IF EXISTS `wp_duplicator_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_duplicator_packages`
--

LOCK TABLES `wp_duplicator_packages` WRITE;
/*!40000 ALTER TABLE `wp_duplicator_packages` DISABLE KEYS */;
INSERT INTO `wp_duplicator_packages` VALUES (5,'20210601_afrodita','7d684eb912f8f0054260_20210601184522',-1,'2021-06-01 18:45:32','unknown','O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-06-01 18:45:22\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:5;s:4:\"Name\";s:17:\"20210601_afrodita\";s:4:\"Hash\";s:35:\"7d684eb912f8f0054260_20210601184522\";s:8:\"NameHash\";s:53:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:63:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"-1.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:65:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:48:\"C:/Users/Usuario/Local Sites/afrodita/app/public\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-06-01 18:45:22\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20210601_afrodita\";s:4:\"Hash\";s:35:\"7d684eb912f8f0054260_20210601184522\";s:8:\"NameHash\";s:53:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:67:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:66:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:18:{s:26:\"wp_actionscheduler_actions\";s:1:\"9\";s:25:\"wp_actionscheduler_claims\";s:1:\"0\";s:25:\"wp_actionscheduler_groups\";s:1:\"2\";s:23:\"wp_actionscheduler_logs\";s:2:\"27\";s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"1\";s:22:\"wp_duplicator_packages\";s:1:\"1\";s:8:\"wp_links\";s:1:\"0\";s:10:\"wp_options\";s:3:\"189\";s:11:\"wp_postmeta\";s:3:\"326\";s:8:\"wp_posts\";s:3:\"107\";s:21:\"wp_term_relationships\";s:1:\"6\";s:16:\"wp_term_taxonomy\";s:1:\"2\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"2\";s:11:\"wp_usermeta\";s:2:\"23\";s:8:\"wp_users\";s:1:\"1\";s:24:\"wp_wpmailsmtp_tasks_meta\";s:1:\"4\";}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:147:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content/backups-dup-lite/tmp/20210601_afrodita_7d684eb912f8f0054260_20210601184522_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:57:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-admin\";i:1;s:67:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content/uploads\";i:2;s:69:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content/languages\";i:3;s:66:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content/themes\";i:4;s:60:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:48:\"C:/Users/Usuario/Local Sites/afrodita/app/public\";i:1;s:59:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:148;}');
/*!40000 ALTER TABLE `wp_duplicator_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=805 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://afrodita.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://afrodita.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','afrodita','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:151:{s:18:\"afrodita_clases/?$\";s:35:\"index.php?post_type=afrodita_clases\";s:48:\"afrodita_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=afrodita_clases&feed=$matches[1]\";s:43:\"afrodita_clases/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=afrodita_clases&feed=$matches[1]\";s:35:\"afrodita_clases/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=afrodita_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"afrodita_clases/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"afrodita_clases/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"afrodita_clases/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"afrodita_clases/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"afrodita_clases/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"afrodita_clases/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"afrodita_clases/([^/]+)/embed/?$\";s:48:\"index.php?afrodita_clases=$matches[1]&embed=true\";s:36:\"afrodita_clases/([^/]+)/trackback/?$\";s:42:\"index.php?afrodita_clases=$matches[1]&tb=1\";s:56:\"afrodita_clases/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?afrodita_clases=$matches[1]&feed=$matches[2]\";s:51:\"afrodita_clases/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?afrodita_clases=$matches[1]&feed=$matches[2]\";s:44:\"afrodita_clases/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?afrodita_clases=$matches[1]&paged=$matches[2]\";s:51:\"afrodita_clases/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?afrodita_clases=$matches[1]&cpage=$matches[2]\";s:40:\"afrodita_clases/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?afrodita_clases=$matches[1]&page=$matches[2]\";s:32:\"afrodita_clases/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"afrodita_clases/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"afrodita_clases/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"afrodita_clases/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"afrodita_clases/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"afrodita_clases/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"instructores/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"instructores/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"instructores/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"instructores/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"instructores/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"instructores/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"instructores/([^/]+)/embed/?$\";s:45:\"index.php?instructores=$matches[1]&embed=true\";s:33:\"instructores/([^/]+)/trackback/?$\";s:39:\"index.php?instructores=$matches[1]&tb=1\";s:41:\"instructores/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?instructores=$matches[1]&paged=$matches[2]\";s:48:\"instructores/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?instructores=$matches[1]&cpage=$matches[2]\";s:37:\"instructores/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?instructores=$matches[1]&page=$matches[2]\";s:29:\"instructores/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"instructores/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"instructores/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"instructores/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"instructores/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"instructores/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"testimoniales/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"testimoniales/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"testimoniales/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"testimoniales/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"testimoniales/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"testimoniales/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"testimoniales/([^/]+)/embed/?$\";s:46:\"index.php?testimoniales=$matches[1]&embed=true\";s:34:\"testimoniales/([^/]+)/trackback/?$\";s:40:\"index.php?testimoniales=$matches[1]&tb=1\";s:42:\"testimoniales/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?testimoniales=$matches[1]&paged=$matches[2]\";s:49:\"testimoniales/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?testimoniales=$matches[1]&cpage=$matches[2]\";s:38:\"testimoniales/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?testimoniales=$matches[1]&page=$matches[2]\";s:30:\"testimoniales/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"testimoniales/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"testimoniales/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"testimoniales/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"testimoniales/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"testimoniales/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=25&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:9:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"afrodita_post_types/afrodita_post_types.php\";i:2;s:37:\"afrodita_widgets/afrodita_widgets.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:31:\"creame-whatsapp-me/joinchat.php\";i:5;s:25:\"duplicator/duplicator.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:27:\"tawkto-live-chat/tawkto.php\";i:8;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','afrodita','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','afrodita','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','25','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1637656015','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar_1\";a:1:{i:0;s:12:\"foo_widget-2\";}s:9:\"sidebar_2\";a:1:{i:0;s:12:\"foo_widget-3\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:8:{i:1630212294;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1630214822;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1630225622;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630225623;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1630225750;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630225752;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630657622;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','`oPUK=Oql]c?#8%+E+DfiQ3[n|V<rQk)l0VY.$(oeIx/Tnn`9QSQQL^]70Rr #ge','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','`ndI&C?F)@noMiN2:4#5lSE:R#!X&0H G[>>n#%,=K0O%J*Ko{@@a0eU/)m!: I1','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1622105924;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:24:\"Solicitud HTTPS fallida.\";}}','yes');
INSERT INTO `wp_options` VALUES (147,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (150,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (155,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (156,'acf_version','5.9.6','yes');
INSERT INTO `wp_options` VALUES (157,'widget_foo_widget','a:3:{i:2;a:1:{s:8:\"cantidad\";s:1:\"3\";}i:3;a:1:{s:8:\"cantidad\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (158,'tawkto-visibility-options','a:14:{s:14:\"always_display\";i:1;s:16:\"show_onfrontpage\";i:0;s:15:\"show_oncategory\";i:0;s:14:\"show_ontagpage\";i:0;s:19:\"show_onarticlepages\";i:0;s:11:\"exclude_url\";i:0;s:17:\"excluded_url_list\";s:0:\"\";s:11:\"include_url\";i:0;s:17:\"included_url_list\";s:0:\"\";s:15:\"display_on_shop\";i:0;s:26:\"display_on_productcategory\";i:0;s:22:\"display_on_productpage\";i:0;s:21:\"display_on_producttag\";i:0;s:26:\"enable_visitor_recognition\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (159,'tawkto-embed-widget-page-id','','yes');
INSERT INTO `wp_options` VALUES (160,'tawkto-embed-widget-widget-id','','yes');
INSERT INTO `wp_options` VALUES (161,'wp_mail_smtp_initial_version','2.5.1','no');
INSERT INTO `wp_options` VALUES (162,'wp_mail_smtp_version','2.5.1','no');
INSERT INTO `wp_options` VALUES (163,'wp_mail_smtp','a:2:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:24:\"dev-email@flywheel.local\";s:9:\"from_name\";s:8:\"afrodita\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}}','no');
INSERT INTO `wp_options` VALUES (164,'wp_mail_smtp_activated_time','1622105750','no');
INSERT INTO `wp_options` VALUES (165,'wp_mail_smtp_activated','a:1:{s:4:\"lite\";i:1622105750;}','yes');
INSERT INTO `wp_options` VALUES (166,'action_scheduler_hybrid_store_demarkation','5','yes');
INSERT INTO `wp_options` VALUES (167,'schema-ActionScheduler_StoreSchema','3.0.1622105753','yes');
INSERT INTO `wp_options` VALUES (168,'schema-ActionScheduler_LoggerSchema','2.0.1622105753','yes');
INSERT INTO `wp_options` VALUES (169,'wp_mail_smtp_migration_version','3','yes');
INSERT INTO `wp_options` VALUES (173,'action_scheduler_lock_async-request-runner','1630212332','yes');
INSERT INTO `wp_options` VALUES (175,'wp_mail_smtp_review_notice','a:2:{s:4:\"time\";i:1622105757;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (181,'wp_mail_smtp_notifications','a:4:{s:6:\"update\";i:1622568160;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (182,'current_theme','Afrodita','yes');
INSERT INTO `wp_options` VALUES (183,'theme_mods_afrodita','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (184,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (221,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (234,'WPLANG','es_CO','yes');
INSERT INTO `wp_options` VALUES (235,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (260,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":4,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (282,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.4.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1622197113;s:7:\"version\";s:5:\"5.4.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (305,'secret_key','nb#2GbFO`R,IAn)]#O$mt%*)OCprC!3uMW.FYJ`Dt/C*jy=1fsLbs3AI!!]hs{{e','no');
INSERT INTO `wp_options` VALUES (306,'wp_mail_smtp_debug','a:0:{}','no');
INSERT INTO `wp_options` VALUES (382,'joinchat','a:18:{s:9:\"telephone\";s:13:\"+573104567834\";s:12:\"message_send\";s:0:\"\";s:12:\"button_image\";i:0;s:10:\"button_tip\";s:0:\"\";s:8:\"position\";s:5:\"right\";s:12:\"button_delay\";i:3;s:12:\"message_text\";s:31:\"Hola\n¿En que podemos ayudarte?\";s:13:\"message_start\";s:10:\"Abrir chat\";s:5:\"color\";s:7:\"#25d366\";s:9:\"dark_mode\";s:2:\"no\";s:6:\"header\";s:6:\"__jc__\";s:13:\"header_custom\";s:0:\"\";s:13:\"message_delay\";i:10;s:13:\"message_views\";i:2;s:11:\"mobile_only\";s:2:\"no\";s:12:\"whatsapp_web\";s:2:\"no\";s:13:\"message_badge\";s:2:\"no\";s:10:\"visibility\";a:8:{s:3:\"all\";s:3:\"yes\";s:10:\"front_page\";s:3:\"yes\";s:6:\"search\";s:3:\"yes\";s:7:\"archive\";s:3:\"yes\";s:8:\"singular\";s:3:\"yes\";s:4:\"page\";s:3:\"yes\";s:4:\"post\";s:3:\"yes\";s:19:\"cpt_afrodita_clases\";s:3:\"yes\";}}','yes');
INSERT INTO `wp_options` VALUES (682,'duplicator_settings','a:17:{s:7:\"version\";s:5:\"1.4.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:5;}','yes');
INSERT INTO `wp_options` VALUES (683,'duplicator_version_plugin','1.4.1','yes');
INSERT INTO `wp_options` VALUES (685,'duplicator_ui_view_state','a:6:{s:22:\"dup-pack-storage-panel\";s:1:\"1\";s:22:\"dup-pack-archive-panel\";s:1:\"1\";s:24:\"dup-pack-installer-panel\";s:1:\"1\";s:19:\"dup-pack-build-try1\";s:1:\"0\";s:19:\"dup-pack-build-try2\";s:1:\"1\";s:19:\"dup-pack-build-try3\";s:1:\"0\";}','yes');
INSERT INTO `wp_options` VALUES (689,'duplicator_package_active','O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-06-01 18:45:22\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20210601_afrodita\";s:4:\"Hash\";s:35:\"7d684eb912f8f0054260_20210601184522\";s:8:\"NameHash\";s:53:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:63:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:48:\"C:/Users/Usuario/Local Sites/afrodita/app/public\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-06-01 18:45:22\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20210601_afrodita\";s:4:\"Hash\";s:35:\"7d684eb912f8f0054260_20210601184522\";s:8:\"NameHash\";s:53:\"20210601_afrodita_7d684eb912f8f0054260_20210601184522\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:63;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:57:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-admin\";i:1;s:67:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content/uploads\";i:2;s:69:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content/languages\";i:3;s:66:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content/themes\";i:4;s:60:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:48:\"C:/Users/Usuario/Local Sites/afrodita/app/public\";i:1;s:59:\"C:/Users/Usuario/Local Sites/afrodita/app/public/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:129;}','yes');
INSERT INTO `wp_options` VALUES (719,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (784,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630212285;s:7:\"checked\";a:1:{s:8:\"afrodita\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (786,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:7:\"version\";s:3:\"5.8\";s:9:\"timestamp\";i:1628947672;}','no');
INSERT INTO `wp_options` VALUES (789,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (791,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1630212282;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (796,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1630603632','no');
INSERT INTO `wp_options` VALUES (797,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (802,'_site_transient_timeout_theme_roots','1630214085','no');
INSERT INTO `wp_options` VALUES (803,'_site_transient_theme_roots','a:1:{s:8:\"afrodita\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (804,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630212286;s:8:\"response\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"5.6\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/duplicator.1.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";s:5:\"5.3.8\";}s:31:\"creame-whatsapp-me/joinchat.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/creame-whatsapp-me\";s:4:\"slug\";s:18:\"creame-whatsapp-me\";s:6:\"plugin\";s:31:\"creame-whatsapp-me/joinchat.php\";s:11:\"new_version\";s:6:\"4.1.15\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/creame-whatsapp-me/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/creame-whatsapp-me.4.1.15.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/creame-whatsapp-me/assets/icon-256x256.png?rev=2346008\";s:2:\"1x\";s:71:\"https://ps.w.org/creame-whatsapp-me/assets/icon-128x128.png?rev=2346008\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/creame-whatsapp-me/assets/banner-1544x500.png?rev=2412419\";s:2:\"1x\";s:73:\"https://ps.w.org/creame-whatsapp-me/assets/banner-772x250.png?rev=2412419\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.5.0\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"5.3\";}s:27:\"tawkto-live-chat/tawkto.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/tawkto-live-chat\";s:4:\"slug\";s:16:\"tawkto-live-chat\";s:6:\"plugin\";s:27:\"tawkto-live-chat/tawkto.php\";s:11:\"new_version\";s:5:\"0.5.5\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tawkto-live-chat/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/tawkto-live-chat.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/tawkto-live-chat/assets/icon-256x256.png?rev=1371919\";s:2:\"1x\";s:69:\"https://ps.w.org/tawkto-live-chat/assets/icon-128x128.png?rev=1371919\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tawkto-live-chat/assets/banner-1544x500.png?rev=2101205\";s:2:\"1x\";s:71:\"https://ps.w.org/tawkto-live-chat/assets/banner-772x250.png?rev=2101201\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.7\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.0.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.6\";s:43:\"afrodita_post_types/afrodita_post_types.php\";s:5:\"1.0.0\";s:37:\"afrodita_widgets/afrodita_widgets.php\";s:5:\"1.0.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.1\";s:25:\"duplicator/duplicator.php\";s:5:\"1.4.1\";s:31:\"creame-whatsapp-me/joinchat.php\";s:6:\"4.1.14\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.5\";s:27:\"tawkto-live-chat/tawkto.php\";s:5:\"0.5.4\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"2.8.0\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_lock','1622506528:1');
INSERT INTO `wp_postmeta` VALUES (5,6,'_wp_attached_file','2021/05/testigo1.jpg');
INSERT INTO `wp_postmeta` VALUES (6,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2021/05/testigo1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"testigo1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"testigo1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"testigo1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"testigo1-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"testigo1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"testigo1-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (7,5,'_thumbnail_id','6');
INSERT INTO `wp_postmeta` VALUES (8,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (9,8,'_edit_lock','1622106472:1');
INSERT INTO `wp_postmeta` VALUES (10,9,'_wp_attached_file','2021/05/santamuerte.jpg');
INSERT INTO `wp_postmeta` VALUES (11,9,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2021/05/santamuerte.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"santamuerte-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"santamuerte-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"santamuerte-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"santamuerte-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"santamuerte-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"santamuerte-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (12,8,'_thumbnail_id','9');
INSERT INTO `wp_postmeta` VALUES (13,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (14,10,'_edit_lock','1622106541:1');
INSERT INTO `wp_postmeta` VALUES (15,11,'_wp_attached_file','2021/05/Santabarbara.jpg');
INSERT INTO `wp_postmeta` VALUES (16,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2021/05/Santabarbara.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Santabarbara-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Santabarbara-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:24:\"Santabarbara-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:24:\"Santabarbara-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:24:\"Santabarbara-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:24:\"Santabarbara-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (17,10,'_thumbnail_id','11');
INSERT INTO `wp_postmeta` VALUES (18,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (19,12,'_edit_lock','1622106577:1');
INSERT INTO `wp_postmeta` VALUES (20,13,'_wp_attached_file','2021/05/chango.jpg');
INSERT INTO `wp_postmeta` VALUES (21,13,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2021/05/chango.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"chango-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"chango-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"chango-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"chango-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"chango-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"chango-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (22,12,'_thumbnail_id','13');
INSERT INTO `wp_postmeta` VALUES (23,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (24,14,'_edit_lock','1622106799:1');
INSERT INTO `wp_postmeta` VALUES (25,15,'_wp_attached_file','2021/05/g-arcangel.jpg');
INSERT INTO `wp_postmeta` VALUES (26,15,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2021/05/g-arcangel.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"g-arcangel-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"g-arcangel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"g-arcangel-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:22:\"g-arcangel-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:22:\"g-arcangel-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:22:\"g-arcangel-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (27,14,'_thumbnail_id','15');
INSERT INTO `wp_postmeta` VALUES (35,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (36,19,'_edit_lock','1622506906:1');
INSERT INTO `wp_postmeta` VALUES (37,20,'_wp_attached_file','2021/05/Testigo4.jpg');
INSERT INTO `wp_postmeta` VALUES (38,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2021/05/Testigo4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Testigo4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Testigo4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"Testigo4-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"Testigo4-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"Testigo4-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"Testigo4-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (39,19,'_thumbnail_id','20');
INSERT INTO `wp_postmeta` VALUES (40,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (41,21,'_edit_lock','1622507256:1');
INSERT INTO `wp_postmeta` VALUES (42,22,'_wp_attached_file','2021/05/testigo2.jpg');
INSERT INTO `wp_postmeta` VALUES (43,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2021/05/testigo2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"testigo2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"testigo2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"testigo2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"testigo2-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"testigo2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"testigo2-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (44,21,'_thumbnail_id','22');
INSERT INTO `wp_postmeta` VALUES (45,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (46,23,'_edit_lock','1622507695:1');
INSERT INTO `wp_postmeta` VALUES (47,24,'_wp_attached_file','2021/05/testigo3.jpg');
INSERT INTO `wp_postmeta` VALUES (48,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2021/05/testigo3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"testigo3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"testigo3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"testigo3-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"testigo3-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"testigo3-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"testigo3-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (49,23,'_thumbnail_id','24');
INSERT INTO `wp_postmeta` VALUES (50,25,'_edit_lock','1622478882:1');
INSERT INTO `wp_postmeta` VALUES (51,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (57,29,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (58,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (59,29,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (60,29,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (61,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (62,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (63,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (64,29,'_menu_item_url','http://afrodita.local/');
INSERT INTO `wp_postmeta` VALUES (65,29,'_menu_item_orphaned','1622107793');
INSERT INTO `wp_postmeta` VALUES (66,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (67,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (68,30,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (69,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (70,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (71,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (72,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (73,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (74,30,'_menu_item_orphaned','1622107794');
INSERT INTO `wp_postmeta` VALUES (75,31,'_edit_lock','1622508728:1');
INSERT INTO `wp_postmeta` VALUES (76,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (77,33,'_edit_lock','1622107884:1');
INSERT INTO `wp_postmeta` VALUES (78,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (79,35,'_edit_lock','1622509913:1');
INSERT INTO `wp_postmeta` VALUES (80,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (83,39,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (84,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (85,39,'_menu_item_object_id','39');
INSERT INTO `wp_postmeta` VALUES (86,39,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (87,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (88,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (89,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (90,39,'_menu_item_url','http://afrodita.local/');
INSERT INTO `wp_postmeta` VALUES (91,39,'_menu_item_orphaned','1622107995');
INSERT INTO `wp_postmeta` VALUES (101,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (102,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (103,41,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (104,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (105,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (106,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (107,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (108,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (110,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (111,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (112,42,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (113,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (114,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (115,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (116,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (117,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (119,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (120,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (121,43,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (122,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (123,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (124,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (125,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (126,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (128,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (129,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (130,44,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (131,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (132,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (133,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (134,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (135,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (140,45,'_edit_lock','1622198058:1');
INSERT INTO `wp_postmeta` VALUES (141,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (142,41,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (143,42,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (144,43,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (145,44,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (147,47,'_form','<label> Tu nombre\n    [text* your-name] </label>\n\n<label> Tu correo electrónico\n    [email* your-email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Tu mensaje (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]');
INSERT INTO `wp_postmeta` VALUES (148,47,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:40:\"[_site_title] <wordpress@afrodita.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:184:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (149,47,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:40:\"[_site_title] <wordpress@afrodita.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:129:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (150,47,'_messages','a:22:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:78:\"Uno o más campos tienen un error. Por favor revisarlo e inténtarlo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:51:\"No estás autorizado a subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:38:\"Ocurrió un error al subir el archivo.\";s:12:\"invalid_date\";s:35:\"El formato de fecha no es correcto.\";s:14:\"date_too_early\";s:36:\"La fecha es anterior a la permitida.\";s:13:\"date_too_late\";s:45:\"La fecha es posterior a la última permitida.\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:71:\"La dirección de correo electrónico que has introducido no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}');
INSERT INTO `wp_postmeta` VALUES (151,47,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (152,47,'_locale','es_CO');
INSERT INTO `wp_postmeta` VALUES (153,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (154,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (155,48,'_menu_item_object_id','45');
INSERT INTO `wp_postmeta` VALUES (156,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (157,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (158,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (159,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (160,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (162,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (163,49,'_edit_lock','1622478862:1');
INSERT INTO `wp_postmeta` VALUES (164,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,51,'_edit_lock','1622506143:1');
INSERT INTO `wp_postmeta` VALUES (166,52,'_wp_attached_file','2021/05/amarres2.jpg');
INSERT INTO `wp_postmeta` VALUES (167,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2021/05/amarres2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"amarres2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"amarres2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"amarres2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"amarres2-350x400.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"amarres2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (168,53,'_wp_attached_file','2021/05/chaman-1.jpg');
INSERT INTO `wp_postmeta` VALUES (169,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:650;s:6:\"height\";i:354;s:4:\"file\";s:20:\"2021/05/chaman-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"chaman-1-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"chaman-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"chaman-1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"chaman-1-350x354.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"chaman-1-400x354.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (170,54,'_wp_attached_file','2021/05/contra3.jpg');
INSERT INTO `wp_postmeta` VALUES (171,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2021/05/contra3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"contra3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"contra3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:19:\"contra3-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:19:\"contra3-350x400.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:19:\"contra3-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (172,55,'_wp_attached_file','2021/05/maldiciones.jpg');
INSERT INTO `wp_postmeta` VALUES (173,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2021/05/maldiciones.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"maldiciones-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"maldiciones-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"maldiciones-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"maldiciones-350x400.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"maldiciones-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (174,56,'_wp_attached_file','2021/05/prosperidad.jpg');
INSERT INTO `wp_postmeta` VALUES (175,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2021/05/prosperidad.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"prosperidad-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"prosperidad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"prosperidad-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"prosperidad-350x400.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"prosperidad-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (176,57,'_wp_attached_file','2021/05/riegos.jpg');
INSERT INTO `wp_postmeta` VALUES (177,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2021/05/riegos.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"riegos-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"riegos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"riegos-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"riegos-350x400.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"riegos-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (178,58,'_wp_attached_file','2021/05/santeria.jpg');
INSERT INTO `wp_postmeta` VALUES (179,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2021/05/santeria.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"santeria-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"santeria-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"santeria-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"santeria-350x400.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"santeria-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (180,51,'_thumbnail_id','52');
INSERT INTO `wp_postmeta` VALUES (181,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (182,59,'_edit_lock','1622505889:1');
INSERT INTO `wp_postmeta` VALUES (183,59,'_thumbnail_id','56');
INSERT INTO `wp_postmeta` VALUES (184,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,60,'_edit_lock','1622505681:1');
INSERT INTO `wp_postmeta` VALUES (186,60,'_thumbnail_id','57');
INSERT INTO `wp_postmeta` VALUES (187,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (188,61,'_edit_lock','1622505910:1');
INSERT INTO `wp_postmeta` VALUES (189,61,'_thumbnail_id','54');
INSERT INTO `wp_postmeta` VALUES (190,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (191,62,'_edit_lock','1622505707:1');
INSERT INTO `wp_postmeta` VALUES (192,62,'_thumbnail_id','55');
INSERT INTO `wp_postmeta` VALUES (193,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (194,63,'_edit_lock','1622505690:1');
INSERT INTO `wp_postmeta` VALUES (195,63,'_thumbnail_id','58');
INSERT INTO `wp_postmeta` VALUES (196,45,'_wp_page_template','page-no-sidebars.php');
INSERT INTO `wp_postmeta` VALUES (197,64,'_wp_attached_file','2021/05/estrella2.jpg');
INSERT INTO `wp_postmeta` VALUES (198,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2021/05/estrella2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"estrella2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"estrella2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"estrella2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"estrella2-350x400.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:21:\"estrella2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (199,31,'_thumbnail_id','64');
INSERT INTO `wp_postmeta` VALUES (200,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (201,67,'_edit_lock','1622478782:1');
INSERT INTO `wp_postmeta` VALUES (202,72,'_wp_attached_file','2021/05/chaman-2.jpg');
INSERT INTO `wp_postmeta` VALUES (203,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:650;s:6:\"height\";i:354;s:4:\"file\";s:20:\"2021/05/chaman-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"chaman-2-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"chaman-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"chaman-2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"chaman-2-350x354.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"chaman-2-400x354.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (204,25,'imagen_hero','72');
INSERT INTO `wp_postmeta` VALUES (205,25,'_imagen_hero','field_60b0c922206cb');
INSERT INTO `wp_postmeta` VALUES (206,25,'encabezado_hero','Maestro Isidro');
INSERT INTO `wp_postmeta` VALUES (207,25,'_encabezado_hero','field_60b0c95a206cc');
INSERT INTO `wp_postmeta` VALUES (208,25,'contenido_hero','Cumple tus mayores deseos');
INSERT INTO `wp_postmeta` VALUES (209,25,'_contenido_hero','field_60b0c974206cd');
INSERT INTO `wp_postmeta` VALUES (210,73,'imagen_hero','72');
INSERT INTO `wp_postmeta` VALUES (211,73,'_imagen_hero','field_60b0c922206cb');
INSERT INTO `wp_postmeta` VALUES (212,73,'encabezado_hero','Maestro Isidro');
INSERT INTO `wp_postmeta` VALUES (213,73,'_encabezado_hero','field_60b0c95a206cc');
INSERT INTO `wp_postmeta` VALUES (214,73,'contenido_hero','Cumple tus mayores deseos');
INSERT INTO `wp_postmeta` VALUES (215,73,'_contenido_hero','field_60b0c974206cd');
INSERT INTO `wp_postmeta` VALUES (216,25,'encabezado_bienvenida','Bienvenidos');
INSERT INTO `wp_postmeta` VALUES (217,25,'_encabezado_bienvenida','field_60b0cd04ecc02');
INSERT INTO `wp_postmeta` VALUES (218,25,'texto_bienvenida','A la transformación de tu vida y todo lo que te rodea.');
INSERT INTO `wp_postmeta` VALUES (219,25,'_texto_bienvenida','field_60b0cd2decc03');
INSERT INTO `wp_postmeta` VALUES (220,77,'imagen_hero','72');
INSERT INTO `wp_postmeta` VALUES (221,77,'_imagen_hero','field_60b0c922206cb');
INSERT INTO `wp_postmeta` VALUES (222,77,'encabezado_hero','Maestro Isidro');
INSERT INTO `wp_postmeta` VALUES (223,77,'_encabezado_hero','field_60b0c95a206cc');
INSERT INTO `wp_postmeta` VALUES (224,77,'contenido_hero','Cumple tus mayores deseos');
INSERT INTO `wp_postmeta` VALUES (225,77,'_contenido_hero','field_60b0c974206cd');
INSERT INTO `wp_postmeta` VALUES (226,77,'encabezado_bienvenida','Bienvenidos');
INSERT INTO `wp_postmeta` VALUES (227,77,'_encabezado_bienvenida','field_60b0cd04ecc02');
INSERT INTO `wp_postmeta` VALUES (228,77,'texto_bienvenida','Lorem ipsum jajjajajskkslldsksksk');
INSERT INTO `wp_postmeta` VALUES (229,77,'_texto_bienvenida','field_60b0cd2decc03');
INSERT INTO `wp_postmeta` VALUES (230,91,'_wp_attached_file','2021/05/magiablanca.jpg');
INSERT INTO `wp_postmeta` VALUES (231,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2021/05/magiablanca.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"magiablanca-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"magiablanca-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"magiablanca-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"magiablanca-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"magiablanca-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"magiablanca-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (232,92,'_wp_attached_file','2021/05/magianegra.jpg');
INSERT INTO `wp_postmeta` VALUES (233,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2021/05/magianegra.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"magianegra-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"magianegra-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"magianegra-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:22:\"magianegra-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:22:\"magianegra-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:22:\"magianegra-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (234,93,'_wp_attached_file','2021/05/magiaroja.jpg');
INSERT INTO `wp_postmeta` VALUES (235,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2021/05/magiaroja.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"magiaroja-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"magiaroja-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"magiaroja-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"magiaroja-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:21:\"magiaroja-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:21:\"magiaroja-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (236,94,'_wp_attached_file','2021/05/magiarosa.jpg');
INSERT INTO `wp_postmeta` VALUES (237,94,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2021/05/magiarosa.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"magiarosa-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"magiarosa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"magiarosa-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"magiarosa-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:21:\"magiarosa-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:21:\"magiarosa-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (238,25,'area_1_area_imagen','91');
INSERT INTO `wp_postmeta` VALUES (239,25,'_area_1_area_imagen','field_60b0ce71d841f');
INSERT INTO `wp_postmeta` VALUES (240,25,'area_1_area_texto','Magia Blanca');
INSERT INTO `wp_postmeta` VALUES (241,25,'_area_1_area_texto','field_60b0cee3d8420');
INSERT INTO `wp_postmeta` VALUES (242,25,'area_1','');
INSERT INTO `wp_postmeta` VALUES (243,25,'_area_1','field_60b0ce2dd841e');
INSERT INTO `wp_postmeta` VALUES (244,25,'area_2_area_imagen','92');
INSERT INTO `wp_postmeta` VALUES (245,25,'_area_2_area_imagen','field_60b0cf0fd8422');
INSERT INTO `wp_postmeta` VALUES (246,25,'area_2_area_texto','Magia Negra');
INSERT INTO `wp_postmeta` VALUES (247,25,'_area_2_area_texto','field_60b0cf0fd8423');
INSERT INTO `wp_postmeta` VALUES (248,25,'area_2','');
INSERT INTO `wp_postmeta` VALUES (249,25,'_area_2','field_60b0cf0fd8421');
INSERT INTO `wp_postmeta` VALUES (250,25,'area_3_area_imagen','93');
INSERT INTO `wp_postmeta` VALUES (251,25,'_area_3_area_imagen','field_60b0cf16d8425');
INSERT INTO `wp_postmeta` VALUES (252,25,'area_3_area_texto','Magia Roja');
INSERT INTO `wp_postmeta` VALUES (253,25,'_area_3_area_texto','field_60b0cf16d8426');
INSERT INTO `wp_postmeta` VALUES (254,25,'area_3','');
INSERT INTO `wp_postmeta` VALUES (255,25,'_area_3','field_60b0cf16d8424');
INSERT INTO `wp_postmeta` VALUES (256,25,'area_4_area_imagen','94');
INSERT INTO `wp_postmeta` VALUES (257,25,'_area_4_area_imagen','field_60b0cf1fd8428');
INSERT INTO `wp_postmeta` VALUES (258,25,'area_4_area_texto','Magia Rosa');
INSERT INTO `wp_postmeta` VALUES (259,25,'_area_4_area_texto','field_60b0cf1fd8429');
INSERT INTO `wp_postmeta` VALUES (260,25,'area_4','');
INSERT INTO `wp_postmeta` VALUES (261,25,'_area_4','field_60b0cf1fd8427');
INSERT INTO `wp_postmeta` VALUES (262,95,'imagen_hero','72');
INSERT INTO `wp_postmeta` VALUES (263,95,'_imagen_hero','field_60b0c922206cb');
INSERT INTO `wp_postmeta` VALUES (264,95,'encabezado_hero','Maestro Isidro');
INSERT INTO `wp_postmeta` VALUES (265,95,'_encabezado_hero','field_60b0c95a206cc');
INSERT INTO `wp_postmeta` VALUES (266,95,'contenido_hero','Cumple tus mayores deseos');
INSERT INTO `wp_postmeta` VALUES (267,95,'_contenido_hero','field_60b0c974206cd');
INSERT INTO `wp_postmeta` VALUES (268,95,'encabezado_bienvenida','Bienvenidos');
INSERT INTO `wp_postmeta` VALUES (269,95,'_encabezado_bienvenida','field_60b0cd04ecc02');
INSERT INTO `wp_postmeta` VALUES (270,95,'texto_bienvenida','Lorem ipsum jajjajajskkslldsksksk');
INSERT INTO `wp_postmeta` VALUES (271,95,'_texto_bienvenida','field_60b0cd2decc03');
INSERT INTO `wp_postmeta` VALUES (272,95,'area_1_area_imagen','91');
INSERT INTO `wp_postmeta` VALUES (273,95,'_area_1_area_imagen','field_60b0ce71d841f');
INSERT INTO `wp_postmeta` VALUES (274,95,'area_1_area_texto','Magia Blanca');
INSERT INTO `wp_postmeta` VALUES (275,95,'_area_1_area_texto','field_60b0cee3d8420');
INSERT INTO `wp_postmeta` VALUES (276,95,'area_1','');
INSERT INTO `wp_postmeta` VALUES (277,95,'_area_1','field_60b0ce2dd841e');
INSERT INTO `wp_postmeta` VALUES (278,95,'area_2_area_imagen','92');
INSERT INTO `wp_postmeta` VALUES (279,95,'_area_2_area_imagen','field_60b0cf0fd8422');
INSERT INTO `wp_postmeta` VALUES (280,95,'area_2_area_texto','Magia Negra');
INSERT INTO `wp_postmeta` VALUES (281,95,'_area_2_area_texto','field_60b0cf0fd8423');
INSERT INTO `wp_postmeta` VALUES (282,95,'area_2','');
INSERT INTO `wp_postmeta` VALUES (283,95,'_area_2','field_60b0cf0fd8421');
INSERT INTO `wp_postmeta` VALUES (284,95,'area_3_area_imagen','93');
INSERT INTO `wp_postmeta` VALUES (285,95,'_area_3_area_imagen','field_60b0cf16d8425');
INSERT INTO `wp_postmeta` VALUES (286,95,'area_3_area_texto','Magia Roja');
INSERT INTO `wp_postmeta` VALUES (287,95,'_area_3_area_texto','field_60b0cf16d8426');
INSERT INTO `wp_postmeta` VALUES (288,95,'area_3','');
INSERT INTO `wp_postmeta` VALUES (289,95,'_area_3','field_60b0cf16d8424');
INSERT INTO `wp_postmeta` VALUES (290,95,'area_4_area_imagen','94');
INSERT INTO `wp_postmeta` VALUES (291,95,'_area_4_area_imagen','field_60b0cf1fd8428');
INSERT INTO `wp_postmeta` VALUES (292,95,'area_4_area_texto','Magia Rosa');
INSERT INTO `wp_postmeta` VALUES (293,95,'_area_4_area_texto','field_60b0cf1fd8429');
INSERT INTO `wp_postmeta` VALUES (294,95,'area_4','');
INSERT INTO `wp_postmeta` VALUES (295,95,'_area_4','field_60b0cf1fd8427');
INSERT INTO `wp_postmeta` VALUES (296,96,'imagen_hero','72');
INSERT INTO `wp_postmeta` VALUES (297,96,'_imagen_hero','field_60b0c922206cb');
INSERT INTO `wp_postmeta` VALUES (298,96,'encabezado_hero','Maestro Isidro');
INSERT INTO `wp_postmeta` VALUES (299,96,'_encabezado_hero','field_60b0c95a206cc');
INSERT INTO `wp_postmeta` VALUES (300,96,'contenido_hero','Cumple tus mayores deseos');
INSERT INTO `wp_postmeta` VALUES (301,96,'_contenido_hero','field_60b0c974206cd');
INSERT INTO `wp_postmeta` VALUES (302,96,'encabezado_bienvenida','Bienvenidos');
INSERT INTO `wp_postmeta` VALUES (303,96,'_encabezado_bienvenida','field_60b0cd04ecc02');
INSERT INTO `wp_postmeta` VALUES (304,96,'texto_bienvenida','A la transformación de tu vida y todo lo que te rodea.');
INSERT INTO `wp_postmeta` VALUES (305,96,'_texto_bienvenida','field_60b0cd2decc03');
INSERT INTO `wp_postmeta` VALUES (306,96,'area_1_area_imagen','91');
INSERT INTO `wp_postmeta` VALUES (307,96,'_area_1_area_imagen','field_60b0ce71d841f');
INSERT INTO `wp_postmeta` VALUES (308,96,'area_1_area_texto','Magia Blanca');
INSERT INTO `wp_postmeta` VALUES (309,96,'_area_1_area_texto','field_60b0cee3d8420');
INSERT INTO `wp_postmeta` VALUES (310,96,'area_1','');
INSERT INTO `wp_postmeta` VALUES (311,96,'_area_1','field_60b0ce2dd841e');
INSERT INTO `wp_postmeta` VALUES (312,96,'area_2_area_imagen','92');
INSERT INTO `wp_postmeta` VALUES (313,96,'_area_2_area_imagen','field_60b0cf0fd8422');
INSERT INTO `wp_postmeta` VALUES (314,96,'area_2_area_texto','Magia Negra');
INSERT INTO `wp_postmeta` VALUES (315,96,'_area_2_area_texto','field_60b0cf0fd8423');
INSERT INTO `wp_postmeta` VALUES (316,96,'area_2','');
INSERT INTO `wp_postmeta` VALUES (317,96,'_area_2','field_60b0cf0fd8421');
INSERT INTO `wp_postmeta` VALUES (318,96,'area_3_area_imagen','93');
INSERT INTO `wp_postmeta` VALUES (319,96,'_area_3_area_imagen','field_60b0cf16d8425');
INSERT INTO `wp_postmeta` VALUES (320,96,'area_3_area_texto','Magia Roja');
INSERT INTO `wp_postmeta` VALUES (321,96,'_area_3_area_texto','field_60b0cf16d8426');
INSERT INTO `wp_postmeta` VALUES (322,96,'area_3','');
INSERT INTO `wp_postmeta` VALUES (323,96,'_area_3','field_60b0cf16d8424');
INSERT INTO `wp_postmeta` VALUES (324,96,'area_4_area_imagen','94');
INSERT INTO `wp_postmeta` VALUES (325,96,'_area_4_area_imagen','field_60b0cf1fd8428');
INSERT INTO `wp_postmeta` VALUES (326,96,'area_4_area_texto','Magia Rosa');
INSERT INTO `wp_postmeta` VALUES (327,96,'_area_4_area_texto','field_60b0cf1fd8429');
INSERT INTO `wp_postmeta` VALUES (328,96,'area_4','');
INSERT INTO `wp_postmeta` VALUES (329,96,'_area_4','field_60b0cf1fd8427');
INSERT INTO `wp_postmeta` VALUES (330,63,'informacion_inicio','Infortunio-Doblegar-Amarrar');
INSERT INTO `wp_postmeta` VALUES (331,63,'_informacion_inicio','field_60b0c439ad4f8');
INSERT INTO `wp_postmeta` VALUES (332,62,'informacion_inicio','Destrucción-Mala Suerte');
INSERT INTO `wp_postmeta` VALUES (333,62,'_informacion_inicio','field_60b0c439ad4f8');
INSERT INTO `wp_postmeta` VALUES (334,61,'informacion_inicio','Protección-Bendición-Resistencia');
INSERT INTO `wp_postmeta` VALUES (335,61,'_informacion_inicio','field_60b0c439ad4f8');
INSERT INTO `wp_postmeta` VALUES (336,60,'informacion_inicio','Limpieza Espiritual- Buena Suerte');
INSERT INTO `wp_postmeta` VALUES (337,60,'_informacion_inicio','field_60b0c439ad4f8');
INSERT INTO `wp_postmeta` VALUES (338,59,'informacion_inicio','Fortuna-Riqueza-Dinero');
INSERT INTO `wp_postmeta` VALUES (339,59,'_informacion_inicio','field_60b0c439ad4f8');
INSERT INTO `wp_postmeta` VALUES (340,51,'informacion_inicio','Amor-Sexualidad');
INSERT INTO `wp_postmeta` VALUES (341,51,'_informacion_inicio','field_60b0c439ad4f8');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-05-27 08:27:01','2021-05-27 08:27:01','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-05-27 08:27:01','2021-05-27 08:27:01','',0,'http://afrodita.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (5,1,'2021-05-27 09:07:59','2021-05-27 09:07:59','Yo Ana Velásquez estaba pasado por una mala situación amorosa en la cual presentía la precedencia de otra persona en la relacion. Mi relacion se desmoronaba cada día que pasaba porque mi esposo no me deseaba y me repudiaba hasta el punto que me despreciaba. Decide buscar ayuda y encontré al maestro Isidro el cual soluciono mi problema inmediatamente haciendo todo lo que el maestro me pidió y con su ayuda pude lograr recuperar mi hogar.','Ana Velásquez','','publish','closed','closed','','ana-velasquez','','','2021-06-01 00:17:49','2021-06-01 00:17:49','',0,'http://afrodita.local/?post_type=testimoniales&#038;p=5',0,'testimoniales','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-05-27 09:07:34','2021-05-27 09:07:34','','testigo1','','inherit','open','closed','','testigo1','','','2021-05-27 09:07:34','2021-05-27 09:07:34','',5,'http://afrodita.local/wp-content/uploads/2021/05/testigo1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-05-27 09:10:13','2021-05-27 09:10:13','','Santa Muerte','','publish','closed','closed','','santa-muerte','','','2021-05-27 09:10:13','2021-05-27 09:10:13','',0,'http://afrodita.local/?post_type=instructores&#038;p=8',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-05-27 09:10:02','2021-05-27 09:10:02','','santamuerte','','inherit','open','closed','','santamuerte','','','2021-05-27 09:10:02','2021-05-27 09:10:02','',8,'http://afrodita.local/wp-content/uploads/2021/05/santamuerte.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-05-27 09:10:49','2021-05-27 09:10:49','','Santa Barbara','','publish','closed','closed','','santa-barbara','','','2021-05-27 09:10:49','2021-05-27 09:10:49','',0,'http://afrodita.local/?post_type=instructores&#038;p=10',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-05-27 09:10:41','2021-05-27 09:10:41','','Santabarbara','','inherit','open','closed','','santabarbara','','','2021-05-27 09:10:41','2021-05-27 09:10:41','',10,'http://afrodita.local/wp-content/uploads/2021/05/Santabarbara.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-05-27 09:11:58','2021-05-27 09:11:58','','Chango','','publish','closed','closed','','chango','','','2021-05-27 09:11:58','2021-05-27 09:11:58','',0,'http://afrodita.local/?post_type=instructores&#038;p=12',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-05-27 09:11:48','2021-05-27 09:11:48','','chango','','inherit','open','closed','','chango','','','2021-05-27 09:11:48','2021-05-27 09:11:48','',12,'http://afrodita.local/wp-content/uploads/2021/05/chango.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-05-27 09:12:34','2021-05-27 09:12:34','','San Miguel Arcangel','','publish','closed','closed','','san-miguel-arcangel','','','2021-05-27 09:12:34','2021-05-27 09:12:34','',0,'http://afrodita.local/?post_type=instructores&#038;p=14',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-05-27 09:12:23','2021-05-27 09:12:23','','g-arcangel','','inherit','open','closed','','g-arcangel','','','2021-05-27 09:12:23','2021-05-27 09:12:23','',14,'http://afrodita.local/wp-content/uploads/2021/05/g-arcangel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-05-27 09:21:49','2021-05-27 09:21:49','Yo José Mejia por aproximadamente 4 años estuve tratando de conseguir un buen empleo y siempre ocurría algo que hacia que no fuera posible además de esto mi economía empeoraba  y las inversiones que realizaba siempre terminaban mal. Un amigo que era una persona prospera a la cual  decide preguntarle que cual era el secreto de su prosperidad y me conto que atraves del maestro Isidro soluciono su vida económica, decide consultarlo y me diagnostico una maldición realizada por un examigo con el cual tuve problemas en el pasado. Gracias a la ayuda del maestro Isidro pude recuperar mi economía y hoy soy un hombre nuevo, bendecido y afortunado.','Jose Mejia','','publish','closed','closed','','jose-mejia','','','2021-06-01 00:24:08','2021-06-01 00:24:08','',0,'http://afrodita.local/?post_type=testimoniales&#038;p=19',0,'testimoniales','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-05-27 09:22:07','2021-05-27 09:22:07','','Testigo4','','inherit','open','closed','','testigo4','','','2021-05-27 09:22:07','2021-05-27 09:22:07','',19,'http://afrodita.local/wp-content/uploads/2021/05/Testigo4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-05-27 09:22:48','2021-05-27 09:22:48','Yo María Atehortúa por mucho tiempo venia con una tristeza muy profunda a la cual no le encontraba una explicación lógica por ello las personas que me rodeaban se iban alejando poco a poco hasta al punto en el que me quede sola. Aun con mi tristeza decide buscar ayuda medica pero no me dieron solución decide buscar una alternativa espiritual y a si fue que encontré al maestro Isidro el cual me realizo un riego para limpiar mi espíritu que tenia una acumulación negativa de energía mala volviendo mi aura nuevamente bella y feliz. Actualmente mi vida social esta renovada y yo soy plenamente feliz.','María Atehortúa','','publish','closed','closed','','maria-atehortua','','','2021-06-01 00:29:56','2021-06-01 00:29:56','',0,'http://afrodita.local/?post_type=testimoniales&#038;p=21',0,'testimoniales','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-05-27 09:22:42','2021-05-27 09:22:42','','testigo2','','inherit','open','closed','','testigo2','','','2021-05-27 09:22:42','2021-05-27 09:22:42','',21,'http://afrodita.local/wp-content/uploads/2021/05/testigo2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-05-27 09:23:24','2021-05-27 09:23:24','Yo Hernán Osorio fui víctima de la infidelidad por parte de una ex novia. La cual me dejó mal emocionalmente, económicamente y hasta físicamente. Después de esto no tenía vida propia y me sentía pisoteado y humillado por parte de mi exnovia y la persona que entró en nuestra relación. Debido a esto quise pedir ayuda para obtener una especie de venganza y así obtener un poco de tranquilidad. Gracias al maestro Isidro y su labor en la relación de mi exnovia es un caos ya que no prosperan y son infelices ambos.','Hernán Osorio','','publish','closed','closed','','carlos-aguirre','','','2021-06-01 00:37:09','2021-06-01 00:37:09','',0,'http://afrodita.local/?post_type=testimoniales&#038;p=23',0,'testimoniales','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-05-27 09:23:17','2021-05-27 09:23:17','','testigo3','','inherit','open','closed','','testigo3','','','2021-05-27 09:23:17','2021-05-27 09:23:17','',23,'http://afrodita.local/wp-content/uploads/2021/05/testigo3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-05-27 09:26:06','2021-05-27 09:26:06','','Inicio','','publish','closed','closed','','inicio','','','2021-05-31 16:34:40','2021-05-31 16:34:40','',0,'http://afrodita.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-05-27 09:26:06','2021-05-27 09:26:06','','Inicio','','inherit','closed','closed','','25-revision-v1','','','2021-05-27 09:26:06','2021-05-27 09:26:06','',25,'http://afrodita.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-05-27 09:29:53','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2021-05-27 09:29:53','0000-00-00 00:00:00','',0,'http://afrodita.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-05-27 09:29:53','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-05-27 09:29:53','0000-00-00 00:00:00','',0,'http://afrodita.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-05-27 09:31:06','2021-05-27 09:31:06','<!-- wp:paragraph {\"dropCap\":true,\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-drop-cap has-cyan-bluish-gray-background-color has-background\"><strong><em>Soy el Maestro Isidro un ser espiritual con gran conocimiento en las artes mágicas con diferentes entidades espirituales las cuales he conocido a lo largo de mi vida viajando por todo el continente americano para poder obtener el poder espiritual que otorgan todos estos seres universales. He tenido experiencia en Latinoamérica con el Arcángel San Miguel protector de los hijos de Dios también he conocido la chamaneria en paises como Venezuela, Ecuador Bolivia y Perú en el cual soy especialista en santería. He viajado a México a conocer las artes mágicas oscuras de la Santa Muerte para destruir o perjudicar personas de diferentes lugares y e obtenido conocimientos ancestrales en las islas caribeñas como Cuba, Puerto Rico y Republica Dominicana trabajando con entidades como Santa Barbara y Chango para beneficiar a cualquier persona que lo necesite. Si quieres que te ayude  en tu proceso no importa cual sea comunícate por medio del CONTACTO y/o el numero de WHATSAPP y te daremos pronta solución.</em></strong></p>\n<!-- /wp:paragraph -->','Nosotros','','publish','closed','closed','','nosotros','','','2021-06-01 00:52:07','2021-06-01 00:52:07','',0,'http://afrodita.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-05-27 09:31:06','2021-05-27 09:31:06','','Nosotros','','inherit','closed','closed','','31-revision-v1','','','2021-05-27 09:31:06','2021-05-27 09:31:06','',31,'http://afrodita.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-05-27 09:31:23','2021-05-27 09:31:23','','Servicios','','publish','closed','closed','','servicios','','','2021-05-27 09:31:23','2021-05-27 09:31:23','',0,'http://afrodita.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-05-27 09:31:23','2021-05-27 09:31:23','','Servicios','','inherit','closed','closed','','33-revision-v1','','','2021-05-27 09:31:23','2021-05-27 09:31:23','',33,'http://afrodita.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-05-27 09:32:24','2021-05-27 09:32:24','<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><em><strong>> </strong>Este sitio va dirigido exclusivamente a mayores de edad (18 años).<br><strong>> </strong>El costo de la llamada depende del operador que la persona utilice.<br><strong>> </strong>De acuerdo con las legislaciones vigentes, se establece que las predicciones, videncias psíquicas, lecturas de cartas y hechizos tienen fines de entretenimiento y ayuda personal.<br><strong>> </strong>Estos servicios no sustituirán la debida atención médica, legal, financiera, psicológica y psiquiátrica.<br><strong>> </strong>Todas las personas son diferentes, por tanto los resultados pueden variar de una persona a otra.<br><strong>> </strong>Los resultados ante cada caso son probables y no existe evidencia científica o eficacia de los mismos.<br><strong>> </strong>El costo de la consulta puede variar por el tipo de servicio que solicite y el tiempo que tome realizarlo.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-cyan-bluish-gray-background-color has-text-color has-background\"><strong><em>Renuncia de Responsabilidad:</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-cyan-bluish-gray-background-color has-text-color has-background\"><em>Los resultados de nuestros servicios pueden variar de una persona a otra y no hay garantía bajo la cual se pueda asegurar 100% el éxito utilizando nuestros servicios.<br>El uso de este sitio está reservado exclusivamente para las personas con mayoría legal en su país de residencia, y que dispongan de la capacidad jurídica para contratar y utilizar un sitio Web.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><strong><em>Costo del servicio:</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><em><strong>¿Se cobra la llamada?:</strong> el tiempo de la llamada en la que asesoramos y ayudamos a las personas no tiene ningún costo por parte nuestra el único costo lo tendrá la persona con su operador de telefonía local por el tiempo al aire de la llamada realizada. y no hay ningún costo extra por parte de ese operador.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><strong><em>¿Cuándo y cómo se paga?:</em></strong><em>En común acuerdo con el cliente, dependiendo del tipo de material que va desde 300 USD a 1500 USD Dólares.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><strong><em>¿Métodos y Formas de Pago?: </em></strong><em>Por medio de Western Union.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><em><strong>Así aceptas que los servicios que presto los encargas por que así lo deseas y estarán sujetos a tu propia voluntad.</strong></em></p>\n<!-- /wp:paragraph -->','Términos de Uso','','publish','closed','closed','','terminos-de-uso','','','2021-06-01 01:11:51','2021-06-01 01:11:51','',0,'http://afrodita.local/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-05-27 09:32:24','2021-05-27 09:32:24','','Términos de Uso','','inherit','closed','closed','','35-revision-v1','','','2021-05-27 09:32:24','2021-05-27 09:32:24','',35,'http://afrodita.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-05-27 09:33:12','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2021-05-27 09:33:12','0000-00-00 00:00:00','',0,'http://afrodita.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-05-28 10:19:01','2021-05-27 09:34:03',' ','','','publish','closed','closed','','41','','','2021-05-28 10:19:01','2021-05-28 10:19:01','',0,'http://afrodita.local/?p=41',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-05-28 10:19:02','2021-05-27 09:34:03',' ','','','publish','closed','closed','','42','','','2021-05-28 10:19:02','2021-05-28 10:19:02','',0,'http://afrodita.local/?p=42',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-05-28 10:19:02','2021-05-27 09:34:03',' ','','','publish','closed','closed','','43','','','2021-05-28 10:19:02','2021-05-28 10:19:02','',0,'http://afrodita.local/?p=43',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-05-28 10:19:02','2021-05-27 09:34:03',' ','','','publish','closed','closed','','44','','','2021-05-28 10:19:02','2021-05-28 10:19:02','',0,'http://afrodita.local/?p=44',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-05-27 09:49:46','2021-05-27 09:49:46','<!-- wp:contact-form-7/contact-form-selector {\"id\":47,\"title\":\"Formulario de contacto 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"47\" title=\"Formulario de contacto 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->','Contacto','','publish','closed','closed','','contacto','','','2021-05-28 10:34:17','2021-05-28 10:34:17','',0,'http://afrodita.local/?page_id=45',0,'page','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-05-27 09:49:46','2021-05-27 09:49:46','','Contacto','','inherit','closed','closed','','45-revision-v1','','','2021-05-27 09:49:46','2021-05-27 09:49:46','',45,'http://afrodita.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-05-28 10:18:32','2021-05-28 10:18:32','<label> Tu nombre\r\n    [text* your-name] </label>\r\n\r\n<label> Tu correo electrónico\r\n    [email* your-email] </label>\r\n\r\n<label> Asunto\r\n    [text* your-subject] </label>\r\n\r\n<label> Tu mensaje (opcional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\n[_site_title] «[your-subject]»\n[_site_title] <wordpress@afrodita.local>\n[_site_admin_email]\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] «[your-subject]»\n[_site_title] <wordpress@afrodita.local>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisarlo e inténtarlo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nHubo un error desconocido al subir el archivo.\nNo estás autorizado a subir archivos de este tipo.\nEl archivo es demasiado grande.\nOcurrió un error al subir el archivo.\nEl formato de fecha no es correcto.\nLa fecha es anterior a la permitida.\nLa fecha es posterior a la última permitida.\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.','Formulario de contacto 1','','publish','closed','closed','','formulario-de-contacto-1','','','2021-05-28 10:27:36','2021-05-28 10:27:36','',0,'http://afrodita.local/?post_type=wpcf7_contact_form&#038;p=47',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-05-28 10:19:03','2021-05-28 10:18:55',' ','','','publish','closed','closed','','48','','','2021-05-28 10:19:03','2021-05-28 10:19:03','',0,'http://afrodita.local/?p=48',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-05-28 10:22:38','2021-05-28 10:22:38','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"afrodita_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Clases','clases','publish','closed','closed','','group_60b0c421283eb','','','2021-05-31 16:36:42','2021-05-31 16:36:42','',0,'http://afrodita.local/?post_type=acf-field-group&#038;p=49',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-05-28 10:22:38','2021-05-28 10:22:38','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Agregar información de los servicios\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','información inicio','informacion_inicio','publish','closed','closed','','field_60b0c439ad4f8','','','2021-05-31 16:35:44','2021-05-31 16:35:44','',49,'http://afrodita.local/?post_type=acf-field&#038;p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-05-28 10:23:52','2021-05-28 10:23:52','Los amarres son para la sexualidad y el amor como los siguientes casos:\r\n<ol>\r\n 	<li>Te ayudaremos a que esa persona que tanto amas solo quiera estar contigo y al momento de tratar de estar con otra persona no funcione sexualmente.</li>\r\n 	<li>Te ayudaremos a que esa persona que ya no esta contigo vuelva rendido a tus pies y no quiera volver a irse nunca mas.</li>\r\n 	<li>Haremos que esa persona que te engaño solo pueda pensar en ti</li>\r\n 	<li>Estos trabajos se realizan para cualquier tipo de sexo (Homosexual-Lesbiana-Heterosexuales)</li>\r\n</ol>','Amarres','','publish','closed','closed','','amarres','','','2021-06-01 00:11:25','2021-06-01 00:11:25','',0,'http://afrodita.local/?post_type=afrodita_clases&#038;p=51',0,'afrodita_clases','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-05-28 10:23:41','2021-05-28 10:23:41','','amarres2','','inherit','open','closed','','amarres2','','','2021-05-28 10:23:41','2021-05-28 10:23:41','',51,'http://afrodita.local/wp-content/uploads/2021/05/amarres2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-05-28 10:23:42','2021-05-28 10:23:42','','chaman','','inherit','open','closed','','chaman','','','2021-05-28 10:23:42','2021-05-28 10:23:42','',51,'http://afrodita.local/wp-content/uploads/2021/05/chaman-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-05-28 10:23:42','2021-05-28 10:23:42','','contra3','','inherit','open','closed','','contra3','','','2021-05-28 10:23:42','2021-05-28 10:23:42','',51,'http://afrodita.local/wp-content/uploads/2021/05/contra3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-05-28 10:23:43','2021-05-28 10:23:43','','maldiciones','','inherit','open','closed','','maldiciones','','','2021-05-28 10:23:43','2021-05-28 10:23:43','',51,'http://afrodita.local/wp-content/uploads/2021/05/maldiciones.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-05-28 10:23:44','2021-05-28 10:23:44','','prosperidad','','inherit','open','closed','','prosperidad','','','2021-05-28 10:23:44','2021-05-28 10:23:44','',51,'http://afrodita.local/wp-content/uploads/2021/05/prosperidad.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-05-28 10:23:45','2021-05-28 10:23:45','','riegos','','inherit','open','closed','','riegos','','','2021-05-28 10:23:45','2021-05-28 10:23:45','',51,'http://afrodita.local/wp-content/uploads/2021/05/riegos.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-05-28 10:23:45','2021-05-28 10:23:45','','santeria','','inherit','open','closed','','santeria','','','2021-05-28 10:23:45','2021-05-28 10:23:45','',51,'http://afrodita.local/wp-content/uploads/2021/05/santeria.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-05-28 10:24:55','2021-05-28 10:24:55','La Prosperidad se usa en los siguientes casos:\r\n<ol>\r\n 	<li>Haremos que ese negocio que estas esperando se te de y sea satisfactorio.</li>\r\n 	<li>Haremos que ese trabajo que anhelas lo consigas rápidamente.</li>\r\n 	<li>Volveremos a reunir toda tu familia en armonía y felicidad.</li>\r\n 	<li>Haremos que tu suerte sea muy grande generando riquezas inesperadas.</li>\r\n</ol>','Prosperidad','','publish','closed','closed','','prosperidad','','','2021-06-01 00:07:12','2021-06-01 00:07:12','',0,'http://afrodita.local/?post_type=afrodita_clases&#038;p=59',0,'afrodita_clases','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-05-28 10:25:12','2021-05-28 10:25:12','Los riegos se usan para:\r\n<ol>\r\n 	<li>Trataremos esa enfermedad que te atormenta teniendo una solución mas eficaz que la medicina tradicional.</li>\r\n 	<li>Limpiaremos tu aura para que puedas atraer buenas energías y buenos negocios.</li>\r\n 	<li>Haremos que tus negocios o tus proyectos estén protegidos con buena energía.</li>\r\n</ol>','Riegos','','publish','closed','closed','','riegos','','','2021-06-01 00:03:40','2021-06-01 00:03:40','',0,'http://afrodita.local/?post_type=afrodita_clases&#038;p=60',0,'afrodita_clases','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-05-28 10:25:57','2021-05-28 10:25:57','La prosperidad se usa para los siguientes casos:\r\n<ol>\r\n 	<li>Si consideras que la mala suerte en lo económico te esta pasando debido a un maleficio te daremos solución.</li>\r\n 	<li>Si consideras que te encuentras en peligro de muerte o traición te lo solucionaremos.</li>\r\n 	<li>Si piensas que nada te funciona en los negocios por envidias te ayudaremos a ti y a tu negocio para que sea prospero.</li>\r\n 	<li>Si estas sintiendo presencias que te agobian y no te dejan tranquilo te ayudaremos.</li>\r\n</ol>','Contras','','publish','closed','closed','','contras','','','2021-06-01 00:07:31','2021-06-01 00:07:31','',0,'http://afrodita.local/?post_type=afrodita_clases&#038;p=61',0,'afrodita_clases','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-05-28 10:26:17','2021-05-28 10:26:17','Las Maldiciones se usan para:\r\n<ol>\r\n 	<li>Que una expareja sea infeliz emocionalmente</li>\r\n 	<li>Que esa persona que te hizo daño sufra y pierda su felicidad.</li>\r\n 	<li>Que esa persona que se burlo de ti pierda su economía y sea incapaz de recuperarla.</li>\r\n 	<li>Que esa persona a la que tanto odias tenga un deterioro físico, emocional o económico.</li>\r\n</ol>','Maldiciones','','publish','closed','closed','','maldiciones','','','2021-06-01 00:04:07','2021-06-01 00:04:07','',0,'http://afrodita.local/?post_type=afrodita_clases&#038;p=62',0,'afrodita_clases','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-05-28 10:26:41','2021-05-28 10:26:41','La Santería se usa para los siguientes casos:\r\n<ol>\r\n 	<li>Tendremos conexión con aquella persona que ya no esta en este plano existencial a la cual le quiera comunicar algo.</li>\r\n 	<li>Te diremos quien ha estado tratando de visitarte a pesar de no este en esta vida.</li>\r\n 	<li>Te protegeremos de los malos espíritus y los alejaremos.</li>\r\n 	<li>Haremos rituales potentes que permitirán amarrar o doblegar cualquier persona.</li>\r\n</ol>','Santeria','','publish','closed','closed','','santeria','','','2021-06-01 00:03:50','2021-06-01 00:03:50','',0,'http://afrodita.local/?post_type=afrodita_clases&#038;p=63',0,'afrodita_clases','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-05-28 10:31:04','2021-05-28 10:31:04','','estrella2','','inherit','open','closed','','estrella2','','','2021-05-28 10:31:04','2021-05-28 10:31:04','',31,'http://afrodita.local/wp-content/uploads/2021/05/estrella2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-05-28 10:34:17','2021-05-28 10:34:17','<!-- wp:contact-form-7/contact-form-selector {\"id\":47,\"title\":\"Formulario de contacto 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"47\" title=\"Formulario de contacto 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->','Contacto','','inherit','closed','closed','','45-revision-v1','','','2021-05-28 10:34:17','2021-05-28 10:34:17','',45,'http://afrodita.local/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-05-28 10:45:18','2021-05-28 10:45:18','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"25\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Inicio','inicio','publish','closed','closed','','group_60b0c8c104ef4','','','2021-05-28 11:08:24','2021-05-28 11:08:24','',0,'http://afrodita.local/?post_type=acf-field-group&#038;p=67',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-05-28 10:45:18','2021-05-28 10:45:18','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Hero','hero_index','publish','closed','closed','','field_60b0c8df206ca','','','2021-05-28 10:45:18','2021-05-28 10:45:18','',67,'http://afrodita.local/?post_type=acf-field&p=68',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-05-28 10:45:18','2021-05-28 10:45:18','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen Hero','imagen_hero','publish','closed','closed','','field_60b0c922206cb','','','2021-05-28 10:45:18','2021-05-28 10:45:18','',67,'http://afrodita.local/?post_type=acf-field&p=69',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-05-28 10:45:19','2021-05-28 10:45:19','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Encabezado Hero','encabezado_hero','publish','closed','closed','','field_60b0c95a206cc','','','2021-05-28 10:45:19','2021-05-28 10:45:19','',67,'http://afrodita.local/?post_type=acf-field&p=70',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-05-28 10:45:19','2021-05-28 10:45:19','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Contenido Hero','contenido_hero','publish','closed','closed','','field_60b0c974206cd','','','2021-05-28 10:45:19','2021-05-28 10:45:19','',67,'http://afrodita.local/?post_type=acf-field&p=71',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-05-28 10:45:49','2021-05-28 10:45:49','','chaman','','inherit','open','closed','','chaman-2','','','2021-05-28 10:45:49','2021-05-28 10:45:49','',25,'http://afrodita.local/wp-content/uploads/2021/05/chaman-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-05-28 10:46:27','2021-05-28 10:46:27','','Inicio','','inherit','closed','closed','','25-revision-v1','','','2021-05-28 10:46:27','2021-05-28 10:46:27','',25,'http://afrodita.local/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-05-28 11:00:32','2021-05-28 11:00:32','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Bienvenida','bienvenida','publish','closed','closed','','field_60b0ccddecc01','','','2021-05-28 11:00:32','2021-05-28 11:00:32','',67,'http://afrodita.local/?post_type=acf-field&p=74',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-05-28 11:00:32','2021-05-28 11:00:32','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Encabezado Bienvenida','encabezado_bienvenida','publish','closed','closed','','field_60b0cd04ecc02','','','2021-05-28 11:00:32','2021-05-28 11:00:32','',67,'http://afrodita.local/?post_type=acf-field&p=75',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-05-28 11:00:32','2021-05-28 11:00:32','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Texto Bienvenida','texto_bienvenida','publish','closed','closed','','field_60b0cd2decc03','','','2021-05-28 11:00:32','2021-05-28 11:00:32','',67,'http://afrodita.local/?post_type=acf-field&p=76',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-05-28 11:01:41','2021-05-28 11:01:41','','Inicio','','inherit','closed','closed','','25-revision-v1','','','2021-05-28 11:01:41','2021-05-28 11:01:41','',25,'http://afrodita.local/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Areas','areas','publish','closed','closed','','field_60b0ce0ed841d','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',67,'http://afrodita.local/?post_type=acf-field&p=78',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agregar un imagen y un titulo al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 1','area_1','publish','closed','closed','','field_60b0ce2dd841e','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',67,'http://afrodita.local/?post_type=acf-field&p=79',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60b0ce71d841f','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',79,'http://afrodita.local/?post_type=acf-field&p=80',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60b0cee3d8420','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',79,'http://afrodita.local/?post_type=acf-field&p=81',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agregar un imagen y un titulo al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 2','area_2','publish','closed','closed','','field_60b0cf0fd8421','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',67,'http://afrodita.local/?post_type=acf-field&p=82',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60b0cf0fd8422','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',82,'http://afrodita.local/?post_type=acf-field&p=83',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60b0cf0fd8423','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',82,'http://afrodita.local/?post_type=acf-field&p=84',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-05-28 11:08:23','2021-05-28 11:08:23','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agregar un imagen y un titulo al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 3','area_3','publish','closed','closed','','field_60b0cf16d8424','','','2021-05-28 11:08:23','2021-05-28 11:08:23','',67,'http://afrodita.local/?post_type=acf-field&p=85',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-05-28 11:08:24','2021-05-28 11:08:24','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60b0cf16d8425','','','2021-05-28 11:08:24','2021-05-28 11:08:24','',85,'http://afrodita.local/?post_type=acf-field&p=86',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-05-28 11:08:24','2021-05-28 11:08:24','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60b0cf16d8426','','','2021-05-28 11:08:24','2021-05-28 11:08:24','',85,'http://afrodita.local/?post_type=acf-field&p=87',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-05-28 11:08:24','2021-05-28 11:08:24','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:38:\"Agregar un imagen y un titulo al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 4','area_4','publish','closed','closed','','field_60b0cf1fd8427','','','2021-05-28 11:08:24','2021-05-28 11:08:24','',67,'http://afrodita.local/?post_type=acf-field&p=88',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-05-28 11:08:24','2021-05-28 11:08:24','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60b0cf1fd8428','','','2021-05-28 11:08:24','2021-05-28 11:08:24','',88,'http://afrodita.local/?post_type=acf-field&p=89',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-05-28 11:08:24','2021-05-28 11:08:24','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60b0cf1fd8429','','','2021-05-28 11:08:24','2021-05-28 11:08:24','',88,'http://afrodita.local/?post_type=acf-field&p=90',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-05-28 11:09:10','2021-05-28 11:09:10','','magiablanca','','inherit','open','closed','','magiablanca','','','2021-05-28 11:09:10','2021-05-28 11:09:10','',25,'http://afrodita.local/wp-content/uploads/2021/05/magiablanca.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-05-28 11:09:11','2021-05-28 11:09:11','','magianegra','','inherit','open','closed','','magianegra','','','2021-05-28 11:09:11','2021-05-28 11:09:11','',25,'http://afrodita.local/wp-content/uploads/2021/05/magianegra.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-05-28 11:09:11','2021-05-28 11:09:11','','magiaroja','','inherit','open','closed','','magiaroja','','','2021-05-28 11:09:11','2021-05-28 11:09:11','',25,'http://afrodita.local/wp-content/uploads/2021/05/magiaroja.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-05-28 11:09:12','2021-05-28 11:09:12','','magiarosa','','inherit','open','closed','','magiarosa','','','2021-05-28 11:09:12','2021-05-28 11:09:12','',25,'http://afrodita.local/wp-content/uploads/2021/05/magiarosa.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-05-28 11:10:15','2021-05-28 11:10:15','','Inicio','','inherit','closed','closed','','25-revision-v1','','','2021-05-28 11:10:15','2021-05-28 11:10:15','',25,'http://afrodita.local/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-05-31 16:34:40','2021-05-31 16:34:40','','Inicio','','inherit','closed','closed','','25-revision-v1','','','2021-05-31 16:34:40','2021-05-31 16:34:40','',25,'http://afrodita.local/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-05-31 23:52:53','2021-05-31 23:52:53','La Santería se usa para los siguientes casos:\n<ol>\n 	<li>Tendremos conexion con aquella persona que ya no esta en este plano existencial a la cual le quiera comunicar algo.</li>\n 	<li>Te diremos quien ha estado tratando de v</li>\n</ol>','Santeria','','inherit','closed','closed','','63-autosave-v1','','','2021-05-31 23:52:53','2021-05-31 23:52:53','',63,'http://afrodita.local/?p=97',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-05-31 23:57:35','2021-05-31 23:57:35','Las Maldiciones se usan para:\n<ol>\n 	<li>Que una expareja sea infeliz emocionalmente</li>\n 	<li>Que esa persona que te hizo daño sufra y pierda su felicidad.</li>\n 	<li>Que esa persona que se burlo de ti pierda su economía y sea incapaz de recuperarla.</li>\n 	<li>Que esa persona a la que tanto odias tenga un deterioro físico, emocional o económico.</li>\n</ol>','Maldiciones','','inherit','closed','closed','','62-autosave-v1','','','2021-05-31 23:57:35','2021-05-31 23:57:35','',62,'http://afrodita.local/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-06-01 00:00:52','2021-06-01 00:00:52','La prosperidad se usa para los siguientes casos:\n<ol>\n 	<li>Si consideras que la mala suerte en lo económico te esta pasando debido a un maleficio te daremos solución.</li>\n 	<li>Si consideras que te encuentras en peligro de muerte o traición te lo solucionaremos.</li>\n 	<li>Si piensas que nada te funciona en los negocios por envidias te ayudaremos a ti y a tu negocio para que sea prospero.</li>\n 	<li>Si estas sintiendo presencias que te ago</li>\n</ol>','Contras','','inherit','closed','closed','','61-autosave-v1','','','2021-06-01 00:00:52','2021-06-01 00:00:52','',61,'http://afrodita.local/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-06-01 00:02:24','2021-06-01 00:02:24','Los riegos se usan para:\n<ol>\n 	<li>Trataremos esa enfermedad que te atormenta teniendo una solucion mas eficaz que</li>\n</ol>','Riegos','','inherit','closed','closed','','60-autosave-v1','','','2021-06-01 00:02:24','2021-06-01 00:02:24','',60,'http://afrodita.local/?p=100',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-06-01 00:05:28','2021-06-01 00:05:28','La Prosperidad se usa en los siguyientes casos:\n<ol>\n 	<li>Haremos que ese negocio que estas esperando se te de y sea satisfactorio.</li>\n 	<li></li>\n</ol>','Prosperidad','','inherit','closed','closed','','59-autosave-v1','','','2021-06-01 00:05:28','2021-06-01 00:05:28','',59,'http://afrodita.local/?p=101',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-06-01 00:10:39','2021-06-01 00:10:39','Los amarres son para la sexualidad y el amor como los siguientes casos:\n<ol>\n 	<li>Te ayudaremos a que esa persona que tanto amas solo quiera estar contigo y al momento de tratar de estar con otra persona no funcione sexualmente.</li>\n 	<li>Te ayudaremos a que esa persona que ya no esta contigo vuelva rendido a tus pies y no quiera volver a irse nunca mas.</li>\n 	<li>Haremos que esa persona que te engaño</li>\n</ol>','Amarres','','inherit','closed','closed','','51-autosave-v1','','','2021-06-01 00:10:39','2021-06-01 00:10:39','',51,'http://afrodita.local/?p=102',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-06-01 00:16:12','2021-06-01 00:16:12','Yo Ana Velasquez estaba pasnado por una mala situacion amorosa en la cual presentia la precendecia de otra persona en la relacion. Mi relacion se desmoronaba cada dia que pasaba porque mi esposo no me deseaba y me repudiaba hasta el punto que me despreciaba. Decide buscar ayuda y encontre al maestro Isidro el','Ana Velásquez','','inherit','closed','closed','','5-autosave-v1','','','2021-06-01 00:16:12','2021-06-01 00:16:12','',5,'http://afrodita.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-06-01 00:22:58','2021-06-01 00:22:58','Yo Jose Miranda por aproximadamente 4 años estuve tratando de conseguir un buen empleo y siempre ocurria algo que hacia que no fuera posible ademas de esto mi economia empeoraba  y las inversiones que realizaba siempre terminaban mal. Un amigo que era unpersona propesra decide pregunatrle que caul era el secreto de su prosperidad y me conto que atraves del maestro Isidro soluciono su vida economica, decide consultarlo y me diagnostico una maldición realizada por un examigo con el cual tuve problemas en el pasado. Gracias a la ayuda del maestro Isidro pude recuperar mi economía y hoy soy un hombre nuevo, bendecido y afortunado.','Jose Mejia','','inherit','closed','closed','','19-autosave-v1','','','2021-06-01 00:22:58','2021-06-01 00:22:58','',19,'http://afrodita.local/?p=104',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-06-01 00:29:15','2021-06-01 00:29:15','Yo María Atehortúa por mucho tiempo venia con una tristeza muy profunda a la cual no le encontraba una explicación lógica por ello las personas que me rodeaban se iban alejando poco a poco hasta al punto en el que me quede sola. Aun con mi tristeza decide buscar ayuda medica pero no me dieron solucion decide buscar una alternativa espiritual ya si fue que encontre al maestro Isidro el cual me realizo un riego para limpiar mi espiritu que tenia una acumulacion negativa volviendo mi aura nuevamente bella y feliz. Actualmente mi vida social esta renovada y yo soy plenamente feliz.','María Atehortúa','','inherit','closed','closed','','21-autosave-v1','','','2021-06-01 00:29:15','2021-06-01 00:29:15','',21,'http://afrodita.local/?p=105',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-06-01 00:35:19','2021-06-01 00:35:19','Yo Hernán Osorio fui víctima de la infidelidad por parte de una ex novia. La cual me dejó mal emocionalmente, económicamente y hasta físicamente. Después de esto no tenía vida propia y me sentía pisoteado y humillado por parte de mi exnovia y la persona que entró en nuestra relación debido a esto quince. Pedir ayuda para obtener una especie de venganza y así obtener un poco de tranquilidad. Gracias al maestro Isidro su relación. En estos momentos es un caos. Ya que no prosperan y son infelices ambos .','Hernán Osorio','','inherit','closed','closed','','23-autosave-v1','','','2021-06-01 00:35:19','2021-06-01 00:35:19','',23,'http://afrodita.local/?p=106',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-06-01 00:52:07','2021-06-01 00:52:07','<!-- wp:paragraph {\"dropCap\":true,\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-drop-cap has-cyan-bluish-gray-background-color has-background\"><strong><em>Soy el Maestro Isidro un ser espiritual con gran conocimiento en las artes mágicas con diferentes entidades espirituales las cuales he conocido a lo largo de mi vida viajando por todo el continente americano para poder obtener el poder espiritual que otorgan todos estos seres universales. He tenido experiencia en Latinoamérica con el Arcángel San Miguel protector de los hijos de Dios también he conocido la chamaneria en paises como Venezuela, Ecuador Bolivia y Perú en el cual soy especialista en santería. He viajado a México a conocer las artes mágicas oscuras de la Santa Muerte para destruir o perjudicar personas de diferentes lugares y e obtenido conocimientos ancestrales en las islas caribeñas como Cuba, Puerto Rico y Republica Dominicana trabajando con entidades como Santa Barbara y Chango para beneficiar a cualquier persona que lo necesite. Si quieres que te ayude  en tu proceso no importa cual sea comunícate por medio del CONTACTO y/o el numero de WHATSAPP y te daremos pronta solución.</em></strong></p>\n<!-- /wp:paragraph -->','Nosotros','','inherit','closed','closed','','31-revision-v1','','','2021-06-01 00:52:07','2021-06-01 00:52:07','',31,'http://afrodita.local/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-06-01 01:09:04','2021-06-01 01:09:04','<!-- wp:paragraph -->\n<p><strong>> </strong>Este sitio va dirigido exclusivamente a mayores de edad (18 años).<br><strong>> </strong>El costo de la llamada depende del operador que la persona utilice.<br><strong>> </strong>De acuerdo con las legislaciones vigentes, se establece que las predicciones, videncias psíquicas, lecturas de cartas y hechizos tienen fines de entretenimiento y ayuda personal.<br><strong>> </strong>Estos servicios no sustituirán la debida atención médica, legal, financiera, psicológica y psiquiátrica.<br><strong>> </strong>Todas las personas son diferentes, por tanto los resultados pueden variar de una persona a otra.<br><strong>> </strong>Los resultados ante cada caso son probables y no existe evidencia científica o eficacia de los mismos.<br><strong>> </strong>El costo de la consulta puede variar por el tipo de servicio que solicite y el tiempo que tome realizarlo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Renuncia de Responsabilidad:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Los resultados de nuestros servicios pueden variar de una persona a otra y no hay garantía bajo la cual se pueda asegurar 100% el éxito utilizando nuestros servicios.<br>El uso de este sitio está reservado exclusivamente para las personas con mayoría legal en su país de residencia, y que dispongan de la capacidad jurídica para contratar y utilizar un sitio Web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Costo del servicio:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>¿Se cobra la llamada?:</strong> el tiempo de la llamada en la que asesoramos y ayudamos a las personas no tiene ningún costo por parte nuestra el único costo lo tendrá la persona con su operador de telefonía local por el tiempo al aire de la llamada realizada. y no hay ningún costo extra por parte de ese operador.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>¿Cuándo y cómo se paga?:</strong>En común acuerdo con el cliente, dependiendo del tipo de material que va desde 300 USD a 1500 USD Dólares.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>¿Métodos y Formas de Pago?: </strong>Por medio de Western Union.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Así aceptas que los servicios que presto los encargas por que así lo deseas y estarán sujetos a tu propia voluntad.</p>\n<!-- /wp:paragraph -->','Términos de Uso','','inherit','closed','closed','','35-revision-v1','','','2021-06-01 01:09:04','2021-06-01 01:09:04','',35,'http://afrodita.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-06-01 01:11:50','2021-06-01 01:11:50','<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><em><strong>> </strong>Este sitio va dirigido exclusivamente a mayores de edad (18 años).<br><strong>> </strong>El costo de la llamada depende del operador que la persona utilice.<br><strong>> </strong>De acuerdo con las legislaciones vigentes, se establece que las predicciones, videncias psíquicas, lecturas de cartas y hechizos tienen fines de entretenimiento y ayuda personal.<br><strong>> </strong>Estos servicios no sustituirán la debida atención médica, legal, financiera, psicológica y psiquiátrica.<br><strong>> </strong>Todas las personas son diferentes, por tanto los resultados pueden variar de una persona a otra.<br><strong>> </strong>Los resultados ante cada caso son probables y no existe evidencia científica o eficacia de los mismos.<br><strong>> </strong>El costo de la consulta puede variar por el tipo de servicio que solicite y el tiempo que tome realizarlo.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-cyan-bluish-gray-background-color has-text-color has-background\"><strong><em>Renuncia de Responsabilidad:</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-cyan-bluish-gray-background-color has-text-color has-background\"><em>Los resultados de nuestros servicios pueden variar de una persona a otra y no hay garantía bajo la cual se pueda asegurar 100% el éxito utilizando nuestros servicios.<br>El uso de este sitio está reservado exclusivamente para las personas con mayoría legal en su país de residencia, y que dispongan de la capacidad jurídica para contratar y utilizar un sitio Web.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><strong><em>Costo del servicio:</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><em><strong>¿Se cobra la llamada?:</strong> el tiempo de la llamada en la que asesoramos y ayudamos a las personas no tiene ningún costo por parte nuestra el único costo lo tendrá la persona con su operador de telefonía local por el tiempo al aire de la llamada realizada. y no hay ningún costo extra por parte de ese operador.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><strong><em>¿Cuándo y cómo se paga?:</em></strong><em>En común acuerdo con el cliente, dependiendo del tipo de material que va desde 300 USD a 1500 USD Dólares.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><strong><em>¿Métodos y Formas de Pago?: </em></strong><em>Por medio de Western Union.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"cyan-bluish-gray\"} -->\n<p class=\"has-cyan-bluish-gray-background-color has-background\"><em><strong>Así aceptas que los servicios que presto los encargas por que así lo deseas y estarán sujetos a tu propia voluntad.</strong></em></p>\n<!-- /wp:paragraph -->','Términos de Uso','','inherit','closed','closed','','35-revision-v1','','','2021-06-01 01:11:50','2021-06-01 01:11:50','',35,'http://afrodita.local/?p=112',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (41,2,0);
INSERT INTO `wp_term_relationships` VALUES (42,2,0);
INSERT INTO `wp_term_relationships` VALUES (43,2,0);
INSERT INTO `wp_term_relationships` VALUES (44,2,0);
INSERT INTO `wp_term_relationships` VALUES (48,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&posts_list_mode=list&editor=tinymce&hidetb=1&mfold=o');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1622104146');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:4:{i:0;s:29:\"add-post-type-afrodita_clases\";i:1;s:26:\"add-post-type-instructores\";i:2;s:27:\"add-post-type-testimoniales\";i:3;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'wpcf7_hide_welcome_panel_on','a:1:{i:0;s:3:\"5.4\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'session_tokens','a:1:{s:64:\"6cefc01680c3a84d99f02a7536ad2c3768034b65df9a1ba395d39bcbfd17b7fa\";a:4:{s:10:\"expiration\";i:1622666788;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36 Edg/91.0.864.37\";s:5:\"login\";i:1622493988;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$B/3d1oskKrOMrKQt6Wksx369GdrFmW.','admin','dev-email@flywheel.local','http://afrodita.local','2021-05-27 08:27:00','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

LOCK TABLES `wp_wpmailsmtp_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpmailsmtp_tasks_meta` VALUES (1,'wp_mail_smtp_admin_notifications_update','W10=','2021-05-27 08:58:35');
INSERT INTO `wp_wpmailsmtp_tasks_meta` VALUES (2,'wp_mail_smtp_admin_notifications_update','W10=','2021-05-28 10:15:48');
INSERT INTO `wp_wpmailsmtp_tasks_meta` VALUES (3,'wp_mail_smtp_admin_notifications_update','W10=','2021-05-31 16:33:12');
INSERT INTO `wp_wpmailsmtp_tasks_meta` VALUES (4,'wp_mail_smtp_admin_notifications_update','W10=','2021-06-01 17:21:20');
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 19:13:05
