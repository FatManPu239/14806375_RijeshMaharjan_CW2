-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2024 at 11:15 AM
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
-- Database: `._.silent_screamer`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `SessionNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `BookingDate` date DEFAULT NULL,
  `IsMember` char(1) DEFAULT NULL,
  `Fee` decimal(10,2) DEFAULT NULL,
  `Prepaid` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`SessionNumber`, `CustomerName`, `BookingDate`, `IsMember`, `Fee`, `Prepaid`) VALUES
(1, 'Saroj Upadhyay', '2023-10-21', 'Y', NULL, NULL),
(1, 'Neha Kakkar', '2023-10-21', 'N', 1000.00, 'N'),
(1, 'Himani Puri', '2023-10-21', 'Y', 900.00, 'Y'),
(1, 'Ritesh Gurung', '2023-10-25', 'N', 1000.00, 'N'),
(2, 'Rohan Jha', '2023-10-21', 'Y', 450.00, 'N'),
(4, 'Ghanshyam Bhat', '2023-10-06', 'Y', 450.00, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `consoles`
--

CREATE TABLE `consoles` (
  `Name` varchar(50) DEFAULT NULL,
  `PEGI` varchar(10) DEFAULT NULL,
  `Console` varchar(50) DEFAULT NULL,
  `ConsoleQty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consoles`
--

INSERT INTO `consoles` (`Name`, `PEGI`, `Console`, `ConsoleQty`) VALUES
('FIFA 18', 'PG', 'PS1', 3),
('FIFA 18', 'PG', 'PS2', 2),
('Horizon Zero Dawn', 'PG', 'PS4', 3),
('Horizon Zero Dawn', 'PG', 'PS2', 2),
('Legend of Zelda', 'PG', 'Nintendo Switch', 2),
('Halo 3', '15', 'Xbox 360', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `MemberType` varchar(50) DEFAULT NULL,
  `MembershipFee` decimal(10,2) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`FirstName`, `LastName`, `Address`, `MemberType`, `MembershipFee`, `JoinDate`, `DateOfBirth`) VALUES
('Saroj', 'Upadhyay', 'Dillibazar, Kathmandu', 'Standard', 1000.00, '2023-09-01', '1998-02-01'),
('Neha', 'Kakkar', 'Putalisadak, Kathmandu', 'Premium', 14000.00, '2023-06-05', '2000-10-15'),
('Himani', 'Puri', 'Baneshwor, Kathmandu', 'Premium', 14000.00, '0000-00-00', '2001-07-20'),
('Ritesh', 'Gurung', 'Gaushala, Kathmandu', 'Standard', 1000.00, '2023-04-05', '1983-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `MachineNumber` int(11) DEFAULT NULL,
  `Game` varchar(50) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`MachineNumber`, `Game`, `Year`, `Floor`) VALUES
(12, 'Pokemon', 2016, 2),
(45, 'PUBG_Battlegrounds', 2004, 1),
(78, 'Grand_Theft_Auto', 2013, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessionconsoles`
--

CREATE TABLE `sessionconsoles` (
  `SessionNumber` int(11) DEFAULT NULL,
  `Console` varchar(50) DEFAULT NULL,
  `ConsoleQty` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionconsoles`
--

INSERT INTO `sessionconsoles` (`SessionNumber`, `Console`, `ConsoleQty`, `Date`) VALUES
(1, 'PS1', 2, '2023-10-21'),
(2, 'PS2', 2, '2023-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `SessionNumber` int(11) DEFAULT NULL,
  `SessionDay` varchar(50) DEFAULT NULL,
  `SessionStartTime` time DEFAULT NULL,
  `SessionEndTime` time DEFAULT NULL,
  `SessionType` varchar(50) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`SessionNumber`, `SessionDay`, `SessionStartTime`, `SessionEndTime`, `SessionType`, `Floor`, `Price`) VALUES
(1, 'Sunday', '11:00:00', '19:00:00', 'Free', 1, 1000.00),
(2, 'Sunday', '11:00:00', '19:00:00', 'Free', 2, 500.00),
(3, 'Saturday', '11:00:00', '19:00:00', 'Free', 1, 1000.00),
(4, 'Friday', '19:00:00', '22:00:00', 'Special', 2, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `sessionstaff`
--

CREATE TABLE `sessionstaff` (
  `StaffName` varchar(50) DEFAULT NULL,
  `SessionNumber` int(11) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionstaff`
--

INSERT INTO `sessionstaff` (`StaffName`, `SessionNumber`, `Role`) VALUES
('Sujal Bohara', 1, 'Cafe'),
('Rajesh Hamal', 1, 'Maintenance'),
('Rooz Ojha', 1, 'Counter'),
('Rashi Timsina', 2, 'Counter'),
('Jack Jones', 2, 'Maintenance');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
