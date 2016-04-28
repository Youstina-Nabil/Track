-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2016 at 07:08 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `track`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE IF NOT EXISTS `bus` (
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `maxspeed` int(11) NOT NULL DEFAULT '130',
  `actualspeed` int(11) DEFAULT NULL,
  `license` varchar(11) NOT NULL,
  `busmodel` varchar(11) NOT NULL,
  `maintenance` varchar(500) DEFAULT NULL,
  `fuellevel` int(11) DEFAULT NULL,
  `busno` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `distance` int(11) DEFAULT NULL,
  `oillevel` int(11) DEFAULT NULL,
  `stopstations` varchar(500) DEFAULT NULL,
  `laststop` varchar(200) DEFAULT NULL,
  `tirechangelimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`longitude`, `latitude`, `maxspeed`, `actualspeed`, `license`, `busmodel`, `maintenance`, `fuellevel`, `busno`, `ID`, `distance`, `oillevel`, `stopstations`, `laststop`, `tirechangelimit`) VALUES
('55x', '77y', 130, 80, '23', '22222', 'jan25', 2, 151, 11111111, 474474, 4, '"abbasyia","shoubra","mazalat"', '"shoubra"', 99999),
(NULL, NULL, 130, NULL, '2ts', '2jh', NULL, NULL, NULL, 654, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, 130, NULL, '5567', '514', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, 130, NULL, '2223332', '211', NULL, NULL, NULL, 111222, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, 130, NULL, '5t89k', '325bh', NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, 130, NULL, '23', 'efr', NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, 130, NULL, '56ftr', '33jk', NULL, NULL, NULL, 178, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fleetowner`
--

DROP TABLE IF EXISTS `fleetowner`;
CREATE TABLE IF NOT EXISTS `fleetowner` (
  `ssn` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  `accounttype` varchar(10) NOT NULL,
  `noofbus` int(10) NOT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleetowner`
--

INSERT INTO `fleetowner` (`ssn`, `email`, `password`, `firstname`, `lastname`, `phoneno`, `companyname`, `accounttype`, `noofbus`) VALUES
(0, 'omaramr@yahoo.com', '999', 'omar', 'amr', 1004658870, 'al kahera', 'silver', 50);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `email` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`email`, `password`, `firstname`, `lastname`) VALUES
('amromar@yah', '999', 'amr', 'omar');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `email` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`email`, `password`, `firstname`, `lastname`) VALUES
('alialaa@yahoo.com', '123', 'Ali', 'Alaa'),
('monaali@yahoo.com', '000', 'mona', 'ali');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

DROP TABLE IF EXISTS `stops`;
CREATE TABLE IF NOT EXISTS `stops` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `busstop` varbinary(50) NOT NULL,
  `busno` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`id`, `busstop`, `busno`) VALUES
(1, 0xd8a7d984d98120d985d8b3d983d986, 116),
(2, 0xd983d8a8d8b1d98a20d8a7d984d982d8a8d987, 116),
(3, 0xd8a7d984d8b9d8a8d8a7d8b3d98ad987, 116),
(4, 0xd8b9d8a8d8afd98720d8a8d8a7d8b4d8a7, 116),
(5, 0xd8a7d984d98120d985d8b3d983d986, 130),
(6, 0xd8b9d8a8d8a7d8b3d98ad987, 130),
(7, 0xd8b1d985d8b3d98ad8b3, 130),
(8, 0xd8b1d988d983d8b3d98a, 4),
(9, 0xd985d98ad8afd8a7d98620d8a7d984d8add8acd8a7d8b2, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
