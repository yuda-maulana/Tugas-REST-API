-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 07:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmusik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbmusik`
--

CREATE TABLE `tbmusik` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penyanyi` varchar(50) NOT NULL,
  `album` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbmusik`
--

INSERT INTO `tbmusik` (`id`, `judul`, `penyanyi`, `album`) VALUES
(1, 'Secukupnya ', 'Hindia', 'Menari Dengan Bayangan'),
(2, 'Pulang', 'Iksan Skuter', 'Gulali'),
(3, 'Rehat', 'Kunto Aji', 'Mantra Mantra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbmusik`
--
ALTER TABLE `tbmusik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbmusik`
--
ALTER TABLE `tbmusik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
