-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2023 at 06:00 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_hc`
--

-- --------------------------------------------------------

--
-- Table structure for table `leader`
--

CREATE TABLE `leader` (
  `id` int NOT NULL,
  `leader_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `leader`
--

INSERT INTO `leader` (`id`, `leader_name`, `email`, `profile_picture`) VALUES
(1, 'Bayu Nugraha', 'bayunugraha.bjm@gmail.com', 'satu.jpg'),
(2, 'Amat Banjar', 'amat@gmail.com', 'dua.jpg'),
(3, 'Udin Gambut', 'udin.gambut@gmail.com', 'tiga.jpg'),
(4, 'Anang Baras', 'anang.baras@gmail.com', 'empat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `id` int NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `leader_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `progress` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id`, `project_name`, `client_name`, `leader_id`, `start_date`, `end_date`, `progress`) VALUES
(6, 'Web Developer Specialist', 'DICODING', 1, '2023-07-12', '2023-08-12', 0.21),
(7, 'Cloud Computing', 'Arkademy', 2, '2023-06-06', '2023-07-06', 0.77),
(8, 'Android Developer', 'Coding Studio', 3, '2023-05-05', '2023-06-05', 0.8),
(25, 'Network Cyber Security', 'Hacktiv8', 4, '2023-01-01', '2023-03-01', 0.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leader`
--
ALTER TABLE `leader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`leader_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leader`
--
ALTER TABLE `leader`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`leader_id`) REFERENCES `leader` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
