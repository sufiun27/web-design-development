-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 11:11 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom`
--
CREATE DATABASE IF NOT EXISTS `classroom` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `classroom`;

-- --------------------------------------------------------

--
-- Table structure for table `extraclass`
--

CREATE TABLE `extraclass` (
  `Day` varchar(50) NOT NULL,
  `RoomNo` varchar(50) NOT NULL,
  `One` varchar(50) NOT NULL,
  `Two` varchar(50) NOT NULL,
  `Three` varchar(50) NOT NULL,
  `Four` varchar(50) NOT NULL,
  `Five` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extraclass`
--

INSERT INTO `extraclass` (`Day`, `RoomNo`, `One`, `Two`, `Three`, `Four`, `Five`) VALUES
('Saturday', 'dfsd', 'dsfsdf', 'sdfsd', 'sdfsdf', 'sdfsdf', 'sdfsd'),
('Sunday', 'ab01-101', 'cse-201', 'cse-202', 'cse-203', 'sdfsdf', 'cse-204'),
('Saturday', 'naim', 'matul', 'ada', 'ada', 'ada', 'ada'),
('Monday', 'ab01-101', 'cse-201', 'sdfsd', 'sdfsdf', 'matul', 'madarcod'),
('', 'rtyrtyrt', 'rtyrtyrt', 'ytryrt', 'rtyrty', 'rtyrty', 'ryryt'),
('Monday', 'ab01-101', 'naim', 'asda', 'asdas', 'asda', 'asda'),
('saturday', 'ab01-101', 'cse102', '', 'cse201', '', 'cse340'),
('saturday', 'ab01-101', 'cse102', '', 'cse201', '', 'cse340'),
('saturday', 'ab01-202', 'cse23123', 'NULL', 'cse456', 'eco-456', 'NUll'),
('saturday', 'ab01-202', 'cse23123', '', 'cse456', 'eco-456', ''),
('Saturday', 'ab01-101', 'cse-201', 'NULL', 'cse-203', 'NUll', 'sdfsd'),
('Saturday', 'ab01-101', 'cse-201', 'NULL', 'cse-203', 'NUll', 'sdfsd'),
('Saturday', 'ab01-101', 'cse-201', 'NULL', 'cse-203', 'NUll', 'sdfsd'),
('Saturday', 'ab01-101', 'cse-201', 'NULL', 'cse-203', 'NUll', 'sdfsd');
--
-- Database: `extraclass`
--
CREATE DATABASE IF NOT EXISTS `extraclass` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `extraclass`;

-- --------------------------------------------------------

--
-- Table structure for table `friday`
--

CREATE TABLE `friday` (
  `serial` int(11) NOT NULL,
  `ab_abNo` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `abNo` varchar(10) NOT NULL,
  `one` varchar(20) DEFAULT NULL,
  `two` varchar(20) DEFAULT NULL,
  `three` varchar(20) DEFAULT NULL,
  `four` varchar(20) DEFAULT NULL,
  `five` varchar(20) DEFAULT NULL,
  `six` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monday`
--

CREATE TABLE `monday` (
  `serial` int(11) NOT NULL,
  `ab_abNo` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `abNo` varchar(10) NOT NULL,
  `one` varchar(20) DEFAULT NULL,
  `two` varchar(20) DEFAULT NULL,
  `three` varchar(20) DEFAULT NULL,
  `four` varchar(20) DEFAULT NULL,
  `five` varchar(20) DEFAULT NULL,
  `six` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monday`
--

INSERT INTO `monday` (`serial`, `ab_abNo`, `day`, `ab`, `abNo`, `one`, `two`, `three`, `four`, `five`, `six`) VALUES
(6, 'AB01-204', 'Monday', 'AB01', '204', '', 'CSE214(PC-B)AB', 'CSE333(PC-B)TR', 'CSE214(PC-C)AB', 'CSE333(PC-A)TR', 'MAT211(PC-B)MAAM'),
(7, 'AB01-202', 'Monday', 'AB01', '202', 'OCCUPIED By GED', 'MAT131(PC-OLD)Merged', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP'),
(8, 'AB04-203', 'Monday', 'AB04', '203', '', 'ENG113(PC-A)SSQ', 'MAT111(PC-B)AAS', 'CSE322(PC-A)SA', 'GED131(PC-D)AI', 'CSE321(PC-B)ACC'),
(9, 'AB04-204', 'Monday', 'AB04', '204', 'CSE323(PC-A)SSH', 'CSE233(PC-D)SMP', 'CSE331(PC-A)SZ', 'CSE233(PC-C)SMP', 'CSE212(PC-A)DMR', 'CSE233(PC-B)SMP'),
(10, 'AB04-302', 'Monday', 'AB04', '302', 'CSE231(PC-G)MS', 'CSE132(PC-C)DB', 'CSE234(PC-A)MOT', 'MAT121(PC-A)NS', 'CSE212(PC-C)TNU', 'GED131(PC-J)AHA'),
(11, 'AB04-303', 'Monday', 'AB04', '303', 'GED131(PC-C)MSI', 'CSE235(PC-G)AAK', 'CSE417(PC-A)MMR', 'CSE131(PC-E)ZS', 'CSE412(PC-A)MMR', 'GED121(PC-B)NA'),
(12, 'AB04-304', 'Monday', 'AB04', '304', 'GED111(PC-A)AHA', 'CSE122(PC-B)ZS', 'CSE322(PC-B)NK', 'CSE235(PC-F)AAK', 'CSE235(PC-E)MS', 'CSE231(PC-E)MJA'),
(13, 'AB04-306', 'Monday', 'AB04', '306', 'ENG123(PC-A)AIR', 'CSE131(PC-D)FA', 'GED131(PC-I)AHA', 'CSE498(PC-A)MA', 'CSE234(PC-F)HR', 'CSE233(PC-G)SA'),
(14, 'AB04-514', 'Monday', 'AB04', '514', 'MAT211(PC-A)MAAM', 'CSE323(PC-B)HR', 'CSE450(PC-C)DMR', 'STA133(PC-C)AST', 'ACT301(PC-C)2 hours ', 'OCCUPIED'),
(15, 'AB04-515', 'Monday', 'AB04', '515', 'CSE221(PC-A)SMAH', 'GED131(PC-F)AI', 'CSE450(PC-A)SMAH', 'CSE134(PC-I)TK', 'CSE234(PC-D)MOT', 'CSE322(PC-C)NK'),
(16, 'AB01-302', 'Monday', 'AB01', '302', 'CSE332(PC-B)ZTS', 'CSE332(PC-B)ZTS', 'CSE332(PC-D)MUR', 'CSE332(PC-D)MUR', 'CSE324(PC-A)RKR', 'CSE324(PC-A)RKR'),
(17, 'AB01-303', 'Monday', 'AB01', '303', 'CSE321(PC-C)ACC', 'CSE334(PC-F)AAM', 'CSE314(PC-B)ACC', 'CSE314(PC-B)ACC', 'CSE312(PC-B)FI', 'CSE312(PC-B)FI'),
(18, 'AB01-304', 'Monday', 'AB01', '304', 'CSE232(PC-E)MJA', 'CSE232(PC-E)MJA', 'CSE135(PC-B)MRH', 'CSE135(PC-B)MRH', '', ''),
(19, 'AB01-306', 'Monday', 'AB01', '306', 'CSE232(PC-B)AAB', 'CSE232(PC-B)AAB', 'OCCUPIEDESDM', 'OCCUPIEDESDM', '', ''),
(20, 'AB01-307', 'Monday', 'AB01', '307', 'CSE222(PC-B)TK', 'CSE222(PC-B)TK', 'CSE122(PC-C)AZK', 'CSE235(PC-A)FA', 'CSE232(PC-C)SZ', 'CSE232(PC-C)SZ'),
(21, 'AB01-505', 'Monday', 'AB01', '505', '', '', '', '', '', ''),
(22, 'AB03-112', 'Monday', 'AB03', '112', '', '', '', '', '', ''),
(23, 'AB03-105', 'Monday', 'AB03', '105', 'CSE133(PC-C)MR', 'CSE133(PC-C)MR', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `saturday`
--

CREATE TABLE `saturday` (
  `serial` int(11) NOT NULL,
  `ab_abNo` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `abNo` varchar(10) NOT NULL,
  `one` varchar(50) DEFAULT NULL,
  `two` varchar(50) DEFAULT NULL,
  `three` varchar(50) DEFAULT NULL,
  `four` varchar(50) DEFAULT NULL,
  `five` varchar(50) DEFAULT NULL,
  `six` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saturday`
--

INSERT INTO `saturday` (`serial`, `ab_abNo`, `day`, `ab`, `abNo`, `one`, `two`, `three`, `four`, `five`, `six`) VALUES
(253, 'AB01-204', 'Saturday', 'AB01', '204', 'CSE134(PC-H)TK', 'CSE235(PC-B)FA', 'CSE321(PC-A)MRH', 'CSE221(PC-C)AB', 'MAT211(PC-B)MAAM', ''),
(254, 'AB04-202', 'Saturday', 'AB04', '202', 'OCCUPIED By GED', 'OCCUPIED By GED', 'OCCUPIED By GED', 'OCCUPIED By GED', 'OCCUPIED By GED', 'OCCUPIED By GED'),
(255, 'AB04-203', 'Saturday', 'AB04', '203', 'CSE224(PC-A)MAH', 'CSE231(PC-D)MJA', '', 'CSE231(PC-B)AAB', '', 'GED321(PC-C)SHA'),
(256, 'AB04-204', 'Saturday', 'AB04', '204', 'ENG113(PC-C)SSQ', 'GED201(PC-C)NA', 'GED321(PC-B)SHA', 'CSE233(PC-A)SSH', '', 'GED201(PC-B)NA'),
(257, 'AB04-220', 'Saturday', 'AB04', '220', 'OCUUPIED', 'CSE136(PC-B),(PC-E)&(PC-F)FF', 'OCCUPIED', 'CSE136(PC-A),(PC-C)&(PC-D)SJ', 'OCCUPIED', 'CSE136(PC-G),(PC-H)&(PC-I)AR'),
(258, 'AB04-302', 'Saturday', 'AB04', '302', 'ECO314(PC-B)MRI', 'CSE132(PC-G)FS', 'CSE112(PC-B)RKR', 'GED121(PC-C)NA', 'CSE131(PC-C)ACC', 'ECO314(PC-A)TSR'),
(259, 'AB04-303', 'Saturday', 'AB04', '303', 'CSE417(PC-A)MMR', '', 'CSE333(PC-C)ACC', 'CSE132(PC-H)FS', 'GED111(PC-C)AHA', 'CSE333(PC-F)SSH'),
(260, 'AB04-304', 'Saturday', 'AB04', '304', 'GED131(PC-I)AHA', '', 'GED131(PC-J)AHA', 'CSE224(PC-B)MAH', '', 'CSE134(PC-J)RKR'),
(261, 'AB04-306', 'Saturday', 'AB04', '306', 'OCUUPIED By SWE', 'OCUUPIED By SWE', 'OCUUPIED By SWE', 'OCUUPIED By SWE', 'OCUUPIED By SWE', 'OCUUPIED By SWE'),
(262, 'AB04-514', 'Saturday', 'AB04', '514', '', '', 'CSE333(PC-A)TR', 'CSE231(PC-E)MJA', '', 'CSE231(PC-A)AAB'),
(263, 'AB04-515', 'Saturday', 'AB04', '515', '', 'CSE221(PC-A)SMAH', 'CSE234(PC-A)MOT', '', 'CSE234(PC-B)MOT', ''),
(264, 'AB01-302', 'Saturday', 'AB01', '302', 'OCCUPIED', 'CSE214(PC-A)  [N.B: Class starts at 09:30 AM]ZH', 'CSE214(PC-A)ZH', 'CSE235(PC-C)FA', 'CSE324(PC-B)SA', 'CSE324(PC-B)SA'),
(265, 'AB01-303', 'Saturday', 'AB01', '303', 'CSE334(PC-C)GGF', 'CSE334(PC-C)GGF', 'CSE413(PC-A)MMR', 'CSE413(PC-A)MMR', 'CSE311(PC-A)TR', ''),
(266, 'AB01-304', 'Saturday', 'AB01', '304', 'OCCUPIED', 'CSE122(PC-A) [N.B: Class starts at 09:30 AM]SRH', 'CSE123(PC-B)SRH', 'CSE123(PC-B)SRH', 'CSE122(PC-A)SRH', ''),
(267, 'AB01-306', 'Saturday', 'AB01', '306', 'OCCUPIED', 'CSE134(PC-A) &CSE135(PC-A) [N.B: Class starts at 0', 'CSE134(PC-A) &CSE135(PC-A)SAH', 'CSE112(PC-C)TK', '', ''),
(268, 'AB01-307', 'Saturday', 'AB01', '307', 'CSE134(PC-B)MRH', 'CSE214(PC-B)AB', 'CSE135(PC-G)FI', 'CSE135(PC-G)FI', '', ''),
(269, 'AB01-505', 'Saturday', 'AB01', '505', '', '', '', '', 'PHY114(PC-A)MZK', 'PHY114(PC-A)MZK'),
(270, 'AB03-112', 'Saturday', 'AB03', '112', 'CSE133(PC-J)AT', 'CSE133(PC-J)AT', '', '', '', ''),
(271, 'AB03-105', 'Saturday', 'AB03', '105', 'CSE133(PC-D)MR', 'CSE133(PC-D)MR', 'CSE133(PC-B)ABS', 'CSE133(PC-B)ABS', 'CSE133(PC-E)MR', 'CSE133(PC-E)MR');

-- --------------------------------------------------------

--
-- Table structure for table `sunday`
--

CREATE TABLE `sunday` (
  `serial` int(11) NOT NULL,
  `ab_abNo` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `abNo` varchar(10) NOT NULL,
  `one` varchar(20) DEFAULT NULL,
  `two` varchar(20) DEFAULT NULL,
  `three` varchar(20) DEFAULT NULL,
  `four` varchar(20) DEFAULT NULL,
  `five` varchar(20) DEFAULT NULL,
  `six` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sunday`
--

INSERT INTO `sunday` (`serial`, `ab_abNo`, `day`, `ab`, `abNo`, `one`, `two`, `three`, `four`, `five`, `six`) VALUES
(5, 'AB01-204', 'Sunday', 'AB01', '204', 'CSE131(PC-B)FA', 'CSE214(PC-C)AB', 'CSE131(PC-D)FA', 'CSE221(PC-C)AB', 'GED131(PC-G)AI', 'CSE323(PC-B)HR'),
(6, 'AB04-202', 'Sunday', 'AB04', '202', 'OCCUPIED BY GEDOCCUP', 'MAT131(PC-OLD)Merged', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP'),
(7, 'AB04-203', 'Sunday', 'AB04', '203', 'GED111(PC-A)AHA', 'CSE450(PC-C)DMR', 'CSE134(PC-E)SMP', 'CSE212(PC-A)DMR', 'CSE134(PC-D)MMR', 'CSE112(PC-B)RKR'),
(8, 'AB04-204', 'Sunday', 'AB04', '204', 'GED201(PC-A)NA', 'MAT211(PC-A)MAAM', 'CSE134(PC-G)FI', 'GED201(PC-B)NA', 'CSE134(PC-F)FI', 'GED321(PC-A)MSI'),
(9, 'AB04-220', 'Sunday', 'AB04', '220', 'OCCUPIEDOCCUPIED', 'OCCUPIEDOCCUPIED', 'OCCUPIEDOCCUPIED', 'OCCUPIEDOCCUPIED', 'OCCUPIEDOCCUPIED', 'CSE124(PC-A),(PC-B)&'),
(10, 'AB04-302', 'Sunday', 'AB04', '302', '', 'MAT111(PC-A)AAS', 'CSE412(PC-A)MMR', 'CSE333(PC-E)SSH', 'CSE234(PC-C)MOT', 'CSE333(PC-F)SSH'),
(11, 'AB04-303', 'Sunday', 'AB04', '303', 'CSE233(PC-G)SA', 'GED131(PC-F)AI', 'CSE131(PC-A)MOT', 'CSE231(PC-B)AAB', 'ACT301(PC-B)2 hours ', 'OCCUPIED'),
(12, 'AB04-304', 'Sunday', 'AB04', '304', 'MAT121(PC-B)NS', 'CSE321(PC-B)ACC', 'GED111(PC-B)AHA', 'GED131(PC-B)MSI', 'CSE122(PC-OLD)(PC-Re', 'CSE224(PC-C)MMJ'),
(13, 'AB04-306', 'Sunday', 'AB04', '306', 'CSE224(PC-A)MAH', '', 'CSE498(PC-B)MA', 'ENG123(PC-B)AIR', 'CSE433(PC-A)ZTS', 'CSE331(PC-E)MUR'),
(14, 'AB04-514', 'Sunday', 'AB04', '514', '', 'CSE331(PC-F)MUR', 'CSE234(PC-G)HR', 'CSE235(PC-E)MS', 'CSE498(PC-C)ACC', 'ECO314(PC-B)MRI'),
(15, 'AB04-515', 'Sunday', 'AB04', '515', 'CSE221(PC-B)SMAH', 'ENG113(PC-B)SSQ', 'CSE450(PC-A)SMAH', 'CSE331(PC-D)MUR', 'CSE450(PC-B)SMAH', 'CSE131(PC-G)AZK'),
(16, 'AB01-302', 'Sunday', 'AB01', '302', 'CSE313(PC-B)FTJ', 'CSE232(PC-D)MJA', 'CSE232(PC-D)MJA', '', 'CSE311(PC-B)TR', ''),
(17, 'AB01-303', 'Sunday', 'AB01', '303', 'CSE332(PC-C)ZTS', 'CSE332(PC-C)ZTS', 'CSE314(PC-A)FTJ', 'CSE314(PC-A)FTJ', 'CSE334(PC-A)MJA', 'CSE334(PC-D)AAM'),
(18, 'AB01-304', 'Sunday', 'AB01', '304', 'CSE232(PC-A)AAB', 'CSE232(PC-A)AAB', 'CSE135(PC-C)MRH', 'CSE135(PC-C)MRH', 'CSE132(PC-OLD)DB', ''),
(19, 'AB01-306', 'Sunday', 'AB01', '306', 'CSE135(PC-J)RKR', 'CSE135(PC-J)RKR', 'CSE123(PC-C)AZK', 'CSE123(PC-C)AZK', 'CSE234(PC-F)HR', 'CSE131(PC-F)ZS'),
(20, 'AB01-307', 'Sunday', 'AB01', '307', 'CSE135(PC-H)TK', 'CSE135(PC-H)TK', 'CSE333(PC-B)TR', 'CSE414(PC-A)TK', 'CSE135(PC-E)SMP', 'CSE135(PC-E)SMP'),
(21, 'AB01-505', 'Sunday', 'AB01', '505', '', '', '', '', '', ''),
(22, 'AB03-105', 'Sunday', 'AB03', '105', 'CSE133(PC-A)SC', 'CSE133(PC-A)SC', 'CSE133(PC-OLD)FR', 'CSE133(PC-OLD)FR', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `thursday`
--

CREATE TABLE `thursday` (
  `serial` int(11) NOT NULL,
  `ab_abNo` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `abNo` varchar(10) NOT NULL,
  `one` varchar(20) DEFAULT NULL,
  `two` varchar(20) DEFAULT NULL,
  `three` varchar(20) DEFAULT NULL,
  `four` varchar(20) DEFAULT NULL,
  `five` varchar(20) DEFAULT NULL,
  `six` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thursday`
--

INSERT INTO `thursday` (`serial`, `ab_abNo`, `day`, `ab`, `abNo`, `one`, `two`, `three`, `four`, `five`, `six`) VALUES
(6, 'AB01-204', 'Thursday', 'AB01', '204', 'GED131(PC-A)MSI', 'MAT211(PC-C)MAAM', 'CSE224(PC-C)MMJ', 'CSE313(PC-A)FTJ', '', 'CSE224(PC-B)MAH'),
(7, 'AB04-202', 'Thursday', 'AB04', '202', 'MAT121(PC-A)NS', 'CSE234(PC-E)HR', 'CSE131(PC-J)NK', 'CSE433(PC-B)ZTS', 'CSE131(PC-I)NK', 'CSE235(PC-D)MS'),
(8, 'AB04-203', 'Thursday', 'AB04', '203', 'STA133(PC-C)AST', 'CSE331(PC-E)MUR', 'PHY113(PC-C)SSK', 'CSE331(PC-F)MUR', 'PHY113(PC-A)SSK', 'CSE331(PC-B)ZTS'),
(9, 'AB04-204', 'Thursday', 'AB04', '204', 'CSE131(PC-H)NK', 'CSE433(PC-A)ZTS', 'GED201(PC-A)NA', 'GED131(PC-H)AI', 'ACT301(PC-F)2 hours ', 'OCCUPIED'),
(10, 'AB04-302', 'Thursday', 'AB04', '302', 'CSE131(PC-F)ZS', 'ACT301(PC-A)2 hours ', 'OCCUPIEDOCCUPIED', 'ENG123(PC-B)AIR', '', ''),
(11, 'AB04-303', 'Thursday', 'AB04', '303', 'PHY113(PC-B)SSK', 'ENG123(PC-C)MRU', 'MAT121(PC-C)NS', 'CSE122(PC-C)AZK', 'CSE498(PC-A)MA', 'CSE132(PC-I)AT'),
(12, 'AB04-306', 'Thursday', 'AB04', '306', 'GED201(PC-C)NA', 'CSE231(PC-F)MS', 'STA133(PC-A)AST', '', 'OCCUPIED By SWE', ''),
(13, 'AB04-514', 'Thursday', 'AB04', '514', 'GED131(PC-G)AI', 'CSE132(PC-F)AAI', 'CSE231(PC-C)SZ', 'GED131(PC-B)MSI', 'CSE132(PC-B)HMSS', ''),
(14, 'AB04-519', 'Thursday', 'AB04', '519', '', '', '', 'CSE122(PC-OLD)(PC-Re', '', ''),
(15, 'AB01-302', 'Thursday', 'AB01', '302', 'CSE422(PC-B)AZK', 'CSE422(PC-B)AZK', 'CSE423(PC-B)TNU', 'CSE324(PC-C)SMP', 'CSE324(PC-C)SMP', ''),
(16, 'AB01-303', 'Thursday', 'AB01', '303', '', 'CSE334(PC-D)AAM', 'CSE498(PC-B)MA', 'CSE334(PC-E)AAM', '', ''),
(17, 'AB01-304', 'Thursday', 'AB01', '304', 'CSE332(PC-F)SMP', 'CSE332(PC-F)SMP', 'CSE123(PC-A)TR', 'CSE123(PC-A)TR', '', ''),
(18, 'AB01-306', 'Thursday', 'AB01', '306', 'CSE323(PC-C)SZ', '', 'CSE331(PC-C)AAK', 'CSE233(PC-E)MS', '', ''),
(19, 'AB01-307', 'Thursday', 'AB01', '307', 'CSE423(PC-A)TNU', '', 'CSE232(PC-G)ZS', 'CSE232(PC-G)ZS', '', ''),
(20, 'AB01-505', 'Thursday', 'AB01', '505', '', '', '', '', 'PHY114(PC-B)KH', 'PHY114(PC-B)KH'),
(21, 'AB03-112', 'Thursday', 'AB03', '112', '', '', '', '', '', ''),
(22, 'AB03-105', 'Thursday', 'AB03', '105', 'CSE213(PC-A)FTJ', 'CSE213(PC-A)FTJ', 'CSE133(PC-F)DB', 'CSE133(PC-F)DB', 'CSE133(PC-G)AAI', 'CSE133(PC-G)AAI');

-- --------------------------------------------------------

--
-- Table structure for table `tuesday`
--

CREATE TABLE `tuesday` (
  `serial` int(11) NOT NULL,
  `ab_abNo` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `abNo` varchar(10) NOT NULL,
  `one` varchar(20) DEFAULT NULL,
  `two` varchar(20) DEFAULT NULL,
  `three` varchar(20) DEFAULT NULL,
  `four` varchar(20) DEFAULT NULL,
  `five` varchar(20) DEFAULT NULL,
  `six` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuesday`
--

INSERT INTO `tuesday` (`serial`, `ab_abNo`, `day`, `ab`, `abNo`, `one`, `two`, `three`, `four`, `five`, `six`) VALUES
(4, 'AB01-204', 'Tuesday', 'AB01', '204', 'CSE134(PC-B)MRH', 'CSE313(PC-A)FTJ', 'CSE134(PC-I)TK', 'CSE421(PC-A)MIJ', 'CSE421(PC-A)MIJ', 'MAT111(PC-C)AKP'),
(5, 'AB04-202', 'Tuesday', 'AB04', '202', 'MAT131(PC-OLD)Merged', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP'),
(6, 'AB04-203', 'Tuesday', 'AB04', '203', 'CSE235(PC-G)AAK', 'CSE233(PC-A)SSH', 'CSE134(PC-G)FI', 'CSE132(PC-A)HMSS', 'ACT301(PC-D)2 hours ', 'OCCUPIED'),
(7, 'AB04-204', 'Tuesday', 'AB04', '204', 'PHY113(PC-C)SSK', 'CSE131(PC-H)NK', 'CSE131(PC-C)ACC', 'GED321(PC-A)MSI', 'CSE323(PC-A)SSH', 'GED121(PC-C)NA'),
(8, 'AB04-302', 'Tuesday', 'AB04', '302', 'CSE231(PC-A)AAB', 'GED131(PC-C)MSI', 'CSE131(PC-J)NK', 'CSE331(PC-C)AAK', 'CSE131(PC-I)NK', 'MAT121(PC-B)NS'),
(9, 'AB04-303', 'Tuesday', 'AB04', '303', 'CSE131(PC-G)AZK', 'CSE132(PC-E)AAI', 'CSE235(PC-A)FA', 'CSE122(PC-B)ZS', 'CSE235(PC-C)FA', 'GED131(PC-E)AI'),
(10, 'AB04-304', 'Tuesday', 'AB04', '304', 'CSE233(PC-D)SMP', 'ENG123(PC-A)AIR', 'CSE234(PC-C)MOT', 'CSE233(PC-B)SMP', 'PHY113(PC-B)SSK', 'STA133(PC-B)AST'),
(11, 'AB04-306', 'Tuesday', 'AB04', '306', 'GED131(PC-D)AI', 'CSE234(PC-G)HR', 'CSE421(PC-B)AZK', 'CSE233(PC-F)HR', 'CSE498(PC-C)ACC', 'ECO314(PC-A)TSR'),
(12, 'AB04-514', 'Tuesday', 'AB04', '514', 'CSE423(PC-B)TNU', 'MAT211(PC-C)MAAM', 'PHY113(PC-A)SSK', 'CSE333(PC-D)FTJ', 'CSE231(PC-F)MS', ''),
(13, 'AB04-515', 'Tuesday', 'AB04', '515', 'CSE221(PC-B)SMAH', 'ENG113(PC-B)SSQ', 'CSE321(PC-A)MRH', 'GED121(PC-A)NA', 'CSE234(PC-B)MOT', 'CSE132(PC-D)DB'),
(14, 'AB01-302', 'Tuesday', 'AB01', '302', 'CSE215(PC-A)TR', 'CSE215(PC-A)TR', 'CSE332(PC-E)MUR', 'CSE332(PC-E)MUR', 'CSE134(PC-F)FI', ''),
(15, 'AB01-303', 'Tuesday', 'AB01', '303', 'CSE334(PC-B)MJA', 'CSE332(PC-A)SZ', 'CSE332(PC-A)SZ', 'CSE231(PC-D)MJA', 'CSE215(PC-C)AB', 'CSE215(PC-C)AB'),
(16, 'AB01-304', 'Tuesday', 'AB01', '304', 'CSE414(PC-A)TK', 'CSE215(PC-B)AB', 'CSE215(PC-B)AB', 'CSE312(PC-A)TR', 'CSE312(PC-A)TR', ''),
(17, 'AB01-306', 'Tuesday', 'AB01', '306', 'CSE235(PC-B)FA', 'CSE235(PC-D)MS', 'CSE415(PC-A)ZTS', 'CSE415(PC-A)ZTS', 'CSE112(PC-C)TK', ''),
(18, 'AB01-307', 'Tuesday', 'AB01', '307', 'CSE112(PC-A)MIJ', 'CSE112(PC-A)MIJ', 'CSE135(PC-D)MMR', 'CSE135(PC-D)MMR', 'CSE134(PC-C)MRH', ''),
(19, 'AB01-505', 'Tuesday', 'AB01', '505', '', '', 'PHY114(PC-C)KH', 'PHY114(PC-C)KH', '', ''),
(20, 'AB03-112', 'Tuesday', 'AB03', '112', '', '', 'CSE225(PC-B)MRA', 'CSE225(PC-B)MRA', '', ''),
(21, 'AB03-105', 'Tuesday', 'AB03', '105', 'CSE225(PC-C)MRA', 'CSE225(PC-C)ABS', 'CSE225(PC-A)SFR', 'CSE225(PC-A)SFR', 'CSE133(PC-H)FR', 'CSE133(PC-H)FR');

-- --------------------------------------------------------

--
-- Table structure for table `wednesday`
--

CREATE TABLE `wednesday` (
  `serial` int(11) NOT NULL,
  `ab_abNo` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `abNo` varchar(10) NOT NULL,
  `one` varchar(20) DEFAULT NULL,
  `two` varchar(20) DEFAULT NULL,
  `three` varchar(20) DEFAULT NULL,
  `four` varchar(20) DEFAULT NULL,
  `five` varchar(20) DEFAULT NULL,
  `six` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wednesday`
--

INSERT INTO `wednesday` (`serial`, `ab_abNo`, `day`, `ab`, `abNo`, `one`, `two`, `three`, `four`, `five`, `six`) VALUES
(5, 'AB01-204', 'Wednesday', 'AB01', '204', 'ENG123(PC-C)MRU', 'CSE131(PC-B)FA', 'CSE134(PC-C)MRH', 'CSE134(PC-H)TK', 'CSE311(PC-B)TR', ''),
(6, 'AB04-202', 'Wednesday', 'AB04', '202', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP', 'OCCUPIED By GEDOCCUP'),
(7, 'AB04-203', 'Wednesday', 'AB04', '203', 'CSE132(PC-J)AT', 'GED111(PC-B)AHA', 'MAT111(PC-C)AKP', 'CSE322(PC-A)SA', 'GED131(PC-H)AI', 'CSE421(PC-B)AZK'),
(8, 'AB04-204', 'Wednesday', 'AB04', '204', 'CSE423(PC-A)TNU', 'GED121(PC-A)NA', 'CSE212(PC-C)TNU', 'CSE235(PC-F)AAK', 'STA133(PC-A)AST', 'CSE233(PC-E)MS'),
(9, 'AB04-302', 'Wednesday', 'AB04', '302', 'GED131(PC-E)AI', 'ENG113(PC-A)SSQ', 'CSE134(PC-E)SMP', '', 'GED111(PC-C)AHA', 'CSE322(PC-B)NK'),
(10, 'AB04-304', 'Wednesday', 'AB04', '304', 'CSE323(PC-C)SZ', 'GED321(PC-C)SHA', 'CSE322(PC-C)NK', 'GED321(PC-B)SHA', 'CSE231(PC-C)SZ', 'CSE134(PC-J)RKR'),
(11, 'AB04-303', 'Wednesday', 'AB04', '303', 'CSE331(PC-B)ZTS', '', 'CSE433(PC-B)ZTS', 'CSE234(PC-D)MOT', 'GED121(PC-B)NA', 'MAT121(PC-C)NS'),
(12, 'AB04-306', 'Wednesday', 'AB04', '306', 'CSE231(PC-G)MS', 'CSE234(PC-E)HR', 'MAT111(PC-A)AAS', 'CSE134(PC-D)MMR', 'CSE233(PC-F)HR', 'GED131(PC-A)MSI'),
(13, 'AB04-513', 'Wednesday', 'AB04', '513', 'OCCUPIED BY GED', 'MAT131(PC-OLD)Merged', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP', 'OCCUPIED BY GEDOCCUP'),
(14, 'AB04-514', 'Wednesday', 'AB04', '514', 'CSE333(PC-E)SSH', 'CSE333(PC-D)FTJ', 'CSE333(PC-C)ACC', 'CSE313(PC-B)FTJ', 'ACT301(PC-E)2 hours ', 'OCCUPIED'),
(15, 'AB04-515', 'Wednesday', 'AB04', '515', 'STA133(PC-B)AST', 'CSE131(PC-A)MOT', 'CSE331(PC-A)SZ', 'CSE450(PC-B)SMAH', 'MAT111(PC-B)AAS', 'CSE321(PC-C)ACC'),
(16, 'AB01-302', 'Wednesday', 'AB01', '302', 'CSE232(PC-F)ZS', 'CSE232(PC-F)ZS', 'CSE422(PC-A)AZK', 'CSE422(PC-A)AZK', 'CSE135(PC-F)MRH', 'CSE135(PC-F)MRH'),
(17, 'AB01-303', 'Wednesday', 'AB01', '303', 'CSE132(PC-OLD)DB', 'CSE334(PC-B)MJA', 'CSE311(PC-A)TR', 'CSE334(PC-E)AAM', 'CSE334(PC-A)MJA', 'CSE334(PC-F)AAM'),
(18, 'AB01-304', 'Wednesday', 'AB01', '304', 'CSE222(PC-A)SMAH', 'CSE222(PC-A)SMAH', 'CSE222(PC-C)AB', 'CSE222(PC-C)AB', 'OCCUPIED', 'ENG113(PC-C)SSQ'),
(19, 'AB01-306', 'Wednesday', 'AB01', '306', 'CSE135(PC-I)TK', 'CSE135(PC-I)TK', 'OCCUPIEDESDM', 'OCCUPIEDESDM', 'CSE331(PC-D)MUR', 'CSE233(PC-C)SMP'),
(20, 'AB01-307', 'Wednesday', 'AB01', '307', '', 'CSE418(PC-A)MMR', 'CSE418(PC-A)MMR', 'CSE131(PC-E)ZS', '', ''),
(21, 'AB01-505', 'Wednesday', 'AB01', '505', '', '', '', '', '', ''),
(22, 'AB03-105', 'Wednesday', 'AB03', '105', 'CSE213(PC-B)AAK', 'CSE213(PC-B)AAK', 'CSE133(PC-I)AT', 'CSE133(PC-I)AT', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friday`
--
ALTER TABLE `friday`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `ab_abNo` (`ab_abNo`);

--
-- Indexes for table `monday`
--
ALTER TABLE `monday`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `ab_abNo` (`ab_abNo`);

--
-- Indexes for table `saturday`
--
ALTER TABLE `saturday`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `ab_abNo` (`ab_abNo`),
  ADD UNIQUE KEY `ab_abNo_2` (`ab_abNo`);

--
-- Indexes for table `sunday`
--
ALTER TABLE `sunday`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `ab_abNo` (`ab_abNo`);

--
-- Indexes for table `thursday`
--
ALTER TABLE `thursday`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `ab_abNo` (`ab_abNo`);

--
-- Indexes for table `tuesday`
--
ALTER TABLE `tuesday`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `ab_abNo` (`ab_abNo`);

--
-- Indexes for table `wednesday`
--
ALTER TABLE `wednesday`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `ab_abNo` (`ab_abNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friday`
--
ALTER TABLE `friday`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `monday`
--
ALTER TABLE `monday`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `saturday`
--
ALTER TABLE `saturday`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `sunday`
--
ALTER TABLE `sunday`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `thursday`
--
ALTER TABLE `thursday`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tuesday`
--
ALTER TABLE `tuesday`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wednesday`
--
ALTER TABLE `wednesday`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'admin'),
(3, 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"extraclass\",\"table\":\"friday\"},{\"db\":\"extraclass\",\"table\":\"tuesday\"},{\"db\":\"extraclass\",\"table\":\"wednesday\"},{\"db\":\"extraclass\",\"table\":\"thursday\"},{\"db\":\"extraclass\",\"table\":\"monday\"},{\"db\":\"extraclass\",\"table\":\"sunday\"},{\"db\":\"extraclass\",\"table\":\"saturday\"},{\"db\":\"login\",\"table\":\"users\"},{\"db\":\"extraclass\",\"table\":\"freerooms\"},{\"db\":\"projecttwo\",\"table\":\"test\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'projecttwo', 'test', '{\"sorted_col\":\"`test`.`id` ASC\"}', '2019-10-01 11:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-22 09:10:50', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `projectone`
--
CREATE DATABASE IF NOT EXISTS `projectone` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projectone`;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `No` int(50) NOT NULL,
  `Day` varchar(50) NOT NULL,
  `RoomNo` varchar(50) NOT NULL,
  `9am-10am` varchar(50) NOT NULL,
  `10am-11am` varchar(50) NOT NULL,
  `11am-12pm` varchar(50) NOT NULL,
  `12pm-1pm` varchar(50) NOT NULL,
  `1pm-2pm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`No`, `Day`, `RoomNo`, `9am-10am`, `10am-11am`, `11am-12pm`, `12pm-1pm`, `1pm-2pm`) VALUES
(1, 'Saturday', 'AB01-101', 'CSE-101', '', 'CSE-102', '', 'CSE-103'),
(3, 'Saturday', 'AB01-102', '', 'EEE-101', '', 'CSE-104', ''),
(4, 'Saturday', 'AB01-103', 'PHY-101', '', 'CHE-105', 'BIO-101', ''),
(5, 'Saturday', 'AB01-104', '', 'CHE-106', '', 'MAT-101', 'CSE-107'),
(6, 'Saturday', 'AB01-105', 'ZOL-101', '', 'BIO-102', 'ALG-101', ''),
(7, 'Saturday', 'AB01-106', 'CSE-108', '', 'ART-101', '', ''),
(8, 'Saturday', 'AB01-107', '', 'CHE-109', '', 'DAT-101', 'OBJ-101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `No` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `projecttwo`
--
CREATE DATABASE IF NOT EXISTS `projecttwo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projecttwo`;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `day` varchar(50) DEFAULT NULL,
  `roomno` varchar(50) DEFAULT NULL,
  `Time_9am_10am` varchar(50) DEFAULT NULL,
  `Time_10am_11am` varchar(50) DEFAULT NULL,
  `Time_11am_12pm` varchar(50) DEFAULT NULL,
  `Time_12pm_1pm` varchar(50) DEFAULT NULL,
  `Time_1pm_2pm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `day`, `roomno`, `Time_9am_10am`, `Time_10am_11am`, `Time_11am_12pm`, `Time_12pm_1pm`, `Time_1pm_2pm`) VALUES
(1, NULL, 'AB01-101', 'CSE101', NULL, 'CHE-102', NULL, 'CHE-103'),
(2, 'Saterday', 'AB01-101', 'CSE101', NULL, 'CSE-102', NULL, 'CHE-103'),
(3, 'Saterday', 'AB01-101', 'CSE101', NULL, 'CSE-102', NULL, 'CHE-103'),
(4, 'Saturday', 'AB01-102', NULL, 'EEE-101', NULL, 'CSE-104', NULL),
(5, 'Saturday', 'AB01-103', 'PHY-101', NULL, 'CHE-105', 'BIO-101', NULL),
(6, 'Saturday', 'AB01-104', NULL, 'CHE-106', NULL, 'MAT-101', 'CSE-107'),
(7, 'Saturday', 'AB01-105', 'ZOL-101', NULL, 'BIO-102', 'ALG-101', NULL),
(8, 'Saturday', 'AB01-106', 'CSE-108', NULL, 'ART-101', NULL, NULL),
(9, 'Saturday', 'AB01-107', NULL, 'CHE-109', NULL, 'DAT-101', 'OBJ-101'),
(10, '', 'AB01-108', 'CHE-109', '', 'CHE-110', '', 'CHE-111'),
(11, '', 'AB01-109', 'CHE-109', 'NULL', 'CHE-110', 'NULL', 'CHE-111'),
(22, '', 'ab01-110', 'cse-201', '', '', '', 'cse-204'),
(23, '', 'ab01-101', 'cse-201', 'cse-202', '', 'sdfsdf', 'cse-204'),
(24, '', 'ab01-101', 'cse-201', 'cse-202', '', 'sdfsdf', 'cse-204'),
(25, 'Monday', 'ab01-101', 'cse-201', 'cse-202', '', 'sdfsdf', 'cse-204'),
(29, 'Friday', 'ab01-101', 'dsfsdf', 'NULL', 'sdfsdf', 'matul', 'ada'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Friday', 'AB01-208', '', 'cse-202', 'cse-203', '', 'cse-204'),
(34, 'Friday', 'AB01-203', '', 'sdfsd', '', 'sdfsdf', 'sdfsd'),
(35, 'Wednesday', 'ab01-101', '', 'cse-202', '', 'rtyrty', ''),
(36, 'Tuesday', 'AB01-108', 'kamkorce;', '', '', '', ''),
(37, 'Tuesday', 'naim', 'anonymous', '', '', '', ''),
(38, 'Wednesday', 'AB04-108', 'NULL', '', '', '', ''),
(39, 'Sunday', 'naim', 'dsfsdf', '', '', '', ''),
(40, 'Wednesday', 'ab01-1015', NULL, '', '', '', ''),
(41, 'Thursday', 'AB01-108', 'cse-201', '', '', 'cse-201', ''),
(42, 'Wednesday', 'AB01-303', 'cse-201', '', '', '', 'cse-204');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`) VALUES
('abu_sufiun-1672'),
('naim'),
('abusufiun721998@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
