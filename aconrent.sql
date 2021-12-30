-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2021 at 10:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aconrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `repass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `username`, `password`, `repass`) VALUES
(4, ' Pawan', 'pawanbansal74@gmail.com', '9212141019', 'pawan', 'admin@123', '9212141019');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `servicing` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contact_id`, `name`, `email`, `phone_no`, `servicing`, `message`) VALUES
(5, 'a1', 'a@gmail.com', '1234', 'AC Repairing', 'sdasfnsdnsdjnvkjds'),
(6, 'n', 'text@gmail.com', '113', 'AC Repairing', 'njknkn'),
(7, '', 'n@gmail.com', '', 'Open this select menu', ''),
(8, '', 'n@gmail.com', '', 'Open this select menu', ''),
(9, '', 'a@gmail.com', '', 'Open this select menu', ''),
(10, 'Nitesh', 'nitesh@gmail.com', '9315933413', 'AC on Rent', 'Hi  this is a trail based'),
(11, 'name2', 'name@gmail.com', '9315933413', 'AC Repairing', 'THis is another trail'),
(12, 'nitesh', 'nitesh@gmail.com', '1234567890', 'AC Repairing', 'cnsajkcnsdvnsdjnv'),
(13, 'Name3', 'nam3@gmail.com', '1234567890', 'AC Servicing', 'Third text'),
(14, 'fourth', 'fourth@gmail.com', '1234567890', 'AC Repairing', 'This is comment');

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `nav_id` int(11) NOT NULL,
  `nav_name` varchar(100) NOT NULL,
  `nav_logo` varchar(200) NOT NULL,
  `nav_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`nav_id`, `nav_name`, `nav_logo`, `nav_status`) VALUES
(1, 'Home', '', 0),
(2, 'About', 'upload/', 0),
(3, 'Contact', 'upload/Shivam.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`nav_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
