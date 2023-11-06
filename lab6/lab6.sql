1)
SELECT cities.name , regions.name AS region_name
FROM cities,regions
WHERE cities.population >350000 AND region=regions.uuid;

2)
SELECT cities.name , regions.name AS region_name
FROM cities,regions
WHERE regions.name = 'Nord' AND region=regions.uuid;

3)
SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `subways_lab6`;
CREATE TABLE `subways_lab6` (
  `station` varchar(255) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `opentime` time NOT NULL,
  `closetime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `subways_lab6` (`station`, `branch`, `opentime`, `closetime`) VALUES
('Barmbek',	'1',	'04:40:00',	'00:20:00'),
('Baumwall',	'3',	'04:30:00',	'00:30:00'),
('Berliner Tor',	'2,3',	'04:30:00',	'00:30:00');
