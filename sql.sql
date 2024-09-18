-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.3.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for qboxproject_d4a351
CREATE DATABASE IF NOT EXISTS `qboxproject_d4a351` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `qboxproject_d4a351`;

-- Dumping structure for table qboxproject_d4a351.apl_motels
CREATE TABLE IF NOT EXISTS `apl_motels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomId` varchar(50) NOT NULL,
  `motelId` tinyint(2) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) NOT NULL DEFAULT 0,
  `expire` bigint(20) DEFAULT NULL,
  `keyholder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roomId` (`roomId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table qboxproject_d4a351.apl_motels: ~1 rows (approximately)
/*!40000 ALTER TABLE `apl_motels` DISABLE KEYS */;
INSERT INTO `apl_motels` (`id`, `roomId`, `motelId`, `owner`, `rented`, `expire`, `keyholder`) VALUES
	(1, 'pinkcage:room_1', 1, NULL, 0, NULL, NULL);
/*!40000 ALTER TABLE `apl_motels` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
