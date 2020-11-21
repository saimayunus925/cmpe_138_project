-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2020 at 01:15 AM
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
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(4) NOT NULL,
  `emp_username` varchar(100) NOT NULL,
  `emp_password` varchar(100) NOT NULL,
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
(1403, 'jharlow', 'whatspoopin', 'Harlow', 'Jack', NULL, 'Custodian', '3758208417'),
(1652, 'syunus', 'k4ny3west', 'Yunus', 'Saima', 2000, 'Manager', '9558258297'),
(1811, 'ldurham', 'kobe0824', 'Durham', 'Linda', NULL, 'Front Desk', '5386901638'),
(1822, 'ajsv', '987', 'Vel', 'Ari', NULL, 'Front Desk', '924824'),
(2095, 'avelarde', '1234', 'Velarde', 'Arian Joy', 1999, 'Manager', '8943318188'),
(2241, 'akaur', 'g-eazy', 'Kaur', 'Aman', NULL, 'Mechanic', '4633066745'),
(2531, 'fdouglas', 'lilwayne666', 'Douglas', 'Frederick', NULL, 'Custodian', '9234657975'),
(3777, 'ena', 'juicewrld999', 'Na', 'Elizabeth', NULL, 'Front Desk', '7673558856'),
(5291, 'jcole', 'notJCole2014', 'Cole', 'Jermaine', NULL, 'Trainer', '1147332468'),
(7440, 'beappen', 'b1gsean', 'Eappen', 'Brian', NULL, 'Trainer', '3953396331'),
(9683, 'ajsv', '987', 'Vel', 'Ari', NULL, 'Front Desk', '88997434');

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
  `mach_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`mach_id`, `mach_name`, `mach_type`, `use_time`, `use_count`, `start_date`, `mach_status`) VALUES
(1832, 'LifeFitness T5', 'Treadmill', 920, 23, '1/6/20', 0),
(1833, 'LifeFitness T5', 'Treadmill', 1120, 28, '1/6/20', 1),
(1834, 'LifeFitness T5', 'Treadmill', 1560, 39, '1/6/20', 0),
(1835, 'LifeFitness T5', 'Treadmill', 1800, 45, '1/6/20', 0),
(1836, 'LifeFitness T5', 'Treadmill', 2120, 53, '1/6/20', 0),
(1837, 'LifeFitness T5', 'Treadmill', 2600, 65, '1/6/20', 0),
(1838, 'LifeFitness T5', 'Treadmill', 2640, 66, '1/6/20', 0),
(1839, 'LifeFitness T5', 'Treadmill', 1360, 34, '1/6/20', 1),
(1840, 'LifeFitness T5', 'Treadmill', 1720, 43, '1/6/20', 1),
(2111, 'LifeFitness Integrity', 'Elliptical', 1880, 47, '1/6/20', 0),
(2132, 'LifeFitness Integrity', 'Elliptical', 1200, 30, '1/6/20', 0),
(2134, 'LifeFitness Integrity', 'Elliptical', 2000, 50, '1/6/20', 0),
(2140, 'LifeFitness Integrity', 'Elliptical', 1120, 28, '1/6/20', 0),
(2144, 'LifeFitness Integrity', 'Elliptical', 2160, 54, '1/6/20', 0),
(2155, 'LifeFitness Integrity', 'Elliptical', 1720, 43, '1/6/20', 0),
(2165, 'LifeFitness Integrity', 'Elliptical', 2720, 68, '1/6/20', 0),
(2166, 'LifeFitness Integrity', 'Elliptical', 1720, 43, '1/6/20', 1),
(2176, 'LifeFitness Integrity', 'Elliptical', 1280, 32, '1/6/20', 1),
(2177, 'LifeFitness Integrity', 'Elliptical', 1320, 33, '1/6/20', 1),
(2440, 'LifeFitness Activate', 'Exercise Bike', 1360, 34, '1/9/20', 0),
(2454, 'LifeFitness Activate', 'Exercise Bike', 1320, 34, '1/9/20', 0),
(2455, 'LifeFitness Activate', 'Exercise Bike', 1240, 34, '1/9/20', 1),
(2456, 'LifeFitness Activate', 'Exercise Bike', 1080, 34, '1/9/20', 1),
(2457, 'LifeFitness Activate', 'Exercise Bike', 1040, 34, '1/9/20', 0),
(2458, 'LifeFitness Activate', 'Exercise Bike', 1320, 34, '1/9/20', 0),
(2459, 'LifeFitness Activate', 'Exercise Bike', 1040, 34, '1/9/20', 0),
(2460, 'LifeFitness Activate', 'Exercise Bike', 1360, 34, '1/9/20', 0),
(2461, 'LifeFitness Activate', 'Exercise Bike', 1280, 34, '1/9/20', 0),
(2462, 'LifeFitness Activate', 'Exercise Bike', 840, 34, '1/9/20', 0),
(2754, 'LifeFitness Powermill', 'Stair Stepper', 2200, 55, '1/9/20', 0),
(2755, 'LifeFitness Powermill', 'Stair Stepper', 2160, 54, '1/9/20', 0),
(2756, 'LifeFitness Powermill', 'Stair Stepper', 2120, 53, '1/9/20', 0),
(2757, 'LifeFitness Powermill', 'Stair Stepper', 2240, 56, '1/9/20', 0),
(2758, 'LifeFitness Powermill', 'Stair Stepper', 2280, 57, '1/9/20', 0),
(2759, 'LifeFitness Powermill', 'Stair Stepper', 2400, 60, '1/9/20', 0),
(2760, 'LifeFitness Powermill', 'Stair Stepper', 2520, 63, '1/9/20', 0),
(2761, 'LifeFitness Powermill', 'Stair Stepper', 2160, 54, '1/9/20', 0),
(2762, 'LifeFitness Powermill', 'Stair Stepper', 2080, 52, '1/9/20', 0),
(2763, 'LifeFitness Powermill', 'Stair Stepper', 1920, 48, '1/9/20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(4) NOT NULL,
  `attendance` int(11) DEFAULT NULL,
  `user_cost` float DEFAULT NULL,
  `mem_lvl` varchar(100) DEFAULT NULL,
  `level_num` char(1) DEFAULT NULL,
  `mem_lname` varchar(100) NOT NULL,
  `mem_fname` varchar(100) NOT NULL,
  `mem_dob` varchar(100) DEFAULT NULL,
  `mem_status` tinyint(1) DEFAULT NULL,
  `emp_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `attendance`, `user_cost`, `mem_lvl`, `level_num`, `mem_lname`, `mem_fname`, `mem_dob`, `mem_status`, `emp_id`) VALUES
(3212, 30, 69, 'Bronze', '1', 'Nguyen', 'Emily', '1/31/72', 0, 1403),
(3534, 3, 63.9, 'Gold', '2', 'Millar', 'Steven', '12/29/83', 0, 1652),
(3655, 28, 66.4, 'Bronze', '1', 'Savid', 'Michael', '2/6/85', 1, 1811),
(4208, 75, 187.5, 'Platinum', '3', 'Nguyen', 'Kevin', '9/16/01', 0, 2095),
(4223, 25, 62.5, 'Bronze', '1', 'Vance', 'Jordan', '7/8/82', 0, 2241),
(5463, 25, 92.5, 'Gold', '2', 'Lang', 'Suzy', '8/9/95', 1, 2531),
(5484, 80, 164, 'Gold', '2', 'Johnson', 'Xavier', '3/25/86	', 1, 3777),
(7766, 44, 87.2, 'Bronze', '1', 'Hutchinson', 'Jim', '6/5/96', 0, 5291),
(8457, 27, 95.1, 'Gold', '2', 'Durham', 'Alison', '2/28/97', 0, 7440),
(8643, 37, 138.1, 'Platinum', '3', 'Benson', 'Mark', '9/25/87', 0, 1403),
(9987, 37, 108.1, 'Gold', '2', 'Chung', 'Vince', '4/11/01', 1, 2531);

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
  MODIFY `e_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9684;

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
