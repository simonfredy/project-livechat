-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 09:32 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livechat`
--

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `id` int(10) NOT NULL,
  `nick` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `waktu` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`id`, `nick`, `waktu`) VALUES
(62, 'wizard', '01:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(10) NOT NULL,
  `nick` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `waktu` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nick`, `pesan`, `waktu`) VALUES
(225, 'dragnezer', 'das', '04:11:16'),
(224, 'dragnezer', 'asdas', '04:11:16'),
(223, 'dragnezer', 'sddfsdfsdffsafvaw', '04:11:14'),
(222, 'dragnezer', 'dasdasdasdasdasd', '04:11:06'),
(221, 'wizard', 'oi biss', '04:11:53'),
(220, 'dragnezer', 'bos', '04:11:43'),
(219, 'dragnezer', 'yes', '04:11:37'),
(218, 'dragnezer', 'boss', '04:11:11'),
(217, 'dragnezer', ' [kasmaran]', '10:11:00'),
(216, 'dragnezer', 'u', '10:11:10'),
(226, 'dragnezer', 'das', '04:11:16'),
(227, 'dragnezer', 'd', '04:11:16'),
(228, 'dragnezer', 'asd', '04:11:16'),
(229, 'dragnezer', 'a', '04:11:16'),
(230, 'dragnezer', 'wd', '04:11:17'),
(231, 'dragnezer', 'as', '04:11:17'),
(232, 'dragnezer', 'a', '04:11:17'),
(233, 'dragnezer', 'wd', '04:11:17'),
(234, 'dragnezer', 'a', '04:11:17'),
(235, 'dragnezer', 'd', '04:11:17'),
(236, 'dragnezer', 'aw', '04:11:17'),
(237, 'dragnezer', 'd', '04:11:18'),
(238, 'dragnezer', 'a', '04:11:18'),
(239, 'dragnezer', 'd', '04:11:18'),
(240, 'dragnezer', 'd', '04:11:18'),
(241, 'dragnezer', 'aw', '04:11:18'),
(242, 'dragnezer', 'd', '04:11:18'),
(243, 'dragnezer', 'awd', '04:11:18'),
(244, 'dragnezer', 'aw', '04:11:19'),
(245, 'dragnezer', 'd', '04:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nick`, `email`, `pass`) VALUES
(25, 'wizard', 'wizard@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
(24, 'dragnezer', 'drag@gmail.com', '8495f43a8db6a8adc3313b3e6d2fea32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
