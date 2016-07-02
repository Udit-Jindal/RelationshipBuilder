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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
