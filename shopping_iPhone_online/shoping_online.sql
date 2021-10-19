-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 05:00 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoping_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_ID` varchar(10) NOT NULL,
  `Cat_Name` varchar(30) NOT NULL,
  `Cat_Des` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_ID`, `Cat_Name`, `Cat_Des`) VALUES
('1', 'iPhone 11', 'Best - selling product'),
('3', 'iPhone12', 'New product'),
('4', 'iPhone12 pro max ', 'iPhone 12 Pro Max are smartphones designed and marketed by Apple Inc.'),
('5', 'iPhone XS', 'Best products voted.'),
('6', 'iPhone11 pro', 'New product'),
('7', 'iPhone Xs Max', 'New product'),
('8', 'iPhone 11 Pro Max 256GB', 'Mid-range products');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `CustName` varchar(30) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `Address` varchar(1000) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `CusDate` int(11) DEFAULT NULL,
  `CusMonth` int(11) DEFAULT NULL,
  `CusYear` int(11) DEFAULT NULL,
  `SSN` varchar(10) NOT NULL,
  `ActiveCode` varchar(100) NOT NULL,
  `state` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Username`, `Password`, `CustName`, `gender`, `Address`, `telephone`, `email`, `CusDate`, `CusMonth`, `CusYear`, `SSN`, `ActiveCode`, `state`) VALUES
('admin', '6d9573b8494223ea50d7e15075d45a0c', 'phuvinhnguyen', 0, 'Ninh Kieu-Can Tho', '0122903794', 'vinhnpgcc19003@fpt.edu.vn', 1, 1, 2000, '', '', 1),
('npvinh', 'e10adc3949ba59abbe56e057f20f883e', 'nguyenphuvinh', 0, 'Can Tho', '0782903794', 'vinh@gmail.com', 26, 9, 2000, '', '', 0),
('vinh', 'fcea920f7412b5da7be0cf42b8c93759', 'vinhnguyen', 0, 'can tho ', '0782903794', 'vinhnpgcc19003@fpt.edu.vn', 2, 2, 2000, '', '', 0),
('vinhnguyen', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Phu Vinh', 0, 'Can Tho', '0782903794', 'vinhnguyen@gmail.com', 26, 9, 2000, '', '', 0),
('vinhvinh', 'e10adc3949ba59abbe56e057f20f883e', 'NPVinh', 0, 'Can Tho', '0122903794', 'vinhvinh@123.com', 26, 9, 2000, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(6) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `DeliveryDate` datetime NOT NULL,
  `Delivery_loca` varchar(200) NOT NULL,
  `Payment` int(11) DEFAULT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` varchar(10) NOT NULL,
  `Product_Name` varchar(30) NOT NULL,
  `Price` bigint(20) DEFAULT NULL,
  `SmallDesc` varchar(1000) NOT NULL,
  `DetailDesc` text NOT NULL,
  `ProDate` datetime NOT NULL,
  `Pro_qty` int(11) DEFAULT NULL,
  `Pro_image` varchar(200) NOT NULL,
  `Cat_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Name`, `Price`, `SmallDesc`, `DetailDesc`, `ProDate`, `Pro_qty`, `Pro_image`, `Cat_ID`) VALUES
('1', 'iPhone11', 1050, 'New product', 'New product', '2021-05-05 14:16:40', 4, 'iPhone11256GB.jpg', '1'),
('2', 'iPhone Xs Max', 730, 'New product', 'New product', '2021-05-05 14:16:47', 5, 'iphonexsmax.jpg', '7'),
('3', 'iPhone12 pro max', 1900, 'New product', 'New product', '2021-05-05 14:16:17', 5, 'iphone12pro256GB.jpg', '4'),
('4', 'iPhone11 pro', 1600, 'New Product', 'New product', '2021-05-05 14:16:33', 3, 'iphone11pro512GB.jpg', '6'),
('6', 'iPhone12', 1800, 'New product', 'New product', '2021-05-05 14:16:26', 5, 'iPhone12256GB.jpg', '3'),
('9', 'iPhone XS', 650, 'New product', 'You can’t talk about iPhone XS features without mentioning the iPhone XS camera. It’s an impressive camera setup, with dual 12MP rear cameras with wide-angle and telephoto lenses, and a 7MP TrueDepth front camera, all of which employ a new sensor, which produces deeper, larger pixels that gather 50% more light for better, brighter photos, especially in low-light.', '2021-05-06 05:23:55', 5, 'iPhoneXS.jpg', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Cat_ID` (`Cat_ID`),
  ADD KEY `Cat_ID_2` (`Cat_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`Username`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`Cat_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
