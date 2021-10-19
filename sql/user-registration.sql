-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 02:24 PM
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
  `id` int(100) NOT NULL,
  `location` varchar(250) NOT NULL,
  `day_num` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `min_temp` varchar(50) NOT NULL,
  `max_temp` varchar(50) NOT NULL,
  `weather` varchar(100) NOT NULL,
  `weather_night` varchar(100) NOT NULL,
  `weather_text` varchar(250) NOT NULL,
  `weather_textN` varchar(250) NOT NULL,
  `wind_speed` varchar(100) NOT NULL,
  `wind_dir` varchar(100) NOT NULL,
  `wind_speed_night` varchar(100) NOT NULL,
  `wind_dir_night` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forecast`
--

INSERT INTO `forecast` (`id`, `location`, `day_num`, `date`, `min_temp`, `max_temp`, `weather`, `weather_night`, `weather_text`, `weather_textN`, `wind_speed`, `wind_dir`, `wind_speed_night`, `wind_dir_night`) VALUES
(3977, 'Cork', '15', '2018-11-18', '13', '11', '05d.png', '02n.png', 'MEDIUM_RAIN_SHOWERS', 'SUN_WITH_LIGHT_CLOUD', '11', 'xx', '11', 'xx'),
(3978, 'Dublin', '16', '2018-11-16', '18', '12', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '12', 'xx', '12', 'xx'),
(3979, 'Dublin', '17', '2018-11-17', '8', '12', '05d.png', '01n.png', 'MEDIUM_RAIN_SHOWERS', 'CLEAR_WEATHER_SUN', '20', 'ESE', '20', 'ESE'),
(3980, 'Dublin', '18', '2018-11-18', '8', '11', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '20', 'E', '25', 'E'),
(3982, 'Dublin', '14', '2018-11-14', '11', '14', '05d.png', '04.png', 'MEDIUM_RAIN_SHOWERS', 'GREYCLOUD', '25', 'SSW', '25', 'SSW'),
(3983, 'Dublin', '15', '2018-11-15', '5', '15', '05d.png', '02n.png', 'MEDIUM_RAIN_SHOWERS', 'SUN_WITH_LIGHT_CLOUD', '25', 'SSE', '10', 'SE'),
(3984, 'Dublin', '16', '2018-11-16', '11', '14', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '25', 'SSE', '20', 'SE'),
(3985, 'Dublin', '17', '2018-11-17', '8', '12', '05d.png', '01n.png', 'MEDIUM_RAIN_SHOWERS', 'CLEAR_WEATHER_SUN', '20', 'ESE', '20', 'ESE'),
(3986, 'Dublin', '18', '2018-11-18', '8', '11', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '20', 'E', '25', 'E'),
(3987, 'Wexford', '14', '2018-11-14', '12', '13', '46.png', '04.png', 'LIGHT_RAIN', 'GREYCLOUD', '40', 'SSW', '30', 'SSW'),
(3988, 'Wexford', '15', '2018-11-15', '10', '14', '05d.png', '03n.png', 'MEDIUM_RAIN_SHOWERS', 'SUN_WITH_GREY_CLOUD', '30', 'SSW', '20', 'SW'),
(3989, 'Wexford', '16', '2018-11-16', '11', '13', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '25', 'SSE', '25', 'SE'),
(3990, 'Wexford', '17', '2018-11-17', '8', '12', '03d.png', '01n.png', 'SUN_WITH_GREY_CLOUD', 'CLEAR_WEATHER_SUN', '25', 'ESE', '25', 'ESE'),
(3991, 'Wexford', '18', '2018-11-18', '8', '11', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '25', 'ENE', '25', 'ENE'),
(3992, 'Cork', '14', '2018-11-14', '12', '13', '46.png', '05n.png', 'LIGHT_RAIN', 'MEDIUM_RAIN_SHOWERS', '30', 'SSW', '30', 'SSW'),
(3993, 'Cork', '15', '2018-11-15', '6', '13', '46.png', '02n.png', 'LIGHT_RAIN', 'SUN_WITH_LIGHT_CLOUD', '25', 'SSW', '20', 'SSE'),
(3994, 'Cork', '16', '2018-11-16', '12', '13', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '25', 'SE', '25', 'SSE'),
(3995, 'Cork', '17', '2018-11-17', '9', '13', '46.png', '03n.png', 'DRIZZLE', 'SUN_WITH_GREY_CLOUD', '20', 'ESE', '20', 'ESE'),
(3996, 'Cork', '18', '2018-11-18', '8', '11', '02d.png', '02n.png', 'SUN_WITH_LIGHT_CLOUD', 'SUN_WITH_LIGHT_CLOUD', '25', 'E', '20', 'E'),
(3997, 'Kerry', '14', '2018-11-14', '11', '14', '46.png', '09.png', 'LIGHT_RAIN', 'MEDIUM_RAIN', '40', 'SSW', '40', 'SSW'),
(3998, 'Kerry', '15', '2018-11-15', '10', '12', '46.png', '02n.png', 'LIGHT_RAIN', 'SUN_WITH_LIGHT_CLOUD', '30', 'SW', '30', 'SSE'),
(3999, 'Kerry', '16', '2018-11-16', '11', '14', '04.png', '04.png', 'GREYCLOUD', 'GREYCLOUD', '35', 'SSE', '30', 'SE'),
(4000, 'Kerry', '17', '2018-11-17', '9', '13', '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS', '30', 'SE', '30', 'ESE'),
(4001, 'Kerry', '18', '2018-11-18', '7', '12', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '25', 'ESE', '20', 'E'),
(4002, 'Galway', '14', '2018-11-14', '12', '15', '10.png', '10.png', 'HEAVY_RAIN', 'HEAVY_RAIN', '30', 'SSW', '25', 'SSW'),
(4003, 'Galway', '15', '2018-11-15', '6', '12', '46.png', '01n.png', 'LIGHT_RAIN', 'CLEAR_WEATHER_SUN', '25', 'SSE', '15', 'SE'),
(4004, 'Galway', '16', '2018-11-16', '12', '14', '03d.png', '04.png', 'SUN_WITH_GREY_CLOUD', 'GREYCLOUD', '20', 'ESE', '20', 'ESE'),
(4005, 'Galway', '17', '2018-11-17', '6', '14', '04.png', '01n.png', 'GREYCLOUD', 'CLEAR_WEATHER_SUN', '25', 'ESE', '20', 'ESE'),
(4006, 'Galway', '18', '2018-11-18', '5', '11', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '20', 'ESE', '20', 'E'),
(4007, 'Donegal', '14', '2018-11-14', '12', '14', '46.png', '46.png', 'LIGHT_RAIN', 'LIGHT_RAIN', '30', 'SSW', '30', 'SSE'),
(4008, 'Donegal', '15', '2018-11-14', '6', '13', '46.png', '01n.png', 'LIGHT_RAIN', 'CLEAR_WEATHER_SUN', '30', 'SSW', '20', 'SSW'),
(4009, 'Donegal', '16', '2018-11-16', '11', '13', '02d.png', '04.png', 'SCATTERED_CLOUDS', 'GREYCLOUD', '25', 'SE', '25', 'SE'),
(4010, 'Donegal', '17', '2018-11-17', '7', '13', '04.png', '02n.png', 'GREYCLOUD', 'SCATTERED_CLOUDS', '30', 'SE', '25', 'ESE'),
(4011, 'Donegal', '18', '2018-11-18', '6', '10', '01d.png', '01n.png', 'CLEAR_WEATHER_SUN', 'CLEAR_WEATHER_SUN', '25', 'ESE', '25', 'E'),
(4012, 'Offaly', '14', '2018-11-14', '12', '14', '05d.png', '46.png', 'MEDIUM_RAIN_SHOWERS', 'CLEAR_WDRIZZLEEATHER_SUN', '30 ', 'SSW', '25', 'SSE'),
(4013, 'cork', '', '0000-00-00', '11', '11', '', '', '', '', '11', 'sss', '11', 'sss'),
(4014, 'cork', '', '0000-00-00', '13', '12', '', '', '', '', '11', 'sss', '12', 'sss'),
(4015, 'wexford', '', '0000-00-00', '12', '12', '', '', '', '', '12', 'DD', '13', 'DD'),
(4016, 'ofally', '', '2020-12-31', '13', '12', '', '', '', '', '11', 'FF', '12', 'FF'),
(4017, 'kerry', '', '2018-11-18', '22', '22', '', '', '', '', '22', 'rrr', '22', 'rrr'),
(4018, 'cork', '', '2018-11-18', '13', '11', '', '', '', '', '11', 'ttt', '11', 'tt'),
(4019, 'galway', '', '2018-11-18', '13', '11', '', '', '', '', '11', 'yyy', '13', 'yyy'),
(4020, 'kerry', '', '0000-00-00', '15', '15', '', '', '', '', '15', 'MM', '15', 'MMM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `eircode` varchar(11) NOT NULL,
  `pimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `email`, `password`, `eircode`, `pimage`) VALUES
(14, '10513878@mydbs.ie', '$2y$10$dyk2W3idg5Ls5i0bQhKobubWudErufZhGMlk.5kVFVTdBm9FVCESO', 'D15V3V2', ''),
(15, 'justin@gmail.com', '$2y$10$Jnnz0o7gfxQIz5jHDojkdu8QBXQnadllP6CtEIVdU26MTotSWaniO', 'A2A2', 'IMG_1636.JPG'),
(16, 'den@gmail.com', '$2y$10$BXTUssnP8zMfAp7YCoWkLOQdZNnnk/Ok8iU8eiGnXBLaFhGhwBbd6', 'D2D2', 'IMG_1270.PNG'),
(17, 'grace@gmail.com', '$2y$10$/Dvqwu4fXbpz/mYbc.cr5.JPVUH4AbBR9KaCq0tf5ueHvwhhUE4rC', 'D15V3V2', 'images.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forecast`
--
ALTER TABLE `forecast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forecast`
--
ALTER TABLE `forecast`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4021;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
