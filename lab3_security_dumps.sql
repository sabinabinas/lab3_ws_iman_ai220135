-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2025 at 01:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab3_security`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_no_salt`
--

CREATE TABLE `users_no_salt` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_no_salt`
--

INSERT INTO `users_no_salt` (`id`, `username`, `password_hash`) VALUES
(1, 'nani', '8176b669a60ca4980f187ef8207d41dbe31d3ee4'),
(2, 'iman', '8176b669a60ca4980f187ef8207d41dbe31d3ee4'),
(3, 'mami', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(4, 'mihun', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(5, 'me', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');

-- --------------------------------------------------------

--
-- Table structure for table `users_with_salt`
--

CREATE TABLE `users_with_salt` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `salt` varchar(64) NOT NULL,
  `password_hash` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_with_salt`
--

INSERT INTO `users_with_salt` (`id`, `username`, `salt`, `password_hash`) VALUES
(1, 'iman', 'd2ed1fc4762776a1e865eeb5429c6de9', '447b827a74e3b8293238699d906d79c8d8981d09f0261c41e5a52b741d57e216'),
(2, 'nani', '11a0216d821163c1020b9a38f6c4d05e', '23f8615358a02ce09a19a6a7aaf5355271123a2c42b13ac5895031177aef3029'),
(3, 'test', '71fda06ccf54922af08644ff13003d7c', 'a9cfea1c82c85fd24b46e5c5bc238f145f0a01d95219d87018069dc47f2166e3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_no_salt`
--
ALTER TABLE `users_no_salt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_with_salt`
--
ALTER TABLE `users_with_salt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_no_salt`
--
ALTER TABLE `users_no_salt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_with_salt`
--
ALTER TABLE `users_with_salt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
