-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2016 at 09:22 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promisesback`
--
CREATE DATABASE IF NOT EXISTS `promisesback` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `promisesback`;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `firstName` varchar(20) COLLATE utf8_bin NOT NULL,
  `lastName` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `firstName`, `lastName`) VALUES
(1, 'Juanjo', 'Llado'),
(2, 'David', 'Machicado'),
(3, 'Alvaro', 'Nieto'),
(4, 'Pedro', 'Moran');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `petName` varchar(25) COLLATE utf8_bin NOT NULL,
  `idPetSpecies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `petName`, `idPetSpecies`) VALUES
(2, 'Chavalin', 1),
(3, 'Simba', 2),
(4, 'Zeus', 1),
(5, 'Garfio', 2),
(6, 'Kira', 1);

-- --------------------------------------------------------

--
-- Table structure for table `petspecies`
--

CREATE TABLE `petspecies` (
  `idSpecies` int(11) NOT NULL,
  `speciesName` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `petspecies`
--

INSERT INTO `petspecies` (`idSpecies`, `speciesName`) VALUES
(1, 'Dog'),
(2, 'Cat');

-- --------------------------------------------------------

--
-- Table structure for table `pplpets`
--

CREATE TABLE `pplpets` (
  `idPeople` int(11) NOT NULL,
  `idPet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pplpets`
--

INSERT INTO `pplpets` (`idPeople`, `idPet`) VALUES
(1, 2),
(2, 5),
(3, 4),
(4, 3),
(4, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPetSpecies` (`idPetSpecies`);

--
-- Indexes for table `petspecies`
--
ALTER TABLE `petspecies`
  ADD PRIMARY KEY (`idSpecies`);

--
-- Indexes for table `pplpets`
--
ALTER TABLE `pplpets`
  ADD KEY `idPeople` (`idPeople`,`idPet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `petspecies`
--
ALTER TABLE `petspecies`
  MODIFY `idSpecies` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
