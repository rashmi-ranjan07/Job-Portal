-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 06:29 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_protol`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` int(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `first_name` varchar(111) NOT NULL,
  `last_name` varchar(111) NOT NULL,
  `admin_type` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `admin_email`, `admin_pass`, `admin_username`, `first_name`, `last_name`, `admin_type`) VALUES
(2, 'sunny@gmail.com', 123, '123', 'Sunny', 'Kumar', '2'),
(12, 'ravi@gmail.com', 123456, 'ravi123', 'Ravi', 'kumar', '1'),
(27, 'ravikantk489@gmail.com', 9, 'ravik', 'Ravikant', 'kumar', '2\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE `admin_type` (
  `id` int(111) NOT NULL,
  `admin` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`id`, `admin`) VALUES
(1, 'Super admin'),
(2, 'Customer admin');

-- --------------------------------------------------------

--
-- Table structure for table `all_jobs`
--

CREATE TABLE `all_jobs` (
  `job_id` int(111) NOT NULL,
  `customer_email` varchar(111) NOT NULL,
  `job_title` varchar(111) NOT NULL,
  `des` varchar(111) NOT NULL,
  `country` varchar(111) NOT NULL,
  `state` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `keyword` varchar(111) NOT NULL,
  `category` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_jobs`
--

INSERT INTO `all_jobs` (`job_id`, `customer_email`, `job_title`, `des`, `country`, `state`, `city`, `keyword`, `category`) VALUES
(2, 'sunny@gmail.com', 'java developer', 'web developer', 'India', 'odisha', 'gunupur', 'JAVA', '3'),
(3, 'ravi@gmail.com', 'PHP devloper', 'Fresher', 'BHARAT', 'JHARKHAND', 'KODREMA', ' PHP', '3'),
(16, 'sunny@gmail.com', 'JAVA ', 'FRESHER ARE APPLY', 'BAN', 'DHAKA', 'jdncj', 'java', '4'),
(17, 'ravikantk489@gmail.com', 'PYTHON DEVELOPER', 'URGENT REQURIMENT', 'BHARAT', 'JHARKHAND', 'JAMSHEDPUR', 'PYTHON', '5'),
(18, 'sunny@gmail.com', 'PHP devloper', 'hgsagd', 'india', 'odisha', 'gunupur', 'adq', '3');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(111) NOT NULL,
  `company` varchar(111) NOT NULL,
  `des` varchar(111) NOT NULL,
  `admin` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company`, `des`, `admin`) VALUES
(2, 'abc', '                                        Application Tester                                ', 'sunny@gmail.com'),
(7, 'Telecom', 'CALL CENTER', 'ravi@gmail.com'),
(10, 'jio', '             System Maintence              ', 'sunny@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobskeer`
--

CREATE TABLE `jobskeer` (
  `id` int(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobskeer`
--

INSERT INTO `jobskeer` (`id`, `email`, `password`, `first_name`, `last_name`, `DOB`, `mobile_number`) VALUES
(2, 'rr7@gmail.com', '22', 'Ravi', 'Kum', '2023-10-11', '08252373318'),
(3, 'sunnykr132000@gmail.com', '1', 'Ravikant', 'kumar', '2023-11-28', '8252373318'),
(5, 'isthatme18@gmail.com', '12345678', 'Sukanto', 'Mahato', '2023-05-31', '6296679298'),
(6, 'yash@gmail.com', '1234567', 'Kumar', 'Yash', '2024-02-22', '08252373318');

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `id` int(111) NOT NULL,
  `first_name` varchar(111) NOT NULL,
  `last_name` varchar(111) NOT NULL,
  `dob` date NOT NULL,
  `file` varchar(111) NOT NULL,
  `id_job` int(111) NOT NULL,
  `job_seeker` varchar(111) NOT NULL,
  `mobile_number` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`id`, `first_name`, `last_name`, `dob`, `file`, `id_job`, `job_seeker`, `mobile_number`) VALUES
(2, 'Ravi', 'Kant', '2023-01-03', 'rr7@gmail.com', 2, 'rr7@gmail.com', 1223467711),
(14, 'Sunny', 'Kumar', '2023-11-10', 'Screenshot 2023-10-31 031833.png', 3, 'sunnykr132000@gmail.com', 2147483647),
(24, 'Ravikant', 'kumar', '2023-11-28', 'sukanto_internship (1).docx', 17, 'sunnykr132000@gmail.com', 2147483647),
(25, 'Sunny', 'Kant', '2024-07-31', 'Screenshot 2024-07-19 191331.png', 2, 'yash@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(111) NOT NULL,
  `category` varchar(111) NOT NULL,
  `des` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `category`, `des`) VALUES
(3, 'PHP DEVELOPER', 'FRESHER'),
(4, 'JAVA DEVELOPER', 'JAVA FRESHER'),
(5, 'FORTNEND DEVLOPER', 'HTML,CSS');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(111) NOT NULL,
  `img` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `dob` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `user_email` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `img`, `name`, `dob`, `number`, `email`, `user_email`) VALUES
(11, 'images.png', 'RAVIKANT KUMAR', '2023-11-15', '+918252373318', '21cse190.ravikantkumar@giet.edu', 'sunny@gmail.com'),
(12, 'WhatsApp Image 2023-09-27 at 16.17.17.jpg', 'Sukanto kumar', '2023-11-07', '06296679298', 'isthatme18@gmail.com', 'isthatme18@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_jobs`
--
ALTER TABLE `all_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `jobskeer`
--
ALTER TABLE `jobskeer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `all_jobs`
--
ALTER TABLE `all_jobs`
  MODIFY `job_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobskeer`
--
ALTER TABLE `jobskeer`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
