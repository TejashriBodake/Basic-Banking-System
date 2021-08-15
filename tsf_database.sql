-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 05:35 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Balance` int(10) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Email`, `Phone`, `Balance`) VALUES
(1, 'John Quil', 'john.quil@gmail.com', '9998979695', 8000),
(2, 'Rose Bush', 'rose_bush@gmail.com', '9123242565', 5000),
(3, 'Perry Scope', 'perry.scope@gmail.com', '9190786534', 7000),
(4, 'Pat Thettick', 'pat_thettick@gmail.com', '8169874563', 9000),
(5, 'Paige Turner', 'paige.8@gmail.com', '9192111213', 5500),
(6, 'Ray Sin', 'sin_ray@gmail.com', '8189838383', 8600),
(7, 'Anne Teak', 'teak.anne@gmail.com', '9191916787', 8850),
(8, 'Anita Bath', 'anita_bath@gmail.com', '9292929292', 8700),
(9, 'Simon Sais', 'carlos.s@gmail.com', '8787873442', 7540),
(10, 'Dee End', 'dee_end@gmail.com', '9008006508', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sno` int(5) NOT NULL,
  `Name1` varchar(30) NOT NULL,
  `Name2` varchar(30) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sno`, `Name1`, `Name2`, `Amount`, `Time`) VALUES
(1, 'K. Raikkonen', 'L. Norris', 500, '2021-06-10 15:05:01'),
(2, 'D. Ricciardo', 'L. Norris', 300, '2021-06-10 15:08:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Sno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
