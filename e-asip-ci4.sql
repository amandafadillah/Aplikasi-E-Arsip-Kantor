-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 09:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-asip-ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arsip`
--

CREATE TABLE `tbl_arsip` (
  `id_arsip` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `no_arsip` varchar(15) DEFAULT NULL,
  `nama_arsip` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tgl_upload` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `file_arsip` varchar(255) DEFAULT NULL,
  `ukuran_file` int(11) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_arsip`
--

INSERT INTO `tbl_arsip` (`id_arsip`, `id_kategori`, `no_arsip`, `nama_arsip`, `deskripsi`, `tgl_upload`, `tgl_update`, `file_arsip`, `ukuran_file`, `id_dep`, `id_user`) VALUES
(4, 11, '22011130-L8pJ', 'Sertifikat Pegawai', 'Sertifikat Pegawai Tahun 2021', '2022-01-11', '2022-01-11', '1641962532_e9da8c7a5b2485f04f8e.pdf', 1000, 1, 1),
(5, 1, '22011129-5oVT', 'Surat Lamaran', 'Surat Lamaran Pegawai', '2022-01-11', '2022-01-11', '1641963052_cf93463aae772caba69f.pdf', 149065, 1, 1),
(7, 1, '22011230-1mNr', 'Surat Izin Cuti', 'Surat izin cuti karena menikah', '2022-01-12', '2022-01-12', '1641976239_6c8fde5b3be272d05aea.pdf', 16633, 2, 8),
(8, 6, '22011225-RDbG', 'Surat Program Jaminan Kesehatan Nasional', 'Peraturan Menteri Kesehatan RI Nomor 28 tahun 2014 tentang Pedoman Pelaksanaaan Program Jaminan Kesehatan Nasional', '2022-01-12', '2022-01-12', '1641976695_ac6b1c1c6b6061ea31e7.pdf', 1345953, 2, 8),
(9, 1, '22011205-Lqjl', 'Laporan Perancangan Aplikasi Gaji Karyawan', 'Laporan Perancangan Aplikasi Gaji Karyawan berbasis web', '2022-01-12', '2022-01-12', '1641977157_c62fa15860de3c211ccd.pdf', 472509, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dep`
--

CREATE TABLE `tbl_dep` (
  `id_dep` int(11) NOT NULL,
  `nama_dep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dep`
--

INSERT INTO `tbl_dep` (`id_dep`, `nama_dep`) VALUES
(1, 'Keuangan'),
(2, 'Humas'),
(3, 'Pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Surat Masuk'),
(2, 'Surat Keluar'),
(3, 'Berkas Kerja'),
(4, 'Surat Keputusan'),
(5, 'Arsip Umum'),
(6, 'Berkas Kesehatan'),
(7, 'Berkas Internal'),
(11, 'Sertifikat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `level`, `foto`, `id_dep`) VALUES
(1, 'Amanda Fadillah', 'amandafadillah2002@gmail.com', '1234', 1, '1641912275_76e2f3f08a1ca1b51956.jpg', 1),
(8, 'Yana', 'yana@gmail.com', '1234', 2, '1641975090_c2ecf454ea8db59725ba.png', 2),
(9, 'Maydian', 'maydian@gmail.com', '1234', 2, '1642062520_87d77b2c8a256064cedd.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
  ADD PRIMARY KEY (`id_arsip`);

--
-- Indexes for table `tbl_dep`
--
ALTER TABLE `tbl_dep`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_dep`
--
ALTER TABLE `tbl_dep`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
