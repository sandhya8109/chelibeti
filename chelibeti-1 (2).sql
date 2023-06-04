-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2023 at 07:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chelibeti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'e64b78fc3bc91bcbc7dc232ba8ec59e0');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `user_id` int(11) NOT NULL,
  `startdate` int(11) NOT NULL,
  `last_date` int(11) NOT NULL,
  `symptoms` varchar(50) NOT NULL,
  `mood` varchar(50) NOT NULL,
  `other` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menstrual_cycle_tracker`
--

CREATE TABLE `menstrual_cycle_tracker` (
  `user_id` int(11) NOT NULL,
  `prev_period_date` date NOT NULL,
  `cycle_length` int(11) NOT NULL,
  `period_length` int(11) NOT NULL,
  `next_period_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menstrual_cycle_tracker`
--

INSERT INTO `menstrual_cycle_tracker` (`user_id`, `prev_period_date`, `cycle_length`, `period_length`, `next_period_date`) VALUES
(15, '2023-04-18', 12, 13, '2023-05-18'),
(19, '2023-04-12', 12, 15, '2023-04-24'),
(22, '2023-04-04', 16, 20, '2023-04-18'),
(26, '2023-04-13', 12, 15, '2023-04-25'),
(31, '2023-03-28', 12, 14, '2023-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `pads`
--

CREATE TABLE `pads` (
  `location` varchar(50) NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pads`
--

INSERT INTO `pads` (`location`, `available`) VALUES
('school', 1),
('home', 1),
('other', 1),
('sadobato', 1),
('Durbarmarg', 1),
('Lakeside', 1),
('ratnapark', 1),
('Lekhnath', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pads_request`
--

CREATE TABLE `pads_request` (
  `user_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `admin_id` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`admin_id`, `id`, `title`, `content`, `category`, `image`, `date`, `status`) VALUES
(0, 4, 'tes1', 'test 2', 'Period Products', 'sandyrimal07 (1).png', '2023-03-09', 'active'),
(0, 5, 'heram ahi', 'bfjewhgiusdh fijneiu', 'Maternal Health', '333723822_914713873181102_5032835613601259740_n.jpg', '2023-03-09', 'active'),
(0, 6, 'nhvhg', ' jbv hg', 'Maternal Health', '', '2023-03-09', 'active'),
(0, 7, 'test1', 'adkjffjhdfh', 'Period Products', 'd1168b71d6d55497561ffbe55e06258a8e2b80da8d2d3593f288863fcd163bb5f066753117b0e225b681af4de3101315556f', '2023-03-10', 'active'),
(0, 8, 'jehbf', 'ifjbv', 'Period Products', '', '2023-04-16', 'inactive'),
(0, 9, 'jehbf', 'ifjbv', 'Period Products', '', '2023-04-16', 'inactive'),
(0, 10, 'draft', 'fuy', 'Diseases in Women', '', '2023-04-16', 'inactive'),
(0, 11, 'hello', 'hello', 'Aging in Women', '4365524.png', '2023-04-16', 'active'),
(0, 12, 'publish', 'jvbdjh', 'Period Products', '', '2023-04-16', 'active'),
(1, 13, 'hello', 'hello', 'Menstrual Health', '99462_sport_512x512.png', '2023-04-16', 'active'),
(1, 14, 'hello2', 'l xa', 'Menstrual Health', 'download.jpeg', '2023-04-16', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`, `location`) VALUES
(13, 'Anuj', 'Kumar', 'phpgurukulteam@gmail.com', 'Test@123', '1234567890', '2021-08-09 18:30:00', ''),
(15, 'cheli ', 'beti', 'cheli@gmail.com', 'Test123@', '9800345678', '2023-01-25 06:24:35', ''),
(17, 'Prabin ', 'Bhattarai', 'prabin.171428@ncit.edu.np', 'Prabin123@', '9800000000', '2023-01-25 07:12:20', ''),
(19, 'sandy', 'rimal', 'sandy@gmail.com', 'Sandy123', '9800000000', '2023-02-22 16:18:22', 'pokhara'),
(20, 'Samyog', 'Sanjel', 'samyogsanjel@gmail.com', 'Hi1234', '9849862445', '2023-02-22 16:37:31', 'Kathmandu'),
(21, 'Sarita', 'Rimal', 'sarita@gmail.com', 'Bitch123', '9846602923', '2023-02-23 11:46:22', 'Jumla'),
(22, 'Anisa', 'Shrestha', 'anisa@gmail.com', 'Anisa123', '9837253533', '2023-02-23 11:51:27', 'pokhara'),
(23, 'Ranjan', 'Adhikari', 'ranjan@gmail.com', 'Ranjan123', '7848494239', '2023-02-27 02:14:05', 'pokhara'),
(24, 'vinita', 'thakuri', 'vinita@gmail.com', 'Vinita123', '9847653884', '2023-02-27 02:41:57', 'pokhara'),
(25, 'Sandhya', 'Rimal', 'sandyrimal07@gmail.com', 'Sandy123', '9862386184', '2023-02-27 02:48:20', 'pokhara'),
(26, 'Kabu', 'Khanal', 'kabu@gmail.com', 'Kabu1234', '9837873873', '2023-02-28 09:34:34', 'pokhara'),
(27, 'saroj', 'bhasyal', 'saroj@gmail.com', 'Saroj123', '8768757645', '2023-03-09 11:59:29', 'pokhara'),
(28, 'Santos', 'Panta', 'santos@gmail.com', 'Santos123', '9838762864', '2023-03-10 02:02:07', 'pokhara'),
(29, 'Sejal', 'Aryal', 'sejal@gmail.com', 'Sejal123', '9837463746', '2023-04-10 14:27:39', 'pokhara'),
(30, 'noo', 'prasad', 'no@gmail.com', 'SAndy8109', '9862386184', '2023-04-12 08:21:16', 'pokhara'),
(31, 'sita', 'poudel', 'sita@gmail.com', 'Sita123@', '9862386184', '2023-04-16 03:28:41', 'pokhara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menstrual_cycle_tracker`
--
ALTER TABLE `menstrual_cycle_tracker`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menstrual_cycle_tracker`
--
ALTER TABLE `menstrual_cycle_tracker`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
