-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2024 at 02:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `password`) VALUES
(1, 'admin', 1777777777, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_qty` int NOT NULL,
  `order_amount` float NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL,
  `desc` longtext NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `title`, `price`, `qty`, `desc`, `image`) VALUES
(10001, 1001, 'Samsung', 2000, 20, 'Mobile description Add....', 'product_1.png'),
(10002, 1002, 'iphone', 1800, 25, 'Mobile description Add....', 'product_2.png'),
(10003, 1001, 'Realme', 2200, 30, 'Mobile description Add....', 'product_3.png'),
(10004, 1002, 'Samsung', 1200, 15, 'Mobile description Add....', 'product_4.png'),
(10005, 1002, 'Infinix', 1500, 32, 'Mobile description Add....', 'product_5.png'),
(10006, 1003, 'Samsung', 2700, 16, 'Mobile description Add....', 'product_6.png'),
(10007, 1003, 'Infinix', 1400, 36, 'Mobile description Add....', 'product_7.png'),
(10008, 1004, 'Samsung', 2200, 18, 'Mobile description Add....', 'product_8.png'),
(10009, 1004, 'Samsung', 2400, 30, 'Mobile description Add....', 'product_9.png'),
(10010, 1004, 'Realme', 2800, 50, 'Mobile description Add....', 'product_10.png'),
(10011, 1005, 'Samsung', 1700, 19, 'Mobile description Add....', 'product_11.png'),
(10012, 1005, 'Samsung', 2900, 42, 'Mobile description Add....', 'product_12.png'),
(10013, 1006, 'Infinix', 2800, 15, 'Mobile description Add....', 'product_13.png'),
(10014, 1006, 'Zeni ZZ', 2000, 32, 'Mobile description Add....', 'product_14.png'),
(10015, 1006, 'Samsung', 1200, 40, 'Mobile description Add....', 'product_15.png'),
(10016, 1006, 'Infinix', 2100, 35, 'Mobile description Add....', 'product_16.png'),
(10017, 1006, 'Samsung', 800, 36, 'Mobile description Add....', 'product_17.png'),
(10018, 1006, 'Infinix', 1300, 25, 'Mobile description Add....', 'product_18.png'),
(10019, 1007, 'Samsung', 2100, 26, 'Mobile description Add....', 'product_19.png'),
(10020, 1007, 'infinix', 2400, 12, 'Mobile description Add....', 'product_20.png'),
(10021, 1007, 'Redme', 2600, 24, 'Mobile description Add....', 'product_21.png'),
(10022, 1007, 'Samsung', 900, 45, 'Mobile description Add....', 'product_22.png'),
(10023, 1007, 'Samsung', 900, 45, 'Mobile description Add....', 'product_23.png'),
(10024, 1007, 'Realme', 1700, 50, 'Mobile description Add....', 'product_24.png'),
(10025, 1008, 'Samsung', 1600, 38, 'Mobile description Add....', 'product_25.png'),
(10026, 1008, 'Lithops', 1800, 32, 'They are also known as “living stones”, as they closely resemble pebbles and small stones.Due to their deceiving appearance, lithops will dazzle your guests!', 'product_26.png'),
(10027, 1008, 'Haworthia', 1300, 29, 'A real stand-out succulent plant, the striped appearance of the zebra Haworthia looks amazing. This slow-growing plant grows more than 6-8 inches in height. In addition, Haworthia is an ideal indoor plant to squeeze into tiny nooks.', 'product_27.png'),
(10028, 1009, 'Bromeliads', 2200, 30, 'One of the beautiful plants that bloom flowers in a range of colours including purple, pink, and white.', 'product_28.png'),
(10029, 1009, 'Baby Tears', 1800, 40, 'Baby Tears tolerate a range of light conditions, so they grow well on a windowsill or in a darker corner. Being a succulent, well-draining potting mix and irregular watering is important to keep this plant in good health.', 'product_29.png'),
(10030, 1010, 'Giant Air Plant', 2200, 32, 'The plant\'s main requirement is bright, filtered light, so a spot on the patio or deck where it will receive indirect sunlight would be the best choice.', 'product_30.png'),
(10031, 1010, 'Sky Plant', 2000, 45, 'They are always happiest with some fresh airflow and nutrients from the air. While they can survive indoors, they will be happiest in an open window.', 'product_31.png'),
(10032, 1010, 'Bulbosa Belize', 2500, 35, 'This air plant has long twisted curly leaves grown from a large bulbous base. Its leaves can turn from green to bright red when the Bulbosa is about to bloom beautiful tubular bright purple flowers.', 'product_32.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile`, `email`, `password`) VALUES
(101, 'Abu', 'Sufian', 1303193582, 'abusufian@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10033;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
