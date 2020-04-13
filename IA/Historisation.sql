-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2020 at 03:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Historisation`
--

-- --------------------------------------------------------

--
-- Table structure for table `PostgreSql`
--

CREATE TABLE `PostgreSql` (
  `execution` int(11) DEFAULT NULL,
  `physicalRead` int(11) DEFAULT NULL,
  `logicalRead` int(11) DEFAULT NULL,
  `ElapsedTime` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PostgreSql`
--

INSERT INTO `PostgreSql` (`execution`, `physicalRead`, `logicalRead`, `ElapsedTime`) VALUES
(24, 10, 0, 15.597442000000004),
(25, 10, 0, 91.56951300000001),
(25, 10, 0, 0.620878),
(29, 10, 0, 1057.789363),
(29, 10, 0, 427.131267),
(181, 10, 0, 538.042328),
(190, 10, 0, 3.875139),
(190, 10, 0, 3.1720219999999983);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
