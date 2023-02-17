-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 09:33 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brem01`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `name` varchar(225) NOT NULL,
  `stok` varchar(11) NOT NULL,
  `harga` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`name`, `stok`, `harga`) VALUES
('Bram Merah', '50', '10.000'),
('Brem Coklat', '123', '15000'),
('Brem Hijau', '20', '12.000'),
('Brem Original', '20', '10.000');

-- --------------------------------------------------------

--
-- Table structure for table `barang2`
--

CREATE TABLE `barang2` (
  `id_barang` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `stok` varchar(200) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang2`
--

INSERT INTO `barang2` (`id_barang`, `name`, `stok`, `harga`) VALUES
(1, 'Brem Merah', '120', '12.000'),
(2, 'Brem Original', '100', '15.000'),
(3, 'Brem Coklat', '120', '13.000\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `datapesanan`
--

CREATE TABLE `datapesanan` (
  `no_tlp` char(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kategori` varchar(25) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datapesanan`
--

INSERT INTO `datapesanan` (`no_tlp`, `alamat`, `kategori`, `jumlah`, `foto`) VALUES
('08811417890', 'jl rambutan', 'merah', '8', 'unnamed2.png'),
('08811417899', 'jl apel', 'coklat', '8', 'Screenshot (21).png'),
('08811419800', 'jl madu', 'original', '4', 'Screenshot (21).png'),
('08811419839', 'jl yoga', 'merah', '3', 'Lighthouse.jpg'),
('08811419859', 'jl madu', 'merah', '2', 'Lighthouse.jpg'),
('08811919800', 'jl apel merah', 'original', '5', 'Screenshot (21).png'),
('2235235', 'jl merdeka', 'coklat', '2', 'unnamed4.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `name`) VALUES
('admin', 'admin', 'Admin'),
('user', 'user', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `barang2`
--
ALTER TABLE `barang2`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `datapesanan`
--
ALTER TABLE `datapesanan`
  ADD PRIMARY KEY (`no_tlp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang2`
--
ALTER TABLE `barang2`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
