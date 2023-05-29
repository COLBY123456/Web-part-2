-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2023 at 07:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblAdmin`
--

CREATE TABLE `tblAdmin` (
  `ID` int(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblAorder`
--

CREATE TABLE `tblAorder` (
  `ID` int(8) NOT NULL,
  `User ID` int(8) NOT NULL,
  `Book ID` int(6) NOT NULL,
  `Quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblBooks`
--

CREATE TABLE `tblBooks` (
  `ID` int(8) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblUser`
--

CREATE TABLE `tblUser` (
  `ID` int(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblAdmin`
--
ALTER TABLE `tblAdmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblAorder`
--
ALTER TABLE `tblAorder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblBooks`
--
ALTER TABLE `tblBooks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblUser`
--
ALTER TABLE `tblUser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblAdmin`
--
ALTER TABLE `tblAdmin`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblAorder`
--
ALTER TABLE `tblAorder`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblBooks`
--
ALTER TABLE `tblBooks`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblUser`
--
ALTER TABLE `tblUser`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
