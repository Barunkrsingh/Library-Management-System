-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 09:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `id_no` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `exp_date` varchar(20) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`sno`, `name`, `grade`, `id_no`, `email`, `phone`, `address`, `dob`, `date`, `exp_date`, `image`) VALUES
(733, 'Student', 'CSE', '1', 'dddd@gmail.com', '0123456789', 'na', 'Student', '2024-11-25 17:28:08', '2001-10-10', 'assets/uploads/avatar5.png'),
(734, 'Barun', 'IT', '125', 'barun@gmail.com', '+91- 7797919', 'Asansol', 'Student', '2024-11-26 00:01:37', '10-10-2001', 'assets/uploads/Passport photo copy 33.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
