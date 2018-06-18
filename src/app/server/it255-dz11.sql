-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2018 at 03:42 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it255-dz11`
--

-- --------------------------------------------------------

--
-- Table structure for table `cvece`
--

CREATE TABLE `cvece` (
  `id` int(11) NOT NULL,
  `sifra` int(11) NOT NULL,
  `naziv` varchar(30) NOT NULL,
  `cena` decimal(10,0) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvece`
--

INSERT INTO `cvece` (`id`, `sifra`, `naziv`, `cena`, `opis`) VALUES
(1, 1, 'Fikus', '900', 'asdadgadgsg'),
(2, 23, 'Ruza', '1500', 'miris miris mirsi siri'),
(3, 2, 'Kaktus', '6800', 'miris miris mirsi nema'),
(4, 3, 'Aloja', '15000', 'miris miris mirsi ima');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `sifra` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `username`, `sifra`) VALUES
(1, 'Mana', 'Dobric', 'mana123', '02c2790e058f7d4197d2aeb2342431af'),
(2, 'Tara', 'Sobeta', 'tara321', '817898bd17a14f8c6bb0fe445feac2a6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cvece`
--
ALTER TABLE `cvece`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cvece`
--
ALTER TABLE `cvece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
