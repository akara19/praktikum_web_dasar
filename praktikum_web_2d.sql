-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 01:43 PM
-- Server version: 5.7.16-log
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_web_2d`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Kode` char(50) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Harga_beli` int(11) DEFAULT NULL,
  `Harga_jual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detil`
--

CREATE TABLE `pembelian_detil` (
  `No_nota` varchar(50) NOT NULL,
  `Kode_barang` char(20) NOT NULL,
  `Harga_beli` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_master`
--

CREATE TABLE `pembelian_master` (
  `No_nota` varchar(50) NOT NULL,
  `Tgl` date DEFAULT NULL,
  `Kode_sup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detil`
--

CREATE TABLE `penjualan_detil` (
  `No_nota` varchar(50) NOT NULL,
  `Kode_barang` char(20) NOT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Harga_beli` int(11) DEFAULT NULL,
  `Harga_jual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_master`
--

CREATE TABLE `penjualan_master` (
  `No_nota` varchar(50) NOT NULL,
  `Tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Kode` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Telp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `pembelian_detil`
--
ALTER TABLE `pembelian_detil`
  ADD PRIMARY KEY (`No_nota`,`Kode_barang`) USING BTREE;

--
-- Indexes for table `pembelian_master`
--
ALTER TABLE `pembelian_master`
  ADD PRIMARY KEY (`No_nota`);

--
-- Indexes for table `penjualan_detil`
--
ALTER TABLE `penjualan_detil`
  ADD PRIMARY KEY (`No_nota`,`Kode_barang`);

--
-- Indexes for table `penjualan_master`
--
ALTER TABLE `penjualan_master`
  ADD PRIMARY KEY (`No_nota`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `Kode` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
