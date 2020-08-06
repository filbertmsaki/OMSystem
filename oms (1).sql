-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 12:13 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'tek', 'tek@oms.com', '5cb8075b5b8e5374f1dfb898e30deff7'),
(2, 'admin', 'admin@oms.com', '0192023a7bbd73250516f069df18b500'),
(3, 'Sur', 'sur@oms.com', 'sur123'),
(4, 'Buso', 'buso@oms.com', 'buso123');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(10) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Samsung'),
(2, 'Oppo'),
(3, 'iPhone'),
(4, 'MI'),
(5, 'Tecno'),
(6, 'Huawei'),
(7, 'Nokia'),
(8, 'Xhaomi'),
(9, 'Blackberry');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buyer_id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`buyer_id`, `fname`, `lname`, `phone`, `email`, `password`, `address`) VALUES
(1, 'Ali', 'Aliin', '00759140094', 'ali@gmail.com', '984d8144fa08bfc637d2825463e184fa', 'Kinondoni Mkwajuni'),
(6, 'Ali', 'Aliin', '00759140094', 'ali@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Kinondoni Mkwajuni'),
(7, 'Amina', 'Amani', '0759140094', 'amina@gmail.com', 'amina123', 'Muleba'),
(8, 'Donna', 'Donee', '0988565621', 'donna@gmail.com', 'donna123', 'Mombo');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(10) DEFAULT NULL,
  `buyer_id` int(10) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `ip_add` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `buyer_id`, `qty`, `ip_add`) VALUES
(1, 13, 0, 1, '127.0.0.1'),
(2, 13, 6, 1, '127.0.0.1'),
(3, 13, 6, 1, '127.0.0.1'),
(4, 13, 6, 1, '127.0.0.1'),
(5, 10, 0, 1, '127.0.0.1'),
(6, 7, 0, 1, '127.0.0.1'),
(7, 10, 0, 1, '127.0.0.1'),
(8, 10, 0, 1, '127.0.0.1'),
(9, 10, 0, 1, '127.0.0.1'),
(10, 13, 0, 1, '127.0.0.1'),
(11, 13, 0, 1, '127.0.0.1'),
(12, 10, 0, 1, '127.0.0.1'),
(13, 7, 0, 1, '127.0.0.1'),
(14, 7, 6, 1, '127.0.0.1'),
(15, 11, 6, 1, '127.0.0.1'),
(16, 10, 6, 1, '127.0.0.1'),
(17, 13, 6, 1, '127.0.0.1'),
(18, 10, 6, 1, '127.0.0.1'),
(19, 7, 6, 1, '127.0.0.1'),
(23, 7, 7, 4, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Android'),
(2, 'iOS'),
(3, 'Windows'),
(4, 'Blackberry');

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `order_id` int(10) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`order_id`, `buyer_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`, `status`) VALUES
(1, 1, 'Ali Aliin', 'ali@gmail.com', 'Kinondoni Mkwajuni', 'ubungo', 'tanzanis', 123456, 'mmjj', '1235678', '12/22', 1, 540000, 123, 'Pending'),
(2, 1, 'Ali Aliin', 'ali@gmail.com', 'Kinondoni Mkwajuni', 'ubungo', 'ubungp', 123456, 'msa', '123456', '12/22', 1, 780000, 123, 'Pending'),
(3, 1, 'Ali Aliin', 'ali@gmail.com', 'Kinondoni Mkwajuni', 'ubungo', 'ubungp', 123456, 'msa', '123456', '12/22', 3, 780000, 123, 'Pending'),
(4, 1, 'Ali Aliin', 'ali@gmail.com', 'Kinondoni Mkwajuni', 'Kibaha', 'kibaha', 123456, 'fake', '1234567890', '11/32', 1, 610000, 123, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `qty` int(15) DEFAULT NULL,
  `amount` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amount`) VALUES
(1, 3, 12, 1, 780000),
(2, 4, 10, 1, 610000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text DEFAULT NULL,
  `product_price` int(100) NOT NULL,
  `seller_id` int(10) DEFAULT NULL,
  `cat_id` int(10) DEFAULT NULL,
  `brand_id` int(10) DEFAULT NULL,
  `product_keywords` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_image`, `product_price`, `seller_id`, `cat_id`, `brand_id`, `product_keywords`) VALUES
(7, 'Tecno J8', 'Barand new Tecno J8, Storage 32GB', '1596394735_tecno.jpg', 540000, NULL, 1, 6, 'Tecno J8 Android'),
(10, 'Huawei P40', 'Huawei storage 128gb ram 4gb', '1596395561_HuaweiP40.jpg', 610000, NULL, 1, 1, 'Huawei P40'),
(11, 'Brackberry B1', 'Barand new Brackberry Smart phone, Storage 32GB', '1596520184_b1.jpg', 430000, NULL, 4, 9, 'Brackberry B1'),
(12, 'Iphone 10 pro', 'Barand new iPhone 10 pro, Storage 32GB', '1596644473_i10.jpg', 780000, NULL, 2, 3, 'iPhone 10 Pro'),
(20, 'Iphone X', 'Barand new iPhone 10 pro, Storage 64GB', '1596644556_i10.jpg', 980000, NULL, 2, 3, 'iPhone X');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `fname`, `lname`, `email`, `phone`, `address`, `password`) VALUES
(2, 'Amani', 'Hakeem', 'amani@oms.com', '0737777222', 'Moshi', 'amani123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_pro_product` (`product_id`),
  ADD KEY `order_pro_order` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `pro_brand` (`brand_id`),
  ADD KEY `pro_cat` (`cat_id`),
  ADD KEY `pro_seller` (`seller_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `buyer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_info`
--
ALTER TABLE `order_info`
  ADD CONSTRAINT `order_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_pro_order` FOREIGN KEY (`order_id`) REFERENCES `order_info` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_pro_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `pro_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pro_cat` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pro_seller` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
