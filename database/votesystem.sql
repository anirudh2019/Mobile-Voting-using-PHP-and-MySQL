-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2021 at 06:15 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$gpJO6AErtzbcgBJJ58pRJ.wyEjWp0jdmPcFa2OLOBWht1cKKJXB5S', 'Admin', 'Admin', 'avatar.png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`, `votes`) VALUES
(27, 11, 'Anirudh', 'Simhachalam', '', '', 0),
(28, 11, 'cifal', 'shaul', '', '', 1),
(29, 11, 'Ajay', 'Nikhil', '', '', 0),
(30, 12, 'Sainath', 'B', '', '', 0),
(31, 12, 'Prashanth', 'Kota', '', '', 2),
(32, 12, 'Suraj', 'U', '', '', 0),
(33, 13, 'srinidh', 'Y', '', '', 0),
(34, 13, 'sravan', 'B', '', '', 0),
(35, 13, 'krishna', 'Prakash', '', '', 0),
(36, 14, 'Gopal', 'babu', '', '', 0),
(37, 14, 'gopi', 'krishna', '', '', 0),
(38, 14, 'Jayram', 'Naik', '', '', 0),
(39, 14, 'Abhinav ', 'Kathuri', '', '', 0),
(40, 14, 'Janiki', 'Ram', '', '', 0),
(41, 13, 'Pranav', 'sai', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `wardname` varchar(50) NOT NULL,
  `dist_name` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `wardname`, `dist_name`, `priority`) VALUES
(11, 'warangal east', 'Warangal Urban', 1),
(12, 'warangal west', 'Warangal Urban', 2),
(13, 'peerzadiguda', 'Hyderabad', 3),
(14, 'Kukatpally', 'Hyderabad', 4);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `position_id` int(11) NOT NULL,
  `voted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`, `position_id`, `voted`) VALUES
(19, 'ABN4598621', '$2y$10$7teV4H/Eg5yIX.0oFjTCie2aoFOxz7ojKz9bN71e8Q5cOYAnUTiBC', 'voter1', 'V1', '', 11, 1),
(20, 'STV2895715', '$2y$10$.UwqYj6wn6RO7imWZiIRS.7MIzOWH5QO7BHLTlx.xjNr2RhIeaFXa', 'voter2', 'V2', '', 12, 1),
(21, 'TXK8569247', '$2y$10$5gOHi.Z53on.hmbYxPxxHO9qs8Wv94hGFH.p2Pava.gonpzftdlg6', 'voter3', 'V3', '', 13, 0),
(22, 'WFR4521896', '$2y$10$Haf/Cez38/54LxPrwvI17.Bik9fmrmcBULgU90qyeTeJpHtVFxlEC', 'voter4', 'V4', '', 13, 0),
(23, 'YNH4598176', '$2y$10$btbCQ5aSxUeUw51KwlFp7e/zIT7mw90.c93UE89ofKPPBQz6xHOWu', 'voter5', 'V5', '', 12, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
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
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
