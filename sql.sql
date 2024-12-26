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
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES
	('opium:room_01_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_02_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_03_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_04_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_03_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_04_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_05_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_06_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"hideUi":true,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}');

/*!40000 ALTER TABLE `apl_motels` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
