-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 01:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milktea`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `andress` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `data_order` longtext COLLATE utf8_unicode_ci NOT NULL,
  `total_bill` int(255) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `fullname`, `andress`, `phone`, `date_order`, `data_order`, `total_bill`, `username`) VALUES
(2, 'tetset', 'test', '23434', '2022-11-10', '{\"title\":[\"Ô long sữa\"],\"quantity\":[\"5\"],\"summ\":[\"100000\"]}', 100000, 'testuser1'),
(3, 'test', 'test', '2342', '2022-11-10', '{\"title\":[\"Sữa tươi chân trâu đường đen\"],\"quantity\":[\"3\"],\"summ\":[\"60000\"]}', 60000, 'testuser1'),
(4, 'test', 'tet34', '356323443', '2022-11-10', '{\"title\":[\"Ô long sữa\",\"Trà chanh\"],\"quantity\":[\"5\",\"2\"],\"summ\":[\"100000\",\"40000\"]}', 140000, 'testuser1'),
(5, 'test', 'tét', '2342', '2022-11-10', '{\"title\":[\"Trà chanh\",\"Ô long sữa\"],\"quantity\":[\"6\",\"2\"],\"summ\":[\"120000\",\"40000\"]}', 160000, 'testuser'),
(7, 'abc', 'asafa', '316549', '2022-11-11', '{\"title\":[\"Trà chanh\",\"Ô long sữa\"],\"quantity\":[\"2\",\"3\"],\"summ\":[\"40000\",\"60000\"]}', 100000, 'hai'),
(8, 'abc', 'fafa', '644595959', '2022-11-11', '{\"title\":[\"Ô long sữa\"],\"quantity\":[\"4\"],\"summ\":[\"80000\"]}', 80000, 'hai'),
(9, 'giang', 'tp thai nguyen', '02154849', '2022-11-13', '{\"title\":[\"Ô long sữa\",\"Trà chanh\"],\"quantity\":[\"1\",\"1\"],\"summ\":[\"15000\",\"20000\"]}', 35000, 'hai');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `title`, `img`, `quantity`, `price`, `username`, `id_product`) VALUES
(30, 'Ô long sữa', 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/201891491_136509795235156_9109126174305572158_n.jpg', 1, 15000, '', 1),
(31, 'Ô long sữa', 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/201891491_136509795235156_9109126174305572158_n.jpg', 1, 15000, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `img`) VALUES
(1, 'Trà sữa', 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/milktea.jpg'),
(2, 'Trà', 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/215-2154368_-tea-logo-tea-drinks.png'),
(3, 'Cà phê', 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/5cad92b70babb2514f8d47e54ea54b1a.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regular_price` int(11) NOT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `descrip` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `regular_price`, `sale_price`, `price`, `img`, `descrip`, `id_category`) VALUES
(1, 'Ô long sữa', 20000, 15000, 15000, 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/201891491_136509795235156_9109126174305572158_n.jpg', 'Đây là mô tả', 1),
(2, 'Trà chanh', 20000, 0, 20000, 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/186496799_118417237044412_7996815157559839057_n.jpg', 'Đây là mô tả', 1),
(3, 'Sữa tươi chân trâu đường đen', 20000, 0, 20000, 'https://72.arrowhitech.net/tn3/giang_reactjs/wp-content/uploads/2022/08/245475837_203961185156683_2094285448265039495_n.jpg', 'Đây là mô tả', 1),
(4, 'Nâu đá', 20000, 0, 20000, 'https://suckhoedoisong.qltns.mediacdn.vn/zoom/600_315/Images/duylinh/2018/04/27/ca-phe-loi-hay-hai-cho-suc-khoe1524762701.jpg', 'Đây là mô tả', 1),
(12, 'cocacola', 25000, 20000, 20000, 'https://th.bing.com/th/id/R.6c249ca4c83d9c1dc87461b4182d552a?rik=Bl63fxAYGgaA5w&pid=ImgRaw&r=0', 'cocacola nhập khẩu', 1),
(14, 'adad', 20000, 0, 20000, 'https://th.bing.com/th/id/R.9da842c8a7f471855114845957740d7d?rik=0tG%2fU2ftNkapBg&riu=http%3a%2f%2fwww.derooijgroothandel.nl%2fimages%2fimage%2fCoca_cola_light_0.15_.jpg&ehk=%2bbhI2LPZNXLsLOAWyk0BfI9Rj4nygSbvCxjOUHiDHQA%3d&risl=&pid=ImgRaw&r=0', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `name`) VALUES
(1, 'Manager'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `id_role`) VALUES
(1, 'admin', '123456789', 1),
(11, 'testuser1', '123456789', 2),
(13, 'testuser', '12345678', 2),
(14, 'giang', '123456789', 2),
(15, 'hai', 'hai123456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
