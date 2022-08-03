-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 06:54 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

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
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `Advertisement_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`Advertisement_id`, `User_id`, `p_id`, `publish_date`) VALUES
(1004, 100024, 454350, '2020-09-15 16:10:54'),
(1005, 100024, 454358, '2020-09-18 23:00:03'),
(1006, 100024, 454359, '2020-09-18 23:03:50'),
(1007, 100024, 454360, '2020-09-18 23:53:36'),
(1008, 14343, 454361, '2020-09-23 17:54:22'),
(1010, 14343, 454363, '2020-09-24 00:00:22'),
(1011, 14343, 454364, '2020-09-24 00:08:27'),
(1012, 14343, 454365, '2020-09-24 16:14:32'),
(1014, 14343, 454367, '2020-09-24 17:48:08'),
(1019, 32434, 454372, '2020-09-24 18:04:33'),
(1020, 32434, 454373, '2020-09-24 18:05:02'),
(1021, 32434, 454374, '2020-09-24 18:05:20'),
(1023, 32434, 454376, '2020-09-24 18:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_sl` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `P_id` int(11) NOT NULL,
  `book_date` datetime DEFAULT current_timestamp(),
  `Expire_date` date DEFAULT NULL,
  `CCN` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Pin` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_sl`, `User_id`, `P_id`, `book_date`, `Expire_date`, `CCN`, `Pin`) VALUES
(1002, 100024, 3554, '2020-09-14 21:32:14', '0000-00-00', '1342', '2342'),
(1009, 32434, 3543, '2020-09-14 22:57:46', '0000-00-00', '13234', '23243'),
(1010, 14343, 3543, '2020-09-16 03:28:41', '0000-00-00', '213', '2342'),
(1011, 32434, 35325, '2020-09-16 03:28:41', '0000-00-00', '34332', '2333'),
(1014, 32434, 43443, '2020-09-23 18:10:59', NULL, '12344', '234321'),
(1015, 32434, 454349, '2020-09-23 18:15:22', NULL, '12344', '234321'),
(1016, 14343, 454345, '2020-09-23 23:51:38', NULL, '563767823', '456789'),
(1017, 14343, 454361, '2020-09-23 23:57:46', NULL, '563767823', '456789'),
(1018, 14343, 454365, '2020-09-24 16:15:30', NULL, '324234', '23423'),
(1019, 14343, 454364, '2020-09-24 16:34:02', NULL, '35467', '456576'),
(1021, 14343, 454350, '2020-09-24 17:02:00', NULL, '3246789', '344'),
(1022, 14343, 454355, '2020-09-24 17:03:07', NULL, '3246789', '344'),
(1023, 14343, 454363, '2020-09-24 17:03:58', NULL, '3246789', '344'),
(1024, 14343, 454348, '2020-09-24 17:17:24', NULL, '34567', '455'),
(1025, 14343, 454358, '2020-09-24 17:18:42', NULL, '34567', '455'),
(1026, 14343, 454359, '2020-09-24 17:41:54', NULL, '653425465', '436'),
(1027, 14343, 454360, '2020-09-24 17:46:53', NULL, '3456456', '2333'),
(1028, 14343, 454367, '2020-09-24 17:59:13', NULL, '34534', '342'),
(1029, 32434, 454361, '2020-09-24 18:18:20', NULL, '34567', '345'),
(1030, 32434, 454376, '2020-09-24 18:22:50', NULL, '34567', '345');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `p_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`p_id`, `location`, `price`, `size`, `Status`) VALUES
(3543, 'Chorkidirpur', 3455, 100, 'Sold'),
(3554, 'west gomdandi', 2000, 200, 'sold'),
(32545, 'Mohakali', 100000, 100, 'In Rent'),
(35325, 'Uttara', 23453, 320, 'In Rent'),
(43443, 'jamadarhat', 24342, 243, 'Sold'),
(454345, 'Dhanmondi', 234345, 100, 'Sold'),
(454348, 'Firm Gate', 13434, 2432, 'Sold'),
(454349, 'Firm Gate', 13434, 2432, 'In rent'),
(454350, 'Firm Gate', 1343, 34223, 'Sold'),
(454351, 'Batiari', 123424, 3234, 'Sold'),
(454355, 'Batiari', 123424, 3234, 'In rent'),
(454357, 'batiari', 2345435, 132, 'Sold'),
(454358, 'Hathirzil', 1234, 243, 'In rent'),
(454359, 'Uttara', 234243, 23423, 'Sold'),
(454360, 'Faridpur', 1234, 234, 'Sold'),
(454361, 'Moakhali', 40000, 678, 'Sold'),
(454363, 'Moghbazar', 50000, 2345, 'In rent'),
(454364, 'Modhubagh', 70000, 2000, 'Sold'),
(454365, 'Mothijheel', 80000, 2555, 'Sold'),
(454367, 'Utharkhand', 90000, 3434, 'Sold'),
(454372, 'Modhubagh', 60000, 3456, 'For Sale'),
(454373, 'Kuakata', 45000, 566, 'For Sale'),
(454374, 'Chittagong', 60000, 2343, 'For Sale'),
(454376, 'Lakhsmipur', 60000, 456, 'In rent');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `User_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Current_address` varchar(50) NOT NULL,
  `Home_Address` varchar(50) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `password` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `User_name`, `Name`, `Gender`, `Current_address`, `Home_Address`, `Mobile_Number`, `Email`, `password`) VALUES
(14343, 'Nibraj', 'Nibraz Khan', 'Male', 'Mohakali,Dhaka', 'Feni,Chagalnaiya', '01780006900', 'nibraj@yahoo.com', '12345'),
(32434, 'Nibir', 'Nibir Ali', 'Male', 'Moghbazar,Dhaka', 'Eid-gah,Chittagong', '01732132556', 'nibir@gmail.com', 'nibir'),
(100024, 'sadia', 'Sadia', 'Female', 'Panthapath,Dhaka', 'gazipur,Dhaka', '01871386533', 'sadia@gmail.com', 'sadia'),
(100025, 'joy', 'Joy', 'Male', 'Khulshi,Chittagong', 'Puran Dhaka,Dhaka', '018383843', 'joy@gmail.com', 'joy');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Advertisement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1031;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454377;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
