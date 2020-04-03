/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.28 : Database - dzw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dzw` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dzw`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(10) DEFAULT NULL,
  `address_fid` int(11) DEFAULT NULL,
  `Attribute_101` varchar(10) DEFAULT NULL,
  `Attribute_102` varchar(10) DEFAULT NULL,
  `Attribute_103` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

/*Table structure for table `artisan` */

DROP TABLE IF EXISTS `artisan`;

CREATE TABLE `artisan` (
  `artisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `artisan_name` varchar(10) DEFAULT NULL,
  `artisan_money` float DEFAULT NULL,
  PRIMARY KEY (`artisan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `artisan` */

/*Table structure for table `artisan_set` */

DROP TABLE IF EXISTS `artisan_set`;

CREATE TABLE `artisan_set` (
  `artisan_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `artisan_set_name` varchar(10) DEFAULT NULL,
  `artisan_set_money` float DEFAULT NULL,
  `artisan_set_fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`artisan_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `artisan_set` */

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(10) DEFAULT NULL,
  `Attribute_79` varchar(10) DEFAULT NULL,
  `Attribute_80` varchar(20) DEFAULT NULL,
  `Attribute_81` varchar(30) DEFAULT NULL,
  `Attribute_82` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `car_card` varchar(12) DEFAULT NULL,
  `car_model` varchar(20) DEFAULT NULL,
  `car_putdate` date DEFAULT NULL,
  `car_outdate` date DEFAULT NULL,
  `car_status` varchar(10) DEFAULT NULL,
  `car_name` varchar(5) DEFAULT NULL,
  `car_phone` varchar(16) DEFAULT NULL,
  `car_type` int(11) DEFAULT NULL,
  `Attribute_36` varchar(10) DEFAULT NULL,
  `Attribute_39` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `FK_Relationship_4` (`client_id`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car` */

/*Table structure for table `car_brand` */

DROP TABLE IF EXISTS `car_brand`;

CREATE TABLE `car_brand` (
  `car_brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_brand_name` varchar(10) DEFAULT NULL,
  `Attribute_74` varchar(20) DEFAULT NULL,
  `Attribute_75` varchar(20) DEFAULT NULL,
  `Attribute_76` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`car_brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_brand` */

/*Table structure for table `car_file` */

DROP TABLE IF EXISTS `car_file`;

CREATE TABLE `car_file` (
  `car_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_brand_id` int(11) DEFAULT NULL,
  `car_file_name` varchar(10) DEFAULT NULL,
  `car_file_type` varchar(15) DEFAULT NULL,
  `car_file_put_money` int(11) DEFAULT NULL,
  `car_file_out_money` int(11) DEFAULT NULL,
  `Attribute_71` varchar(20) DEFAULT NULL,
  `Attribute_72` varchar(20) DEFAULT NULL,
  `Attribute_73` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`car_file_id`),
  KEY `FK_Relationship_9` (`car_brand_id`),
  CONSTRAINT `FK_Relationship_9` FOREIGN KEY (`car_brand_id`) REFERENCES `car_brand` (`car_brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_file` */

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(5) DEFAULT NULL,
  `client_card` int(11) DEFAULT NULL,
  `client_pwd` varchar(10) DEFAULT NULL,
  `card_date` date DEFAULT NULL,
  `client_money` float DEFAULT NULL,
  `client_money_sum` float DEFAULT NULL,
  `client_fete_date` date DEFAULT NULL,
  `client_address` varchar(50) DEFAULT NULL,
  `client_type` int(11) DEFAULT NULL,
  `Attribute_139` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `client` */

/*Table structure for table `functions` */

DROP TABLE IF EXISTS `functions`;

CREATE TABLE `functions` (
  `function_id` int(11) NOT NULL AUTO_INCREMENT,
  `function_name` varchar(10) DEFAULT NULL,
  `function_url` varchar(100) DEFAULT NULL,
  `function_date` date DEFAULT NULL,
  `function_fid` int(11) DEFAULT NULL,
  `function_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`function_id`),
  KEY `AK_Identifier_2` (`function_name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `functions` */

insert  into `functions`(`function_id`,`function_name`,`function_url`,`function_date`,`function_fid`,`function_code`) values (1,'前台收银','aside/deskAside.html','2020-03-26',0,'el-icon-s-shop'),(2,'今日营业额','yt/business.html','2020-03-26',1,'el-icon-document'),(3,'收银结算','tfm/jszx.html','2020-03-26',1,'el-icon-menu'),(4,'车辆维护',NULL,'2020-03-26',1,'el-icon-location'),(5,'维修接车','yjk/wxadd.html','2020-03-26',4,'el-icon-location'),(6,'竣工检查','yjk/jgjx.html','2020-03-26',4,'el-icon-s-order'),(7,'统计报表',NULL,'2020-03-26',1,'el-icon-s-data'),(8,'数据资料','aside/tradeAside.html','2020-03-26',0,'el-icon-s-grid'),(9,'供货单位','xf/ghdw.html','2020-03-26',8,'el-icon-document'),(10,'商品资料',NULL,'2020-03-26',8,'el-icon-location'),(11,'发动机品牌','xf/fdjpp.html','2020-03-26',10,'el-icon-s-order'),(12,'车型档案','xf/cxda.html','2020-03-26',10,'el-icon-location'),(13,'服务管理',NULL,'2020-03-26',8,'el-icon-s-marketing'),(14,'服务项目','xf/wxxm.html','2020-03-26',13,'el-icon-s-data'),(15,'商品类别','xf/spzl.html','2020-03-26',13,'el-icon-s-order'),(16,'客户中心','aside/clientAside.html','2020-04-03',0,'el-icon-s-management'),(17,'客户管理',NULL,'2020-04-03',16,'el-icon-location'),(18,'会员管理',NULL,'2020-04-03',16,'el-icon-s-marketing'),(19,'客户资料','tfm/khzl.html','2020-04-03',17,'el-icon-location'),(20,'车辆资料','tfm/clzl.html','2020-04-03',17,'el-icon-s-order'),(21,'会员开卡','tfm/hykk.html','2020-04-03',18,'el-icon-s-data'),(22,'会员充值','tfm/hycz.html','2020-04-03',18,'el-icon-s-data'),(23,'会员资料','tfm/hyzl.html','2020-04-03',18,'el-icon-s-data'),(24,'人事管理','aside/personnelAside.html','2020-04-03',0,'el-icon-s-custom'),(25,'组织机构',NULL,NULL,24,'el-icon-location'),(26,'岗位定义',NULL,NULL,24,'el-icon-s-marketing'),(27,'离职登记',NULL,NULL,24,'el-icon-s-help'),(28,'技工设置',NULL,NULL,24,'el-icon-s-help'),(29,'组织机构','sjm/zzjg.html',NULL,25,'el-icon-location'),(30,'通讯名录','yt/message.html',NULL,25,'el-icon-location'),(31,'岗位定义','sjm/gwdy.html',NULL,26,'el-icon-s-flag'),(32,'离职登记','sjm/lzdj.html',NULL,27,'el-icon-location'),(33,'班组定义','tjy/bzdy.html',NULL,28,'el-icon-location'),(34,'技工管理','tjy/xjjg.html',NULL,28,'el-icon-s-help'),(35,'外勤车辆','tjy/wqcl.html',NULL,28,'el-icon-s-help'),(36,'月度报表','yt/month.html',NULL,7,'el-icon-s-data'),(37,'年度报表','yt/year.html',NULL,7,'el-icon-s-data');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type_id` int(11) DEFAULT NULL,
  `item_divide` varchar(10) DEFAULT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `item_time` float DEFAULT NULL,
  `item_money` float DEFAULT NULL,
  `item_type` int(11) DEFAULT NULL,
  `item_brand_name` varchar(20) DEFAULT NULL,
  `Attribute_93` varchar(20) DEFAULT NULL,
  `Attribute_94` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FK_Relationship_14` (`item_type_id`),
  CONSTRAINT `FK_Relationship_14` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`item_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item` */

/*Table structure for table `item_type` */

DROP TABLE IF EXISTS `item_type`;

CREATE TABLE `item_type` (
  `item_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type_name` varchar(20) DEFAULT NULL,
  `item_type_fid` int(11) DEFAULT NULL,
  `Attribute_96` varchar(10) DEFAULT NULL,
  `Attribute_97` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item_type` */

/*Table structure for table `maintain` */

DROP TABLE IF EXISTS `maintain`;

CREATE TABLE `maintain` (
  `maintain_id` int(11) NOT NULL AUTO_INCREMENT,
  `maintain_bill` varchar(20) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `artisan_set_id` int(11) DEFAULT NULL,
  `artisan_id` int(11) DEFAULT NULL,
  `maintain_car_card` varchar(12) DEFAULT NULL,
  `maintain_car_model` varchar(20) DEFAULT NULL,
  `maintain_car_name` varchar(5) DEFAULT NULL,
  `maintain_car_pohne` varchar(16) DEFAULT NULL,
  `maintain_status` varchar(5) DEFAULT NULL,
  `maintain_mark` varchar(100) DEFAULT NULL,
  `maintain_type` int(11) DEFAULT NULL,
  `maintain_money` float DEFAULT NULL,
  `maintain_received` float DEFAULT NULL,
  `maintain_date` datetime DEFAULT NULL,
  `maintain_enddate` datetime DEFAULT NULL,
  `Attribute_140` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`maintain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `maintain` */

/*Table structure for table `maintain_item` */

DROP TABLE IF EXISTS `maintain_item`;

CREATE TABLE `maintain_item` (
  `maintain_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `maintain_id` int(11) DEFAULT NULL,
  `maintain_item_name` varchar(20) DEFAULT NULL,
  `maintain_item_money` float DEFAULT NULL,
  `maintain_time` float DEFAULT NULL,
  `maintain_item_mark` varchar(50) DEFAULT NULL,
  `maintain_item_reced` float DEFAULT NULL,
  PRIMARY KEY (`maintain_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `maintain_item` */

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(10) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `post_fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `post` */

insert  into `post`(`post_id`,`post_name`,`post_date`,`post_fid`) values (1,'总经理','2020-03-26',0),(2,'总经理','2020-03-26',1),(3,'人事部','2020-03-26',0),(4,'人事经理','2020-03-26',3);

/*Table structure for table `relation` */

DROP TABLE IF EXISTS `relation`;

CREATE TABLE `relation` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_phone_name` varchar(10) DEFAULT NULL,
  `user_relation` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `relation` */

insert  into `relation`(`relation_id`,`user_id`,`user_phone_name`,`user_relation`,`phone`,`user_address`) values (1,1001,'八云蓝','家人','13113113111','迷途之家'),(2,1001,'幽幽子','爱人','12312312345','白玉楼'),(3,1002,'魔理沙','发小','14145454222','魔法之森'),(4,1002,'蕾米莉亚','好友','13333332222','红魔馆');

/*Table structure for table `relationship_12` */

DROP TABLE IF EXISTS `relationship_12`;

CREATE TABLE `relationship_12` (
  `post_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`function_id`),
  KEY `FK_Relationship_13` (`function_id`),
  CONSTRAINT `FK_Relationship_12` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `FK_Relationship_13` FOREIGN KEY (`function_id`) REFERENCES `functions` (`function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `relationship_12` */

insert  into `relationship_12`(`post_id`,`function_id`) values (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(1,4),(2,4),(1,5),(2,5),(1,6),(2,6),(1,7),(2,7),(1,8),(2,8),(2,9),(2,10),(2,11),(2,12),(1,13),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37);

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supply_unit_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(5) DEFAULT NULL,
  `supplier_duty` varchar(10) DEFAULT NULL,
  `supplier_phone` varchar(15) DEFAULT NULL,
  `supplier_address` varchar(50) DEFAULT NULL,
  `Attribute_118` varchar(20) DEFAULT NULL,
  `Attribute_119` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `FK_Relationship_10` (`supply_unit_id`),
  CONSTRAINT `FK_Relationship_10` FOREIGN KEY (`supply_unit_id`) REFERENCES `supply_unit` (`supply_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `supplier` */

/*Table structure for table `supply_unit` */

DROP TABLE IF EXISTS `supply_unit`;

CREATE TABLE `supply_unit` (
  `supply_unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) DEFAULT NULL,
  `supply_unit_name` varchar(30) DEFAULT NULL,
  `supply_unit_coding` varchar(10) DEFAULT NULL,
  `supply_unit_address` varchar(50) DEFAULT NULL,
  `supply_unit_product` varchar(20) DEFAULT NULL,
  `supply_unit_mark` varchar(100) DEFAULT NULL,
  `Attribute_110` varchar(10) DEFAULT NULL,
  `Attribute_111` varchar(20) DEFAULT NULL,
  `Attribute_112` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`supply_unit_id`),
  KEY `FK_Relationship_11` (`address_id`),
  CONSTRAINT `FK_Relationship_11` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `supply_unit` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `artisan_id` int(11) DEFAULT NULL,
  `artisan_set_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `user_pwd` varchar(10) DEFAULT NULL,
  `user_date` date DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  `user_educ` varchar(20) DEFAULT NULL,
  `user_school` varchar(30) DEFAULT NULL,
  `user_entry` date DEFAULT NULL,
  `user_dimiss` date DEFAULT NULL,
  `user_pay` float DEFAULT NULL,
  `user_status` varchar(10) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_store3` varchar(30) DEFAULT NULL,
  `user_store4` varchar(40) DEFAULT NULL,
  `user_store1` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_Relationship_1` (`post_id`),
  KEY `FK_Relationship_2` (`artisan_id`),
  KEY `FK_Relationship_3` (`artisan_set_id`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`artisan_id`) REFERENCES `artisan` (`artisan_id`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`artisan_set_id`) REFERENCES `artisan_set` (`artisan_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`artisan_id`,`artisan_set_id`,`post_id`,`user_name`,`user_pwd`,`user_date`,`user_address`,`user_educ`,`user_school`,`user_entry`,`user_dimiss`,`user_pay`,`user_status`,`user_phone`,`user_store3`,`user_store4`,`user_store1`) values (1001,NULL,NULL,2,'八云紫','123123','2020-03-30',NULL,NULL,NULL,'2020-03-30',NULL,NULL,'在职','1313131313',NULL,NULL,NULL),(1002,NULL,NULL,4,'灵梦','12345','2020-03-30',NULL,NULL,NULL,'2020-03-27',NULL,NULL,'在职','1122332211',NULL,NULL,NULL);

/*Table structure for table `work_car` */

DROP TABLE IF EXISTS `work_car`;

CREATE TABLE `work_car` (
  `work_car_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_car_name` varchar(5) DEFAULT NULL,
  `work_car_card` varchar(12) DEFAULT NULL,
  `work_car_model` varchar(10) DEFAULT NULL,
  `work_car_put_date` date DEFAULT NULL,
  `work_car_out_date` date DEFAULT NULL,
  `work_car_phone` varchar(15) DEFAULT NULL,
  `work_car_mileage` float DEFAULT NULL,
  `work_car_fete_date` date DEFAULT NULL,
  `Attribute_129` varchar(20) DEFAULT NULL,
  `Attribute_137` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`work_car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `work_car` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
