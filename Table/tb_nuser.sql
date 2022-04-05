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
-- Table structure for table `tb_nuser`
--

CREATE TABLE IF NOT EXISTS `tb_nuser` (
  `NUM_OT` varchar(8) NOT NULL DEFAULT '',
  `Upass` varchar(20) DEFAULT NULL,
  `ward_code` varchar(4) DEFAULT NULL,
  `pos` char(1) DEFAULT NULL,
  `PP` char(2) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `Utype` varchar(5) DEFAULT NULL,
  `lastdate` datetime DEFAULT NULL,
  PRIMARY KEY (`NUM_OT`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `tb_nuser`
--

INSERT INTO `tb_nuser` (`NUM_OT`, `Upass`, `ward_code`, `pos`, `PP`, `status`, `Utype`, `lastdate`) VALUES
('59001', '1111', '0000', '7', '77', '1', NULL, NULL),
('60010', '2222', '0000', '7', '90', '1', NULL, NULL),
('somsang', '3333', '0101', '7', '01', '1', NULL, NULL),
('61008', '4444', '0303', '7', '58', '1', NULL, NULL),
('63002', '5555', '0000', '7', '66', '1', NULL, NULL),
('teekorn', '6666', '0707', '7', '01', '1', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
