-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 12:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `findmyoutfit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `password` varchar(25) DEFAULT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`password`, `username`) VALUES
('HoneyBadger09', 'admin.main0@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `designer`
--

CREATE TABLE `designer` (
  `username` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL,
  `College_ID` int(15) NOT NULL,
  `College_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designer`
--

INSERT INTO `designer` (`username`, `password`, `College_ID`, `College_Name`) VALUES
('ramu.designer@gmail.com', 'Scam1992', 13720616, 'NY Institute of Designing');

-- --------------------------------------------------------

--
-- Table structure for table `rental_shop`
--

CREATE TABLE `rental_shop` (
  `email` text NOT NULL,
  `password` varchar(25) NOT NULL,
  `ftc_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental_shop`
--

INSERT INTO `rental_shop` (`email`, `password`, `ftc_id`) VALUES
('peter.rental90@gmail.com', '1234567890', 1500001);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('rusty.user99@gmail.com', 'MirzapurS02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indexes for table `designer`
--
ALTER TABLE `designer`
  ADD PRIMARY KEY (`username`) KEY_BLOCK_SIZE=35 USING HASH,
  ADD UNIQUE KEY `College_ID` (`College_ID`);

--
-- Indexes for table `rental_shop`
--
ALTER TABLE `rental_shop`
  ADD PRIMARY KEY (`email`(5)) KEY_BLOCK_SIZE=35 USING HASH,
  ADD UNIQUE KEY `UNIQUE` (`ftc_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`) KEY_BLOCK_SIZE=35 USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
