-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 29. Nopember 2021 jam 08:05
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_siosis`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_detail_perhitungan_suara`
--
CREATE TABLE IF NOT EXISTS `view_detail_perhitungan_suara` (
`foto` text
,`id_paslon` int(11)
,`id_siswa` int(11)
,`id_siswa_wakil` int(11)
,`visi` text
,`misi` text
,`nis` varchar(15)
,`nama_siswa` varchar(100)
,`nama_siswa_wakil` varchar(100)
,`nis_wakil` varchar(15)
,`created_date` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_paslon`
--
CREATE TABLE IF NOT EXISTS `view_paslon` (
`foto` text
,`id_paslon` int(11)
,`id_siswa` int(11)
,`id_siswa_wakil` int(11)
,`visi` text
,`misi` text
,`nis` varchar(15)
,`nama_siswa` varchar(100)
,`nama_siswa_wakil` varchar(100)
,`nis_wakil` varchar(15)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_perhitungan_suara`
--
CREATE TABLE IF NOT EXISTS `view_perhitungan_suara` (
`foto` text
,`id_paslon` int(11)
,`id_siswa` int(11)
,`id_siswa_wakil` int(11)
,`visi` text
,`misi` text
,`nis` varchar(15)
,`nama_siswa` varchar(100)
,`nama_siswa_wakil` varchar(100)
,`nis_wakil` varchar(15)
,`jumlah` bigint(21)
,`jumlah_semua` bigint(21)
);
-- --------------------------------------------------------

--
-- Struktur dari tabel `_paslon`
--

CREATE TABLE IF NOT EXISTS `_paslon` (
  `id_paslon` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_siswa_wakil` int(11) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`id_paslon`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `_paslon`
--

INSERT INTO `_paslon` (`id_paslon`, `id_siswa`, `id_siswa_wakil`, `visi`, `misi`, `foto`) VALUES
(2, 3, 4, 'visi nya', 'misi nya', 'paslon_edit-20210902133311__img-20190320-wa0001-jpg.jpg'),
(4, 4, 3, 'aaa', 'adad', 'paslon_edit-20210902133209__whatsapp-image-2019-03-05-at-7-37-59-am-jpeg.jpeg'),
(5, 3, 4, 'aaa', 'aadad', 'siswa_edit-20210902133254__whatsapp-image-2019-03-18-at-11-04-34-pm-jpeg.jpeg'),
(6, 5, 6, 'Memajukan Sekolah Memajukan Sekolah Memajukan Sekolah Memajukan Sekolah', 'Belajar belajar belajar Memajukan Sekolah Memajukan Sekolah', 'siswa_edit-20210903130741__whatsapp-image-2019-03-18-at-11-04-38-pm-jpeg.jpeg'),
(7, 7, 8, 'adadaa', 'adad', 'siswa_edit-20210903131026__whatsapp-image-2019-03-18-at-11-04-38-pm-jpeg.jpeg'),
(8, 9, 10, 'Menjadikan sekolah agar lebih bersih dan terhindar dari sampah', 'membuat murit murit menjadi lebih perduli ke lingkungan', 'paslon_edit-20211109051340__img-20180123-wa0001-jpg.jpg'),
(9, 14, 16, 'indah rukun dan bersih', 'membuat murit agar lebih taat peraturan', 'siswa_edit-20211109051321__gbr-6-jpg.jpg'),
(10, 13, 17, 'Menjadikan sekolah agar lebih bersih dan terhindar dari sampah', 'membuat murit murit menjadi lebih perduli ke lingkungan', 'siswa_edit-20211109051408__img-20180402-wa0003-jpg.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_pemilih`
--

CREATE TABLE IF NOT EXISTS `_pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `_perhitungan_suara`
--

CREATE TABLE IF NOT EXISTS `_perhitungan_suara` (
  `id_perhitungan_suara` int(11) NOT NULL AUTO_INCREMENT,
  `id_paslon` int(11) NOT NULL,
  `id_pemilih` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id_perhitungan_suara`),
  UNIQUE KEY `id_pemilih` (`id_pemilih`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `_perhitungan_suara`
--

INSERT INTO `_perhitungan_suara` (`id_perhitungan_suara`, `id_paslon`, `id_pemilih`, `created_date`, `created_by`) VALUES
(11, 6, 3, '2021-09-03', 3),
(12, 7, 4, '2021-09-03', 4),
(13, 7, 5, '2021-09-03', 5),
(14, 10, 6, '2021-11-09', 6),
(15, 8, 10, '2021-11-12', 10),
(16, 9, 9, '2021-11-12', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `_siswa`
--

CREATE TABLE IF NOT EXISTS `_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(15) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `hobi` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_siswa`),
  UNIQUE KEY `nis` (`nis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `_siswa`
--

INSERT INTO `_siswa` (`id_siswa`, `nis`, `nama_siswa`, `jenis_kelamin`, `no_hp`, `hobi`, `email`, `foto`, `alamat`) VALUES
(9, '11111111', 'halimah tumanggor', '', '085373412768', 'memasak', 'halimahtumanggor@gmail.com', '', 'Tarutung Tapanuli Utara'),
(10, '2222222', 'Rina evyani', 'Perempuan', '085373412768', 'nyanyi', 'halimahtumanggor@gmail.com', '', 'Stabat'),
(11, '3333333', 'Hermanto suzana', 'Laki-Laki', '085373412768', 'memancing', 'halimahtumanggor@gmail.com', '', 'Indonesia'),
(12, '4444444', 'Teddy Tua Prayogo', 'Laki-Laki', '085373412768', 'main game', 'halimahtumanggor@gmail.com', '', 'sipoholon'),
(13, '55555555', 'lia indah afsari', 'Perempuan', '085373412768', 'make uo', 'halimahtumanggor@gmail.com', '', 'Perbaungan'),
(14, '6666666', 'Sifah fauziah', 'Perempuan', '085373412768', 'Belanja', 'halimahtumanggor@gmail.com', '', 'Tantom'),
(15, '777777', 'Yoses natanael', 'Laki-Laki', '085373412768', 'Balapan', 'halimahtumanggor@gmail.com', '', 'Simorangkir'),
(16, '888888', 'Gabariel sibarani', 'Laki-Laki', '085373412768', 'Main game', 'halimahtumanggor@gmail.com', '', 'Indonesia'),
(17, '9999999', 'Aditya ahmad', 'Laki-Laki', '085373412768', 'Bermain', 'halimahtumanggor@gmail.com', '', 'Balige'),
(18, '10000000000', 'ndbcjjjbdjbjk', 'Laki-Laki', '085373412768', 'menyanyi', 'halimahtumanggor@gmail.com', '', 'medan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_user`
--

CREATE TABLE IF NOT EXISTS `_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `level` enum('Administrator','Pemilih') NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `nama_user` (`nama_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `_user`
--

INSERT INTO `_user` (`id_user`, `nama_user`, `password`, `nama_lengkap`, `foto`, `level`) VALUES
(1, 'admin', 'd41d8cd98f00b204e9800998ecf8427e', 'Administrator', 'profil-20210903131550__secure-element-featured-jpg.jpg', 'Administrator'),
(6, 'halimah', '81dc9bdb52d04dc20036dbd8313ed055', 'halimah tumanggor', 'profil-20211109051849__p-20180122-194540-1-p-jpg.jpg', 'Pemilih'),
(7, 'rina', '81dc9bdb52d04dc20036dbd8313ed055', 'rina eviany', 'profil-20211109051936__p-20180122-194706-1-p-jpg.jpg', 'Pemilih'),
(8, 'use', '81dc9bdb52d04dc20036dbd8313ed055', 'use', '', 'Pemilih'),
(9, 'halimah1', '81dc9bdb52d04dc20036dbd8313ed055', 'halimah tumanggor', '', 'Pemilih'),
(10, 'lia', '81dc9bdb52d04dc20036dbd8313ed055', 'lia indah', '', 'Pemilih');

-- --------------------------------------------------------

--
-- Structure for view `view_detail_perhitungan_suara`
--
DROP TABLE IF EXISTS `view_detail_perhitungan_suara`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detail_perhitungan_suara` AS select `a`.`foto` AS `foto`,`a`.`id_paslon` AS `id_paslon`,`a`.`id_siswa` AS `id_siswa`,`a`.`id_siswa_wakil` AS `id_siswa_wakil`,`a`.`visi` AS `visi`,`a`.`misi` AS `misi`,`a`.`nis` AS `nis`,`a`.`nama_siswa` AS `nama_siswa`,`a`.`nama_siswa_wakil` AS `nama_siswa_wakil`,`a`.`nis_wakil` AS `nis_wakil`,`b`.`created_date` AS `created_date` from (`view_paslon` `a` join `_perhitungan_suara` `b` on((`a`.`id_paslon` = `b`.`id_paslon`)));

-- --------------------------------------------------------

--
-- Structure for view `view_paslon`
--
DROP TABLE IF EXISTS `view_paslon`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_paslon` AS select `a`.`foto` AS `foto`,`a`.`id_paslon` AS `id_paslon`,`a`.`id_siswa` AS `id_siswa`,`a`.`id_siswa_wakil` AS `id_siswa_wakil`,`a`.`visi` AS `visi`,`a`.`misi` AS `misi`,`b`.`nis` AS `nis`,`b`.`nama_siswa` AS `nama_siswa`,`c`.`nama_siswa` AS `nama_siswa_wakil`,`c`.`nis` AS `nis_wakil` from ((`_paslon` `a` join `_siswa` `b` on((`a`.`id_siswa` = `b`.`id_siswa`))) join `_siswa` `c` on((`a`.`id_siswa_wakil` = `c`.`id_siswa`)));

-- --------------------------------------------------------

--
-- Structure for view `view_perhitungan_suara`
--
DROP TABLE IF EXISTS `view_perhitungan_suara`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_perhitungan_suara` AS select `a`.`foto` AS `foto`,`a`.`id_paslon` AS `id_paslon`,`a`.`id_siswa` AS `id_siswa`,`a`.`id_siswa_wakil` AS `id_siswa_wakil`,`a`.`visi` AS `visi`,`a`.`misi` AS `misi`,`a`.`nis` AS `nis`,`a`.`nama_siswa` AS `nama_siswa`,`a`.`nama_siswa_wakil` AS `nama_siswa_wakil`,`a`.`nis_wakil` AS `nis_wakil`,(select count(`b`.`id_perhitungan_suara`) from `_perhitungan_suara` `b` where (`b`.`id_paslon` = `a`.`id_paslon`)) AS `jumlah`,(select count(`b`.`id_perhitungan_suara`) from `_perhitungan_suara` `b`) AS `jumlah_semua` from `view_paslon` `a`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
