1)
SELECT cities.name , regions.name AS region_name
FROM cities,regions
WHERE cities.population >350000 AND region=regions.uuid;

2)
SELECT cities.name , regions.name AS region_name
FROM cities,regions
WHERE regions.name = 'Nord' AND region=regions.uuid;


3)
-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `connections`;
CREATE TABLE `connections` (
  `id_station` int(11) NOT NULL,
  `id_branch` int(11) NOT NULL,
  PRIMARY KEY (`id_station`,`id_branch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2023-11-16 12:55:52
