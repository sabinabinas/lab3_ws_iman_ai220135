-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2025 at 09:45 AM
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
-- Database: `lab3`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`) VALUES
(5, 'admin', '$2y$10$4RMM8OnZO0DBksy2NZwgL.CBLJNnhX/KD6FuyyMtdjjeyejbROmwO'),
(6, 'sab', '$2y$10$uho38T2jOJUKIRPu4yzdwuUK.rAX0j59AnWyMhMGEzCFPxmBQ30RO'),
(7, 'Iman Sabreena', '$2y$10$WrodisifdIPRvmGJfP15He0AXvNb2pbzMGg.2cX5m99U9PzmgxCRu'),
(8, 'admin', '$2y$10$znQ21KRtLXbAV5W1Du0QKuFwRGq2bL8ePsAYBFz4RQHPis4BddKFi'),
(9, 'admin', '$2y$10$wbjs/Tsp2f4Gdb0p.ZL3ee/M9qxbJHOUPGuH1qn0eF7hyU8n/A.MC'),
(10, 'imanina', '$2y$10$5eQ0zi3FSnue7qySDv9Oz..04Z.9X3oWv.UCQIFL7XjM3u7V1DTYi'),
(11, 'sab', '$2y$10$uU5ov5VhDukCnK2e6DHtOO4PxYrCjAnz7Kq9aqLQKtVweCBfGDkeW'),
(12, 'sab', '$2y$10$wAxUIZCoJ0A30a9ULqQAleBiEXFUE4nKFqGvwnrOgcuTziCyakDYq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
