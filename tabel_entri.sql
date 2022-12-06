-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2022 at 04:55 PM
-- Server version: 10.6.10-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kairag23_kamus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_entri`
--

CREATE TABLE `tabel_entri` (
  `lema` varchar(50) NOT NULL,
  `sublema` varchar(50) NOT NULL,
  `definisi_lema` varchar(50) NOT NULL,
  `definisi_sublema` varchar(60) NOT NULL,
  `korpus_sumber` varchar(50) NOT NULL,
  `korpus_sumber_sublema` varchar(20) NOT NULL,
  `kelas_kata` varchar(50) NOT NULL,
  `kelas_kata_sublema` varchar(20) NOT NULL,
  `padanan_sunda_moderen` varchar(20) NOT NULL,
  `arti_sunda_modern` varchar(50) NOT NULL,
  `padanan_jawa_kuna` varchar(20) NOT NULL,
  `arti_jawa_kuna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_entri`
--

INSERT INTO `tabel_entri` (`lema`, `sublema`, `definisi_lema`, `definisi_sublema`, `korpus_sumber`, `korpus_sumber_sublema`, `kelas_kata`, `kelas_kata_sublema`, `padanan_sunda_moderen`, `arti_sunda_modern`, `padanan_jawa_kuna`, `arti_jawa_kuna`) VALUES
('abe, ambe', '', 'cium, (mem)bau(i)', '', 'Bib:1', '', 'v.', '', 'Sdm. ambeu', '', '', ''),
('abet', '', 'pecut, cemeti ', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('acentana, acetana', '', 'ketidaksadaran', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('aci', '', 'sari', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('adam', '', '= utun', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('adanya', '', 'penderitaan', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('adi', 'kapiadi', 'adik', 'terhitung adik', 'Bib:1', 'Bib:1', 'n.', 'v.', '', '', '', ''),
('adiing', '', 'adikku', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('aditya', '', 'matahari', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('adoh', 'nadoh', 'jauh', 'menjauhi', 'Bib:1', 'Bib:1', 'adj.', 'v.', '', '', '', ''),
('adu', '', '(meng)aduh, mengeluh', '', 'Bib:1', '', 'v.', '', '', '', '', ''),
('ageng', 'mageng', 'besar', 'membesar', 'Bib:1', 'Bib:1', 'adj.', 'v.', 'Sdm. ageung', '', '', ''),
('aing', '', 'aku, saya', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('aisan', '', 'perhiasan', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('aja', '', 'jangan', '', 'Bib:1', '', 'adj.', '', '', '', '', ''),
('ajap', '', 'acap, sering', '', 'Bib:1', '', 'adj.', '', '', '', '', ''),
('akalang', '', 'lihat. kalang', '', 'Bib:1', '', 'v.', '', '', '', '', ''),
('akarma', '', 'lihat karma', '', 'Bib:1', '', 'v.', '', '', '', '', ''),
('akasa, angkasa', '', 'angkasa, langit', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('aki', '', 'kakek', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('aksara', '', 'huruf, aksara', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('aku', '', 'aku, saya', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('akuan', '', 'ramah, milik', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('ala', '', 'ambil, tiru, jemput, petik', '', 'Bib:2', '', 'v.', '', '', '', '', ''),
('ala 2', 'ngala', 'ambil, petik, buruk ', 'mengambil, memetik, mencontoh', 'Bib:1', 'Bib:1', 'v.', 'v.', '', '', '', ''),
('baan', 'maan', 'bawa', 'membawa', 'Bib:1', 'Bib:1', 'v.', 'v.', '', '', '', ''),
('bagal', '', 'bakal, pangkal, calon, tunangan', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('béét', '', 'kecil', '', 'Bib:1', '', 'adj.', '', '', '', '', ''),
('cangkrama', 'macangkrama', '', 'pesiar, bercengkerama', 'Bib:1', 'Bib:1', 'v.', 'v.', '', '', '', ''),
('dapur', '', 'rumpun, anggota keluarga', '', 'Bib:1', '', 'n.', '', '', '', '', ''),
('padah', 'madahken', '', 'to condemn, to blame', '', 'SMG 4.5', '', 'vi.', 'cf. MdS ngawada', 'make remarks about, criticizing, scoffing at', 'OJ vada', ''),
('ꦮꦸꦭꦤ꧀', 'ꦮꦸꦭꦤ꧀ꦢꦫꦶ', '', 'bulan', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_entri`
--
ALTER TABLE `tabel_entri`
  ADD PRIMARY KEY (`lema`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
