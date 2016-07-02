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

-- Dumping structure for table musejam.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `active` int(1) NOT NULL default '1',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `User_id_UNIQUE` (`user_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- Dumping data for table musejam.users: ~92 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `name`, `active`) VALUES
	(1, 'Lacy', 1),
	(2, 'Fiona', 1),
	(3, 'Maile', 1),
	(4, 'Gillian', 1),
	(5, 'Ivory', 1),
	(6, 'Cecilia', 1),
	(7, 'Nichole', 1),
	(8, 'Evangeline', 1),
	(9, 'Ashton', 1),
	(10, 'Ciara', 1),
	(11, 'Shaine', 1),
	(12, 'Reuben', 1),
	(13, 'Medge', 1),
	(14, 'Zena', 1),
	(15, 'Ann', 1),
	(16, 'Donna', 1),
	(17, 'George', 1),
	(18, 'Ignatius', 1),
	(19, 'Amanda', 1),
	(20, 'Mia', 1),
	(21, 'Macaulay', 1),
	(22, 'Richard', 1),
	(23, 'Carissa', 1),
	(24, 'Kelsey', 1),
	(25, 'Noel', 1),
	(26, 'Katelyn', 1),
	(27, 'Ursula', 1),
	(28, 'Dorothy', 1),
	(29, 'Jarrod', 1),
	(30, 'Jaime', 1),
	(31, 'Eula', 1),
	(32, 'Ella Sagera', 1),
	(33, 'Ella', 1),
	(34, 'love', 1),
	(35, 'Knight5', 1),
	(36, 'Knight4', 1),
	(37, 'Knight3', 1),
	(38, 'Knight2', 1),
	(39, 'Knight1', 1),
	(40, 'Knight', 1),
	(41, 'Hectory', 1),
	(42, 'Hector junior', 1),
	(43, 'Hector', 1),
	(44, 'Bethany', 1),
	(45, 'Jeremy', 1),
	(46, 'Kevin', 1),
	(47, 'Lareina', 1),
	(48, 'Gisela', 1),
	(49, 'Silas', 1),
	(50, 'Phelan', 1),
	(51, 'Astra', 1),
	(52, 'Bevis', 1),
	(53, 'Fay', 1),
	(54, 'Ian', 1),
	(55, 'Len', 1),
	(56, 'Ifeoma', 1),
	(57, 'Lois', 1),
	(58, 'Desirae', 1),
	(59, 'Ruby', 1),
	(60, 'Beau', 1),
	(61, 'Barclay', 1),
	(62, 'Ayanna', 1),
	(63, 'Shafira', 1),
	(64, 'Azalia', 1),
	(65, 'Matthew', 1),
	(66, 'Beck', 1),
	(67, 'Robert', 1),
	(68, 'Maxine', 1),
	(69, 'Cally', 1),
	(70, 'Dawn', 1),
	(71, 'Aladdin', 1),
	(72, 'Winter', 1),
	(73, 'Maya', 1),
	(74, 'Ima', 1),
	(75, 'Melvin', 1),
	(76, 'Kay', 1),
	(77, 'Jackson', 1),
	(78, 'Lars', 1),
	(79, 'Cole', 1),
	(80, 'Keely', 1),
	(81, 'Kennedy', 1),
	(82, 'Gwendolyn', 1),
	(83, 'Aquila', 1),
	(84, 'Cathleen', 1),
	(85, 'Kaden', 1),
	(86, 'Ray', 1),
	(87, 'Vance', 1),
	(88, 'Veronica', 1),
	(89, 'Joshua', 1),
	(90, 'Amena', 1),
	(91, 'Zeph', 1),
	(92, 'Scott', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
