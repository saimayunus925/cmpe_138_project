-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2020 at 08:25 AM
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
(1403, 'jharlow', 'whatspoopin', 'Harlow', 'Jack', NULL, 'Custodian', '3758208417'),
(1652, 'syunus', 'k4ny3west', 'Yunus', 'Saima', 2000, 'Manager', '9558258297'),
(1811, 'ldurham', 'kobe0824', 'Durham', 'Linda', NULL, 'Front Desk', '5386901638'),
(2095, 'avelarde', '1234', 'Velarde', 'Arian Joy', 1999, 'Manager', '8943318188'),
(2241, 'akaur', 'g-eazy', 'Kaur', 'Aman', NULL, 'Mechanic', '4633066745'),
(2531, 'fdouglas', 'lilwayne666', 'Douglas', 'Frederick', NULL, 'Custodian', '9234657975'),
(3777, 'ena', 'juicewrld999', 'Na', 'Elizabeth', NULL, 'Front Desk', '7673558856'),
(5291, 'jcole', 'notJCole2014', 'Cole', 'Jermaine', NULL, 'Trainer', '1147332468'),
(5551, 'admin', '$2y$10$wh7CparH0jOS1SYelQ.GD.m9mHIIyDGjIPkkDhSISfYse1vooQP1C', 'Administration', 'Administration', NULL, 'Administration', '28024822'),
(7440, 'beappen', 'b1gsean', 'Eappen', 'Brian', NULL, 'Trainer', '3953396331'),
(8908, 'ajsv', '$2y$10$3a6dIYRTQ.Wt0Wwgs0.qqelgWVjL0YCon4yZM3YNfhaK6M/RklFuW', 'Vel', 'Ari', NULL, 'Front Desk', '82928479'),
(9654, 'bruh', '$2y$10$haes.uzzPnOsbkycLCPVz.vbddRopQ50/pacWZQRK9dbOw1nMKW5G', 'fdsa', 'asdf', NULL, 'fads', 'fdsa'),
(9850, 'bro', '$2y$10$q32pslxrNn8YkbLAijnafet9mY/UP7OQanJWOVp3fWGtd6L50UY96', 'fdas', 'fda', NULL, 'aside', '123125');

-- hashed passwords (still login using the same passwords as above)
INSERT INTO `employee` (`e_id`, `emp_username`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`) VALUES
(1403, 'jharlow', '$2y$10$OAAfBNphXSRFsSVm2BJ2v..69GBSMmG8J6JW.O6PS/it2fOFIonS2', 'Harlow', 'Jack', NULL, 'Custodian', '3758208417'),
(1652, 'syunus', '$2y$10$WSJDoih.MSic6fuT45LZ9OnSYxyVYSDy4zCjbk2rfA4lm3WSr/vFS', 'Yunus', 'Saima', 2000, 'Manager', '9558258297'),
(1811, 'ldurham', '$2y$10$FbnfZ.88yHVmuzCnH7jrDOyaBt.XMPJHJr76MMv9FFDOvqAnFuEqe', 'Durham', 'Linda', NULL, 'Front Desk', '5386901638'),
(2095, 'avelarde', '$2y$10$027KibngqNXWzX9vO7A9heUToIHXoeC5bHbLN7SReApGmB.9ulziO', 'Velarde', 'Arian Joy', 1999, 'Manager', '8943318188'),
(2241, 'akaur', '$2y$10$GONXVV6vxUIC4G75.p1BpOvvHRaIK/4SifCmYLd74bpaP1powkBk2', 'Kaur', 'Aman', NULL, 'Mechanic', '4633066745'),
(2531, 'fdouglas', '$2y$10$S7/BEyHLN5BbGT4Cb3NCN.1u9nsllosmDvqp6osAADxNXYHIe2b.S', 'Douglas', 'Frederick', NULL, 'Custodian', '9234657975'),
(3777, 'ena', '$2y$10$7buIl0Vv35ckZchSuUrwdOI6LDnfT6r/94UkAAexo3ZWFi1YlOA.K', 'Na', 'Elizabeth', NULL, 'Front Desk', '7673558856'),
(5291, 'jcole', '$2y$10$v33sW2NnVc0OImvvdSGPV.dRGl1OupPvetsmYszgZJiMZgKBdbzAi', 'Cole', 'Jermaine', NULL, 'Trainer', '1147332468'),
(7440, 'beappen', '$2y$10$3zIv7.5dAAgLBGw0J4Gohuc6yT6XOQhgkOraTeVI4EVgr/yhVfI0a', 'Eappen', 'Brian', NULL, 'Trainer', '3953396331'),
(8908, 'ajsv', '$2y$10$3a6dIYRTQ.Wt0Wwgs0.qqelgWVjL0YCon4yZM3YNfhaK6M/RklFuW', 'Vel', 'Ari', NULL, 'Front Desk', '82928479'),
(8908, 'ajsv', '$2y$10$3a6dIYRTQ.Wt0Wwgs0.qqelgWVjL0YCon4yZM3YNfhaK6M/RklFuW', 'Vel', 'Ari', NULL, 'Front Desk', '82928479'),
(9654, 'bruh', '$2y$10$haes.uzzPnOsbkycLCPVz.vbddRopQ50/pacWZQRK9dbOw1nMKW5G', 'fdsa', 'asdf', NULL, 'fads', 'fdsa'),
(9850, 'bro', '$2y$10$q32pslxrNn8YkbLAijnafet9mY/UP7OQanJWOVp3fWGtd6L50UY96', 'fdas', 'fda', NULL, 'aside', '123125'),
(5551, 'admin', '$2y$10$wh7CparH0jOS1SYelQ.GD.m9mHIIyDGjIPkkDhSISfYse1vooQP1C', 'Administration', 'Administration', NULL, 'Administration', '28024822');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9955;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
