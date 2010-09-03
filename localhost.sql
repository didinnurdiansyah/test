-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2009 at 04:04 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kereta`
--
CREATE DATABASE `kereta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kereta`;

-- --------------------------------------------------------

--
-- Table structure for table `Detail_Kereta`
--

CREATE TABLE IF NOT EXISTS `Detail_Kereta` (
  `No` int(11) NOT NULL auto_increment,
  `ID_Kereta` int(11) NOT NULL,
  `Nama` varchar(500) NOT NULL,
  PRIMARY KEY  (`No`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Detail_Kereta`
--

INSERT INTO `Detail_Kereta` (`No`, `ID_Kereta`, `Nama`) VALUES
(1, 1, 'KA 34'),
(2, 1, 'KA 33'),
(3, 2, 'KA 144'),
(4, 2, 'KA 143');

-- --------------------------------------------------------

--
-- Table structure for table `Jadwal`
--

CREATE TABLE IF NOT EXISTS `Jadwal` (
  `ID` int(11) NOT NULL auto_increment,
  `ID_Kereta` int(11) NOT NULL,
  `Nama_Stasiun` varchar(500) NOT NULL,
  `Da` varchar(100) NOT NULL,
  `Br` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `Jadwal`
--

INSERT INTO `Jadwal` (`ID`, `ID_Kereta`, `Nama_Stasiun`, `Da`, `Br`) VALUES
(1, 1, 'Gambir', '', '17.00'),
(2, 1, 'Jatinegara', 'Ls.', '17.09'),
(3, 1, 'Cirebon', '19.48', '19.53'),
(4, 1, 'Purwokerto', '21.57', '22.02'),
(5, 1, 'Yogyakarta', '00.34', '00.38'),
(6, 1, 'Solobalapan', '01.26', '01.30'),
(7, 1, 'Madiun', '02.57', '03.01'),
(8, 1, 'Kertosono', '04.14', '04.17'),
(9, 1, 'Jombang', '04.40', '04.42'),
(10, 1, 'Mojokerto', '05.05', '05.08'),
(11, 1, 'Surabaya Gubeng', '05.49', '05.54'),
(12, 1, 'Surabaya Kota', '06.01', ''),
(13, 2, 'Surabaya Kota', '', '16.45'),
(14, 2, 'Surabaya Gubeng', '16.52', '17.00'),
(15, 2, 'Mojokerto', '17.42', '17.44'),
(16, 2, 'Jombang', '18.06', '18.08'),
(17, 2, 'Kertosono', '18.31', '18.34'),
(18, 2, 'Madiun', '19.46', '19.50'),
(19, 2, 'Solobalapan', '21.17', '21.21'),
(20, 2, 'Yogyakarta', '22.09', '22.14'),
(21, 2, 'Purwokerto', '00.52', '01.02'),
(22, 2, 'Cirebon', '03.15', '03.25'),
(23, 2, 'Jatinegara', ' 06.08', ' 06.10'),
(24, 2, 'Gambir', '06.30', ''),
(25, 3, 'Jakartakota', '', '12.00'),
(26, 3, 'Pasarsenen', '12.15', '12.20'),
(27, 3, 'Jatinegara', '12.30', '12.32'),
(28, 3, 'Bekasi', '12.47', '12.49'),
(29, 3, 'Karawang', '13.23', '13.25'),
(30, 3, 'Pegadenbaru', '14.22', '14.24'),
(31, 3, 'Jatibarang', '15.14', '15.16'),
(32, 3, 'Cirebon', '15.51', '16.00'),
(33, 3, 'Ciledug', 'Ls.', 'Ls.'),
(34, 3, 'Purwokerto', '18.17', '18.22'),
(35, 3, 'Kroya', '18.50', '18.52'),
(36, 3, 'Gombong', '19.19', '19.22'),
(37, 3, 'Kebumen', '19.49', '19.52'),
(38, 3, 'Kutoarjo', '20.27', '20.30'),
(39, 3, 'Wates', 'Ls.', 'Ls.'),
(40, 3, 'Lempuyangan', '21.27', '21.32'),
(41, 3, 'Klaten', '21.54', '21.56'),
(42, 3, 'Solojebres', '22.30', '22.35'),
(43, 3, 'Sragen', '22.59', '23.01'),
(44, 3, 'Paron', 'Ls.', 'Ls.'),
(45, 3, 'Madiun', '00.13', '00.17'),
(46, 3, 'Nganjuk', '01.07', '01.09'),
(47, 3, 'Kertosono', '01.37', '01.40'),
(48, 3, 'Jombang', '02.04', '02.06'),
(49, 3, 'Mojokerto', '02.29', '02.32'),
(50, 3, 'Wonokromo', '03.09', '03.11'),
(51, 3, 'Surabaya Gubeng', '03.17', ''),
(52, 3, 'Surabaya Kota', '', ''),
(53, 4, 'Surabaya Kota', '', ''),
(54, 4, 'Surabaya Gubeng', '', '14.00'),
(55, 4, 'Wonokromo', '14.06', '14.10'),
(56, 4, 'Mojokerto', '14.47', '14.49'),
(57, 4, 'Jombang', '15.12', '15.15'),
(58, 4, 'Kertosono', '15.39', '15.42'),
(59, 4, 'Nganjuk', '16.10', '16.12'),
(60, 4, 'Madiun', '17.17', '17.21'),
(61, 4, 'Paron', '17.49', '17.59'),
(62, 4, 'Sragen', '18.47', '18.49'),
(63, 4, 'Solojebres', '19.15', '19.35'),
(64, 4, 'Klaten', '20.09', '20.12'),
(65, 4, 'Lempuyangan', '20.35', '20.58'),
(66, 4, 'Wates', '21.27', '21.29'),
(67, 4, 'Kutoarjo', '22.57', '22.00'),
(68, 4, 'Kebumen', '22.29', '22.31'),
(69, 4, 'Gombong', '22.52', '23.02'),
(70, 4, 'Kroya', '23.45', '23.50'),
(71, 4, 'Purwokerto', '00.17', '00.25'),
(72, 4, 'Ciledug', '02.42', '02.58'),
(73, 4, 'Cirebon', '03.25', '03.35'),
(74, 4, 'Jatibarang', 'Ls.', 'Ls.'),
(75, 4, 'Pegadenbaru', 'Ls.', 'Ls.'),
(76, 4, 'Karawang', '06.10', '06.12'),
(77, 4, 'Bekasi', 'Ls.', 'Ls.'),
(78, 4, 'Jatinegara', '07.03', '07.05'),
(79, 4, 'Pasarsenen', '07.15', '07.17'),
(80, 4, 'Jakartakota', '07.31', '');

-- --------------------------------------------------------

--
-- Table structure for table `Jurusan`
--

CREATE TABLE IF NOT EXISTS `Jurusan` (
  `ID` int(11) NOT NULL default '0',
  `Jurusan` varchar(500) NOT NULL,
  `Kereta` varchar(500) NOT NULL,
  `Asal` varchar(500) NOT NULL,
  `Tujuan` varchar(500) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Jurusan`
--

INSERT INTO `Jurusan` (`ID`, `Jurusan`, `Kereta`, `Asal`, `Tujuan`) VALUES
(0, 'JAKARTA - YOGYAKARTA - SURABAYA (GUBENG) PP.', 'KA BIMA, KA GAYABARU MALAM SELATAN', 'JAKARTA', 'SURABAYA GUBENG'),
(1, 'JAKARTA - TEGAL - SEMARANG - SURABAYA(PS TURI) PP.', 'KA KERTAJAYA, KA TAWANGJAYA, KA TEGALARUM', 'JAKARTA', 'SURABAYA PS TURI'),
(2, 'JAKARTA - SURABAYA (PS.TURI) PP.', 'KA ARGO BROMO ANGGREK, KA SEMBRANI, KA GUMARANG ', 'JAKARTA', 'SURABAYA PS.TURI');

-- --------------------------------------------------------

--
-- Table structure for table `Kereta`
--

CREATE TABLE IF NOT EXISTS `Kereta` (
  `ID_Kereta` int(11) NOT NULL auto_increment,
  `ID_Jurusan` int(11) NOT NULL,
  `Nama_Kereta` varchar(500) NOT NULL,
  `Jurusan` varchar(500) NOT NULL,
  `Asal` varchar(300) NOT NULL,
  `Tujuan` varchar(300) NOT NULL,
  PRIMARY KEY  (`ID_Kereta`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Kereta`
--

INSERT INTO `Kereta` (`ID_Kereta`, `ID_Jurusan`, `Nama_Kereta`, `Jurusan`, `Asal`, `Tujuan`) VALUES
(1, 0, 'KA BIMA', 'Gambir - Surabaya Kota PP.', 'GAMBIR', 'SURABAYA KOTA'),
(2, 0, 'KA GAYABARU MALAM SELATAN', 'Jakartakota - Surabaya Kota PP.', 'JAKARTAKOTA', 'SURABAYA KOTA');

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE IF NOT EXISTS `News` (
  `ID` int(11) NOT NULL auto_increment,
  `Header` varchar(500) NOT NULL,
  `Content` varchar(2000) NOT NULL,
  `Tanggal` date NOT NULL,
  `Gambar` varchar(400) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `News`
--

INSERT INTO `News` (`ID`, `Header`, `Content`, `Tanggal`, `Gambar`) VALUES
(1, 'PAKET HEMAT MUDIK LEBARAN KA', 'Dengan KA KERTAJAYA , KA KOMUNITAS dan KA BENGAWAN Satu Keluarga (Suami,Isteri dan Anak ) Membawa Speda Motor Hanya Rp 297.000,- dari Jakarta ke Surabaya, Rp 279.000,- dari Jakarta ke Solo. PELAYANAN MULAI 15 HARI SEBELUM KEBERANGKATAN', '2009-09-02', 'http://localhost/coba/pic/pic1.jpg'),
(2, 'PESAN TIKET MELALUI CALL CENTER KA', 'Bertepatan dengan HUT-RI ke 64, Call Center KA dibuka untuk melayani pemesanan tiket Kereta Api kelas Komersial melalui telepon 021-6916060 dan 121 untuk panggilan dari telepon rumah. ', '2009-09-06', 'http://localhost/coba/pic/pic2.jpg');
