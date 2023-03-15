-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 01:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`, `id`) VALUES
('ritam', 'ritam', 1),
('abhi', 'a123', 2),
('admin', 'admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `course_duration`) VALUES
('', '', ''),
('BCA2020', 'Bachelor of Computer Application', '3'),
('MCA2020', 'Master Of Computer Application', '2');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `tid` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`tid`, `password`, `name`, `designation`, `email`) VALUES
('BCA1', 'debarati123456', 'Debarati Mitra', 'Asst. Professor', 'debaratimitra@gmail.com'),
('BCA2', 'antara123456', 'Antara Parai', 'Asst. Teacher', 'anatara@gmail.com'),
('BCA3', 'nilanjan123456', 'Nilanjan Das', 'Asst. Teacher', 'nilajan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loginall`
--

CREATE TABLE `loginall` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `catagory` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginall`
--

INSERT INTO `loginall` (`email`, `password`, `catagory`) VALUES
('33401220057', 'akash123456', 'Student'),
('33401220074', 'razen123456', 'Student'),
('anatara@gmail.com', 'antara123456', 'Teacher'),
('debaratimitra@gmail.com', 'debarati123456', 'Teacher'),
('nilajan@gmail.com', 'nilanjan123456', 'Teacher'),
('ritom.k.2@gmail.com', 'ritam123456', 'Admin'),
('rnmurmu@gmail.com', 'rajendra123456', 'Student'),
('surajit@gmail.com', 'sura12345666', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ptoall`
--

CREATE TABLE `ptoall` (
  `notice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ptoall`
--

INSERT INTO `ptoall` (`notice`) VALUES
('Check'),
('Hello.'),
('JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJj'),
('Kal presentation hai guyz.'),
('Kalse chutti hai');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `sid` varchar(255) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`fname`, `lname`, `sid`, `course_code`, `year`, `password`) VALUES
('Akash', 'Mahanta', '33401220057', 'BCA', '3', 'akash123456'),
('Rajendra Nath', 'Murmu', '33401220074', 'BCA', '3', 'razen123456');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `scode` varchar(255) NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `tid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`scode`, `sname`, `course_name`, `tid`) VALUES
('BCAC101', 'Programming With C', 'BCA2020', NULL),
('BCAC102', 'Digital Electronics', 'BCA2020', NULL),
('BCAC103', 'Python Programming', 'BCAC2020', NULL),
('BCAC104', 'Programming With B', 'BCA2020', 'BCA1');

-- --------------------------------------------------------

--
-- Table structure for table `tassign`
--

CREATE TABLE `tassign` (
  `tassign` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tassign`
--

INSERT INTO `tassign` (`tassign`) VALUES
('Do your homework by today.'),
('hello');

-- --------------------------------------------------------

--
-- Table structure for table `ttoall`
--

CREATE TABLE `ttoall` (
  `notice` varchar(255) NOT NULL,
  `tname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ttoall`
--

INSERT INTO `ttoall` (`notice`, `tname`) VALUES
('56789', 'Antara Parai'),
('check', NULL),
('check2', 'anatara@gmail.com'),
('check4', NULL),
('check5', 'Antara Parai'),
('hello', NULL),
('Testing Notice 1', 'Ratnankur Majumder'),
('Testing Notice 2', NULL),
('Testing Notice 3', 'Debarati Mitra'),
('Testing Notice 4', 'Debarati Mitra'),
('Testing Notice 5 ', 'Debarati Mitra'),
('Testing Notice 6', 'Debarati Mitra'),
('x', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `loginall`
--
ALTER TABLE `loginall`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `ptoall`
--
ALTER TABLE `ptoall`
  ADD PRIMARY KEY (`notice`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`scode`);

--
-- Indexes for table `tassign`
--
ALTER TABLE `tassign`
  ADD PRIMARY KEY (`tassign`);

--
-- Indexes for table `ttoall`
--
ALTER TABLE `ttoall`
  ADD PRIMARY KEY (`notice`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
