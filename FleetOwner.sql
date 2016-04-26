-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2016 at 02:06 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `fleetowner`
--

DROP TABLE IF EXISTS `fleetowner`;
CREATE TABLE IF NOT EXISTS `fleetowner` (
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `CompanyName` text NOT NULL,
  `PhoneNo` int(20) NOT NULL,
  `ManageInventory` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleetowner`
--

INSERT INTO `fleetowner` (`FirstName`, `LastName`, `Email`, `Password`, `CompanyName`, `PhoneNo`, `ManageInventory`) VALUES
('Shymaa', 'Tarek', 'ST', '145', 'ST', 222, ''),
('Youstina', 'Nabil', 'YN@gmail.com', '123', 'YN', 135, ''),
('Amira', 'Mohiey', 'AM@gmail.com', '567', 'AM', 123, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
