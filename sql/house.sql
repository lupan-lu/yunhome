/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.40 : Database - yunhome
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `h_house` */

DROP TABLE IF EXISTS `h_house`;

CREATE TABLE `h_house` (
  `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋id',
  `user_id` int(11) DEFAULT NULL COMMENT '房屋所属房东id',
  `district_id` int(11) DEFAULT NULL COMMENT '区域表id',
  `type_id` int(11) DEFAULT NULL COMMENT '类型表id',
  `price` double DEFAULT NULL COMMENT '价格',
  `areas` double DEFAULT NULL COMMENT '面积',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `mark` varchar(50) DEFAULT NULL COMMENT '标签',
  `equipment` varchar(100) DEFAULT NULL COMMENT '配备',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `imgs` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `h_house` */

insert  into `h_house`(`hid`,`user_id`,`district_id`,`type_id`,`price`,`areas`,`title`,`mark`,`equipment`,`address`,`imgs`) values (1,1,85,1,500,56,'清江山水','湖景房','电视 冰箱 空调 洗衣机','武汉市江夏区软件园中路10号 清江山水1期16栋5楼501','/houseImg/1.jpg'),(2,1,78,2,800,78,'清江山水','湖景房','电视 冰箱 空调 洗衣机','武汉市江夏区软件园中路10号 清江山水1期15栋12楼1203','/houseImg/2.jpg'),(3,3,55,1,550,59,'清江山水','湖景房','电视 冰箱 空调 洗衣机','武汉市江夏区软件园中路10号 清江山水1期11栋5楼501','/houseImg/3.jpg'),(4,3,52,2,650,77,'清江山水','湖景房','电视 冰箱 空调 洗衣机','武汉市江夏区软件园中路10号 清江山水2期6栋5楼501','/houseImg/4.jpg'),(5,5,40,1,600,60,'清江山水','湖景房','电视 冰箱 空调 洗衣机','武汉市江夏区软件园中路10号 清江山水3期2栋1楼101','/houseImg/5.jpg'),(6,5,78,2,700,78,'清江山水','湖景房','电视 冰箱 空调 洗衣机','武汉市江夏区软件园中路10号 清江山水4期6栋6楼602','/houseImg/6.jpg'),(7,1,37,1,1000,50,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/7.jpg'),(8,1,34,1,900,60,'大房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/8.jpg'),(9,3,36,2,100,78,'好房子','湖景房','沙发 台球 ','吴家山 一号 4栋 ','/img/1.jpg'),(10,5,45,6,3000,150,'大房子','精装修','电脑 女仆','街道口 1号','/img/1.jpg'),(11,5,13,6,3000,150,'大房子','精装修','电脑 女仆','街道口 1号','/img/1.jpg'),(12,3,15,1,2500,70,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/9.jpg'),(13,1,19,2,1200,80,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/10.jpg'),(14,3,22,3,1300,90,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/11.jpg'),(15,1,25,4,500,100,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/12.jpg'),(16,3,28,6,600,110,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/13.jpg'),(17,1,36,5,700,120,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/14.jpg'),(18,3,35,1,800,130,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/15.jpg'),(19,5,44,2,900,140,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/16.jpg'),(20,5,56,3,1100,56,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/17.jpg'),(21,5,65,4,1400,65,'好房子','精装修','沙发 台球 ','吴家山 一号 4栋 ','/houseImg/18.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
