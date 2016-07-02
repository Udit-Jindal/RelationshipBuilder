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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
