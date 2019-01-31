-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 02:39 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasa_titip`
--

--
-- Dumping data for table `barang_titip`
--

INSERT INTO `barang_titip` (`id_barang`, `nama_barang`, `id_jenis`) VALUES
('b001', 'laptop asus', 'J002'),
('b002', 'motor beat', 'J001'),
('B003', 'laptop acer', 'J002'),
('B004', 'motor mio', 'J001'),
('B005', 'laptop lenovo', 'J002');

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`, `harga_jenis`) VALUES
('J001', 'NON ELEKTRONIK', 8000),
('J002', 'ELEKTRONIK', 12000);

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `username`, `password`, `alamat`, `no_telp`) VALUES
('C001', 'Christian', 'Christian@gmail.com', 'strip007', 'siappais', 'jalan kalimantan', '081360751994'),
('C002', 'Decky', 'cul135@yahoo.com', 'cul006', 'yaae01', 'buahbatu', '081456798765'),
('C003', 'Fajar ', 'jarjar8@ymail.co.id', 'jarjar99', 'sayasuka1', 'pesona bali', '082234567876'),
('C004', 'Susi Viera', 'Viera88@gmail.com', 'viesus', 'kapan88', 'kos umayah, sukabirus', '085234567887'),
('C005', 'Giovani', 'pradana.G@gmail.com', 'pragio', 'selama69', 'smart house sukabirus', '08783459653');

--
-- Dumping data for table `penyedia_jasa`
--

INSERT INTO `penyedia_jasa` (`id_penyedia`, `nama_penyedia`) VALUES
('P001', 'Brand Jastip'),
('P002', 'JasLowTip'),
('P003', 'New TipOl'),
('P004', 'JasTip Kami'),
('P005', 'Peluang JasTip');

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `total_harga`, `id_pelanggan`, `id_penyedia`, `id_barang`) VALUES
('T001', '2018-12-06', 55000, 'C001', 'P001', 'b001'),
('T002', '2019-01-09', 32000, 'C002', 'P003', 'b002'),
('T003', '2019-01-15', 48000, 'C003', 'P004', 'B005'),
('T004', '2019-01-31', 100000, 'C005', 'P002', 'B003'),
('T005', '2019-02-13', 25000, 'C004', 'P005', 'B004');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
