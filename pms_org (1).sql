-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2024 at 05:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms_org`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment_list`
--

CREATE TABLE `equipment_list` (
  `id` int(100) NOT NULL,
  `vaccine_accept` int(255) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `date_time` date NOT NULL DEFAULT current_timestamp(),
  `vaccine_used` int(255) NOT NULL,
  `vaccine_return` int(255) NOT NULL,
  `red_capsule_accept` int(255) NOT NULL,
  `red_capsule_used` int(255) NOT NULL,
  `red_capsule_return` int(255) NOT NULL,
  `blue_capsule_accept` int(255) NOT NULL,
  `blue_capsule_used` int(255) NOT NULL,
  `blue_capsule_return` int(255) NOT NULL,
  `supervisor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment_list`
--

INSERT INTO `equipment_list` (`id`, `vaccine_accept`, `sheet_code`, `date_time`, `vaccine_used`, `vaccine_return`, `red_capsule_accept`, `red_capsule_used`, `red_capsule_return`, `blue_capsule_accept`, `blue_capsule_used`, `blue_capsule_return`, `supervisor`) VALUES
(2, 2, '43730', '2023-12-21', 4, 5, 4, 8, 10, 6, 7, 9, 'usama asad'),
(3, 2, '43730', '2023-12-21', 4, 5, 4, 8, 10, 6, 7, 9, 'usama asad');

-- --------------------------------------------------------

--
-- Table structure for table `housechalking_data`
--

CREATE TABLE `housechalking_data` (
  `id` int(100) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housechalking_data`
--

INSERT INTO `housechalking_data` (`id`, `sheet_code`, `campaign_name`, `user`, `date_time`, `date`) VALUES
(4, '15296', 'Obr November', 'fahad@gmail.com', '2023-12-21 13:44:56.957682', '2023-12-22'),
(5, '69799', 'Obr october', 'fahad@gmail.com', '2023-12-21 13:57:55.019736', '2023-12-20'),
(0, '24587', 'NIDDD', 'admin@ppep.com', '2024-03-17 11:32:28.734489', '2024-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `housechalking_entry`
--

CREATE TABLE `housechalking_entry` (
  `id` int(11) NOT NULL,
  `sheet_code` varchar(255) DEFAULT NULL,
  `house_no` int(11) DEFAULT NULL,
  `epi` varchar(255) DEFAULT NULL,
  `team_no` varchar(255) DEFAULT NULL,
  `total_children` int(11) DEFAULT NULL,
  `guest_children` varchar(255) DEFAULT NULL,
  `outcome` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housechalking_entry`
--

INSERT INTO `housechalking_entry` (`id`, `sheet_code`, `house_no`, `epi`, `team_no`, `total_children`, `guest_children`, `outcome`, `date`) VALUES
(1, '24587', 766, 'epi epi', '19', 100, '10', '45', '2024-03-29'),
(2, '24587', 766, 'epi epi', '19', 100, '10', '45', '2024-03-29'),
(3, '24587', 766, 'epi epi', '19', 100, '10', '45', '2024-03-29'),
(4, '24587', 766, 'epi epi', '19', 100, '10', '45', '2024-03-29'),
(5, '24587', 766, 'epi epi', '19', 100, '10', '45', '2024-03-29'),
(6, '24587', 766, 'epi epi', '19', 100, '10', '45', '2024-03-29'),
(7, '24587', 766, 'epi epi', '19', 100, '10', '45', '2024-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `immediate_fever_weakness_list`
--

CREATE TABLE `immediate_fever_weakness_list` (
  `id` int(100) NOT NULL,
  `house_no` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `weakness_start` varchar(255) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `immediate_fever_weakness_list`
--

INSERT INTO `immediate_fever_weakness_list` (`id`, `house_no`, `name`, `age`, `father_name`, `address`, `mobile_no`, `sheet_code`, `weakness_start`, `date_time`) VALUES
(4, 12, '', 2, 'usama khan', '11 H block pechs karachi', 2023, '43730', '1 month', '2023-12-21 13:42:55.310276'),
(5, 12, 'sabir khan', 2, 'usama khan', '11 H block pechs karachi', 2023, '43730', '1 month', '2023-12-21 13:43:07.769021');

-- --------------------------------------------------------

--
-- Table structure for table `lockhouse_data`
--

CREATE TABLE `lockhouse_data` (
  `id` int(100) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lockhouse_data`
--

INSERT INTO `lockhouse_data` (`id`, `sheet_code`, `campaign_name`, `user`, `date_time`, `date`) VALUES
(4, '15296', 'Obr November', 'fahad@gmail.com', '2023-12-21 13:44:56.957682', '2023-12-22'),
(5, '69799', 'Obr october', 'fahad@gmail.com', '2023-12-21 13:57:55.019736', '2023-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `lockhouse_entry`
--

CREATE TABLE `lockhouse_entry` (
  `id` int(100) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `user` int(100) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `validation_date` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `house_no` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `arrival_date` date NOT NULL,
  `vacination_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lockhouse_entry`
--

INSERT INTO `lockhouse_entry` (`id`, `sheet_code`, `user`, `campaign_name`, `validation_date`, `date_time`, `house_no`, `name`, `age`, `father_name`, `address`, `reason`, `arrival_date`, `vacination_date`) VALUES
(3, '15296', 0, '', '2023-12-24', '2023-12-21 13:52:04.592526', 12, 'sabir khan', 2, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-16', '2023-12-23'),
(4, '15296', 0, '', '2023-12-24', '2023-12-21 13:52:24.080324', 12, 'shahbaz khan', 2, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-16', '2023-12-23'),
(5, '15296', 0, '', '2023-12-24', '2023-12-21 13:52:34.919467', 12, 'fahad khan', 2, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-16', '2023-12-23'),
(6, '15296', 0, '', '2023-12-24', '2023-12-21 13:53:05.414547', 12, 'nawaz shan', 2, 'fahad mughal', '11 H block pechs karachi', 'Na', '2023-12-16', '2023-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `microplan_data`
--

CREATE TABLE `microplan_data` (
  `id` int(11) NOT NULL,
  `sheet_code` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `microplan_data`
--

INSERT INTO `microplan_data` (`id`, `sheet_code`, `date`, `about`, `photo`) VALUES
(3, 52581, '2024-03-17', 'NIDD Plan', 'upload/uVdizx.jpg'),
(4, 20280, '2024-03-17', 'NIDD Plan 2', 'upload/uVdizx.jpg'),
(5, 43900, '2024-03-17', 'NIDD Plan 2', 'upload/uVdizx.jpg'),
(6, 95868, '2024-03-17', 'NIDD Plan 2', 'upload/uVdizx.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nar_list_data`
--

CREATE TABLE `nar_list_data` (
  `id` int(100) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `sheet_name` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nar_list_data`
--

INSERT INTO `nar_list_data` (`id`, `sheet_code`, `sheet_name`, `user`, `date_time`, `date`) VALUES
(6, '43730', 'obr novemeber', 'ramsha@gmail.com', '2023-12-21 11:45:35.417132', '2023-12-15'),
(7, '43730', 'obr |october', 'ramsha@gmail.com', '2023-12-21 11:45:38.010164', '2023-12-15'),
(8, '43730', 'obr septemeber', 'ramsha@gmail.com', '2023-12-21 11:45:39.071567', '2023-12-15'),
(9, '43730', 'obr auguest', 'ramsha@gmail.com', '2023-12-21 11:45:41.357604', '2023-12-15'),
(10, '43730', 'obr july', 'fahad@gmail.com', '2023-12-21 11:45:43.751865', '2023-12-15'),
(11, '43730', 'obr june', 'fahad@gmail.com', '2023-12-21 11:45:45.184216', '2023-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `nar_list_entry`
--

CREATE TABLE `nar_list_entry` (
  `id` int(100) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `house_no` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `arrival_date` date NOT NULL,
  `vacination_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nar_list_entry`
--

INSERT INTO `nar_list_entry` (`id`, `sheet_code`, `date_time`, `house_no`, `name`, `age`, `father_name`, `address`, `reason`, `arrival_date`, `vacination_date`) VALUES
(2, '43730', '2023-12-21 13:37:36.610264', 12, '', 0, '', '', '', '0000-00-00', '0000-00-00'),
(3, '43730', '2023-12-21 13:38:43.973624', 12, 'shahbaz khan', 1, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-21', '2023-12-30'),
(4, '43730', '2023-12-21 13:39:26.691347', 12, 'sabir khan', 2, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-21', '2023-12-30'),
(5, '43730', '2023-12-21 13:40:01.347521', 12, 'fahad khan', 2, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-21', '2023-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `nar_list_guest_entry`
--

CREATE TABLE `nar_list_guest_entry` (
  `id` int(100) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `house_no` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `arrival_date` date NOT NULL,
  `vacination_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nar_list_guest_entry`
--

INSERT INTO `nar_list_guest_entry` (`id`, `sheet_code`, `date_time`, `house_no`, `name`, `age`, `father_name`, `address`, `reason`, `arrival_date`, `vacination_date`) VALUES
(2, '43730', '2023-12-21 13:40:57.369998', 12, 'shahbaz khan', 2, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-20', '2023-12-21'),
(3, '43730', '2023-12-21 13:41:37.732307', 12, 'sabir khan', 2, 'usama khan', '11 H block pechs karachi', 'Na', '2023-12-20', '2023-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `public_data`
--

CREATE TABLE `public_data` (
  `id` int(50) NOT NULL,
  `p_code` int(50) NOT NULL,
  `user` varchar(225) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `whatsapp` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cnic` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `doi` varchar(20) NOT NULL,
  `profile` varchar(225) NOT NULL,
  `status` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `younger` varchar(50) NOT NULL,
  `elder` varchar(50) NOT NULL,
  `no_of_kids` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `entry_date` varchar(20) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `public_data`
--

INSERT INTO `public_data` (`id`, `p_code`, `user`, `fname`, `lname`, `email`, `phone`, `whatsapp`, `gender`, `cnic`, `dob`, `doi`, `profile`, `status`, `address`, `state`, `city`, `postal_code`, `younger`, `elder`, `no_of_kids`, `password`, `entry_date`) VALUES
(18, 514365, 'ramsha@gmail.com', 'shahbaz  ahmed', '', 'shahbaz762@gmail.com', '03102137999', '03102137999', 'male', '4220163693173', '2023-12-21', '2023-01-17', 'upload/', '', '11 H block pechs karachi', 'korangi', 'karachi', '24700', '3', '2', '5', '', '2023-12-21 11:25:07'),
(19, 744076, 'ramsha@gmail.com', 'usama asad', '', 'usamaasad762@gmail.com', '03102159994', '03102159994', 'male', '4220163698952', '2023-12-23', '2023-12-29', 'upload/', '', '11 H block pechs karachi', 'korangi', 'karachi', '24700', '3', '2', '5', '', '2023-12-21 11:26:40'),
(20, 321588, 'fahad@gmail.com', 'sabir karim', '', 'sabirkarim@gmail.com', '03102159884', '03102159884', 'male', '422016369258', '2023-12-05', '2023-12-26', 'upload/', '', '11 H block pechs karachi', 'korangi', 'karachi', '27480', '1', '1', '2', '', '2023-12-21 11:28:56'),
(21, 268120, 'fahad@gmail.com', 'akash sharma', '', 'akashsharma@gmail.com', '03102157894', '03102157894', 'male', '4220163694251', '2023-12-26', '2023-12-19', 'upload/', '', '11 H block pechs karachi', 'korangi', 'karachi', '45800', '1', '2', '3', '', '2023-12-21 11:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `public_member`
--

CREATE TABLE `public_member` (
  `id` int(50) NOT NULL,
  `p_code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date_time` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `public_member`
--

INSERT INTO `public_member` (`id`, `p_code`, `name`, `father_name`, `dob`, `age`, `gender`, `date_time`) VALUES
(13, '321588', 'ali karim', 'sabir karim', '2022-02-01', '5', 'male', 'current_timestamp()'),
(14, '321588', 'nawaz ahmed', 'sabir karim', '2022-01-01', '3', 'male', 'current_timestamp()'),
(15, '321588', 'muneer abbas', 'sabir karim', '2022-08-01', '3', 'male', 'current_timestamp()');

-- --------------------------------------------------------

--
-- Table structure for table `telesheet_data`
--

CREATE TABLE `telesheet_data` (
  `id` int(255) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `campaign_name` varchar(10) NOT NULL,
  `area` varchar(50) NOT NULL,
  `union_council` varchar(50) NOT NULL,
  `tehsil` varchar(50) NOT NULL,
  `district` varchar(10) NOT NULL,
  `team_no` int(2) NOT NULL,
  `member_1` varchar(50) NOT NULL,
  `member_2` varchar(50) NOT NULL,
  `supervisor` varchar(50) NOT NULL,
  `UCMO` varchar(50) NOT NULL,
  `snid` varchar(100) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `work_area_name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `first_house_head` varchar(50) NOT NULL,
  `last_house_head` varchar(50) NOT NULL,
  `guest_checkbox` varchar(100) NOT NULL,
  `street_checkbox` varchar(100) NOT NULL,
  `school_checkbox` varchar(100) NOT NULL,
  `no_of_house_kids_under_12_month` int(255) NOT NULL,
  `no_of_house_kids_12_month_to_59_months` int(255) NOT NULL,
  `no_of_vacinated_house_kids_under_12_month` int(255) NOT NULL,
  `no_of_vacinated_house_kids_12_month_to_59_months` int(255) NOT NULL,
  `vacinated_streets` int(255) NOT NULL,
  `vacinated_school` int(255) NOT NULL,
  `vacinated_guest` int(255) NOT NULL,
  `total_no_of_kids` int(255) NOT NULL,
  `total_no_of_vacinated_kids` int(255) NOT NULL,
  `supervisor_feedback` varchar(100) NOT NULL,
  `1st_visit_no_of_house` int(255) NOT NULL,
  `1st_visit_no_of_vacinated_kids` int(255) NOT NULL,
  `1st_visit_used_vaccine` int(255) NOT NULL,
  `1st_visit_no_of_unvacinated_kids` int(255) NOT NULL,
  `1st_visit_time` varchar(50) NOT NULL,
  `1st_visit_supervisor_helped` varchar(50) NOT NULL,
  `2nd_visit_no_of_house` int(255) NOT NULL,
  `2nd_visit_no_of_vacinated_kids` int(255) NOT NULL,
  `2nd_visit_used_vaccine` int(255) NOT NULL,
  `2nd_visit_no_of_unvacinated_kids` int(255) NOT NULL,
  `2nd_visit_time` varchar(50) NOT NULL,
  `2nd_visit_supervisor_helped` varchar(50) NOT NULL,
  `UCMO_visit_no_of_house` int(255) NOT NULL,
  `UCMO_visit_no_of_vacinated_kids` int(255) NOT NULL,
  `UCMO_visit_used_vaccine` int(255) NOT NULL,
  `UCMO_visit_no_of_unvacinated_kids` int(255) NOT NULL,
  `UCMO_visit_time` varchar(50) NOT NULL,
  `UCMO_helped` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telesheet_data`
--

INSERT INTO `telesheet_data` (`id`, `sheet_code`, `user`, `date_time`, `campaign_name`, `area`, `union_council`, `tehsil`, `district`, `team_no`, `member_1`, `member_2`, `supervisor`, `UCMO`, `snid`, `nid`, `work_area_name`, `date`, `first_house_head`, `last_house_head`, `guest_checkbox`, `street_checkbox`, `school_checkbox`, `no_of_house_kids_under_12_month`, `no_of_house_kids_12_month_to_59_months`, `no_of_vacinated_house_kids_under_12_month`, `no_of_vacinated_house_kids_12_month_to_59_months`, `vacinated_streets`, `vacinated_school`, `vacinated_guest`, `total_no_of_kids`, `total_no_of_vacinated_kids`, `supervisor_feedback`, `1st_visit_no_of_house`, `1st_visit_no_of_vacinated_kids`, `1st_visit_used_vaccine`, `1st_visit_no_of_unvacinated_kids`, `1st_visit_time`, `1st_visit_supervisor_helped`, `2nd_visit_no_of_house`, `2nd_visit_no_of_vacinated_kids`, `2nd_visit_used_vaccine`, `2nd_visit_no_of_unvacinated_kids`, `2nd_visit_time`, `2nd_visit_supervisor_helped`, `UCMO_visit_no_of_house`, `UCMO_visit_no_of_vacinated_kids`, `UCMO_visit_used_vaccine`, `UCMO_visit_no_of_unvacinated_kids`, `UCMO_visit_time`, `UCMO_helped`) VALUES
(6, '95754', 'fahad@gmail.com', '2023-11-13 11:38:09.077980', 'obr novemb', 'street 8', 'uc 8', 'karadar', 'south', 1, 'sabir karim', 'shahbaz khan', 'usama asad', 'nawaz ahmed', 'yes', 'no', 'punjabi club', '2023-12-21', 'akash sharma', 'fahad mustafa', '0', '0', '0', 15, 10, 12, 6, 2, 10, 0, 12, 50, 'good luck', 60, 50, 3, 4, '11:35', 'yes', 60, 50, 3, 2, '14:39', 'yes', 60, 60, 1, 2, '16:37', 'yes'),
(7, '95754', 'fahad@gmail.com', '2023-10-09 11:38:24.288354', 'october 23', 'street 8', 'uc 8', 'karadar', 'south', 1, 'sabir karim', 'shahbaz khan', 'usama asad', 'nawaz ahmed', 'yes', 'no', 'punjabi club', '2023-12-21', 'akash sharma', 'fahad mustafa', '0', '0', '0', 15, 10, 20, 6, 2, 10, 0, 12, 50, 'good luck', 60, 50, 3, 4, '11:35', 'yes', 60, 50, 3, 2, '14:39', 'yes', 60, 60, 1, 2, '16:37', 'yes'),
(8, '95754', 'fahad@gmail.com', '2023-08-07 11:38:26.392154', 'auguest 23', 'street 8', 'uc 8', 'karadar', 'south', 1, 'sabir karim', 'shahbaz khan', 'usama asad', 'nawaz ahmed', 'yes', 'no', 'punjabi club', '2023-12-21', 'akash sharma', 'fahad mustafa', '0', '0', '0', 15, 10, 16, 6, 2, 10, 0, 12, 50, 'good luck', 60, 50, 3, 4, '11:35', 'yes', 60, 50, 3, 2, '14:39', 'yes', 60, 60, 1, 2, '16:37', 'yes'),
(9, '95754', 'fahad@gmail.com', '2023-07-17 11:38:28.299621', 'july 2023', 'street 8', 'uc 8', 'karadar', 'south', 1, 'sabir karim', 'shahbaz khan', 'usama asad', 'nawaz ahmed', 'yes', 'no', 'punjabi club', '2023-12-21', 'akash sharma', 'fahad mustafa', '0', '0', '0', 15, 10, 14, 6, 2, 10, 0, 12, 50, 'good luck', 60, 50, 3, 4, '11:35', 'yes', 60, 50, 3, 2, '14:39', 'yes', 60, 60, 1, 2, '16:37', 'yes'),
(10, '95754', 'ramsha@gmail.com', '2023-06-05 11:38:30.407006', 'june 2023', 'street 8', 'uc 8', 'karadar', 'south', 1, 'sabir karim', 'shahbaz khan', 'usama asad', 'nawaz ahmed', 'yes', 'no', 'punjabi club', '2023-12-21', 'akash sharma', 'fahad mustafa', '0', '0', '0', 15, 10, 56, 6, 2, 10, 0, 12, 50, 'good luck', 60, 50, 3, 4, '11:35', 'yes', 60, 50, 3, 2, '14:39', 'yes', 60, 60, 1, 2, '16:37', 'yes'),
(11, '95754', 'ramsha@gmail.com', '2023-05-08 11:38:32.816667', 'may 2023', 'street 8', 'uc 8', 'karadar', 'south', 1, 'sabir karim', 'shahbaz khan', 'usama asad', 'nawaz ahmed', 'yes', 'no', 'punjabi club', '2023-12-21', 'akash sharma', 'fahad mustafa', '0', '0', '0', 15, 10, 1219, 6, 2, 10, 0, 12, 50, 'good luck', 60, 50, 3, 4, '11:35', 'yes', 60, 50, 3, 2, '14:39', 'yes', 60, 60, 1, 2, '16:37', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `telesheet_entry`
--

CREATE TABLE `telesheet_entry` (
  `id` int(50) NOT NULL,
  `cnic` varchar(50) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `no_of_kids_under_12_months` int(25) NOT NULL,
  `no_of_kids_12_months_to_59_months` int(25) NOT NULL,
  `no_of_vacinated_kids_under_12_months` int(25) NOT NULL,
  `no_of_vacinated_kids_12_months_to_59_months` int(25) NOT NULL,
  `date_time` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telesheet_entry`
--

INSERT INTO `telesheet_entry` (`id`, `cnic`, `sheet_code`, `no_of_kids_under_12_months`, `no_of_kids_12_months_to_59_months`, `no_of_vacinated_kids_under_12_months`, `no_of_vacinated_kids_12_months_to_59_months`, `date_time`) VALUES
(6, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:40.473959'),
(7, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:43.434778'),
(8, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:45.266636'),
(9, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:47.445227'),
(10, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:49.762698'),
(11, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:51.978895'),
(12, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:54.094777'),
(13, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:56.331922'),
(14, '4220163694251', '95754', 2, 4, 2, 0, '2023-12-21 11:43:58.909712');

-- --------------------------------------------------------

--
-- Table structure for table `unimmunized_list`
--

CREATE TABLE `unimmunized_list` (
  `id` int(100) NOT NULL,
  `house_no` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `sheet_code` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unimmunized_list`
--

INSERT INTO `unimmunized_list` (`id`, `house_no`, `name`, `age`, `father_name`, `address`, `mobile_no`, `sheet_code`, `date_time`) VALUES
(2, 12, 'fahad khan', 2, 'usama khan', '11 H block pechs karachi', 2023, '43730', '2023-12-21 13:41:59.928140');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `role` varchar(250) DEFAULT NULL,
  `profile` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `upload_image` varchar(25) NOT NULL,
  `state` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ac_all_dash` varchar(12) NOT NULL,
  `ac_all_prof` varchar(10) NOT NULL,
  `ac_all_pub` varchar(10) NOT NULL,
  `ac_all_micro` varchar(11) NOT NULL,
  `ac_all_msg` varchar(11) NOT NULL,
  `ac_all_meet` varchar(11) NOT NULL,
  `ac_new_meet` varchar(11) NOT NULL,
  `ac_join_meet` varchar(11) NOT NULL,
  `ac_all_datasheet` varchar(11) NOT NULL,
  `ac_tele` varchar(11) NOT NULL,
  `ac_nar` varchar(11) NOT NULL,
  `ac_lockhouse` varchar(11) NOT NULL,
  `ac_housechoc` varchar(11) NOT NULL,
  `ac_user` varchar(11) NOT NULL,
  `ac_all_user` varchar(11) NOT NULL,
  `ac_user_pay` varchar(11) NOT NULL,
  `status` varchar(12) NOT NULL DEFAULT '0',
  `updatesystem` varchar(50) NOT NULL DEFAULT 'update',
  `date_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `role`, `profile`, `phone`, `email`, `password`, `upload_image`, `state`, `address`, `ac_all_dash`, `ac_all_prof`, `ac_all_pub`, `ac_all_micro`, `ac_all_msg`, `ac_all_meet`, `ac_new_meet`, `ac_join_meet`, `ac_all_datasheet`, `ac_tele`, `ac_nar`, `ac_lockhouse`, `ac_housechoc`, `ac_user`, `ac_all_user`, `ac_user_pay`, `status`, `updatesystem`, `date_time`) VALUES
(93, 'Rao waqas', 'admin', 'upload/b-sm.jpg', '1234567899', 'admin@ppep.com', 'admin', '', 'Lahore', '', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'off', 'updated', '2022-09-20 17:07:41.636984'),
(189, 'Ramsha  Nawaz U din', 'Worker', 'upload/c-sm.jpg', '31021348888', 'ramsha@gmail.com', '1234', '', 'Karachi', 'house no 776 sector 32/A zia colony korangi no 1 karachi.', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'off', 'off', 'off', 'off', 'off', '0', 'update', '2023-12-27 19:11:20.286631'),
(190, 'Fahad Nawaz U din', 'Worker', 'upload/a-sm.jpg', '31021348888', 'fahad@gmail.com', '1234', '', 'Karachi', 'house no 776 sector 32/A zia colony korangi no 1 karachi.', 'on', 'on', 'on', 'off', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'off', 'off', 'off', '0', 'update', '2023-12-27 19:12:15.756080'),
(191, 'Usama  Asad', 'Officer', 'upload/878505-salmankhan-1430389425.jpg', '0310213488', 'usama@gmail.com', '1234', '', 'Karachi', 'house no 776 sector 32/A zia colony korangi no 1 karachi.', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', 'update', '2024-01-24 05:45:03.896292'),
(192, 'Sadiq Ali', 'Supervisor', 'upload/abu.jpg', '03102137488', 'sadiq@gmail.com', '1234', '', 'Karachi', 'house no 776 sector 32/A zia colony korangi no 1 karachi.', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', 'update', '2024-01-24 05:47:05.122971'),
(193, 'Hassan Adil', 'Supervisor', 'upload/361286729_228633793411056_8469932821194557029_n.jpg', '03102137499', 'hasan@gmail.com', '1234', '', 'Karachi', 'house no 776 sector 32/A zia colony korangi no 1 karachi.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'update', '2024-01-24 06:10:51.786682');

-- --------------------------------------------------------

--
-- Table structure for table `user_asign`
--

CREATE TABLE `user_asign` (
  `id` int(100) NOT NULL,
  `from_id` varchar(100) NOT NULL,
  `to_id` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_asign`
--

INSERT INTO `user_asign` (`id`, `from_id`, `to_id`, `date_time`) VALUES
(3, '192', '189', '2024-01-24 12:57:54.014876'),
(5, '191', '192', '2024-01-24 12:58:42.910895'),
(6, '192', '190', '2024-01-24 22:32:36.727053');

-- --------------------------------------------------------

--
-- Table structure for table `user_plan`
--

CREATE TABLE `user_plan` (
  `id` int(11) NOT NULL,
  `sheet_code` int(11) DEFAULT NULL,
  `plan_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_plan`
--

INSERT INTO `user_plan` (`id`, `sheet_code`, `plan_user_id`, `created_at`) VALUES
(1, 52581, 93, '2024-03-17 08:21:17'),
(2, 52581, 189, '2024-03-17 08:22:04'),
(3, 52581, 189, '2024-03-17 14:34:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment_list`
--
ALTER TABLE `equipment_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `housechalking_entry`
--
ALTER TABLE `housechalking_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `immediate_fever_weakness_list`
--
ALTER TABLE `immediate_fever_weakness_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lockhouse_data`
--
ALTER TABLE `lockhouse_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lockhouse_entry`
--
ALTER TABLE `lockhouse_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microplan_data`
--
ALTER TABLE `microplan_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nar_list_data`
--
ALTER TABLE `nar_list_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nar_list_entry`
--
ALTER TABLE `nar_list_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nar_list_guest_entry`
--
ALTER TABLE `nar_list_guest_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_data`
--
ALTER TABLE `public_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_member`
--
ALTER TABLE `public_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telesheet_data`
--
ALTER TABLE `telesheet_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telesheet_entry`
--
ALTER TABLE `telesheet_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unimmunized_list`
--
ALTER TABLE `unimmunized_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_asign`
--
ALTER TABLE `user_asign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_plan`
--
ALTER TABLE `user_plan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment_list`
--
ALTER TABLE `equipment_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `housechalking_entry`
--
ALTER TABLE `housechalking_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `immediate_fever_weakness_list`
--
ALTER TABLE `immediate_fever_weakness_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lockhouse_data`
--
ALTER TABLE `lockhouse_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lockhouse_entry`
--
ALTER TABLE `lockhouse_entry`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `microplan_data`
--
ALTER TABLE `microplan_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nar_list_data`
--
ALTER TABLE `nar_list_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nar_list_entry`
--
ALTER TABLE `nar_list_entry`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nar_list_guest_entry`
--
ALTER TABLE `nar_list_guest_entry`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `public_data`
--
ALTER TABLE `public_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `public_member`
--
ALTER TABLE `public_member`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `telesheet_data`
--
ALTER TABLE `telesheet_data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `telesheet_entry`
--
ALTER TABLE `telesheet_entry`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `unimmunized_list`
--
ALTER TABLE `unimmunized_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `user_asign`
--
ALTER TABLE `user_asign`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_plan`
--
ALTER TABLE `user_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
