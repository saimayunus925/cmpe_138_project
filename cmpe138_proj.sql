SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE if exists gym_manage;
CREATE DATABASE gym_manage;

USE gym_manage;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerece`
--

-- DELIMITER $$
-- --
-- -- Procedures
-- --
-- CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$
--
-- DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user_id` INT NOT NULL,
  `password` INTEGER NOT NULL,
  `attendance` CHAR (1),
  `user_cost` INTEGER

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

-- INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
-- (1, 'admin', 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `gym_facility`
--

CREATE TABLE `gym_facility` (
  `branch_id` INTEGER NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

-- INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
-- (1, 'admin', 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` INTEGER NOT NULL,
	`mng_id` INTEGER NOT NULL,
	`branch_id` INTEGER NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `mach_id` INTEGER NOT NULL,
  `b_id` INTEGER NOT NULL
  `use_count` INTEGER NOT NULL,
	`use_time` INTEGER,
	`mach_name` VARCHAR (255),
	`mach_type` INTEGER,
	`start_date` DATE

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
VALUES (2440, 34, 1360, 'LifeFitness Integrity', 'Elliptical', '1/6/20');

-- --------------------------------------------------------

--
-- Table structure for table `platinum`
--

CREATE TABLE `platinum` (
  `user_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `gold`
--

CREATE TABLE `gold` (
  `user_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `bronze`
--

CREATE TABLE `bronze` (
  `user_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------
--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `e_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------
--
-- Table structure for table `front_desk`
--

CREATE TABLE `front_desk` (
  `e_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------
--
-- Table structure for table `custodian`
--

CREATE TABLE `custodian` (
  `e_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------
--
-- Table structure for table `mechanic`
--

CREATE TABLE `mechanic` (
  `e_id` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------
--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `e_id` INTEGER NOT NULL,
	`branch_id` INTEGER NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'Dairy'),
-- (2, 'Fruits'),
-- (3, 'Meat'),
-- (4, 'Vegetables');

-- --------------------------------------------------------
--
-- Table structure for table `c_access`
--

CREATE TABLE `c_access` (
  `class_id` INTEGER NOT NULL,
	`user_id` INTEGER NOT NULL,
	`pflag` BIT NOT NULL DEFAULT (0),
	`gflag` BIT NOT NULL DEFAULT (0)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

-- INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`, `o_id`) VALUES
-- (2, 25, 2, 1, '', 'pending', 8),
-- (5, 25, 2, 1, '', 'pending', 9),
-- (6, 25, 2, 1, '', 'pending', 10),
-- (2, 1, 10, 1, '', 'pending', 11),
-- (3, 1, 9, 1, '', 'pending', 12);

-- --------------------------------------------------------

--
-- Table structure for table `t_access`
--

CREATE TABLE `t_access` (
  `user_id` INTEGER NOT NULL,
	`e_id` INTEGER NOT NULL,
	`health` VARCHAR (255),
	`regiment` VARCHAR (255)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

-- INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
-- (1, 1, 'Khoi Tran', 'abc@gmail.com', '123 abc, san jose CA 95111', 'SAN JOSE', 'CA', 95148, 'Steven Massenburg', '4318 8392 7914 5007', '05/22', 3, '16.00', 996),
-- (2, 1, 'Khoi Tran', 'abc@gmail.com', '123 abc, san jose CA 95111', 'SAN JOSE', 'CA', 95148, 'Steven Massenburg', '4318 8392 7914 5007', '05/22', 3, '4.97', 996),
-- (3, 1, 'Khoi Tran', 'abc@gmail.com', '123 abc, san jose CA 95111', 'SAN JOSE', 'CA', 95148, 'Steven Massenburg', '4318 8392 7914 5007', '05/22', 1, '6.99', 996);

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

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
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`,`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
