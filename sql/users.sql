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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yunhome` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yunhome`;

/*Table structure for table `h_users` */

DROP TABLE IF EXISTS `h_users`;

CREATE TABLE `h_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `psw` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `headImg` varchar(100) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `h_users` */

insert  into `h_users`(`uid`,`name`,`psw`,`sex`,`birth`,`headImg`,`role`) values (1,'曹操','$2a$10$mFU9337Bj/SeIQkhIFafK.tsu5ePSAsLPqYpNAiaXspgWyjxvY44u','男','2020-06-13','/img/曹操.jpg','房东'),(2,'貂蝉','$2a$10$d4idNa9e8O5UIvQDLXQKC.ndKQaHc78nFPNYUO.RfBwFOGo0CvapK','女','2020-06-10','/img/貂蝉.jpg','租客'),(3,'刘备','666','男','2020-06-10','/img/刘备.jpg','房东'),(4,'孙小妹','123','女','2020-06-13','/img/孙小妹.jpg','租客'),(5,'孙权','666','男','2020-06-17','/img/孙权.jpg','房东'),(6,'大乔','123','女','2020-06-09','/img/大乔.jpg','租客');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
