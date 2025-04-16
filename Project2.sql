-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2025 at 06:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Leader`
--

CREATE TABLE `Leader` (
  `Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Leader`
--

INSERT INTO `Leader` (`Id`, `name`, `email`, `password`) VALUES
(1, 'Luke Schmidt', 'luke@schmidt.com', '011c945f30ce2cbafc452f39840f025693339c42');

-- --------------------------------------------------------

--
-- Table structure for table `observations`
--

CREATE TABLE `observations` (
  `id` int(11) NOT NULL,
  `obs_count` int(11) NOT NULL,
  `obs_date` date NOT NULL,
  `observer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `observations`
--

INSERT INTO `observations` (`id`, `obs_count`, `obs_date`, `observer`) VALUES
(1, 1, '2025-04-16', 'Luke');

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `Id` int(11) NOT NULL,
  `Session_time` varchar(200) NOT NULL,
  `Session_location` varchar(200) NOT NULL,
  `Class_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Sessions`
--

INSERT INTO `Sessions` (`Id`, `Session_time`, `Session_location`, `Class_name`) VALUES
(1, '17:00-18:30', 'Atk 310', 'CSCI 1301');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Leader`
--
ALTER TABLE `Leader`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `observations`
--
ALTER TABLE `observations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Leader`
--
ALTER TABLE `Leader`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `observations`
--
ALTER TABLE `observations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Sessions`
--
ALTER TABLE `Sessions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
