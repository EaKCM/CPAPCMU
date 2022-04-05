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
-- Table structure for table `tb_form_donator`
--

CREATE TABLE IF NOT EXISTS `tb_form_donator` (
  `id_donator` int(11) NOT NULL AUTO_INCREMENT,
  `date_donor` date NOT NULL,
  `name_donor` varchar(100) NOT NULL,
  `age` varchar(500) NOT NULL,
  `type_cpap` varchar(500) NOT NULL,
  `type_cpap1` varchar(500) NOT NULL,
  `brand_cpap` varchar(500) NOT NULL,
  `brand_cpap1` varchar(500) NOT NULL,
  `accessories` varchar(500) NOT NULL,
  `accessories1` varchar(500) NOT NULL,
  `tatus` varchar(500) NOT NULL,
  PRIMARY KEY (`id_donator`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_form_donator`
--

INSERT INTO `tb_form_donator` (`id_donator`, `date_donor`, `name_donor`, `age`, `type_cpap`, `type_cpap1`, `brand_cpap`, `brand_cpap1`, `accessories`, `accessories1`, `tatus`) VALUES
(1, '2022-04-04', 'eakaruck', '12', '1', '', '1', '', 'Array', '', 'Array'),
(3, '2022-04-03', 'Samart', '35', '2', '', '3', '', 'Array', '', 'Array'),
(5, '2022-04-28', 'Payu', '56', '3', '', '1', '', 'Array', '', 'Array'),
(6, '2022-04-27', 'mydb', '49', '3', '', '1', '', 'Array', 'ประแจ', 'Array'),
(7, '2022-04-28', 'Lung Pom', '70', '3', '', '3', 'Sumsung', 'Array', '', 'Array');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
