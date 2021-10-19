-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 06:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user-registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `forecast`
--

CREATE TABLE `forecast` (
  `location` varchar(7) DEFAULT NULL,
  `day_num` int(2) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `min_temp` int(2) DEFAULT NULL,
  `max_temp` int(2) DEFAULT NULL,
  `weather` varchar(7) DEFAULT NULL,
  `weather_night` varchar(7) DEFAULT NULL,
  `weather_text` varchar(20) DEFAULT NULL,
  `weather_textN` varchar(24) DEFAULT NULL,
  `wind_speed` varchar(3) DEFAULT NULL,
  `wind_dir` varchar(3) DEFAULT NULL,
  `wind_speed_night` int(2) DEFAULT NULL,
  `wind_dir_night` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forecast`
--

INSERT INTO `forecast` (`location`, `day_num`, `date`, `min_temp`, `max_temp`, `weather`, `weather_night`, `weather_text`, `weather_textN`, `wind_speed`, `wind_dir`, `wind_speed_night`, `wind_dir_night`) VALUES
('Dublin', 14, '2018-11-14T12:00:00', 11, 14, '05d.png', '04.png', 'MEDIUM_RAIN_SHOWERS', 'GREYCLOUD', '25', 'SSW', 25, 'SSW'),
('Dublin', 15, '2018-11-15T12:00:00', 5, 15, '05d.png', '02n.png', 'MEDIUM_RAIN_SHOWERS', 'SUN_WITH_LIGHT_CLOUD', '25', 'SSE', 10, 'SE'),
('Dublin', 16, '2018-11-16T12:00:00', 11, 14, '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '25', 'SSE', 20, 'SE'),
('Dublin', 17, '2018-11-17T12:00:00', 8, 12, '05d.png', '01n.png', 'MEDIUM_RAIN_SHOWERS', 'CLEAR_WEATHER_SUN', '20', 'ESE', 20, 'ESE'),
('Dublin', 18, '2018-11-18T12:00:00', 8, 11, '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '20', 'E', 25, 'E'),
('Wexford', 14, '2018-11-14T12:00:00', 12, 13, '46.png', '04.png', 'LIGHT_RAIN', 'GREYCLOUD', '40', 'SSW', 30, 'SSW'),
('Wexford', 15, '2018-11-15T12:00:00', 10, 14, '05d.png', '03n.png', 'MEDIUM_RAIN_SHOWERS', 'SUN_WITH_GREY_CLOUD', '30', 'SSW', 20, 'SW'),
('Wexford', 16, '2018-11-16T12:00:00', 11, 13, '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '25', 'SSE', 25, 'SE'),
('Wexford', 17, '2018-11-17T12:00:00', 8, 12, '03d.png', '01n.png', 'SUN_WITH_GREY_CLOUD', 'CLEAR_WEATHER_SUN', '25', 'ESE', 25, 'ESE'),
('Wexford', 18, '2018-11-18T12:00:00', 8, 11, '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '25', 'ENE', 25, 'ENE'),
('Cork', 14, '2018-11-14T12:00:00', 12, 13, '46.png', '05n.png', 'LIGHT_RAIN', 'MEDIUM_RAIN_SHOWERS', '30', 'SSW', 30, 'SSW'),
('Cork', 15, '2018-11-15T12:00:00', 6, 13, '46.png', '02n.png', 'LIGHT_RAIN', 'SUN_WITH_LIGHT_CLOUD', '25', 'SSW', 20, 'SSE'),
('Cork', 16, '2018-11-16T12:00:00', 12, 13, '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '25', 'SE', 25, 'SSE'),
('Cork', 17, '2018-11-17T12:00:00', 9, 13, '46.png', '03n.png', 'DRIZZLE', 'SUN_WITH_GREY_CLOUD', '20', 'ESE', 20, 'ESE'),
('Cork', 18, '2018-11-18T12:00:00', 8, 11, '02d.png', '02n.png', 'SUN_WITH_LIGHT_CLOUD', 'SUN_WITH_LIGHT_CLOUD', '25', 'E', 20, 'E'),
('Kerry', 14, '2018-11-14T12:00:00', 11, 14, '46.png', '09.png', 'LIGHT_RAIN', 'MEDIUM_RAIN', '40', 'SSW', 40, 'SSW'),
('Kerry', 15, '2018-11-15T12:00:00', 10, 12, '46.png', '02n.png', 'LIGHT_RAIN', 'SUN_WITH_LIGHT_CLOUD', '30', 'SW', 30, 'SSE'),
('Kerry', 16, '2018-11-16T12:00:00', 11, 14, '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '35', 'SSE', 30, 'SE'),
('Kerry', 17, '2018-11-17T12:00:00', 9, 13, '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS', '30', 'SE', 30, 'ESE'),
('Kerry', 18, '2018-11-18T12:00:00', 7, 12, '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '25', 'ESE', 20, 'E'),
('Galway', 14, '2018-11-14T12:00:00', 12, 15, '10.png', '10.png', 'HEAVY_RAIN', 'HEAVY_RAIN', '30', 'SSW', 25, 'SSW'),
('Galway', 15, '2018-11-15T12:00:00', 6, 12, '46.png', '01n.png', 'LIGHT_RAIN', 'CLEAR_WEATHER_SUN', '25', 'SSE', 15, 'SE'),
('Galway', 16, '2018-11-16T12:00:00', 12, 14, '03d.png', '04.png', 'SUN_WITH_GREY_CLOUD', 'GREYCLOUD', '20', 'ESE', 20, 'ESE'),
('Galway', 17, '2018-11-17T12:00:00', 6, 14, '04.png', '01n.png', 'GREYCLOUD', 'CLEAR_WEATHER_SUN', '25', 'ESE', 20, 'ESE'),
('Galway', 18, '2018-11-18T12:00:00', 5, 11, '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '20', 'ESE', 20, 'E'),
('Donegal', 14, '2018-11-14T12:00:00', 12, 14, '46.png', '46.png', 'LIGHT_RAIN', 'LIGHT_RAIN', '30', 'SSW', 30, 'SSE'),
('Donegal', 15, '2018-11-14T12:00:00', 6, 13, '46.png', '01n.png', 'LIGHT_RAIN', 'CLEAR_WEATHER_SUN', '30', 'SSW', 20, 'SSW'),
('Donegal', 16, '2018-11-16T12:00:00', 11, 13, '02d.png', '04.png', 'SCATTERED_CLOUDS', 'GREYCLOUD', '25', 'SE', 25, 'SE'),
('Donegal', 17, '2018-11-17T12:00:00', 7, 13, '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS', '30', 'SE', 25, 'ESE'),
('Donegal', 18, '2018-11-18T12:00:00', 6, 10, '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '25', 'ESE', 25, 'E'),
('Offaly', 14, '2018-11-14T12:00:00', 12, 14, '05d.png', '46.png', 'MEDIUM_RAIN_SHOWERS', 'CLEAR_WDRIZZLEEATHER_SUN', '30 ', 'SSW', 25, 'SSE'),
('Offaly', 15, '2018-11-15T12:00:00', 6, 14, '46.png', '05d.png', 'MEDIUM_RAIN_SHOWERS', 'DRIZZLE', '30 ', 'SSW', 25, 'SSE'),
('Offaly', 16, '2018-11-16T12:00:00', 11, 13, '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '25 ', 'SSE', 25, 'SE'),
('Offaly', 17, '2018-11-17T12:00:00', 6, 13, '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS', '25 ', 'SE', 20, 'ESE'),
('Offaly', 18, '2018-11-18T12:00:00', 5, 10, '01.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '20 ', 'ESE', 15, 'E'),
('Mayo', 14, '2018-11-114T12:00:00', 12, 14, '09.png', '10.png', 'MEDIUM_RAIN', 'HEAVY_RAIN', '30 ', 'SSW', 30, 'SSW'),
('Mayo', 15, '2018-11-115T12:00:00', 6, 11, '09.png', '10n.png', 'MEDIUM_RAIN', 'CLEAR_WEATHER_SUN', '25 ', 'SSE', 20, 'SE'),
('Mayo', 16, '2018-11-116T12:00:00', 11, 14, '03d.png', '04.png', 'SUN_WITH_GREY_CLOUD', 'GREYCLOUD', '25 ', 'SE', 20, 'SE'),
('Mayo', 17, '2018-11-117T12:00:00', 5, 13, '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS', '25 ', 'SE', 20, 'ESE'),
('Mayo', 18, '2018-11-118T12:00:00', 6, 10, '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '20 ', 'ESE', 20, 'ESE'),
('Belfast', 14, '2018-11-114T12:00:00', 11, 13, '05d.png', '04.png', 'MEDIUM_RAIN_SHOWERS', 'GREYCLOUD', '30 ', 'SSW', 30, 'SSW'),
('Belfast', 14, '2018-11-114T12:00:00', 11, 13, '05d.png', '04.png', 'MEDIUM_RAIN_SHOWERS', 'GREYCLOUD', '30 ', 'SSW', 30, 'SSW'),
('Belfast', 15, '2018-11-115T12:00:00', 6, 14, '05d.png', '02n.png', 'MEDIUM_RAIN_SHOWERS', 'SCATTERED_CLOUDS', '30 ', 'SSE', 15, 'SW'),
('Belfast', 16, '2018-11-115T12:00:00', 9, 13, '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '20 ', 'SE', 20, 'SE'),
('Belfast', 17, '2018-11-117T12:00:00', 7, 10, '04.png', '01n.png', 'GREYCLOUD', 'CLEAR_WEATHER_SUN', '20 ', 'ESE', 25, 'ESE'),
('Belfast', 18, '2018-11-118T12:00:00', 7, 10, '01d.png', '02n.png', 'CLEAR_WEATHER_SUN', 'SCATTERED_CLOUDS', '25 ', 'ESE', 25, 'E');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
