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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
