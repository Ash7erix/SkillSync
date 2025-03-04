-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 08:17 AM
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
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '1a1dc91c907325c69271ddf0c944bc72', '2022-01-31 16:21:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'PHP', '5', 10, '2022-02-10 17:23:28', NULL),
(2, 'C001', 'C++', '12', 25, '2022-02-11 00:52:46', '11-02-2022 06:23:06 AM'),
(3, 'UMT', 'Mathematics 1', '5', 20, '2024-02-22 05:54:00', NULL),
(4, '2UMTP', 'Mathematics Practical', '13', 20, '2024-02-22 05:54:28', NULL),
(5, 'CSP11', 'Python', '7', 20, '2024-02-22 05:54:55', NULL),
(6, 'CSP11', 'Python', '7', 20, '2024-02-22 06:02:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(3, '21CSMM02', '203817', 4, 4, 6, 11, 4, '2024-02-22 07:08:58'),
(4, '21CSMM02', '203817', 4, 4, 6, 11, 3, '2024-02-22 07:09:12'),
(5, '21CSMM08', '159832', 3, 4, 6, 11, 3, '2024-03-07 10:26:42'),
(6, '21CSMM08', '159832', 3, 4, 9, 11, 4, '2024-04-11 09:06:47'),
(7, '21csmm01', '518372', 3, 4, 7, 11, 3, '2024-06-04 15:17:13'),
(8, '21CSMM08', '159832', 3, 4, 7, 11, 3, '2024-06-05 04:33:00'),
(9, '21csmm01', '518372', 3, 5, 5, 9, 1, '2024-06-05 04:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(4, 'BSc. CSMM', '2024-02-18 09:06:23'),
(5, 'BSc. STMM', '2024-02-18 09:06:31'),
(6, 'BSc. STEC', '2024-02-18 09:06:37'),
(7, 'BSc. PHCS', '2024-02-18 09:06:52'),
(8, 'BSc. CSEL', '2024-02-18 09:06:58'),
(9, 'BSc. STEC', '2024-02-18 09:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `studentRegno` varchar(15) NOT NULL,
  `feedback` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`studentRegno`, `feedback`) VALUES
('21CSMM08', 'ashuuttossjdslkdjsaldjasida'),
('21CSMM02', 'Good'),
('21csmm08', 'Hii this is Ashutosh');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(4, '1', '2024-02-22 06:28:26'),
(5, '2', '2024-02-22 06:28:29'),
(6, '3', '2024-02-22 06:28:33'),
(7, '4', '2024-02-22 06:28:35'),
(8, '5', '2024-02-22 06:28:38'),
(9, '6', '2024-02-22 06:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) DEFAULT NULL,
  `newsDescription` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
(4, 'NEW COURSE UPDATE(CSMM/CSEL)', 'We are thrilled to announce the introduction of a new course titled \"Data Science\" tailored for students enrolled in the Computer Science and Mathematics (CSMM) and Computer Science and Electronics (CSEL) programs. The Data Science course aims to equip students with essential skills and knowledge in handling, analyzing, and interpreting large datasets to extract meaningful insights and make data-driven decisions. The curriculum covers a wide array of topics including data preprocessing, exploratory data analysis, machine learning algorithms, data visualization techniques, and ethical considerations in data science.', '2024-02-18 09:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(6, '1', '2024-02-18 09:05:43', NULL),
(7, '2', '2024-02-18 09:05:47', NULL),
(8, '3', '2024-02-18 09:05:50', NULL),
(9, '4', '2024-02-18 09:05:56', NULL),
(10, '5', '2024-02-18 09:06:01', NULL),
(11, '6', '2024-02-18 09:06:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(3, '2021', '2024-02-21 20:22:17'),
(4, '2022', '2024-02-21 20:22:28'),
(5, '2023', '2024-02-21 20:22:33'),
(6, '2024', '2024-02-21 20:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('21csmm01', 'Screenshot_20230101_003453.png', '81dc9bdb52d04dc20036dbd8313ed055', 'Abhinaya', '518372', NULL, NULL, NULL, 8.00, '2024-06-04 15:12:34', '04-06-2024 08:47:34 PM'),
('21CSMM02', 'IMG-20221028-WA0017.jpg', '81dc9bdb52d04dc20036dbd8313ed055', 'Aditya Bhardwaj', '203817', NULL, NULL, NULL, 8.90, '2024-02-18 09:09:29', NULL),
('21csmm03', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Alan', '645586', NULL, NULL, NULL, NULL, '2024-06-04 15:13:02', NULL),
('21csmm04', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Aleena', '907025', NULL, NULL, NULL, NULL, '2024-06-04 15:14:01', NULL),
('21csmm05', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Alpana Minz', '579521', NULL, NULL, NULL, NULL, '2024-06-04 15:12:04', NULL),
('21csmm07', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Beno', '617001', NULL, NULL, NULL, NULL, '2024-06-04 15:13:37', NULL),
('21CSMM08', 'Profile_pic.JPG', 'f925916e2754e5e03f75dd58a5733251', 'Ashutosh Patel', '159832', NULL, NULL, NULL, 9.80, '2024-02-18 09:08:15', NULL),
('21csmm09', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Anusha Kerur', '136610', NULL, NULL, NULL, NULL, '2024-06-04 15:12:18', NULL),
('21phcs01', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Abhijeet', '652859', NULL, NULL, NULL, NULL, '2024-06-04 15:14:35', NULL),
('21stmm01', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Arshad', '679058', NULL, NULL, NULL, NULL, '2024-06-04 15:14:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(4, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-18 09:22:57', NULL, 1),
(5, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-18 09:42:59', NULL, 1),
(6, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-18 09:43:15', NULL, 1),
(7, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:09:06', NULL, 1),
(8, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:09:51', NULL, 1),
(9, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:09:58', '22-02-2024 01:44:08 AM', 1),
(10, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:20:00', '22-02-2024 01:51:49 AM', 1),
(11, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:26:30', NULL, 1),
(12, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:34:11', NULL, 1),
(13, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:35:16', '22-02-2024 02:06:02 AM', 1),
(14, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:36:07', '22-02-2024 02:07:04 AM', 1),
(15, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-21 20:40:06', NULL, 1),
(16, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-22 06:33:59', '22-02-2024 12:10:28 PM', 1),
(17, '21CSMM02', 0x3a3a3100000000000000000000000000, '2024-02-22 06:40:37', '22-02-2024 12:41:57 PM', 1),
(18, '21CSMM02', 0x3a3a3100000000000000000000000000, '2024-02-22 07:12:04', '22-02-2024 12:48:57 PM', 1),
(19, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-22 10:54:18', '22-02-2024 04:26:58 PM', 1),
(20, '21CSMM02', 0x3a3a3100000000000000000000000000, '2024-02-22 10:57:04', NULL, 1),
(21, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-29 17:24:53', '29-02-2024 10:56:43 PM', 1),
(22, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-02-29 17:29:49', '29-02-2024 11:03:08 PM', 1),
(23, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-03-07 10:24:46', NULL, 1),
(24, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-03-07 10:45:00', '07-03-2024 04:16:11 PM', 1),
(25, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-03-07 10:52:16', NULL, 1),
(26, '21CSMM08', 0x3a3a3100000000000000000000000000, '2024-03-07 11:04:26', NULL, 1),
(27, '21CSMM02', 0x3a3a3100000000000000000000000000, '2024-03-14 06:42:44', NULL, 1),
(28, '21csmm08', 0x3a3a3100000000000000000000000000, '2024-04-04 06:27:29', '04-04-2024 11:57:31 AM', 1),
(29, '21csmm08', 0x3a3a3100000000000000000000000000, '2024-04-04 06:35:07', '04-04-2024 12:06:10 PM', 1),
(30, '21csmm08', 0x3a3a3100000000000000000000000000, '2024-04-11 08:54:11', '11-04-2024 02:42:21 PM', 1),
(31, '21csmm08', 0x3a3a3100000000000000000000000000, '2024-06-04 15:07:42', NULL, 1),
(32, '21csmm01', 0x3a3a3100000000000000000000000000, '2024-06-04 15:15:45', '04-06-2024 08:47:37 PM', 1),
(33, '21csmm08', 0x3a3a3100000000000000000000000000, '2024-06-05 04:32:20', '05-06-2024 10:03:37 AM', 1),
(34, '21csmm01', 0x3a3a3100000000000000000000000000, '2024-06-05 04:33:43', NULL, 1),
(35, '21csmm08', 0x3a3a3100000000000000000000000000, '2024-06-05 04:36:18', '05-06-2024 10:07:32 AM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
