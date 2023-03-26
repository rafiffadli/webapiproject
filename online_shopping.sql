-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 09:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `customer_email`, `customer_phone`) VALUES
(1, 'Muhammad Amsyar', 'muhammadamsyar@test.com', '0190190190'),
(2, 'Rafif Fadli', 'rafiffadli@test.com', '0160160160'),
(3, 'Mohd Afiq', 'mohdafiq@test.com', '0170170170');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `product_description` varchar(256) NOT NULL,
  `product_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_price`) VALUES
(1, 'ASUS GAMING PC GEFORCE RTX™ 3060/3070 I5-12400F/ PRIME B660M-A WIFI/ 16GB RAM/ 500GB NVME/ ASUS TUF ', 'INTEL CORE I5-12400F PROCESSOR\r\nASUS PRIME B660M-A WIFI D4 MOTHERBOARD\r\n2x8GB KINGSTON FURY BEAST RAM\r\n500GB KINGSTON NVME SSD\r\nASUS TUF 750W 80+ BRONZE POWER SUPPLY\r\nTECWARE FORGE M2 TG ARGB GAMING CASING BLACK\r\nASUS TUF RTX3060 12G GDDR6 OC GRAPHICS CARD', 'RM4,699.00'),
(2, 'INFINITE CORE GAMING PC GEFORCE I3-12100F/ MSI H610M-E/ 8GB RAM/ 250GB NVME/ 1ST PLAYER BLACK SIR SR-500W/ 1ST PLAYER B5-M CASE', 'INTEL CORE I3-12100F PROCESSOR\r\nMSI H610M-E MOTHERBOARD\r\n8GB KINGSTON FURY BEAST RAM\r\n250GB KINGSTON NV1 NVME\r\n1ST PLAYER BLACK SIR SR-500W\r\n1ST PLAYER B5-M CASE', 'RM1,989.00'),
(3, 'INFINITE PRIME GAMING PC GEFORCE I5-12400F/ MSI B660M-E D4/ 16GB RAM/ 500GB NVME/ 1ST PLAYER DK5.0 600W BRONZE/ 1ST PLAYER TRILOBITE T3 CASING BLACK', 'INTEL CORE I5-12400F PROCESSOR\r\nMSI B660M-E D4 MOTHERBOARD\r\n16GB (8GBx2) KINGSTON FURY BEAST RAM\r\n500GB KINGSTON NV2 NVME\r\n1ST PLAYER DK5.0 600W BRONZE\r\n1ST PLAYER TRILOBITE T3 CASING BLACK', 'RM3,862.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
