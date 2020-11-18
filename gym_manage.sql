-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2020 at 06:55 AM
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
  `emp_password` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `mng_id` int(11) NOT NULL,
  `emp_position` varchar(100) NOT NULL,
  `emp_phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `start_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`mach_id`, `mach_name`, `mach_type`, `use_time`, `use_count`, `start_date`) VALUES
(1832, 'LifeFitness T5', 'Treadmill', 920, 23, '1/6/20'),
(1833, 'LifeFitness T5', 'Treadmill', 1120, 28, '1/6/20'),
(1834, 'LifeFitness T5', 'Treadmill', 1560, 39, '1/6/20'),
(1835, 'LifeFitness T5', 'Treadmill', 1800, 45, '1/6/20'),
(1836, 'LifeFitness T5', 'Treadmill', 2120, 53, '1/6/20'),
(1837, 'LifeFitness T5', 'Treadmill', 2600, 65, '1/6/20'),
(1838, 'LifeFitness T5', 'Treadmill', 2640, 66, '1/6/20'),
(1839, 'LifeFitness T5', 'Treadmill', 1360, 34, '1/6/20'),
(1840, 'LifeFitness T5', 'Treadmill', 1720, 43, '1/6/20'),
(2111, 'LifeFitness Integrity', 'Elliptical', 1880, 47, '1/6/20'),
(2132, 'LifeFitness Integrity', 'Elliptical', 1200, 30, '1/6/20'),
(2134, 'LifeFitness Integrity', 'Elliptical', 2000, 50, '1/6/20'),
(2140, 'LifeFitness Integrity', 'Elliptical', 1120, 28, '1/6/20'),
(2144, 'LifeFitness Integrity', 'Elliptical', 2160, 54, '1/6/20'),
(2155, 'LifeFitness Integrity', 'Elliptical', 1720, 43, '1/6/20'),
(2165, 'LifeFitness Integrity', 'Elliptical', 2720, 68, '1/6/20'),
(2166, 'LifeFitness Integrity', 'Elliptical', 1720, 43, '1/6/20'),
(2176, 'LifeFitness Integrity', 'Elliptical', 1280, 32, '1/6/20'),
(2177, 'LifeFitness Integrity', 'Elliptical', 1320, 33, '1/6/20');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user_id` int(4) NOT NULL,
  `mem_password` varchar(100) NOT NULL,
  `attendance` int(11) NOT NULL,
  `user_cost` double NOT NULL,
  `mem_lvl` varchar(100) NOT NULL,
  `level_num` char(1) NOT NULL,
  `mem_lname` varchar(100) NOT NULL,
  `mem_fname` varchar(100) NOT NULL,
  `mem_dob` varchar(100) NOT NULL,
  `mem_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`, `mem_lname`, `mem_fname`, `mem_dob`, `mem_status`) VALUES
(5484, 'longjohnson23', 80, 164, 'Gold', '2', 'Johnson', 'Xavier', '3/25/86	', 1),
(8457, 'durhammy3', 27, 95.1, 'Gold', '2', 'Durham', 'Alison', '2/28/97', 0);

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
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
