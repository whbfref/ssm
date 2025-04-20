-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm36ra6
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618389930053 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-04-14 08:04:29',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-14 08:04:29',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-14 08:04:29',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-14 08:04:29',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-14 08:04:29',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-14 08:04:29',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618389218215,'2021-04-14 08:33:37',1618389172695,'广东省梅州市梅江区江南街道作新小学','陈一','12312312312','是'),(1618389930052,'2021-04-14 08:45:29',1618389889755,'广东省梅州市梅江区江南街道白马四巷作新小学','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618390151429 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm36ra6/upload/1618388123097.jpg'),(2,'picture2','http://localhost:8080/ssm36ra6/upload/1618388907303.jpg'),(3,'picture3','http://localhost:8080/ssm36ra6/upload/1618389789927.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618390138524 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (121,'2021-04-14 08:04:29',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-14 08:04:29',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-14 08:04:29',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-14 08:04:29',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-14 08:04:29',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-14 08:04:29',6,6,'用户名6','评论内容6','回复内容6'),(1618389437312,'2021-04-14 08:37:16',1618389117498,1618389172695,'2','SRRETE','111'),(1618390138523,'2021-04-14 08:48:57',1618389872482,1618389889755,'2','很好用的精华','111');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618390035937 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-04-14 08:04:29',1,'用户名1','留言内容1','回复内容1'),(112,'2021-04-14 08:04:29',2,'用户名2','留言内容2','回复内容2'),(113,'2021-04-14 08:04:29',3,'用户名3','留言内容3','回复内容3'),(114,'2021-04-14 08:04:29',4,'用户名4','留言内容4','回复内容4'),(115,'2021-04-14 08:04:29',5,'用户名5','留言内容5','回复内容5'),(116,'2021-04-14 08:04:29',6,'用户名6','留言内容6','回复内容6'),(1618390035936,'2021-04-14 08:47:15',1618389889755,'2','请问活动什么时候开始','明天');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618389735366 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-04-14 08:04:29','标题1','简介1','http://localhost:8080/ssm36ra6/upload/1618388057379.jpg','<p>内容1</p>'),(102,'2021-04-14 08:04:29','标题2','简介2','http://localhost:8080/ssm36ra6/upload/1618388065435.jpg','<p>内容2</p>'),(103,'2021-04-14 08:04:29','标题3','简介3','http://localhost:8080/ssm36ra6/upload/1618388074175.jpg','<p>内容3</p>'),(104,'2021-04-14 08:04:29','标题4','简介4','http://localhost:8080/ssm36ra6/upload/1618388081464.jpg','<p>内容4</p>'),(105,'2021-04-14 08:04:29','标题5','简介5','http://localhost:8080/ssm36ra6/upload/1618388089663.jpg','<p>内容5</p>'),(106,'2021-04-14 08:04:29','标题6','简介6','http://localhost:8080/ssm36ra6/upload/1618388109570.jpg','<p>内容6</p>'),(1618389735365,'2021-04-14 08:42:15','618优惠活动','618优惠活动','http://localhost:8080/ssm36ra6/upload/1618389715486.jpg','<p>全场商品参与618优惠活动</p><p><img src=\"http://localhost:8080/ssm36ra6/upload/1618389734063.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618390160342 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1618390053521,'2021-04-14 08:47:33','202141416473248715487','shangpinxinxi',1618389889755,1618389872482,'娇韵诗双萃精华露','http://localhost:8080/ssm36ra6/upload/1618389848160.jpg',2,600,600,1200,1200,1,'已完成','广东省梅州市梅江区江南街道白马四巷作新小学','12312312312','陈一'),(1618390160341,'2021-04-14 08:49:20','202141416491932413368','shangpinxinxi',1618389889755,46,'商品名称6','http://localhost:8080/ssm36ra6/upload/1618387986645.jpg',2,470,470,940,940,1,'已支付','广东省梅州市梅江区江南街道白马四巷作新小学','12312312312','陈一');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618389811089 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2021-04-14 08:04:29','商家1','123456','商家名称1','http://localhost:8080/ssm36ra6/upload/shangjia_touxiang1.jpg','所在地区1','经营范围1','13823888881',100),(22,'2021-04-14 08:04:29','商家2','123456','商家名称2','http://localhost:8080/ssm36ra6/upload/shangjia_touxiang2.jpg','所在地区2','经营范围2','13823888882',100),(23,'2021-04-14 08:04:29','商家3','123456','商家名称3','http://localhost:8080/ssm36ra6/upload/shangjia_touxiang3.jpg','所在地区3','经营范围3','13823888883',100),(24,'2021-04-14 08:04:29','商家4','123456','商家名称4','http://localhost:8080/ssm36ra6/upload/shangjia_touxiang4.jpg','所在地区4','经营范围4','13823888884',100),(25,'2021-04-14 08:04:29','商家5','123456','商家名称5','http://localhost:8080/ssm36ra6/upload/shangjia_touxiang5.jpg','所在地区5','经营范围5','13823888885',100),(26,'2021-04-14 08:04:29','商家6','123456','商家名称6','http://localhost:8080/ssm36ra6/upload/shangjia_touxiang6.jpg','所在地区6','经营范围6','13823888886',100),(1618389811088,'2021-04-14 08:43:31','1','1','娇韵诗专卖店','http://localhost:8080/ssm36ra6/upload/1618389824243.jpg','杭州','护肤品','12345678978',0);
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1618389703782 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2021-04-14 08:04:29','清洁卸妆'),(32,'2021-04-14 08:04:29','精华水'),(33,'2021-04-14 08:04:29','面部精华'),(34,'2021-04-14 08:04:29','乳液系列'),(35,'2021-04-14 08:04:29','眼部系列'),(36,'2021-04-14 08:04:29','面霜系列'),(1618389703781,'2021-04-14 08:41:43','面膜系列');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618389872483 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-04-14 08:04:29','商品编号1','商品名称1','乳液系列','http://localhost:8080/ssm36ra6/upload/1618387836778.jpg','品牌1','规格1','<p>商品详情1</p>','商家账号1','商家名称1','2021-04-14 16:10:04',2,99.9,1,99),(42,'2021-04-14 08:04:29','商品编号2','商品名称2','清洁卸妆','http://localhost:8080/ssm36ra6/upload/1618387847742.jpg','品牌2','规格2','<p>商品详情2</p>','商家账号2','商家名称2','2021-04-14 16:44:56',5,99.9,2,99),(43,'2021-04-14 08:04:29','商品编号3','商品名称3','眼部系列','http://localhost:8080/ssm36ra6/upload/1618387857493.jpg','品牌3','规格3','<p>商品详情3</p>','商家账号3','商家名称3','2021-04-14 16:10:51',4,99.9,3,99),(44,'2021-04-14 08:04:29','商品编号4','商品名称4','精华水','http://localhost:8080/ssm36ra6/upload/1618387868101.jpg','品牌4','规格4','<p>商品详情4</p>','商家账号4','商家名称4','2021-04-14 16:45:45',17,99.9,4,99),(45,'2021-04-14 08:04:29','商品编号5','商品名称5','面部精华','http://localhost:8080/ssm36ra6/upload/1618387888647.jpg','品牌5','规格5','<p>商品详情5</p>','商家账号5','商家名称5','2021-04-14 16:11:12',6,99.9,5,99),(46,'2021-04-14 08:04:29','商品编号6','商品名称6','面霜系列','http://localhost:8080/ssm36ra6/upload/1618387986645.jpg','品牌6','规格6','<p>商品详情6</p>','商家账号6','商家名称6','2021-04-14 16:49:26',21,470,6,0),(1618389872482,'2021-04-14 08:44:32','1618389828952','娇韵诗双萃精华露','面部精华','http://localhost:8080/ssm36ra6/upload/1618389848160.jpg','娇韵诗','30ml','<p>保湿修复</p><p><img src=\"http://localhost:8080/ssm36ra6/upload/1618389870468.jpg\"></p>','1','娇韵诗专卖店','2021-04-14 16:49:01',7,600,5,28);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618390019868 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','6839l97rwp8uq4h9g8527zwxuhkobo2g','2021-04-14 08:08:04','2021-04-14 09:52:19'),(2,21,'商家1','shangjia','商家','ytlswi09pezp8tyrtaaj0h9oyf9f1m13','2021-04-14 08:24:31','2021-04-14 09:24:31'),(3,1618389050379,'1','shangjia','商家','crlv6dmlfjm56d4gndfjwytpzwnza138','2021-04-14 08:30:57','2021-04-14 09:38:47'),(4,1618389172695,'2','yonghu','用户','22p8vja3o5zbux5pa971r3hk6m1di7sa','2021-04-14 08:32:58','2021-04-14 09:39:27'),(5,1618389811088,'1','shangjia','商家','vc4lhhvwwqmtrd78euf2nq8k1c6mdmzj','2021-04-14 08:43:36','2021-04-14 09:51:47'),(6,1618389889755,'2','yonghu','用户','ob47mahvk5p81609x4dp4z5yla2qkbdk','2021-04-14 08:44:55','2021-04-14 09:50:24');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuihuoshenqing`
--

DROP TABLE IF EXISTS `tuihuoshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuihuoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `tuihuoyuanyin` varchar(200) DEFAULT NULL COMMENT '退货原因',
  `shangchuanpingzheng` varchar(200) DEFAULT NULL COMMENT '上传凭证',
  `tuihuofangshi` varchar(200) DEFAULT NULL COMMENT '退货方式',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618390289350 DEFAULT CHARSET=utf8 COMMENT='退货申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuihuoshenqing`
--

LOCK TABLES `tuihuoshenqing` WRITE;
/*!40000 ALTER TABLE `tuihuoshenqing` DISABLE KEYS */;
INSERT INTO `tuihuoshenqing` VALUES (51,'2021-04-14 08:04:29','订单编号1','商品名称1','商品分类1','总金额1','七天无理由','http://localhost:8080/ssm36ra6/upload/1618387996616.jpg','上门取件','2021-04-14','用户名1','联系电话1','商家账号1','商家名称1','是',''),(52,'2021-04-14 08:04:29','订单编号2','商品名称2','商品分类2','总金额2','七天无理由','http://localhost:8080/ssm36ra6/upload/1618388007091.jpg','上门取件','2021-04-14','用户名2','联系电话2','商家账号2','商家名称2','是',''),(53,'2021-04-14 08:04:29','订单编号3','商品名称3','商品分类3','总金额3','七天无理由','http://localhost:8080/ssm36ra6/upload/1618388015190.jpg','上门取件','2021-04-14','用户名3','联系电话3','商家账号3','商家名称3','是',''),(54,'2021-04-14 08:04:29','订单编号4','商品名称4','商品分类4','总金额4','七天无理由','http://localhost:8080/ssm36ra6/upload/1618388029720.jpg','上门取件','2021-04-14','用户名4','联系电话4','商家账号4','商家名称4','是',''),(55,'2021-04-14 08:04:29','订单编号5','商品名称5','商品分类5','总金额5','七天无理由','http://localhost:8080/ssm36ra6/upload/1618388038721.jpg','上门取件','2021-04-14','用户名5','联系电话5','商家账号5','商家名称5','是',''),(56,'2021-04-14 08:04:29','订单编号6','商品名称6','商品分类6','总金额6','七天无理由','http://localhost:8080/ssm36ra6/upload/1618388045936.jpg','上门取件','2021-04-14','用户名6','联系电话6','商家账号6','商家名称6','是',''),(1618390289349,'2021-04-14 08:51:28','202141416473248715487','娇韵诗双萃精华露','面部精华','1200','与商品描述不符','http://localhost:8080/ssm36ra6/upload/1618390248046.jpg','上门取件','2021-04-14','2','12312312312','1','娇韵诗专卖店','是','同意退货');
/*!40000 ALTER TABLE `tuihuoshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','aboo','管理员','2021-04-14 08:04:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618389889756 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-14 08:04:29','用户1','123456','姓名1','http://localhost:8080/ssm36ra6/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-04-14 08:04:29','用户2','123456','姓名2','http://localhost:8080/ssm36ra6/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-04-14 08:04:29','用户3','123456','姓名3','http://localhost:8080/ssm36ra6/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-04-14 08:04:29','用户4','123456','姓名4','http://localhost:8080/ssm36ra6/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-04-14 08:04:29','用户5','123456','姓名5','http://localhost:8080/ssm36ra6/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-04-14 08:04:29','用户6','123456','姓名6','http://localhost:8080/ssm36ra6/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1618389889755,'2021-04-14 08:44:49','2','2','陈一','http://localhost:8080/ssm36ra6/upload/1618389904506.jpg','女','12312312312',2860);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 21:20:39
