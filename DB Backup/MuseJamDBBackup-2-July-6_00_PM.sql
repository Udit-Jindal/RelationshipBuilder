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

-- Dumping database structure for musejam
CREATE DATABASE IF NOT EXISTS `musejam` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `musejam`;


-- Dumping structure for table musejam.relationships
CREATE TABLE IF NOT EXISTS `relationships` (
  `relationship_id` int(11) NOT NULL auto_increment,
  `user_id_first` int(11) NOT NULL,
  `user_id_second` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `active` int(1) NOT NULL default '1',
  PRIMARY KEY  (`relationship_id`),
  UNIQUE KEY `relationship_id_UNIQUE` (`relationship_id`),
  UNIQUE KEY `user_id_first_user_id_second_tag_id` (`user_id_first`,`user_id_second`,`tag_id`,`active`),
  KEY `rel.user_id_first-users.user_id_idx` (`user_id_first`),
  KEY `rel.user_id_second-users.user_id_idx` (`user_id_second`),
  KEY `rel.tag_id-tags.tag_id_idx` (`tag_id`),
  CONSTRAINT `rel.tag_id-tags.tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rel.user_id_first-users.user_id` FOREIGN KEY (`user_id_first`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rel.user_id_second-users.user_id` FOREIGN KEY (`user_id_second`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- Dumping data for table musejam.relationships: ~101 rows (approximately)
DELETE FROM `relationships`;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` (`relationship_id`, `user_id_first`, `user_id_second`, `tag_id`, `active`) VALUES
	(101, 1, 9, 2, 1),
	(14, 1, 9, 4, 1),
	(62, 1, 50, 5, 1),
	(102, 1, 92, 9, 1),
	(45, 1, 92, 10, 1),
	(28, 4, 34, 7, 1),
	(54, 5, 36, 9, 1),
	(21, 5, 77, 6, 1),
	(8, 6, 64, 10, 1),
	(9, 6, 75, 3, 1),
	(77, 6, 82, 1, 1),
	(17, 7, 67, 9, 1),
	(67, 7, 73, 5, 1),
	(43, 9, 42, 8, 1),
	(37, 11, 1, 9, 1),
	(99, 12, 47, 10, 1),
	(12, 13, 74, 2, 1),
	(34, 14, 42, 7, 1),
	(55, 16, 54, 8, 1),
	(61, 16, 82, 8, 1),
	(36, 17, 3, 8, 1),
	(90, 18, 46, 7, 1),
	(48, 20, 66, 7, 1),
	(47, 21, 26, 6, 1),
	(86, 21, 70, 9, 1),
	(84, 21, 76, 5, 1),
	(26, 22, 28, 2, 1),
	(79, 22, 84, 5, 1),
	(20, 23, 37, 7, 1),
	(52, 24, 50, 5, 1),
	(85, 26, 38, 3, 1),
	(7, 26, 87, 6, 1),
	(70, 28, 14, 2, 1),
	(78, 28, 52, 7, 1),
	(72, 29, 4, 3, 1),
	(30, 29, 34, 3, 1),
	(35, 31, 81, 6, 1),
	(42, 33, 46, 5, 1),
	(92, 33, 46, 10, 1),
	(49, 33, 63, 1, 1),
	(4, 33, 91, 8, 1),
	(2, 34, 81, 7, 1),
	(96, 35, 8, 7, 1),
	(88, 35, 80, 8, 1),
	(56, 36, 28, 6, 1),
	(18, 36, 47, 2, 1),
	(50, 36, 47, 8, 1),
	(1, 36, 87, 3, 1),
	(6, 37, 8, 10, 1),
	(58, 39, 41, 5, 1),
	(16, 40, 51, 3, 1),
	(19, 40, 67, 4, 1),
	(23, 40, 76, 8, 1),
	(76, 42, 28, 7, 1),
	(13, 43, 44, 9, 1),
	(40, 44, 40, 3, 1),
	(87, 44, 41, 7, 1),
	(10, 47, 46, 9, 1),
	(100, 48, 26, 8, 1),
	(51, 48, 26, 9, 1),
	(24, 50, 9, 1, 1),
	(31, 51, 46, 3, 1),
	(38, 52, 16, 1, 1),
	(89, 54, 35, 9, 1),
	(39, 54, 64, 5, 1),
	(11, 59, 49, 6, 1),
	(22, 59, 60, 5, 1),
	(3, 60, 31, 8, 1),
	(83, 61, 64, 4, 1),
	(71, 62, 70, 7, 1),
	(65, 63, 90, 9, 1),
	(98, 64, 28, 8, 1),
	(53, 64, 87, 1, 1),
	(80, 67, 16, 1, 1),
	(33, 67, 82, 9, 1),
	(94, 68, 72, 3, 1),
	(41, 68, 73, 3, 1),
	(25, 69, 79, 2, 1),
	(91, 70, 37, 4, 1),
	(73, 70, 67, 2, 1),
	(74, 72, 89, 4, 1),
	(81, 73, 24, 9, 1),
	(57, 73, 57, 1, 1),
	(27, 73, 61, 6, 1),
	(46, 75, 59, 3, 1),
	(15, 77, 52, 8, 1),
	(32, 78, 8, 8, 1),
	(5, 78, 16, 3, 1),
	(44, 79, 46, 5, 1),
	(59, 83, 22, 5, 1),
	(63, 84, 9, 6, 1),
	(97, 84, 31, 8, 1),
	(60, 84, 47, 5, 1),
	(95, 84, 64, 1, 1),
	(66, 85, 1, 3, 1),
	(82, 85, 3, 9, 1),
	(68, 87, 40, 8, 1),
	(93, 87, 80, 10, 1),
	(64, 90, 60, 8, 1),
	(69, 91, 28, 2, 1),
	(29, 91, 80, 5, 1),
	(75, 92, 24, 3, 1);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;


-- Dumping structure for procedure musejam.sp_get_all_connections
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_all_connections`(IN `in_user_id` INT)
BEGIN

SELECT user_ids,tag_count FROM
(SELECT relationships.user_id_second AS user_ids,
COUNT(relationships.user_id_second) AS tag_count
FROM relationships
WHERE relationships.user_id_first = in_user_id
GROUP BY user_ids

UNION ALL

SELECT relationships.user_id_first AS user_ids,
COUNT(relationships.user_id_first) AS tag_count
FROM relationships
WHERE relationships.user_id_second = in_user_id
GROUP BY user_ids) AS a;

END//
DELIMITER ;


-- Dumping structure for procedure musejam.sp_get_all_direct_connections
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_all_direct_connections`()
BEGIN

SELECT relationships.user_id_first,
relationships.user_id_second,
a.name AS user_1,
b.name AS user_2,
GROUP_CONCAT(relationships.tag_id) AS tag_ids,
GROUP_CONCAT(tags.name) AS tag_names,
count(relationships.tag_id) AS tag_count
FROM relationships
LEFT JOIN tags ON relationships.tag_id = tags.tag_id
LEFT JOIN users AS a ON relationships.user_id_first = a.user_id
LEFT JOIN users AS b ON relationships.user_id_second = b.user_id
GROUP BY user_id_first,user_1,user_id_second,user_2
ORDER BY tag_count DESC;

END//
DELIMITER ;


-- Dumping structure for procedure musejam.sp_get_all_with_no_connections
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_all_with_no_connections`()
BEGIN

SELECT a.user_id,a.name
FROM relationships AS x
LEFT JOIN users AS a ON a.user_id = x.user_id_first
WHERE a.user_id <> x.user_id_first
AND a.user_id <> x.user_id_second;

END//
DELIMITER ;


-- Dumping structure for procedure musejam.sp_get_direct_connections
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_direct_connections`(IN `in_first_user_id` INT, IN `in_second_user_id` INT)
BEGIN

SELECT relationships.tag_id,tags.name
FROM relationships
LEFT JOIN tags ON tags.tag_id = relationships.tag_id
WHERE relationships.user_id_first = in_first_user_id
AND relationships.user_id_second = in_second_user_id;

END//
DELIMITER ;


-- Dumping structure for procedure musejam.sp_get_first_degree_connections
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_first_degree_connections`(IN `user_id_first` INT, IN `user_id_second` INT)
BEGIN

END//
DELIMITER ;


-- Dumping structure for procedure musejam.sp_get_second_degree_connections
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_second_degree_connections`(IN `user_id_first` INT, IN `user_id_second` INT)
BEGIN

END//
DELIMITER ;


-- Dumping structure for procedure musejam.sp_get_third_degree_connections
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_third_degree_connections`(IN `user_id_first` INT, IN `usr_id_second` INT)
BEGIN

END//
DELIMITER ;


-- Dumping structure for table musejam.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `tag_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `active` int(1) NOT NULL default '1',
  PRIMARY KEY  (`tag_id`),
  UNIQUE KEY `tag_id_UNIQUE` (`tag_id`),
  UNIQUE KEY `name_UNIQUE` (`name`,`active`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table musejam.tags: ~10 rows (approximately)
DELETE FROM `tags`;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`tag_id`, `name`, `active`) VALUES
	(6, 'Aunt', 1),
	(11, 'Batch-Mate', 1),
	(1, 'Brother', 1),
	(9, 'Business Partner', 1),
	(4, 'Father', 1),
	(10, 'Friend', 1),
	(3, 'Mother', 1),
	(8, 'Partner', 1),
	(2, 'Sister', 1),
	(5, 'Son', 1),
	(7, 'Uncle', 1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;


-- Dumping structure for table musejam.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `active` int(1) NOT NULL default '1',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `User_id_UNIQUE` (`user_id`),
  UNIQUE KEY `name_UNIQUE` (`name`,`active`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- Dumping data for table musejam.users: ~95 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `name`, `active`) VALUES
	(95, 'akash', 1),
	(71, 'Aladdin', 1),
	(19, 'Amanda', 1),
	(90, 'Amena', 1),
	(15, 'Ann', 1),
	(94, 'anuj', 1),
	(83, 'Aquila', 1),
	(9, 'Ashton', 1),
	(51, 'Astra', 1),
	(62, 'Ayanna', 1),
	(64, 'Azalia', 1),
	(61, 'Barclay', 1),
	(60, 'Beau', 1),
	(66, 'Beck', 1),
	(44, 'Bethany', 1),
	(52, 'Bevis', 1),
	(69, 'Cally', 1),
	(23, 'Carissa', 1),
	(84, 'Cathleen', 1),
	(6, 'Cecilia', 1),
	(10, 'Ciara', 1),
	(79, 'Cole', 1),
	(96, 'colleague', 1),
	(70, 'Dawn', 1),
	(58, 'Desirae', 1),
	(16, 'Donna', 1),
	(28, 'Dorothy', 1),
	(33, 'Ella', 1),
	(32, 'Ella Sagera', 1),
	(31, 'Eula', 1),
	(8, 'Evangeline', 1),
	(53, 'Fay', 1),
	(2, 'Fiona', 1),
	(17, 'George', 1),
	(4, 'Gillian', 1),
	(48, 'Gisela', 1),
	(82, 'Gwendolyn', 1),
	(43, 'Hector', 1),
	(42, 'Hector junior', 1),
	(41, 'Hectory', 1),
	(54, 'Ian', 1),
	(56, 'Ifeoma', 1),
	(18, 'Ignatius', 1),
	(74, 'Ima', 1),
	(5, 'Ivory', 1),
	(77, 'Jackson', 1),
	(30, 'Jaime', 1),
	(29, 'Jarrod', 1),
	(45, 'Jeremy', 1),
	(89, 'Joshua', 1),
	(85, 'Kaden', 1),
	(26, 'Katelyn', 1),
	(76, 'Kay', 1),
	(80, 'Keely', 1),
	(24, 'Kelsey', 1),
	(81, 'Kennedy', 1),
	(46, 'Kevin', 1),
	(40, 'Knight', 1),
	(39, 'Knight1', 1),
	(38, 'Knight2', 1),
	(37, 'Knight3', 1),
	(36, 'Knight4', 1),
	(35, 'Knight5', 1),
	(1, 'Lacy 56', 1),
	(47, 'Lareina', 1),
	(78, 'Lars', 1),
	(55, 'Len', 1),
	(57, 'Lois', 1),
	(34, 'love', 1),
	(21, 'Macaulay', 1),
	(3, 'Maile', 1),
	(65, 'Matthew', 1),
	(68, 'Maxine', 1),
	(73, 'Maya', 1),
	(13, 'Medge', 1),
	(75, 'Melvin', 1),
	(20, 'Mia', 1),
	(7, 'Nichole', 1),
	(25, 'Noel', 1),
	(50, 'Phelan', 1),
	(86, 'Ray', 1),
	(12, 'Reuben', 1),
	(22, 'Richard', 1),
	(67, 'Robert', 1),
	(59, 'Ruby', 1),
	(92, 'Scott', 1),
	(63, 'Shafira', 1),
	(11, 'Shaine', 1),
	(49, 'Silas', 1),
	(93, 'udit', 1),
	(27, 'Ursula', 1),
	(87, 'Vance', 1),
	(88, 'Veronica', 1),
	(72, 'Winter', 1),
	(14, 'Zena', 1),
	(91, 'Zeph', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
