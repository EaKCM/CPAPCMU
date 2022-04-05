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
-- Table structure for table `tb_person`
--

CREATE TABLE IF NOT EXISTS `tb_person` (
  `SSUSR_Initials` varchar(255) DEFAULT NULL,
  `NUM_OT` varchar(8) NOT NULL DEFAULT '',
  `work` date DEFAULT NULL COMMENT 'วันเริ่มทำงาน',
  `start` date DEFAULT NULL COMMENT 'วันเข้าทำงานวันแรก',
  `Person_id` varchar(30) DEFAULT NULL,
  `Person_id1` varchar(30) DEFAULT NULL,
  `Fname` varchar(30) DEFAULT NULL,
  `chFname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `chLname` varchar(50) DEFAULT NULL,
  `name_english` varchar(30) DEFAULT NULL,
  `lname_english` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `MR1` varchar(10) DEFAULT NULL,
  `MR` char(1) DEFAULT NULL,
  `position_id` varchar(15) DEFAULT NULL,
  `mstatus` tinyint(1) DEFAULT NULL,
  `born` date DEFAULT NULL,
  `born_1` date DEFAULT NULL,
  `national` varchar(30) DEFAULT NULL,
  `religion` tinyint(1) DEFAULT NULL,
  `BIRTH_PLACE` text,
  `father` varchar(100) DEFAULT NULL,
  `father_occu` varchar(255) DEFAULT NULL,
  `mother` varchar(100) DEFAULT NULL,
  `mother_occu` varchar(255) DEFAULT NULL,
  `MAR` varchar(11) DEFAULT NULL,
  `MAR_new` tinyint(1) DEFAULT '1',
  `couple` varchar(100) DEFAULT NULL,
  `couple_occu` varchar(255) DEFAULT NULL,
  `son_count` varchar(255) DEFAULT NULL,
  `home` varchar(255) DEFAULT '',
  `TUMBOL` varchar(50) DEFAULT NULL,
  `tumbol_id` int(11) DEFAULT NULL,
  `tumbol_name` int(10) DEFAULT NULL,
  `aumphor` int(11) DEFAULT NULL,
  `aumphor_name` varchar(15) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `PROVINCE` varchar(30) DEFAULT NULL,
  `mail_code` varchar(255) DEFAULT NULL,
  `telaphone` varchar(30) DEFAULT NULL,
  `mobile_phone` varchar(30) DEFAULT NULL,
  `ward_phone` varchar(30) DEFAULT NULL,
  `relative` text,
  `relative_occu` varchar(255) DEFAULT NULL,
  `relative_addr` text,
  `num_people` varchar(13) DEFAULT NULL,
  `num_people1` varchar(13) DEFAULT NULL,
  `edu_cer` smallint(6) DEFAULT NULL,
  `edu_cer1` varchar(255) DEFAULT NULL,
  `edu_degree` tinyint(1) DEFAULT NULL,
  `edu_from` varchar(255) DEFAULT NULL,
  `edu_vol` varchar(255) DEFAULT NULL,
  `edu_year` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `form_size` varchar(255) DEFAULT NULL,
  `form_size1` varchar(255) DEFAULT NULL,
  `pos_new` char(3) DEFAULT NULL,
  `pos_old` varchar(50) DEFAULT NULL,
  `pos1` char(3) DEFAULT NULL,
  `pos_thai` varchar(255) DEFAULT NULL,
  `PP` char(3) DEFAULT NULL,
  `PP1` varchar(19) DEFAULT NULL,
  `PP_new` char(3) DEFAULT NULL,
  `FW_CODE` varchar(10) DEFAULT NULL,
  `FW_CODE_new` varchar(10) DEFAULT NULL,
  `FW_CODE1` varchar(45) DEFAULT NULL,
  `per_order` int(11) DEFAULT NULL,
  `work_sec` varchar(255) DEFAULT NULL,
  `nursecer_id` varchar(255) DEFAULT NULL,
  `nursecer_date` date DEFAULT NULL,
  `sapa_id` varchar(255) DEFAULT NULL,
  `samakom_id` varchar(15) DEFAULT NULL,
  `bank_no` varchar(255) DEFAULT NULL,
  `new` varchar(255) DEFAULT NULL,
  `memo` text,
  `mr_english` varchar(255) DEFAULT NULL,
  `mr_thai` varchar(255) DEFAULT NULL,
  `c_now` varchar(255) DEFAULT NULL,
  `newnurse` tinyint(1) DEFAULT '1',
  `ck` tinyint(1) DEFAULT '0',
  `ncomment` varchar(255) DEFAULT NULL,
  `nyear` char(4) DEFAULT NULL,
  `codeper` varchar(10) DEFAULT NULL,
  `goverment_fund` varchar(50) DEFAULT NULL,
  `day_card` varchar(50) DEFAULT NULL,
  `num_card` varchar(50) DEFAULT NULL,
  `stu` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `expert` varchar(50) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `nupdate` tinyint(1) DEFAULT '0',
  `hncheck` tinyint(1) DEFAULT '0',
  `pos` char(3) DEFAULT '1',
  PRIMARY KEY (`NUM_OT`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `tb_person`
--

INSERT INTO `tb_person` (`SSUSR_Initials`, `NUM_OT`, `work`, `start`, `Person_id`, `Person_id1`, `Fname`, `chFname`, `Lname`, `chLname`, `name_english`, `lname_english`, `sex`, `MR1`, `MR`, `position_id`, `mstatus`, `born`, `born_1`, `national`, `religion`, `BIRTH_PLACE`, `father`, `father_occu`, `mother`, `mother_occu`, `MAR`, `MAR_new`, `couple`, `couple_occu`, `son_count`, `home`, `TUMBOL`, `tumbol_id`, `tumbol_name`, `aumphor`, `aumphor_name`, `province_id`, `PROVINCE`, `mail_code`, `telaphone`, `mobile_phone`, `ward_phone`, `relative`, `relative_occu`, `relative_addr`, `num_people`, `num_people1`, `edu_cer`, `edu_cer1`, `edu_degree`, `edu_from`, `edu_vol`, `edu_year`, `blood_group`, `form_size`, `form_size1`, `pos_new`, `pos_old`, `pos1`, `pos_thai`, `PP`, `PP1`, `PP_new`, `FW_CODE`, `FW_CODE_new`, `FW_CODE1`, `per_order`, `work_sec`, `nursecer_id`, `nursecer_date`, `sapa_id`, `samakom_id`, `bank_no`, `new`, `memo`, `mr_english`, `mr_thai`, `c_now`, `newnurse`, `ck`, `ncomment`, `nyear`, `codeper`, `goverment_fund`, `day_card`, `num_card`, `stu`, `new_status`, `expert`, `lastupdate`, `nupdate`, `hncheck`, `pos`) VALUES
(NULL, '59001', NULL, NULL, '59001', NULL, 'ชัยธวัช', NULL, 'กิตติคุณากร', NULL, 'chaithawat', 'kittikunakorn', 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1'),
(NULL, '60010', NULL, NULL, '60010', NULL, 'รังสิมันตุ์', NULL, 'ไก่งาม', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1'),
(NULL, '61008', NULL, NULL, '61008', NULL, 'กรณ์ณภัทร', NULL, 'จตุพรเรืองรอง', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1'),
(NULL, '63002', NULL, NULL, '63002', NULL, 'ปัทมา', NULL, 'ประดับ', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1'),
(NULL, 'somsang', NULL, NULL, 'somsang', NULL, 'สมสงวน', NULL, 'อัษญคุณ', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
