-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 11:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `username`, `password`, `role`) VALUES
(1, 'john', 'johnalbert051', 'Albert115', 'User'),
(2, 'admin', 'admin', 'admin', 'Admin'),
(3, 'admin', 'admin', 'admin', 'Admin'),
(5, 'qwe', 'qwe', 'qwe', 'Select Role');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `branches_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `code`, `branches_name`) VALUES
(24, 'SSM', 'Pasig City'),
(25, 'SSM', 'Pasig City'),
(31, 'SSM', 'Pasig City'),
(32, 'SSM', 'Pasig City'),
(33, 'SSM', 'Pasig City'),
(34, 'SSM', 'Pasig City'),
(35, 'SSM', 'Pasig'),
(38, 'SSM', 'Pasig City'),
(39, 'SSM', 'Makati'),
(40, 'SSM', 'Baliwag'),
(42, 'qwe', 'ee');

-- --------------------------------------------------------

--
-- Table structure for table `flavoring`
--

CREATE TABLE `flavoring` (
  `id` int(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `article_no` varchar(200) NOT NULL,
  `stocks` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `sales` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flavoring`
--

INSERT INTO `flavoring` (`id`, `number`, `product_name`, `article_no`, `stocks`, `price`, `sales`) VALUES
(2, '2', 'Brown', '20342517', '130', '30', '150'),
(3, '3', 'Langka Essence', '20342510', '99', '30', '5'),
(4, '4', 'Lemon Essence', '20342511', '40', '25', '100'),
(6, '6', 'Milk Essence', '20341715', '100', '100', '100'),
(8, '8', 'sample', '2039423', '50', '30', '111');

-- --------------------------------------------------------

--
-- Table structure for table `food_color`
--

CREATE TABLE `food_color` (
  `id` int(100) NOT NULL,
  `number` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `article_no` varchar(200) NOT NULL,
  `stocks` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `sales` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_color`
--

INSERT INTO `food_color` (`id`, `number`, `color`, `article_no`, `stocks`, `price`, `sales`) VALUES
(1, '1', 'Black', '20342515', '100', '130', '300');

-- --------------------------------------------------------

--
-- Table structure for table `gl_mixes`
--

CREATE TABLE `gl_mixes` (
  `id` int(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `product_name1` varchar(200) NOT NULL,
  `article_no` varchar(200) NOT NULL,
  `stocks` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `sales` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gl_mixes`
--

INSERT INTO `gl_mixes` (`id`, `number`, `product_name1`, `article_no`, `stocks`, `price`, `sales`) VALUES
(2, '7', 'Pandan Essence', '20307460', '100', '99', '0'),
(3, '8', 'sample', '2039423', '50', '30', '0');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(100) NOT NULL,
  `date` varchar(150) NOT NULL,
  `particular` varchar(150) NOT NULL,
  `deliver_in` varchar(150) NOT NULL,
  `deliver_out` varchar(150) NOT NULL,
  `balance` varchar(150) NOT NULL,
  `price` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `date`, `particular`, `deliver_in`, `deliver_out`, `balance`, `price`) VALUES
(6, '04/08/2023', 'Sales', '25', '0', '25', '17'),
(7, '04/08/2023', 'Sales', '0', '4', '21', '16'),
(8, '04/08/2023', 'Sales', '0', '1', '22', '10');

-- --------------------------------------------------------

--
-- Table structure for table `special_flavor`
--

CREATE TABLE `special_flavor` (
  `id` int(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `article_no` varchar(200) NOT NULL,
  `stocks` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `sales` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `special_flavor`
--

INSERT INTO `special_flavor` (`id`, `number`, `product_name`, `article_no`, `stocks`, `price`, `sales`) VALUES
(3, '7', 'Pandan Essence', '20307460', '100', '99', '50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ssm` (`id`);

--
-- Indexes for table `flavoring`
--
ALTER TABLE `flavoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_color`
--
ALTER TABLE `food_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gl_mixes`
--
ALTER TABLE `gl_mixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_flavor`
--
ALTER TABLE `special_flavor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `flavoring`
--
ALTER TABLE `flavoring`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `food_color`
--
ALTER TABLE `food_color`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gl_mixes`
--
ALTER TABLE `gl_mixes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `special_flavor`
--
ALTER TABLE `special_flavor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
