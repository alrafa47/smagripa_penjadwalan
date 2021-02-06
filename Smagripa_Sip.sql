-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 07:41 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smagripa_sip`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(32) NOT NULL,
  `status` varchar(10) NOT NULL,
  `pendidikan_terakhir` varchar(10) NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `code_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `status`, `pendidikan_terakhir`, `no_telp`, `email`, `code_color`) VALUES
(1, 'Kuswan Effendy, SH SPd MM', 'tetap', 's1', '123', 'www@mail.com', '#f3a683'),
(2, 'H. Mahmud, BA', 'tetap', 's1', '124', 'www@mail.com', '#f7d794'),
(3, 'Drs. Subinarto', 'tetap', 's1', '125', 'www@mail.com', '#778beb'),
(4, 'Bayu Hermawan, S.E, SPd', 'tetap', 's1', '126', 'www@mail.com', '#e77f67'),
(5, 'Kuswandik SPd', 'tetap', 's1', '130', 'www@mail.com', '#cf6a87'),
(6, 'Jannatul Ma\'wa SS', 'tetap', 's1', '133', 'www@mail.com', '#f19066'),
(7, 'Dra. Ratna Widyawati', 'tetap', 's1', '135', 'www@mail.com', '#f5cd79'),
(8, 'Asri Bawani SPd', 'tetap', 's1', '140', 'www@mail.com', '#546de5'),
(9, 'Suwaji, SPd, MPd', 'tetap', 's1', '141', 'www@mail.com', '#e15f41'),
(10, 'Sutriasih, S.Pd, M.Pd', 'tetap', 's1', '143', 'www@mail.com', '#c44569'),
(11, 'Anna Nurul Kristiani, S.Pd', 'tetap', 's1', '144', 'www@mail.com', '#786fa6'),
(12, 'Ridwan S.Ag', 'tetap', 's1', '148', 'www@mail.com', '#f8a5c2'),
(13, 'Drs. Samiono', 'tetap', 's1', '149', 'www@mail.com', '#63cdda'),
(14, 'Zuyina Lutfah. SE SPd', 'tetap', 's1', '150', 'www@mail.com', '#ea8685'),
(15, 'Sri Riwayati,S.Pd', 'tetap', 's1', '157', 'www@mail.com', '#596275'),
(16, 'Amnah Matamim, SPd', 'tetap', 's1', '159', 'www@mail.com', '#574b90'),
(17, 'Kamalat Fika Lidinillah, S.Pd', 'tetap', 's1', '161', 'www@mail.com', '#f78fb3'),
(18, 'Nasikan, S.PdI', 'tetap', 's1', '166', 'www@mail.com', '#3dc1d3'),
(19, 'Sulistyowati, S.Pd', 'tetap', 's1', '167', 'www@mail.com', '#e66767'),
(20, 'Ludi Widiyawan', 'tetap', 's1', '168', 'www@mail.com', '#aaa69d'),
(21, 'Heti Putikasari, S.H, S.Pd', 'tetap', 's1', '169', 'www@mail.com', '#ffb142'),
(22, 'Nanda Tri Pramita, S.Pd.H', 'tetap', 's1', '172', 'www@mail.com', '#33d9b2'),
(23, 'Aisyah vidiana, S.Pd', 'tetap', 's1', '174', 'www@mail.com', '#ccae62'),
(24, 'Meita Dwiantari, S.Pd', 'tetap', 's1', '179', 'www@mail.com', '#218c74'),
(25, 'Sumiati, S.Pd', 'tetap', 's1', '184', 'www@mail.com', '#ffd32a'),
(26, 'Rinda Dwi Agustin., S.Pd', 'tetap', 's1', '2323', 'www@yahoo.com', '#e7ffbf'),
(27, 'Novi Rachmawati', 'honorer', 'smk', '23232', 'www@gmail.com', '#6c5e7d');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(20) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `jumlah_sesi` int(11) NOT NULL,
  `lama_sesi` int(11) NOT NULL,
  `jam_mulai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`, `jumlah_sesi`, `lama_sesi`, `jam_mulai`) VALUES
(9, 'Senin', 10, 35, '07:00:00'),
(10, 'Selasa', 10, 35, '07:00:00'),
(11, 'Rabu', 10, 35, '07:00:00'),
(12, 'Kamis', 10, 35, '07:00:00'),
(13, 'Jum`at', 8, 30, '07:00:00'),
(14, 'Sabtu', 10, 35, '07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_khusus`
--

CREATE TABLE `jadwal_khusus` (
  `id_jadwal_khusus` int(11) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `keterangan` varchar(32) NOT NULL,
  `sesi` varchar(2) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_khusus`
--

INSERT INTO `jadwal_khusus` (`id_jadwal_khusus`, `kelas`, `keterangan`, `sesi`, `hari`, `durasi`) VALUES
(1, 'X', 'upacara', '0', 'Senin', 60),
(2, 'XI', 'upacara', '0', 'Senin', 60),
(3, 'XII', 'upacara', '0', 'Senin', 60),
(4, 'X', 'istirahat 1', '5', 'Senin', 30),
(5, 'XI', 'istirahat 1', '5', 'Senin', 30),
(6, 'XII', 'istirahat 1', '5', 'Senin', 30),
(7, 'X', 'istirahat 1', '5', 'Selasa', 30),
(8, 'XI', 'istirahat 1', '5', 'Selasa', 30),
(9, 'XII', 'istirahat 1', '5', 'Selasa', 30),
(10, 'X', 'istirahat 1', '5', 'Rabu', 30),
(11, 'XI', 'istirahat 1', '5', 'Rabu', 30),
(12, 'XII', 'istirahat 1', '5', 'Rabu', 30),
(13, 'X', 'istirahat 1', '5', 'Kamis', 30),
(14, 'XI', 'istirahat 1', '5', 'Kamis', 30),
(15, 'XII', 'istirahat 1', '5', 'Kamis', 30),
(16, 'X', 'istirahat 1', '5', 'Sabtu', 30),
(17, 'XI', 'istirahat 1', '5', 'Sabtu', 30),
(18, 'XII', 'istirahat 1', '5', 'Sabtu', 30),
(19, 'X', 'istirahat 1', '5', 'Jum`at', 20),
(20, 'XI', 'istirahat 1', '5', 'Jum`at', 20),
(21, 'XII', 'istirahat 1', '5', 'Jum`at', 20),
(22, 'X', 'istirahat 2', '9', 'Senin', 15),
(23, 'XI', 'istirahat 2', '9', 'Senin', 15),
(24, 'XII', 'istirahat 2', '9', 'Senin', 15),
(25, 'X', 'istirahat 2', '9', 'Selasa', 15),
(26, 'XI', 'istirahat 2', '9', 'Selasa', 15),
(27, 'XII', 'istirahat 2', '9', 'Selasa', 15),
(28, 'X', 'istirahat 2', '9', 'Rabu', 15),
(29, 'XI', 'istirahat 2', '9', 'Rabu', 15),
(30, 'XII', 'istirahat 2', '9', 'Rabu', 15),
(31, 'X', 'istirahat 2', '9', 'Kamis', 15),
(32, 'XI', 'istirahat 2', '9', 'Kamis', 15),
(33, 'XII', 'istirahat 2', '9', 'Kamis', 15),
(34, 'X', 'istirahat 2', '9', 'Sabtu', 15),
(35, 'XI', 'istirahat 2', '9', 'Sabtu', 15),
(36, 'XII', 'istirahat 2', '9', 'Sabtu', 15),
(37, 'X', 'extrakulikuler', '8', 'Jum`at', 120),
(38, 'XI', 'extrakulikuler', '8', 'Jum`at', 120),
(39, 'XII', 'extrakulikuler', '8', 'Jum`at', 120),
(40, 'X', 'extrakulikuler', '10', 'Sabtu', 35),
(41, 'X', 'extrakulikuler', '11', 'Sabtu', 35),
(42, 'XII', '-', '10', 'Sabtu', 25),
(43, 'XII', '-', '11', 'Sabtu', 25),
(44, 'X', 'Sholat Dhuha', '0', 'Selasa', 30),
(45, 'XI', 'Sholat Dhuha', '0', 'Selasa', 30),
(46, 'XII', 'Sholat Dhuha', '0', 'Selasa', 30),
(47, 'X', 'Sholat Dhuha', '0', 'Rabu', 30),
(48, 'XI', 'Sholat Dhuha', '0', 'Rabu', 30),
(49, 'XII', 'Sholat Dhuha', '0', 'Rabu', 30),
(50, 'X', 'Sholat Dhuha', '0', 'Kamis', 30),
(51, 'XI', 'Sholat Dhuha', '0', 'Kamis', 30),
(52, 'XII', 'Sholat Dhuha', '0', 'Kamis', 30),
(53, 'X', 'Sholat Dhuha', '0', 'Jum`at', 30),
(54, 'XI', 'Sholat Dhuha', '0', 'Jum`at', 30),
(55, 'XII', 'Sholat Dhuha', '0', 'Jum`at', 30),
(56, 'X', 'Sholat Dhuha', '0', 'Sabtu', 30),
(57, 'XI', 'Sholat Dhuha', '0', 'Sabtu', 30),
(58, 'XII', 'Sholat Dhuha', '0', 'Sabtu', 30);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
('akn', 'akuntansi bisnis'),
('kntr', 'perkantoran');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(16) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `id_jurusan` varchar(10) NOT NULL,
  `nama_kelas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `id_jurusan`, `nama_kelas`) VALUES
('XaknA', 'X', 'akn', 'A'),
('XIaknA', 'XI', 'akn', 'A'),
('XIIaknA', 'XII', 'akn', 'A'),
('XIIkntrA', 'XII', 'kntr', 'A'),
('XIkntrA', 'XI', 'kntr', 'A'),
('XkntrA', 'X', 'kntr', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `kelompok_mapel` varchar(1) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `beban_jam` int(11) NOT NULL,
  `id_jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode_mapel`, `nama_mapel`, `kelompok_mapel`, `kelas`, `beban_jam`, `id_jurusan`) VALUES
(258, 'A', 'Pend. Agama dan Budi Pekerti', 'A', 'XII', 1, 'akn'),
(259, 'A', 'Pend. Agama dan Budi Pekerti', 'A', 'XII', 1, 'kntr'),
(260, 'AK', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', 'C', 'XI', 3, 'akn'),
(261, 'W', 'Akuntansi Keuangan', 'C', 'XII', 3, 'akn'),
(262, 'AC', 'Komputer Akuntansi (Myob)', 'C', 'XI', 3, 'akn'),
(263, 'AC', 'Komputer Akuntansi (Myob)', 'C', 'XII', 3, 'akn'),
(264, 'AD', 'Spreedsheet', 'C', 'X', 2, 'akn'),
(265, 'C', 'Bhs. Indonesia', 'A', 'X', 2, 'akn'),
(266, 'C', 'Bhs. Indonesia', 'A', 'X', 2, 'kntr'),
(267, 'C', 'Bhs. Indonesia', 'A', 'XI', 2, 'akn'),
(268, 'C', 'Bhs. Indonesia', 'A', 'XI', 2, 'kntr'),
(269, 'C', 'Bhs. Indonesia', 'A', 'XII', 2, 'akn'),
(270, 'C', 'Bhs. Indonesia', 'A', 'XII', 2, 'kntr'),
(271, 'F', 'Bhs Inggris dan Bahasa Asing Lainnya', 'A', 'X', 2, 'akn'),
(272, 'F', 'Bhs Inggris dan Bahasa Asing Lainnya', 'A', 'X', 2, 'kntr'),
(273, 'F', 'Bhs Inggris dan Bahasa Asing Lainnya', 'A', 'XII', 2, 'akn'),
(274, 'F', 'Bhs Inggris dan Bahasa Asing Lainnya', 'A', 'XII', 2, 'kntr'),
(275, 'AG', 'Korespondensi', 'C', 'X', 3, 'kntr'),
(276, 'J', 'Ekonomi Bisnis ', 'C', 'X', 1, 'akn'),
(277, 'J', 'Ekonomi Bisnis ', 'C', 'X', 1, 'kntr'),
(278, 'AH', 'Kearsipan', 'C', 'X', 2, 'kntr'),
(279, 'AO', 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', 'XI', 3, 'kntr'),
(280, 'D', 'Matematika', 'A', 'XI', 2, 'akn'),
(281, 'D', 'Matematika', 'A', 'XI', 2, 'kntr'),
(282, 'D', 'Matematika', 'A', 'XII', 2, 'akn'),
(283, 'D', 'Matematika', 'A', 'XII', 2, 'kntr'),
(284, 'T', 'IPA', 'A', 'X', 1, 'akn'),
(285, 'T', 'IPA', 'A', 'X', 1, 'kntr'),
(286, 'I', 'Penjasorkes', 'A', 'X', 1, 'akn'),
(287, 'I', 'Penjasorkes', 'A', 'X', 1, 'kntr'),
(288, 'I', 'Penjasorkes', 'A', 'XI', 1, 'akn'),
(289, 'I', 'Penjasorkes', 'A', 'XI', 1, 'kntr'),
(290, 'U', 'Administrasi Pajak', 'C', 'XI', 2, 'akn'),
(291, 'H', 'Sejarah Indonesia', 'A', 'X', 2, 'akn'),
(292, 'H', 'Sejarah Indonesia', 'A', 'X', 2, 'kntr'),
(293, 'Y', 'Produk Kreatif Dan Kewirausahaan', 'C', 'XI', 4, 'kntr'),
(294, 'AM', 'Otomatisasi Tata Kelola Kepegawaian', 'C', 'XII', 4, 'kntr'),
(295, 'A', 'Pend. Agama dan Budi Pekerti', 'A', 'XI', 2, 'akn'),
(296, 'A', 'Pend. Agama dan Budi Pekerti', 'A', 'XI', 2, 'kntr'),
(297, 'B', 'PPKN', 'A', 'X', 1, 'akn'),
(298, 'B', 'PPKN', 'A', 'X', 1, 'kntr'),
(299, 'AA', 'Perbankan Dasar', 'C', 'X', 2, 'akn'),
(300, 'U', 'Administrasi Pajak', 'C', 'XII', 2, 'akn'),
(301, 'AF', 'Administrasi Umum', 'C', 'X', 1, 'akn'),
(302, 'AF', 'Administrasi Umum', 'C', 'X', 1, 'kntr'),
(303, 'AP', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', 'XI', 3, 'kntr'),
(304, 'AP', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', 'XII', 3, 'kntr'),
(305, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XII', 4, 'kntr'),
(306, 'AE', 'Etika Profesi', 'C', 'X', 1, 'akn'),
(307, 'D', 'Matematika', 'A', 'X', 2, 'akn'),
(308, 'D', 'Matematika', 'A', 'X', 2, 'kntr'),
(309, 'A', 'Pend. Agama dan Budi Pekerti', 'A', 'X', 2, 'akn'),
(310, 'A', 'Pend. Agama dan Budi Pekerti', 'A', 'X', 2, 'kntr'),
(311, 'Z', 'Pend. BK', 'A', 'X', 1, 'akn'),
(312, 'Z', 'Pend. BK', 'A', 'X', 1, 'kntr'),
(313, 'Z', 'Pend. BK', 'A', 'XI', 1, 'akn'),
(314, 'Z', 'Pend. BK', 'A', 'XI', 1, 'kntr'),
(315, 'Z', 'Pend. BK', 'A', 'XII', 1, 'akn'),
(316, 'Z', 'Pend. BK', 'A', 'XII', 1, 'kntr'),
(317, 'S', 'Simulagi Digital', 'C', 'X', 2, 'akn'),
(318, 'S', 'Simulagi Digital', 'C', 'X', 2, 'kntr'),
(319, 'B', 'PPKN', 'A', 'XI', 1, 'akn'),
(320, 'B', 'PPKN', 'A', 'XI', 1, 'kntr'),
(321, 'B', 'PPKN', 'A', 'XII', 1, 'akn'),
(322, 'B', 'PPKN', 'A', 'XII', 1, 'kntr'),
(323, 'G', 'Seni Budaya', 'A', 'X', 2, 'akn'),
(324, 'G', 'Seni Budaya', 'A', 'X', 2, 'kntr'),
(325, 'N', 'Akuntansi Dasar', 'C', 'X', 3, 'akn'),
(326, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XI', 4, 'akn'),
(327, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XII', 4, 'akn'),
(328, 'AM', 'Otomatisasi Tata Kelola Kepegawaian', 'C', 'XI', 3, 'kntr'),
(329, 'AN', 'Otomatisasi Tata Kelola Keuangan', 'C', 'XI', 3, 'kntr'),
(330, 'AN', 'Otomatisasi Tata Kelola Keuangan', 'C', 'XII', 3, 'kntr'),
(331, 'AO', 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', 'XII', 3, 'kntr'),
(332, 'AI', 'Teknologi Perkantoran', 'C', 'X', 3, 'kntr'),
(333, 'AJ', 'Bahasa Jawa', 'A', 'X', 1, 'akn'),
(334, 'AJ', 'Bahasa Jawa', 'A', 'X', 1, 'kntr'),
(335, 'AJ', 'Bahasa Jawa', 'A', 'XI', 1, 'akn'),
(336, 'AJ', 'Bahasa Jawa', 'A', 'XI', 1, 'kntr'),
(337, 'F', 'Bhs Inggris dan Bahasa Asing Lainnya', 'A', 'XI', 2, 'akn'),
(338, 'F', 'Bhs Inggris dan Bahasa Asing Lainnya', 'A', 'XI', 2, 'kntr'),
(339, '90', 'ulvadwi', 'A', 'X', 200, 'akn');

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan`
--

CREATE TABLE `penjadwalan` (
  `id_penjadwalan` int(11) NOT NULL,
  `id_kelas` varchar(16) CHARACTER SET latin1 NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `hari` varchar(6) NOT NULL,
  `sesi` int(11) NOT NULL,
  `kode_jadwal` varchar(16) NOT NULL,
  `keterangan` varchar(64) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjadwalan`
--

INSERT INTO `penjadwalan` (`id_penjadwalan`, `id_kelas`, `id_guru`, `id_mapel`, `hari`, `sesi`, `kode_jadwal`, `keterangan`, `jam_mulai`, `jam_selesai`) VALUES
(7501, 'XaknA', NULL, NULL, 'Senin', 0, '1', 'upacara', '07:00:00', '08:00:00'),
(7502, 'XaknA', 4, 264, 'Senin', 1, '4-264-XaknA', 'Spreedsheet', '08:00:00', '08:35:00'),
(7503, 'XaknA', 4, 264, 'Senin', 2, '4-264-XaknA', 'Spreedsheet', '08:35:00', '09:10:00'),
(7504, 'XaknA', 14, 301, 'Senin', 3, '14-301-XaknA', 'Administrasi Umum', '09:10:00', '09:45:00'),
(7505, 'XaknA', 23, 325, 'Senin', 4, '23-325-XaknA', 'Akuntansi Dasar', '09:45:00', '10:20:00'),
(7506, 'XaknA', NULL, NULL, 'Senin', 5, '4', 'istirahat 1', '10:20:00', '10:50:00'),
(7507, 'XaknA', 23, 325, 'Senin', 6, '23-325-XaknA', 'Akuntansi Dasar', '10:50:00', '11:25:00'),
(7508, 'XaknA', 23, 325, 'Senin', 7, '23-325-XaknA', 'Akuntansi Dasar', '11:25:00', '12:00:00'),
(7509, 'XaknA', NULL, NULL, 'Senin', 8, '-', 'kosong', '12:00:00', '12:35:00'),
(7510, 'XaknA', NULL, NULL, 'Senin', 9, '22', 'istirahat 2', '12:35:00', '12:50:00'),
(7511, 'XaknA', NULL, NULL, 'Selasa', 0, '44', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7512, 'XaknA', 5, 265, 'Selasa', 1, '5-265-XaknA', 'Bhs. Indonesia', '07:30:00', '08:05:00'),
(7513, 'XaknA', 5, 265, 'Selasa', 2, '5-265-XaknA', 'Bhs. Indonesia', '08:05:00', '08:40:00'),
(7514, 'XaknA', 19, 311, 'Selasa', 3, '19-311-XaknA', 'Pend. BK', '08:40:00', '09:15:00'),
(7515, 'XaknA', 15, 306, 'Selasa', 4, '15-306-XaknA', 'Etika Profesi', '09:15:00', '09:50:00'),
(7516, 'XaknA', NULL, NULL, 'Selasa', 5, '7', 'istirahat 1', '09:50:00', '10:20:00'),
(7517, 'XaknA', 13, 297, 'Selasa', 6, '13-297-XaknA', 'PPKN', '10:20:00', '10:55:00'),
(7518, 'XaknA', NULL, NULL, 'Selasa', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7519, 'XaknA', NULL, NULL, 'Selasa', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7520, 'XaknA', NULL, NULL, 'Selasa', 9, '25', 'istirahat 2', '12:05:00', '12:20:00'),
(7521, 'XaknA', NULL, NULL, 'Rabu', 0, '47', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7522, 'XaknA', 14, 299, 'Rabu', 1, '14-299-XaknA', 'Perbankan Dasar', '07:30:00', '08:05:00'),
(7523, 'XaknA', 14, 299, 'Rabu', 2, '14-299-XaknA', 'Perbankan Dasar', '08:05:00', '08:40:00'),
(7524, 'XaknA', 9, 286, 'Rabu', 3, '9-286-XaknA', 'Penjasorkes', '08:40:00', '09:15:00'),
(7525, 'XaknA', 6, 271, 'Rabu', 4, '6-271-XaknA', 'Bhs Inggris dan Bahasa Asing Lainnya', '09:15:00', '09:50:00'),
(7526, 'XaknA', NULL, NULL, 'Rabu', 5, '10', 'istirahat 1', '09:50:00', '10:20:00'),
(7527, 'XaknA', 6, 271, 'Rabu', 6, '6-271-XaknA', 'Bhs Inggris dan Bahasa Asing Lainnya', '10:20:00', '10:55:00'),
(7528, 'XaknA', NULL, NULL, 'Rabu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7529, 'XaknA', NULL, NULL, 'Rabu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7530, 'XaknA', NULL, NULL, 'Rabu', 9, '28', 'istirahat 2', '12:05:00', '12:20:00'),
(7531, 'XaknA', NULL, NULL, 'Kamis', 0, '50', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7532, 'XaknA', 11, 291, 'Kamis', 1, '11-291-XaknA', 'Sejarah Indonesia', '07:30:00', '08:05:00'),
(7533, 'XaknA', 11, 291, 'Kamis', 2, '11-291-XaknA', 'Sejarah Indonesia', '08:05:00', '08:40:00'),
(7534, 'XaknA', 8, 284, 'Kamis', 3, '8-284-XaknA', 'IPA', '08:40:00', '09:15:00'),
(7535, 'XaknA', 16, 307, 'Kamis', 4, '16-307-XaknA', 'Matematika', '09:15:00', '09:50:00'),
(7536, 'XaknA', NULL, NULL, 'Kamis', 5, '13', 'istirahat 1', '09:50:00', '10:20:00'),
(7537, 'XaknA', 16, 307, 'Kamis', 6, '16-307-XaknA', 'Matematika', '10:20:00', '10:55:00'),
(7538, 'XaknA', NULL, NULL, 'Kamis', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7539, 'XaknA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7540, 'XaknA', NULL, NULL, 'Kamis', 9, '31', 'istirahat 2', '12:05:00', '12:20:00'),
(7541, 'XaknA', NULL, NULL, 'Jum`at', 0, '53', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7542, 'XaknA', 20, 317, 'Jum`at', 1, '20-317-XaknA', 'Simulagi Digital', '07:30:00', '08:00:00'),
(7543, 'XaknA', 20, 317, 'Jum`at', 2, '20-317-XaknA', 'Simulagi Digital', '08:00:00', '08:30:00'),
(7544, 'XaknA', 18, 309, 'Jum`at', 3, '18-309-XaknA', 'Pend. Agama dan Budi Pekerti', '08:30:00', '09:00:00'),
(7545, 'XaknA', 18, 309, 'Jum`at', 4, '18-309-XaknA', 'Pend. Agama dan Budi Pekerti', '09:00:00', '09:30:00'),
(7546, 'XaknA', NULL, NULL, 'Jum`at', 5, '19', 'istirahat 1', '09:30:00', '09:50:00'),
(7547, 'XaknA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:50:00', '10:20:00'),
(7548, 'XaknA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:20:00', '10:50:00'),
(7549, 'XaknA', NULL, NULL, 'Sabtu', 0, '56', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7550, 'XaknA', 22, 323, 'Sabtu', 1, '22-323-XaknA', 'Seni Budaya', '07:30:00', '08:05:00'),
(7551, 'XaknA', 22, 323, 'Sabtu', 2, '22-323-XaknA', 'Seni Budaya', '08:05:00', '08:40:00'),
(7552, 'XaknA', 7, 276, 'Sabtu', 3, '7-276-XaknA', 'Ekonomi Bisnis ', '08:40:00', '09:15:00'),
(7553, 'XaknA', 25, 333, 'Sabtu', 4, '25-333-XaknA', 'Bahasa Jawa', '09:15:00', '09:50:00'),
(7554, 'XaknA', NULL, NULL, 'Sabtu', 5, '16', 'istirahat 1', '09:50:00', '10:20:00'),
(7555, 'XaknA', NULL, NULL, 'Sabtu', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7556, 'XaknA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7557, 'XaknA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7558, 'XaknA', NULL, NULL, 'Sabtu', 9, '34', 'istirahat 2', '12:05:00', '12:20:00'),
(7559, 'XIaknA', NULL, NULL, 'Senin', 0, '2', 'upacara', '07:00:00', '08:00:00'),
(7560, 'XIaknA', 5, 267, 'Senin', 1, '5-267-XIaknA', 'Bhs. Indonesia', '08:00:00', '08:35:00'),
(7561, 'XIaknA', 5, 267, 'Senin', 2, '5-267-XIaknA', 'Bhs. Indonesia', '08:35:00', '09:10:00'),
(7562, 'XIaknA', 12, 295, 'Senin', 3, '12-295-XIaknA', 'Pend. Agama dan Budi Pekerti', '09:10:00', '09:45:00'),
(7563, 'XIaknA', 12, 295, 'Senin', 4, '12-295-XIaknA', 'Pend. Agama dan Budi Pekerti', '09:45:00', '10:20:00'),
(7564, 'XIaknA', NULL, NULL, 'Senin', 5, '5', 'istirahat 1', '10:20:00', '10:50:00'),
(7565, 'XIaknA', NULL, NULL, 'Senin', 6, '-', 'kosong', '10:50:00', '11:25:00'),
(7566, 'XIaknA', NULL, NULL, 'Senin', 7, '-', 'kosong', '11:25:00', '12:00:00'),
(7567, 'XIaknA', NULL, NULL, 'Senin', 8, '-', 'kosong', '12:00:00', '12:35:00'),
(7568, 'XIaknA', NULL, NULL, 'Senin', 9, '23', 'istirahat 2', '12:35:00', '12:50:00'),
(7569, 'XIaknA', NULL, NULL, 'Selasa', 0, '45', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7570, 'XIaknA', 4, 260, 'Selasa', 1, '4-260-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:30:00', '08:05:00'),
(7571, 'XIaknA', 4, 260, 'Selasa', 2, '4-260-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:05:00', '08:40:00'),
(7572, 'XIaknA', 4, 260, 'Selasa', 3, '4-260-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:40:00', '09:15:00'),
(7573, 'XIaknA', 23, 326, 'Selasa', 4, '23-326-XIaknA', 'Produk Kreatif dan Kewirausahaan', '09:15:00', '09:50:00'),
(7574, 'XIaknA', NULL, NULL, 'Selasa', 5, '8', 'istirahat 1', '09:50:00', '10:20:00'),
(7575, 'XIaknA', 23, 326, 'Selasa', 6, '23-326-XIaknA', 'Produk Kreatif dan Kewirausahaan', '10:20:00', '10:55:00'),
(7576, 'XIaknA', 23, 326, 'Selasa', 7, '23-326-XIaknA', 'Produk Kreatif dan Kewirausahaan', '10:55:00', '11:30:00'),
(7577, 'XIaknA', 23, 326, 'Selasa', 8, '23-326-XIaknA', 'Produk Kreatif dan Kewirausahaan', '11:30:00', '12:05:00'),
(7578, 'XIaknA', NULL, NULL, 'Selasa', 9, '26', 'istirahat 2', '12:05:00', '12:20:00'),
(7579, 'XIaknA', NULL, NULL, 'Rabu', 0, '48', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7580, 'XIaknA', 9, 288, 'Rabu', 1, '9-288-XIaknA', 'Penjasorkes', '07:30:00', '08:05:00'),
(7581, 'XIaknA', 19, 313, 'Rabu', 2, '19-313-XIaknA', 'Pend. BK', '08:05:00', '08:40:00'),
(7582, 'XIaknA', 26, 337, 'Rabu', 3, '26-337-XIaknA', 'Bhs Inggris dan Bahasa Asing Lainnya', '08:40:00', '09:15:00'),
(7583, 'XIaknA', 26, 337, 'Rabu', 4, '26-337-XIaknA', 'Bhs Inggris dan Bahasa Asing Lainnya', '09:15:00', '09:50:00'),
(7584, 'XIaknA', NULL, NULL, 'Rabu', 5, '11', 'istirahat 1', '09:50:00', '10:20:00'),
(7585, 'XIaknA', NULL, NULL, 'Rabu', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7586, 'XIaknA', NULL, NULL, 'Rabu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7587, 'XIaknA', NULL, NULL, 'Rabu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7588, 'XIaknA', NULL, NULL, 'Rabu', 9, '29', 'istirahat 2', '12:05:00', '12:20:00'),
(7589, 'XIaknA', NULL, NULL, 'Kamis', 0, '51', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7590, 'XIaknA', 4, 262, 'Kamis', 1, '4-262-XIaknA', 'Komputer Akuntansi (Myob)', '07:30:00', '08:05:00'),
(7591, 'XIaknA', 4, 262, 'Kamis', 2, '4-262-XIaknA', 'Komputer Akuntansi (Myob)', '08:05:00', '08:40:00'),
(7592, 'XIaknA', 4, 262, 'Kamis', 3, '4-262-XIaknA', 'Komputer Akuntansi (Myob)', '08:40:00', '09:15:00'),
(7593, 'XIaknA', 25, 335, 'Kamis', 4, '25-335-XIaknA', 'Bahasa Jawa', '09:15:00', '09:50:00'),
(7594, 'XIaknA', NULL, NULL, 'Kamis', 5, '14', 'istirahat 1', '09:50:00', '10:20:00'),
(7595, 'XIaknA', NULL, NULL, 'Kamis', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7596, 'XIaknA', NULL, NULL, 'Kamis', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7597, 'XIaknA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7598, 'XIaknA', NULL, NULL, 'Kamis', 9, '32', 'istirahat 2', '12:05:00', '12:20:00'),
(7599, 'XIaknA', NULL, NULL, 'Jum`at', 0, '54', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7600, 'XIaknA', 8, 280, 'Jum`at', 1, '8-280-XIaknA', 'Matematika', '07:30:00', '08:00:00'),
(7601, 'XIaknA', 8, 280, 'Jum`at', 2, '8-280-XIaknA', 'Matematika', '08:00:00', '08:30:00'),
(7602, 'XIaknA', NULL, NULL, 'Jum`at', 3, '-', 'kosong', '08:30:00', '09:00:00'),
(7603, 'XIaknA', NULL, NULL, 'Jum`at', 4, '-', 'kosong', '09:00:00', '09:30:00'),
(7604, 'XIaknA', NULL, NULL, 'Jum`at', 5, '20', 'istirahat 1', '09:30:00', '09:50:00'),
(7605, 'XIaknA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:50:00', '10:20:00'),
(7606, 'XIaknA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:20:00', '10:50:00'),
(7607, 'XIaknA', NULL, NULL, 'Sabtu', 0, '57', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7608, 'XIaknA', 10, 290, 'Sabtu', 1, '10-290-XIaknA', 'Administrasi Pajak', '07:30:00', '08:05:00'),
(7609, 'XIaknA', 10, 290, 'Sabtu', 2, '10-290-XIaknA', 'Administrasi Pajak', '08:05:00', '08:40:00'),
(7610, 'XIaknA', 21, 319, 'Sabtu', 3, '21-319-XIaknA', 'PPKN', '08:40:00', '09:15:00'),
(7611, 'XIaknA', NULL, NULL, 'Sabtu', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7612, 'XIaknA', NULL, NULL, 'Sabtu', 5, '17', 'istirahat 1', '09:50:00', '10:20:00'),
(7613, 'XIaknA', NULL, NULL, 'Sabtu', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7614, 'XIaknA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7615, 'XIaknA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7616, 'XIaknA', NULL, NULL, 'Sabtu', 9, '35', 'istirahat 2', '12:05:00', '12:20:00'),
(7617, 'XIIaknA', NULL, NULL, 'Senin', 0, '3', 'upacara', '07:00:00', '08:00:00'),
(7618, 'XIIaknA', 8, 282, 'Senin', 1, '8-282-XIIaknA', 'Matematika', '08:00:00', '08:35:00'),
(7619, 'XIIaknA', 8, 282, 'Senin', 2, '8-282-XIIaknA', 'Matematika', '08:35:00', '09:10:00'),
(7620, 'XIIaknA', 4, 263, 'Senin', 3, '4-263-XIIaknA', 'Komputer Akuntansi (Myob)', '09:10:00', '09:45:00'),
(7621, 'XIIaknA', 4, 263, 'Senin', 4, '4-263-XIIaknA', 'Komputer Akuntansi (Myob)', '09:45:00', '10:20:00'),
(7622, 'XIIaknA', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:20:00', '10:50:00'),
(7623, 'XIIaknA', 4, 263, 'Senin', 6, '4-263-XIIaknA', 'Komputer Akuntansi (Myob)', '10:50:00', '11:25:00'),
(7624, 'XIIaknA', NULL, NULL, 'Senin', 7, '-', 'kosong', '11:25:00', '12:00:00'),
(7625, 'XIIaknA', NULL, NULL, 'Senin', 8, '-', 'kosong', '12:00:00', '12:35:00'),
(7626, 'XIIaknA', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:35:00', '12:50:00'),
(7627, 'XIIaknA', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7628, 'XIIaknA', 19, 315, 'Selasa', 1, '19-315-XIIaknA', 'Pend. BK', '07:30:00', '08:05:00'),
(7629, 'XIIaknA', 6, 273, 'Selasa', 2, '6-273-XIIaknA', 'Bhs Inggris dan Bahasa Asing Lainnya', '08:05:00', '08:40:00'),
(7630, 'XIIaknA', 6, 273, 'Selasa', 3, '6-273-XIIaknA', 'Bhs Inggris dan Bahasa Asing Lainnya', '08:40:00', '09:15:00'),
(7631, 'XIIaknA', NULL, NULL, 'Selasa', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7632, 'XIIaknA', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '09:50:00', '10:20:00'),
(7633, 'XIIaknA', NULL, NULL, 'Selasa', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7634, 'XIIaknA', NULL, NULL, 'Selasa', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7635, 'XIIaknA', NULL, NULL, 'Selasa', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7636, 'XIIaknA', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:05:00', '12:20:00'),
(7637, 'XIIaknA', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7638, 'XIIaknA', 5, 269, 'Rabu', 1, '5-269-XIIaknA', 'Bhs. Indonesia', '07:30:00', '08:05:00'),
(7639, 'XIIaknA', 5, 269, 'Rabu', 2, '5-269-XIIaknA', 'Bhs. Indonesia', '08:05:00', '08:40:00'),
(7640, 'XIIaknA', 23, 327, 'Rabu', 3, '23-327-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '08:40:00', '09:15:00'),
(7641, 'XIIaknA', 23, 327, 'Rabu', 4, '23-327-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '09:15:00', '09:50:00'),
(7642, 'XIIaknA', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '09:50:00', '10:20:00'),
(7643, 'XIIaknA', 23, 327, 'Rabu', 6, '23-327-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '10:20:00', '10:55:00'),
(7644, 'XIIaknA', 23, 327, 'Rabu', 7, '23-327-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '10:55:00', '11:30:00'),
(7645, 'XIIaknA', NULL, NULL, 'Rabu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7646, 'XIIaknA', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:05:00', '12:20:00'),
(7647, 'XIIaknA', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7648, 'XIIaknA', 14, 300, 'Kamis', 1, '14-300-XIIaknA', 'Administrasi Pajak', '07:30:00', '08:05:00'),
(7649, 'XIIaknA', 14, 300, 'Kamis', 2, '14-300-XIIaknA', 'Administrasi Pajak', '08:05:00', '08:40:00'),
(7650, 'XIIaknA', 2, 258, 'Kamis', 3, '2-258-XIIaknA', 'Pend. Agama dan Budi Pekerti', '08:40:00', '09:15:00'),
(7651, 'XIIaknA', NULL, NULL, 'Kamis', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7652, 'XIIaknA', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '09:50:00', '10:20:00'),
(7653, 'XIIaknA', NULL, NULL, 'Kamis', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7654, 'XIIaknA', NULL, NULL, 'Kamis', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7655, 'XIIaknA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7656, 'XIIaknA', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:05:00', '12:20:00'),
(7657, 'XIIaknA', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7658, 'XIIaknA', 21, 321, 'Jum`at', 1, '21-321-XIIaknA', 'PPKN', '07:30:00', '08:00:00'),
(7659, 'XIIaknA', NULL, NULL, 'Jum`at', 2, '-', 'kosong', '08:00:00', '08:30:00'),
(7660, 'XIIaknA', NULL, NULL, 'Jum`at', 3, '-', 'kosong', '08:30:00', '09:00:00'),
(7661, 'XIIaknA', NULL, NULL, 'Jum`at', 4, '-', 'kosong', '09:00:00', '09:30:00'),
(7662, 'XIIaknA', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:30:00', '09:50:00'),
(7663, 'XIIaknA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:50:00', '10:20:00'),
(7664, 'XIIaknA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:20:00', '10:50:00'),
(7665, 'XIIaknA', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7666, 'XIIaknA', 4, 261, 'Sabtu', 1, '4-261-XIIaknA', 'Akuntansi Keuangan', '07:30:00', '08:05:00'),
(7667, 'XIIaknA', 4, 261, 'Sabtu', 2, '4-261-XIIaknA', 'Akuntansi Keuangan', '08:05:00', '08:40:00'),
(7668, 'XIIaknA', 4, 261, 'Sabtu', 3, '4-261-XIIaknA', 'Akuntansi Keuangan', '08:40:00', '09:15:00'),
(7669, 'XIIaknA', NULL, NULL, 'Sabtu', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7670, 'XIIaknA', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:50:00', '10:20:00'),
(7671, 'XIIaknA', NULL, NULL, 'Sabtu', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7672, 'XIIaknA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7673, 'XIIaknA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7674, 'XIIaknA', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '12:05:00', '12:20:00'),
(7675, 'XkntrA', NULL, NULL, 'Senin', 0, '1', 'upacara', '07:00:00', '08:00:00'),
(7676, 'XkntrA', 11, 292, 'Senin', 1, '11-292-XkntrA', 'Sejarah Indonesia', '08:00:00', '08:35:00'),
(7677, 'XkntrA', 11, 292, 'Senin', 2, '11-292-XkntrA', 'Sejarah Indonesia', '08:35:00', '09:10:00'),
(7678, 'XkntrA', 5, 266, 'Senin', 3, '5-266-XkntrA', 'Bhs. Indonesia', '09:10:00', '09:45:00'),
(7679, 'XkntrA', 5, 266, 'Senin', 4, '5-266-XkntrA', 'Bhs. Indonesia', '09:45:00', '10:20:00'),
(7680, 'XkntrA', NULL, NULL, 'Senin', 5, '4', 'istirahat 1', '10:20:00', '10:50:00'),
(7681, 'XkntrA', 18, 310, 'Senin', 6, '18-310-XkntrA', 'Pend. Agama dan Budi Pekerti', '10:50:00', '11:25:00'),
(7682, 'XkntrA', 18, 310, 'Senin', 7, '18-310-XkntrA', 'Pend. Agama dan Budi Pekerti', '11:25:00', '12:00:00'),
(7683, 'XkntrA', NULL, NULL, 'Senin', 8, '-', 'kosong', '12:00:00', '12:35:00'),
(7684, 'XkntrA', NULL, NULL, 'Senin', 9, '22', 'istirahat 2', '12:35:00', '12:50:00'),
(7685, 'XkntrA', NULL, NULL, 'Selasa', 0, '44', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7686, 'XkntrA', 25, 334, 'Selasa', 1, '25-334-XkntrA', 'Bahasa Jawa', '07:30:00', '08:05:00'),
(7687, 'XkntrA', 19, 312, 'Selasa', 2, '19-312-XkntrA', 'Pend. BK', '08:05:00', '08:40:00'),
(7688, 'XkntrA', NULL, NULL, 'Selasa', 3, '-', 'kosong', '08:40:00', '09:15:00'),
(7689, 'XkntrA', NULL, NULL, 'Selasa', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7690, 'XkntrA', NULL, NULL, 'Selasa', 5, '7', 'istirahat 1', '09:50:00', '10:20:00'),
(7691, 'XkntrA', 24, 332, 'Selasa', 6, '24-332-XkntrA', 'Teknologi Perkantoran', '10:20:00', '10:55:00'),
(7692, 'XkntrA', 24, 332, 'Selasa', 7, '24-332-XkntrA', 'Teknologi Perkantoran', '10:55:00', '11:30:00'),
(7693, 'XkntrA', 24, 332, 'Selasa', 8, '24-332-XkntrA', 'Teknologi Perkantoran', '11:30:00', '12:05:00'),
(7694, 'XkntrA', NULL, NULL, 'Selasa', 9, '25', 'istirahat 2', '12:05:00', '12:20:00'),
(7695, 'XkntrA', NULL, NULL, 'Rabu', 0, '47', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7696, 'XkntrA', 13, 298, 'Rabu', 1, '13-298-XkntrA', 'PPKN', '07:30:00', '08:05:00'),
(7697, 'XkntrA', NULL, NULL, 'Rabu', 2, '-', 'kosong', '08:05:00', '08:40:00'),
(7698, 'XkntrA', 14, 302, 'Rabu', 3, '14-302-XkntrA', 'Administrasi Umum', '08:40:00', '09:15:00'),
(7699, 'XkntrA', NULL, NULL, 'Rabu', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7700, 'XkntrA', NULL, NULL, 'Rabu', 5, '10', 'istirahat 1', '09:50:00', '10:20:00'),
(7701, 'XkntrA', 7, 275, 'Rabu', 6, '7-275-XkntrA', 'Korespondensi', '10:20:00', '10:55:00'),
(7702, 'XkntrA', 7, 275, 'Rabu', 7, '7-275-XkntrA', 'Korespondensi', '10:55:00', '11:30:00'),
(7703, 'XkntrA', 7, 275, 'Rabu', 8, '7-275-XkntrA', 'Korespondensi', '11:30:00', '12:05:00'),
(7704, 'XkntrA', NULL, NULL, 'Rabu', 9, '28', 'istirahat 2', '12:05:00', '12:20:00'),
(7705, 'XkntrA', NULL, NULL, 'Kamis', 0, '50', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7706, 'XkntrA', 8, 285, 'Kamis', 1, '8-285-XkntrA', 'IPA', '07:30:00', '08:05:00'),
(7707, 'XkntrA', 9, 287, 'Kamis', 2, '9-287-XkntrA', 'Penjasorkes', '08:05:00', '08:40:00'),
(7708, 'XkntrA', 7, 277, 'Kamis', 3, '7-277-XkntrA', 'Ekonomi Bisnis ', '08:40:00', '09:15:00'),
(7709, 'XkntrA', 7, 278, 'Kamis', 4, '7-278-XkntrA', 'Kearsipan', '09:15:00', '09:50:00'),
(7710, 'XkntrA', NULL, NULL, 'Kamis', 5, '13', 'istirahat 1', '09:50:00', '10:20:00'),
(7711, 'XkntrA', 7, 278, 'Kamis', 6, '7-278-XkntrA', 'Kearsipan', '10:20:00', '10:55:00'),
(7712, 'XkntrA', NULL, NULL, 'Kamis', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7713, 'XkntrA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7714, 'XkntrA', NULL, NULL, 'Kamis', 9, '31', 'istirahat 2', '12:05:00', '12:20:00'),
(7715, 'XkntrA', NULL, NULL, 'Jum`at', 0, '53', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7716, 'XkntrA', 22, 324, 'Jum`at', 1, '22-324-XkntrA', 'Seni Budaya', '07:30:00', '08:00:00'),
(7717, 'XkntrA', 22, 324, 'Jum`at', 2, '22-324-XkntrA', 'Seni Budaya', '08:00:00', '08:30:00'),
(7718, 'XkntrA', 6, 272, 'Jum`at', 3, '6-272-XkntrA', 'Bhs Inggris dan Bahasa Asing Lainnya', '08:30:00', '09:00:00'),
(7719, 'XkntrA', 6, 272, 'Jum`at', 4, '6-272-XkntrA', 'Bhs Inggris dan Bahasa Asing Lainnya', '09:00:00', '09:30:00'),
(7720, 'XkntrA', NULL, NULL, 'Jum`at', 5, '19', 'istirahat 1', '09:30:00', '09:50:00'),
(7721, 'XkntrA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:50:00', '10:20:00'),
(7722, 'XkntrA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:20:00', '10:50:00'),
(7723, 'XkntrA', NULL, NULL, 'Sabtu', 0, '56', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7724, 'XkntrA', 20, 318, 'Sabtu', 1, '20-318-XkntrA', 'Simulagi Digital', '07:30:00', '08:05:00'),
(7725, 'XkntrA', 20, 318, 'Sabtu', 2, '20-318-XkntrA', 'Simulagi Digital', '08:05:00', '08:40:00'),
(7726, 'XkntrA', 16, 308, 'Sabtu', 3, '16-308-XkntrA', 'Matematika', '08:40:00', '09:15:00'),
(7727, 'XkntrA', 16, 308, 'Sabtu', 4, '16-308-XkntrA', 'Matematika', '09:15:00', '09:50:00'),
(7728, 'XkntrA', NULL, NULL, 'Sabtu', 5, '16', 'istirahat 1', '09:50:00', '10:20:00'),
(7729, 'XkntrA', NULL, NULL, 'Sabtu', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7730, 'XkntrA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7731, 'XkntrA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7732, 'XkntrA', NULL, NULL, 'Sabtu', 9, '34', 'istirahat 2', '12:05:00', '12:20:00'),
(7733, 'XIkntrA', NULL, NULL, 'Senin', 0, '2', 'upacara', '07:00:00', '08:00:00'),
(7734, 'XIkntrA', NULL, NULL, 'Senin', 1, '-', 'kosong', '08:00:00', '08:35:00'),
(7735, 'XIkntrA', NULL, NULL, 'Senin', 2, '-', 'kosong', '08:35:00', '09:10:00'),
(7736, 'XIkntrA', 11, 293, 'Senin', 3, '11-293-XIkntrA', 'Produk Kreatif Dan Kewirausahaan', '09:10:00', '09:45:00'),
(7737, 'XIkntrA', 11, 293, 'Senin', 4, '11-293-XIkntrA', 'Produk Kreatif Dan Kewirausahaan', '09:45:00', '10:20:00'),
(7738, 'XIkntrA', NULL, NULL, 'Senin', 5, '5', 'istirahat 1', '10:20:00', '10:50:00'),
(7739, 'XIkntrA', 11, 293, 'Senin', 6, '11-293-XIkntrA', 'Produk Kreatif Dan Kewirausahaan', '10:50:00', '11:25:00'),
(7740, 'XIkntrA', 11, 293, 'Senin', 7, '11-293-XIkntrA', 'Produk Kreatif Dan Kewirausahaan', '11:25:00', '12:00:00'),
(7741, 'XIkntrA', NULL, NULL, 'Senin', 8, '-', 'kosong', '12:00:00', '12:35:00'),
(7742, 'XIkntrA', NULL, NULL, 'Senin', 9, '23', 'istirahat 2', '12:35:00', '12:50:00'),
(7743, 'XIkntrA', NULL, NULL, 'Selasa', 0, '45', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7744, 'XIkntrA', 12, 296, 'Selasa', 1, '12-296-XIkntrA', 'Pend. Agama dan Budi Pekerti', '07:30:00', '08:05:00'),
(7745, 'XIkntrA', 12, 296, 'Selasa', 2, '12-296-XIkntrA', 'Pend. Agama dan Budi Pekerti', '08:05:00', '08:40:00'),
(7746, 'XIkntrA', 5, 268, 'Selasa', 3, '5-268-XIkntrA', 'Bhs. Indonesia', '08:40:00', '09:15:00'),
(7747, 'XIkntrA', 5, 268, 'Selasa', 4, '5-268-XIkntrA', 'Bhs. Indonesia', '09:15:00', '09:50:00'),
(7748, 'XIkntrA', NULL, NULL, 'Selasa', 5, '8', 'istirahat 1', '09:50:00', '10:20:00'),
(7749, 'XIkntrA', NULL, NULL, 'Selasa', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7750, 'XIkntrA', NULL, NULL, 'Selasa', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7751, 'XIkntrA', NULL, NULL, 'Selasa', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7752, 'XIkntrA', NULL, NULL, 'Selasa', 9, '26', 'istirahat 2', '12:05:00', '12:20:00'),
(7753, 'XIkntrA', NULL, NULL, 'Rabu', 0, '48', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7754, 'XIkntrA', 19, 314, 'Rabu', 1, '19-314-XIkntrA', 'Pend. BK', '07:30:00', '08:05:00'),
(7755, 'XIkntrA', 9, 289, 'Rabu', 2, '9-289-XIkntrA', 'Penjasorkes', '08:05:00', '08:40:00'),
(7756, 'XIkntrA', 21, 320, 'Rabu', 3, '21-320-XIkntrA', 'PPKN', '08:40:00', '09:15:00'),
(7757, 'XIkntrA', 25, 336, 'Rabu', 4, '25-336-XIkntrA', 'Bahasa Jawa', '09:15:00', '09:50:00'),
(7758, 'XIkntrA', NULL, NULL, 'Rabu', 5, '11', 'istirahat 1', '09:50:00', '10:20:00'),
(7759, 'XIkntrA', 14, 303, 'Rabu', 6, '14-303-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '10:20:00', '10:55:00'),
(7760, 'XIkntrA', 14, 303, 'Rabu', 7, '14-303-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '10:55:00', '11:30:00'),
(7761, 'XIkntrA', 14, 303, 'Rabu', 8, '14-303-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:30:00', '12:05:00'),
(7762, 'XIkntrA', NULL, NULL, 'Rabu', 9, '29', 'istirahat 2', '12:05:00', '12:20:00'),
(7763, 'XIkntrA', NULL, NULL, 'Kamis', 0, '51', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7764, 'XIkntrA', 26, 338, 'Kamis', 1, '26-338-XIkntrA', 'Bhs Inggris dan Bahasa Asing Lainnya', '07:30:00', '08:05:00'),
(7765, 'XIkntrA', 26, 338, 'Kamis', 2, '26-338-XIkntrA', 'Bhs Inggris dan Bahasa Asing Lainnya', '08:05:00', '08:40:00'),
(7766, 'XIkntrA', NULL, NULL, 'Kamis', 3, '-', 'kosong', '08:40:00', '09:15:00'),
(7767, 'XIkntrA', NULL, NULL, 'Kamis', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7768, 'XIkntrA', NULL, NULL, 'Kamis', 5, '14', 'istirahat 1', '09:50:00', '10:20:00'),
(7769, 'XIkntrA', 8, 281, 'Kamis', 6, '8-281-XIkntrA', 'Matematika', '10:20:00', '10:55:00'),
(7770, 'XIkntrA', 8, 281, 'Kamis', 7, '8-281-XIkntrA', 'Matematika', '10:55:00', '11:30:00'),
(7771, 'XIkntrA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7772, 'XIkntrA', NULL, NULL, 'Kamis', 9, '32', 'istirahat 2', '12:05:00', '12:20:00'),
(7773, 'XIkntrA', NULL, NULL, 'Jum`at', 0, '54', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7774, 'XIkntrA', 24, 328, 'Jum`at', 1, '24-328-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:30:00', '08:00:00'),
(7775, 'XIkntrA', 24, 328, 'Jum`at', 2, '24-328-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:00:00', '08:30:00'),
(7776, 'XIkntrA', 24, 328, 'Jum`at', 3, '24-328-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:30:00', '09:00:00'),
(7777, 'XIkntrA', NULL, NULL, 'Jum`at', 4, '-', 'kosong', '09:00:00', '09:30:00'),
(7778, 'XIkntrA', NULL, NULL, 'Jum`at', 5, '20', 'istirahat 1', '09:30:00', '09:50:00'),
(7779, 'XIkntrA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:50:00', '10:20:00'),
(7780, 'XIkntrA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:20:00', '10:50:00'),
(7781, 'XIkntrA', NULL, NULL, 'Sabtu', 0, '57', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7782, 'XIkntrA', 24, 329, 'Sabtu', 1, '24-329-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '07:30:00', '08:05:00'),
(7783, 'XIkntrA', 24, 329, 'Sabtu', 2, '24-329-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '08:05:00', '08:40:00'),
(7784, 'XIkntrA', 24, 329, 'Sabtu', 3, '24-329-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '08:40:00', '09:15:00'),
(7785, 'XIkntrA', NULL, NULL, 'Sabtu', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7786, 'XIkntrA', NULL, NULL, 'Sabtu', 5, '17', 'istirahat 1', '09:50:00', '10:20:00'),
(7787, 'XIkntrA', NULL, NULL, 'Sabtu', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7788, 'XIkntrA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7789, 'XIkntrA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7790, 'XIkntrA', NULL, NULL, 'Sabtu', 9, '35', 'istirahat 2', '12:05:00', '12:20:00'),
(7791, 'XIIkntrA', NULL, NULL, 'Senin', 0, '3', 'upacara', '07:00:00', '08:00:00'),
(7792, 'XIIkntrA', 19, 316, 'Senin', 1, '19-316-XIIkntrA', 'Pend. BK', '08:00:00', '08:35:00'),
(7793, 'XIIkntrA', 24, 330, 'Senin', 2, '24-330-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '08:35:00', '09:10:00'),
(7794, 'XIIkntrA', 24, 330, 'Senin', 3, '24-330-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '09:10:00', '09:45:00'),
(7795, 'XIIkntrA', 24, 330, 'Senin', 4, '24-330-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '09:45:00', '10:20:00'),
(7796, 'XIIkntrA', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:20:00', '10:50:00'),
(7797, 'XIIkntrA', 14, 304, 'Senin', 6, '14-304-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '10:50:00', '11:25:00'),
(7798, 'XIIkntrA', 14, 304, 'Senin', 7, '14-304-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:25:00', '12:00:00'),
(7799, 'XIIkntrA', 14, 304, 'Senin', 8, '14-304-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '12:00:00', '12:35:00'),
(7800, 'XIIkntrA', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:35:00', '12:50:00'),
(7801, 'XIIkntrA', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7802, 'XIIkntrA', 24, 331, 'Selasa', 1, '24-331-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '07:30:00', '08:05:00'),
(7803, 'XIIkntrA', 24, 331, 'Selasa', 2, '24-331-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '08:05:00', '08:40:00'),
(7804, 'XIIkntrA', 24, 331, 'Selasa', 3, '24-331-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '08:40:00', '09:15:00'),
(7805, 'XIIkntrA', NULL, NULL, 'Selasa', 4, '-', 'kosong', '09:15:00', '09:50:00'),
(7806, 'XIIkntrA', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '09:50:00', '10:20:00'),
(7807, 'XIIkntrA', NULL, NULL, 'Selasa', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7808, 'XIIkntrA', NULL, NULL, 'Selasa', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7809, 'XIIkntrA', NULL, NULL, 'Selasa', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7810, 'XIIkntrA', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:05:00', '12:20:00'),
(7811, 'XIIkntrA', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7812, 'XIIkntrA', 21, 322, 'Rabu', 1, '21-322-XIIkntrA', 'PPKN', '07:30:00', '08:05:00'),
(7813, 'XIIkntrA', NULL, NULL, 'Rabu', 2, '-', 'kosong', '08:05:00', '08:40:00'),
(7814, 'XIIkntrA', 5, 270, 'Rabu', 3, '5-270-XIIkntrA', 'Bhs. Indonesia', '08:40:00', '09:15:00'),
(7815, 'XIIkntrA', 5, 270, 'Rabu', 4, '5-270-XIIkntrA', 'Bhs. Indonesia', '09:15:00', '09:50:00'),
(7816, 'XIIkntrA', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '09:50:00', '10:20:00'),
(7817, 'XIIkntrA', NULL, NULL, 'Rabu', 6, '-', 'kosong', '10:20:00', '10:55:00'),
(7818, 'XIIkntrA', NULL, NULL, 'Rabu', 7, '-', 'kosong', '10:55:00', '11:30:00'),
(7819, 'XIIkntrA', NULL, NULL, 'Rabu', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7820, 'XIIkntrA', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:05:00', '12:20:00'),
(7821, 'XIIkntrA', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7822, 'XIIkntrA', NULL, NULL, 'Kamis', 1, '-', 'kosong', '07:30:00', '08:05:00'),
(7823, 'XIIkntrA', NULL, NULL, 'Kamis', 2, '-', 'kosong', '08:05:00', '08:40:00'),
(7824, 'XIIkntrA', 11, 294, 'Kamis', 3, '11-294-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:40:00', '09:15:00'),
(7825, 'XIIkntrA', 11, 294, 'Kamis', 4, '11-294-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '09:15:00', '09:50:00'),
(7826, 'XIIkntrA', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '09:50:00', '10:20:00'),
(7827, 'XIIkntrA', 11, 294, 'Kamis', 6, '11-294-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '10:20:00', '10:55:00'),
(7828, 'XIIkntrA', 11, 294, 'Kamis', 7, '11-294-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '10:55:00', '11:30:00'),
(7829, 'XIIkntrA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '11:30:00', '12:05:00'),
(7830, 'XIIkntrA', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:05:00', '12:20:00'),
(7831, 'XIIkntrA', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7832, 'XIIkntrA', NULL, NULL, 'Jum`at', 1, '-', 'kosong', '07:30:00', '08:00:00'),
(7833, 'XIIkntrA', NULL, NULL, 'Jum`at', 2, '-', 'kosong', '08:00:00', '08:30:00'),
(7834, 'XIIkntrA', 8, 283, 'Jum`at', 3, '8-283-XIIkntrA', 'Matematika', '08:30:00', '09:00:00'),
(7835, 'XIIkntrA', 8, 283, 'Jum`at', 4, '8-283-XIIkntrA', 'Matematika', '09:00:00', '09:30:00'),
(7836, 'XIIkntrA', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:30:00', '09:50:00'),
(7837, 'XIIkntrA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:50:00', '10:20:00'),
(7838, 'XIIkntrA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:20:00', '10:50:00'),
(7839, 'XIIkntrA', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '07:00:00', '07:30:00'),
(7840, 'XIIkntrA', 6, 274, 'Sabtu', 1, '6-274-XIIkntrA', 'Bhs Inggris dan Bahasa Asing Lainnya', '07:30:00', '08:05:00'),
(7841, 'XIIkntrA', 6, 274, 'Sabtu', 2, '6-274-XIIkntrA', 'Bhs Inggris dan Bahasa Asing Lainnya', '08:05:00', '08:40:00'),
(7842, 'XIIkntrA', 2, 259, 'Sabtu', 3, '2-259-XIIkntrA', 'Pend. Agama dan Budi Pekerti', '08:40:00', '09:15:00'),
(7843, 'XIIkntrA', 15, 305, 'Sabtu', 4, '15-305-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '09:15:00', '09:50:00'),
(7844, 'XIIkntrA', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:50:00', '10:20:00'),
(7845, 'XIIkntrA', 15, 305, 'Sabtu', 6, '15-305-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '10:20:00', '10:55:00'),
(7846, 'XIIkntrA', 15, 305, 'Sabtu', 7, '15-305-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '10:55:00', '11:30:00'),
(7847, 'XIIkntrA', 15, 305, 'Sabtu', 8, '15-305-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '11:30:00', '12:05:00'),
(7848, 'XIIkntrA', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '12:05:00', '12:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `request_jadwal`
--

CREATE TABLE `request_jadwal` (
  `id_request` int(10) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `hari` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_jadwal`
--

INSERT INTO `request_jadwal` (`id_request`, `id_guru`, `hari`) VALUES
(10, 5, 'Senin,Selasa,Rabu'),
(11, 4, 'Senin,Selasa,Kamis,Sabtu'),
(12, 8, 'Senin,Kamis,Jum`at'),
(13, 9, 'Rabu,Kamis'),
(14, 19, 'Senin,Selasa,Rabu,Kamis,Jum`at'),
(15, 22, 'Jum`at,Sabtu'),
(16, 10, 'Sabtu'),
(17, 11, 'Senin,Kamis,Sabtu'),
(18, 14, 'Senin,Rabu,Kamis'),
(19, 20, 'Jum`at,Sabtu');

-- --------------------------------------------------------

--
-- Table structure for table `rumusan`
--

CREATE TABLE `rumusan` (
  `id_rumusan` int(11) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `hari_request` varchar(255) NOT NULL,
  `kelas` mediumtext NOT NULL,
  `total` int(11) NOT NULL,
  `beban_kerja` int(11) NOT NULL,
  `hasil_rumusan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rumusan`
--

INSERT INTO `rumusan` (`id_rumusan`, `id_guru`, `hari_request`, `kelas`, `total`, `beban_kerja`, `hasil_rumusan`) VALUES
(190, 1, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0),
(191, 2, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIaknA,XIIkntrA', 82, 2, 0.02),
(192, 3, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0),
(193, 4, 'Senin,Selasa,Kamis,Sabtu', 'XaknA,XIaknA,XIIaknA', 84, 14, 1.17),
(194, 5, 'Senin,Selasa,Rabu', 'XaknA,XIaknA,XIIaknA,XIIkntrA,XIkntrA,XkntrA', 126, 12, 1.1),
(195, 6, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIIaknA,XIIkntrA,XkntrA', 164, 8, 0.05),
(196, 7, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIkntrA,XkntrA', 123, 10, 0.08),
(197, 8, 'Senin,Kamis,Jum`at', 'XaknA,XIaknA,XIIaknA,XIIkntrA,XIkntrA,XkntrA', 120, 10, 1.08),
(198, 9, 'Rabu,Kamis', 'XaknA,XIaknA,XIkntrA,XkntrA', 56, 4, 1.07),
(199, 10, 'Sabtu', 'XIaknA', 7, 2, 1.29),
(200, 11, 'Senin,Kamis,Sabtu', 'XaknA,XIIkntrA,XIkntrA,XkntrA', 84, 12, 1.14),
(201, 12, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIkntrA', 82, 4, 0.05),
(202, 13, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XkntrA', 82, 2, 0.02),
(203, 14, 'Senin,Rabu,Kamis', 'XaknA,XIIaknA,XIIkntrA,XIkntrA,XkntrA', 105, 12, 1.11),
(204, 15, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIIkntrA', 82, 5, 0.06),
(205, 16, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XkntrA', 82, 4, 0.05),
(206, 17, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0),
(207, 18, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XkntrA', 82, 4, 0.05),
(208, 19, 'Senin,Selasa,Rabu,Kamis,Jum`at', 'XaknA,XIaknA,XIIaknA,XIIkntrA,XIkntrA,XkntrA', 204, 6, 1.03),
(209, 20, 'Jum`at,Sabtu', 'XaknA,XkntrA', 26, 4, 1.15),
(210, 21, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIIaknA,XIIkntrA,XIkntrA', 164, 4, 0.02),
(211, 22, 'Jum`at,Sabtu', 'XaknA,XkntrA', 26, 4, 1.15),
(212, 23, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIIaknA', 123, 11, 0.09),
(213, 24, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIkntrA,XIkntrA,XkntrA', 123, 15, 0.12),
(214, 25, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIkntrA,XkntrA', 164, 4, 0.02),
(215, 26, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIkntrA', 82, 4, 0.05),
(216, 27, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tugas_guru`
--

CREATE TABLE `tugas_guru` (
  `id_tugas` varchar(16) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(8) NOT NULL,
  `id_kelas` varchar(16) NOT NULL,
  `tahun_ajaran` varchar(9) NOT NULL,
  `sisa_jam` int(11) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0',
  `beban_jam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tugas_guru`
--

INSERT INTO `tugas_guru` (`id_tugas`, `id_guru`, `id_mapel`, `kode_mapel`, `id_kelas`, `tahun_ajaran`, `sisa_jam`, `status`, `beban_jam`) VALUES
('10-290-XIaknA', 10, 290, 'U', 'XIaknA', '', 0, '1', 2),
('11-291-XaknA', 11, 291, 'H', 'XaknA', '', 0, '1', 2),
('11-292-XkntrA', 11, 292, 'H', 'XkntrA', '', 0, '1', 2),
('11-293-XIkntrA', 11, 293, 'Y', 'XIkntrA', '', 0, '1', 4),
('11-294-XIIkntrA', 11, 294, 'AM', 'XIIkntrA', '', 0, '1', 4),
('12-295-XIaknA', 12, 295, 'A', 'XIaknA', '', 0, '1', 2),
('12-296-XIkntrA', 12, 296, 'A', 'XIkntrA', '', 0, '1', 2),
('13-297-XaknA', 13, 297, 'B', 'XaknA', '', 0, '1', 1),
('13-298-XkntrA', 13, 298, 'B', 'XkntrA', '', 0, '1', 1),
('14-299-XaknA', 14, 299, 'AA', 'XaknA', '', 0, '1', 2),
('14-300-XIIaknA', 14, 300, 'U', 'XIIaknA', '', 0, '1', 2),
('14-301-XaknA', 14, 301, 'AF', 'XaknA', '', 0, '1', 1),
('14-302-XkntrA', 14, 302, 'AF', 'XkntrA', '', 0, '1', 1),
('14-303-XIkntrA', 14, 303, 'AP', 'XIkntrA', '', 0, '1', 3),
('14-304-XIIkntrA', 14, 304, 'AP', 'XIIkntrA', '', 0, '1', 3),
('15-305-XIIkntrA', 15, 305, 'Y', 'XIIkntrA', '', 0, '1', 4),
('15-306-XaknA', 15, 306, 'AE', 'XaknA', '', 0, '1', 1),
('16-307-XaknA', 16, 307, 'D', 'XaknA', '', 0, '1', 2),
('16-308-XkntrA', 16, 308, 'D', 'XkntrA', '', 0, '1', 2),
('18-309-XaknA', 18, 309, 'A', 'XaknA', '', 0, '1', 2),
('18-310-XkntrA', 18, 310, 'A', 'XkntrA', '', 0, '1', 2),
('19-311-XaknA', 19, 311, 'Z', 'XaknA', '', 0, '1', 1),
('19-312-XkntrA', 19, 312, 'Z', 'XkntrA', '', 0, '1', 1),
('19-313-XIaknA', 19, 313, 'Z', 'XIaknA', '', 0, '1', 1),
('19-314-XIkntrA', 19, 314, 'Z', 'XIkntrA', '', 0, '1', 1),
('19-315-XIIaknA', 19, 315, 'Z', 'XIIaknA', '', 0, '1', 1),
('19-316-XIIkntrA', 19, 316, 'Z', 'XIIkntrA', '', 0, '1', 1),
('2-258-XIIaknA', 2, 258, 'A', 'XIIaknA', '', 0, '1', 1),
('2-259-XIIkntrA', 2, 259, 'A', 'XIIkntrA', '', 0, '1', 1),
('20-317-XaknA', 20, 317, 'S', 'XaknA', '', 0, '1', 2),
('20-318-XkntrA', 20, 318, 'S', 'XkntrA', '', 0, '1', 2),
('21-319-XIaknA', 21, 319, 'B', 'XIaknA', '', 0, '1', 1),
('21-320-XIkntrA', 21, 320, 'B', 'XIkntrA', '', 0, '1', 1),
('21-321-XIIaknA', 21, 321, 'B', 'XIIaknA', '', 0, '1', 1),
('21-322-XIIkntrA', 21, 322, 'B', 'XIIkntrA', '', 0, '1', 1),
('22-323-XaknA', 22, 323, 'G', 'XaknA', '', 0, '1', 2),
('22-324-XkntrA', 22, 324, 'G', 'XkntrA', '', 0, '1', 2),
('23-325-XaknA', 23, 325, 'N', 'XaknA', '', 0, '1', 3),
('23-326-XIaknA', 23, 326, 'Y', 'XIaknA', '', 0, '1', 4),
('23-327-XIIaknA', 23, 327, 'Y', 'XIIaknA', '', 0, '1', 4),
('24-328-XIkntrA', 24, 328, 'AM', 'XIkntrA', '', 0, '1', 3),
('24-329-XIkntrA', 24, 329, 'AN', 'XIkntrA', '', 0, '1', 3),
('24-330-XIIkntrA', 24, 330, 'AN', 'XIIkntrA', '', 0, '1', 3),
('24-331-XIIkntrA', 24, 331, 'AO', 'XIIkntrA', '', 0, '1', 3),
('24-332-XkntrA', 24, 332, 'AI', 'XkntrA', '', 0, '1', 3),
('25-333-XaknA', 25, 333, 'AJ', 'XaknA', '', 0, '1', 1),
('25-334-XkntrA', 25, 334, 'AJ', 'XkntrA', '', 0, '1', 1),
('25-335-XIaknA', 25, 335, 'AJ', 'XIaknA', '', 0, '1', 1),
('25-336-XIkntrA', 25, 336, 'AJ', 'XIkntrA', '', 0, '1', 1),
('26-337-XIaknA', 26, 337, 'F', 'XIaknA', '', 0, '1', 2),
('26-338-XIkntrA', 26, 338, 'F', 'XIkntrA', '', 0, '1', 2),
('4-260-XIaknA', 4, 260, 'AK', 'XIaknA', '', 0, '1', 3),
('4-261-XIIaknA', 4, 261, 'W', 'XIIaknA', '', 0, '1', 3),
('4-262-XIaknA', 4, 262, 'AC', 'XIaknA', '', 0, '1', 3),
('4-263-XIIaknA', 4, 263, 'AC', 'XIIaknA', '', 0, '1', 3),
('4-264-XaknA', 4, 264, 'AD', 'XaknA', '', 0, '1', 2),
('5-265-XaknA', 5, 265, 'C', 'XaknA', '', 0, '1', 2),
('5-266-XkntrA', 5, 266, 'C', 'XkntrA', '', 0, '1', 2),
('5-267-XIaknA', 5, 267, 'C', 'XIaknA', '', 0, '1', 2),
('5-268-XIkntrA', 5, 268, 'C', 'XIkntrA', '', 0, '1', 2),
('5-269-XIIaknA', 5, 269, 'C', 'XIIaknA', '', 0, '1', 2),
('5-270-XIIkntrA', 5, 270, 'C', 'XIIkntrA', '', 0, '1', 2),
('6-271-XaknA', 6, 271, 'F', 'XaknA', '', 0, '1', 2),
('6-272-XkntrA', 6, 272, 'F', 'XkntrA', '', 0, '1', 2),
('6-273-XIIaknA', 6, 273, 'F', 'XIIaknA', '', 0, '1', 2),
('6-274-XIIkntrA', 6, 274, 'F', 'XIIkntrA', '', 0, '1', 2),
('7-275-XkntrA', 7, 275, 'AG', 'XkntrA', '', 0, '1', 3),
('7-276-XaknA', 7, 276, 'J', 'XaknA', '', 0, '1', 1),
('7-277-XkntrA', 7, 277, 'J', 'XkntrA', '', 0, '1', 1),
('7-278-XkntrA', 7, 278, 'AH', 'XkntrA', '', 0, '1', 2),
('7-279-XIkntrA', 7, 279, 'AO', 'XIkntrA', '', 3, '0', 3),
('8-280-XIaknA', 8, 280, 'D', 'XIaknA', '', 0, '1', 2),
('8-281-XIkntrA', 8, 281, 'D', 'XIkntrA', '', 0, '1', 2),
('8-282-XIIaknA', 8, 282, 'D', 'XIIaknA', '', 0, '1', 2),
('8-283-XIIkntrA', 8, 283, 'D', 'XIIkntrA', '', 0, '1', 2),
('8-284-XaknA', 8, 284, 'T', 'XaknA', '', 0, '1', 1),
('8-285-XkntrA', 8, 285, 'T', 'XkntrA', '', 0, '1', 1),
('9-286-XaknA', 9, 286, 'I', 'XaknA', '', 0, '1', 1),
('9-287-XkntrA', 9, 287, 'I', 'XkntrA', '', 0, '1', 1),
('9-288-XIaknA', 9, 288, 'I', 'XIaknA', '', 0, '1', 1),
('9-289-XIkntrA', 9, 289, 'I', 'XIkntrA', '', 0, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jadwal_khusus`
--
ALTER TABLE `jadwal_khusus`
  ADD PRIMARY KEY (`id_jadwal_khusus`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  ADD PRIMARY KEY (`id_penjadwalan`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `kode_jadwal` (`kode_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `request_jadwal`
--
ALTER TABLE `request_jadwal`
  ADD PRIMARY KEY (`id_request`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `rumusan`
--
ALTER TABLE `rumusan`
  ADD PRIMARY KEY (`id_rumusan`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tugas_guru`
--
ALTER TABLE `tugas_guru`
  ADD PRIMARY KEY (`id_tugas`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`kode_mapel`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel_2` (`id_mapel`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jadwal_khusus`
--
ALTER TABLE `jadwal_khusus`
  MODIFY `id_jadwal_khusus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  MODIFY `id_penjadwalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7849;

--
-- AUTO_INCREMENT for table `request_jadwal`
--
ALTER TABLE `request_jadwal`
  MODIFY `id_request` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rumusan`
--
ALTER TABLE `rumusan`
  MODIFY `id_rumusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `FK_kelas_jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `FK_mapel_jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);

--
-- Constraints for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  ADD CONSTRAINT `penjadwalan_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `penjadwalan_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`),
  ADD CONSTRAINT `penjadwalan_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `request_jadwal`
--
ALTER TABLE `request_jadwal`
  ADD CONSTRAINT `request_jadwal_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `rumusan`
--
ALTER TABLE `rumusan`
  ADD CONSTRAINT `rumusan_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `tugas_guru`
--
ALTER TABLE `tugas_guru`
  ADD CONSTRAINT `tugas_guru_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`),
  ADD CONSTRAINT `tugas_guru_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `tugas_guru_ibfk_4` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
