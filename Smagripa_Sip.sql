-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 02:19 PM
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
(25, 'Sumiati, S.Pd', 'tetap', 's1', '184', 'www@mail.com', '#ffd32a');

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
(2, 'Senin', 12, 40, '06:30:00'),
(3, 'Selasa', 12, 45, '06:30:00'),
(4, 'Rabu', 12, 45, '06:30:00'),
(5, 'Kamis', 12, 45, '06:30:00'),
(7, 'Sabtu', 12, 35, '06:30:00'),
(8, 'Jum`at', 9, 35, '06:30:00');

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
  `id_jurusan` varchar(5) NOT NULL,
  `nama_jurusan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
('akn', 'akuntansi'),
('kntr', 'perkantoran');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(16) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `id_jurusan` varchar(5) NOT NULL,
  `nama_kelas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `id_jurusan`, `nama_kelas`) VALUES
('XaknA', 'X', 'akn', 'A'),
('XIaknA', 'XI', 'akn', 'A'),
('XIIaknA', 'XII', 'akn', 'A'),
('XIIaknB', 'XII', 'akn', 'B'),
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
  `id_jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode_mapel`, `nama_mapel`, `kelompok_mapel`, `kelas`, `beban_jam`, `id_jurusan`) VALUES
(1, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'X', 3, 'kntr'),
(2, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'X', 2, 'kntr'),
(3, 'C', 'Bahasa Indonesia', 'A', 'X', 4, 'kntr'),
(4, 'D', 'Matematika', 'A', 'X', 4, 'kntr'),
(5, 'H', 'Sejarah Indonesia', 'A', 'X', 3, 'kntr'),
(6, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'X', 3, 'kntr'),
(7, 'G', 'Seni Budaya', 'B', 'X', 3, 'kntr'),
(8, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'X', 2, 'kntr'),
(9, 'S', 'Simulasi dan Komunikasi Digital', 'C', 'X', 3, 'kntr'),
(10, 'J', 'Ekonomi Bisnis', 'C', 'X', 2, 'kntr'),
(11, 'AF', 'Administrasi Umum', 'C', 'X', 2, 'kntr'),
(12, 'T', 'IPA', 'C', 'X', 2, 'kntr'),
(13, 'AI', 'Teknologi Perkantoran', 'C', 'X', 4, 'kntr'),
(14, 'AG', 'Korespondensi', 'C', 'X', 5, 'kntr'),
(15, 'AH', 'Kearsipan', 'C', 'X', 4, 'kntr'),
(16, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XI', 3, 'kntr'),
(17, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XI', 2, 'kntr'),
(18, 'C', 'Bahasa Indonesia', 'A', 'XI', 3, 'kntr'),
(19, 'D', 'Matematika', 'A', 'XI', 4, 'kntr'),
(20, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XI', 3, 'kntr'),
(21, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'XI', 2, 'kntr'),
(22, 'AM', 'Otomatisasi Tata Kelola Kepegawaian', 'C', 'XI', 6, 'kntr'),
(23, 'AN', 'Otomatisasi Tata Kelola Keuangan', 'C', 'XI', 6, 'kntr'),
(24, 'AO', 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', 'XI', 6, 'kntr'),
(25, 'AP', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', 'XI', 6, 'kntr'),
(26, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XI', 7, 'kntr'),
(27, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XII', 3, 'kntr'),
(28, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XII', 2, 'kntr'),
(29, 'C', 'Bahasa Indonesia', 'A', 'XII', 2, 'kntr'),
(30, 'D', 'Matematika', 'A', 'XII', 4, 'kntr'),
(31, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XII', 4, 'kntr'),
(32, 'AM', 'Otomatisasi Tata Kelola Kepegawaian', 'C', 'XII', 7, 'kntr'),
(33, 'AN', 'Otomatisasi Tata Kelola Keuangan', 'C', 'XII', 6, 'kntr'),
(34, 'AO', 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', 'XII', 6, 'kntr'),
(35, 'AP', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', 'XII', 6, 'kntr'),
(36, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XII', 8, 'kntr'),
(37, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'X', 3, 'akn'),
(38, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'X', 2, 'akn'),
(39, 'C', 'Bahasa Indonesia', 'A', 'X', 4, 'akn'),
(40, 'D', 'Matematika', 'A', 'X', 4, 'akn'),
(41, 'H', 'Sejarah Indonesia', 'A', 'X', 3, 'akn'),
(42, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'X', 3, 'akn'),
(43, 'G', 'Seni Budaya', 'B', 'X', 3, 'akn'),
(44, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'X', 2, 'akn'),
(45, 'S', 'Simulasi dan Komunikasi Digital', 'C', 'X', 3, 'akn'),
(46, 'J', 'Ekonomi Bisnis', 'C', 'X', 2, 'akn'),
(47, 'AF', 'Administrasi Umum', 'C', 'X', 2, 'akn'),
(48, 'T', 'IPA', 'C', 'X', 2, 'akn'),
(49, 'AE', 'Etika Profesi', 'C', 'X', 2, 'akn'),
(50, 'AD', 'Aplikasi Pengolah Angka/Spreadsheet', 'C', 'X', 3, 'akn'),
(51, 'N', 'Akuntansi Dasar', 'C', 'X', 5, 'akn'),
(52, 'AA', 'Perbankan Dasar', 'C', 'X', 3, 'akn'),
(53, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XI', 3, 'akn'),
(54, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XI', 2, 'akn'),
(55, 'C', 'Bahasa Indonesia', 'A', 'XI', 3, 'akn'),
(56, 'D', 'Matematika', 'A', 'XI', 4, 'akn'),
(57, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XI', 3, 'akn'),
(58, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'XI', 2, 'akn'),
(59, 'AK', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', 'C', 'XI', 6, 'akn'),
(60, 'AL', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', 'C', 'XI', 4, 'akn'),
(61, 'W', 'Akuntansi Keuangan', 'C', 'XI', 6, 'akn'),
(62, 'AC', 'Komputer Akuntansi', 'C', 'XI', 5, 'akn'),
(63, 'U', 'Administrasi Pajak', 'C', 'XI', 3, 'akn'),
(64, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XI', 7, 'akn'),
(65, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XII', 3, 'akn'),
(66, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XII', 2, 'akn'),
(67, 'C', 'Bahasa Indonesia', 'A', 'XII', 2, 'akn'),
(68, 'D', 'Matematika', 'A', 'XII', 4, 'akn'),
(69, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XII', 4, 'akn'),
(70, 'AK', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', 'C', 'XII', 7, 'akn'),
(71, 'AL', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', 'C', 'XII', 4, 'akn'),
(72, 'W', 'Akuntansi Keuangan', 'C', 'XII', 6, 'akn'),
(73, 'AC', 'Komputer Akuntansi', 'C', 'XII', 5, 'akn'),
(74, 'U', 'Administrasi Pajak', 'C', 'XII', 3, 'akn'),
(75, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XII', 8, 'akn'),
(76, 'Z', 'Bimbingan Konseling', 'C', 'X', 1, 'kntr'),
(77, 'Z', 'Bimbingan Konseling', 'C', 'XI', 1, 'kntr'),
(78, 'Z', 'Bimbingan Konseling', 'C', 'XII', 1, 'kntr'),
(79, 'Z', 'Bimbingan Konseling', 'C', 'X', 1, 'akn'),
(80, 'Z', 'Bimbingan Konseling', 'C', 'XI', 1, 'akn'),
(81, 'Z', 'Bimbingan Konseling', 'C', 'XII', 1, 'akn'),
(82, 'AJ', 'Bahasa Jawa', 'C', 'X', 2, 'kntr'),
(83, 'AJ', 'Bahasa Jawa', 'C', 'XI', 2, 'kntr'),
(84, 'AJ', 'Bahasa Jawa', 'C', 'X', 2, 'akn'),
(85, 'AJ', 'Bahasa Jawa', 'C', 'XI', 2, 'akn');

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan`
--

CREATE TABLE `penjadwalan` (
  `id_penjadwalan` int(11) NOT NULL,
  `id_kelas` varchar(32) NOT NULL,
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
(967, 'XaknA', NULL, NULL, 'Senin', 0, '1', 'upacara', '06:30:00', '07:30:00'),
(968, 'XaknA', 11, 41, 'Senin', 1, '11-41-XaknA', 'Sejarah Indonesia', '07:30:00', '08:10:00'),
(969, 'XaknA', 11, 41, 'Senin', 2, '11-41-XaknA', 'Sejarah Indonesia', '08:10:00', '08:50:00'),
(970, 'XaknA', 11, 41, 'Senin', 3, '11-41-XaknA', 'Sejarah Indonesia', '08:50:00', '09:30:00'),
(971, 'XaknA', 8, 40, 'Senin', 4, '8-40-XaknA', 'Matematika', '09:30:00', '10:10:00'),
(972, 'XaknA', NULL, NULL, 'Senin', 5, '4', 'istirahat 1', '10:10:00', '10:40:00'),
(973, 'XaknA', 8, 40, 'Senin', 6, '8-40-XaknA', 'Matematika', '10:40:00', '11:20:00'),
(974, 'XaknA', 8, 48, 'Senin', 7, '8-48-XaknA', 'IPA', '11:20:00', '12:00:00'),
(975, 'XaknA', 8, 48, 'Senin', 8, '8-48-XaknA', 'IPA', '12:00:00', '12:40:00'),
(976, 'XaknA', NULL, NULL, 'Senin', 9, '22', 'istirahat 2', '12:40:00', '12:55:00'),
(977, 'XaknA', 5, 39, 'Senin', 10, '5-39-XaknA', 'Bahasa Indonesia', '12:55:00', '13:35:00'),
(978, 'XaknA', 5, 39, 'Senin', 11, '5-39-XaknA', 'Bahasa Indonesia', '13:35:00', '14:15:00'),
(979, 'XaknA', NULL, NULL, 'Selasa', 0, '44', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(980, 'XaknA', 19, 79, 'Selasa', 1, '19-79-XaknA', 'Bimbingan Konseling', '07:00:00', '07:45:00'),
(981, 'XaknA', 23, 50, 'Selasa', 2, '23-50-XaknA', 'Aplikasi Pengolah Angka/Spreadsheet', '07:45:00', '08:30:00'),
(982, 'XaknA', 23, 50, 'Selasa', 3, '23-50-XaknA', 'Aplikasi Pengolah Angka/Spreadsheet', '08:30:00', '09:15:00'),
(983, 'XaknA', 23, 50, 'Selasa', 4, '23-50-XaknA', 'Aplikasi Pengolah Angka/Spreadsheet', '09:15:00', '10:00:00'),
(984, 'XaknA', NULL, NULL, 'Selasa', 5, '7', 'istirahat 1', '10:00:00', '10:30:00'),
(985, 'XaknA', 7, 46, 'Selasa', 6, '7-46-XaknA', 'Ekonomi Bisnis', '10:30:00', '11:15:00'),
(986, 'XaknA', 7, 46, 'Selasa', 7, '7-46-XaknA', 'Ekonomi Bisnis', '11:15:00', '12:00:00'),
(987, 'XaknA', 5, 39, 'Selasa', 8, '5-39-XaknA', 'Bahasa Indonesia', '12:00:00', '12:45:00'),
(988, 'XaknA', NULL, NULL, 'Selasa', 9, '25', 'istirahat 2', '12:45:00', '13:00:00'),
(989, 'XaknA', 5, 39, 'Selasa', 10, '5-39-XaknA', 'Bahasa Indonesia', '13:00:00', '13:45:00'),
(990, 'XaknA', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(991, 'XaknA', NULL, NULL, 'Rabu', 0, '47', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(992, 'XaknA', 14, 47, 'Rabu', 1, '14-47-XaknA', 'Administrasi Umum', '07:00:00', '07:45:00'),
(993, 'XaknA', 14, 47, 'Rabu', 2, '14-47-XaknA', 'Administrasi Umum', '07:45:00', '08:30:00'),
(994, 'XaknA', 14, 49, 'Rabu', 3, '14-49-XaknA', 'Etika Profesi', '08:30:00', '09:15:00'),
(995, 'XaknA', 14, 49, 'Rabu', 4, '14-49-XaknA', 'Etika Profesi', '09:15:00', '10:00:00'),
(996, 'XaknA', NULL, NULL, 'Rabu', 5, '10', 'istirahat 1', '10:00:00', '10:30:00'),
(997, 'XaknA', 14, 52, 'Rabu', 6, '14-52-XaknA', 'Perbankan Dasar', '10:30:00', '11:15:00'),
(998, 'XaknA', 14, 52, 'Rabu', 7, '14-52-XaknA', 'Perbankan Dasar', '11:15:00', '12:00:00'),
(999, 'XaknA', 14, 52, 'Rabu', 8, '14-52-XaknA', 'Perbankan Dasar', '12:00:00', '12:45:00'),
(1000, 'XaknA', NULL, NULL, 'Rabu', 9, '28', 'istirahat 2', '12:45:00', '13:00:00'),
(1001, 'XaknA', 25, 84, 'Rabu', 10, '25-84-XaknA', 'Bahasa Jawa', '13:00:00', '13:45:00'),
(1002, 'XaknA', 25, 84, 'Rabu', 11, '25-84-XaknA', 'Bahasa Jawa', '13:45:00', '14:30:00'),
(1003, 'XaknA', NULL, NULL, 'Kamis', 0, '50', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1004, 'XaknA', 11, 43, 'Kamis', 1, '11-43-XaknA', 'Seni Budaya', '07:00:00', '07:45:00'),
(1005, 'XaknA', 11, 43, 'Kamis', 2, '11-43-XaknA', 'Seni Budaya', '07:45:00', '08:30:00'),
(1006, 'XaknA', 11, 43, 'Kamis', 3, '11-43-XaknA', 'Seni Budaya', '08:30:00', '09:15:00'),
(1007, 'XaknA', 8, 40, 'Kamis', 4, '8-40-XaknA', 'Matematika', '09:15:00', '10:00:00'),
(1008, 'XaknA', NULL, NULL, 'Kamis', 5, '13', 'istirahat 1', '10:00:00', '10:30:00'),
(1009, 'XaknA', 8, 40, 'Kamis', 6, '8-40-XaknA', 'Matematika', '10:30:00', '11:15:00'),
(1010, 'XaknA', 9, 44, 'Kamis', 7, '9-44-XaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '11:15:00', '12:00:00'),
(1011, 'XaknA', 9, 44, 'Kamis', 8, '9-44-XaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '12:00:00', '12:45:00'),
(1012, 'XaknA', NULL, NULL, 'Kamis', 9, '31', 'istirahat 2', '12:45:00', '13:00:00'),
(1013, 'XaknA', 13, 38, 'Kamis', 10, '13-38-XaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:00:00', '13:45:00'),
(1014, 'XaknA', 13, 38, 'Kamis', 11, '13-38-XaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:45:00', '14:30:00'),
(1015, 'XaknA', NULL, NULL, 'Sabtu', 0, '56', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1016, 'XaknA', 23, 51, 'Sabtu', 1, '23-51-XaknA', 'Akuntansi Dasar', '07:00:00', '07:35:00'),
(1017, 'XaknA', 23, 51, 'Sabtu', 2, '23-51-XaknA', 'Akuntansi Dasar', '07:35:00', '08:10:00'),
(1018, 'XaknA', 23, 51, 'Sabtu', 3, '23-51-XaknA', 'Akuntansi Dasar', '08:10:00', '08:45:00'),
(1019, 'XaknA', 23, 51, 'Sabtu', 4, '23-51-XaknA', 'Akuntansi Dasar', '08:45:00', '09:20:00'),
(1020, 'XaknA', NULL, NULL, 'Sabtu', 5, '16', 'istirahat 1', '09:20:00', '09:50:00'),
(1021, 'XaknA', 23, 51, 'Sabtu', 6, '23-51-XaknA', 'Akuntansi Dasar', '09:50:00', '10:25:00'),
(1022, 'XaknA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:25:00', '11:00:00'),
(1023, 'XaknA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:00:00', '11:35:00'),
(1024, 'XaknA', NULL, NULL, 'Sabtu', 9, '34', 'istirahat 2', '11:35:00', '11:50:00'),
(1025, 'XaknA', NULL, NULL, 'Sabtu', 10, '40', 'extra', '11:50:00', '12:25:00'),
(1026, 'XaknA', NULL, NULL, 'Sabtu', 11, '41', 'extra', '12:25:00', '13:00:00'),
(1027, 'XaknA', NULL, NULL, 'Jum`at', 0, '53', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1028, 'XaknA', 20, 45, 'Jum`at', 1, '20-45-XaknA', 'Simulasi dan Komunikasi Digital', '07:00:00', '07:35:00'),
(1029, 'XaknA', 20, 45, 'Jum`at', 2, '20-45-XaknA', 'Simulasi dan Komunikasi Digital', '07:35:00', '08:10:00'),
(1030, 'XaknA', 20, 45, 'Jum`at', 3, '20-45-XaknA', 'Simulasi dan Komunikasi Digital', '08:10:00', '08:45:00'),
(1031, 'XaknA', 6, 42, 'Jum`at', 4, '6-42-XaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:45:00', '09:20:00'),
(1032, 'XaknA', NULL, NULL, 'Jum`at', 5, '19', 'istirahat 1', '09:20:00', '09:40:00'),
(1033, 'XaknA', 6, 42, 'Jum`at', 6, '6-42-XaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:40:00', '10:15:00'),
(1034, 'XaknA', 6, 42, 'Jum`at', 7, '6-42-XaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '10:15:00', '10:50:00'),
(1035, 'XaknA', NULL, NULL, 'Jum`at', 8, '37', 'extra', '10:50:00', '12:50:00'),
(1036, 'XIaknA', NULL, NULL, 'Senin', 0, '2', 'upacara', '06:30:00', '07:30:00'),
(1037, 'XIaknA', 14, 63, 'Senin', 1, '14-63-XIaknA', 'Administrasi Pajak', '07:30:00', '08:10:00'),
(1038, 'XIaknA', 14, 63, 'Senin', 2, '14-63-XIaknA', 'Administrasi Pajak', '08:10:00', '08:50:00'),
(1039, 'XIaknA', 14, 63, 'Senin', 3, '14-63-XIaknA', 'Administrasi Pajak', '08:50:00', '09:30:00'),
(1040, 'XIaknA', 17, 59, 'Senin', 4, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '09:30:00', '10:10:00'),
(1041, 'XIaknA', NULL, NULL, 'Senin', 5, '5', 'istirahat 1', '10:10:00', '10:40:00'),
(1042, 'XIaknA', 17, 59, 'Senin', 6, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '10:40:00', '11:20:00'),
(1043, 'XIaknA', 17, 59, 'Senin', 7, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '11:20:00', '12:00:00'),
(1044, 'XIaknA', 23, 62, 'Senin', 8, '23-62-XIaknA', 'Komputer Akuntansi', '12:00:00', '12:40:00'),
(1045, 'XIaknA', NULL, NULL, 'Senin', 9, '23', 'istirahat 2', '12:40:00', '12:55:00'),
(1046, 'XIaknA', 23, 62, 'Senin', 10, '23-62-XIaknA', 'Komputer Akuntansi', '12:55:00', '13:35:00'),
(1047, 'XIaknA', 23, 62, 'Senin', 11, '23-62-XIaknA', 'Komputer Akuntansi', '13:35:00', '14:15:00'),
(1048, 'XIaknA', NULL, NULL, 'Selasa', 0, '45', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1049, 'XIaknA', NULL, NULL, 'Selasa', 1, '-', 'kosong', '07:00:00', '07:45:00'),
(1050, 'XIaknA', 19, 80, 'Selasa', 2, '19-80-XIaknA', 'Bimbingan Konseling', '07:45:00', '08:30:00'),
(1051, 'XIaknA', NULL, NULL, 'Selasa', 3, '-', 'kosong', '08:30:00', '09:15:00'),
(1052, 'XIaknA', 15, 64, 'Selasa', 4, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '09:15:00', '10:00:00'),
(1053, 'XIaknA', NULL, NULL, 'Selasa', 5, '8', 'istirahat 1', '10:00:00', '10:30:00'),
(1054, 'XIaknA', 15, 64, 'Selasa', 6, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '10:30:00', '11:15:00'),
(1055, 'XIaknA', 17, 60, 'Selasa', 7, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '11:15:00', '12:00:00'),
(1056, 'XIaknA', 17, 60, 'Selasa', 8, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '12:00:00', '12:45:00'),
(1057, 'XIaknA', NULL, NULL, 'Selasa', 9, '26', 'istirahat 2', '12:45:00', '13:00:00'),
(1058, 'XIaknA', 17, 60, 'Selasa', 10, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:00:00', '13:45:00'),
(1059, 'XIaknA', 17, 60, 'Selasa', 11, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:45:00', '14:30:00'),
(1060, 'XIaknA', NULL, NULL, 'Rabu', 0, '48', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1061, 'XIaknA', 5, 55, 'Rabu', 1, '5-55-XIaknA', 'Bahasa Indonesia', '07:00:00', '07:45:00'),
(1062, 'XIaknA', 5, 55, 'Rabu', 2, '5-55-XIaknA', 'Bahasa Indonesia', '07:45:00', '08:30:00'),
(1063, 'XIaknA', 5, 55, 'Rabu', 3, '5-55-XIaknA', 'Bahasa Indonesia', '08:30:00', '09:15:00'),
(1064, 'XIaknA', 9, 58, 'Rabu', 4, '9-58-XIaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '09:15:00', '10:00:00'),
(1065, 'XIaknA', NULL, NULL, 'Rabu', 5, '11', 'istirahat 1', '10:00:00', '10:30:00'),
(1066, 'XIaknA', 9, 58, 'Rabu', 6, '9-58-XIaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '10:30:00', '11:15:00'),
(1067, 'XIaknA', 23, 62, 'Rabu', 7, '23-62-XIaknA', 'Komputer Akuntansi', '11:15:00', '12:00:00'),
(1068, 'XIaknA', 23, 62, 'Rabu', 8, '23-62-XIaknA', 'Komputer Akuntansi', '12:00:00', '12:45:00'),
(1069, 'XIaknA', NULL, NULL, 'Rabu', 9, '29', 'istirahat 2', '12:45:00', '13:00:00'),
(1070, 'XIaknA', 21, 54, 'Rabu', 10, '21-54-XIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:00:00', '13:45:00'),
(1071, 'XIaknA', 21, 54, 'Rabu', 11, '21-54-XIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:45:00', '14:30:00'),
(1072, 'XIaknA', NULL, NULL, 'Kamis', 0, '51', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1073, 'XIaknA', 8, 56, 'Kamis', 1, '8-56-XIaknA', 'Matematika', '07:00:00', '07:45:00'),
(1074, 'XIaknA', 8, 56, 'Kamis', 2, '8-56-XIaknA', 'Matematika', '07:45:00', '08:30:00'),
(1075, 'XIaknA', 17, 61, 'Kamis', 3, '17-61-XIaknA', 'Akuntansi Keuangan', '08:30:00', '09:15:00'),
(1076, 'XIaknA', 17, 61, 'Kamis', 4, '17-61-XIaknA', 'Akuntansi Keuangan', '09:15:00', '10:00:00'),
(1077, 'XIaknA', NULL, NULL, 'Kamis', 5, '14', 'istirahat 1', '10:00:00', '10:30:00'),
(1078, 'XIaknA', 17, 61, 'Kamis', 6, '17-61-XIaknA', 'Akuntansi Keuangan', '10:30:00', '11:15:00'),
(1079, 'XIaknA', 15, 64, 'Kamis', 7, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '11:15:00', '12:00:00'),
(1080, 'XIaknA', 15, 64, 'Kamis', 8, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '12:00:00', '12:45:00'),
(1081, 'XIaknA', NULL, NULL, 'Kamis', 9, '32', 'istirahat 2', '12:45:00', '13:00:00'),
(1082, 'XIaknA', 15, 64, 'Kamis', 10, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '13:00:00', '13:45:00'),
(1083, 'XIaknA', NULL, NULL, 'Kamis', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(1084, 'XIaknA', NULL, NULL, 'Sabtu', 0, '57', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1085, 'XIaknA', 17, 59, 'Sabtu', 1, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:00:00', '07:35:00'),
(1086, 'XIaknA', 17, 59, 'Sabtu', 2, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:35:00', '08:10:00'),
(1087, 'XIaknA', 17, 59, 'Sabtu', 3, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:10:00', '08:45:00'),
(1088, 'XIaknA', 17, 61, 'Sabtu', 4, '17-61-XIaknA', 'Akuntansi Keuangan', '08:45:00', '09:20:00'),
(1089, 'XIaknA', NULL, NULL, 'Sabtu', 5, '17', 'istirahat 1', '09:20:00', '09:50:00'),
(1090, 'XIaknA', 17, 61, 'Sabtu', 6, '17-61-XIaknA', 'Akuntansi Keuangan', '09:50:00', '10:25:00'),
(1091, 'XIaknA', 17, 61, 'Sabtu', 7, '17-61-XIaknA', 'Akuntansi Keuangan', '10:25:00', '11:00:00'),
(1092, 'XIaknA', 6, 57, 'Sabtu', 8, '6-57-XIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '11:00:00', '11:35:00'),
(1093, 'XIaknA', NULL, NULL, 'Sabtu', 9, '35', 'istirahat 2', '11:35:00', '11:50:00'),
(1094, 'XIaknA', 6, 57, 'Sabtu', 10, '6-57-XIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '11:50:00', '12:25:00'),
(1095, 'XIaknA', 6, 57, 'Sabtu', 11, '6-57-XIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '12:25:00', '13:00:00'),
(1096, 'XIaknA', NULL, NULL, 'Jum`at', 0, '54', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1097, 'XIaknA', 8, 56, 'Jum`at', 1, '8-56-XIaknA', 'Matematika', '07:00:00', '07:35:00'),
(1098, 'XIaknA', 8, 56, 'Jum`at', 2, '8-56-XIaknA', 'Matematika', '07:35:00', '08:10:00'),
(1099, 'XIaknA', 15, 64, 'Jum`at', 3, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '08:10:00', '08:45:00'),
(1100, 'XIaknA', 15, 64, 'Jum`at', 4, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(1101, 'XIaknA', NULL, NULL, 'Jum`at', 5, '20', 'istirahat 1', '09:20:00', '09:40:00'),
(1102, 'XIaknA', 25, 85, 'Jum`at', 6, '25-85-XIaknA', 'Bahasa Jawa', '09:40:00', '10:15:00'),
(1103, 'XIaknA', 25, 85, 'Jum`at', 7, '25-85-XIaknA', 'Bahasa Jawa', '10:15:00', '10:50:00'),
(1104, 'XIaknA', NULL, NULL, 'Jum`at', 8, '38', 'extra', '10:50:00', '12:50:00'),
(1105, 'XIIaknA', NULL, NULL, 'Senin', 0, '3', 'upacara', '06:30:00', '07:30:00'),
(1106, 'XIIaknA', 4, 70, 'Senin', 1, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:30:00', '08:10:00'),
(1107, 'XIIaknA', 4, 70, 'Senin', 2, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:10:00', '08:50:00'),
(1108, 'XIIaknA', 4, 70, 'Senin', 3, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:50:00', '09:30:00'),
(1109, 'XIIaknA', 4, 72, 'Senin', 4, '4-72-XIIaknA', 'Akuntansi Keuangan', '09:30:00', '10:10:00'),
(1110, 'XIIaknA', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:10:00', '10:40:00'),
(1111, 'XIIaknA', 4, 72, 'Senin', 6, '4-72-XIIaknA', 'Akuntansi Keuangan', '10:40:00', '11:20:00'),
(1112, 'XIIaknA', 4, 72, 'Senin', 7, '4-72-XIIaknA', 'Akuntansi Keuangan', '11:20:00', '12:00:00'),
(1113, 'XIIaknA', 16, 68, 'Senin', 8, '16-68-XIIaknA', 'Matematika', '12:00:00', '12:40:00'),
(1114, 'XIIaknA', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:40:00', '12:55:00'),
(1115, 'XIIaknA', 16, 68, 'Senin', 10, '16-68-XIIaknA', 'Matematika', '12:55:00', '13:35:00'),
(1116, 'XIIaknA', NULL, NULL, 'Senin', 11, '-', 'kosong', '13:35:00', '14:15:00'),
(1117, 'XIIaknA', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1118, 'XIIaknA', 4, 70, 'Selasa', 1, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:00:00', '07:45:00'),
(1119, 'XIIaknA', 4, 70, 'Selasa', 2, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:45:00', '08:30:00'),
(1120, 'XIIaknA', 4, 72, 'Selasa', 3, '4-72-XIIaknA', 'Akuntansi Keuangan', '08:30:00', '09:15:00'),
(1121, 'XIIaknA', 4, 72, 'Selasa', 4, '4-72-XIIaknA', 'Akuntansi Keuangan', '09:15:00', '10:00:00'),
(1122, 'XIIaknA', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '10:00:00', '10:30:00'),
(1123, 'XIIaknA', 4, 72, 'Selasa', 6, '4-72-XIIaknA', 'Akuntansi Keuangan', '10:30:00', '11:15:00'),
(1124, 'XIIaknA', 23, 75, 'Selasa', 7, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '11:15:00', '12:00:00'),
(1125, 'XIIaknA', 23, 75, 'Selasa', 8, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '12:00:00', '12:45:00'),
(1126, 'XIIaknA', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:45:00', '13:00:00'),
(1127, 'XIIaknA', 23, 75, 'Selasa', 10, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:00:00', '13:45:00'),
(1128, 'XIIaknA', 23, 75, 'Selasa', 11, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:45:00', '14:30:00'),
(1129, 'XIIaknA', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1130, 'XIIaknA', 19, 81, 'Rabu', 1, '19-81-XIIaknA', 'Bimbingan Konseling', '07:00:00', '07:45:00'),
(1131, 'XIIaknA', 6, 69, 'Rabu', 2, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:45:00', '08:30:00'),
(1132, 'XIIaknA', 6, 69, 'Rabu', 3, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:30:00', '09:15:00'),
(1133, 'XIIaknA', 5, 67, 'Rabu', 4, '5-67-XIIaknA', 'Bahasa Indonesia', '09:15:00', '10:00:00'),
(1134, 'XIIaknA', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '10:00:00', '10:30:00'),
(1135, 'XIIaknA', 5, 67, 'Rabu', 6, '5-67-XIIaknA', 'Bahasa Indonesia', '10:30:00', '11:15:00'),
(1136, 'XIIaknA', 21, 66, 'Rabu', 7, '21-66-XIIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '11:15:00', '12:00:00'),
(1137, 'XIIaknA', 21, 66, 'Rabu', 8, '21-66-XIIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '12:00:00', '12:45:00'),
(1138, 'XIIaknA', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:45:00', '13:00:00'),
(1139, 'XIIaknA', 16, 68, 'Rabu', 10, '16-68-XIIaknA', 'Matematika', '13:00:00', '13:45:00'),
(1140, 'XIIaknA', 16, 68, 'Rabu', 11, '16-68-XIIaknA', 'Matematika', '13:45:00', '14:30:00'),
(1141, 'XIIaknA', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1142, 'XIIaknA', 4, 70, 'Kamis', 1, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:00:00', '07:45:00'),
(1143, 'XIIaknA', 4, 70, 'Kamis', 2, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:45:00', '08:30:00'),
(1144, 'XIIaknA', 4, 73, 'Kamis', 3, '4-73-XIIaknA', 'Komputer Akuntansi', '08:30:00', '09:15:00'),
(1145, 'XIIaknA', 4, 73, 'Kamis', 4, '4-73-XIIaknA', 'Komputer Akuntansi', '09:15:00', '10:00:00'),
(1146, 'XIIaknA', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '10:00:00', '10:30:00'),
(1147, 'XIIaknA', 4, 73, 'Kamis', 6, '4-73-XIIaknA', 'Komputer Akuntansi', '10:30:00', '11:15:00'),
(1148, 'XIIaknA', 6, 69, 'Kamis', 7, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '11:15:00', '12:00:00'),
(1149, 'XIIaknA', 6, 69, 'Kamis', 8, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '12:00:00', '12:45:00'),
(1150, 'XIIaknA', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:45:00', '13:00:00'),
(1151, 'XIIaknA', 23, 75, 'Kamis', 10, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:00:00', '13:45:00'),
(1152, 'XIIaknA', 23, 75, 'Kamis', 11, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:45:00', '14:30:00'),
(1153, 'XIIaknA', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1154, 'XIIaknA', 4, 73, 'Sabtu', 1, '4-73-XIIaknA', 'Komputer Akuntansi', '07:00:00', '07:35:00'),
(1155, 'XIIaknA', 4, 73, 'Sabtu', 2, '4-73-XIIaknA', 'Komputer Akuntansi', '07:35:00', '08:10:00'),
(1156, 'XIIaknA', 10, 74, 'Sabtu', 3, '10-74-XIIaknA', 'Administrasi Pajak', '08:10:00', '08:45:00'),
(1157, 'XIIaknA', 10, 74, 'Sabtu', 4, '10-74-XIIaknA', 'Administrasi Pajak', '08:45:00', '09:20:00'),
(1158, 'XIIaknA', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:20:00', '09:50:00'),
(1159, 'XIIaknA', 10, 74, 'Sabtu', 6, '10-74-XIIaknA', 'Administrasi Pajak', '09:50:00', '10:25:00'),
(1160, 'XIIaknA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:25:00', '11:00:00'),
(1161, 'XIIaknA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:00:00', '11:35:00'),
(1162, 'XIIaknA', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '11:35:00', '11:50:00'),
(1163, 'XIIaknA', NULL, NULL, 'Sabtu', 10, '42', '-', '11:50:00', '12:15:00'),
(1164, 'XIIaknA', NULL, NULL, 'Sabtu', 11, '43', '-', '12:15:00', '12:40:00'),
(1165, 'XIIaknA', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1166, 'XIIaknA', 2, 65, 'Jum`at', 1, '2-65-XIIaknA', 'Pendidikan Agama dan Budi Pekerti', '07:00:00', '07:35:00'),
(1167, 'XIIaknA', 2, 65, 'Jum`at', 2, '2-65-XIIaknA', 'Pendidikan Agama dan Budi Pekerti', '07:35:00', '08:10:00'),
(1168, 'XIIaknA', 2, 65, 'Jum`at', 3, '2-65-XIIaknA', 'Pendidikan Agama dan Budi Pekerti', '08:10:00', '08:45:00'),
(1169, 'XIIaknA', 23, 75, 'Jum`at', 4, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(1170, 'XIIaknA', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:20:00', '09:40:00'),
(1171, 'XIIaknA', 23, 75, 'Jum`at', 6, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '09:40:00', '10:15:00'),
(1172, 'XIIaknA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:15:00', '10:50:00'),
(1173, 'XIIaknA', NULL, NULL, 'Jum`at', 8, '39', 'extra', '10:50:00', '12:50:00'),
(1174, 'XIIaknB', NULL, NULL, 'Senin', 0, '3', 'upacara', '06:30:00', '07:30:00'),
(1175, 'XIIaknB', 5, 67, 'Senin', 1, '5-67-XIIaknB', 'Bahasa Indonesia', '07:30:00', '08:10:00'),
(1176, 'XIIaknB', 5, 67, 'Senin', 2, '5-67-XIIaknB', 'Bahasa Indonesia', '08:10:00', '08:50:00'),
(1177, 'XIIaknB', 23, 75, 'Senin', 3, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '08:50:00', '09:30:00'),
(1178, 'XIIaknB', 23, 75, 'Senin', 4, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '09:30:00', '10:10:00'),
(1179, 'XIIaknB', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:10:00', '10:40:00'),
(1180, 'XIIaknB', 23, 75, 'Senin', 6, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '10:40:00', '11:20:00'),
(1181, 'XIIaknB', 23, 75, 'Senin', 7, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '11:20:00', '12:00:00'),
(1182, 'XIIaknB', 4, 70, 'Senin', 8, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '12:00:00', '12:40:00'),
(1183, 'XIIaknB', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:40:00', '12:55:00'),
(1184, 'XIIaknB', 4, 70, 'Senin', 10, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '12:55:00', '13:35:00'),
(1185, 'XIIaknB', 4, 70, 'Senin', 11, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '13:35:00', '14:15:00'),
(1186, 'XIIaknB', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1187, 'XIIaknB', 17, 73, 'Selasa', 1, '17-73-XIIaknB', 'Komputer Akuntansi', '07:00:00', '07:45:00'),
(1188, 'XIIaknB', 17, 73, 'Selasa', 2, '17-73-XIIaknB', 'Komputer Akuntansi', '07:45:00', '08:30:00'),
(1189, 'XIIaknB', 16, 68, 'Selasa', 3, '16-68-XIIaknB', 'Matematika', '08:30:00', '09:15:00'),
(1190, 'XIIaknB', 16, 68, 'Selasa', 4, '16-68-XIIaknB', 'Matematika', '09:15:00', '10:00:00'),
(1191, 'XIIaknB', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '10:00:00', '10:30:00'),
(1192, 'XIIaknB', NULL, NULL, 'Selasa', 6, '-', 'kosong', '10:30:00', '11:15:00'),
(1193, 'XIIaknB', 4, 70, 'Selasa', 7, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '11:15:00', '12:00:00'),
(1194, 'XIIaknB', NULL, NULL, 'Selasa', 8, '-', 'kosong', '12:00:00', '12:45:00'),
(1195, 'XIIaknB', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:45:00', '13:00:00'),
(1196, 'XIIaknB', 4, 70, 'Selasa', 10, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '13:00:00', '13:45:00'),
(1197, 'XIIaknB', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(1198, 'XIIaknB', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1199, 'XIIaknB', NULL, NULL, 'Rabu', 1, '-', 'kosong', '07:00:00', '07:45:00'),
(1200, 'XIIaknB', 19, 81, 'Rabu', 2, '19-81-XIIaknB', 'Bimbingan Konseling', '07:45:00', '08:30:00'),
(1201, 'XIIaknB', NULL, NULL, 'Rabu', 3, '-', 'kosong', '08:30:00', '09:15:00'),
(1202, 'XIIaknB', 16, 68, 'Rabu', 4, '16-68-XIIaknB', 'Matematika', '09:15:00', '10:00:00'),
(1203, 'XIIaknB', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '10:00:00', '10:30:00'),
(1204, 'XIIaknB', 16, 68, 'Rabu', 6, '16-68-XIIaknB', 'Matematika', '10:30:00', '11:15:00'),
(1205, 'XIIaknB', 17, 71, 'Rabu', 7, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '11:15:00', '12:00:00'),
(1206, 'XIIaknB', 17, 71, 'Rabu', 8, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '12:00:00', '12:45:00'),
(1207, 'XIIaknB', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:45:00', '13:00:00'),
(1208, 'XIIaknB', 17, 71, 'Rabu', 10, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:00:00', '13:45:00'),
(1209, 'XIIaknB', 17, 71, 'Rabu', 11, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:45:00', '14:30:00'),
(1210, 'XIIaknB', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1211, 'XIIaknB', 14, 74, 'Kamis', 1, '14-74-XIIaknB', 'Administrasi Pajak', '07:00:00', '07:45:00'),
(1212, 'XIIaknB', 14, 74, 'Kamis', 2, '14-74-XIIaknB', 'Administrasi Pajak', '07:45:00', '08:30:00'),
(1213, 'XIIaknB', 14, 74, 'Kamis', 3, '14-74-XIIaknB', 'Administrasi Pajak', '08:30:00', '09:15:00'),
(1214, 'XIIaknB', 6, 69, 'Kamis', 4, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:15:00', '10:00:00'),
(1215, 'XIIaknB', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '10:00:00', '10:30:00'),
(1216, 'XIIaknB', 6, 69, 'Kamis', 6, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '10:30:00', '11:15:00'),
(1217, 'XIIaknB', 4, 70, 'Kamis', 7, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '11:15:00', '12:00:00'),
(1218, 'XIIaknB', 4, 70, 'Kamis', 8, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '12:00:00', '12:45:00'),
(1219, 'XIIaknB', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:45:00', '13:00:00'),
(1220, 'XIIaknB', 6, 69, 'Kamis', 10, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '13:00:00', '13:45:00'),
(1221, 'XIIaknB', 6, 69, 'Kamis', 11, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '13:45:00', '14:30:00'),
(1222, 'XIIaknB', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1223, 'XIIaknB', 21, 66, 'Sabtu', 1, '21-66-XIIaknB', 'Pendidikan Pancasila dan Kewarganegaraan', '07:00:00', '07:35:00'),
(1224, 'XIIaknB', 21, 66, 'Sabtu', 2, '21-66-XIIaknB', 'Pendidikan Pancasila dan Kewarganegaraan', '07:35:00', '08:10:00'),
(1225, 'XIIaknB', 4, 72, 'Sabtu', 3, '4-72-XIIaknB', 'Akuntansi Keuangan', '08:10:00', '08:45:00'),
(1226, 'XIIaknB', 4, 72, 'Sabtu', 4, '4-72-XIIaknB', 'Akuntansi Keuangan', '08:45:00', '09:20:00'),
(1227, 'XIIaknB', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:20:00', '09:50:00'),
(1228, 'XIIaknB', 4, 72, 'Sabtu', 6, '4-72-XIIaknB', 'Akuntansi Keuangan', '09:50:00', '10:25:00'),
(1229, 'XIIaknB', 23, 75, 'Sabtu', 7, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '10:25:00', '11:00:00'),
(1230, 'XIIaknB', 23, 75, 'Sabtu', 8, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '11:00:00', '11:35:00'),
(1231, 'XIIaknB', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '11:35:00', '11:50:00'),
(1232, 'XIIaknB', NULL, NULL, 'Sabtu', 10, '42', '-', '11:50:00', '12:15:00'),
(1233, 'XIIaknB', NULL, NULL, 'Sabtu', 11, '43', '-', '12:15:00', '12:40:00'),
(1234, 'XIIaknB', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1235, 'XIIaknB', 17, 73, 'Jum`at', 1, '17-73-XIIaknB', 'Komputer Akuntansi', '07:00:00', '07:35:00'),
(1236, 'XIIaknB', 17, 73, 'Jum`at', 2, '17-73-XIIaknB', 'Komputer Akuntansi', '07:35:00', '08:10:00'),
(1237, 'XIIaknB', 17, 73, 'Jum`at', 3, '17-73-XIIaknB', 'Komputer Akuntansi', '08:10:00', '08:45:00'),
(1238, 'XIIaknB', 2, 65, 'Jum`at', 4, '2-65-XIIaknB', 'Pendidikan Agama dan Budi Pekerti', '08:45:00', '09:20:00'),
(1239, 'XIIaknB', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:20:00', '09:40:00'),
(1240, 'XIIaknB', 2, 65, 'Jum`at', 6, '2-65-XIIaknB', 'Pendidikan Agama dan Budi Pekerti', '09:40:00', '10:15:00'),
(1241, 'XIIaknB', 2, 65, 'Jum`at', 7, '2-65-XIIaknB', 'Pendidikan Agama dan Budi Pekerti', '10:15:00', '10:50:00'),
(1242, 'XIIaknB', NULL, NULL, 'Jum`at', 8, '39', 'extra', '10:50:00', '12:50:00'),
(1243, 'XIIkntrA', NULL, NULL, 'Senin', 0, '3', 'upacara', '06:30:00', '07:30:00'),
(1244, 'XIIkntrA', 19, 78, 'Senin', 1, '19-78-XIIkntrA', 'Bimbingan Konseling', '07:30:00', '08:10:00'),
(1245, 'XIIkntrA', 16, 30, 'Senin', 2, '16-30-XIIkntrA', 'Matematika', '08:10:00', '08:50:00'),
(1246, 'XIIkntrA', 16, 30, 'Senin', 3, '16-30-XIIkntrA', 'Matematika', '08:50:00', '09:30:00'),
(1247, 'XIIkntrA', 14, 35, 'Senin', 4, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '09:30:00', '10:10:00'),
(1248, 'XIIkntrA', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:10:00', '10:40:00'),
(1249, 'XIIkntrA', 14, 35, 'Senin', 6, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '10:40:00', '11:20:00'),
(1250, 'XIIkntrA', 14, 35, 'Senin', 7, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:20:00', '12:00:00'),
(1251, 'XIIkntrA', 2, 27, 'Senin', 8, '2-27-XIIkntrA', 'Pendidikan Agama dan Budi Pekerti', '12:00:00', '12:40:00'),
(1252, 'XIIkntrA', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:40:00', '12:55:00'),
(1253, 'XIIkntrA', 2, 27, 'Senin', 10, '2-27-XIIkntrA', 'Pendidikan Agama dan Budi Pekerti', '12:55:00', '13:35:00'),
(1254, 'XIIkntrA', 2, 27, 'Senin', 11, '2-27-XIIkntrA', 'Pendidikan Agama dan Budi Pekerti', '13:35:00', '14:15:00'),
(1255, 'XIIkntrA', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1256, 'XIIkntrA', 24, 32, 'Selasa', 1, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:45:00'),
(1257, 'XIIkntrA', 24, 32, 'Selasa', 2, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:45:00', '08:30:00'),
(1258, 'XIIkntrA', 6, 31, 'Selasa', 3, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:30:00', '09:15:00'),
(1259, 'XIIkntrA', 6, 31, 'Selasa', 4, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:15:00', '10:00:00'),
(1260, 'XIIkntrA', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '10:00:00', '10:30:00'),
(1261, 'XIIkntrA', 21, 28, 'Selasa', 6, '21-28-XIIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '10:30:00', '11:15:00'),
(1262, 'XIIkntrA', 21, 28, 'Selasa', 7, '21-28-XIIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '11:15:00', '12:00:00'),
(1263, 'XIIkntrA', 16, 30, 'Selasa', 8, '16-30-XIIkntrA', 'Matematika', '12:00:00', '12:45:00'),
(1264, 'XIIkntrA', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:45:00', '13:00:00'),
(1265, 'XIIkntrA', 16, 30, 'Selasa', 10, '16-30-XIIkntrA', 'Matematika', '13:00:00', '13:45:00'),
(1266, 'XIIkntrA', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(1267, 'XIIkntrA', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1268, 'XIIkntrA', 24, 32, 'Rabu', 1, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:45:00'),
(1269, 'XIIkntrA', 24, 32, 'Rabu', 2, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:45:00', '08:30:00'),
(1270, 'XIIkntrA', 24, 32, 'Rabu', 3, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:30:00', '09:15:00'),
(1271, 'XIIkntrA', 6, 31, 'Rabu', 4, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:15:00', '10:00:00'),
(1272, 'XIIkntrA', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '10:00:00', '10:30:00'),
(1273, 'XIIkntrA', 6, 31, 'Rabu', 6, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '10:30:00', '11:15:00'),
(1274, 'XIIkntrA', 5, 29, 'Rabu', 7, '5-29-XIIkntrA', 'Bahasa Indonesia', '11:15:00', '12:00:00'),
(1275, 'XIIkntrA', 5, 29, 'Rabu', 8, '5-29-XIIkntrA', 'Bahasa Indonesia', '12:00:00', '12:45:00'),
(1276, 'XIIkntrA', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:45:00', '13:00:00'),
(1277, 'XIIkntrA', NULL, NULL, 'Rabu', 10, '-', 'kosong', '13:00:00', '13:45:00'),
(1278, 'XIIkntrA', NULL, NULL, 'Rabu', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(1279, 'XIIkntrA', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1280, 'XIIkntrA', 24, 32, 'Kamis', 1, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:45:00'),
(1281, 'XIIkntrA', 24, 32, 'Kamis', 2, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:45:00', '08:30:00'),
(1282, 'XIIkntrA', NULL, NULL, 'Kamis', 3, '-', 'kosong', '08:30:00', '09:15:00'),
(1283, 'XIIkntrA', 14, 35, 'Kamis', 4, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '09:15:00', '10:00:00'),
(1284, 'XIIkntrA', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '10:00:00', '10:30:00'),
(1285, 'XIIkntrA', 14, 35, 'Kamis', 6, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '10:30:00', '11:15:00'),
(1286, 'XIIkntrA', 14, 35, 'Kamis', 7, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:15:00', '12:00:00'),
(1287, 'XIIkntrA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '12:00:00', '12:45:00'),
(1288, 'XIIkntrA', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:45:00', '13:00:00'),
(1289, 'XIIkntrA', 24, 34, 'Kamis', 10, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:00:00', '13:45:00'),
(1290, 'XIIkntrA', 24, 34, 'Kamis', 11, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:45:00', '14:30:00'),
(1291, 'XIIkntrA', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1292, 'XIIkntrA', 22, 36, 'Sabtu', 1, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:35:00'),
(1293, 'XIIkntrA', 22, 36, 'Sabtu', 2, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:35:00', '08:10:00'),
(1294, 'XIIkntrA', 22, 36, 'Sabtu', 3, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:10:00', '08:45:00'),
(1295, 'XIIkntrA', 22, 36, 'Sabtu', 4, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(1296, 'XIIkntrA', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:20:00', '09:50:00'),
(1297, 'XIIkntrA', 24, 33, 'Sabtu', 6, '24-33-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '09:50:00', '10:25:00'),
(1298, 'XIIkntrA', 24, 33, 'Sabtu', 7, '24-33-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '10:25:00', '11:00:00'),
(1299, 'XIIkntrA', 24, 33, 'Sabtu', 8, '24-33-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '11:00:00', '11:35:00'),
(1300, 'XIIkntrA', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '11:35:00', '11:50:00'),
(1301, 'XIIkntrA', NULL, NULL, 'Sabtu', 10, '42', '-', '11:50:00', '12:15:00'),
(1302, 'XIIkntrA', NULL, NULL, 'Sabtu', 11, '43', '-', '12:15:00', '12:40:00'),
(1303, 'XIIkntrA', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1304, 'XIIkntrA', 22, 36, 'Jum`at', 1, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:35:00'),
(1305, 'XIIkntrA', 22, 36, 'Jum`at', 2, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:35:00', '08:10:00'),
(1306, 'XIIkntrA', 22, 36, 'Jum`at', 3, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:10:00', '08:45:00'),
(1307, 'XIIkntrA', 22, 36, 'Jum`at', 4, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(1308, 'XIIkntrA', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:20:00', '09:40:00'),
(1309, 'XIIkntrA', 24, 34, 'Jum`at', 6, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '09:40:00', '10:15:00'),
(1310, 'XIIkntrA', 24, 34, 'Jum`at', 7, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '10:15:00', '10:50:00'),
(1311, 'XIIkntrA', NULL, NULL, 'Jum`at', 8, '39', 'extra', '10:50:00', '12:50:00'),
(1312, 'XIkntrA', NULL, NULL, 'Senin', 0, '2', 'upacara', '06:30:00', '07:30:00'),
(1313, 'XIkntrA', 21, 17, 'Senin', 1, '21-17-XIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '07:30:00', '08:10:00'),
(1314, 'XIkntrA', 21, 17, 'Senin', 2, '21-17-XIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '08:10:00', '08:50:00'),
(1315, 'XIkntrA', 5, 18, 'Senin', 3, '5-18-XIkntrA', 'Bahasa Indonesia', '08:50:00', '09:30:00'),
(1316, 'XIkntrA', 5, 18, 'Senin', 4, '5-18-XIkntrA', 'Bahasa Indonesia', '09:30:00', '10:10:00'),
(1317, 'XIkntrA', NULL, NULL, 'Senin', 5, '5', 'istirahat 1', '10:10:00', '10:40:00'),
(1318, 'XIkntrA', 24, 23, 'Senin', 6, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '10:40:00', '11:20:00'),
(1319, 'XIkntrA', 24, 23, 'Senin', 7, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '11:20:00', '12:00:00'),
(1320, 'XIkntrA', 24, 23, 'Senin', 8, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '12:00:00', '12:40:00'),
(1321, 'XIkntrA', NULL, NULL, 'Senin', 9, '23', 'istirahat 2', '12:40:00', '12:55:00'),
(1322, 'XIkntrA', 8, 19, 'Senin', 10, '8-19-XIkntrA', 'Matematika', '12:55:00', '13:35:00'),
(1323, 'XIkntrA', 8, 19, 'Senin', 11, '8-19-XIkntrA', 'Matematika', '13:35:00', '14:15:00'),
(1324, 'XIkntrA', NULL, NULL, 'Selasa', 0, '45', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1325, 'XIkntrA', 15, 26, 'Selasa', 1, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:45:00'),
(1326, 'XIkntrA', 15, 26, 'Selasa', 2, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:45:00', '08:30:00'),
(1327, 'XIkntrA', 19, 77, 'Selasa', 3, '19-77-XIkntrA', 'Bimbingan Konseling', '08:30:00', '09:15:00'),
(1328, 'XIkntrA', NULL, NULL, 'Selasa', 4, '-', 'kosong', '09:15:00', '10:00:00'),
(1329, 'XIkntrA', NULL, NULL, 'Selasa', 5, '8', 'istirahat 1', '10:00:00', '10:30:00'),
(1330, 'XIkntrA', 24, 23, 'Selasa', 6, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '10:30:00', '11:15:00'),
(1331, 'XIkntrA', 24, 23, 'Selasa', 7, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '11:15:00', '12:00:00'),
(1332, 'XIkntrA', 24, 23, 'Selasa', 8, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '12:00:00', '12:45:00'),
(1333, 'XIkntrA', NULL, NULL, 'Selasa', 9, '26', 'istirahat 2', '12:45:00', '13:00:00'),
(1334, 'XIkntrA', NULL, NULL, 'Selasa', 10, '-', 'kosong', '13:00:00', '13:45:00'),
(1335, 'XIkntrA', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(1336, 'XIkntrA', NULL, NULL, 'Rabu', 0, '48', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1337, 'XIkntrA', 15, 26, 'Rabu', 1, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:45:00'),
(1338, 'XIkntrA', 15, 26, 'Rabu', 2, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:45:00', '08:30:00'),
(1339, 'XIkntrA', 15, 26, 'Rabu', 3, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:30:00', '09:15:00'),
(1340, 'XIkntrA', 24, 24, 'Rabu', 4, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '09:15:00', '10:00:00'),
(1341, 'XIkntrA', NULL, NULL, 'Rabu', 5, '11', 'istirahat 1', '10:00:00', '10:30:00'),
(1342, 'XIkntrA', 24, 24, 'Rabu', 6, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '10:30:00', '11:15:00'),
(1343, 'XIkntrA', 24, 24, 'Rabu', 7, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '11:15:00', '12:00:00'),
(1344, 'XIkntrA', 24, 24, 'Rabu', 8, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '12:00:00', '12:45:00'),
(1345, 'XIkntrA', NULL, NULL, 'Rabu', 9, '29', 'istirahat 2', '12:45:00', '13:00:00'),
(1346, 'XIkntrA', 24, 24, 'Rabu', 10, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:00:00', '13:45:00'),
(1347, 'XIkntrA', 24, 24, 'Rabu', 11, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:45:00', '14:30:00'),
(1348, 'XIkntrA', NULL, NULL, 'Kamis', 0, '51', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1349, 'XIkntrA', 9, 21, 'Kamis', 1, '9-21-XIkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:00:00', '07:45:00'),
(1350, 'XIkntrA', 9, 21, 'Kamis', 2, '9-21-XIkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:45:00', '08:30:00'),
(1351, 'XIkntrA', 15, 26, 'Kamis', 3, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:30:00', '09:15:00'),
(1352, 'XIkntrA', 15, 26, 'Kamis', 4, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '09:15:00', '10:00:00'),
(1353, 'XIkntrA', NULL, NULL, 'Kamis', 5, '14', 'istirahat 1', '10:00:00', '10:30:00'),
(1354, 'XIkntrA', 12, 16, 'Kamis', 6, '12-16-XIkntrA', 'Pendidikan Agama dan Budi Pekerti', '10:30:00', '11:15:00'),
(1355, 'XIkntrA', 12, 16, 'Kamis', 7, '12-16-XIkntrA', 'Pendidikan Agama dan Budi Pekerti', '11:15:00', '12:00:00'),
(1356, 'XIkntrA', 12, 16, 'Kamis', 8, '12-16-XIkntrA', 'Pendidikan Agama dan Budi Pekerti', '12:00:00', '12:45:00'),
(1357, 'XIkntrA', NULL, NULL, 'Kamis', 9, '32', 'istirahat 2', '12:45:00', '13:00:00'),
(1358, 'XIkntrA', 7, 25, 'Kamis', 10, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '13:00:00', '13:45:00'),
(1359, 'XIkntrA', 7, 25, 'Kamis', 11, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '13:45:00', '14:30:00'),
(1360, 'XIkntrA', NULL, NULL, 'Sabtu', 0, '57', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1361, 'XIkntrA', 11, 22, 'Sabtu', 1, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:35:00'),
(1362, 'XIkntrA', 11, 22, 'Sabtu', 2, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:35:00', '08:10:00'),
(1363, 'XIkntrA', 11, 22, 'Sabtu', 3, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:10:00', '08:45:00'),
(1364, 'XIkntrA', 11, 22, 'Sabtu', 4, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:45:00', '09:20:00'),
(1365, 'XIkntrA', NULL, NULL, 'Sabtu', 5, '17', 'istirahat 1', '09:20:00', '09:50:00'),
(1366, 'XIkntrA', 11, 22, 'Sabtu', 6, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '09:50:00', '10:25:00'),
(1367, 'XIkntrA', 11, 22, 'Sabtu', 7, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '10:25:00', '11:00:00'),
(1368, 'XIkntrA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:00:00', '11:35:00'),
(1369, 'XIkntrA', NULL, NULL, 'Sabtu', 9, '35', 'istirahat 2', '11:35:00', '11:50:00'),
(1370, 'XIkntrA', 7, 25, 'Sabtu', 10, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:50:00', '12:25:00'),
(1371, 'XIkntrA', 7, 25, 'Sabtu', 11, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '12:25:00', '13:00:00'),
(1372, 'XIkntrA', NULL, NULL, 'Jum`at', 0, '54', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1373, 'XIkntrA', 6, 20, 'Jum`at', 1, '6-20-XIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:00:00', '07:35:00'),
(1374, 'XIkntrA', 6, 20, 'Jum`at', 2, '6-20-XIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:35:00', '08:10:00'),
(1375, 'XIkntrA', 6, 20, 'Jum`at', 3, '6-20-XIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:10:00', '08:45:00'),
(1376, 'XIkntrA', NULL, NULL, 'Jum`at', 4, '-', 'kosong', '08:45:00', '09:20:00'),
(1377, 'XIkntrA', NULL, NULL, 'Jum`at', 5, '20', 'istirahat 1', '09:20:00', '09:40:00'),
(1378, 'XIkntrA', 8, 19, 'Jum`at', 6, '8-19-XIkntrA', 'Matematika', '09:40:00', '10:15:00'),
(1379, 'XIkntrA', 8, 19, 'Jum`at', 7, '8-19-XIkntrA', 'Matematika', '10:15:00', '10:50:00'),
(1380, 'XIkntrA', NULL, NULL, 'Jum`at', 8, '38', 'extra', '10:50:00', '12:50:00'),
(1381, 'XkntrA', NULL, NULL, 'Senin', 0, '1', 'upacara', '06:30:00', '07:30:00'),
(1382, 'XkntrA', 8, 12, 'Senin', 1, '8-12-XkntrA', 'IPA', '07:30:00', '08:10:00'),
(1383, 'XkntrA', 8, 12, 'Senin', 2, '8-12-XkntrA', 'IPA', '08:10:00', '08:50:00'),
(1384, 'XkntrA', NULL, NULL, 'Senin', 3, '-', 'kosong', '08:50:00', '09:30:00'),
(1385, 'XkntrA', 11, 5, 'Senin', 4, '11-5-XkntrA', 'Sejarah Indonesia', '09:30:00', '10:10:00'),
(1386, 'XkntrA', NULL, NULL, 'Senin', 5, '4', 'istirahat 1', '10:10:00', '10:40:00'),
(1387, 'XkntrA', 11, 5, 'Senin', 6, '11-5-XkntrA', 'Sejarah Indonesia', '10:40:00', '11:20:00'),
(1388, 'XkntrA', 11, 5, 'Senin', 7, '11-5-XkntrA', 'Sejarah Indonesia', '11:20:00', '12:00:00'),
(1389, 'XkntrA', 14, 11, 'Senin', 8, '14-11-XkntrA', 'Administrasi Umum', '12:00:00', '12:40:00'),
(1390, 'XkntrA', NULL, NULL, 'Senin', 9, '22', 'istirahat 2', '12:40:00', '12:55:00'),
(1391, 'XkntrA', 14, 11, 'Senin', 10, '14-11-XkntrA', 'Administrasi Umum', '12:55:00', '13:35:00'),
(1392, 'XkntrA', NULL, NULL, 'Senin', 11, '-', 'kosong', '13:35:00', '14:15:00'),
(1393, 'XkntrA', NULL, NULL, 'Selasa', 0, '44', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1394, 'XkntrA', 5, 3, 'Selasa', 1, '5-3-XkntrA', 'Bahasa Indonesia', '07:00:00', '07:45:00'),
(1395, 'XkntrA', 5, 3, 'Selasa', 2, '5-3-XkntrA', 'Bahasa Indonesia', '07:45:00', '08:30:00'),
(1396, 'XkntrA', 5, 3, 'Selasa', 3, '5-3-XkntrA', 'Bahasa Indonesia', '08:30:00', '09:15:00'),
(1397, 'XkntrA', 5, 3, 'Selasa', 4, '5-3-XkntrA', 'Bahasa Indonesia', '09:15:00', '10:00:00'),
(1398, 'XkntrA', NULL, NULL, 'Selasa', 5, '7', 'istirahat 1', '10:00:00', '10:30:00'),
(1399, 'XkntrA', 25, 82, 'Selasa', 6, '25-82-XkntrA', 'Bahasa Jawa', '10:30:00', '11:15:00'),
(1400, 'XkntrA', 25, 82, 'Selasa', 7, '25-82-XkntrA', 'Bahasa Jawa', '11:15:00', '12:00:00'),
(1401, 'XkntrA', 7, 14, 'Selasa', 8, '7-14-XkntrA', 'Korespondensi', '12:00:00', '12:45:00'),
(1402, 'XkntrA', NULL, NULL, 'Selasa', 9, '25', 'istirahat 2', '12:45:00', '13:00:00'),
(1403, 'XkntrA', 7, 14, 'Selasa', 10, '7-14-XkntrA', 'Korespondensi', '13:00:00', '13:45:00'),
(1404, 'XkntrA', 7, 14, 'Selasa', 11, '7-14-XkntrA', 'Korespondensi', '13:45:00', '14:30:00'),
(1405, 'XkntrA', NULL, NULL, 'Rabu', 0, '47', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1406, 'XkntrA', 9, 8, 'Rabu', 1, '9-8-XkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:00:00', '07:45:00'),
(1407, 'XkntrA', 9, 8, 'Rabu', 2, '9-8-XkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:45:00', '08:30:00'),
(1408, 'XkntrA', 19, 76, 'Rabu', 3, '19-76-XkntrA', 'Bimbingan Konseling', '08:30:00', '09:15:00'),
(1409, 'XkntrA', 7, 10, 'Rabu', 4, '7-10-XkntrA', 'Ekonomi Bisnis', '09:15:00', '10:00:00'),
(1410, 'XkntrA', NULL, NULL, 'Rabu', 5, '10', 'istirahat 1', '10:00:00', '10:30:00'),
(1411, 'XkntrA', 7, 10, 'Rabu', 6, '7-10-XkntrA', 'Ekonomi Bisnis', '10:30:00', '11:15:00'),
(1412, 'XkntrA', 7, 14, 'Rabu', 7, '7-14-XkntrA', 'Korespondensi', '11:15:00', '12:00:00'),
(1413, 'XkntrA', 7, 14, 'Rabu', 8, '7-14-XkntrA', 'Korespondensi', '12:00:00', '12:45:00'),
(1414, 'XkntrA', NULL, NULL, 'Rabu', 9, '28', 'istirahat 2', '12:45:00', '13:00:00'),
(1415, 'XkntrA', NULL, NULL, 'Rabu', 10, '-', 'kosong', '13:00:00', '13:45:00'),
(1416, 'XkntrA', NULL, NULL, 'Rabu', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(1417, 'XkntrA', NULL, NULL, 'Kamis', 0, '50', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1418, 'XkntrA', 6, 6, 'Kamis', 1, '6-6-XkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:00:00', '07:45:00'),
(1419, 'XkntrA', 6, 6, 'Kamis', 2, '6-6-XkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:45:00', '08:30:00'),
(1420, 'XkntrA', 6, 6, 'Kamis', 3, '6-6-XkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:30:00', '09:15:00'),
(1421, 'XkntrA', 11, 7, 'Kamis', 4, '11-7-XkntrA', 'Seni Budaya', '09:15:00', '10:00:00'),
(1422, 'XkntrA', NULL, NULL, 'Kamis', 5, '13', 'istirahat 1', '10:00:00', '10:30:00'),
(1423, 'XkntrA', 11, 7, 'Kamis', 6, '11-7-XkntrA', 'Seni Budaya', '10:30:00', '11:15:00'),
(1424, 'XkntrA', 11, 7, 'Kamis', 7, '11-7-XkntrA', 'Seni Budaya', '11:15:00', '12:00:00'),
(1425, 'XkntrA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '12:00:00', '12:45:00'),
(1426, 'XkntrA', NULL, NULL, 'Kamis', 9, '31', 'istirahat 2', '12:45:00', '13:00:00'),
(1427, 'XkntrA', 8, 4, 'Kamis', 10, '8-4-XkntrA', 'Matematika', '13:00:00', '13:45:00'),
(1428, 'XkntrA', 8, 4, 'Kamis', 11, '8-4-XkntrA', 'Matematika', '13:45:00', '14:30:00'),
(1429, 'XkntrA', NULL, NULL, 'Sabtu', 0, '56', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1430, 'XkntrA', 20, 9, 'Sabtu', 1, '20-9-XkntrA', 'Simulasi dan Komunikasi Digital', '07:00:00', '07:35:00'),
(1431, 'XkntrA', 20, 9, 'Sabtu', 2, '20-9-XkntrA', 'Simulasi dan Komunikasi Digital', '07:35:00', '08:10:00'),
(1432, 'XkntrA', 20, 9, 'Sabtu', 3, '20-9-XkntrA', 'Simulasi dan Komunikasi Digital', '08:10:00', '08:45:00'),
(1433, 'XkntrA', 7, 15, 'Sabtu', 4, '7-15-XkntrA', 'Kearsipan', '08:45:00', '09:20:00'),
(1434, 'XkntrA', NULL, NULL, 'Sabtu', 5, '16', 'istirahat 1', '09:20:00', '09:50:00'),
(1435, 'XkntrA', 7, 15, 'Sabtu', 6, '7-15-XkntrA', 'Kearsipan', '09:50:00', '10:25:00'),
(1436, 'XkntrA', 7, 15, 'Sabtu', 7, '7-15-XkntrA', 'Kearsipan', '10:25:00', '11:00:00'),
(1437, 'XkntrA', 7, 15, 'Sabtu', 8, '7-15-XkntrA', 'Kearsipan', '11:00:00', '11:35:00'),
(1438, 'XkntrA', NULL, NULL, 'Sabtu', 9, '34', 'istirahat 2', '11:35:00', '11:50:00'),
(1439, 'XkntrA', NULL, NULL, 'Sabtu', 10, '40', 'extra', '11:50:00', '12:25:00'),
(1440, 'XkntrA', NULL, NULL, 'Sabtu', 11, '41', 'extra', '12:25:00', '13:00:00'),
(1441, 'XkntrA', NULL, NULL, 'Jum`at', 0, '53', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1442, 'XkntrA', 13, 2, 'Jum`at', 1, '13-2-XkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '07:00:00', '07:35:00'),
(1443, 'XkntrA', 13, 2, 'Jum`at', 2, '13-2-XkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '07:35:00', '08:10:00'),
(1444, 'XkntrA', 8, 4, 'Jum`at', 3, '8-4-XkntrA', 'Matematika', '08:10:00', '08:45:00'),
(1445, 'XkntrA', 8, 4, 'Jum`at', 4, '8-4-XkntrA', 'Matematika', '08:45:00', '09:20:00'),
(1446, 'XkntrA', NULL, NULL, 'Jum`at', 5, '19', 'istirahat 1', '09:20:00', '09:40:00'),
(1447, 'XkntrA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:40:00', '10:15:00'),
(1448, 'XkntrA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:15:00', '10:50:00'),
(1449, 'XkntrA', NULL, NULL, 'Jum`at', 8, '37', 'extra', '10:50:00', '12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `request_jadwal`
--

CREATE TABLE `request_jadwal` (
  `id_request` int(10) NOT NULL,
  `id_guru` varchar(10) NOT NULL,
  `hari` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_jadwal`
--

INSERT INTO `request_jadwal` (`id_request`, `id_guru`, `hari`) VALUES
(10, '5', 'Senin,Selasa,Rabu'),
(11, '4', 'Senin,Selasa,Kamis,Sabtu'),
(12, '8', 'Senin,Kamis,Jum`at'),
(13, '9', 'Rabu,Kamis'),
(14, '19', 'Senin,Selasa,Rabu,Kamis,Jum`at'),
(15, '22', 'Jum`at,Sabtu'),
(16, '10', 'Sabtu'),
(17, '11', 'Senin,Kamis,Sabtu'),
(18, '14', 'Senin,Rabu,Kamis'),
(19, '20', 'Jum`at,Sabtu');

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
(26, 1, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0),
(27, 2, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIaknA,XIIaknB,XIIkntrA', 147, 9, 0.06),
(28, 3, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0),
(29, 4, 'Senin,Selasa,Kamis,Sabtu', 'XIIaknA,XIIaknB', 68, 31, 1.46),
(30, 5, 'Senin,Selasa,Rabu', 'XaknA,XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA,XkntrA', 189, 20, 1.11),
(31, 6, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA,XkntrA', 347, 24, 0.07),
(32, 7, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIkntrA,XkntrA', 149, 19, 0.13),
(33, 8, 'Senin,Kamis,Jum`at', 'XaknA,XIaknA,XIkntrA,XkntrA', 96, 20, 1.21),
(34, 9, 'Rabu,Kamis', 'XaknA,XIaknA,XIkntrA,XkntrA', 72, 8, 1.11),
(35, 10, 'Sabtu', 'XIIaknA', 7, 3, 1.43),
(36, 11, 'Senin,Kamis,Sabtu', 'XaknA,XIkntrA,XkntrA', 77, 18, 1.23),
(37, 12, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIkntrA', 102, 6, 0.06),
(38, 13, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XkntrA', 98, 4, 0.04),
(39, 14, 'Senin,Rabu,Kamis', 'XaknA,XIaknA,XIIaknB,XIIkntrA,XkntrA', 135, 25, 1.19),
(40, 15, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIkntrA', 102, 14, 0.14),
(41, 16, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIaknA,XIIaknB,XIIkntrA', 147, 12, 0.08),
(42, 17, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIIaknA,XIIaknB', 149, 29, 0.19),
(43, 18, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XkntrA', 98, 6, 0.06),
(44, 19, 'Senin,Selasa,Rabu,Kamis,Jum`at', 'XaknA,XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA,XkntrA', 294, 7, 1.02),
(45, 20, 'Jum`at,Sabtu', 'XaknA,XkntrA', 26, 6, 1.23),
(46, 21, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA', 249, 10, 0.04),
(47, 22, 'Jum`at,Sabtu', 'XIIkntrA', 13, 8, 1.62),
(48, 23, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIIaknA,XIIaknB', 198, 29, 0.15),
(49, 24, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIkntrA,XIkntrA', 100, 31, 0.31),
(50, 25, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIkntrA,XkntrA', 200, 8, 0.04);

-- --------------------------------------------------------

--
-- Table structure for table `tugas_guru`
--

CREATE TABLE `tugas_guru` (
  `id_tugas` varchar(16) NOT NULL,
  `id_guru` varchar(16) NOT NULL,
  `id_mapel` varchar(10) NOT NULL,
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
('10-74-XIIaknA', '10', '74', 'U', 'XIIaknA', '', 0, '1', 3),
('11-22-XIkntrA', '11', '22', 'AM', 'XIkntrA', '', 0, '1', 6),
('11-41-XaknA', '11', '41', 'H', 'XaknA', '', 0, '1', 3),
('11-43-XaknA', '11', '43', 'G', 'XaknA', '', 0, '1', 3),
('11-5-XkntrA', '11', '5', 'H', 'XkntrA', '', 0, '1', 3),
('11-7-XkntrA', '11', '7', 'G', 'XkntrA', '', 0, '1', 3),
('12-16-XIkntrA', '12', '16', 'A', 'XIkntrA', '', 0, '1', 3),
('12-53-XIaknA', '12', '53', 'A', 'XIaknA', '', 3, '0', 3),
('13-2-XkntrA', '13', '2', 'B', 'XkntrA', '', 0, '1', 2),
('13-38-XaknA', '13', '38', 'B', 'XaknA', '', 0, '1', 2),
('14-11-XkntrA', '14', '11', 'AF', 'XkntrA', '', 0, '1', 2),
('14-13-XkntrA', '14', '13', 'AI', 'XkntrA', '', 4, '0', 4),
('14-35-XIIkntrA', '14', '35', 'AP', 'XIIkntrA', '', 0, '1', 6),
('14-47-XaknA', '14', '47', 'AF', 'XaknA', '', 0, '1', 2),
('14-49-XaknA', '14', '49', 'AE', 'XaknA', '', 0, '1', 2),
('14-52-XaknA', '14', '52', 'AA', 'XaknA', '', 0, '1', 3),
('14-63-XIaknA', '14', '63', 'U', 'XIaknA', '', 0, '1', 3),
('14-74-XIIaknB', '14', '74', 'U', 'XIIaknB', '', 0, '1', 3),
('15-26-XIkntrA', '15', '26', 'Y', 'XIkntrA', '', 0, '1', 7),
('15-64-XIaknA', '15', '64', 'Y', 'XIaknA', '', 0, '1', 7),
('16-30-XIIkntrA', '16', '30', 'D', 'XIIkntrA', '', 0, '1', 4),
('16-68-XIIaknA', '16', '68', 'D', 'XIIaknA', '', 0, '1', 4),
('16-68-XIIaknB', '16', '68', 'D', 'XIIaknB', '', 0, '1', 4),
('17-59-XIaknA', '17', '59', 'AK', 'XIaknA', '', 0, '1', 6),
('17-60-XIaknA', '17', '60', 'AL', 'XIaknA', '', 0, '1', 4),
('17-61-XIaknA', '17', '61', 'W', 'XIaknA', '', 0, '1', 6),
('17-71-XIIaknA', '17', '71', 'AL', 'XIIaknA', '', 4, '0', 4),
('17-71-XIIaknB', '17', '71', 'AL', 'XIIaknB', '', 0, '1', 4),
('17-73-XIIaknB', '17', '73', 'AC', 'XIIaknB', '', 0, '1', 5),
('18-1-XkntrA', '18', '1', 'A', 'XkntrA', '', 3, '0', 3),
('18-37-XaknA', '18', '37', 'A', 'XaknA', '', 3, '0', 3),
('19-76-XkntrA', '19', '76', 'Z', 'XkntrA', '', 0, '1', 1),
('19-77-XIkntrA', '19', '77', 'Z', 'XIkntrA', '', 0, '1', 1),
('19-78-XIIkntrA', '19', '78', 'Z', 'XIIkntrA', '', 0, '1', 1),
('19-79-XaknA', '19', '79', 'Z', 'XaknA', '', 0, '1', 1),
('19-80-XIaknA', '19', '80', 'Z', 'XIaknA', '', 0, '1', 1),
('19-81-XIIaknA', '19', '81', 'Z', 'XIIaknA', '', 0, '1', 1),
('19-81-XIIaknB', '19', '81', 'Z', 'XIIaknB', '', 0, '1', 1),
('2-27-XIIkntrA', '2', '27', 'A', 'XIIkntrA', '', 0, '1', 3),
('2-65-XIIaknA', '2', '65', 'A', 'XIIaknA', '', 0, '1', 3),
('2-65-XIIaknB', '2', '65', 'A', 'XIIaknB', '', 0, '1', 3),
('20-45-XaknA', '20', '45', 'S', 'XaknA', '', 0, '1', 3),
('20-9-XkntrA', '20', '9', 'S', 'XkntrA', '', 0, '1', 3),
('21-17-XIkntrA', '21', '17', 'B', 'XIkntrA', '', 0, '1', 2),
('21-28-XIIkntrA', '21', '28', 'B', 'XIIkntrA', '', 0, '1', 2),
('21-54-XIaknA', '21', '54', 'B', 'XIaknA', '', 0, '1', 2),
('21-66-XIIaknA', '21', '66', 'B', 'XIIaknA', '', 0, '1', 2),
('21-66-XIIaknB', '21', '66', 'B', 'XIIaknB', '', 0, '1', 2),
('22-36-XIIkntrA', '22', '36', 'Y', 'XIIkntrA', '', 0, '1', 8),
('23-50-XaknA', '23', '50', 'AD', 'XaknA', '', 0, '1', 3),
('23-51-XaknA', '23', '51', 'N', 'XaknA', '', 0, '1', 5),
('23-62-XIaknA', '23', '62', 'AC', 'XIaknA', '', 0, '1', 5),
('23-75-XIIaknA', '23', '75', 'Y', 'XIIaknA', '', 0, '1', 8),
('23-75-XIIaknB', '23', '75', 'Y', 'XIIaknB', '', 2, '0', 8),
('24-23-XIkntrA', '24', '23', 'AN', 'XIkntrA', '', 0, '1', 6),
('24-24-XIkntrA', '24', '24', 'AO', 'XIkntrA', '', 0, '1', 6),
('24-32-XIIkntrA', '24', '32', 'AM', 'XIIkntrA', '', 0, '1', 7),
('24-33-XIIkntrA', '24', '33', 'AN', 'XIIkntrA', '', 3, '0', 6),
('24-34-XIIkntrA', '24', '34', 'AO', 'XIIkntrA', '', 2, '0', 6),
('25-82-XkntrA', '25', '82', 'AJ', 'XkntrA', '', 0, '1', 2),
('25-83-XIkntrA', '25', '83', 'AJ', 'XIkntrA', '', 2, '0', 2),
('25-84-XaknA', '25', '84', 'AJ', 'XaknA', '', 0, '1', 2),
('25-85-XIaknA', '25', '85', 'AJ', 'XIaknA', '', 0, '1', 2),
('4-70-XIIaknA', '4', '70', 'AK', 'XIIaknA', '', 0, '1', 7),
('4-70-XIIaknB', '4', '70', 'AK', 'XIIaknB', '', 0, '1', 7),
('4-72-XIIaknA', '4', '72', 'W', 'XIIaknA', '', 0, '1', 6),
('4-72-XIIaknB', '4', '72', 'W', 'XIIaknB', '', 3, '0', 6),
('4-73-XIIaknA', '4', '73', 'AC', 'XIIaknA', '', 0, '1', 5),
('5-18-XIkntrA', '5', '18', 'C', 'XIkntrA', '', 1, '0', 3),
('5-29-XIIkntrA', '5', '29', 'C', 'XIIkntrA', '', 0, '1', 2),
('5-3-XkntrA', '5', '3', 'C', 'XkntrA', '', 0, '1', 4),
('5-39-XaknA', '5', '39', 'C', 'XaknA', '', 0, '1', 4),
('5-55-XIaknA', '5', '55', 'C', 'XIaknA', '', 0, '1', 3),
('5-67-XIIaknA', '5', '67', 'C', 'XIIaknA', '', 0, '1', 2),
('5-67-XIIaknB', '5', '67', 'C', 'XIIaknB', '', 0, '1', 2),
('6-20-XIkntrA', '6', '20', 'F', 'XIkntrA', '', 0, '1', 3),
('6-31-XIIkntrA', '6', '31', 'F', 'XIIkntrA', '', 0, '1', 4),
('6-42-XaknA', '6', '42', 'F', 'XaknA', '', 0, '1', 3),
('6-57-XIaknA', '6', '57', 'F', 'XIaknA', '', 0, '1', 3),
('6-6-XkntrA', '6', '6', 'F', 'XkntrA', '', 0, '1', 3),
('6-69-XIIaknA', '6', '69', 'F', 'XIIaknA', '', 0, '1', 4),
('6-69-XIIaknB', '6', '69', 'F', 'XIIaknB', '', 0, '1', 4),
('7-10-XkntrA', '7', '10', 'J', 'XkntrA', '', 0, '1', 2),
('7-14-XkntrA', '7', '14', 'AG', 'XkntrA', '', 0, '1', 5),
('7-15-XkntrA', '7', '15', 'AH', 'XkntrA', '', 0, '1', 4),
('7-25-XIkntrA', '7', '25', 'AP', 'XIkntrA', '', 2, '0', 6),
('7-46-XaknA', '7', '46', 'J', 'XaknA', '', 0, '1', 2),
('8-12-XkntrA', '8', '12', 'T', 'XkntrA', '', 0, '1', 2),
('8-19-XIkntrA', '8', '19', 'D', 'XIkntrA', '', 0, '1', 4),
('8-4-XkntrA', '8', '4', 'D', 'XkntrA', '', 0, '1', 4),
('8-40-XaknA', '8', '40', 'D', 'XaknA', '', 0, '1', 4),
('8-48-XaknA', '8', '48', 'T', 'XaknA', '', 0, '1', 2),
('8-56-XIaknA', '8', '56', 'D', 'XIaknA', '', 0, '1', 4),
('9-21-XIkntrA', '9', '21', 'I', 'XIkntrA', '', 0, '1', 2),
('9-44-XaknA', '9', '44', 'I', 'XaknA', '', 0, '1', 2),
('9-58-XIaknA', '9', '58', 'I', 'XIaknA', '', 0, '1', 2),
('9-8-XkntrA', '9', '8', 'I', 'XkntrA', '', 0, '1', 2);

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
(1, 'admin', 'admin', 'admin'),
(2, 'alfrizal', 'alfrizal', 'admin');

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
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  ADD PRIMARY KEY (`id_penjadwalan`);

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
  ADD PRIMARY KEY (`id_rumusan`);

--
-- Indexes for table `tugas_guru`
--
ALTER TABLE `tugas_guru`
  ADD PRIMARY KEY (`id_tugas`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`kode_mapel`),
  ADD KEY `id_kelas` (`id_kelas`);

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
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jadwal_khusus`
--
ALTER TABLE `jadwal_khusus`
  MODIFY `id_jadwal_khusus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  MODIFY `id_penjadwalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1450;

--
-- AUTO_INCREMENT for table `request_jadwal`
--
ALTER TABLE `request_jadwal`
  MODIFY `id_request` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rumusan`
--
ALTER TABLE `rumusan`
  MODIFY `id_rumusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
