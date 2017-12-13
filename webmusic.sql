-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 05:20 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmusic`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Login` (IN `userName` VARCHAR(32), IN `passWord` VARCHAR(35))  BEGIN 
	SELECT * FROM user u 
	WHERE u.username = userName AND u.password = passWord; 
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `idAcara` int(10) NOT NULL,
  `namaAcara` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `guest` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`idAcara`, `namaAcara`, `tanggal`, `waktu`, `tempat`, `guest`, `keterangan`) VALUES
(1, 'B-Walk Fest 2017', '2017-12-10', '13.00 WIB', 'Jl. Sidomakmur 82, Dau Kabupaten Malang', 'Geng komedian MLUMAH, band reggae NF12, FLA Kustik, dan solois folk Malang, Iksan Skuter.', 'Pagelaran Kirab Seni Budaya masyarakat Mulyoagung, Barongsai, Jaran Gunot, Reog, dan kegiatan santunan sosial.\r\n\r\nInfo lebih lengkap, silakan follow @batuorganizer (081805022996)'),
(2, 'Acoustic 7', '2017-12-24', '09.00 - 21.00', 'Kampus STT-PLN Jakarta', 'Lie Andi (Founder Indonesian Bass Player) dan The Cat Police', 'Food Street\r\nSpecial Band Perform :\r\nMelancholy Outloud\r\nAll Right Mama\r\nResha & Friends\r\nG#\r\nTen Outta Ten\r\nSka’mat\r\nT I B\r\nSpecial Workshop by:\r\nFranky Sadikin (Bassist of Fusion Stuff)\r\nInfo dan Kontak:\r\n0857-2054-0429(Farhan)\r\n0857-0719-8090 (Demas)\r\n(line) : demasarph\r\n(line) : farhanfahlepy'),
(3, 'Social Culture', '2017-12-24', '13.00 WIB', 'Universitas Negeri Jakarta', 'Senar Senja dan High Moon Ska', 'Special Performance: \r\nTraditional dance\r\nBand’s\r\nStand Up Comedy\r\nAccoustic\r\n\r\nInfo dan Kontak:\r\n087878110372 (Vennia)\r\n083807702404 ( Eka)');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idBerita` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`idBerita`, `judul`, `isi`, `tanggal`) VALUES
(1, 'Fifth harmony siap gelar konser di jakarta', 'Indonesia kembali menghadirkan beberapa penyanyi Internasional. Setelah Katy Perry, kini giliran grup vocal Fifth Harmony yang manggung di Indonesia di The Kasablanka Hall, Kota Kasablanka, Jakarta, pada 12 Maret 2018.\r\n\r\nGrup beranggotakan Ally Broke, Normani Kordey, Dinah Jane, dan Lauren Jauregui ini akan mendarat di Jakarta untuk gelaran tur "PSA Tour". KOnser ini sebagai bentuk promosi album studio ke-3 mereka dengan judul Fifth Harmony.\r\n\r\nKabar tersebut diumumkan oleh akun media sosial resmi fans pelantun Down tersebut. Dalam unggahan itu berbunyi kepastian kehadiran mereka.\r\n\r\n"Ready JAKARTA?! Our girls are coming to see US March 12 (Monday) ', '2017-12-11'),
(2, 'Nikmati Live Konser Musik Jazz Kala Sunset di Pantai Senggigi', 'Para pecinta jazz bisa menikmati live musik jazz kala mentari meninggalkan peraduannya di Pantai Senggigi, Lombok Barat, Nusa Tenggara Barat. Mereka akan dimanjakan permainan musik jazz dari sejumlah musisi dalam dan luar negeri melalui pentas Senggigi Sunset Jazz 2017 yang merupakan gawe Pemerintah Kabupaten Lombok Barat.\r\n \r\nMusisi Tohpati Bertiga, Syaharani and Queen Fireworks, Yura Yunita, Tesla Manaf, Bonita and The Hus Band, Pelita Harapan, dan Bandini Koffie Jazz Project akan menghibur jazz lovers selama dua hari pada 22-23 September mendatang. Selain itu, musisi luar negeri seperti Norma Jean, Line, dan Cellomano juga akan menghibur penikmat musik jazz. Pemkab Lombok Barat menyiapkan dua panggung untuk konser tersebut. Setiap hari, konser dimulai dari sore hingga malam.\r\n \r\nâ€™â€™Pemerintah Lombok Barat mempersembahkan konser itu untuk pecinta musik jazz sambil menikmati keindahan matahari terbenam di Pantai Senggigi,â€™â€™kata Bupati Lombok Barat Fauzan Khalid di Jakarta, Senin (18/9/2017).\r\n \r\nKonser Senggigi Sunset Jazz 2017, kata Fauzan, merupakan salah satu cara dari pemkab Lombok Barat untuk menarik wisatawan domestik dan manca negara. Kendati di Lombok Barat banyak destinasi wisata yang menarik, lanjut Fauzan, pihaknya berharap dengan konser jazz itu akan membuat potensi wisata di daerahnya semakin banyak dikunjungi wisatawan.\r\n \r\nâ€˜â€™Senggigi sendiri sudah sangat indah sebagai daerah wisata. Kami berharap dengan konser jazz ini akan semakin menarik wisatawan datang ke Lombok Barat,â€™â€™kata Yeni S. Ekawati, dari Dinas Pariwisata Kabupaten Lombok Barat.', '2017-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `nama`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'admin', 'admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`idAcara`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idBerita`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `idAcara` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idBerita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
