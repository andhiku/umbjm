-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2018 at 06:41 PM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `umbjm`
--
CREATE DATABASE IF NOT EXISTS `umbjm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `umbjm`;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int(11) NOT NULL AUTO_INCREMENT,
  `judul_artikel` varchar(255) NOT NULL,
  `tgl_terbit` date NOT NULL,
  `isi_artikel` text NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(200) NOT NULL,
  `file_gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_foto`, `deskripsi`, `file_gambar`) VALUES
(1, 'fasilitas', '../img/contoh-fasilitas-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `kalender`
--

CREATE TABLE IF NOT EXISTS `kalender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kegiatan` varchar(200) NOT NULL,
  `waktu` text NOT NULL,
  `jenis` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `kalender`
--

INSERT INTO `kalender` (`id`, `kegiatan`, `waktu`, `jenis`) VALUES
(1, 'Penerimaan Mahasiswa Baru Gelombang 1', '21 Maret - 11 Januari 2016', 1),
(2, 'Ujian Masuk Gelombang 1', '14 Juni 2016', 1),
(3, 'Pengumuman Hasil Ujian Masuk Gelombang 1', '24 Juni 2016', 1),
(4, 'Penerimaan Mahasiswa Baru Gelombang 2', '15 Juni - 27 Agustus 2016', 1),
(5, 'Ujian Masuk Gelombang 2', '30 Agustus 2016', 1),
(6, 'Pengumuman Hasil Ujian Masuk Gelombang 2', 'September', 1),
(7, 'Pendaftaran Ulang Mahasiswa Baru Semester Ganjil Gelombang 1', '22 - 24 Juli 2016', 2),
(8, 'Pendaftaran Ulang Mahasiswa Baru Semester Ganjil Gelombang 2', '05 - 09 September 2016', 2),
(9, 'Pembayaran Biaya Pendidikan Tahap I dan Pendaftaran Ulang (Mahasiswa Lama) Semester Ganjil', '16 - 27 Agustus 2016', 2),
(10, 'Upacara Penerimaan Mahasiswa Baru : Program Diploma, Sarjana, dan Pascasarjana', 'September', 2),
(11, 'Orientasi Pengenalan Akademik (OPAK) Mahasiswa Baru Tahun Akademik 2016/2017 Gelombang 1', '15 - 18 September', 2),
(12, 'Orientasi Pengisian Kartu Rencana Studi (KRS) di SIAKAD bagi Mahasiswa Baru', '05 - 09 September 2016', 2),
(13, 'Pengurusan Permohonan Terminal/Cuti Studi Semester Ganjil', '05 - 09 September 2016', 2),
(14, 'Penyusunan Rencana Studi Semester Ganjil/Konsultasi dengan Dosen Penasehat (PA) Akademik Mahasiswa Baru', '12 - 16 September 2016', 2),
(15, 'Penyusunan Rencana Studi Semester Ganjil/Konsultasi dengan Dosen Penasehat (PA) Mahasiswa Lama', '05 - 09 September 2016', 2),
(16, 'Pembukaan Kuliah Umum Semester Ganjil', 'September', 2),
(17, 'Masa Perkuliahan Semester Ganjil', '19 September 2016 - 07 Januari 2017', 2),
(18, 'Wisuda Program Diploma, Sarjana dan Pascasarjana', 'Februari (Minggu ke-4)', 2),
(19, 'Ujian Tengah Semester Ganjil', '14 - 18 November 2016', 2),
(20, 'Pembayaran Biaya Pendidikan Tahap II', '09 - 12 Januari 2017', 2),
(21, 'Masa Tenang Perkuliahan Semester Ganjil', '16 - 21 Januari 2017', 2),
(22, 'Ujian Akhir Semester Ganjil', '23 - 27 Januari 2017', 2),
(23, 'Pengumpulan dan Entri Nilai Dosen ( Maksimal 7 Hari Setelah Ujian Mata Kuliah Masing- masing Dosen', '04 Februari 2017', 2),
(24, 'Batas Akhir Pengunguman Nilai Ujian dan Pengisian KHS oleh Fakultas', '13 - 18 Februari 2017', 2),
(25, 'Batas Akhir Keberhasilan Proses PBM Mahasiswa', '06 - 11 Februari 2017', 2),
(26, 'Pelaksanaan KKN/PPL Semester Ganjil', 'Februari - Maret 2017', 2),
(27, 'Ujian Skripsi Semester Ganjil (diatur tersendiri oleh fakultas masing-masing', '01 - 30 Januari 2017', 2),
(28, 'SK Yudisium Semester Ganjil (yudisium dilaksanakan tanpa upacara ceremonial', 'Februari 2017 (Minggu I)', 2),
(29, 'Hari Bermuhammadiyah', 'November', 3),
(30, 'Pekan Sunyi Semester Ganjil', '16 - 21 Januari 2017', 3),
(31, 'Baitul Arqam Karyawan Semester Ganjil', '16 -21 Januari 2017', 3),
(32, 'Pekan Sunyi Semester Genap', '03 - 08 Juli 2017', 3),
(33, 'Baitul Arqam Karyawan Semester Genap', '03 - 08 Juli 2017', 3),
(34, 'Dies Natalis (Upacara Bendera)', '30 Desember 2017', 3),
(35, 'Kegiatan Peringatan Dies Natalis', '02 - 06 Januari 2017', 3),
(36, 'Pelaporan PDPT 1 : Pengisian KRS Semester Ganjil', 'Oktober - November', 3),
(37, 'Pelaporan PDPT 1 : Pengisian KRS Semester Genap', 'April - Mei', 3),
(38, 'Pelaporan PDPT 2 : Pengisian Nilai Semester Ganjil', 'Maret', 3),
(39, 'Pelaporan PDPT 2 : Pengisian Nilai Semester Genap', 'September', 3),
(40, 'Pelaporan PDPT 3 : Kuliah Aktif  Semester Ganjil', 'September - Februari', 3),
(41, 'Pelaporan PDPT 3 : Kuliah Aktif Semester Genap', 'Maret - Agustus', 3),
(42, 'Rapat Senat terbuka  Semester Ganjil', 'Februari 2017 (Minggu I)', 3),
(43, 'Rapat Senat terbuka Semester Genap', 'Agustus 2017 (Minggu I)', 3),
(44, 'Rapat Kerja Universitas', 'September', 3),
(45, 'Upacara Hari Kemerdekaan RI', '17 Agustus 2017', 3),
(46, 'Upacara Hari Pendidikan', '02 Mei 2017', 3),
(47, 'Upacara Hari Milad UMB', '30 Desember 2017', 3);

-- --------------------------------------------------------

--
-- Table structure for table `riset`
--

CREATE TABLE IF NOT EXISTS `riset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peneliti` varchar(100) NOT NULL,
  `judul` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `riset`
--

INSERT INTO `riset` (`id`, `peneliti`, `judul`) VALUES
(1, 'La Ode jumadi G, Abidin Jafar, Hardiono, Sanjaya Hadi Kusuma', 'Hubungan Riwayat Kejang demam dengan tingkat perkembangan anak paska Hospitalisasi di Banjarmasin'),
(2, 'La ode Jumadi G, Supriadinata Hardiono, Sessar Prima Rivilla', 'Persepsi perawat tentang format dokumentasi Asuhan Keperawatan yang sesuai dengan standar di RSUD H.'),
(3, 'M.Syafwani, Supriadinata, Hardiono, Ayu Susianti', 'Studi Komparatif Kualitas hidup Penderita Kanker sebelum dan sesudah pengobatan kemoterapi di Ruang '),
(4, 'Hiryadi, Junaiti Sahar, Rr. Tutik Sri Haryati', 'Hubungan Karakteristik orang tua dan pola asuh keluarga dengan sikap asertif siswa SMA di Kota Banja'),
(5, 'Nurhikmah,Sukarlan, Umransyah Alie, Fauziah', 'Hubungan Pemasangan infus dengan kejadian plebitis ruang rawat inaf RSUD H. Moch. Ansari saleh Banja'),
(6, 'Muhsinin, Krisna Yetty, Besral', 'Faktor-faktor yang berkontribusi terhadap kejadian mual dan muntah pada anak yang menderita kanker s'),
(7, 'Soikin, Dewi irawati, Hening pujasari, Dedie Dahlia', 'Analisis faktor-faktor yang berhubungan dengan pelaksanaan mobilisasi dini pasien pasca bedah digest'),
(8, 'Jainuddin,Imanuddin, Rifqah ihdayati', 'Studi komparatif tentang kecerdasan emosional antara anak rumahan dan anak jalanan di sekitar wilaya'),
(9, 'Husnul Mahmud M, Arif Muttaqin, Nurhukmah', 'Pengaruh minuman energi terhadap Perubahan tekanan darah pada pekerja pengangkut kayu di kelurahan a'),
(10, 'Wahyu Junianda,M. Safwani, Syahriansah, Mahdalena', 'Hubungan dukungan sosial keluarga dengan tingkat kecemasan pasien hemodialisa di Unit hemodialisa RS'),
(11, 'Nika Farlina, Dwi Nidji Hastanti, Syamsul Firdaus', 'Hubungan antara hygiene dan sanitasi makanan di rumah tangga terhadap kejadian typhoid pada anak des'),
(12, 'Destiana Rahmi, M.Syafwani, Ulfah Hidayati', 'Pengaruh Penuluhan kesehatan reproduksi tentang menopause terhadap tingkat kecemasan wanita usia dew'),
(13, 'Saufi Apriadi, Muhsinin, Didy Ariadi', 'Hubungan anntara kepatuhan diet dan kebiasaan olahraga dengan kadar gula darah pada pasien diabetis '),
(14, 'Apriliani Normalasari, Yuliani Budiarti, Danung Sri Wulandari', 'Efektifitas pijat oksitosin terhadap kelancaran ASI ibu post partum Primipara di dua bidan Praktik S'),
(15, 'Solikin, Syamsul Firdaus, Muhani sita', 'Hubungan Teknik Aseptik dengan kejadian plebitis pada pemasangan infus oleh perawat di ruang rawat i'),
(16, '?Harton, Solikin, Arifin', 'Hubungan antara adekuasi (kecukupan ) hemodialisa dan sampah nitrogen darah dengan tingkat frekuensi'),
(17, 'Isnaniah,Wika Rispudyani, Didi Ariyadi', 'Hubungan pelaksanaan mobilisasi dini dan lama hari rawat pada pasien post operasi sectio caesaria an'),
(18, 'Noriyah, Zainal Arifin, Nurhikmah', 'Analisis faktor-faktor resiko kekambuhan penyakit jantung koroner di poliklinik RSUD Ulin Banjarmasi'),
(19, 'M.Abdi,Agoes Muhibbudin,Solikin, Arifin', 'Hubungan kepatuhan pembatasan diet dan cairan dengan kenaikan berat badan interdialis pada pasien ya'),
(20, 'Muhammad Aqashah, Arif muttaqin, Yeni Mulyan', 'Hubungan kadar hemaglobin dengan saturasi oksigen pada pasien tuberkolosis paru di ruang dahlia RSUD'),
(21, 'Musphyanti, Karyono, A. Suriansyah', 'Manajemen pembelajaran Klinik kebidanan pada mahasiswa diploma III Kebidanan Banjarmasin'),
(22, '?Dina Rafidiyah,Muhsinin', 'Analysis Of Faktor that afect success in learning english for undergraduate students majoring nursin'),
(23, 'Arief Muttain, Isnawati, Rosidah Hereaty', 'Hubungan Peran perawat sebagai konselor dengan tingkat kecemasan pasien gagal ginjal kronik di ruang'),
(24, 'Ahmad shobirin, M. Syafwani, Yuniarty', 'Hubungan pelaksanaan konseling kesehatan guru bimbingan konseling dengan kebiasaan merokok siswa di '),
(25, 'Norhalisa,Dewi Nurhanifah, Darmayanti', 'Pelaksanaan toilet training oleh keluarga (orang tua) terdap kejadian enuresis pada anak TK Tunas Mu'),
(26, 'M. Syafwani, Mahdalena, Ris Mohammad Abrar', 'Pengaruh pendidikan kesehatan terhadap pengaetahuan penambang batubara tentang penyakit HIV/AIDS di '),
(27, 'Mog. Khololi, Hiryadi, Aus Al Anhar', 'Pengaruh pemberian terapi bermain puzzle ball terhadap tindakan kooperatif anak usia toddler dalam m'),
(28, '?Huldani, Asnawi', 'Hipertensi mempengaruhi waktu reaksi pada pekerjaan PT. Basirih Industrial Banjarmasin'),
(29, 'Hastuti,Syarniah, Sukarlan', 'Hubungan antara burnout dengan mekanisme koping perawat ruang akut di RS Jiwa Sambang lihum Kalimant'),
(30, 'Esme Anggeriyane, M. Syafwani, Rita Kirana', 'Hubungan usia dan Paritas ibu dengan kejadian anak sindrom down di SLB B/C drama wanita persatuan Pr'),
(31, 'Radi Saputra, Subhan, Nurhikmah', 'Hubungan kebiasaan merokok dan menyikat gigi dengan kejadian karies pada pasien di Puskesmas pasir p'),
(32, 'Sari Puwati, Muhsinin, Hapisah', 'Kebiasaan konsumsi makanan kariogenik dengan kejadian karies gigi pada anak di SDN semangat dalam 3 '),
(33, 'Tika Prahesti, Muhsinin, Juanda', 'Motivasi kerja petugas kesehatan terhadap pelaksanaan manajemen terpadu balita sakit di puskesmas wi'),
(34, '?Ahmad Husairi', '?Argumen embriologi terhadap kewajiban anak berbakti pada ibu'),
(35, 'Jumratul Inayah, Dewi Nurhanifah, Rafidah', 'Hubungan Baby Spa dengan perkembangan motorik kasar bayi usia 3-6 bulan di RS Sehat Permata Bunda Ke'),
(36, 'Nursiah, M. Syafwani, Rita Kirana', 'Hubungan sek bebas dengan penggunaan narkotika, Psikotropika dan zat adiktif (NAFZA) dengan kejadian'),
(37, 'Akhmad Gazali, Hj. Sri Mulyani, Hj. Musphiyanti', 'Study diskriptif tentang pengetahuan dan sikap petugas panti terhadap gangguan tidur pada lansia di '),
(38, 'Arfinah Marliani, Dewi Nurhanifah, Darmayanti', 'Hubungan teknik pencucian botol susu dengan kejadian diare pada balita di ruang mutiara RSUD H. Dama'),
(39, 'Risda Yanti, Risya Mulyani, Siti Nasihah', 'Gambaran pengetahuan masyarakat tentang swamedikasi demam di daerahh Kertak Hanyar KM.8 Rt. 5 Rw. 2'),
(40, 'Miftahul jannah, Wika Rispudyani, Darmayanti', 'Hubungan penggunaan kontrasepsi hormunal dengan kejadian kanker payudara di RSUD Ulin Banjarmasin'),
(41, 'Rahmah,Muhsinin, Danung sri wulandari', 'Pengaruh permainan simbolik terhadap perkembangan bahasa Prasekolah di TK Annor Palundu'),
(42, 'Yuliani Budiarti, Sopia Yulianti, Hapisah', 'Pengaruh minuman rempah jahe asam dalam mengurangi dismenore primer pada siswi di MA Raudatusysyubba'),
(43, '?Huldani, Dona Marisa', '?Gambaran hasil uji fungsi paru pada pekerja bagian produksi ditinjau dari jenis kelamin'),
(44, 'Rena Rasyida, Musphiyanti', '?Persepsi ibu hamil tentang bahaya asap roko'),
(45, 'Yustan azidin, En dang Sri P Ningsih, Nurul Hidayah', 'Hubungan rata-rata kadar hemaglobin dengan kualitas hidup pada pasien penyakit ginjalkronis yang men'),
(46, 'Darmayanti, Rafidah, Erni yulistuti', '?Faktor penyebab kematian perinatal pada BBLR di RSUD Ulin Banjarmasin'),
(47, 'Ery Agustin, Dwi Nurhanifah, Darmayanti', 'Faktor-faktor yang mempengaruhi peningkatan kasus balita Bawah Garis Merah (BGM) diwilayah kerja pus'),
(48, '?Musphiyanti Ch', 'Study perbandingan IPK semester II dan IV antara mahasiswa asal SMA jurusan IPA, IPS dan SMK'),
(49, 'Hapisah,Rafidah, Darmayanti', 'Resiko terjadinya abortus spontan pada ibu hamil perokok pasif di Kota Banjarmasin'),
(50, 'Hapisah,Rafidah, Darmayanti', 'Reskio terjadinya abortus spontan pada ibu hamil perokok pasif di Kota Banjarmasin'),
(51, '?Hendera', 'Perbandingan tolerabilitas saluran cerna pengguna Na dilofenak dengan meloksikan pada pasien OA'),
(52, '?Huldani', 'Perbedaan hasil uji fungsi paru pada pekerja bagian produksi dan non produksi'),
(53, '?Muhsinin', 'Pengaruh pemberian rebusan air daun salam terhadap penurunan kadar asam urat pada penderita gout di '),
(54, 'Patur Rahman, Yustan azidin, Hapisah', 'Perbandingan kemampuan mengeluarkan udara dengan menggunakan media balon antara mahasiswa merokok de'),
(55, '?Risya Mulyani', 'Kepatuhan terapi berbasis insulin padda pasien diabetis meltus tipe 2 di poliklinik endokrinologi RS'),
(56, '?Herdiana, solikin, Rafi?i', 'Pengaruh aktivitas fisik terhadap kejadian penyakit jantung koroner (PJK) pasienn perokok di RSUD Ul'),
(57, '?Ahmad husairi', 'Struktum stratum longitudinal unica muscularisintestinum mencit setelah infestasi telur infektiftric'),
(58, '?Heryyannoor, muhsinin, rahmawati', 'Perbedaan efektifitas terapi musik dengan bibloterapi terhadap kecemasan anak saat terapi intra vena'),
(59, '?Izma Daud', 'Pengaruh terapi clapping dada untuk meringankan gajala ispa pada adak di puskesmas Jejangkit'),
(60, '?Lukman harun', 'Perbandingan jumlah limposit setelah latihan aerobik ringan dan sedang pada remaja'),
(61, 'Yulia Rahmi, Yuliani Budiarti, Nurhikmah', 'Hubungan status hidrasi dengan konsentrasi belajar pada remaja di SMA Negeri 1 sungai tabuk'),
(62, 'Hj. Ruslinawati, Shinta Prawitasari, WennyArtanya Nisman', 'Pengaruh konseling kontrasepsi terhadap pengetahuan dan penggunaan metode kontrasepsi efektif pada ibu post partum di RSUD Ulin Banjarmasin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `alamat`, `email`, `username`, `password`) VALUES
(1, 'asdfasd', 'asdfasdfa', 'asdfasdf', 'admin', '21232f297a57a5a743894a0e4a801fc3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
