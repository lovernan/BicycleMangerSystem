-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bicycle
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `academy`
--

DROP TABLE IF EXISTS `academy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy`
--

LOCK TABLES `academy` WRITE;
/*!40000 ALTER TABLE `academy` DISABLE KEYS */;
INSERT INTO `academy` VALUES (1,'通信与信息工程学院'),(2,'经济与管理学院'),(3,'计算机学院'),(4,'光电工程学院'),(5,'自动化学院'),(6,'理学院'),(7,'传媒与艺术学院'),(8,'软件学院'),(9,'外国语学院'),(10,'人文与社会科学'),(11,'继续教育学院'),(12,'海外教育学院'),(13,'材料科学与工程'),(14,'电子科学与工程'),(15,'教育科学与技术学院'),(16,'贝尔英才学院'),(17,'计算机学院'),(18,'软件学院'),(19,'空间安全学院'),(20,'电动自行车'),(21,'电动自行车'),(22,'电动自行车'),(23,'电动自行车'),(24,'电动自行车'),(25,'电动自行车'),(26,'1');
/*!40000 ALTER TABLE `academy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(45) DEFAULT NULL,
  `admin_password` varchar(45) DEFAULT NULL,
  `admin_identity` varchar(45) DEFAULT NULL,
  `statement` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','123456','管理员','可添加管理员'),(2,'root','123456','管理员','普通浏览数据');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `rentname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `comment` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,11,'王海学','吴','我想要车，最低多少钱'),(2,11,'吴','王海学','最低400.'),(19,11,'张鑫','吴','车怎么样，成色如何，可以便宜点吗'),(20,11,'史家乐','吴','400块钱前排站队'),(21,11,'王海学','吴',''),(22,11,'王海学','吴',''),(23,11,'王海学','吴',''),(24,11,'王海学','张鑫','我也有车你要吗'),(25,11,'王海学','史家乐','你说的这是什么呀'),(26,11,'王海学','史家乐','说的这是什么鬼'),(27,11,'史家乐','王海学','这是啥'),(28,11,'','王海学','大大撒大大是'),(29,11,'','王海学','大大撒大大是'),(30,11,'史家乐','王海学','大大萨达'),(31,6,'王海学','王楠','车子不错'),(32,11,'史家乐','王海学','啦啦啦啦啦'),(33,15,'王海学','史家乐','我想要呀'),(34,15,'王海学','史家乐','分红i的活佛按附件哦哎'),(35,15,'王海学','史家乐','gong'),(36,21,'史家乐','王海学','你个智障'),(37,25,'王海学','史家乐','我想要您的车，请问最低多少钱'),(38,25,'王海学','史家乐','最低多少钱呢');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lostcomment`
--

DROP TABLE IF EXISTS `lostcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lostcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `rentname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `comment` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lostcomment`
--

LOCK TABLES `lostcomment` WRITE;
/*!40000 ALTER TABLE `lostcomment` DISABLE KEYS */;
INSERT INTO `lostcomment` VALUES (1,2,'王海学','史家乐','好像是我的呀'),(2,2,'王海学','王海学','是吗'),(3,2,'王海学','王海学','是吗'),(4,1,'史家乐','王海学','这是我的呀 我马上联系你  谢谢'),(5,2,'王海学','王海学','的SFSDGSDGS');
/*!40000 ALTER TABLE `lostcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lostfound`
--

DROP TABLE IF EXISTS `lostfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lostfound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `information` varchar(600) DEFAULT NULL,
  `tel` varchar(45) NOT NULL,
  `image` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lostfound`
--

LOCK TABLES `lostfound` WRITE;
/*!40000 ALTER TABLE `lostfound` DISABLE KEYS */;
INSERT INTO `lostfound` VALUES (2,'史家乐','我在南操捡到一副项链，请联系我','4324235252','images/2.jpg'),(3,'委屈','卫生打扫的','23131231','upload/33.png'),(4,'王海学','委屈恶气','额的企鹅切','upload/53e07c0830061.jpg'),(5,'王海学','萍小可爱的校园卡落在南三二楼掉渣饼店铺前了，现存放在二楼收残处阿姨那里，麻烦大家多帮忙转告哦~校会权服竭诚为您服务','355623432','upload/psb.jpg'),(6,'王海学','黎原甫小哥哥，你的社保卡在南二一楼打饭窗口找到，请您去南二一楼打饭窗口领取。校会权服竭诚为您服务。','13543525463','upload/psb (1).jpg'),(7,'史家乐','杜承峻的校园卡已找到，请失主到香樟园的潮派电竞馆领取。','12576834678','upload/psb (2).jpg'),(8,'史家乐','程曦小柚子，你的校园卡已找到，请联系小姐姐领取哦','QQ：772389475','upload/psb (3).jpg'),(9,'张鑫','小哥哥丢失一块zippo打火机，丢失地点大约在图书馆一楼到教二的路上，如有小柚子拾到，请联系小哥哥哦','QQ：8044737','upload/psb (4).jpg'),(10,'张鑫','我又来找东西了 我的新伞丢了 彩墨木柄自动伞 昨天下午大概4点半左右 希望有人能看到 好人一生平安','243546465','upload/psb (5).jpg'),(11,'王海学','捡到一些东西，请联系我','1796501333','upload/1111.jpg');
/*!40000 ALTER TABLE `lostfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchh`
--

DROP TABLE IF EXISTS `matchh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(6000) DEFAULT NULL,
  `context` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchh`
--

LOCK TABLES `matchh` WRITE;
/*!40000 ALTER TABLE `matchh` DISABLE KEYS */;
INSERT INTO `matchh` VALUES (1,'2018年南邮公路自行车冠军赛','一、赛事名称\r\n\r\n2018年南邮公路自行车冠军赛\r\n\r\n二、赛事主题\r\n\r\n骑游百岛洞头，逐梦海上花园。\r\n\r\n三、举办单位\r\n\r\n（一）主办单位：南京邮电大学体育部\r\n（二）承办单位：南京邮电大学保卫处\r\n\r\n（三）协办单位：洞头区文体局。\r\n\r\n四、比赛项目和参赛队伍\r\n\r\n（一）比赛项目：\r\n\r\n1、个人计时赛：男子40公里，女子20公里。\r\n\r\n2、城市绕圈赛：男子90公里，女子60公里。\r\n\r\n五、竞赛时间及日程安排\r\n\r\n（一）个人计时赛\r\n\r\n竞赛地点：330国道灵霓海堤段\r\n\r\n竞赛全程：男子40公里，女子20公里\r\n\r\n竞赛用时：约240分钟\r\n\r\n竞赛线路：仙林地区'),(2,'南京邮电大学76周年校庆公告','   七十年栉风沫雨，春华秋实；七十载砥砺奋进，桃李芬芳。2012年4月20日，南京邮电大学将迎来70周年华诞。自校庆一号公告发布以来，海内外校友对母校校庆给予了热切关注和鼎力支持，纷纷以各种方式表达对母校的感念和回报；社会各界也对南京邮电大学70周年校庆给予了许多关怀和帮助，校庆各项筹备工作进展顺利。在此，我们谨向长期以来关心、支持学校建设发展的各级领导、各界朋友和海内外校友致以最诚挚的谢意和美好的祝愿！\r\n\r\n    风好正是扬帆时，再启新程创辉煌。在校内外的共同努力下，学校70周年校庆各项准备工作现已基本就绪，将紧紧围绕“物联天下 邮通八方 携手历史 共创未来”的校庆主题，举行70周年校庆系列庆祝活动。一场高水平的文化盛宴、高规格的学术盛事、高层次的科技盛典、高品味的宾客盛会即将隆重推出。在此，我们再次发出诚挚邀请，热忱欢迎各级领导、社会贤达及海内外校友拨冗莅会，共襄盛典。\r\n\r\n特此公告，敬祈周知。'),(10,'2018中国山地自行车公开赛（浦口水墨大埝站）','赛事公告\r\n\r\n\r\n一、主办单位：中国自行车运动协会\r\n\r\n江苏省体育局\r\n\r\n二、承办单位：江苏省南京市浦口区人民政府\r\n\r\n江苏省南京市体育总会\r\n\r\n三、协办单位：江苏省体育竞赛管理中心\r\n\r\n南京市浦口区体育局\r\n\r\n南京市浦口区体育总会\r\n\r\n南京浦口城乡建设集团有限公司\r\n\r\n四、独家执行机构：江苏赛克林体育发展有限公司\r\n\r\n五、比赛时间、地点：\r\n\r\n2018年4月14-15日\r\n\r\n江苏省南京市浦口区水墨大埝美丽乡村休闲旅游区\r\n\r\n\r\n六、比赛设项及活动日程：\r\n\r\n（一） 竞赛分组：\r\n\r\n\r\n\r\n（二） 活动日程：\r\n\r\n\r\n\r\n注：具体单项比赛时间安排，请关注官方网站。\r\n\r\n\r\n七、比赛路线信息：详见补充通知。\r\n\r\n\r\n八、报名与报到确认：\r\n\r\n\r\n（一）报名：\r\n\r\n男子山地越野赛公开组报名参赛人数不超过150人，即30支队。报名必须首先在官网上注册最多7人的代表队，代表队名称必须由中文开始、可以包括英文字母，最多18个字符段，即最多 9 个汉字长度。报名录取按网上报名时间的先后顺序额满截止。该组每队报名人数限5 人，但不得少于 3人。');
/*!40000 ALTER TABLE `matchh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `information` varchar(800) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (2,'张鑫','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','15705186120','images/2.jpg'),(4,'孙嘉宝','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','18252062020','images/2.jpg'),(5,'王普浩','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','18452648418','images/3.jpg'),(6,'王楠','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','18120178369','images/2.jpg'),(11,'吴','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','13365425427','images/3.jpg'),(15,'史家乐','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','13365425427','images/3.jpg'),(19,'王海学','大大','大苏打大大撒旦','upload/53e07c0830061.jpg'),(20,'王海学','本人有一辆自行车，99新，成色如图 看上的可以直接私聊我','QQ：772389475','upload/timg.jpg'),(21,'王海学','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','QQ：772389475','upload/timg.jpg'),(25,'史家乐','本人有一辆自行车，99新，成色如图 看上的可以直接私聊我','15295523262','upload/agfgfdbdf.jpg'),(26,'王海学','现有一辆山地自行车可以出租，随时都可以租用。车辆99新。有意者请联系我。','13365425427','upload/erretwt.jpg'),(27,'史家乐','本人有一辆自行车，99新，成色如图 看上的可以直接私聊我','231432425','upload/et5yhdhd.jpg');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typemain`
--

DROP TABLE IF EXISTS `typemain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typemain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typemain`
--

LOCK TABLES `typemain` WRITE;
/*!40000 ALTER TABLE `typemain` DISABLE KEYS */;
INSERT INTO `typemain` VALUES (1,'山地自行车'),(2,'普通自行车'),(3,'电动自行车'),(4,'摩托车'),(5,'山地自行车');
/*!40000 ALTER TABLE `typemain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `student_number` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `academy` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `descc` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'王海学','B16150108','whx123','教科院','山地','images/3.jpg','aaa'),(2,'张鑫','B16150120','zx1234','教科院','死飞','images/2.jpg','bbb'),(3,'史家乐','B16150110','sjl123','通信与信息工程学院',NULL,'images/3.jpg',NULL),(4,'吴锐彪','B16150113','wrb123','教育科学与技术学院',NULL,'images/2.jpg',NULL),(5,'孙嘉宝','B16150104','sjb123','教育科学与技术学院',NULL,'images/3.jpg',NULL),(6,'丁季成','B16150107','djc123','教科院','死飞','images/2.jpg','11'),(7,'王普浩','B16150109','wph123','教科','普通','images/3.jpg','11'),(8,'王楠','B16150102','wn123','教科院','小自行车','images/2.jpg','11'),(9,'钱家乐','B16150127','123','教科院','劳斯莱斯幻影','images/3.jpg','11'),(10,'王晓燕','B16150101','123456','教科院','自行车','images/2.jpg','1'),(11,'贝尔英才学院',NULL,NULL,NULL,NULL,'upload/3.jpg',NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'ceshi','xxxxxxxx','xxxxxxxxxxx','xxxxxxxxx','xx','upload/u=4173141415,2254702688&fm=27&gp=0.jpg','xx'),(15,'ceshi','1','1','111','1','upload/33.png','1'),(16,'text','12','12','12','12',NULL,'12'),(17,'1','2','3','4','5',NULL,''),(18,'1','1','1','1','1',NULL,''),(19,'3','3','3','3','3',NULL,''),(20,'44','44','44','44','44',NULL,''),(21,'5','5','5','5','5','E:\\upload/2.jpg',''),(22,'5','5','5','5','','E:\\upload/1.jpg',''),(23,'8','8','8','8','','E:\\upload/2.jpg',''),(24,'8','8','8','','','E:\\upload/1.jpg',''),(25,'8','8','8','','','E:\\upload/1.jpg',''),(26,'6','6','6','','','E:\\upload/2.jpg',''),(27,'0','0','0','0','0','E:\\upload/1.jpg',''),(28,'5','5','5','','','E:\\upload/2.jpg','');
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

-- Dump completed on 2018-04-03 12:33:20
