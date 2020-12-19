SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE if exists gym_manage;
CREATE DATABASE gym_manage;

USE gym_manage;


-- This is the initialization of our DB



-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user_id` int(4) NOT NULL PRIMARY KEY,
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

/* some data for the 'member' table */
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (5484, 'longjohnson23', 22, 88.6, 'Gold', '2', 'Johnson', 'Xavier', '2/8/96', 1);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (8457, 'durhammy3', 11, 74.3, 'Gold', '2', 'Durham', 'Alison', '7/17/71', 0);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (2535, 'heresjohnny1234', 96, 214.8, 'Platinum', '3', 'Vang',  'Johnny', '3/4/75', 1);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (3655, 'mikesavage21', 28, 66.4, 'Bronze', '1', 'Savid', 'Michael', '2/6/85', 1);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (7766, 'hutcharide453', 44, 87.2, 'Bronze', '1', 'Hutchinson', 'Jim', '6/5/96', 0);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (3534, 'millarlite69', 3, 63.9, 'Gold', '2', 'Millar', 'Steven', '12/29/83', 0);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (8643, 'password1234', 37, 138.1, 'Platinum', '3', 'Benson', 'Mark', '9/25/87', 0);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (5463, 'redissuz23', 25, 92.5, 'Gold', '2', 'Lang', 'Suzy', '8/9/95', 1);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (9987, 'Vendetta9', 37, 108.1, 'Gold', '2', 'Chung', 'Vince', '4/11/01', 1);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (3212, 'notanABG12', 30, 69, 'Bronze', '1', 'Nguyen', 'Emily', '1/31/72', 1);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (4223, 'Jordan2345', 25, 62.5, 'Bronze', '1', 'Vance', 'Jordan', '7/8/82', 0);
INSERT INTO `member` (`user_id`, `mem_password`, `attendance`, `user_cost`, `mem_lvl`, `level_num`,
`mem_lname`, `mem_fname`, `mem_dob`, `mem_status`)
VALUES (4208, 'IDriveLexus', 75, 187.5, 'Platinum', '3', 'Nguyen', 'Kevin', '9/16/01', 0);




CREATE TABLE `gym_facility` (
  `branch_id` INTEGER NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(4) NOT NULL PRIMARY KEY,   -- unique employee ID, used for all foreign keys
  `emp_password` varchar(100) NOT NULL, -- employee password (stored as hash values, encapsulated in DB)
  `emp_lname` varchar(100) NOT NULL,    -- First Name
  `emp_fname` varchar(100) NOT NULL,    -- Last Name
  `mng_id` int(11),                     -- Manager ID (used as auth code for any managerial duties or file accesses)
  `emp_position` varchar(100) NOT NULL, -- returns position of employee
  `emp_phone` varchar(12) NOT NULL      -- employee phone records
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* some data for the 'employee' table */
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (2095, 'dr4ke', 'Velarde', 'Arian Joy', 1999, 'Manager', '8943318188');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (1652, 'k4ny3west', 'Yunus', 'Saima', 2000, 'Manager', '9558258297');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (7440, 'b1gsean', 'Eappen', 'Brian', NULL, 'Trainer', '3953396331');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (2241, 'g-eazy', 'Kaur', 'Aman', NULL, 'Mechanic', '4633066745');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (3777, 'juicewrld999', 'Na', 'Elizabeth', NULL, 'Front Desk', '7673558856');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (2531, 'lilwayne666', 'Douglas', 'Frederick', NULL, 'Custodian', '9234657975');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (1811, 'kobe0824', 'Durham', 'Linda', NULL, 'Front Desk', '5386901638');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (5291, 'notJCole2014', 'Cole', 'Jermaine', NULL, 'Trainer', '1147332468');
INSERT INTO `employee` (`e_id`, `emp_password`, `emp_lname`, `emp_fname`, `mng_id`, `emp_position`, `emp_phone`)
VALUES (1403, 'whatspoopin', 'Harlow', 'Jack', NULL, 'Custodian', '3758208417');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `mach_id` INTEGER NOT NULL PRIMARY KEY, -- unique machine identification number
  `b_id` INTEGER NOT NULL,    --
  `use_count` INTEGER NOT NULL,
	`use_time` INTEGER,         -- use time in minutes
	`mach_name` VARCHAR (255),  -- machine model name (useful for ordering new machines)
	`mach_type` INTEGER,        -- machine type, useful to help employees identify
	`start_date` DATE           -- date machine was brought into gym

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* some data for the 'equipment' table */

-- LifeFitness T5
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1832, 23, 920, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1833, 28, 1120, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1834, 39, 1560, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1835, 45, 1800, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1836, 53, 2120, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1837, 65, 2600, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1838, 66, 2640, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1839, 34, 1360, 'LifeFitness T5', 'Treadmill', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (1840, 43, 1720, 'LifeFitness T5', 'Treadmill', '1/6/20');

-- LifeFitness Integrity
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2140, 28, 1120, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2132, 30, 1200, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2155, 43, 1720, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2177, 33, 1320, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2111, 47, 1880, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2134, 50, 2000, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2165, 68, 2720, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2176, 32, 1280, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2166, 43, 1720, 'LifeFitness Integrity', 'Elliptical', '1/6/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2144, 54, 2160, 'LifeFitness Integrity', 'Elliptical', '1/6/20');

-- LifeFitness Activate

INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2440, 34, 1360, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2454, 34, 1320, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2455, 34, 1240, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2456, 34, 1080, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2457, 34, 1040, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2458, 34, 1320, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2459, 34, 1040, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2460, 34, 1360, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2461, 34, 1280, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2462, 34, 840, 'LifeFitness Activate', 'Exercise Bike', '1/9/20');

-- LifeFitness Powermill

INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2755, 55, 2200, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2756, 54, 2160, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2757, 53, 2120, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2758, 56, 2240, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2759, 57, 2280, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2760, 60, 2400, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2761, 63, 2520, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2762, 54, 2160, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2763, 52, 2080, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');
INSERT INTO `equipment` (mach_id, use_count, use_time, mach_name, mach_type, start_date)
VALUES (2764, 48, 1920, 'LifeFitness Powermill', 'Stair Stepper', '1/9/20');

-- --------------------------------------------------------

--
-- Table structure for table `platinum`
--

CREATE TABLE `platinum` (
  `user_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `gold` (
  `user_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `bronze`
--

CREATE TABLE `bronze` (
  `user_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
--
-- Table structure for table `trainer`
--

/*
-CREATE TABLE `trainer` (
`trainer_name`

) FOREIGN KEY (`e_id`) REFERENCES employee(e_id);
--

--

CREATE TABLE `front_desk` (
  `e_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------
--
-- Table structure for table `custodian`
--

CREATE TABLE `custodian` (
  `e_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------
--
-- Table structure for table `mechanic`
--

CREATE TABLE `mechanic` (
  `e_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-------------------------------------------------------
--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `e_id` INTEGER NOT NULL,
	`branch_id` INTEGER NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `classes` (
  `class_id` INTEGER NOT NULL,
	`user_id` INTEGER NOT NULL,
	`pflag` BIT NOT NULL DEFAULT (0),
	`gflag` BIT NOT NULL DEFAULT (0)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `t_access` (
  `user_id` INTEGER NOT NULL,
	`e_id` INTEGER NOT NULL,
	`health` VARCHAR (255),
	`regiment` VARCHAR (255)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `update` (
  `e_id` INTEGER NOT NULL,
	`mach_id` INTEGER NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

-- INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
-- (98, 1, 8, 1, '5.00'),
-- (99, 1, 9, 1, '6.00'),
-- (100, 1, 10, 1, '2.00'),
-- (101, 2, 10, 1, '2.00'),
-- (102, 3, 9, 1, '6.00');

-- --------------------------------------------------------
--
-- Indexes for dumped tables
--

--
-- Creating Primary and Foreign Keys
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
ALTER TABLE `member`
  ADD PRIMARY KEY (`user_id`);




ALTER TABLE classes
 ADD CONSTRAINT FK_member_user_id FOREIGN KEY (user_id) REFERENCES member(user_id);
ADD CONSTRAINT FK_member_user_id FOREIGN KEY (user_id) REFERENCES member(user_id);
--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`,`user_name`);



*/
COMMIT;
