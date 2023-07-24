-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2023 at 09:14 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aromacoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake`
--

DROP TABLE IF EXISTS `cake`;
CREATE TABLE IF NOT EXISTS `cake` (
  `id` varchar(5) NOT NULL,
  `image` varchar(25) NOT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cake`
--

INSERT INTO `cake` (`id`, `image`, `title`, `description`, `price`) VALUES
('C01', 'tiramisu.jpeg', 'Tiramisu Cake', 'Coffee flavoured Italian dessert made with Oreo base, cream cheese & dark chocolate.', '12.60'),
('C02', 'chocomuffin.jpg', 'Chocolate Muffin', 'Sinful chocolate chip muffin with decadent chocolate lava filling that could make you fall in love instantly.', '6.50');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_ID` int NOT NULL AUTO_INCREMENT,
  `cart_Product` text NOT NULL,
  `cart_Type` text NOT NULL,
  `cart_Qty` int NOT NULL,
  `cart_Amount` float NOT NULL,
  `cart_Remark` text NOT NULL,
  `cart_CustomerID` int NOT NULL,
  `Payment_ID` int DEFAULT NULL,
  PRIMARY KEY (`cart_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coffee`
--

DROP TABLE IF EXISTS `coffee`;
CREATE TABLE IF NOT EXISTS `coffee` (
  `id` varchar(5) NOT NULL,
  `image` varchar(25) NOT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `hotPrice` decimal(10,2) NOT NULL,
  `coldPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coffee`
--

INSERT INTO `coffee` (`id`, `image`, `title`, `description`, `hotPrice`, `coldPrice`) VALUES
('D01', 'latte.jpeg', 'Latte', 'Rich espresso, steamed milk and a dollop of foam.', '8.50', '9.50'),
('D02', 'chocolate.jpg', 'Chocolate', 'Made with Australian chocolate. (337kcal)', '10.00', '11.00');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
CREATE TABLE IF NOT EXISTS `credit_card` (
  `card_ID` int NOT NULL AUTO_INCREMENT,
  `card_number` int NOT NULL,
  `card_cvv` int NOT NULL,
  `card_expiry_month` int NOT NULL,
  `card_expiry_year` int NOT NULL,
  PRIMARY KEY (`card_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`card_ID`, `card_number`, `card_cvv`, `card_expiry_month`, `card_expiry_year`) VALUES
(1, 1234567, 344, 7, 2025);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_name` text NOT NULL,
  `Customer_password` text NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_name`, `Customer_password`) VALUES
(1, 'test', '$2y$10$.kDIAotc7Zg9J604FcuMQ.33Bk2gwVujdlkN7xrLa.dY8iCYVyg5C');

-- --------------------------------------------------------

--
-- Table structure for table `juice`
--

DROP TABLE IF EXISTS `juice`;
CREATE TABLE IF NOT EXISTS `juice` (
  `id` varchar(5) NOT NULL,
  `image` varchar(25) NOT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `juice`
--

INSERT INTO `juice` (`id`, `image`, `title`, `description`, `price`) VALUES
('J01', 'watermelon.jpg', 'Watermelon Juice', 'Try out our refreshing watermelon juice if it is a hot day.', '7.50'),
('J02', 'apple.jpeg', 'Apple Juice', 'Sweet apple juice that will bring you a lot of happiness.', '6.50');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `amount` float NOT NULL,
  `Address` text NOT NULL,
  `Payment_method` text NOT NULL,
  `Payment_Date` date NOT NULL,
  `order_number` int NOT NULL,
  `card_cvc` text NOT NULL,
  `card_expiry_month` text NOT NULL,
  `card_expiry_year` text NOT NULL,
  `card_holder_number` text NOT NULL,
  `customer_name` text NOT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Customer_ID`, `amount`, `Address`, `Payment_method`, `Payment_Date`, `order_number`, `card_cvc`, `card_expiry_month`, `card_expiry_year`, `card_holder_number`, `customer_name`) VALUES
(1, 1, 37.8, 'test', 'card', '2023-04-27', 781660, '', '07', '2025', '1234567', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
