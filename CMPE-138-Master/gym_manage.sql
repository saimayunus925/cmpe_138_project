--<!--SJSU CMPE 138 Fall 2020 TEAM8-->
-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2020 at 11:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(4) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `class_time` varchar(5) NOT NULL,
  `c_duration` int(11) NOT NULL,
  `emp_trainer` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_time`, `c_duration`, `emp_trainer`) VALUES
(2536, 'badminton', '16:00', 2, 2095),
(2745, 'volleyball', '14:00', 2, 3777),
(3426, 'basketball', '10:00', 2, 7440),
(3463, 'swimming', '08:00', 3, 2241),
(3802, 'indoor soccer', '12:00', 4, 1652);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(4) NOT NULL,
  `emp_username` varchar(100) NOT NULL,
  `emp_password` varchar(256) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `mng_id` int(11) DEFAULT NULL,
  `emp_position` varchar(100) NOT NULL,
  `emp_phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `emp_username`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`) VALUES
(1403, 'jharlow', '$2y$10$OAAfBNphXSRFsSVm2BJ2v..69GBSMmG8J6JW.O6PS/it2fOFIonS2', 'Harlow', 'Jack', NULL, 'Custodian', '3758208417'),
(1652, 'syunus', '$2y$10$WSJDoih.MSic6fuT45LZ9OnSYxyVYSDy4zCjbk2rfA4lm3WSr/vFS', 'Yunus', 'Saima', 2000, 'Manager', '9558258297'),
(1811, 'ldurham', '$2y$10$FbnfZ.88yHVmuzCnH7jrDOyaBt.XMPJHJr76MMv9FFDOvqAnFuEqe', 'Durham', 'Linda', NULL, 'Front Desk', '5386901638'),
(2095, 'avelarde', '$2y$10$027KibngqNXWzX9vO7A9heUToIHXoeC5bHbLN7SReApGmB.9ulziO', 'Velarde', 'Arian Joy', 1999, 'Manager', '8943318188'),
(2241, 'akaur', '$2y$10$GONXVV6vxUIC4G75.p1BpOvvHRaIK/4SifCmYLd74bpaP1powkBk2', 'Kaur', 'Aman', NULL, 'Mechanic', '4633066745'),
(2531, 'fdouglas', '$2y$10$S7/BEyHLN5BbGT4Cb3NCN.1u9nsllosmDvqp6osAADxNXYHIe2b.S', 'Douglas', 'Frederick', NULL, 'Custodian', '9234657975'),
(3777, 'ena', '$2y$10$7buIl0Vv35ckZchSuUrwdOI6LDnfT6r/94UkAAexo3ZWFi1YlOA.K', 'Na', 'Elizabeth', NULL, 'Front Desk', '7673558856'),
(5291, 'jcole', '$2y$10$v33sW2NnVc0OImvvdSGPV.dRGl1OupPvetsmYszgZJiMZgKBdbzAi', 'Cole', 'Jermaine', NULL, 'Trainer', '1147332468'),
(5551, 'admin', '$2y$10$wh7CparH0jOS1SYelQ.GD.m9mHIIyDGjIPkkDhSISfYse1vooQP1C', 'Administration', 'Administration', NULL, 'Administration', '28024822'),
(7440, 'beappen', '$2y$10$3zIv7.5dAAgLBGw0J4Gohuc6yT6XOQhgkOraTeVI4EVgr/yhVfI0a', 'Eappen', 'Brian', NULL, 'Trainer', '3953396331'),
(8908, 'ajsv', '$2y$10$3a6dIYRTQ.Wt0Wwgs0.qqelgWVjL0YCon4yZM3YNfhaK6M/RklFuW', 'Vel', 'Ari', NULL, 'Front Desk', '82928479'),
(9654, 'bruh', '$2y$10$haes.uzzPnOsbkycLCPVz.vbddRopQ50/pacWZQRK9dbOw1nMKW5G', 'fdsa', 'asdf', NULL, 'fads', 'fdsa'),
(9850, 'bro', '$2y$10$q32pslxrNn8YkbLAijnafet9mY/UP7OQanJWOVp3fWGtd6L50UY96', 'fdas', 'fda', NULL, 'aside', '123125');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `mach_id` int(11) NOT NULL,
  `mach_name` varchar(100) NOT NULL,
  `mach_type` varchar(100) NOT NULL,
  `use_time` int(11) NOT NULL,
  `use_count` int(11) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `mach_status` tinyint(1) DEFAULT NULL,
  `last_used` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`mach_id`, `mach_name`, `mach_type`, `use_time`, `use_count`, `start_date`, `mach_status`, `last_used`) VALUES
(1832, 'LifeFitness T5', 'Treadmill', 920, 23, '1/6/20', 0, 3212),
(1833, 'LifeFitness T5', 'Treadmill', 1120, 28, '1/6/20', 1, 3534),
(1834, 'LifeFitness T5', 'Treadmill', 1560, 39, '1/6/20', 0, 3655),
(1835, 'LifeFitness T5', 'Treadmill', 1800, 45, '1/6/20', 0, 8643),
(1836, 'LifeFitness T5', 'Treadmill', 2120, 53, '1/6/20', 0, 4223),
(1837, 'LifeFitness T5', 'Treadmill', 2600, 65, '1/6/20', 0, 8643),
(1838, 'LifeFitness T5', 'Treadmill', 2640, 66, '1/6/20', 0, 9987),
(1839, 'LifeFitness T5', 'Treadmill', 1360, 34, '1/6/20', 1, 7766),
(1840, 'LifeFitness T5', 'Treadmill', 1720, 43, '1/6/20', 1, 5486),
(2111, 'LifeFitness Integrity', 'Elliptical', 1880, 47, '1/6/20', 0, 9987),
(2132, 'LifeFitness Integrity', 'Elliptical', 1200, 30, '1/6/20', 0, 3212),
(2134, 'LifeFitness Integrity', 'Elliptical', 2000, 50, '1/6/20', 0, 4223),
(2140, 'LifeFitness Integrity', 'Elliptical', 1120, 28, '1/6/20', 0, 5484),
(2144, 'LifeFitness Integrity', 'Elliptical', 2160, 54, '1/6/20', 0, 4208),
(2155, 'LifeFitness Integrity', 'Elliptical', 1720, 43, '1/6/20', 0, 5463),
(2165, 'LifeFitness Integrity', 'Elliptical', 2720, 68, '1/6/20', 0, 5484),
(2166, 'LifeFitness Integrity', 'Elliptical', 1720, 43, '1/6/20', 1, 8457),
(2176, 'LifeFitness Integrity', 'Elliptical', 1280, 32, '1/6/20', 1, 4208),
(2177, 'LifeFitness Integrity', 'Elliptical', 1320, 33, '1/6/20', 1, 9987),
(2440, 'LifeFitness Activate', 'Exercise Bike', 1360, 34, '1/9/20', 0, 8643),
(2454, 'LifeFitness Activate', 'Exercise Bike', 1320, 34, '1/9/20', 0, 5463),
(2455, 'LifeFitness Activate', 'Exercise Bike', 1240, 34, '1/9/20', 1, 8457),
(2456, 'LifeFitness Activate', 'Exercise Bike', 1080, 34, '1/9/20', 1, 3212),
(2457, 'LifeFitness Activate', 'Exercise Bike', 1040, 34, '1/9/20', 0, 4223),
(2458, 'LifeFitness Activate', 'Exercise Bike', 1320, 34, '1/9/20', 0, 9987),
(2459, 'LifeFitness Activate', 'Exercise Bike', 1040, 34, '1/9/20', 0, 3212),
(2460, 'LifeFitness Activate', 'Exercise Bike', 1360, 34, '1/9/20', 0, 3655),
(2461, 'LifeFitness Activate', 'Exercise Bike', 1280, 34, '1/9/20', 0, 4223),
(2462, 'LifeFitness Activate', 'Exercise Bike', 840, 34, '1/9/20', 0, 8643),
(2754, 'LifeFitness Powermill', 'Stair Stepper', 2200, 55, '1/9/20', 0, 4208),
(2755, 'LifeFitness Powermill', 'Stair Stepper', 2160, 54, '1/9/20', 0, 5484),
(2756, 'LifeFitness Powermill', 'Stair Stepper', 2120, 53, '1/9/20', 0, 8643),
(2757, 'LifeFitness Powermill', 'Stair Stepper', 2240, 56, '1/9/20', 0, 9987),
(2758, 'LifeFitness Powermill', 'Stair Stepper', 2280, 57, '1/9/20', 0, 0),
(2759, 'LifeFitness Powermill', 'Stair Stepper', 2400, 60, '1/9/20', 0, 0),
(2760, 'LifeFitness Powermill', 'Stair Stepper', 2520, 63, '1/9/20', 0, 0),
(2761, 'LifeFitness Powermill', 'Stair Stepper', 2160, 54, '1/9/20', 0, 0),
(2762, 'LifeFitness Powermill', 'Stair Stepper', 2080, 52, '1/9/20', 0, 0),
(2763, 'LifeFitness Powermill', 'Stair Stepper', 1920, 48, '1/9/20', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(4) NOT NULL,
  `attendance` int(11) DEFAULT NULL,
  `user_cost` float DEFAULT NULL,
  `mem_lvl` varchar(100) DEFAULT NULL,
  `mem_lname` varchar(100) NOT NULL,
  `mem_fname` varchar(100) NOT NULL,
  `mem_dob` varchar(100) DEFAULT NULL,
  `mem_status` tinyint(1) DEFAULT NULL,
  `emp_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `attendance`, `user_cost`, `mem_lvl`, `mem_lname`, `mem_fname`, `mem_dob`, `mem_status`, `emp_id`) VALUES
(3212, 30, 69, 'Bronze', 'Nguyen', 'Emily', '1/31/72', 1, 1403),
(3534, 3, 63.9, 'Gold', 'Millar', 'Steven', '12/29/83', 0, 1652),
(3655, 28, 66.4, 'Bronze', 'Savid', 'Michael', '2/6/85', 1, 1811),
(4208, 75, 187.5, 'Platinum', 'Nguyen', 'Kevin', '9/16/01', 0, 2095),
(4223, 25, 62.5, 'Bronze', 'Vance', 'Jordan', '7/8/82', 0, 2241),
(5463, 25, 92.5, 'Gold', 'Lang', 'Suzy', '8/9/95', 1, 2531),
(5484, 80, 164, 'Gold', 'Johnson', 'Xavier', '3/25/86	', 1, 3777),
(7766, 44, 87.2, 'Bronze', 'Hutchinson', 'Jim', '6/5/96', 0, 5291),
(8457, 27, 95.1, 'Gold', 'Durham', 'Alison', '2/28/97', 0, 7440),
(8643, 37, 138.1, 'Platinum', 'Benson', 'Mark', '9/25/87', 0, 1403),
(9987, 37, 108.1, 'Gold', 'Chung', 'Vince', '4/11/01', 1, 2531);

-- --------------------------------------------------------

--
-- Table structure for table `use_mach`
--

CREATE TABLE `use_mach` (
  `m_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `use_mach`
--

INSERT INTO `use_mach` (`m_id`, `user_id`) VALUES
(1832, 8457),
(1836, 2535),
(2132, 3655),
(2111, 7766),
(2440, 7766);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`mach_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `use_mach`
--
ALTER TABLE `use_mach`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `use_mach_ibfk_1` (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9955;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `use_mach`
--
ALTER TABLE `use_mach`
  ADD CONSTRAINT `use_mach_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `equipment` (`mach_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
