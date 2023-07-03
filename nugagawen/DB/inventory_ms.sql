-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 06:07 PM
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
-- Database: `inventory_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Tops'),
(2, 'Dresses'),
(3, 'Pants'),
(8, 'Ternoes');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `uploaded_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_image`, `price`, `category_id`, `uploaded_date`) VALUES
(8, 'Yankee Classic Plain T-shirt (U)', 'Fabric: 150-170 GSM COTTON SPANDEX (NOT 100% cotton)', './uploads/90e9aaa5c187fa7b1cf23c788612be81.jfif', 250, 1, '2023-06-22'),
(12, 'KOREAN OVERSIZED (U)', 'Fabric /Fabric Color: WHITE COTTON SPANDEX', './uploads/5fc9482c4ae66a33e27f6939fa1ae642.jfif', 400, 1, '2023-06-22'),
(14, 'RUFFLES STRAP SMOCKING (F)', 'RUFFLES STRAP SMOCKING PAMBAHAY DRESS ', './uploads/Dress pambahay.jpg', 250, 2, '2023-06-28'),
(19, 'Joggers (U)', 'Functional and durable pants with multiple pockets for men and women', './uploads/jogger.jpg', 450, 3, '2023-06-29'),
(20, 'Linen Trousers (M)', 'Lightweight and breathable trousers made from linen fabric for men.', './uploads/-1117Wx1400H-461682459-beige-MODEL.avif', 450, 3, '2023-06-29'),
(21, 'High-Waisted Trousers (F)', 'Lightweight and breathable trousers made from linen fabric for men.', './uploads/high_rise_trousers_1658215401_e2e52321_progressive.jpg', 600, 3, '2023-06-29'),
(22, 'Jeans (M)', 'Classic denim pants for men', './uploads/s-l1200.webp', 600, 3, '2023-06-29'),
(23, 'Jeans (F)', 'Stylish denim pants for women', './uploads/http___static.theiconic.com.au_p_levis-9534-3291761-1.jpg', 650, 3, '2023-06-29'),
(24, 'Lily Floral Dress (F)', ' Beautiful and feminine dress adorned with lily flower print for women', './uploads/20230629_074611~2.jpg', 400, 2, '2023-06-29'),
(30, 'Terno', 'This is a pair', './uploads/653273.jpg', 555, 8, '2023-06-29'),
(31, 'Comfy Lounge Pant', 'Relax in style with these comfy lounge pants. Made from soft and breathable fabric, they offer a loose and relaxed fit. These pants feature an elastic waistband, a drawstring closure, and side pockets. Perfect for lounging at home or running errands in comfort', './uploads/comfylogo.png', 2500, 3, '2023-06-29'),
(32, 'Ternoes 2', 'A new pair ', './uploads/332588.jpg', 5788, 8, '2023-06-30'),
(35, 'Abawe', 'ASDASDASD', './uploads/JZ_Suza-Set-Pink_1080X1440.jpg', 233, 8, '2023-06-30'),
(36, 'AVASDASD', 'fewsfcsefsef', './uploads/download.jfif', 242, 8, '2023-06-30'),
(37, 'ASFASF', '1fasdascasdd', './uploads/aaaadownload (1).jfif', 2131, 8, '2023-07-01'),
(38, 'ASDASDASD', 'aSDASDASDasd', './uploads/summer_outfit_terno_1654926236_fa9dd132_progressive.jpg', 1243, 8, '2023-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `product_size_variation`
--

CREATE TABLE `product_size_variation` (
  `variation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity_in_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_size_variation`
--

INSERT INTO `product_size_variation` (`variation_id`, `product_id`, `size_id`, `quantity_in_stock`) VALUES
(1, 1, 4, 5),
(2, 2, 3, 9),
(3, 2, 2, 3),
(6, 3, 3, 6),
(7, 4, 2, 8),
(8, 5, 4, 8),
(9, 6, 2, 10),
(10, 7, 2, 10),
(11, 8, 1, 15),
(13, 8, 3, 15),
(14, 8, 2, 10),
(15, 8, 7, 15),
(16, 12, 1, 15),
(17, 12, 3, 15),
(18, 12, 7, 15),
(19, 14, 1, 15),
(20, 14, 3, 15),
(21, 14, 7, 15),
(22, 19, 1, 15),
(23, 19, 3, 15),
(25, 19, 7, 15);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`size_id`, `size_name`) VALUES
(1, 'S'),
(3, 'M'),
(7, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `u_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `registered_at` date NOT NULL DEFAULT current_timestamp(),
  `isAdmin` int(11) NOT NULL DEFAULT 0,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `u_name`, `name`, `last_name`, `email`, `password`, `contact_no`, `registered_at`, `isAdmin`, `user_address`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '9810283472', '2022-04-10', 1, 'newroad'),
(2, '', 'Test ', 'Firstuser', 'test@gmail.com', '$2y$10$DJOdhZy1InHTKQO6whfyJexVTZCDTlmIYGCXQiPTv7l82AdC9bWHO', '980098322', '2022-04-10', 0, 'matepani-12'),
(3, '', 'jerald', 'sabado', 'jerald@gmail.com', 'b4453e054afb0b8d97bfb291da5a5ac8', '933958234', '2023-06-19', 0, 'Cavite');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_size_variation`
--
ALTER TABLE `product_size_variation`
  ADD PRIMARY KEY (`variation_id`),
  ADD UNIQUE KEY `uc_ps` (`product_id`,`size_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_size_variation`
--
ALTER TABLE `product_size_variation`
  MODIFY `variation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
