-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: gradedb
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `term` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `classification` varchar(45) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (11,2011,'1','REQ0013','사고와 표현1','교필',2),(12,2011,'1','REQ0113','영어 커뮤니케이션 독해/작문A-III','교필',1),(13,2011,'1','REQ0123','영어커뮤니케이션 청취/회화A-III','교필',1),(14,2011,'1','CAE0001','일반물리I','핵교A',2),(15,2011,'1','CAE0002','공학의 이해','핵교A',2),(16,2011,'1','CBE0003','일반생물','핵교B',2),(17,2011,'1','GEN0075','수학의 이해','일교',2),(18,2011,'1','GEN0190','EXCEL 실무활용','일교',2),(19,2011,'1','COM0002','컴퓨터 프로그래밍I','전기',3),(20,2011,'1','COM0004','이산수학','전기',3),(21,2011,'2','REQ0014','사고와 표현II','교필',2),(22,2011,'2','REQ0015','대학과 지성','교필',2),(23,2011,'2','REQ0213','영어 커뮤니케이션 독해/작문B-III','교필',1),(24,2011,'2','REQ0223','영어커뮤니케이션 청취/회화B-III','교필',1),(25,2011,'2','CAE0004','미분적분학','핵교A',2),(26,2011,'2','CAE0006','과학기술사','핵교A',2),(27,2011,'2','CAE0005','일반화학','핵교B',2),(28,2011,'2','GEN0054','비주얼프로그래밍기초','일교',2),(29,2011,'2','COM0005','컴퓨터프로그래밍II','전기',3),(30,2012,'1','U122016','대한민국 1%가 될 수 있는 토론과 문제해결','일교',3),(31,2012,'1','U122029','웃는 자본주의, 우는 자본주의','일교',3),(32,2012,'1','COM0038','시스템프로그래밍','전선',3),(33,2012,'1','COM0053','논리회로설계','전선',3),(34,2012,'1','COM0054','프로그래밍언어론','전선',3),(35,2012,'1','COM0009','자료구조','전지',3),(36,2012,'2','U122014','IT기술의 현재와 미래','일교',3),(37,2012,'2','U122038','인간심리의 여행','일교',3),(38,2012,'2','COM0010','컴퓨터구조','전선',3),(39,2012,'2','COM0012','알고리즘','전선',3),(40,2012,'2','COM0016','객체지향언어 1','전선',3),(41,2012,'2','COM0052','소프트웨어 기초설계','전선',3),(42,2015,'1','GEN0036','컴퓨터그래픽과 디자인','일교',2),(43,2015,'1','COM0011','웹 프로그래밍','전선',3),(44,2015,'1','COM0022','객체지향언어 2','전선',3),(45,2015,'1','COM0041','소프트웨어 공학','전선',3),(46,2015,'1','COM0071','데이터 마이닝','전선',3),(47,2015,'1','COM0019','데이타베이스','전지',3),(48,2015,'1','COM0020','운영체제','전지',3),(49,2015,'2','GEN0225','돈이 되는 광고','일교',2),(50,2015,'2','U121012','그린IT의 이해','일교',3),(51,2015,'2','COM0032','설계패턴','전선',3),(52,2015,'2','COM0033','고급시스템프로그래밍','전선',3),(53,2015,'2','COM0034','네트워크프로그래밍','전선',3),(54,2015,'2','COM0072','서버프로그래밍','전선',3),(55,2015,'2','MME0039','멀티미디어응용수학','전선',3),(56,2016,'1','CBEN008','평화교육','인재',2),(57,2016,'1','U121027','생태친화적 기업경영','자율',2),(58,2016,'1','CSE0021','컴퓨터그래픽스','전선',3),(59,2016,'1','CSE0024','영상처리','전선',3),(60,2016,'1','CSE0043','빅데이터프로그래밍','전선',3),(61,2016,'1','CSE0025','캡스톤디자인1','전지',3),(62,2016,'1','CSE0036','캡스톤디자인2','전지',3),(63,2016,'2','CSE0049','게임프로그래밍','전선',3),(64,2016,'2','U122063','술문화의 이해','자율',3),(65,2016,'2','CSE0032','웹프레임워크1','전선',3),(66,2016,'2','CSE0047','인공지능','전선',3),(67,2016,'2','GEN0200','컴퓨터와 인터넷개론','자율',2);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-30 22:15:56
