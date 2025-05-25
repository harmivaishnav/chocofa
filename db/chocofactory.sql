-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 07:05 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chocofactory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`admin_id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`) VALUES
(5, 32);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(200) NOT NULL,
  `Your_Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `Your_Name`, `Email`, `Message`) VALUES
(15, 'jiya nasit', 'jiya1@gmail.com', 'I want to order in a bulk.'),
(16, 'isha ramani', 'isha@gmail.com', 'i want to lots of chocolates.'),
(17, 'bansi undhad', 'bansi23@gmail.com', 'i want to chocolate.'),
(18, 'hirth patel', 'hirth23@gmail.com', 'give me your full address');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Id` int(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `PhoneNo` varchar(12) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Id`, `Email`, `PhoneNo`, `Message`) VALUES
(1, 'isha@gmail.com', '7878787878', 'very nice.'),
(2, 'harmi@gmail.com', '1234567890', 'good'),
(3, 'prince@gmail.com', '0987654321', 'website is very good.'),
(6, 'isha12@gmail.com', '9824551803', 'chocolates are looking so delicious and pretty.'),
(7, 'bansi@gmail.com', '1234567890', 'very nice');

-- --------------------------------------------------------

--
-- Table structure for table `products_table`
--

CREATE TABLE `products_table` (
  `p_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `min_order` int(11) NOT NULL,
  `n_likes` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_table`
--

INSERT INTO `products_table` (`p_id`, `name`, `description`, `img_url`, `price`, `min_order`, `n_likes`) VALUES
(25, 'White choco balls', 'These white chocolate balls are the ultimate treat for white chocolate lover everywhere.', 'chocalateballs.jpeg', 50.5, 1, 0),
(24, 'White chocolate bar', 'A white chocolate bar with a mild milk falvour.', 'whitechocalate.jpg', 60, 1, 2),
(23, 'Strawberry chocolate', 'Dip each straberry in the chocolate and cover it 3/4 or fully.', 'slider1.jpg', 40.25, 1, 3),
(22, 'Dark chocolate', 'Dark chocolate is packed full of important minerals, including iron, magnesium, zinc, copper, phosphorus.', 'darkchocalate.jpg', 60, 1, 0),
(21, 'Fruit chocalate', 'Dry fruit &amp; nuts chocalate are the amazing source of energy.this way we made huge veriety of day fruit chocalate.', 'mixfruitchocalate.jpg', 100, 1, 0),
(26, 'Yummy chocolate', 'Best yummy chocolate with inside melted dark chocolate.', 'yummychocalate.png', 65.4, 1, 1),
(28, 'Strawberry chocolate', 'Dip each straberry in the chocolate and cover it 3/4 or fully.', 'strawberry.jpg', 100, 1, 1),
(29, 'mango chocolate mini bar', 'Exotic and spicy mango in 55% dark chocolate', 'IMG-20220912-WA0008.jpg', 180, 1, 0),
(30, 'Strawberry pieces bar', 'Exotic and spicy strawberry in 55% dark chocolate', 'IMG-20220912-WA0000.jpg', 200, 1, 0),
(31, 'special chocolate', 'Check out this wonderful custom box of our special chocolate', 'IMG-20220912-WA0005.jpg', 210, 1, 0),
(32, 'cookie chocolate', 'very yummy mix flavour chocolates', 'IMG-20220912-WA0003.jpg', 70, 1, 0),
(33, 'colorful choco balls', 'These colorful chocolate balls are the ultimate treat for white chocolate lover everywhere.', 'IMG-20220912-WA0001.jpg', 50, 1, 0),
(34, 'chocolate pops', 'Dark chocolate is packed full of important minerals, including iron, magnesium, zinc, copper, phosphorus.', 'IMG-20220912-WA0004.jpg', 90, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `confirmpassword` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `lastname`, `city`, `contact`, `email`, `password`, `confirmpassword`) VALUES
(1, 'isha', 'ramani', 'rajkot', 1236547899, 'isha@gmail.com', 'i123', 'i123'),
(2, 'isha', 'ramani', 'rajkot', 1236547899, 'isha@gmail.com', 'i123', 'i123'),
(3, 'isha', 'ramani', 'DHORAJI', 1236547899, 'isha@gmail.com', 'i12355', 'i12355'),
(5, 'krutika', 'mathukiya', 'rajkot', 6578490274, 'k@gmail.com', '12345', '12345'),
(6, 'krishna', 'patel', 'DHORAJI', 6578490274, 'kr@gmail.com', '7685', '7685'),
(7, 'bansi', 'undhad', 'surat', 9976543322, 'b12@gmil.com', '12378', '12378'),
(8, 'dhruvi', 'babriya', 'ahmedabad', 9178937370, 'd456@gmail.com', '23456', '23456'),
(9, 'devansi', 'viradiya', 'ahmedabad', 9178937370, 'd89@gmail.com', 'uj7899', 'uj7899'),
(10, 'riya', 'prajapati', 'valsad', 9873546770, 'r8907@gmail.com', 'r8999', 'r8999'),
(11, 'via', 'ramani', 'bhuj', 9234567890, 'via34@gmail.com', 'via123', 'via123'),
(12, 'krutika', 'babriya', 'godhara', 9876245689, 'kruti@gmail,com', 'ui88899', 'ui88899'),
(16, 'radhika', 'pithadiya', 'rajkot', 998899898, 'r8907@gmail.com', 'rsp', 'rsp'),
(17, 'isha', 'ramani', 'rajkot', 6578490274, 'isha@gmail.com', '7685', '7685'),
(18, 'ishu', 'ramani', 'dhoraji', 9876654311, 'i22@gmail.com', '123456', '123456'),
(19, 'isha', 'patel', 'surat', 9898989876, 'isha21@gmail.com', '1234567', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products_table`
--
ALTER TABLE `products_table`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_table`
--
ALTER TABLE `products_table`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
