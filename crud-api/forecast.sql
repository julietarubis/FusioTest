-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 12:54 PM
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
  `id` int(11) NOT NULL,
  `Location` varchar(7) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Min Temp` varchar(2) DEFAULT NULL,
  `Max Temp` varchar(2) DEFAULT NULL,
  `Wind Speed (day)` varchar(7) DEFAULT NULL,
  `Wind Direction (day)` varchar(7) DEFAULT NULL,
  `Wind Speed (night)` varchar(20) DEFAULT NULL,
  `Wind Direction (night)` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forecast`
--

INSERT INTO `forecast` (`id`, `Location`, `Date`, `Min Temp`, `Max Temp`, `Wind Speed (day)`, `Wind Direction (day)`, `Wind Speed (night)`, `Wind Direction (night)`) VALUES
(1, 'Dublin', '2018-11-14T12:00:00', '11', '14', '05d.png', '04.png', 'MEDIUM_RAIN_SHOWERS', 'GREYCLOUD'),
(2, 'Dublin', '2018-11-15T12:00:00', '5', '15', '05d.png', '02n.png', 'MEDIUM_RAIN_SHOWERS', 'SUN_WITH_LIGHT_CLOUD'),
(3, 'Dublin', '2018-11-16T12:00:00', '11', '14', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD'),
(4, 'Dublin', '2018-11-17T12:00:00', '8', '12', '05d.png', '01n.png', 'MEDIUM_RAIN_SHOWERS', 'CLEAR_WEATHER_SUN'),
(5, 'Dublin', '2018-11-18T12:00:00', '8', '11', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN'),
(6, 'Wexford', '2018-11-14T12:00:00', '12', '13', '46.png', '04.png', 'LIGHT_RAIN', 'GREYCLOUD'),
(7, 'Wexford', '2018-11-15T12:00:00', '10', '14', '05d.png', '03n.png', 'MEDIUM_RAIN_SHOWERS', 'SUN_WITH_GREY_CLOUD'),
(8, 'Wexford', '2018-11-16T12:00:00', '11', '13', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD'),
(9, 'Wexford', '2018-11-17T12:00:00', '8', '12', '03d.png', '01n.png', 'SUN_WITH_GREY_CLOUD', 'CLEAR_WEATHER_SUN'),
(10, 'Wexford', '2018-11-18T12:00:00', '8', '11', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN'),
(11, 'Cork', '2018-11-14T12:00:00', '12', '13', '46.png', '05n.png', 'LIGHT_RAIN', 'MEDIUM_RAIN_SHOWERS'),
(12, 'Cork', '2018-11-15T12:00:00', '6', '13', '46.png', '02n.png', 'LIGHT_RAIN', 'SUN_WITH_LIGHT_CLOUD'),
(13, 'Cork', '2018-11-16T12:00:00', '12', '13', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD'),
(14, 'Cork', '2018-11-17T12:00:00', '9', '13', '46.png', '03n.png', 'DRIZZLE', 'SUN_WITH_GREY_CLOUD'),
(15, 'Cork', '2018-11-18T12:00:00', '8', '11', '02d.png', '02n.png', 'SUN_WITH_LIGHT_CLOUD', 'SUN_WITH_LIGHT_CLOUD'),
(16, 'Kerry', '2018-11-14T12:00:00', '11', '14', '46.png', '09.png', 'LIGHT_RAIN', 'MEDIUM_RAIN'),
(17, 'Kerry', '2018-11-15T12:00:00', '10', '12', '46.png', '02n.png', 'LIGHT_RAIN', 'SUN_WITH_LIGHT_CLOUD'),
(18, 'Kerry', '2018-11-16T12:00:00', '11', '14', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD'),
(19, 'Kerry', '2018-11-17T12:00:00', '9', '13', '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS'),
(20, 'Kerry', '2018-11-18T12:00:00', '7', '12', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN'),
(21, 'Galway', '2018-11-14T12:00:00', '12', '15', '10.png', '10.png', 'HEAVY_RAIN', 'HEAVY_RAIN'),
(22, 'Galway', '2018-11-15T12:00:00', '6', '12', '46.png', '01n.png', 'LIGHT_RAIN', 'CLEAR_WEATHER_SUN'),
(23, 'Galway', '2018-11-16T12:00:00', '12', '14', '03d.png', '04.png', 'SUN_WITH_GREY_CLOUD', 'GREYCLOUD'),
(24, 'Galway', '2018-11-17T12:00:00', '6', '14', '04.png', '01n.png', 'GREYCLOUD', 'CLEAR_WEATHER_SUN'),
(25, 'Galway', '2018-11-18T12:00:00', '5', '11', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN'),
(26, 'Donegal', '2018-11-14T12:00:00', '12', '14', '46.png', '46.png', 'LIGHT_RAIN', 'LIGHT_RAIN'),
(27, 'Donegal', '2018-11-14T12:00:00', '6', '13', '46.png', '01n.png', 'LIGHT_RAIN', 'CLEAR_WEATHER_SUN'),
(28, 'Donegal', '2018-11-16T12:00:00', '11', '13', '02d.png', '04.png', 'SCATTERED_CLOUDS', 'GREYCLOUD'),
(29, 'Donegal', '2018-11-17T12:00:00', '7', '13', '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS'),
(30, 'Donegal', '2018-11-18T12:00:00', '6', '10', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN'),
(31, 'Offaly', '2018-11-14T12:00:00', '12', '14', '05d.png', '46.png', 'MEDIUM_RAIN_SHOWERS', 'CLEAR_WDRIZZLEEATHER_SUN'),
(32, 'Offaly', '2018-11-15T12:00:00', '6', '14', '46.png', '05d.png', 'MEDIUM_RAIN_SHOWERS', 'DRIZZLE'),
(33, 'Offaly', '2018-11-16T12:00:00', '11', '13', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD'),
(34, 'Offaly', '2018-11-17T12:00:00', '6', '13', '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS'),
(35, 'Offaly', '2018-11-18T12:00:00', '5', '10', '01.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN'),
(36, 'Mayo', '2018-11-114T12:00:00', '12', '14', '09.png', '10.png', 'MEDIUM_RAIN', 'HEAVY_RAIN'),
(37, 'Mayo', '2018-11-115T12:00:00', '6', '11', '09.png', '10n.png', 'MEDIUM_RAIN', 'CLEAR_WEATHER_SUN'),
(38, 'Mayo', '2018-11-116T12:00:00', '11', '14', '03d.png', '04.png', 'SUN_WITH_GREY_CLOUD', 'GREYCLOUD'),
(39, 'Mayo', '2018-11-117T12:00:00', '5', '13', '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS'),
(40, 'Mayo', '2018-11-118T12:00:00', '6', '10', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN'),
(41, 'Belfast', '2018-11-114T12:00:00', '11', '13', '05d.png', '04.png', 'MEDIUM_RAIN_SHOWERS', 'GREYCLOUD'),
(42, 'Belfast', '2018-11-114T12:00:00', '11', '13', '05d.png', '04.png', 'MEDIUM_RAIN_SHOWERS', 'GREYCLOUD'),
(43, 'Belfast', '2018-11-115T12:00:00', '6', '14', '05d.png', '02n.png', 'MEDIUM_RAIN_SHOWERS', 'SCATTERED_CLOUDS'),
(44, 'Belfast', '2018-11-115T12:00:00', '9', '13', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD'),
(45, 'Belfast', '2018-11-117T12:00:00', '7', '10', '04.png', '01n.png', 'GREYCLOUD', 'CLEAR_WEATHER_SUN'),
(46, 'Belfast', '2018-11-118T12:00:00', '7', '10', '01d.png', '02n.png', 'CLEAR_WEATHER_SUN', 'SCATTERED_CLOUDS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forecast`
--
ALTER TABLE `forecast`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forecast`
--
ALTER TABLE `forecast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
