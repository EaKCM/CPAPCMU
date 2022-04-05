-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2022 at 05:47 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cpap`
--

-- --------------------------------------------------------

--
-- Table structure for table `cpap_type_machine`
--

CREATE TABLE IF NOT EXISTS `cpap_type_machine` (
  `type_machine_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทเครื่อง',
  `type_machine_name` varchar(50) NOT NULL COMMENT 'ชื่อประเภทเครื่อง',
  `type_machine_description` text COMMENT 'คำอธิบายประเภทเครื่อง',
  PRIMARY KEY (`type_machine_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ตารางประเภทเครื่อง' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cpap_type_machine`
--

INSERT INTO `cpap_type_machine` (`type_machine_id`, `type_machine_name`, `type_machine_description`) VALUES
(1, 'CPAP', NULL),
(2, 'Bipap', NULL),
(3, 'AutoPAP', NULL),
(4, 'อื่นๆ...', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
