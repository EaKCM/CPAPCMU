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
-- Table structure for table `tb_location1`
--

CREATE TABLE IF NOT EXISTS `tb_location1` (
  `Ward_code` char(4) NOT NULL DEFAULT '',
  `Ward_code_old` char(4) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `ward_name` char(30) DEFAULT NULL,
  `ward_name1` char(80) DEFAULT NULL,
  `mis_code` char(12) DEFAULT NULL,
  `ward_name_eng` varchar(150) DEFAULT NULL,
  `ward_name_short` varchar(50) DEFAULT NULL,
  `ward_name_old` varchar(255) DEFAULT NULL,
  `ward_name1_old` varchar(255) DEFAULT NULL,
  `ward_tel` char(12) DEFAULT NULL,
  `ward_tel2` varchar(50) DEFAULT NULL,
  `ward_build` int(11) DEFAULT NULL,
  `ward_floor` char(30) DEFAULT NULL,
  `section_code` char(3) DEFAULT NULL,
  `Smi_code` char(5) DEFAULT NULL,
  `Smi_code_old` char(11) DEFAULT NULL,
  `Ward_order` char(4) DEFAULT NULL,
  `Ward_cat` char(2) DEFAULT NULL,
  `ward_asc_cat` char(2) DEFAULT NULL,
  `bed` int(10) unsigned DEFAULT NULL,
  `bed_real` int(10) DEFAULT NULL,
  `pt` float(7,0) DEFAULT NULL,
  `noptbed` varchar(255) DEFAULT NULL,
  `WARD_OTRATE` char(5) DEFAULT NULL,
  `Costcenter` varchar(255) DEFAULT '',
  PRIMARY KEY (`Ward_code`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `tb_location1`
--

INSERT INTO `tb_location1` (`Ward_code`, `Ward_code_old`, `active`, `ward_name`, `ward_name1`, `mis_code`, `ward_name_eng`, `ward_name_short`, `ward_name_old`, `ward_name1_old`, `ward_tel`, `ward_tel2`, `ward_build`, `ward_floor`, `section_code`, `Smi_code`, `Smi_code_old`, `Ward_order`, `Ward_cat`, `ward_asc_cat`, `bed`, `bed_real`, `pt`, `noptbed`, `WARD_OTRATE`, `Costcenter`) VALUES
('0000', '0000', 3, 'สำนักงานศูนย์ความเป็นเลิศฯ', 'สำนักงานศูนย์ความเป็นเลิศทางการแพทย์', NULL, 'CMEX OFFICE', 'CMEX OFFICE', 'สำนักงานบริหาร', 'สำนักงานบริหาร', '053-934700', '053-934700', NULL, NULL, '00', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0101', '0101', 3, 'ศูนย์เลสิค', 'ศูนย์เลสิค', NULL, 'CMU Lasik Center', 'CMU Lasik Center', 'ศูนย์เลสิคมหาวิทยาลัยเชียงใหม่', 'ศูนย์เลสิคมหาวิทยาลัยเชียงใหม่', '053-934777', '0827666909', NULL, NULL, '01', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0202', '0202', 3, 'ศูนย์สุขภาพสตรี', 'ศูนย์สุขภาพสตรี', NULL, 'Women Health Center', 'Women Health Center', 'ศูนย์สุขภาพสตรี', 'ศูนย์สุขภาพสตรี', '053-934711', '053-934712', NULL, NULL, '02', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0303', '0303', 3, 'ศูนย์การแพทย์ผสมผสาน', 'ศูนย์การแพทย์แผนไทยและการแพทย์ผสมผสาน', NULL, 'The Center of Thai Traditional and Complementary Medicine', 'TTCM', 'ศูนย์การแพทย์แผนไทยและการแพทย์ผสมผสาน', 'ศูนย์การแพทย์แผนไทยและการแพทย์ผสมผสาน', '053-934899', '053-934899', NULL, NULL, '03', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0404', '0404', 3, 'ศูนย์เพทซีที และไซโคลตรอน', 'ศูนย์เพทซีที และไซโคลตรอน', NULL, 'PET/CT & CYCLOTRON CENTER', 'PET/CT & CYCLOTRON CENTER', 'ศูนย์เพ็ทซี และไซโคลตรอน', 'ศูนย์เพ็ทซี และไซโคลตรอน', '053-934790', '053-934790', NULL, NULL, '04', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0505', '0505', 3, 'ศูนย์เลเซอร์ต้อกระจกเชียงใหม่', 'ศูนย์เลเซอร์ต้อกระจกเชียงใหม่', NULL, 'Chiang Mai Laser Cataract Surgery Center', 'Chiang Mai Laser Cataract Surgery Center', 'ศูนย์เลเซอร์ต้อกระจกเชียงใหม่', 'ศูนย์เลเซอร์ต้อกระจกเชียงใหม่', '053-934714', '053-934715', NULL, NULL, '05', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0606', '0606', 3, 'ศูนย์เวชศาสตร์ผู้สูงอายุ', 'ศูนย์เวชศาสตร์ผู้สูงอายุ', NULL, 'Geriatric Medical Center', 'Geriatric Medical Center', 'ศูนย์เวชศาสตร์ผู้สูงอายุ', 'ศูนย์เวชศาสตร์ผู้สูงอายุ', '053-920800', '053920700', NULL, NULL, '06', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0707', '0707', 3, 'ศูนย์วิเคราะห์สุขภาพการนอนหลับ', 'ศูนย์วิเคราะห์สุขภาพการนอนหลับ', NULL, 'Sleep Disorders Center', 'Sleep Disorders Center', 'ศูนย์วิเคราะห์สุขภาพการนอนหลับ', 'ศูนย์วิเคราะห์สุขภาพการนอนหลับ', '053-920666', '053-920666', NULL, NULL, '07', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0808', '0808', 3, 'ศูนย์ผู้ป่วยนอกCmex', 'ศูนย์ผู้ป่วยนอกCmex', NULL, 'OPD Cmex', 'OPD Cmex', 'ศูนย์ผู้ป่วยนอกCmex', 'ศูนย์ผู้ป่วยนอกCmex', NULL, NULL, NULL, NULL, '08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('0909', '0909', 3, 'ศูนย์ผู้ป่วยนอกGMC', 'ศูนย์ผู้ป่วยนอกGMC', NULL, 'OPD GMC', 'OPD GMC', 'ศูนย์ผู้ป่วยนอกGMC', 'ศูนย์ผู้ป่วยนอกGMC', NULL, NULL, NULL, NULL, '09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1010', '1010', 3, 'ศูนย์ผู้ป่วยในGMC', 'ศูนย์ผู้ป่วยในGMC', NULL, 'IPD Cmex', 'IPD Cmex', 'ศูนย์ผู้ป่วยในCmex', 'ศูนย์ผู้ป่วยในCmex', NULL, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1111', '1111', 3, 'ห้องตรวจจักษุGMC', 'ห้องตรวจจักษุ ศูนย์เวชศาสตร์ผู้สูงอายุ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1212', '1212', 3, 'ห้องยาCmex', 'ห้องยาCmex', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1313', '1313', 3, 'ห้องยา IPD GMC', 'ห้องยา IPD GMC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1414', '1414', 3, 'ห้องยา OPD GMC', 'ห้องยา OPD GMC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1515', '1515', 3, 'ห้องยา TTCM', 'ห้องยา TTCM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1616', '1616', 3, 'หน่วยปฏิบัติการLab CMEx', 'หน่วยปฏิบัติการLab CMEx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('1717', '1717', 3, 'ศูนย์การแพทย์เพื่อการมีบุตร', 'ศูนย์การแพทย์เพื่อการมีบุตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
