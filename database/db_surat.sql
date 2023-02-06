-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 06:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `id_user`) VALUES
(6, 'Kepala', 5),
(7, 'Bendahara', 5),
(8, 'Sekretaris', 5),
(9, 'Kaur Umum', 5),
(10, 'Kaur Keuangan', 5),
(11, 'Kaur Pemerintahan', 5),
(12, 'Kaur Kesra', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(32, 'bd89ab44e85c62ff590ce69785da0c26', 'COBA_COBA.docx', '11.82'),
(33, '82d5eb43cb233a70d20b75aff5ed515e', 'rick-and-morty-rick-5120x2880-9494.png', '1241.14'),
(34, 'a30c7c2c5ecf86607c6d8d41c3755abc', 'super-nintendo-3840x2160-9528.png', '234.87'),
(35, 'b7902195fd8c75e49ab7321eec8da219', 'rick-and-morty-rick-5120x2880-94941.png', '1241.14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_memo`
--

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL,
  `judul_memo` text DEFAULT NULL,
  `memo` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ns`
--

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL,
  `separator` text DEFAULT NULL,
  `no_posisi` text DEFAULT NULL,
  `no` text DEFAULT NULL,
  `org_posisi` text DEFAULT NULL,
  `org` text DEFAULT NULL,
  `bag_posisi` text DEFAULT NULL,
  `bag` text DEFAULT NULL,
  `subbag_posisi` text DEFAULT NULL,
  `subbag` text DEFAULT NULL,
  `bln_posisi` text DEFAULT NULL,
  `bln` text DEFAULT NULL,
  `thn_posisi` text DEFAULT NULL,
  `thn` text DEFAULT NULL,
  `reset_no` text DEFAULT NULL,
  `prefix` text DEFAULT NULL,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sk`
--

INSERT INTO `tbl_sk` (`id_sk`, `no_surat`, `tgl_ns`, `pengirim`, `penerima`, `perihal`, `id_bagian`, `token_lampiran`, `id_user`, `dibaca`, `disposisi`, `peringatan`, `tgl_sk`) VALUES
(16, 'SKm/001', '05-01-2023', '', '', 'vigma.com', 0, 'b7902195fd8c75e49ab7321eec8da219', 6, 0, '', 0, '06-01-2023');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text DEFAULT NULL,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text DEFAULT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sm`
--

INSERT INTO `tbl_sm` (`id_sm`, `no_surat`, `tgl_ns`, `no_asal`, `tgl_no_asal`, `pengirim`, `penerima`, `perihal`, `token_lampiran`, `dibaca`, `disposisi`, `id_user`, `tgl_sm`) VALUES
(17, 'SKm/001', '05-01-2023', 'SKm/001', '05-01-2023', 'KAUR UMUM', 'KEPALA', 'COBA COBA', 'bd89ab44e85c62ff590ce69785da0c26', 0, 0, 0, '06-01-2023'),
(18, 'SKm/002', '05-01-2023', 'SKm/002', '05-01-2023', 'KAUR UMUM', '1', 'nyoba2', '82d5eb43cb233a70d20b75aff5ed515e', 0, 0, 1, '06-01-2023'),
(19, 'SKm/003', '05-01-2023', 'SKm/003', '05-01-2023', 'ADMIN3', 'KEPALA', 'GAS', 'a30c7c2c5ecf86607c6d8d41c3755abc', 0, 0, 0, '06-01-2023');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text DEFAULT NULL,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `alamat`, `telp`, `pengalaman`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'KEPALA', 'kepala@gmail.com', 'Cikaum Subang Jawa Barat Indonesia', '123456789', 'ok', 's_admin', 'aktif', '07-10-2017 17:03:12', '06-01-2023 00:52:13'),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'KAUR UMUM', 'kaurumum@gmail.com', 'Cikaum', '123456789', 'ok', 'admin', 'aktif', '07-10-2017 17:30:08', '06-01-2023 00:44:23'),
(6, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'SEKRETARIS', 'sekretaris@gmail.com', 'Cikaum', '123456789', 'ok', 'user', 'aktif', '07-10-2017 17:31:54', '06-01-2023 00:50:20'),
(7, 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6', 'ADMIN3', '-ADMIN3@GMAIL.COM', '-CIKAUM', '-12345678', '-OKE', 'admin', 'aktif', '06-01-2023 00:48:24', '06-01-2023 00:48:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indexes for table `tbl_memo`
--
ALTER TABLE `tbl_memo`
  ADD PRIMARY KEY (`id_memo`);

--
-- Indexes for table `tbl_ns`
--
ALTER TABLE `tbl_ns`
  ADD PRIMARY KEY (`id_ns`);

--
-- Indexes for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indexes for table `tbl_sm`
--
ALTER TABLE `tbl_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_memo`
--
ALTER TABLE `tbl_memo`
  MODIFY `id_memo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_ns`
--
ALTER TABLE `tbl_ns`
  MODIFY `id_ns` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id_sk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_sm`
--
ALTER TABLE `tbl_sm`
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
