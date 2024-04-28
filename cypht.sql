-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 05:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cypht`
--

-- --------------------------------------------------------

--
-- Table structure for table `hm_user`
--

CREATE TABLE `hm_user` (
  `username` varchar(250) NOT NULL,
  `hash` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hm_user`
--

INSERT INTO `hm_user` (`username`, `hash`) VALUES
('username', '$argon2id$v=19$m=65536,t=2,p=1$pTAquCwyOadUX/e6Z2KSJQ$4UR6ZxOCEua78oDf463qmPVS1pxHod9z7HepjOP5ccE');

-- --------------------------------------------------------

--
-- Table structure for table `hm_user_session`
--

CREATE TABLE `hm_user_session` (
  `hm_id` varchar(180) NOT NULL,
  `data` longblob DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hm_user_settings`
--

CREATE TABLE `hm_user_settings` (
  `username` varchar(250) NOT NULL,
  `settings` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hm_user`
--
ALTER TABLE `hm_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `hm_user_session`
--
ALTER TABLE `hm_user_session`
  ADD PRIMARY KEY (`hm_id`);

--
-- Indexes for table `hm_user_settings`
--
ALTER TABLE `hm_user_settings`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
