-- MySQL dump 10.13  Distrib 5.7.39, for Linux (x86_64)
--
-- Host: localhost    Database: xychemkj_com
-- ------------------------------------------------------
-- Server version	5.7.39-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bulamao_admin`
--

DROP TABLE IF EXISTS `bulamao_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulamao_admin` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulamao_admin`
--

LOCK TABLES `bulamao_admin` WRITE;
/*!40000 ALTER TABLE `bulamao_admin` DISABLE KEYS */;
INSERT INTO `bulamao_admin` VALUES (1,'admin','644ca2187d5e1f0901bcd6132d13e02b');
/*!40000 ALTER TABLE `bulamao_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulamao_category`
--

DROP TABLE IF EXISTS `bulamao_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulamao_category` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `addTime` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulamao_category`
--

LOCK TABLES `bulamao_category` WRITE;
/*!40000 ALTER TABLE `bulamao_category` DISABLE KEYS */;
INSERT INTO `bulamao_category` VALUES (5,'【套餐一】贵州茅台酒飞天53度一箱6瓶装【赠送3个礼袋+验酒器】4600元',4600.00,''),(6,'【套餐四】贵州茅台酒飞天53度四箱24瓶装【赠送12个礼袋+验酒器】18000元',18000.00,''),(7,'【套餐三】贵州茅台酒飞天53度三箱18瓶装【赠送9个礼袋+验酒器】13600元',13600.00,''),(8,'【套餐二】贵州茅台酒飞天53度二箱12瓶装【赠送6个礼袋+验酒器】9000元',9000.00,'');
/*!40000 ALTER TABLE `bulamao_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulamao_news`
--

DROP TABLE IF EXISTS `bulamao_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulamao_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` smallint(6) NOT NULL,
  `order` char(32) NOT NULL,
  `addtime` char(10) NOT NULL,
  `name` char(20) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `title` varchar(150) NOT NULL,
  `num` smallint(5) NOT NULL,
  `tel` char(20) NOT NULL,
  `province` char(20) NOT NULL,
  `city` char(20) NOT NULL,
  `area` char(20) NOT NULL,
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `message` varchar(255) NOT NULL COMMENT '留言',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulamao_news`
--

LOCK TABLES `bulamao_news` WRITE;
/*!40000 ALTER TABLE `bulamao_news` DISABLE KEYS */;
INSERT INTO `bulamao_news` VALUES (22,1,'J725627497387094','1595662749','sdfsf',980.00,'【套餐A】53°飞天茅台酒 1箱6瓶（赠送3个手提袋+验酒器）',1,'21312312312','安徽省','淮南市','八公山区','dsfd','sfdsfsdfdsf'),(23,4,'J725643247187271','1595664324','刘洋',8000.00,'【套餐B】53°飞天茅台酒 2箱12瓶（赠送6个手提袋+验酒器）',1,'13527699089','安徽省','马鞍山市','花山区','马口',''),(24,3,'J725644842567561','1595664484','猜猜看',806.00,'【套餐D】53°飞天茅台酒 4箱24瓶 （赠送12个手提袋+验酒器）',1,'18566666','河北省','秦皇岛市','山海关区','不知道怎么说好','测试'),(25,4,'J725645178392247','1595664517','胡进进',8000.00,'【套餐B】53°飞天茅台酒 2箱12瓶（赠送6个手提袋+验酒器）',1,'13528844555','广东省','汕头市','潮南区','132号','');
/*!40000 ALTER TABLE `bulamao_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_captcha`
--

DROP TABLE IF EXISTS `dc_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_captcha` (
  `captcha_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `captcha_mobile` varchar(20) NOT NULL DEFAULT '0',
  `captcha_value` int(6) NOT NULL DEFAULT '0',
  `captcha_error` tinyint(3) NOT NULL DEFAULT '0',
  `captcha_create_time` int(11) NOT NULL,
  `captcha_create_ip` varchar(30) NOT NULL,
  PRIMARY KEY (`captcha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_captcha`
--

LOCK TABLES `dc_captcha` WRITE;
/*!40000 ALTER TABLE `dc_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `dc_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_link`
--

DROP TABLE IF EXISTS `dc_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_link` (
  `link_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(250) NOT NULL,
  `link_url` varchar(250) DEFAULT NULL,
  `link_info` varchar(250) DEFAULT NULL,
  `link_logo` varchar(250) DEFAULT NULL,
  `link_order` smallint(6) NOT NULL DEFAULT '1',
  `link_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_link`
--

LOCK TABLES `dc_link` WRITE;
/*!40000 ALTER TABLE `dc_link` DISABLE KEYS */;
INSERT INTO `dc_link` VALUES (1,'安小熙博客的百宝库','https://anxiaoxi.com','安小熙博客抖音创作助手官网','',3,1),(4,'安小熙博客','https://www.anxiaoxi.com','','',4,1);
/*!40000 ALTER TABLE `dc_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_log`
--

DROP TABLE IF EXISTS `dc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_name` varchar(250) DEFAULT NULL,
  `log_value` int(11) NOT NULL DEFAULT '0' COMMENT '整数值',
  `log_decimal` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '小数值',
  `log_model` varchar(50) NOT NULL DEFAULT 'score',
  `log_type` varchar(30) NOT NULL DEFAULT 'inc',
  `log_status` varchar(50) NOT NULL DEFAULT 'normal',
  `log_ai_id` bigint(20) NOT NULL DEFAULT '0',
  `log_user_id` bigint(20) NOT NULL DEFAULT '0',
  `log_time` int(11) NOT NULL,
  `log_ip` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_user_id` (`log_user_id`),
  KEY `log_model` (`log_model`),
  KEY `log_ai_id` (`log_ai_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_log`
--

LOCK TABLES `dc_log` WRITE;
/*!40000 ALTER TABLE `dc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_pay`
--

DROP TABLE IF EXISTS `dc_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_pay` (
  `pay_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pay_name` varchar(200) NOT NULL COMMENT '订单名称',
  `pay_sign` varchar(32) NOT NULL COMMENT '订单号',
  `pay_number` varchar(64) DEFAULT NULL COMMENT '支付平台流水号',
  `pay_info_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '商品ID',
  `pay_user_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '购买用户',
  `pay_price` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `pay_quantity` mediumint(8) NOT NULL DEFAULT '1' COMMENT '购买数量',
  `pay_total_fee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `pay_status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '交易状态',
  `pay_model` varchar(100) NOT NULL DEFAULT 'score' COMMENT '业务类型',
  `pay_scene` varchar(100) NOT NULL DEFAULT 'pc' COMMENT '支付场景',
  `pay_platform` varchar(100) DEFAULT 'alipay' COMMENT '付款平台',
  `pay_platform_status` varchar(100) NOT NULL DEFAULT '-' COMMENT '平台交易状态',
  `pay_create_time` int(11) NOT NULL DEFAULT '1639322269',
  `pay_update_time` int(11) NOT NULL DEFAULT '1639322269',
  `pay_content` tinytext COMMENT '订单说明',
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_pay`
--

LOCK TABLES `dc_pay` WRITE;
/*!40000 ALTER TABLE `dc_pay` DISABLE KEYS */;
INSERT INTO `dc_pay` VALUES (1,'安小熙博客百宝库积分充值','2024022415460812888',NULL,0,1,5.00,1,5.00,1,'recharge','pc','alipay','-',1708760768,1708760768,'---'),(2,'安小熙博客百宝库积分充值','2024022420235191685',NULL,0,1,5.00,1,5.00,1,'recharge','pc','alipay','-',1708777431,1708777431,'---');
/*!40000 ALTER TABLE `dc_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_user`
--

DROP TABLE IF EXISTS `dc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_pid` int(20) NOT NULL DEFAULT '0',
  `user_name` varchar(250) DEFAULT NULL,
  `user_mobile` varchar(11) DEFAULT '0',
  `user_email` varchar(250) DEFAULT NULL,
  `user_pass` varchar(32) NOT NULL,
  `user_score` bigint(20) NOT NULL DEFAULT '0',
  `user_token` varchar(50) DEFAULT NULL,
  `user_expire` int(11) NOT NULL DEFAULT '0',
  `user_status` varchar(50) NOT NULL DEFAULT 'normal',
  `user_roles` text NOT NULL,
  `user_caps` text NOT NULL,
  `user_create_time` int(11) DEFAULT '0',
  `user_update_time` int(11) DEFAULT '0',
  `user_create_ip` varchar(32) DEFAULT NULL,
  `user_update_ip` varchar(32) DEFAULT NULL,
  `user_views` bigint(20) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `user_mobile` (`user_mobile`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_user`
--

LOCK TABLES `dc_user` WRITE;
/*!40000 ALTER TABLE `dc_user` DISABLE KEYS */;
INSERT INTO `dc_user` VALUES (1,0,'anxiaoxi.com','13800138000','','0bf9975a9bfd75c317f839e85b6d0a55',1000,'e0a0bd3e72912cb7408e76fb4cbed1f9',1709468122,'normal','[\"admin\"]','[\"\"]',1680165189,1680165189,'182.129.213.55','182.129.213.55',0);
/*!40000 ALTER TABLE `dc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_config`
--

DROP TABLE IF EXISTS `global_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_config` (
  `k` varchar(32) NOT NULL COMMENT '键',
  `v` text NOT NULL COMMENT '值',
  `d` varchar(32) DEFAULT '' COMMENT '描述',
  UNIQUE KEY `k` (`k`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_config`
--

LOCK TABLES `global_config` WRITE;
/*!40000 ALTER TABLE `global_config` DISABLE KEYS */;
INSERT INTO `global_config` VALUES ('build','a:3:{s:4:\"date\";s:10:\"2023-09-15\";s:4:\"time\";s:8:\"22:55:39\";s:3:\"int\";i:1694789739;}','建站时间'),('length_limit','a:6:{s:6:\"c_name\";i:0;s:6:\"c_desc\";i:0;s:6:\"l_name\";i:0;s:5:\"l_url\";i:0;s:5:\"l_key\";i:0;s:6:\"l_desc\";i:0;}','长度限制'),('LoginConfig','a:7:{s:9:\"Password2\";s:0:\"\";s:9:\"api_model\";s:8:\"security\";s:11:\"KeySecurity\";s:1:\"0\";s:8:\"KeyClear\";s:1:\"7\";s:8:\"HttpOnly\";s:1:\"1\";s:7:\"Session\";s:3:\"360\";s:5:\"Login\";s:1:\"0\";}','默认安全配置'),('notice','{\"code\":200,\"notice\":[{\"title\":\"\\u3010TwoNav\\u3011: \\u6807\\u51c6\\u7248\\u6c38\\u4e45\\u6388\\u6743\\u539f\\u4ef7199\\u5143,\\u73b0\\u4ec5\\u9700139\\u5143,\\u6570\\u91cf\\u6709\\u9650\\u552e\\u5b8c\\u6062\\u590d\\u539f\\u4ef7\",\"url\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\\/wikis\\/%E8%B4%AD%E4%B9%B0%E6%8E%88%E6%9D%83\"},{\"title\":\"\\u3010TwoNav\\u3011: \\u9ad8\\u7ea7\\u7248\\u6c38\\u4e45\\u6388\\u6743\\u539f\\u4ef7399\\u5143,\\u73b0\\u4ec5\\u9700239\\u5143,\\u6570\\u91cf\\u6709\\u9650\\u552e\\u5b8c\\u6062\\u590d\\u539f\\u4ef7\",\"url\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\\/wikis\\/%E8%B4%AD%E4%B9%B0%E6%8E%88%E6%9D%83\"},{\"title\":\"\\u3010\\u817e\\u8baf\\u4e91\\u3011\\u5e74\\u5ea6\\u7206\\u6b3e2\\u68382G4M\\u4e91\\u670d\\u52a1\\u5668118\\u5143\\/\\u5e74\\uff0c\\u65b0\\u8001\\u7528\\u6237\\u540c\\u4eab\",\"url\":\"https:\\/\\/curl.qcloud.com\\/ICjzFxB3\"},{\"title\":\"\\u3010\\u4e03\\u725b\\u4e91\\u3011\\u65b0\\u4eba\\u514d\\u8d39 CDN \\u5168\\u74032000+\\u8282\\u70b9\\u65e0\\u76f2\\u533a\\u8986\\u76d6\\uff0c\\u6ce8\\u518c\\u5373\\u53ef\\u514d\\u8d39\\u4f7f\\u7528\",\"url\":\"https:\\/\\/s.qiniu.com\\/2YfQzy\"},{\"title\":\"\\u3010\\u53c8\\u62cd\\u4e91\\u3011\\u4e3a\\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e13\\u4e1a\\u3001\\u514d\\u8d39\\u3001\\u7a33\\u5b9a\\u7684 CDN \\u53ca\\u4e91\\u5b58\\u50a8\\u670d\\u52a1\\uff0c\\u52a0\\u901f\\u4e2a\\u4eba\\u7f51\\u7ad9\\u53ca APP \\u7b49\\u9879\\u76ee\",\"url\":\"https:\\/\\/console.upyun.com\\/register\\/?invite=S9oig-sdh\"},{\"title\":\"\\u3010\\u62ec\\u5f69\\u4e91\\u3011\\u667a\\u80fdCDN, \\u6bcf\\u6708\\u53ef\\u83b7\\u5f97\\u514d\\u8d3930G\\u6d41\\u91cf\",\"url\":\"https:\\/\\/www.kuocaicdn.com\\/register?code=8z8p6ewxngj7s\"}],\"pay_rul\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\\/wikis\\/pages?sort_id=7968669&doc_id=3767990\",\"version\":\"v2.2.06-20240121\",\"message\":\"\\u514d\\u8d39\\u7248\\u672c\\u4ec5\\u63d0\\u4f9b\\u57fa\\u7840\\u529f\\u80fd,\\u5982\\u9700\\u89e3\\u9501\\u5168\\u90e8\\u529f\\u80fd\\u8bf7\\u8d2d\\u4e70\\u6388\\u6743\\u7248! \\u4f4e\\u81f30.1\\u5143\\/\\u5929!\",\"download_time\":1709715999}','官方公告(缓存)'),('o_config','a:27:{s:5:\"Login\";s:5:\"login\";s:8:\"Register\";s:8:\"register\";s:9:\"RegOption\";i:1;s:4:\"Libs\";s:8:\"./static\";s:3:\"ICP\";s:0:\"\";s:12:\"Default_User\";s:5:\"admin\";s:17:\"default_UserGroup\";s:0:\"\";s:7:\"XSS_WAF\";i:0;s:7:\"SQL_WAF\";i:0;s:7:\"offline\";i:0;s:5:\"Debug\";i:0;s:11:\"Maintenance\";i:0;s:10:\"Sub_domain\";i:0;s:7:\"Privacy\";i:0;s:12:\"default_page\";i:1;s:9:\"copyright\";s:0:\"\";s:13:\"global_header\";s:0:\"\";s:13:\"global_footer\";s:0:\"\";s:10:\"api_extend\";s:1:\"0\";s:6:\"c_code\";i:0;s:11:\"static_link\";i:0;s:13:\"Update_Source\";s:1:\"0\";s:15:\"Update_Overtime\";i:3;s:5:\"apply\";s:1:\"1\";s:9:\"guestbook\";s:1:\"1\";s:11:\"link_extend\";s:1:\"1\";s:7:\"article\";s:1:\"1\";}','网站配置'),('s_site','a:9:{s:5:\"title\";s:12:\"我的书签\";s:8:\"subtitle\";s:6:\"TwoNav\";s:4:\"logo\";s:12:\"我的书签\";s:8:\"keywords\";s:105:\"TwoNav,开源导航,开源书签,简洁导航,云链接,个人导航,个人书签,扩展,多用户,落幕\";s:11:\"description\";s:82:\"TwoNav 是一款使用PHP + SQLite3/MySQL 开发的简约导航/书签管理器。\";s:10:\"link_model\";s:3:\"302\";s:9:\"link_icon\";s:1:\"0\";s:13:\"custom_header\";s:0:\"\";s:13:\"custom_footer\";s:0:\"\";}','默认站点配置'),('s_subscribe','','订阅信息'),('s_templates','a:4:{s:7:\"home_pc\";s:7:\"default\";s:8:\"home_pad\";s:7:\"default\";s:5:\"login\";s:7:\"default\";s:7:\"transit\";s:7:\"default\";}','默认模板'),('theme_apply_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822aV1.0\",\"description\":\"\\u7531\\u633d\\u98ce\\u535a\\u5ba2\\u7ad9\\u957f\\u201c\\u51cc\\u4e91\\u201d\\u5f00\\u53d1(\\u4f5c\\u8005QQ\\uff1a2044037949\\uff0c\\u5fae\\u4fe1\\uff1awrykdfc\\uff0c\\u633d\\u98ce\\u535a\\u5ba2\\u7f51\\u5740\\uff1awww.a754.com )\",\"homepage\":\"http:\\/\\/www.a754.com\",\"version\":\"2.0.6\",\"update\":\"2023\\/09\\/13\",\"author\":\"\\u51cc\\u4e91\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/wanfeng_v1_home.jpg\",\"dir\":\"wanfeng\",\"md5\":\"74527041d2d5413ca2fe451a765484f6\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230913,\"high\":20290909}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285369}','apply_模板缓存'),('theme_article_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822a\",\"description\":\"\\u4e3b\\u9898\\u7531\\u7fa4\\u53cb(\\u51cc\\u4e91)\\u63d0\\u4f9b!\\u5982\\u6709\\u4fb5\\u6743\\u8bf7\\u8054\\u7cfb\\u5220\\u9664\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/OneNav\",\"version\":\"2.0.6\",\"update\":\"2023\\/08\\/03\",\"author\":\"\\u51cc\\u4e91\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/wanfeng-nav-a.jpg\",\"dir\":\"wanfeng-nav\",\"md5\":\"46129fe600121789501c037ca079ca1b\",\"url\":[\"\"],\"low\":20230729,\"high\":20290909},{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822aV1.0\",\"description\":\"\\u7531\\u633d\\u98ce\\u535a\\u5ba2\\u7ad9\\u957f\\u201c\\u51cc\\u4e91\\u201d\\u5f00\\u53d1(\\u4f5c\\u8005QQ\\uff1a2044037949\\uff0c\\u5fae\\u4fe1\\uff1awrykdfc\\uff0c\\u633d\\u98ce\\u535a\\u5ba2\\u7f51\\u5740\\uff1awww.a754.com )\",\"homepage\":\"http:\\/\\/www.a754.com\",\"version\":\"2.0.6\",\"update\":\"2023\\/09\\/13\",\"author\":\"\\u51cc\\u4e91\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/wanfeng_v1_home.jpg\",\"dir\":\"wanfeng\",\"md5\":\"74527041d2d5413ca2fe451a765484f6\",\"url\":[\"\"],\"low\":20230913,\"high\":20290909}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285365}','article_模板缓存'),('theme_guestbook_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822aV1.0\",\"description\":\"\\u7531\\u633d\\u98ce\\u535a\\u5ba2\\u7ad9\\u957f\\u201c\\u51cc\\u4e91\\u201d\\u5f00\\u53d1(\\u4f5c\\u8005QQ\\uff1a2044037949\\uff0c\\u5fae\\u4fe1\\uff1awrykdfc\\uff0c\\u633d\\u98ce\\u535a\\u5ba2\\u7f51\\u5740\\uff1awww.a754.com )\",\"homepage\":\"http:\\/\\/www.a754.com\",\"version\":\"2.0.6\",\"update\":\"2023\\/09\\/13\",\"author\":\"\\u51cc\\u4e91\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/wanfeng_v1_home.jpg\",\"dir\":\"wanfeng\",\"md5\":\"74527041d2d5413ca2fe451a765484f6\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230913,\"high\":20290909}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285367}','guestbook_模板缓存'),('theme_guide_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285360}','guide_模板缓存'),('theme_home_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"referrer\":\"same-origin\",\"data\":[{\"name\":\"WebStack-Hugo [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"WebStack-Hugo\",\"homepage\":\"https:\\/\\/gitee.com\\/shenweiyan\\/WebStack-Hugo\",\"version\":\"2.0.15\",\"update\":\"2023\\/08\\/28\",\"author\":\"\\u9002\\u914d\\u4f18\\u5316:\\u843d\\u5e55,\\u539f\\u4f5c:shenweiyan\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/WebStack-Hugo.jpg\",\"dir\":\"WebStack-Hugo\",\"md5\":\"4d585974b28e4d1365a9ad48ec590bac\",\"url\":[\"#\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230428,\"high\":20290909},{\"name\":\"\\u767e\\u7d20 [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u767e\\u7d20\",\"homepage\":\"https:\\/\\/gitee.com\\/baisucode\\/onenav-theme\\/tree\\/master\\/templates\\/baisu\",\"version\":\"2.0.3\",\"update\":\"2023\\/05\\/20\",\"author\":\"\\u767e\\u7d20\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/XGdEL9.jpg\",\"dir\":\"baisu\",\"md5\":\"0feaa8a09a710f37742ed2b50f90ed31\",\"url\":[\"#\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u767e\\u7d20Two [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u767e\\u7d20Two\",\"homepage\":\"https:\\/\\/gitee.com\\/baisucode\\/baisu-two\",\"version\":\"2.0.2\",\"update\":\"2023\\/06\\/06\",\"author\":\"\\u767e\\u7d20\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/XGdZZR.jpg\",\"dir\":\"baisu-two\",\"md5\":\"64c8a3a8632c5fe64655ac37b49085dc\",\"url\":[\"#\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u767e\\u7d20New [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"BaiSu\\u6700\\u65b0\\u4e3b\\u9898\",\"homepage\":\"https:\\/\\/gitee.com\\/baisucode\\/baisu-two\",\"version\":\"2.0.1\",\"original_version\":\"1.0.2\",\"update\":\"2023\\/07\\/16\",\"author\":\"\\u767e\\u7d20\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/baisu_new.jpg\",\"dir\":\"baisuNew\",\"md5\":\"449d91a5980098657df52db2df4f8a31\",\"url\":[\"#\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u7231\\u5bfc\\u822aV1 [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u8f7b\\u91cf\\u5316\\u8bbe\\u8ba1\\u7b80\\u6d01\\u4e0d\\u5361\\u987f\\/\\u652f\\u6301\\u7f13\\u5b58\\/\\u652f\\u6301\\u81ea\\u9002\\u5e94\\/\\u652f\\u6301\\u7ad9\\u5185\\u641c\\u7d22\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\",\"version\":\"2.0.0\",\"update\":\"2023\\/08\\/14\",\"author\":\"\\u843d\\u5e55\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/love_nav.jpg\",\"dir\":\"love_nav\",\"md5\":\"9a09456591fa15d20a1db0c16df9f5cb\",\"url\":[\"#\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230729,\"high\":20290909},{\"name\":\"\\u6240\\u957f\\u5bfc\\u822a Mini [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u4e3b\\u6253\\u7b80\\u6d01\\u641c\\u7d22,\\u4ec5\\u663e\\u793a\\u6307\\u5b9a\\u7684\\u4e00\\u4e2a\\u5206\\u7c7b\",\"homepage\":\"https:\\/\\/github.com\\/liutongxu\\/liutongxu.github.io\\/tree\\/main\\/nav\",\"version\":\"2.0.1\",\"update\":\"2023\\/05\\/20\",\"author\":\"liutongxu\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/snail-nav.jpg\",\"dir\":\"snail-nav\",\"md5\":\"6562e991334068de04393f544407f0c9\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u5218\\u6850\\u5e8f [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u5218\\u6850\\u5e8f\",\"homepage\":\"https:\\/\\/github.com\\/liutongxu\\/liutongxu.github.io\",\"version\":\"2.0.2\",\"update\":\"2023\\/05\\/20\",\"author\":\"\\u5218\\u6850\\u5e8f\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/XGded1.jpg\",\"dir\":\"liutongxu\",\"md5\":\"af455bb93d41b58c3f4a005dafccd4e5\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u516d\\u96f6\\u5bfc\\u822a [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u516d\\u96f6\\u5bfc\\u822a\",\"homepage\":\"https:\\/\\/gitee.com\\/LyLme\\/lylme_spage\",\"version\":\"2.0.1\",\"update\":\"2023\\/05\\/20\",\"author\":\"\\u516d\\u96f6\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/XGdmIx.jpg\",\"dir\":\"lylme_spage\",\"md5\":\"1ed52d9740a8afc54811ca4ca2029581\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u4e03\\u590f - quality [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u7531\\u4e03\\u590f\\u57fa\\u4e8e\\u516d\\u96f6\\u5bfc\\u822a\\u6a21\\u677f\\u4e8c\\u6b21\\u5f00\\u53d1,\\u518d\\u7531\\u843d\\u5e55\\u8fdb\\u884c\\u9002\\u914d\\u4f18\\u5316\",\"homepage\":\"https:\\/\\/www.hbd0.cn\\/archives\\/2245.html\",\"version\":\"2.0.1\",\"update\":\"2023\\/05\\/20\",\"author\":\"\\u4e03\\u590f\\/\\u843d\\u5e55\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/c3d3c8cc4420cb5f.jpg\",\"dir\":\"quality\",\"md5\":\"a6b12c70d5cf73890b73e5818a2972a4\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u5c0f\\u5446\\u5bfc\\u822a [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u5c0f\\u5446\\u5bfc\\u822a\",\"homepage\":\"https:\\/\\/github.com\\/xiaodai945\\/WEBJIKE\",\"version\":\"2.0.1\",\"update\":\"2023\\/05\\/20\",\"author\":\"\\u5c0f\\u5446\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/917c6d8f70765286.jpg\",\"dir\":\"webjike\",\"md5\":\"ce520e500906010cf5dc4382cfebf7c8\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"SimpleWeb [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"SimpleWeb\",\"homepage\":\"https:\\/\\/github.com\\/KrunkZhou\\/SimpleWebNavigation\",\"version\":\"2.0.1\",\"update\":\"2023\\/05\\/20\",\"author\":\"KRUNK\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/XGdui6.jpg\",\"dir\":\"SimpleWeb\",\"md5\":\"a6a1613cb4c5fa649aed4e4486b07e87\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"5IUX\\u641c\\u7d22 [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u7b80\\u5355\\u641c\\u7d22\\uff0c\\u4e00\\u4e2a\\u7b80\\u5355\\u7684\\u524d\\u7aef\\u754c\\u9762\\u3002\\u7528\\u60ef\\u4e86\\u5404\\u79cd\\u5bfc\\u822a\\u9996\\u9875\\uff0c\\u6ee1\\u5c4f\\u5e55\\u5c3d\\u662f\\u5404\\u79cd\\u4e0d\\u538c\\u5176\\u70e6\\u7684\\u5e7f\\u544a\\u548c\\u8d44\\u8baf\\uff1b\\u5c1d\\u8bd5\\u81ea\\u5df1\\u5199\\u4e2a\\u81ea\\u5df1\\u7684\\u4e3b\\u9875\\u3002\",\"homepage\":\"https:\\/\\/github.com\\/5iux\\/sou\\/\",\"version\":\"2.0.2\",\"update\":\"2023\\/05\\/20\",\"author\":\"5iux\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/XJbCjS.jpg\",\"dir\":\"5iux-sou\",\"md5\":\"ad49299152969f70c1f66d7efc35233f\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"heimdall [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u6b64\\u4e3b\\u9898\\u6765\\u6e90\\u4e8e\\u72ec\\u7acb\\u5bfc\\u822a\\u7a0b\\u5e8fHeimdall\\uff0c\\u7531xiaoz\\u9002\\u914d\\u5230OneNav\\uff0c\\u8be5\\u4e3b\\u9898\\u975e\\u5e38\\u9002\\u5408\\u5c11\\u91cf\\u4e66\\u7b7e\\u7684NAS\\u7528\\u6237\\u3002\",\"homepage\":\"https:\\/\\/github.com\\/linuxserver\\/Heimdall\",\"version\":\"2.0.2\",\"update\":\"2023\\/05\\/20\",\"author\":\"xiaoz\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/4b0916bf3472861a.png\",\"dir\":\"heimdall\",\"md5\":\"00ae21b9172d73d5bc2b0f502fa80657\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"BM\\u5feb\\u6377\\u5bfc\\u822a [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u7528vue3+tailwindcss\\u5f00\\u53d1\\uff0c\\u652f\\u6301\\u54cd\\u5e94\\u5f0f\",\"homepage\":\"https:\\/\\/toscode.gitee.com\\/robin901118\\/homepage_navigation\\/tree\\/master\\/\",\"version\":\"2.0.3\",\"update\":\"2023\\/07\\/06\",\"author\":\"robin901118\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/65536c3a60166f9a.jpg\",\"dir\":\"bm-nav\",\"md5\":\"eb133f14a2a7d13cc738bbab50dc5a3a\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"WebStack [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"WebStack\",\"homepage\":\"https:\\/\\/webstack.cc\\/cn\\/index.html\",\"version\":\"2.0.1\",\"update\":\"2023\\/05\\/20\",\"author\":\"Viggo\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/ffa65daf227340ee.jpg\",\"dir\":\"webstack\",\"md5\":\"ac2f07641ee36fb4ba3048f556da1fc8\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u5496\\u5561\\u5427\\u5bfc\\u822a [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u6781\\u7b80\\u98ce\\u683c,\\u652f\\u6301\\u81ea\\u9002\\u5e94\",\"homepage\":\"https:\\/\\/github.com\\/ops-coffee\\/nav\",\"version\":\"2.0.1\",\"update\":\"2023\\/05\\/20\",\"author\":\"ops-coffee\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/d4a9ea4bd9c54a8c.jpg\",\"dir\":\"coffee\",\"md5\":\"dd708156b1263280308a5b9098416732\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"tushan2 [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"tushan2\\u7b80\\u6d01\\u7248\\u672c\\uff0c\\u9002\\u5408\\u5c11\\u91cf\\u4e66\\u7b7e\\u7684\\u7528\\u6237\\u3002\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\",\"version\":\"2.0.0\",\"original_version\":\"1.0.0\",\"update\":\"2023\\/07\\/08\",\"author\":\"tushan<admin@mcecy.com>\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/tushan2.jpg\",\"dir\":\"tushan2\",\"md5\":\"2418deec0e76ee037862f74fbf671a38\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822a [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u4e3b\\u9898\\u7531\\u7fa4\\u53cb(\\u51cc\\u4e91)\\u63d0\\u4f9b!\\u5982\\u6709\\u4fb5\\u6743\\u8bf7\\u8054\\u7cfb\\u5220\\u9664\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/OneNav\",\"version\":\"2.0.4\",\"update\":\"2023\\/08\\/01\",\"author\":\"\\u843d\\u5e55\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/wanfeng-nav.jpg\",\"dir\":\"wanfeng-nav\",\"md5\":\"3dd149b441c267c5c0de4e5d3388df41\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230729,\"high\":20290909},{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822aV1.0 [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u7531\\u633d\\u98ce\\u535a\\u5ba2\\u7ad9\\u957f\\u201c\\u51cc\\u4e91\\u201d\\u5f00\\u53d1(\\u4f5c\\u8005QQ\\uff1a2044037949\\uff0c\\u5fae\\u4fe1\\uff1awrykdfc\\uff0c\\u633d\\u98ce\\u535a\\u5ba2\\u7f51\\u5740\\uff1awww.a754.com )\",\"homepage\":\"http:\\/\\/www.a754.com\",\"version\":\"2.0.6\",\"update\":\"2023\\/09\\/13\",\"author\":\"\\u51cc\\u4e91\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/wanfeng_v1_home.jpg\",\"dir\":\"wanfeng\",\"md5\":\"74527041d2d5413ca2fe451a765484f6\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230913,\"high\":20290909},{\"name\":\"\\u7b80\\u7ea6\\u4e3b\\u9898 [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u8d85\\u7b80\\u7ea6\\u7684\\u4e3b\\u9898\\uff0c\\u5c06\\u6240\\u6709\\u5206\\u7c7b\\u79fb\\u52a8\\u5230\\u62bd\\u5c49\\u3002\\u8f7b\\u723d\",\"homepage\":\"https:\\/\\/github.com\\/tsxcw\\/oneNav.git\",\"version\":\"2.0.0\",\"update\":\"2022\\/07\\/29\",\"author\":\"\\u6d82\\u5c71<1756328925@qq.com>\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/tushan.png\",\"dir\":\"tushan\",\"md5\":\"fa0284f70d576ecdd65d2d759ba080fb\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230729,\"high\":20290909},{\"name\":\"\\u82b1\\u68ee\\u4e3b\\u9875 [\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf]\",\"description\":\"\\u4e3b\\u9898\\u5143\\u7d20\\u8f83\\u591a,\\u52a0\\u8f7d\\u4f1a\\u6bd4\\u8f83\\u6162,\\u672a\\u652f\\u6301\\u94fe\\u63a5\\u6570\\u91cf\\u9650\\u5236,\\u8bf7\\u5c06\\u7ad9\\u70b9\\u8bbe\\u7f6e>\\u94fe\\u63a5\\u6570\\u91cf>\\u6539\\u4e3a0,\\u4ee5\\u514d\\u5f71\\u54cd\\u4f7f\\u7528\",\"homepage\":\"https:\\/\\/github.com\\/huasenjio\\/huasen-portal\",\"version\":\"2.0.0\",\"update\":\"2023\\/07\\/30\",\"author\":\"\\u82b1\\u68eeJioJio <QQ184820911>\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/huasen.jpg\",\"dir\":\"huasen-portal\",\"md5\":\"d2e7bff788d192e21993866c3fb60d89\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230729,\"high\":20290909}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1709715879}','home_模板缓存'),('theme_login_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[{\"name\":\"\\u6d82\\u5c71\\u7b80\\u7ea6\",\"description\":\"\\u6539\\u53d8\\u767b\\u5f55\\u9875+\\u8fc7\\u6e21\\u9875\\u7684\\u6837\\u5f0f\",\"homepage\":\"https:\\/\\/web.png.ink\",\"version\":\"2.0.4\",\"update\":\"2023\\/08\\/09\",\"author\":\"\\u6d82\\u5c71\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694953515_JBDB.jpg\",\"dir\":\"o-tushan\",\"md5\":\"1b840a17252051744c1bb5955e823ab4\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230521,\"high\":20240515},{\"name\":\"\\u767b\\u5f551\",\"description\":\"\\u4ee5jQuery\\u7684\\u52a8\\u6001\\u7c92\\u5b50\\u4f5c\\u4e3a\\u80cc\\u666f\\u7684\\u767b\\u5f55\\u9875\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\",\"version\":\"2.0.4\",\"update\":\"2023\\/08\\/09\",\"author\":\"\\u843d\\u5e55\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694954073_PMGW.jpg\",\"dir\":\"o-login1\",\"md5\":\"3c35b320018e98cc9ae9e3d8942858c8\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230521,\"high\":20240515},{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822a\",\"description\":\"\\u7531\\u633d\\u98ce\\u535a\\u5ba2(\\u539f\\u51cc\\u4e91)\\u5f00\\u53d1\\u7684\\u62df\\u6001\\u98ce\\u5bfc\\u822a\\u6a21\\u677f\",\"homepage\":\"https:\\/\\/www.a754.com\",\"version\":\"2.0.4\",\"update\":\"2023\\/08\\/18\",\"author\":\"\\u51cc\\u4e91QQ:2044037949\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694954198_XUGY.jpg\",\"dir\":\"wanfang\",\"md5\":\"0f8aaab1454be20ff30f1ba04b321d70\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230521,\"high\":20240515}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285376}','login_模板缓存'),('theme_register_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[{\"name\":\"\\u6ce8\\u518c1\",\"description\":\"\\u4ee5jQuery\\u7684\\u52a8\\u6001\\u7c92\\u5b50\\u4f5c\\u4e3a\\u80cc\\u666f\\u7684\\u6ce8\\u518c\\u9875\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\",\"version\":\"2.0.0\",\"update\":\"2023\\/08\\/05\",\"author\":\"TwoNav\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/register1.jpg\",\"dir\":\"register1\",\"md5\":\"b2e241beb970df9ca0ad595b91b4f3b5\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230428,\"high\":20290909}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285363}','register_模板缓存'),('theme_transit_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[{\"name\":\"OneNav2\",\"description\":\"OneNav\\u65b0\\u7248\\u8fc7\\u6e21\\u9875\",\"homepage\":\"https:\\/\\/web.png.ink\",\"version\":\"2.0.3\",\"update\":\"2023\\/07\\/17\",\"author\":\"xiaoz\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694954348_CNVX.jpg\",\"dir\":\"onenav2\",\"md5\":\"67c9a8fcc9980899d198cb99d089f6b5\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"WebStack-Hugo\",\"description\":\"\\u8fc7\\u6e21\\u9875\\/\\u843d\\u5730\\u9875\\/\\u7ad9\\u70b9\\u8be6\\u60c5\\u9875\",\"homepage\":\"https:\\/\\/gitee.com\\/shenweiyan\\/WebStack-Hugo\",\"version\":\"2.0.2\",\"update\":\"2023\\/07\\/17\",\"author\":\"\\u6c88\\u7ef4\\u71d5(shenweiyan)\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694767934_FTTW.jpg\",\"dir\":\"WebStack-Hugo\",\"md5\":\"a45c1f9b5548e91b080db222745b6ecc\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230417,\"high\":20290909},{\"name\":\"\\u6d82\\u5c71\\u7b80\\u7ea6\",\"description\":\"\\u6d82\\u5c71\\u7b80\\u7ea6\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/TwoNav\",\"version\":\"2.0.2\",\"update\":\"2023\\/07\\/17\",\"author\":\"\\u843d\\u5e55\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694954550_TLVH.jpg\",\"dir\":\"tushan\",\"md5\":\"236ad744d84a05914eadebcd97cd5e1c\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230315,\"high\":20290909},{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822a\",\"description\":\"\\u4e3b\\u9898\\u7531\\u7fa4\\u53cb(\\u51cc\\u4e91)\\u63d0\\u4f9b!\\u5982\\u6709\\u4fb5\\u6743\\u8bf7\\u8054\\u7cfb\\u5220\\u9664\",\"homepage\":\"https:\\/\\/gitee.com\\/tznb\\/OneNav\",\"version\":\"2.0.5\",\"update\":\"2023\\/08\\/01\",\"author\":\"\\u843d\\u5e55\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694777567_NBHW.jpg\",\"dir\":\"wanfeng-nav\",\"md5\":\"989567b95a01eaa53ea4c7be3871e243\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230729,\"high\":20290909},{\"name\":\"\\u633d\\u98ce\\u5bfc\\u822aV1.0\",\"description\":\"\\u7531\\u633d\\u98ce\\u535a\\u5ba2\\u7ad9\\u957f\\u201c\\u51cc\\u4e91\\u201d\\u5f00\\u53d1(\\u4f5c\\u8005QQ\\uff1a2044037949\\uff0c\\u5fae\\u4fe1\\uff1awrykdfc\\uff0c\\u633d\\u98ce\\u535a\\u5ba2\\u7f51\\u5740\\uff1awww.a754.com )\",\"homepage\":\"http:\\/\\/www.a754.com\",\"version\":\"2.0.6\",\"update\":\"2023\\/09\\/13\",\"author\":\"\\u51cc\\u4e91\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/1694777610_FKEY.jpg\",\"dir\":\"wanfeng\",\"md5\":\"74527041d2d5413ca2fe451a765484f6\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230913,\"high\":20290909}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285378}','transit_模板缓存'),('theme_verify_cache','{\"code\":200,\"msg\":\"\",\"rt\":1653212496,\"data\":[{\"name\":\"\\u9a8c\\u8bc1\\u6a21\\u677f1\",\"description\":\"\\u9a8c\\u8bc1\\u6a21\\u677f1\",\"homepage\":\"https:\\/\\/www.dkewl.com\\/code\\/detail2426.html\",\"version\":\"2.0.0\",\"update\":\"2023\\/08\\/27\",\"author\":\"\\u5200\\u5ba2\\u6e90\\u7801\\u7f51\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/verify_templates1.jpg\",\"dir\":\"templates1\",\"md5\":\"5970002fa41a10fdf818e7ca3dd78fd5\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230827,\"high\":20290909},{\"name\":\"\\u9a8c\\u8bc1\\u6a21\\u677f2\",\"description\":\"\\u9a8c\\u8bc1\\u6a21\\u677f2\",\"homepage\":\"https:\\/\\/www.dkewl.com\\/code\\/detail2426.html\",\"version\":\"2.0.0\",\"update\":\"2023\\/08\\/27\",\"author\":\"\\u5200\\u5ba2\\u6e90\\u7801\\u7f51\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/verify_templates2.jpg\",\"dir\":\"templates2\",\"md5\":\"24f9fc6402f09c4bd0ddcb4d3b6e56ea\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230827,\"high\":20290909},{\"name\":\"\\u9a8c\\u8bc1\\u6a21\\u677f3\",\"description\":\"\\u9a8c\\u8bc1\\u6a21\\u677f3\",\"homepage\":\"https:\\/\\/www.dkewl.com\\/code\\/detail2426.html\",\"version\":\"2.0.0\",\"update\":\"2023\\/08\\/27\",\"author\":\"\\u5200\\u5ba2\\u6e90\\u7801\\u7f51\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/verify_templates3.jpg\",\"dir\":\"templates3\",\"md5\":\"cc691fd681354ef02185514aef6d0cc4\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230827,\"high\":20290909},{\"name\":\"\\u9a8c\\u8bc1\\u6a21\\u677f4\",\"description\":\"\\u9a8c\\u8bc1\\u6a21\\u677f4\",\"homepage\":\"https:\\/\\/www.dkewl.com\\/code\\/detail2426.html\",\"version\":\"2.0.0\",\"update\":\"2023\\/08\\/27\",\"author\":\"\\u5200\\u5ba2\\u6e90\\u7801\\u7f51\",\"screenshot\":\"https:\\/\\/tznb.gitee.io\\/twonav_resource\\/screenshot\\/verify_templates4.jpg\",\"dir\":\"templates4\",\"md5\":\"3cccecd2075cc928f290c2ecdc9f4856\",\"url\":[\"\"],\"desc\":\"\\u8fd1\\u671f\\u76d7\\u7248\\u6cdb\\u6ee5,\\u5982\\u679c\\u60a8\\u662f\\u6b63\\u7248\\u6388\\u6743\\u7528\\u6237\\u8bf7\\u66f4\\u65b0\\u7cfb\\u7edf\\u540e\\u5728\\u4e0b\\u8f7d!<br \\/>\\u53cb\\u60c5\\u63d0\\u793a: \\u76d7\\u7248\\u65e0\\u4efb\\u4f55\\u5b89\\u5168\\u4fdd\\u969c!\",\"low\":20230827,\"high\":20290909}],\"desc\":\"rt:\\u6587\\u4ef6\\u53d1\\u5e03\\u65f6\\u95f4\\u6233 dir:\\u6587\\u4ef6\\u5939\\u540d\\u79f0 low:\\u6700\\u4f4e\\u7248\\u672c high:\\u6700\\u9ad8\\u7248\\u672c md5\\u5c0f\\u5199 \\u65b0\\u7248\\u653e\\u524d\\u9762 \\u53d1\\u65b0\\u7248\\u65f6\\u8bb0\\u5f97\\u6539\\u65e7\\u7248\\u672chigh\",\"time\":1695285371}','verify_模板缓存');
/*!40000 ALTER TABLE `global_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_icon`
--

DROP TABLE IF EXISTS `global_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_icon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url_md5` varchar(32) NOT NULL COMMENT 'url_md5',
  `url` text NOT NULL COMMENT 'url',
  `ico_url` text NOT NULL COMMENT 'url_ico',
  `add_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `file_name` text NOT NULL COMMENT '文件名',
  `file_mime` text NOT NULL COMMENT 'MIME类型',
  `extend` text NOT NULL COMMENT '预留扩展',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_icon`
--

LOCK TABLES `global_icon` WRITE;
/*!40000 ALTER TABLE `global_icon` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_user`
--

DROP TABLE IF EXISTS `global_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FID` int(10) unsigned NOT NULL,
  `User` varchar(32) NOT NULL COMMENT '账号',
  `Password` varchar(32) NOT NULL COMMENT '密码',
  `UserGroup` varchar(32) NOT NULL COMMENT '用户组',
  `Email` varchar(32) NOT NULL COMMENT '邮箱',
  `SecretKey` varchar(32) NOT NULL DEFAULT '' COMMENT 'SecretKey',
  `Token` varchar(32) NOT NULL DEFAULT '' COMMENT 'Token',
  `RegIP` varchar(64) NOT NULL DEFAULT '' COMMENT '注册IP',
  `RegTime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `Login` varchar(16) NOT NULL COMMENT '登录入口',
  `LoginConfig` text NOT NULL COMMENT '登陆配置',
  `kct` int(10) unsigned DEFAULT '0' COMMENT 'Key清理时间',
  `Extend1` text NOT NULL COMMENT '扩展1',
  `Extend2` text NOT NULL COMMENT '扩展2',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `User` (`User`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_user`
--

LOCK TABLES `global_user` WRITE;
/*!40000 ALTER TABLE `global_user` DISABLE KEYS */;
INSERT INTO `global_user` VALUES (1,0,'admin','33d92aa459fc7978c3e9b4abf4939a45','root','2848291524@qq.com','','','58.219.236.231',1694789740,'6a2e218b','a:7:{s:9:\"Password2\";s:0:\"\";s:9:\"api_model\";s:8:\"security\";s:11:\"KeySecurity\";s:1:\"0\";s:8:\"KeyClear\";s:1:\"7\";s:8:\"HttpOnly\";s:1:\"1\";s:7:\"Session\";s:3:\"360\";s:5:\"Login\";s:1:\"0\";}',1709715762,'','');
/*!40000 ALTER TABLE `global_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purview_list`
--

DROP TABLE IF EXISTS `purview_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purview_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL COMMENT '代号',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `description` varchar(128) NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purview_list`
--

LOCK TABLES `purview_list` WRITE;
/*!40000 ALTER TABLE `purview_list` DISABLE KEYS */;
INSERT INTO `purview_list` VALUES (1,'Upload_icon','上传图标','允许上传分类和链接图标'),(2,'Common_home','公开主页','允许主页公开访问(原强制私有)'),(3,'Sub_domain','二级域名','允许使用二级域名访问主页'),(4,'site_info','站点信息','允许修改站点信息'),(5,'header','头部代码','允许自定义头部代码(需允许站点信息)'),(6,'footer','底部代码','允许自定义底部代码(需允许站点信息)'),(7,'category','分类管理','允许添加/编辑/删除分类(未勾选时只读)'),(8,'link','链接管理','允许添加/编辑/删除链接(未勾选时只读)'),(9,'apply','收录管理','允许使用收录功能'),(10,'link_pwd','加密管理','允许使用加密管理(未勾选时只读)'),(11,'guestbook','留言板','允许使用留言板功能'),(12,'link_extend','链接扩展','允许使用链接扩展字段'),(13,'theme_in','主题设置','后台显示主题设置菜单'),(14,'theme_set','主题配置','允许自定义主题配置'),(15,'icon_pull','图标拉取','允许用户拉取链接图标'),(16,'article','文章管理','允许使用文章管理功能'),(17,'article_image','文章图片','允许在文章编辑器上传图片');
/*!40000 ALTER TABLE `purview_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regcode_list`
--

DROP TABLE IF EXISTS `regcode_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regcode_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) NOT NULL,
  `regcode` varchar(64) NOT NULL COMMENT '注册码',
  `u_group` varchar(64) NOT NULL COMMENT '用户组',
  `use_state` varchar(64) NOT NULL COMMENT '使用状态',
  `add_time` int(10) unsigned NOT NULL COMMENT '生成时间',
  `use_time` int(10) unsigned NOT NULL COMMENT '使用时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `regcode` (`regcode`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regcode_list`
--

LOCK TABLES `regcode_list` WRITE;
/*!40000 ALTER TABLE `regcode_list` DISABLE KEYS */;
INSERT INTO `regcode_list` VALUES (1,'1','8029048b','default','未使用',1694792236,0),(2,'1','9ffb20fc','default','未使用',1694792236,0),(3,'1','5e60c008','default','未使用',1694792236,0),(4,'1','b21e692a','default','未使用',1694792236,0),(5,'1','746f20d4','default','未使用',1694792236,0),(6,'1','dae2724a','default','未使用',1694792236,0),(7,'1','714c2273','default','未使用',1694792236,0),(8,'1','70b9a053','default','未使用',1694792236,0),(9,'1','aeff5b02','default','未使用',1694792236,0),(10,'1','3c5f4241','default','未使用',1694792236,0),(11,'1','4b6c4f8f','default','未使用',1694884853,0);
/*!40000 ALTER TABLE `regcode_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatadb_logs`
--

DROP TABLE IF EXISTS `updatadb_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatadb_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(32) NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT 'TRUE',
  `extra` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_name` (`file_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatadb_logs`
--

LOCK TABLES `updatadb_logs` WRITE;
/*!40000 ALTER TABLE `updatadb_logs` DISABLE KEYS */;
INSERT INTO `updatadb_logs` VALUES (1,'20230417.php',1681719049,'TRUE',''),(2,'20230420.php',1681977368,'TRUE',''),(3,'20230518.php',1684393068,'TRUE',''),(4,'20230522.php',1684762253,'TRUE',''),(5,'20230715.php',1689427853,'TRUE',''),(6,'20230723.php',1690119053,'TRUE',''),(7,'20230605.php',1694821745,'TRUE','');
/*!40000 ALTER TABLE `updatadb_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_apply`
--

DROP TABLE IF EXISTS `user_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) NOT NULL COMMENT '用户id',
  `iconurl` varchar(512) NOT NULL COMMENT '图标url',
  `title` varchar(512) NOT NULL COMMENT '标题',
  `url` varchar(512) NOT NULL COMMENT '链接',
  `ip` varchar(64) NOT NULL DEFAULT '' COMMENT 'ip',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT '邮箱',
  `ua` text NOT NULL COMMENT '浏览器UA',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '时间',
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `category_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类id',
  `category_name` varchar(512) NOT NULL DEFAULT '' COMMENT '分类名',
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_apply`
--

LOCK TABLES `user_apply` WRITE;
/*!40000 ALTER TABLE `user_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_article_list`
--

DROP TABLE IF EXISTS `user_article_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_article_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) NOT NULL COMMENT '用户id',
  `title` text NOT NULL COMMENT '标题',
  `category` int(10) unsigned NOT NULL COMMENT '分类id',
  `state` int(10) unsigned NOT NULL COMMENT '状态',
  `password` text NOT NULL COMMENT '访问密码',
  `top` int(10) unsigned NOT NULL COMMENT '置顶',
  `add_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `up_time` int(10) unsigned NOT NULL COMMENT '修改时间',
  `browse_count` int(10) unsigned NOT NULL COMMENT '浏览次数',
  `summary` text NOT NULL COMMENT '摘要',
  `content` text NOT NULL COMMENT '内容',
  `cover` text NOT NULL COMMENT '封面',
  `extend` text NOT NULL COMMENT '扩展',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_article_list`
--

LOCK TABLES `user_article_list` WRITE;
/*!40000 ALTER TABLE `user_article_list` DISABLE KEYS */;
INSERT INTO `user_article_list` VALUES (1,'1','优秀导航',1,1,'',0,1694821827,1695284516,34,'123','<p>www.520xv.com</p>','','');
/*!40000 ALTER TABLE `user_article_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_categorys`
--

DROP TABLE IF EXISTS `user_categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_categorys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `fid` int(10) unsigned NOT NULL COMMENT '父分类ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `pid` int(10) unsigned NOT NULL COMMENT '加密组id',
  `status` int(1) NOT NULL COMMENT '状态',
  `property` int(1) NOT NULL COMMENT '私有',
  `name` text NOT NULL COMMENT '名称',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `up_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `weight` int(10) NOT NULL COMMENT '权重',
  `description` text NOT NULL COMMENT '描述',
  `font_icon` text NOT NULL COMMENT '字体图标',
  `icon` text NOT NULL COMMENT '个性图标',
  `extend` text NOT NULL COMMENT '扩展',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='用户分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_categorys`
--

LOCK TABLES `user_categorys` WRITE;
/*!40000 ALTER TABLE `user_categorys` DISABLE KEYS */;
INSERT INTO `user_categorys` VALUES (1,1,0,0,0,1,0,'默认分类',1672502400,1672502400,0,'TwoNav默认分类','fa fa-book','',''),(2,1,0,1,0,1,0,'默认分类',1694789740,1694790942,0,'TwoNav默认分类','fa fa-book','',''),(3,2,0,1,0,1,0,'常用网站',1608042122,1689759652,0,'','fa fa-book','',''),(4,3,0,1,0,1,0,'游戏资源',1689661019,1689758282,0,'','fa fa-certificate','',''),(5,4,0,1,0,1,0,'影音视听',1689658402,1689761955,0,'','fa fa-play-circle','',''),(6,5,0,1,0,1,0,'技术论坛',1689762268,1695285250,0,'','fa fa-align-center','',''),(7,6,0,1,0,1,0,'软件工具',1689658321,1689762008,0,'','fa fa-cloud-download','',''),(10,9,0,1,0,1,0,'云服务器',1689760855,1689762034,0,'','fa fa-archive','','');
/*!40000 ALTER TABLE `user_categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_config`
--

DROP TABLE IF EXISTS `user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `k` varchar(32) NOT NULL COMMENT '键',
  `v` text NOT NULL COMMENT '值',
  `t` varchar(32) NOT NULL COMMENT '类型',
  `d` varchar(32) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_config`
--

LOCK TABLES `user_config` WRITE;
/*!40000 ALTER TABLE `user_config` DISABLE KEYS */;
INSERT INTO `user_config` VALUES (1,1,'s_site','a:17:{s:5:\"title\";s:21:\"安小熙博客导航anxiaoxi.com\";s:8:\"subtitle\";s:28:\"学习技术 从这里开始\";s:4:\"logo\";s:46:\"安小熙博客anxiaoxi.com-免费分享全网优质资源\";s:8:\"keywords\";s:105:\"TwoNav,开源导航,开源书签,简洁导航,云链接,个人导航,个人书签,扩展,多用户,落幕\";s:11:\"description\";s:82:\"TwoNav 是一款使用PHP + SQLite3/MySQL 开发的简约导航/书签管理器。\";s:10:\"link_model\";s:10:\"Transition\";s:9:\"link_icon\";i:0;s:13:\"custom_header\";s:0:\"\";s:13:\"custom_footer\";s:0:\"\";s:18:\"main_link_priority\";i:1;s:9:\"site_icon\";s:37:\"./data/user/admin/favicon/favicon.png\";s:8:\"top_link\";i:0;s:8:\"new_link\";i:0;s:8:\"max_link\";i:0;s:14:\"site_icon_file\";s:35:\"data/user/admin/favicon/favicon.png\";s:14:\"article_visual\";s:1:\"1\";s:12:\"article_icon\";s:1:\"2\";}','config','站点配置'),(2,1,'s_templates','a:7:{s:7:\"home_pc\";s:9:\"liutongxu\";s:8:\"home_pad\";s:9:\"liutongxu\";s:5:\"login\";s:7:\"default\";s:7:\"transit\";s:13:\"WebStack-Hugo\";s:5:\"apply\";s:7:\"wanfeng\";s:7:\"article\";s:11:\"wanfeng-nav\";s:6:\"verify\";s:10:\"templates4\";}','config','默认模板'),(3,1,'category_id','13','max_id','分类ID'),(4,1,'link_id','105','max_id','链接ID'),(5,1,'pwd_group_id','2','max_id','加密组ID'),(6,1,'WebStack-Hugo','a:15:{s:9:\"hover_tip\";s:1:\"1\";s:9:\"search-bg\";s:1:\"1\";s:10:\"suggestion\";s:1:\"1\";s:12:\"search-modal\";s:1:\"1\";s:8:\"qweather\";s:1:\"1\";s:11:\"sidebar-nav\";s:1:\"1\";s:8:\"hitokoto\";s:1:\"1\";s:8:\"lazyload\";s:1:\"1\";s:9:\"font-size\";s:2:\"14\";s:9:\"NightMode\";s:1:\"0\";s:2:\"bg\";s:3:\"not\";s:6:\"bg_img\";s:0:\"\";s:8:\"light_bg\";s:54:\"./templates/transit/WebStack-Hugo/assets/images/bg.jpg\";s:8:\"night_bg\";s:0:\"\";s:11:\"navbar-link\";s:123:\"<li ><a href=\"https://github.com/tznb1/TwoNav\"><i class=\"fa fa-github icon-fw mr-2\"></i><span> 关于本站</span></a></li>\";}','theme_transit','主题配置'),(7,1,'WebStack-Hugo','a:27:{s:5:\"admin\";s:1:\"1\";s:4:\"sort\";s:1:\"0\";s:9:\"hover_tip\";s:1:\"1\";s:15:\"search_bookmark\";s:1:\"1\";s:9:\"search-bg\";s:1:\"1\";s:10:\"suggestion\";s:1:\"1\";s:12:\"search-modal\";s:1:\"1\";s:8:\"qweather\";s:1:\"1\";s:11:\"sidebar-nav\";s:1:\"1\";s:8:\"hitokoto\";s:1:\"1\";s:8:\"lazyload\";s:1:\"1\";s:13:\"hide-category\";s:1:\"1\";s:16:\"hide-description\";s:1:\"0\";s:9:\"font-size\";s:2:\"14\";s:9:\"NightMode\";s:1:\"0\";s:2:\"bg\";s:3:\"not\";s:6:\"bg_img\";s:0:\"\";s:12:\"bg_img_night\";s:0:\"\";s:8:\"light_bg\";s:55:\"./templates/home/WebStack-Hugo/assets/images/bg-dna.jpg\";s:8:\"night_bg\";s:0:\"\";s:9:\"canvas-bg\";s:0:\"\";s:10:\"logo_light\";s:0:\"\";s:9:\"logo_dark\";s:0:\"\";s:14:\"logo_collapsed\";s:0:\"\";s:11:\"navbar-link\";s:123:\"<li ><a href=\"https://github.com/tznb1/TwoNav\"><i class=\"fa fa-github icon-fw mr-2\"></i><span> 关于本站</span></a></li>\";s:11:\"friend-link\";s:337:\"<a href=\"https://gitee.com/tznb/TwoNav\" title=\"TwoNav\" target=\"_blank\">TwoNav</a>\n<a href=\"http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=v7luheswgDne1IoAK3AmDeUOXbBCiI6U&authKey=KkmuJfxzoJBuzzngCYt5%2FUxhLt%2B7ePztmUa9bpf8BLaKhNYG6rFhyebAW%2BUDIrSH&noverify=0&group_code=537649972\" title=\"憨豆工作室\" target=\"_blank\">憨豆工作室</a>\";s:11:\"header_code\";s:0:\"\";}','theme_home','主题配置'),(8,1,'wanfeng-nav','a:2:{s:4:\"logo\";s:59:\"./templates/transit/wanfeng-nav/images/1689218236746554.png\";s:11:\"navbar-link\";s:67:\"<li><a href=\"https://github.com/tznb1/TwoNav\">关于本站</a></li>\";}','theme_transit','主题配置'),(9,1,'wanfeng-nav','a:2:{s:4:\"logo\";s:37:\"./data/user/admin/favicon/favicon.png\";s:11:\"navbar-link\";s:68:\"<li><a href=\"https://github.com/tznb1/TwoNav\">关于本站</a></li>\n\";}','theme_article','主题配置'),(10,1,'apply','a:6:{s:5:\"apply\";i:2;s:6:\"Notice\";s:0:\"\";s:12:\"submit_limit\";i:10;s:7:\"iconurl\";N;s:11:\"description\";N;s:5:\"email\";N;}','config','收录配置'),(11,1,'SimpleWeb','a:1:{s:13:\"backgroundURL\";s:37:\"./templates/home/SimpleWeb/img/bg.jpg\";}','theme_home','主题配置'),(12,1,'heimdall','a:2:{s:19:\"default_category_id\";s:1:\"1\";s:14:\"default_search\";s:5:\"baidu\";}','theme_home','主题配置');
/*!40000 ALTER TABLE `user_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_count`
--

DROP TABLE IF EXISTS `user_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_count` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `k` varchar(32) NOT NULL COMMENT '键',
  `v` bigint(10) unsigned DEFAULT '0' COMMENT '值',
  `t` varchar(32) NOT NULL COMMENT '类型',
  `e` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_count`
--

LOCK TABLES `user_count` WRITE;
/*!40000 ALTER TABLE `user_count` DISABLE KEYS */;
INSERT INTO `user_count` VALUES (1,'202309',529,'index_Ym',''),(1,'20230915',54,'index_Ymd',''),(1,'20230915',0,'ip_list','a:12:{i:0;s:14:\"58.219.236.231\";i:1;s:13:\"36.28.207.199\";i:2;s:14:\"154.28.229.130\";i:3;s:14:\"159.223.102.13\";i:4;s:13:\"34.254.53.125\";i:5;s:13:\"146.70.185.10\";i:6;s:14:\"35.232.162.148\";i:7;s:14:\"14.216.220.237\";i:8;s:14:\"172.104.96.196\";i:9;s:13:\"65.155.30.101\";i:10;s:11:\"113.78.91.5\";i:11;s:13:\"51.222.253.10\";}'),(1,'20230915',12,'ip_count',''),(1,'202309',104,'click_Ym',''),(1,'20230915',18,'click_Ymd',''),(1,'20230916',142,'index_Ymd',''),(1,'20230916',0,'ip_list','a:72:{i:0;s:14:\"195.211.77.140\";i:1;s:14:\"195.211.77.142\";i:2;s:13:\"51.81.167.146\";i:3;s:10:\"45.90.61.7\";i:4;s:15:\"133.242.174.119\";i:5;s:13:\"51.222.253.19\";i:6;s:13:\"66.249.64.168\";i:7;s:15:\"162.142.125.121\";i:8;s:12:\"106.75.77.61\";i:9;s:13:\"87.236.176.81\";i:10;s:13:\"198.235.24.77\";i:11;s:14:\"205.169.39.173\";i:12;s:13:\"167.94.146.56\";i:13;s:13:\"66.249.64.170\";i:14;s:14:\"172.104.96.196\";i:15;s:13:\"171.244.43.14\";i:16;s:13:\"35.233.62.116\";i:17;s:12:\"40.119.43.39\";i:18;s:13:\"87.251.67.217\";i:19;s:13:\"114.236.57.65\";i:20;s:15:\"157.245.222.211\";i:21;s:14:\"43.248.108.183\";i:22;s:13:\"119.60.105.28\";i:23;s:13:\"66.249.64.166\";i:24;s:15:\"185.180.143.189\";i:25;s:12:\"54.225.23.14\";i:26;s:14:\"54.186.156.157\";i:27;s:11:\"42.228.9.78\";i:28;s:14:\"104.140.148.98\";i:29;s:12:\"51.222.253.8\";i:30;s:13:\"39.130.61.183\";i:31;s:13:\"205.210.31.48\";i:32;s:14:\"116.171.11.145\";i:33;s:14:\"27.115.124.109\";i:34;s:11:\"123.6.49.47\";i:35;s:10:\"123.6.49.9\";i:36;s:13:\"205.210.31.33\";i:37;s:15:\"178.236.246.204\";i:38;s:15:\"120.229.106.188\";i:39;s:15:\"117.189.107.181\";i:40;s:13:\"18.206.173.74\";i:41;s:10:\"47.88.78.6\";i:42;s:14:\"109.237.98.197\";i:43;s:12:\"71.6.134.231\";i:44;s:15:\"162.142.125.224\";i:45;s:13:\"51.222.253.16\";i:46;s:13:\"51.222.253.10\";i:47;s:15:\"162.216.150.209\";i:48;s:15:\"185.180.143.136\";i:49;s:14:\"60.210.236.167\";i:50;s:14:\"205.210.31.237\";i:51;s:13:\"36.99.136.138\";i:52;s:13:\"36.99.136.139\";i:53;s:13:\"36.99.136.142\";i:54;s:14:\"113.200.85.152\";i:55;s:10:\"50.31.21.4\";i:56;s:14:\"172.105.20.227\";i:57;s:10:\"74.82.47.5\";i:58;s:15:\"117.132.188.205\";i:59;s:12:\"8.210.123.17\";i:60;s:14:\"192.241.235.31\";i:61;s:13:\"64.227.78.169\";i:62;s:13:\"205.210.31.13\";i:63;s:11:\"83.97.73.87\";i:64;s:14:\"185.233.19.152\";i:65;s:12:\"94.156.6.215\";i:66;s:13:\"51.222.253.18\";i:67;s:14:\"168.119.65.112\";i:68;s:13:\"8.142.165.189\";i:69;s:14:\"35.216.181.245\";i:70;s:14:\"167.248.133.34\";i:71;s:14:\"181.41.206.226\";}'),(1,'20230916',72,'ip_count',''),(1,'20230916',10,'click_Ymd',''),(1,'20230917',283,'index_Ymd',''),(1,'20230917',0,'ip_list','a:149:{i:0;s:12:\"223.13.83.11\";i:1;s:14:\"223.160.172.61\";i:2;s:14:\"61.242.196.247\";i:3;s:14:\"139.205.90.243\";i:4;s:14:\"223.160.226.52\";i:5;s:14:\"117.181.186.57\";i:6;s:13:\"117.93.46.170\";i:7;s:14:\"123.178.46.138\";i:8;s:14:\"183.206.134.86\";i:9;s:13:\"39.144.158.32\";i:10;s:14:\"13.115.119.239\";i:11;s:13:\"119.52.227.64\";i:12;s:13:\"122.142.80.79\";i:13;s:12:\"39.144.197.7\";i:14;s:13:\"152.32.233.30\";i:15;s:12:\"36.20.46.230\";i:16;s:14:\"39.105.167.138\";i:17;s:15:\"117.178.143.242\";i:18;s:11:\"182.92.5.44\";i:19;s:13:\"87.236.176.70\";i:20;s:15:\"113.250.254.155\";i:21;s:14:\"183.209.182.77\";i:22;s:13:\"39.144.157.97\";i:23;s:12:\"36.150.60.24\";i:24;s:15:\"120.235.124.196\";i:25;s:13:\"112.9.123.103\";i:26;s:13:\"111.48.77.166\";i:27;s:13:\"49.67.211.186\";i:28;s:12:\"45.90.63.106\";i:29;s:13:\"61.140.233.13\";i:30;s:13:\"171.91.253.87\";i:31;s:14:\"172.104.96.196\";i:32;s:13:\"117.147.32.88\";i:33;s:12:\"51.222.253.1\";i:34;s:15:\"222.189.199.234\";i:35;s:15:\"124.232.225.248\";i:36;s:15:\"124.232.225.236\";i:37;s:12:\"124.126.0.87\";i:38;s:13:\"54.198.55.229\";i:39;s:13:\"39.130.103.53\";i:40;s:14:\"171.104.71.215\";i:41;s:14:\"106.55.200.246\";i:42;s:12:\"223.74.42.23\";i:43;s:15:\"118.248.178.123\";i:44;s:13:\"113.78.173.13\";i:45;s:13:\"51.222.253.14\";i:46;s:12:\"34.78.249.41\";i:47;s:14:\"216.24.216.247\";i:48;s:15:\"115.231.218.192\";i:49;s:15:\"220.200.109.121\";i:50;s:14:\"220.181.108.81\";i:51;s:14:\"87.236.176.128\";i:52;s:11:\"112.3.76.81\";i:53;s:14:\"223.160.196.15\";i:54;s:14:\"39.144.133.225\";i:55;s:15:\"115.202.195.195\";i:56;s:14:\"218.26.159.164\";i:57;s:10:\"60.73.82.7\";i:58;s:11:\"47.92.79.86\";i:59;s:13:\"27.216.74.243\";i:60;s:11:\"27.47.4.202\";i:61;s:15:\"107.148.191.194\";i:62;s:12:\"60.31.253.92\";i:63;s:14:\"101.26.155.230\";i:64;s:14:\"27.192.176.165\";i:65;s:13:\"27.217.89.233\";i:66;s:15:\"183.219.150.117\";i:67;s:13:\"120.68.73.107\";i:68;s:12:\"112.53.78.52\";i:69;s:15:\"162.216.149.253\";i:70;s:14:\"117.136.33.208\";i:71;s:13:\"218.76.62.166\";i:72;s:12:\"39.130.61.44\";i:73;s:14:\"123.135.166.33\";i:74;s:15:\"182.146.122.190\";i:75;s:11:\"27.212.98.8\";i:76;s:15:\"112.232.209.106\";i:77;s:12:\"112.96.50.19\";i:78;s:14:\"112.10.131.165\";i:79;s:13:\"223.104.69.63\";i:80;s:13:\"51.222.253.11\";i:81;s:12:\"1.198.140.37\";i:82;s:12:\"58.62.210.44\";i:83;s:14:\"104.243.24.202\";i:84;s:14:\"113.24.224.222\";i:85;s:13:\"113.200.45.93\";i:86;s:15:\"183.222.198.218\";i:87;s:15:\"114.226.248.197\";i:88;s:13:\"39.128.73.191\";i:89;s:12:\"111.1.88.217\";i:90;s:14:\"116.26.191.120\";i:91;s:12:\"27.23.182.69\";i:92;s:14:\"171.219.174.44\";i:93;s:14:\"58.252.232.209\";i:94;s:14:\"124.129.147.82\";i:95;s:13:\"183.17.147.61\";i:96;s:14:\"118.78.129.253\";i:97;s:14:\"120.228.130.39\";i:98;s:10:\"50.3.85.34\";i:99;s:12:\"42.63.128.70\";i:100;s:13:\"222.90.130.48\";i:101;s:14:\"219.135.121.94\";i:102;s:13:\"218.12.17.139\";i:103;s:13:\"183.136.225.9\";i:104;s:10:\"74.82.47.4\";i:105;s:13:\"120.227.93.49\";i:106;s:14:\"119.179.81.233\";i:107;s:15:\"223.166.145.166\";i:108;s:15:\"117.188.141.189\";i:109;s:14:\"61.143.187.195\";i:110;s:13:\"36.99.136.130\";i:111;s:14:\"119.176.245.16\";i:112;s:14:\"124.116.249.55\";i:113;s:11:\"113.5.3.117\";i:114;s:13:\"27.38.251.145\";i:115;s:13:\"120.9.229.214\";i:116;s:12:\"61.147.15.67\";i:117;s:12:\"61.147.21.51\";i:118;s:12:\"61.147.21.52\";i:119;s:13:\"36.157.48.132\";i:120;s:13:\"14.216.204.72\";i:121;s:12:\"171.40.8.225\";i:122;s:12:\"51.222.253.3\";i:123;s:11:\"116.26.9.55\";i:124;s:14:\"120.225.184.97\";i:125;s:12:\"112.21.148.2\";i:126;s:13:\"203.91.85.127\";i:127;s:15:\"112.229.246.142\";i:128;s:12:\"111.18.96.30\";i:129;s:13:\"14.153.115.20\";i:130;s:13:\"115.45.85.115\";i:131;s:14:\"101.207.187.17\";i:132;s:14:\"118.123.105.92\";i:133;s:15:\"120.242.150.200\";i:134;s:14:\"110.185.174.44\";i:135;s:14:\"123.149.111.89\";i:136;s:15:\"137.184.117.244\";i:137;s:12:\"54.208.46.75\";i:138;s:13:\"223.73.29.126\";i:139;s:13:\"114.236.57.65\";i:140;s:14:\"120.207.48.185\";i:141;s:14:\"111.21.182.242\";i:142;s:14:\"120.235.60.202\";i:143;s:13:\"61.182.71.162\";i:144;s:14:\"110.86.104.176\";i:145;s:14:\"205.198.122.17\";i:146;s:15:\"124.227.244.162\";i:147;s:12:\"112.48.35.74\";i:148;s:14:\"123.180.52.111\";}'),(1,'20230917',149,'ip_count',''),(1,'20230917',72,'click_Ymd',''),(1,'20230921',36,'index_Ymd',''),(1,'20230921',0,'ip_list','a:10:{i:0;s:14:\"111.77.207.166\";i:1;s:13:\"39.144.169.41\";i:2;s:13:\"39.144.169.62\";i:3;s:14:\"117.132.183.17\";i:4;s:14:\"220.196.160.76\";i:5;s:13:\"59.83.208.105\";i:6;s:14:\"180.101.244.12\";i:7;s:15:\"180.101.245.249\";i:8;s:14:\"220.196.160.53\";i:9;s:14:\"220.196.160.75\";}'),(1,'20230921',10,'ip_count',''),(1,'20230921',3,'click_Ymd',''),(1,'20230922',0,'ip_list','a:9:{i:0;s:15:\"129.211.166.142\";i:1;s:14:\"117.132.183.17\";i:2;s:15:\"180.101.245.247\";i:3;s:15:\"220.196.160.125\";i:4;s:14:\"220.196.160.53\";i:5;s:15:\"180.101.245.250\";i:6;s:14:\"220.196.160.45\";i:7;s:15:\"220.196.160.154\";i:8;s:14:\"220.196.160.96\";}'),(1,'20230922',9,'ip_count',''),(1,'20230922',7,'index_Ymd',''),(1,'20230925',7,'index_Ymd',''),(1,'20230925',0,'ip_list','a:5:{i:0;s:13:\"106.224.9.185\";i:1;s:13:\"39.144.169.23\";i:2;s:12:\"27.115.124.6\";i:3;s:13:\"27.115.124.45\";i:4;s:14:\"27.115.124.109\";}'),(1,'20230925',5,'ip_count',''),(1,'20230925',1,'click_Ymd',''),(1,'202403',29,'index_Ym',''),(1,'20240305',18,'index_Ymd',''),(1,'20240305',0,'ip_list','a:1:{i:0;s:11:\"192.168.3.1\";}'),(1,'20240305',1,'ip_count',''),(1,'202403',4,'click_Ym',''),(1,'20240305',3,'click_Ymd',''),(1,'20240306',11,'index_Ymd',''),(1,'20240306',0,'ip_list','a:3:{i:0;s:14:\"112.18.127.199\";i:1;s:10:\"123.6.49.9\";i:2;s:11:\"123.6.49.50\";}'),(1,'20240306',3,'ip_count',''),(1,'20240306',1,'click_Ymd','');
/*!40000 ALTER TABLE `user_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL COMMENT '分组代号',
  `name` text NOT NULL COMMENT '分组名称',
  `uid` text NOT NULL COMMENT '模板用户id',
  `uname` text NOT NULL COMMENT '模板用户名',
  `allow` text NOT NULL COMMENT '允许权限',
  `codes` text NOT NULL COMMENT '允许代号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_links`
--

DROP TABLE IF EXISTS `user_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `lid` int(10) unsigned NOT NULL COMMENT '链接id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `fid` int(10) unsigned NOT NULL COMMENT '分类id',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加密组id',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `property` int(1) NOT NULL DEFAULT '0' COMMENT '私有',
  `title` text NOT NULL COMMENT '标题',
  `url` text NOT NULL COMMENT '主链接',
  `url_standby` text NOT NULL COMMENT '备用链接',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `keywords` text NOT NULL COMMENT '关键字',
  `description` text NOT NULL COMMENT '描述',
  `icon` text NOT NULL COMMENT '图标',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `up_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `extend` text NOT NULL COMMENT '扩展',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COMMENT='用户链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_links`
--

LOCK TABLES `user_links` WRITE;
/*!40000 ALTER TABLE `user_links` DISABLE KEYS */;
INSERT INTO `user_links` VALUES (1,1,0,1,0,1,0,'TwoNav 源码','https://gitee.com/tznb/TwoNav','',0,'','项目开源地址','',0,1672502400,1672502400,''),(2,2,0,1,0,1,0,'使用说明','https://gitee.com/tznb/TwoNav/wikis','',0,'','使用说明','',0,1672502400,1672502400,''),(3,1,1,1,0,1,0,'TwoNav 源码','https://www.anxiaoxi.com','',0,'','项目开源地址','',52,1694789740,1709716036,''),(4,2,1,1,0,1,0,'使用说明','https://gitee.com/tznb/TwoNav/wikis','',0,'','使用说明','',22,1694789740,1694790455,''),(5,3,1,1,0,1,0,'一生相随博客-专注于网站源码、游戏源码、工具软件等免费资源分享','https://www.520xv.com','',3,'网站源码,网站模板,APP源码,游戏源码,资源分享,网站插件,工具软件,源码分享,商业源码,源码教程,免费源码,免费资源,子比主题美化','一生相随博客是一个专业的优质网络资源分享平台,提供各种网站源码、游戏源码、模板插件、软件工具、APP源码、网络教程、免费资源分享等,为站长提供一站式资源下载','',30,1694790517,1695284270,''),(7,5,1,5,0,1,0,'吾爱破解','https://www.anxiaoxi.com/','',0,'','非常牛逼的破解论坛','',2,1689762307,1709716052,''),(10,8,1,9,0,1,0,'腾讯云','https://cloud.tencent.com/','',0,'','腾讯云','',11,1689658127,1689761173,''),(11,9,1,2,0,1,0,'华为商城','https://vmall.com','',0,'','华为商城','',30,1689937165,1695285250,''),(12,10,1,9,0,1,0,'华为云','https://www.huaweicloud.com/','',0,'','华为云','',2,1689937135,1695285250,''),(13,11,1,9,0,1,0,'金山云','https://www.ksyun.com/','',0,'','金山云','',0,1689937087,1695285250,''),(14,12,1,9,0,1,0,'阿里云','https://www.aliyun.com','',0,'','阿里云，老马的云','',0,1689937020,1695285250,''),(15,13,1,2,0,1,0,'腾讯网','https://qq.com','',0,'','老马的网站','',22,1689936970,1695285250,''),(16,14,1,4,0,1,0,'网易云音乐','https://music.163.com/','',0,'','网易云音乐','',4,1689936922,1695285250,''),(17,15,1,2,0,1,0,'京东','https://www.jd.com','',0,'','你懂得','',8,1689936873,1695285250,''),(18,16,1,2,0,1,0,'知乎','https://www.zhihu.com/','',0,'','知呼','',12,1689936833,1690082882,''),(19,17,1,2,0,1,0,'百度网盘','https://pan.baidu.com/','',0,'','百度网盘','',9,1689936793,1695285250,''),(22,20,1,2,0,1,0,'新浪','https://www.sina.com.cn/','',0,'','新浪','',15,1689936581,1689936754,''),(42,40,1,6,0,1,0,'奈斯搜索','https://www.niceso.net/','',0,'','阿里云盘资源搜索站','',0,1689933134,1695285250,''),(43,41,1,6,0,1,0,'KubeDown 脚本','https://greasyfork.org/zh-CN/scripts/463832-%E7%99%BE%E5%BA%A6%E7%BD%91%E7%9B%98%E4%B8%8D%E9%99%90%E9%80%9F%E4%B8%8B%E8%BD%BD-kubedown','',0,'','百度网盘不限速下载插件','',7,1689933038,1695285250,''),(44,42,1,4,0,1,0,'非凡资源站','http://ffzy5.tv/','',0,'','影视资源站','',4,1689932528,1695285250,''),(45,43,1,6,0,1,0,'V盘搜','http://www.vpansou.com/','',0,'','百度网盘搜索引擎，每天更新收录大量视频,种子,小说,壁纸,音乐等网盘资源','',3,1689931798,1694230644,''),(46,44,1,4,0,1,0,'易搜','https://yiso.fun/','',0,'','网盘资源搜索网站','',5,1689931624,1695285250,''),(47,45,1,4,0,1,0,'电影天堂','https://www.dytt8.net','',0,'','一个老牌的影视下载站，非常不错','',2,1689931362,1695285250,''),(54,52,1,6,0,1,0,'钙网免费logo设计','https://uugai.com/','',0,'','免费logo设计','',13,1689780684,1695285250,''),(55,53,1,6,0,1,0,'免费图床、公共图床','https://imgse.com/','',0,'','免费图床','',2,1689780565,1695285250,''),(56,54,1,5,0,1,0,'飘云阁','https://www.chinapyg.com/','',0,'','和吾爱并列的一个牛逼论坛','',4,1689762357,1695285250,''),(57,55,1,3,0,1,0,'我爱上搜服','https://www.zhaosf.com','',0,'','传奇发布站','',14,1689661086,1689661144,''),(61,59,1,4,0,1,0,'最新一生相随影视','https://wwwn.lanzoum.com/b02wdkuud','',0,'','','',9,1689658128,1695285250,''),(88,86,1,3,0,1,0,'99j传奇发布网','https://www.99j.com/','',0,'','传奇发布网','',5,1690081473,1695285250,''),(89,87,1,3,0,1,0,'996传奇盒子','https://www.996box.com/','',0,'','996传奇盒子，三端互通传奇客户端','',4,1690081571,1695285250,''),(90,88,1,3,0,1,0,'GM起点论坛','https://www.gmqd.com/','',0,'','传奇端游服务端论坛','',6,1690081706,1695285250,''),(94,92,1,2,0,1,0,'OPPO商城','https://www.oppo.com/','',0,'','OPPo手机商城','',5,1690083010,1695285250,''),(95,93,1,2,0,1,0,'realme手机商城','https://www.realme.com/','',0,'','realme手机商城','',11,1690083035,1695285250,''),(96,94,1,2,0,1,0,'vivo官方商城','https://www.vivo.com/','',0,'','vivo手机官方商城','',4,1690083103,1695285250,''),(97,95,1,2,0,1,0,'小米商城','https://www.mi.com/','',0,'','小米官方商城','',4,1690083130,1695285250,''),(98,96,1,2,0,1,0,'荣耀官方商城','https://www.hihonor.com/','',0,'','荣耀官方商城','',4,1690083204,1695285250,''),(100,98,1,6,0,1,0,'油猴脚本 | Tampermonkey','https://www.tampermonkey.net','',0,'','篡改猴 (Tampermonkey) 简称油猴拥有超过1000万用户的浏览器扩展。 它适用于 Chrome、Microsoft Edge、Safari、Opera Next 和 Firefox','',3,1691211671,1694230728,''),(101,99,1,6,0,1,0,'标小智LOGO神器','https://www.logosc.cn','',0,'','LOGO在线制作','',3,1691508948,1695285250,''),(102,100,1,6,0,1,0,'logo狗','https://www.logogou.com','',0,'','logo在线设计生成制作','',4,1691509026,1695285250,'');
/*!40000 ALTER TABLE `user_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `user` varchar(32) NOT NULL COMMENT '用户名',
  `ip` varchar(64) DEFAULT '' COMMENT '请求ip',
  `time` varchar(13) NOT NULL COMMENT '请求时间',
  `type` varchar(16) NOT NULL COMMENT '日志类型',
  `content` text NOT NULL COMMENT '请求内容',
  `description` text NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COMMENT='日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES (1,1,'admin','58.219.236.231','1694791698','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(2,1,'admin','116.171.11.145','1694829898','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(3,1,'admin','223.160.172.61','1694880906','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(4,1,'admin','223.160.226.52','1694881122','login','User=admin&Password=f35f43b8cc3facacfa0049d8fb7062f1','请求登录>账户或密码错误'),(5,1,'admin','223.160.226.52','1694881127','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(6,1,'admin','117.93.46.170','1694881640','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(7,1,'admin','123.178.46.138','1694881733','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(8,1,'admin','122.142.80.79','1694883457','login','User=admin&Password=e10adc3949ba59abbe56e057f20f883e','请求登录>账户或密码错误'),(9,1,'admin','122.142.80.79','1694883471','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(10,1,'admin','36.20.46.230','1694884006','login','User=admin&Password=e10adc3949ba59abbe56e057f20f883e','请求登录>账户或密码错误'),(11,1,'admin','36.20.46.230','1694884017','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(12,1,'admin','117.178.143.242','1694884664','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(13,1,'admin','171.91.253.87','1694888416','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(14,1,'admin','113.78.173.13','1694898879','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(15,1,'admin','115.202.195.195','1694906427','login','User=admin&Password=4297f44b13955235245b2497399d7a93','请求登录>账户或密码错误'),(16,1,'admin','115.202.195.195','1694906448','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(17,1,'admin','60.31.253.92','1694911810','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(18,1,'admin','27.217.89.233','1694912516','login','User=admin&Password=e10adc3949ba59abbe56e057f20f883e','请求登录>账户或密码错误'),(19,1,'admin','27.217.89.233','1694912534','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(20,1,'admin','183.219.150.117','1694912662','login','User=admin&Password=4297f44b13955235245b2497399d7a93','请求登录>账户或密码错误'),(21,1,'admin','117.136.33.208','1694913750','login','User=admin&Password=4297f44b13955235245b2497399d7a93','请求登录>账户或密码错误'),(22,1,'admin','117.136.33.208','1694913755','login','User=admin&Password=4297f44b13955235245b2497399d7a93','请求登录>账户或密码错误'),(23,1,'admin','117.136.33.208','1694913760','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(24,1,'admin','112.10.131.165','1694916440','login','User=admin&Password=e10adc3949ba59abbe56e057f20f883e','请求登录>账户或密码错误'),(25,1,'admin','183.222.198.218','1694917776','login','User=admin&Password=e10adc3949ba59abbe56e057f20f883e','请求登录>账户或密码错误'),(26,1,'admin','183.222.198.218','1694917783','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(27,1,'admin','114.226.248.197','1694918071','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(28,1,'admin','1.198.140.37','1694918815','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(29,1,'admin','27.23.182.69','1694919479','login','User=admin&Password=e10adc3949ba59abbe56e057f20f883e','请求登录>账户或密码错误'),(30,1,'admin','27.23.182.69','1694919497','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(31,1,'admin','118.78.129.253','1694920526','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(32,1,'admin','120.9.229.214','1694930951','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(33,1,'admin','171.40.8.225','1694932496','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(34,1,'admin','120.225.184.97','1694933407','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(35,1,'admin','111.18.96.30','1694935241','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(36,1,'admin','115.45.85.115','1694936599','login','User=admin&Password=202cb962ac59075b964b07152d234b70','请求登录>账户或密码错误'),(37,1,'admin','115.45.85.115','1694936611','login','User=admin&Password=4297f44b13955235245b2497399d7a93','请求登录>账户或密码错误'),(38,1,'admin','115.45.85.115','1694936621','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(39,1,'admin','115.45.85.115','1694936673','logout','','注销登录'),(40,1,'admin','110.185.174.44','1694939285','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(41,1,'admin','120.207.48.185','1694940900','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(42,1,'admin','111.77.207.166','1695278020','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(43,1,'admin','39.144.169.41','1695284055','login','User=admin&Password=19c73fd98fc57b83da400485e4f8df57','请求登录>登录成功'),(44,1,'admin','39.144.169.41','1695286041','logout','','注销登录'),(45,1,'admin','39.144.169.41','1695286053','login','User=admin&Password=76b93a2c2750ff881a3b1113a8da316d','请求登录>登录成功'),(46,1,'admin','39.144.169.62','1695287854','logout','','注销登录'),(47,1,'admin','39.144.169.62','1695287870','login','User=admin&Password=76b93a2c2750ff881a3b1113a8da316d','请求登录>登录成功'),(48,1,'admin','39.144.169.23','1695652492','logout','','注销登录'),(49,1,'admin','39.144.169.23','1695652510','login','User=admin&Password=76b93a2c2750ff881a3b1113a8da316d','请求登录>登录成功'),(50,1,'admin','192.168.3.1','1709643420','login','User=admin&Password=76b93a2c2750ff881a3b1113a8da316d','请求登录>登录成功'),(51,1,'admin','192.168.3.1','1709649292','logout','','注销登录'),(52,1,'admin','192.168.3.1','1709649308','login','User=admin&Password=76b93a2c2750ff881a3b1113a8da316d','请求登录>登录成功'),(53,1,'admin','192.168.3.1','1709650858','logout','','注销登录'),(54,1,'admin','192.168.3.1','1709650872','login','User=admin&Password=76b93a2c2750ff881a3b1113a8da316d','请求登录>登录成功'),(55,1,'admin','112.18.127.199','1709715843','login','User=admin&Password=76b93a2c2750ff881a3b1113a8da316d','请求登录>登录成功'),(56,1,'admin','112.18.127.199','1709715913','logout','','注销登录'),(57,1,'admin','112.18.127.199','1709715930','login','User=admin&Password=0bf9975a9bfd75c317f839e85b6d0a55','请求登录>登录成功');
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_info`
--

DROP TABLE IF EXISTS `user_login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `user` varchar(32) NOT NULL COMMENT '用户名',
  `ip` varchar(64) NOT NULL DEFAULT '' COMMENT '登录IP',
  `ua` text NOT NULL COMMENT '浏览器UA',
  `login_time` int(10) unsigned NOT NULL COMMENT '登录时间',
  `last_time` int(10) unsigned NOT NULL COMMENT '最后访问时间',
  `expire_time` int(10) unsigned NOT NULL COMMENT '过期时间',
  `cookie_key` varchar(32) NOT NULL COMMENT 'cookie_key',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_info`
--

LOCK TABLES `user_login_info` WRITE;
/*!40000 ALTER TABLE `user_login_info` DISABLE KEYS */;
INSERT INTO `user_login_info` VALUES (40,1,'admin','112.18.127.199','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.289 Safari/537.36',1709715930,1709716115,1740819930,'c97bbabe448d21b999ee83b81af6e1e7');
/*!40000 ALTER TABLE `user_login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pwd_group`
--

DROP TABLE IF EXISTS `user_pwd_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_pwd_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '分组id',
  `uid` varchar(32) NOT NULL COMMENT '用户id',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '描述',
  `display` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '主页显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pwd_group`
--

LOCK TABLES `user_pwd_group` WRITE;
/*!40000 ALTER TABLE `user_pwd_group` DISABLE KEYS */;
INSERT INTO `user_pwd_group` VALUES (1,1,'1','一生相随博客','123','123',1);
/*!40000 ALTER TABLE `user_pwd_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_share`
--

DROP TABLE IF EXISTS `user_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) NOT NULL COMMENT '用户id',
  `sid` varchar(13) NOT NULL DEFAULT '' COMMENT '标识',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `add_time` bigint(13) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `up_time` bigint(13) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `expire_time` bigint(13) unsigned NOT NULL DEFAULT '0' COMMENT '到期时间',
  `views` bigint(13) NOT NULL DEFAULT '0' COMMENT '浏览数',
  `description` text NOT NULL COMMENT '备注',
  `type` int(1) NOT NULL COMMENT '类型',
  `data` text NOT NULL COMMENT '数据',
  `pv` int(1) NOT NULL COMMENT '私有可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_share`
--

LOCK TABLES `user_share` WRITE;
/*!40000 ALTER TABLE `user_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'xychemkj_com'
--

--
-- Dumping routines for database 'xychemkj_com'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 17:12:42
