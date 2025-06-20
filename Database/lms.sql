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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Section` varchar(255) NOT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `Textbook` varchar(255) NOT NULL,
  `Volume` varchar(255) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(10) DEFAULT NULL,
  `Author` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Section`, `Subject`, `Textbook`, `Volume`, `Year`, `Availability`, `Author`, `ISBN`, `Status`) VALUES
(191, 'Computer Internet Area', 'Networking', 'Computer Networking', '1', '2023 8th Edition', 9, 'Pearson Education', 'ISBN-10 9356061319', 'GOOD'),
(192, 'Computer Internet Area', 'AI', 'Co-Intelligence: Living and Working with AI', '2', '2023 8th Edition', 9, 'W H Allen', '0753560771', 'GOOD');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `Sender` varchar(255) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_Id`, `Sender`, `RollNo`, `Msg`, `Date`, `Time`) VALUES
(371, '', 'student', 'Your request for issue of BookId: 191 has been accepted', '2024-11-25', '21:54:21'),
(372, '', '125', 'Your request for issue of BookId: 192 has been accepted', '2024-11-26', '00:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `R_ID` int(10) NOT NULL,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `RollNo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `RollNo` varchar(255) NOT NULL,
  `BookId` int(255) NOT NULL,
  `Date_of_Issue` date NOT NULL,
  `Due_Date` date NOT NULL,
  `Date_of_Return` date NOT NULL,
  `Dues` int(255) NOT NULL,
  `Renewals_left` int(255) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `RollNo`, `BookId`, `Date_of_Issue`, `Due_Date`, `Date_of_Return`, `Dues`, `Renewals_left`, `Time`) VALUES
(96, 'student', 191, '2024-11-25', '2024-11-26', '0000-00-00', 0, 1, '21:53:47'),
(97, '125', 191, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '00:03:22'),
(98, '125', 192, '2024-11-26', '2024-11-27', '0000-00-00', 0, 1, '00:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `renew`
--

INSERT INTO `renew` (`RollNo`, `BookId`) VALUES
('125', 192);

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `id` int(11) NOT NULL,
  `RollNo` varchar(255) NOT NULL,
  `BookId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`id`, `RollNo`, `BookId`) VALUES
(52, '125', 191);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `stock_left` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl`
--

CREATE TABLE `tbl` (
  `BookId` int(11) NOT NULL,
  `deletor` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Department` varchar(255) NOT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`RollNo`, `Name`, `Type`, `Category`, `Department`, `EmailId`, `MobNo`, `Password`) VALUES
('125', 'Barun', 'Student', 'Student', 'IT', 'barun@gmail.com', 7797919640, '123'),
('Admin', 'Administrator', 'Admin', 'admin', 'admin', 'admin@test.com', 1234567899, '123'),
('faculty', 'Faculty', 'Student', 'Faculty', 'IT', 'faculty@test.com', 1234567893, '123'),
('staff', 'Library Staff', 'staff ', '', '', 'librarystaff@test.com', 9876543216, '123'),
('staffc', 'staff', 'Student', 'Staff', 'Other', 'staff@test.com', 1234567895, '123'),
('student', 'Student', 'Student', 'Student', 'IT', 'student@test.com', 1234567891, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl`
--
ALTER TABLE `tbl`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `R_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl`
--
ALTER TABLE `tbl`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `renew`
--
ALTER TABLE `renew`
  ADD CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `renew_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
