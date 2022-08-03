-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2020 at 12:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realstate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `User_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `User_name`, `Name`, `Email`, `Mobile_Number`, `password`) VALUES
(1, 'Minhajul', 'Minhajul Abedin', 'minhajul.abedin@g.bracu.ac.bd', '01839694235', 'minhajul');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `Advertisement_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`Advertisement_id`, `User_id`, `price`, `size`, `Location`, `p_id`) VALUES
(1001, 100024, 34134, 234, 'Banani', 454347),
(1004, 100024, 1343, 34223, 'Firm Gate', 454350);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_sl` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `P_id` int(11) NOT NULL,
  `book_date` datetime DEFAULT current_timestamp(),
  `Expery_date` date DEFAULT NULL,
  `CCN` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Pin` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_sl`, `User_id`, `Type`, `P_id`, `book_date`, `Expery_date`, `CCN`, `Pin`) VALUES
(1002, 100024, 'buy', 3554, '2020-09-14 21:32:14', NULL, '1342', '2342'),
(1009, 32434, 'buy', 3543, '2020-09-14 22:57:46', NULL, '13234', '23243');

-- --------------------------------------------------------

--
-- Table structure for table `enquries`
--

CREATE TABLE `enquries` (
  `Enquiry_number` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Message` varchar(200) NOT NULL,
  `P_id` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `p_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`p_id`, `location`, `price`, `size`, `Status`) VALUES
(3543, 'dhaka', 3455, 100, 'Sold'),
(3554, 'west gomdandi', 2000, 200, 'sold'),
(32545, 'Mohakali', 100000, 100, ''),
(35325, 'Uttara', 23453, 320, ''),
(43443, 'chittagong', 24342, 243, ''),
(454345, 'Dhanmondi', 234345, 100, ''),
(454347, 'Banani', 34134, 234, NULL),
(454348, 'Firm Gate', 13434, 2432, NULL),
(454349, 'Firm Gate', 13434, 2432, NULL),
(454350, 'Firm Gate', 1343, 34223, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `User_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `password` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `User_name`, `Name`, `Mobile_Number`, `Email`, `password`) VALUES
(14343, 'Ishmam', 'Ishmam Abedin', '01845634756', 'ismam@yahoo.com', '12345'),
(32434, 'Rishad', 'rishad', '01624674673', 'rishad@gmail.com', 'rishad'),
(100024, 'Riyadh', 'Riyadh', '01871386533', 'mohammedh.riyadh@gma', 'riyadh'),
(100025, 'Minhajul', 'mihajul', '018383843', 'noone@gmail.com', 'riyadh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD UNIQUE KEY `User_name` (`User_name`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`Advertisement_id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_sl`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `enquries`
--
ALTER TABLE `enquries`
  ADD PRIMARY KEY (`Enquiry_number`),
  ADD KEY `P_id` (`P_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`),
  ADD UNIQUE KEY `User_name` (`User_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Advertisement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT for table `enquries`
--
ALTER TABLE `enquries`
  MODIFY `Enquiry_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454351;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100026;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `advertisement_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `property` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `property` (`p_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enquries`
--
ALTER TABLE `enquries`
  ADD CONSTRAINT `enquries_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `property` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enquries_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
