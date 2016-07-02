-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.0.67-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table musejam.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `tag_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `active` int(1) NOT NULL default '1',
  PRIMARY KEY  (`tag_id`),
  UNIQUE KEY `tag_id_UNIQUE` (`tag_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table musejam.tags: ~10 rows (approximately)
DELETE FROM `tags`;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`tag_id`, `name`, `active`) VALUES
	(1, 'Brother', 1),
	(2, 'Sister', 1),
	(3, 'Mother', 1),
	(4, 'Father', 1),
	(5, 'Son', 1),
	(6, 'Aunt', 1),
	(7, 'Uncle', 1),
	(8, 'Partner', 1),
	(9, 'Business Partner', 1),
	(10, 'Friend', 1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
