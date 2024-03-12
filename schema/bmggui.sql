/*
SQLyog Community
MySQL - 10.6.16-MariaDB-0ubuntu0.22.04.1-log : Database - chapter2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chapter2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

/*Table structure for table `s_explain` */

DROP TABLE IF EXISTS `s_explain`;

CREATE TABLE `s_explain` (
  `id` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/* Procedure structure for procedure `proc_name` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_name` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bmg`@`localhost` PROCEDURE `proc_name`()
BEGIN
 DECLARE count INT DEFAULT 0;
 WHILE count < @MAX_INSERT DO
   SET count = count + 1;
   INSERT INTO `s_explain`(`id`, `ts`) VALUES (FLOOR(RAND() * @MAX_INSERT), NOW());
 END WHILE;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
