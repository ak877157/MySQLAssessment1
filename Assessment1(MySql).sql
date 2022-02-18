/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.25 : Database - assessment1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`assessment1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `assessment1`;

/*Table structure for table `associate_feedback` */

DROP TABLE IF EXISTS `associate_feedback`;

CREATE TABLE `associate_feedback` (
  `Associate_Id` varchar(20) NOT NULL,
  `Question_Id` varchar(20) NOT NULL,
  `Module_Id` varchar(20) NOT NULL,
  `Associate_Rating` int NOT NULL,
  KEY `Associate_Id` (`Associate_Id`),
  KEY `Question_Id` (`Question_Id`),
  KEY `Module_Id` (`Module_Id`),
  CONSTRAINT `associate_feedback_ibfk_1` FOREIGN KEY (`Associate_Id`) REFERENCES `associate_info` (`Associate_Id`),
  CONSTRAINT `associate_feedback_ibfk_2` FOREIGN KEY (`Question_Id`) REFERENCES `questions` (`Question_Id`),
  CONSTRAINT `associate_feedback_ibfk_3` FOREIGN KEY (`Module_Id`) REFERENCES `module_info` (`Module_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `associate_feedback` */

/*Table structure for table `associate_info` */

DROP TABLE IF EXISTS `associate_info`;

CREATE TABLE `associate_info` (
  `Associate_Id` varchar(20) NOT NULL,
  `Salutation` varchar(7) NOT NULL,
  `Associate_Name` varchar(30) NOT NULL,
  `Associate_Location` varchar(30) NOT NULL,
  `Associate_Track` varchar(15) NOT NULL,
  `Associate_Qualification` varchar(200) NOT NULL,
  `Associate_Email` varchar(100) NOT NULL,
  `Associate_Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Associate_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `associate_info` */

/*Table structure for table `associate_status` */

DROP TABLE IF EXISTS `associate_status`;

CREATE TABLE `associate_status` (
  `Associate_Id` varchar(20) NOT NULL,
  `Module_Id` varchar(20) DEFAULT NULL,
  `Start_Date` varchar(20) DEFAULT NULL,
  `End_Date` varchar(20) DEFAULT NULL,
  `AFeedbackGiven` varchar(20) DEFAULT NULL,
  `TFeedbackGiven` varchar(20) DEFAULT NULL,
  KEY `Associate_Id` (`Associate_Id`),
  KEY `Module_Id` (`Module_Id`),
  CONSTRAINT `associate_status_ibfk_1` FOREIGN KEY (`Associate_Id`) REFERENCES `associate_info` (`Associate_Id`),
  CONSTRAINT `associate_status_ibfk_2` FOREIGN KEY (`Module_Id`) REFERENCES `module_info` (`Module_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `associate_status` */

/*Table structure for table `batch_info` */

DROP TABLE IF EXISTS `batch_info`;

CREATE TABLE `batch_info` (
  `Batch_Id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Batch_Owner` varchar(30) NOT NULL,
  `Batch_BU_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Batch_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `batch_info` */

/*Table structure for table `login_details` */

DROP TABLE IF EXISTS `login_details`;

CREATE TABLE `login_details` (
  `User_Id` varchar(20) NOT NULL,
  `User_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `login_details` */

/*Table structure for table `module_info` */

DROP TABLE IF EXISTS `module_info`;

CREATE TABLE `module_info` (
  `Module_Id` varchar(20) NOT NULL,
  `Module_Name` varchar(40) NOT NULL,
  `Module_Duration` int NOT NULL,
  PRIMARY KEY (`Module_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `module_info` */

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `Question_Id` varchar(20) NOT NULL,
  `Module_Id` varchar(20) NOT NULL,
  `Question_Text` varchar(900) NOT NULL,
  PRIMARY KEY (`Question_Id`),
  KEY `Module_Id` (`Module_Id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`Module_Id`) REFERENCES `module_info` (`Module_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `questions` */

/*Table structure for table `trainer_feedback` */

DROP TABLE IF EXISTS `trainer_feedback`;

CREATE TABLE `trainer_feedback` (
  `Trainer_Id` varchar(20) NOT NULL,
  `Question_Id` varchar(20) DEFAULT NULL,
  `Batch_Id` varchar(20) NOT NULL,
  `Module_Id` varchar(20) NOT NULL,
  `Trainer_Rating` int NOT NULL,
  KEY `Trainer_Id` (`Trainer_Id`),
  KEY `Question_Id` (`Question_Id`),
  KEY `Batch_Id` (`Batch_Id`),
  KEY `Module_Id` (`Module_Id`),
  CONSTRAINT `trainer_feedback_ibfk_1` FOREIGN KEY (`Trainer_Id`) REFERENCES `trainer_info` (`Trainer_id`),
  CONSTRAINT `trainer_feedback_ibfk_2` FOREIGN KEY (`Question_Id`) REFERENCES `questions` (`Question_Id`),
  CONSTRAINT `trainer_feedback_ibfk_3` FOREIGN KEY (`Batch_Id`) REFERENCES `batch_info` (`Batch_Id`),
  CONSTRAINT `trainer_feedback_ibfk_4` FOREIGN KEY (`Module_Id`) REFERENCES `module_info` (`Module_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `trainer_feedback` */

/*Table structure for table `trainer_info` */

DROP TABLE IF EXISTS `trainer_info`;

CREATE TABLE `trainer_info` (
  `Trainer_id` varchar(20) NOT NULL,
  `Salutation` varchar(7) NOT NULL,
  `Trainer_Name` varchar(30) NOT NULL,
  `Trainer_Location` varchar(30) NOT NULL,
  `Trainer_Track` varchar(15) NOT NULL,
  `Trainer_Qualification` varchar(100) NOT NULL,
  `Trainer_Experience` int NOT NULL,
  `Trainer_Email` varchar(100) NOT NULL,
  `Trainer_Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `trainer_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
