-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 10:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ice-cream`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `packing` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `packing`) VALUES
(1, '5 Liter Packing', 'Liter'),
(2, 'Party Pack', 'Pieces'),
(3, 'Candy', 'Ml'),
(4, 'KULFI', NULL),
(5, 'CUP', NULL),
(6, 'ROLL', NULL),
(7, 'PASTRY', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flavour`
--

CREATE TABLE `flavour` (
  `id` int(11) NOT NULL,
  `flavour` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flavour`
--

INSERT INTO `flavour` (`id`, `flavour`) VALUES
(1, 'VANILA'),
(2, 'PISTA'),
(3, 'SPECIAL STRAWBERRY'),
(4, 'PLANE CHOCALATE'),
(5, 'TUTI FRUITY'),
(6, 'RASPBERRY RIPPLE'),
(7, 'MELLO ZELLO'),
(8, 'PINEAPPLE'),
(9, 'FRESH STRAWBERRY'),
(10, 'MANGO'),
(11, 'BUTTER SCOTCH'),
(12, 'CHOCALATE RIPPLE'),
(13, 'BLACK CURRENT'),
(14, 'CASSATA'),
(15, 'MIX FRUIT'),
(16, 'BANARASI PAN MASALA'),
(17, 'FALUDA'),
(18, 'RAS MALAI'),
(19, 'CHOCALATE CHIPS'),
(20, 'SAHI GULAB'),
(21, 'TENDER COCONUT'),
(22, 'KAJU DRAKASH'),
(23, 'AMERICAN NUTS'),
(24, 'COOKIES N CREAM'),
(25, 'CHOCALATE BROWNI'),
(26, 'FRESH SHITAFAL'),
(27, 'KIWI'),
(28, 'ANJEER BADAM'),
(29, 'COFFEE'),
(30, 'BELJIUM CHOCALATE'),
(31, 'ROYAL RAJBHOG'),
(32, 'KASHMIRI KESAR PISTA'),
(33, 'GEMS & CAKE'),
(34, 'BLACK FOREST'),
(35, 'ROSTED ALMOND'),
(36, 'VALINA PP'),
(37, 'PISTA PP'),
(39, 'STRAWBERRY PP'),
(40, 'MIX FRUIT PP'),
(41, 'BUTTER SCOTCH PP'),
(42, 'PALI CHOCALATE PP'),
(43, 'CHOCALATE CHIPS PP'),
(44, 'COOKIES N CREAM PP'),
(45, 'MANGO PP'),
(46, 'FALUDA PP'),
(47, 'KESAR PISTA PP'),
(48, 'RASMALAI PP'),
(49, 'BLACK FOREST PP'),
(50, 'ROYAL RAJBHOG PP'),
(51, 'ORANGE CANDY 80ML'),
(52, 'MANGO CANDY 80ML'),
(53, 'RASPBERRY DOLLY 80ML'),
(54, 'MANGO DOLLY 80ML'),
(55, 'MINI CHOCOBAR'),
(56, 'MALAI KULFI 100ML'),
(57, 'KESAR KING KULFI 100ML'),
(58, 'AMERICAN NUTS KULFI 100ML'),
(59, 'SAHI GULAB KULFI 100ML'),
(60, 'RABDI MALAI KULFI 80ML'),
(61, 'KESAR PISTA MALAI KULFI 80ML'),
(62, 'RAJBHOG KULFI '),
(63, 'VANILA CUP 70ML'),
(64, 'SPECIAL STRAWBERRY CUP 70ML'),
(65, 'PISTA CUP 70ML'),
(66, 'PLANE CHOCALATE CUP 70ML'),
(67, 'BUTTER SCOTCH CUP 100ML'),
(68, 'REAL MANGO CUP 100ML'),
(69, 'CHIC CHOC ROLL'),
(70, 'BLACK FOREST PASTRY 100ML\r\n'),
(71, 'CASSATA 150ML'),
(72, 'JAMBO CHOCOBAR 80ML');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `flavour` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `packing` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `flavour`, `category`, `packing`, `date`, `quantity`) VALUES
(1, 'VANILA', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(2, 'PISTA', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(3, 'SPECIAL STRAWBERRY', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(4, 'PLANE CHOCALATE', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(5, 'TUTI FRUITY', '5 Liter Packing', 'Liter', '2022-08-19', 25),
(6, 'RASPBERRY RIPPLE', '5 Liter Packing', 'Liter', '2022-08-19', 25),
(7, 'MELLO ZELLO', '5 Liter Packing', 'Liter', '2022-08-19', 25),
(8, 'PINEAPPLE', '5 Liter Packing', 'Liter', '2022-08-19', 25),
(9, 'FRESH STRAWBERRY', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(10, 'MANGO', '5 Liter Packing', 'Liter', '2022-08-19', 25),
(11, 'BUTTER SCOTCH', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(12, 'CHOCALATE RIPPLE', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(13, 'CASSATA', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(14, 'MIX FRUIT', '5 Liter Packing', 'Liter', '2022-08-19', 35),
(15, 'BANARASI PAN MASALA', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(16, 'FALUDA', '5 Liter Packing', 'Liter', '2022-08-19', 75),
(17, 'RAS MALAI', '5 Liter Packing', 'Liter', '2022-08-19', 75),
(18, 'CHOCALATE CHIPS', '5 Liter Packing', 'Liter', '2022-08-19', 75),
(19, 'SAHI GULAB', '5 Liter Packing', 'Liter', '2022-08-19', 25),
(20, 'TENDER COCONUT', '5 Liter Packing', 'Liter', '2022-08-19', 35),
(21, 'KAJU DRAKASH', '5 Liter Packing', 'Liter', '2022-08-19', 35),
(22, 'AMERICAN NUTS', '5 Liter Packing', 'Liter', '2022-08-19', 35),
(23, 'COOKIES N CREAM', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(24, 'CHOCALATE BROWNI', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(25, 'FRESH SHITAFAL', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(26, 'KIWI', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(27, 'ANJEER BADAM', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(28, 'COFFEE', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(29, 'BELJIUM CHOCALATE', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(30, 'ROYAL RAJBHOG', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(31, 'KASHMIRI KESAR PISTA', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(32, 'GEMS & CAKE', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(33, 'BLACK FOREST', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(34, 'ROSTED ALMOND', '5 Liter Packing', 'Liter', '2022-08-19', 50),
(35, 'VALINA PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(36, 'PISTA PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(37, 'STRAWBERRY PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(38, 'MIX FRUIT PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(39, 'BUTTER SCOTCH PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(40, 'PALI CHOCALATE PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(41, 'CHOCALATE CHIPS PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(42, 'COOKIES N CREAM PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(43, 'MANGO PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(44, 'FALUDA PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(45, 'KESAR PISTA PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(46, 'RASMALAI PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(47, 'BLACK FOREST PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(48, 'ROYAL RAJBHOG PP', 'Party Pack', 'Pieces', '2022-08-19', 5),
(49, 'ORANGE CANDY 80ML', 'Candy', 'Pieces', '2022-08-19', 100),
(50, 'MANGO CANDY 80ML', 'Candy', 'Pieces', '2022-08-19', 100),
(51, 'RASPBERRY DOLLY 80ML', 'Candy', 'Pieces', '2022-08-19', 100),
(52, 'MANGO DOLLY 80ML', 'Candy', 'Pieces', '2022-08-19', 100),
(53, 'JAMBO CHOCOBAR 80ML', 'Candy', 'Pieces', '2022-08-19', 100),
(54, 'MINI CHOCOBAR', 'Candy', 'Liter', '2022-08-19', 120),
(55, 'MALAI KULFI 100ML', 'KULFI', 'Pieces', '2022-08-19', 50),
(56, 'KESAR KING KULFI 100ML', 'KULFI', 'Pieces', '2022-08-19', 50),
(57, 'AMERICAN NUTS KULFI 100ML', 'KULFI', 'Pieces', '2022-08-19', 50),
(58, 'SAHI GULAB KULFI 100ML', 'KULFI', 'Pieces', '2022-08-19', 50),
(59, 'RABDI MALAI KULFI 80ML', 'KULFI', 'Pieces', '2022-08-19', 100),
(60, 'KESAR PISTA MALAI KULFI 80ML', 'KULFI', 'Pieces', '2022-08-19', 100),
(61, 'RAJBHOG KULFI ', 'KULFI', 'Pieces', '2022-08-19', 100),
(62, 'VANILA CUP 70ML', 'CUP', 'Pieces', '2022-08-19', 24),
(63, 'SPECIAL STRAWBERRY CUP 70ML', 'CUP', 'Pieces', '2022-08-19', 24),
(64, 'PISTA CUP 70ML', 'CUP', 'Pieces', '2022-08-19', 24),
(65, 'PLANE CHOCALATE CUP 70ML', 'CUP', 'Pieces', '2022-08-19', 24),
(66, 'BUTTER SCOTCH CUP 100ML', 'CUP', 'Pieces', '2022-08-19', 12),
(67, 'REAL MANGO CUP 100ML', 'CUP', 'Pieces', '2022-08-19', 12),
(68, 'CHIC CHOC ROLL', 'ROLL', 'Pieces', '2022-08-19', 40),
(69, 'BLACK FOREST PASTRY 100ML', 'PASTRY', 'Pieces', '2022-08-19', 20),
(70, 'CASSATA 150ML', 'CUP', 'Pieces', '2022-08-19', 40);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `flavour` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `packing` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `customer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `packing` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `flavour` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `category`, `packing`, `quantity`, `flavour`) VALUES
(1, '5 Liter Packing', 'Liter', 50, 'VANILA'),
(2, '5 Liter Packing', 'Liter', 50, 'PISTA'),
(3, '5 Liter Packing', 'Liter', 50, 'SPECIAL STRAWBERRY'),
(4, '5 Liter Packing', 'Liter', 50, 'PLANE CHOCALATE'),
(5, '5 Liter Packing', 'Liter', 25, 'TUTI FRUITY'),
(6, '5 Liter Packing', 'Liter', 25, 'RASPBERRY RIPPLE'),
(7, '5 Liter Packing', 'Liter', 25, 'MELLO ZELLO'),
(8, '5 Liter Packing', 'Liter', 25, 'PINEAPPLE'),
(9, '5 Liter Packing', 'Liter', 50, 'FRESH STRAWBERRY'),
(10, '5 Liter Packing', 'Liter', 25, 'MANGO'),
(11, '5 Liter Packing', 'Liter', 50, 'BUTTER SCOTCH'),
(12, '5 Liter Packing', 'Liter', 50, 'CHOCALATE RIPPLE'),
(13, '5 Liter Packing', 'Liter', 50, 'CASSATA'),
(14, '5 Liter Packing', 'Liter', 35, 'MIX FRUIT'),
(15, '5 Liter Packing', 'Liter', 50, 'BANARASI PAN MASALA'),
(16, '5 Liter Packing', 'Liter', 75, 'FALUDA'),
(17, '5 Liter Packing', 'Liter', 75, 'RAS MALAI'),
(18, '5 Liter Packing', 'Liter', 75, 'CHOCALATE CHIPS'),
(19, '5 Liter Packing', 'Liter', 25, 'SAHI GULAB'),
(20, '5 Liter Packing', 'Liter', 35, 'TENDER COCONUT'),
(21, '5 Liter Packing', 'Liter', 35, 'KAJU DRAKASH'),
(22, '5 Liter Packing', 'Liter', 35, 'AMERICAN NUTS'),
(23, '5 Liter Packing', 'Liter', 50, 'COOKIES N CREAM'),
(24, '5 Liter Packing', 'Liter', 50, 'CHOCALATE BROWNI'),
(25, '5 Liter Packing', 'Liter', 50, 'FRESH SHITAFAL'),
(26, '5 Liter Packing', 'Liter', 50, 'KIWI'),
(27, '5 Liter Packing', 'Liter', 50, 'ANJEER BADAM'),
(28, '5 Liter Packing', 'Liter', 50, 'COFFEE'),
(29, '5 Liter Packing', 'Liter', 50, 'BELJIUM CHOCALATE'),
(30, '5 Liter Packing', 'Liter', 50, 'ROYAL RAJBHOG'),
(31, '5 Liter Packing', 'Liter', 50, 'KASHMIRI KESAR PISTA'),
(32, '5 Liter Packing', 'Liter', 50, 'GEMS & CAKE'),
(33, '5 Liter Packing', 'Liter', 50, 'BLACK FOREST'),
(34, '5 Liter Packing', 'Liter', 50, 'ROSTED ALMOND'),
(35, 'Party Pack', 'Pieces', 5, 'VALINA PP'),
(36, 'Party Pack', 'Pieces', 5, 'PISTA PP'),
(37, 'Party Pack', 'Pieces', 5, 'STRAWBERRY PP'),
(38, 'Party Pack', 'Pieces', 5, 'MIX FRUIT PP'),
(39, 'Party Pack', 'Pieces', 5, 'BUTTER SCOTCH PP'),
(40, 'Party Pack', 'Pieces', 5, 'PALI CHOCALATE PP'),
(41, 'Party Pack', 'Pieces', 5, 'CHOCALATE CHIPS PP'),
(42, 'Party Pack', 'Pieces', 5, 'COOKIES N CREAM PP'),
(43, 'Party Pack', 'Pieces', 5, 'MANGO PP'),
(44, 'Party Pack', 'Pieces', 5, 'FALUDA PP'),
(45, 'Party Pack', 'Pieces', 5, 'KESAR PISTA PP'),
(46, 'Party Pack', 'Pieces', 5, 'RASMALAI PP'),
(47, 'Party Pack', 'Pieces', 5, 'BLACK FOREST PP'),
(48, 'Party Pack', 'Pieces', 5, 'ROYAL RAJBHOG PP'),
(49, 'Candy', 'Pieces', 100, 'ORANGE CANDY 80ML'),
(50, 'Candy', 'Pieces', 100, 'MANGO CANDY 80ML'),
(51, 'Candy', 'Pieces', 100, 'RASPBERRY DOLLY 80ML'),
(52, 'Candy', 'Pieces', 100, 'MANGO DOLLY 80ML'),
(53, 'Candy', 'Pieces', 100, 'JAMBO CHOCOBAR 80ML'),
(54, 'Candy', 'Liter', 120, 'MINI CHOCOBAR'),
(55, 'KULFI', 'Pieces', 50, 'MALAI KULFI 100ML'),
(56, 'KULFI', 'Pieces', 50, 'KESAR KING KULFI 100ML'),
(57, 'KULFI', 'Pieces', 50, 'AMERICAN NUTS KULFI 100ML'),
(58, 'KULFI', 'Pieces', 50, 'SAHI GULAB KULFI 100ML'),
(59, 'KULFI', 'Pieces', 100, 'RABDI MALAI KULFI 80ML'),
(60, 'KULFI', 'Pieces', 100, 'KESAR PISTA MALAI KULFI 80ML'),
(61, 'KULFI', 'Pieces', 100, 'RAJBHOG KULFI '),
(62, 'CUP', 'Pieces', 24, 'VANILA CUP 70ML'),
(63, 'CUP', 'Pieces', 24, 'SPECIAL STRAWBERRY CUP 70ML'),
(64, 'CUP', 'Pieces', 24, 'PISTA CUP 70ML'),
(65, 'CUP', 'Pieces', 24, 'PLANE CHOCALATE CUP 70ML'),
(66, 'CUP', 'Pieces', 12, 'BUTTER SCOTCH CUP 100ML'),
(67, 'CUP', 'Pieces', 12, 'REAL MANGO CUP 100ML'),
(68, 'ROLL', 'Pieces', 40, 'CHIC CHOC ROLL'),
(69, 'PASTRY', 'Pieces', 20, 'BLACK FOREST PASTRY 100ML'),
(70, 'CUP', 'Pieces', 40, 'CASSATA 150ML');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'ashit', 'aj1550');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flavour`
--
ALTER TABLE `flavour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flavour`
--
ALTER TABLE `flavour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
