-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 16, 2021 at 12:04 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bankingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Account_No` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Current_Balance` int(255) NOT NULL,
  `Phone_No` int(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Account_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Account_No`, `Name`, `Current_Balance`, `Phone_No`, `Email`) VALUES
(101, 'Harshita Khatri', 4290, 11111111, 'Haru13@gmail.com'),
(102, 'Milind Vani', 3000, 22222222, 'Milindvani27@gmail.com'),
(103, 'Goldy Solanki', 7000, 33333333, 'Goldy7@gmail.com'),
(104, 'Hirendra Singh', 2000, 44444444, 'Hirendrasingh@gmail.com'),
(105, 'Nisha Reddy', 5600, 55555555, 'NishaR@gmail.com'),
(106, 'Shikha Nagle', 900, 66666666, 'ShikhaSn@gmail.com'),
(107, 'Aanand Ahuja', 4000, 77777777, 'AanandAJ@gmail.com'),
(108, 'Om Dane', 3050, 88888888, 'OMdane@gmail.com'),
(109, 'Kratika kushwah', 1060, 99999999, 'Kratika26@gmail.com'),
(110, 'Jaya Mathur', 6000, 12345678, 'JayaM@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `Sender_Account_No` int(255) NOT NULL,
  `Reciver_Account_No` int(255) NOT NULL,
  `Transferred_Amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`Sender_Account_No`, `Reciver_Account_No`, `Transferred_Amount`) VALUES
(101, 104, 10),
(101, 108, 10),
(101, 104, 10),
(101, 101, 10),
(101, 108, 10),
(101, 108, 10),
(101, 109, 10),
(101, 108, 20),
(101, 108, 100),
(101, 108, 100),
(101, 108, 100),
(101, 108, 100),
(101, 108, 20),
(101, 108, 50),
(101, 105, 100),
(101, 108, 50),
(101, 109, 50);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
