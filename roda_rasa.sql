-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2025 at 06:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roda_rasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `email`, `password`, `registered_at`) VALUES
(1, 'Maimunah', 'Maimunahhh@gmail.com', '$2y$10$hashedpassword1', '2025-07-14 10:00:46'),
(2, 'Fatimah', 'Timah@gmail.com', '$2y$10$hashedpassword2', '2025-07-14 10:00:46'),
(3, 'Malia', 'lia@gmail.com', '$2y$10$hashedpassword3', '2025-07-14 10:00:46'),
(4, 'Siti Naemah', 'ema@gmail.com', '$2y$10$hashedpassword4', '2025-07-14 10:00:46'),
(5, 'Azman Bin Muhammad', 'azman@gmail.com', '$2y$10$hashedpassword5', '2025-07-14 10:00:46'),
(6, 'alya syamilah', 'alya@gmail.com', '$2y$10$hashedpassword6', '2025-07-14 10:00:46'),
(7, 'John Doe', 'john@gmail.com', '$2y$10$hashedpassword7', '2025-07-14 10:00:46'),
(8, 'Jane Smith', 'jane@gmail.com', '$2y$10$hashedpassword8', '2025-07-14 10:00:46'),
(9, 'Ali bin Ahmad', 'ali@gmail.com', '$2y$10$hashedpassword9', '2025-07-14 10:00:46'),
(10, 'Aisha Rahman', 'aisha@gmail.com', '$2y$10$hashedpassword10', '2025-07-14 10:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `food_trucks`
--

CREATE TABLE `food_trucks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `truck_name` varchar(100) NOT NULL,
  `food_type` text NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `reported_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_trucks`
--

INSERT INTO `food_trucks` (`id`, `user_id`, `truck_name`, `food_type`, `latitude`, `longitude`, `reported_at`, `created_at`) VALUES
(15, 1, 'Burger King Truck', 'Burger', '5.51250000', '100.55560000', '2025-07-14 09:43:28', '2025-07-14 01:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `address`, `latitude`, `longitude`, `created_at`) VALUES
(1, 'Anis Amirah', 'Anisamirah12@gmail.com', 'Taman Akasia, Kedah, Malaysia', '5.51250700', '100.55564100', '2025-07-14 01:03:35'),
(3, 'Qasrina', 'Qasrina@gmail.com', 'No 190 Taman Tun Razak, Bukit Tunku, Kuala Lumpur, Malaysia', '6.36612030', '99.77981020', '2025-07-14 01:03:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `food_trucks`
--
ALTER TABLE `food_trucks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food_trucks`
--
ALTER TABLE `food_trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_trucks`
--
ALTER TABLE `food_trucks`
  ADD CONSTRAINT `food_trucks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
