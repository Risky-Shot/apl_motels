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
	('opium:room_01_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":30.55456352233886},"autolock":5}'),
	('opium:room_01_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":30.55456352233886},"autolock":5}'),
	('opium:room_02_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":39.50624847412109},"autolock":5}'),
	('opium:room_02_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":39.50624847412109},"autolock":5}'),
	('opium:room_03_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_04_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_03_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":48.42238616943359},"autolock":5}'),
	('opium:room_03_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":48.42238616943359},"autolock":5}'),
	('opium:room_04_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":57.19347763061523},"autolock":5}'),
	('opium:room_04_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":57.19347763061523},"autolock":5}'),
	('opium:room_05_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":65.96295928955078},"autolock":5}'),
	('opium:room_05_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":65.96295928955078},"autolock":5}'),
	('opium:room_06_01', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-695.3866577148438,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_02', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-693.2767944335938,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_03', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-685.65234375,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_04', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-683.6034545898438,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_05', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-675.9319458007813,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_06', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-673.9301147460938,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_07', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-747.46435546875,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_08', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-745.4119262695313,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_09', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-757.1376953125,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_10', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-755.0852661132813,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_11', '{"maxDistance":2,"doors":false,"heading":360,"state":1,"model":-2071787304,"coords":{"x":-766.81103515625,"y":-2260.598876953125,"z":74.80913543701172},"autolock":5}'),
	('opium:room_06_12', '{"maxDistance":2,"doors":false,"heading":180,"state":1,"model":-2071787304,"coords":{"x":-764.7586059570313,"y":-2257.892333984375,"z":74.80913543701172},"autolock":5}');

INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_01', '{"heading":315,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-166.13453674316407,"y":6439.61669921875,"z":32.06686019897461},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_02', '{"heading":315,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-159.06834411621095,"y":6432.54150390625,"z":32.06774520874023},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_03', '{"heading":315,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-149.1630401611328,"y":6422.6455078125,"z":32.06490325927734},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_04', '{"heading":225,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-149.98895263671876,"y":6415.4140625,"z":32.06489944458008},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_05', '{"heading":225,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-157.05661010742188,"y":6408.3740234375,"z":32.06220626831055},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_06', '{"heading":135,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-165.7999267578125,"y":6412.40283203125,"z":32.06700897216797},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_07', '{"heading":315,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-166.1561737060547,"y":6439.59521484375,"z":36.32274627685547},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_08', '{"heading":315,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-159.053466796875,"y":6432.5263671875,"z":36.32615280151367},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_09', '{"heading":315,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-149.1505584716797,"y":6422.61376953125,"z":36.33409881591797},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_10', '{"heading":225,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-150.0103759765625,"y":6415.39306640625,"z":36.32051467895508},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_11', '{"heading":225,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-157.08102416992188,"y":6408.3505859375,"z":36.31908798217773},"doors":false,"autolock":5}');
INSERT INTO `ox_doorlock` (`name`, `data`) VALUES ('sseas:room_01_12', '{"heading":135,"state":1,"maxDistance":2,"model":-1438646826,"coords":{"x":-163.39532470703126,"y":6410.0703125,"z":36.30113220214844},"doors":false,"autolock":5}');

/*!40000 ALTER TABLE `apl_motels` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
