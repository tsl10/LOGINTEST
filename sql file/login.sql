-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 11:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--
CREATE DATABASE login;

use login;

CREATE TABLE `cvs` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `size` varchar(6) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvs`
--

INSERT INTO `cvs` (`id`, `email`, `filename`, `mime_type`, `size`, `uploaded_at`) VALUES
(1, 'akshatabansode7304@gmail.com', 'Laptop_invoice.pdf', 'application/pdf', '128803', '2024-09-27 09:36:17'),
(2, 'ab@gmail.com', 'Laptop_invoice(1).pdf', 'application/pdf', '128803', '2024-09-27 10:06:19'),
(3, 'akshatabansode7304@gmail.com', 'invoice-summary-554500218416.pdf', 'application/pdf', '582862', '2024-09-27 11:09:57'),
(4, 'sanjay@gmail.com', 'Delivery_Challan-iTherm.pdf', 'application/pdf', '132499', '2024-09-27 12:00:47'),
(5, 'sanjay@gmail.com', 'Delivery_Challan-iTherm(1).pdf', 'application/pdf', '132499', '2024-09-27 12:02:53'),
(6, 'x@gmail.com', 'Laptop_invoice(2).pdf', 'application/pdf', '128803', '2024-10-01 04:46:58'),
(7, 'x@gmail.com', 'Laptop_invoice.pdf', 'application/pdf', '128803', '2024-10-01 04:49:34'),
(8, 'akshatabansode7304@gmail.com', 'Check_your_warranty_or_service_status.pdf', 'application/pdf', '135408', '2024-10-01 10:45:39'),
(9, 'akshatabansode7304@gmail.com', 'itemized-invoice-554500218416.pdf', 'application/pdf', '694944', '2024-10-01 11:06:14'),
(10, 'akshatabansode7304@gmail.com', 'LDWK_3049856_Grp1_07102024.PDF', 'application/pdf', '55900', '2024-10-18 04:38:36'),
(11, 'akshatabansode7304@gmail.com', 'airtel_bill.pdf', 'application/pdf', '523212', '2024-10-22 05:00:59'),
(12, 'test@gmail.com', 'Replace_Battery_.pdf', 'application/pdf', '109476', '2024-10-22 05:02:39'),
(13, 'akshatabansode7304@gmail.com', 'IT-assignment_.pdf', 'application/pdf', '79881', '2024-10-22 10:22:57'),
(14, 'a@gmail.com', 'itemized-invoice-531500227554.pdf', 'application/pdf', '100304', '2024-10-23 07:04:08'),
(15, 'abc@gmail.comm', 'IT-assignment_(1).pdf', 'application/pdf', '79881', '2024-10-23 11:38:47'),
(16, 'it@gmail.com', 'invoice-summary-552500220708.pdf', 'application/pdf', '588572', '2024-10-28 09:46:12'),
(17, 'akshatabansode7305@gmail.com', 'itemized-invoice-531500227554(1).pdf', 'application/pdf', '100304', '2024-10-28 10:29:39'),
(18, 'akshatabansode7305@gmail.com', 'Microsoft_account___Order_history.pdf', 'application/pdf', '152631', '2024-10-29 05:15:41'),
(19, 'akshatabansode7305@gmail.com', 'Delivery_Challan-iTherm.pdf', 'application/pdf', '132499', '2024-10-29 05:57:04'),
(20, 'csss@gmail.com', 'airtel_bill(1).pdf', 'application/pdf', '523212', '2024-10-29 09:52:37'),
(21, 'akshatabansode7305@gmail.com', 'itemized-invoice-526500235361.pdf', 'application/pdf', '729330', '2024-11-05 05:49:48'),
(22, 'akshatabansode7305@gmail.com', 'itemized-invoice-517000259663.pdf', 'application/pdf', '100236', '2024-11-06 06:24:49'),
(23, 'akshatabansode7305@gmail.com', 'itemized-invoice-517000259663(1).pdf', 'application/pdf', '100236', '2024-11-06 11:20:52'),
(24, 'akshatabansode7305@gmail.com', 'itemized-invoice-517000259663(2).pdf', 'application/pdf', '100236', '2024-11-07 04:32:18'),
(25, 'akshatabansode7305@gmail.com', 'itemized-invoice-517000259663(3).pdf', 'application/pdf', '100236', '2024-11-07 04:33:04'),
(26, 'akshatabansode7305@gmail.com', 'itemized-invoice-526500235361(1).pdf', 'application/pdf', '729330', '2024-11-07 10:04:24'),
(27, 'abc@gmail.com', 'Replace_Battery_(1).pdf', 'application/pdf', '109476', '2024-11-08 04:42:46'),
(28, 'sagar@gmail.com', 'CV.doc', 'application/msword', '146432', '2024-11-11 11:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
use login;
CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` tinytext NOT NULL,
  `otp` varchar(6) NOT NULL,
  `otp_expiry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `role`, `otp`, `otp_expiry`) VALUES
(1, 'akshata', 'bansode', 'akshatabansode7304@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '2024-10-28 16:26:00'),
(2, 'akshu', 'akshu', 'a@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '2024-10-28 16:26:00'),
(3, 'a', 'b', 'ab@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '2024-10-28 16:26:00'),
(4, 'sanjay', 'sanjay', 'sanjay@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '2024-10-28 16:26:00'),
(5, 'xyz', 'xyz', 'x@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '2024-10-28 16:26:00'),
(6, 'test', 'test', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '2024-10-28 16:26:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cvs`
--
ALTER TABLE `cvs`
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
-- AUTO_INCREMENT for table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 11:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

use login;

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

use login;

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `rank_percentage` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `email`, `password`, `mobile`, `roleid`, `isActive`, `created_at`, `updated_at`, `rank_percentage`) VALUES
(23, 'test', 'test', 'test@gmail.com', '719855e8f4ebd94341277b0b0d50b75c5187133f', '987654321', 1, 0, '2020-12-19 14:35:56', '2020-12-19 14:35:56', 0.00),
(48, 'css', 'css', 'csss@gmail.com', 'fee9be384c8eb0c6828d8c0b823eb8d15d224e4d', '987654321', 3, 0, '2024-10-29 09:51:11', '2024-10-29 09:51:11', 0.00),
(49, 'abc ', 'abc', 'abc@gmail.com', '4fb248a30090f30a630ff7a86475f5fed62d62df', '0987654323', 3, 0, '2024-11-08 04:41:01', '2024-11-08 04:41:01', 0.00),
(50, 'mumbai', 'mumbai', 'mum@gmail.com', 'fee9be384c8eb0c6828d8c0b823eb8d15d224e4d', '0987654322', 3, 0, '2024-11-11 06:19:28', '2024-11-11 06:19:28', 0.00),
(54, 'akshu', 'akshu', 'akshatabansode7304@gmail.com', '4fb248a30090f30a630ff7a86475f5fed62d62df', '7304880122', 3, 0, '2024-11-15 10:33:07', '2024-11-15 10:33:07', 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
