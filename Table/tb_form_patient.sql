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
-- Table structure for table `tb_form_patient`
--

CREATE TABLE IF NOT EXISTS `tb_form_patient` (
  `id_patient` int(11) NOT NULL AUTO_INCREMENT,
  `date_require` date NOT NULL,
  `name_patient` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `type_cpap_require` varchar(500) NOT NULL,
  `type_cpap_require1` varchar(500) NOT NULL,
  `tatus` varchar(100) NOT NULL,
  `date_receive` date NOT NULL,
  `score_machine_use` int(11) NOT NULL,
  `score_oxygen` int(11) NOT NULL,
  PRIMARY KEY (`id_patient`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_form_patient`
--

INSERT INTO `tb_form_patient` (`id_patient`, `date_require`, `name_patient`, `age`, `phone`, `type_cpap_require`, `type_cpap_require1`, `tatus`, `date_receive`, `score_machine_use`, `score_oxygen`) VALUES
(1, '2022-04-26', 'eakaruck', '12', '3214567890', '3', '', 'Array', '2022-04-19', 60, 80),
(2, '2022-04-18', 'Pusadee', '36', '3214567890', '2', '', 'Array', '2022-04-24', 79, 45),
(3, '2022-04-18', 'ชัชญา', '8', '4455587941', '3', '', 'Array', '2022-04-21', 85, 78),
(4, '2022-05-05', 'ภัทราวาดี', '40', '6622887791', '2', '', 'Array', '2022-04-30', 32, 48),
(5, '2022-05-15', 'สุพิศ', '60', '9876543210', '3', '', 'Array', '2022-04-24', 99, 66),
(6, '2022-05-25', '๋ใจดี', '42', '4563219780', '3', 'CPAP AUTO', 'Array', '2022-06-01', 35, 55),
(7, '2022-04-10', 'Lung TU', '66', '8587496217', '2', 'CIM', 'Array', '2022-04-27', 32, 64),
(8, '2022-04-08', 'Ponyang Kum', '62', '8521479630', '2', 'ท่อลม', 'Array', '2022-05-25', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
