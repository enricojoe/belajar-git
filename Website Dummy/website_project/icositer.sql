-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 03:43 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(3) DEFAULT NULL,
  `kodemk` varchar(5) DEFAULT NULL,
  `thnakademik` char(9) DEFAULT NULL,
  `nilai` char(1) DEFAULT NULL,
  `bobot` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `kodemk`, `thnakademik`, `nilai`, `bobot`) VALUES
('123', 'SMBD2', '2013/2014', 'C', 4),
('123', 'SMBD2', '2014/2015', 'A', 4),
('123', 'SIBW', '2014/2015', 'A', 4),
('123', 'DMEP', '2014/2015', 'B', 2),
('456', 'DMEP', '2014/2015', 'A', 2),
('456', 'SIBW', '2011/2012', 'C', 4),
('456', 'SIBW', '2012/2013', 'C', 4),
('456', 'SIBW', '2014/2015', 'A', 4),
('789', 'SMBD2', '2011/2012', 'D', 4),
('789', 'SMBD2', '2012/2013', 'C', 4),
('789', 'SMBD2', '2013/2014', 'C', 4),
('789', 'SMBD2', '2014/2015', 'A', 4);
--
-- Database: `aksesoris`
--
CREATE DATABASE IF NOT EXISTS `aksesoris` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aksesoris`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_app`
--

CREATE TABLE `tb_app` (
  `id` int(11) NOT NULL,
  `app_param` varchar(50) NOT NULL,
  `app_value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_app`
--

INSERT INTO `tb_app` (`id`, `app_param`, `app_value`) VALUES
(1, 'company_name', 'Toko Aksesoris'),
(2, 'company_address', 'Jalan Bahagia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksi`
--

CREATE TABLE `tb_detail_transaksi` (
  `id` int(11) NOT NULL,
  `no_faktur` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_transaksi`
--

INSERT INTO `tb_detail_transaksi` (`id`, `no_faktur`, `id_produk`, `quantity`, `subtotal`) VALUES
(11, 1, 6, 1, 2500),
(12, 2, 8, 20, 60000),
(13, 3, 6, 1, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`) VALUES
(6, 'ACC-001', 'Gelang Karet', 2500),
(7, 'ACC-002', 'Batu Satam Toboali', 100000),
(8, 'ACC-003', 'Sticker Motor PG-AA', 3000),
(9, 'ACC-004', 'Gantungan Kunci ', 5000),
(11, 'ACC-006', 'Korek Api Cricket', 7000),
(12, 'ACC-007', 'Solasi Berwarna', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok`
--

CREATE TABLE `tb_stok` (
  `id_stok` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_stok`
--

INSERT INTO `tb_stok` (`id_stok`, `id_produk`, `jumlah_stok`) VALUES
(1, 6, 93),
(2, 7, 9),
(3, 8, 8),
(4, 9, 49),
(6, 11, 20),
(7, 12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `no_faktur` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bayar` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`no_faktur`, `tanggal`, `bayar`, `total`) VALUES
(1, '2016-07-31', 5000, 2500),
(2, '2016-07-31', 70000, 60000),
(3, '2016-07-31', 5000, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'YWRtaW4=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_app`
--
ALTER TABLE `tb_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_app`
--
ALTER TABLE `tb_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `no_faktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `bank_mino`
--
CREATE DATABASE IF NOT EXISTS `bank_mino` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bank_mino`;

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id_Nasabah` int(5) NOT NULL,
  `no_rekening` int(11) DEFAULT NULL,
  `Nama_Nasabah` char(20) DEFAULT NULL,
  `Alamat` char(30) DEFAULT NULL,
  `No_Telepon` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id_Nasabah`, `no_rekening`, `Nama_Nasabah`, `Alamat`, `No_Telepon`) VALUES
(1, 145678, 'Puspa Sari', 'Sei Batang Kuis', '081376809122'),
(2, 256132, 'Sinta Jojo', 'Iskandar Muda', '089987654311'),
(3, 247182, 'Bunga Putri', 'Jalan Martapura', '081249987011'),
(4, 350067, 'Grace Sebayang', 'Gang Keluarga', '085276812453'),
(5, 114115, 'Christine Talia', 'Sei Kambah', '082266778866'),
(6, 100111, 'Rimayka Natalia', 'Perumahan Puri K', '081234567890'),
(7, 248671, 'Intra Indra', 'Kerbang Tinggi I', '081366909212'),
(8, 356538, 'Talia Talio', 'Jalan Jatisari', '089947354211'),
(9, 144161, 'Putri Natalia', 'Sumber Sari', '082149978021');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `no_rekening` int(11) NOT NULL,
  `kode_cabang` char(20) DEFAULT NULL,
  `pin` char(15) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`no_rekening`, `kode_cabang`, `pin`, `saldo`) VALUES
(100111, 'KKM69', '213671', 998500),
(114115, 'SGS01', '203010', 500000),
(120023, 'JGJ01', '837242', 500000),
(120087, 'JGJ02', '112233', 2150000),
(140932, 'JGJ02', '024422', 1200000),
(144161, 'MDN74', '230499', 1000000),
(145678, 'SGS02', '908723', 1000000),
(220983, 'SMG12', '450817', 5422000),
(247182, 'JKT48', '091298', 4000000),
(248671, 'GSG52', '007010', 5000000),
(256132, 'KKM70', '340987', 230000),
(332102, 'JKT48', '228883', 400500),
(350067, 'RGS02', '230987', 5500000),
(356538, 'KMK07', '998070', 600000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(5) NOT NULL,
  `no_rekening` int(11) DEFAULT NULL,
  `jenis_transaksi` char(20) DEFAULT NULL,
  `tgl_transaksi` char(30) DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `no_rekening`, `jenis_transaksi`, `tgl_transaksi`, `jumlah`) VALUES
(1, 220983, 'DEBET', '2014-06-12 12:00:45', 500000),
(2, 220983, 'DEBET', '2014-06-13 08:20:33', 2150000),
(3, 140932, 'ATM', '2014-06-14 10:56:52', 100000),
(4, 140932, 'ATM', '2014-06-14 15:16:23', 100000),
(5, 120087, 'DEBET', '2014-06-15 15:03:33', 1250000),
(6, 220983, 'ATM', '2014-06-15 15:32:15', 150000),
(7, 220983, 'ATM', '2014-06-15 15:40:13', 100000),
(8, 220983, 'DEBET', '2014-06-16 08:23:23', 2500000),
(11, 100111, 'ATM', '2017-06-09 08:00:45', 100000),
(12, 114115, 'ATM', '2017-06-09 11:10:12', 200000),
(13, 114115, 'DEBET', '2017-06-09 13:00:30', 50000),
(14, 256132, 'DEBET', '2017-06-15 11:20:00', 150000),
(15, 145678, 'ATM', '2017-06-18 23:11:22', 250000),
(16, 145678, 'DEBET', '2017-06-18 15:30:08', 300000),
(17, 350067, 'ATM', '2017-06-18 10:02:45', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id_Nasabah`),
  ADD KEY `no_rekening` (`no_rekening`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`no_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `no_rekening` (`no_rekening`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD CONSTRAINT `nasabah_ibfk_1` FOREIGN KEY (`no_rekening`) REFERENCES `rekening` (`no_rekening`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`no_rekening`) REFERENCES `rekening` (`no_rekening`);
--
-- Database: `basdat`
--
CREATE DATABASE IF NOT EXISTS `basdat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `basdat`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add pembeli', 7, 'add_pembeli'),
(26, 'Can change pembeli', 7, 'change_pembeli'),
(27, 'Can delete pembeli', 7, 'delete_pembeli'),
(28, 'Can view pembeli', 7, 'view_pembeli'),
(29, 'Can add pembayaran', 8, 'add_pembayaran'),
(30, 'Can change pembayaran', 8, 'change_pembayaran'),
(31, 'Can delete pembayaran', 8, 'delete_pembayaran'),
(32, 'Can view pembayaran', 8, 'view_pembayaran'),
(33, 'Can add validator', 9, 'add_validator'),
(34, 'Can change validator', 9, 'change_validator'),
(35, 'Can delete validator', 9, 'delete_validator'),
(36, 'Can view validator', 9, 'view_validator'),
(37, 'Can add website', 10, 'add_website'),
(38, 'Can change website', 10, 'change_website'),
(39, 'Can delete website', 10, 'delete_website'),
(40, 'Can view website', 10, 'view_website');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$hEGGYgWdwvBkZ7cfQQhewK$JtU89bhiT0ptwFDacZhOgzR9+FCh1RWpvLw2Vjya5vU=', '2021-05-11 05:42:39.629742', 1, 'Hafizh', '', '', 'hafizh21@gmail.com', 1, 1, '2021-05-11 05:16:39.405736');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-11 05:53:44.745741', '1', 'Pembeli', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-05-11 05:55:03.837831', '2', '238521', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'pembayaran', 'pembayaran'),
(7, 'pembeli', 'pembeli'),
(6, 'sessions', 'session'),
(9, 'validator', 'validator'),
(10, 'website', 'website');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-11 05:14:21.715268'),
(2, 'auth', '0001_initial', '2021-05-11 05:14:30.475165'),
(3, 'admin', '0001_initial', '2021-05-11 05:14:32.519986'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-11 05:14:32.591980'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-11 05:14:32.670126'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-11 05:14:33.932754'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-11 05:14:35.092271'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-11 05:14:35.225198'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-11 05:14:35.305193'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-11 05:14:35.901875'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-11 05:14:35.941847'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-11 05:14:36.013867'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-11 05:14:36.154139'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-11 05:14:36.286449'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-11 05:14:36.428478'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-11 05:14:36.508669'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-11 05:14:36.644663'),
(18, 'sessions', '0001_initial', '2021-05-11 05:14:37.108497'),
(19, 'pembayaran', '0001_initial', '2021-05-11 05:40:45.571650'),
(20, 'pembeli', '0001_initial', '2021-05-11 05:40:45.950357'),
(21, 'validator', '0001_initial', '2021-05-11 05:40:46.243512'),
(22, 'website', '0001_initial', '2021-05-11 05:40:46.529368');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('w7lctq52tcbnjr5snanus4vfq4l7rx23', '.eJxVjDsOwyAQBe9CHSFYPl5SpvcZELA4OIlAMnYV5e6xJRdJ-2bmvZkP21r81vPiZ2JXJtnld4shPXM9AD1CvTeeWl2XOfJD4SftfGyUX7fT_TsooZe9tmFSFmWkASK5QWsjtAOLLgqRMJIEIyebETUCGCXJINisEoLYCy3Z5wu6ezZY:1lgLAF:rnq1heP7hwUrbpqvcZ_Fn5Thwc-g9GPnc8VU-IUAgmM', '2021-05-25 05:42:39.670263');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_pembayaran`
--

CREATE TABLE `pembayaran_pembayaran` (
  `id` bigint(20) NOT NULL,
  `id_pembeli` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `virtual_code` longtext NOT NULL,
  `jenis_pembayaran` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli_pembeli`
--

CREATE TABLE `pembeli_pembeli` (
  `id` bigint(20) NOT NULL,
  `id_pembeli` varchar(255) NOT NULL,
  `akun` longtext NOT NULL,
  `no_telepon` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli_pembeli`
--

INSERT INTO `pembeli_pembeli` (`id`, `id_pembeli`, `akun`, `no_telepon`) VALUES
(1, '23051', 'Begal', '0823412321'),
(2, '238521', 'Crashh', '082312313');

-- --------------------------------------------------------

--
-- Table structure for table `validator_validator`
--

CREATE TABLE `validator_validator` (
  `id` bigint(20) NOT NULL,
  `id_pegawai` varchar(255) NOT NULL,
  `virtual_code` longtext NOT NULL,
  `nama_website` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `website_website`
--

CREATE TABLE `website_website` (
  `id` bigint(20) NOT NULL,
  `id_pembeli` varchar(255) NOT NULL,
  `virtual_code` longtext NOT NULL,
  `nama_website` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pembayaran_pembayaran`
--
ALTER TABLE `pembayaran_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembeli_pembeli`
--
ALTER TABLE `pembeli_pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validator_validator`
--
ALTER TABLE `validator_validator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_website`
--
ALTER TABLE `website_website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pembayaran_pembayaran`
--
ALTER TABLE `pembayaran_pembayaran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembeli_pembeli`
--
ALTER TABLE `pembeli_pembeli`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `validator_validator`
--
ALTER TABLE `validator_validator`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_website`
--
ALTER TABLE `website_website`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `jk` char(1) NOT NULL,
  `status` char(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama`, `alamat`, `email`, `agama`, `jk`, `status`, `created_date`, `modified_date`) VALUES
(2, 'Alex', 'Lampung', 'aaaa@gmail.com', 'Kristen', 'L', 'A', '2015-12-26 21:35:28', NULL),
(3, 'Dewi', 'Bekasi', 'ddd@gmail.com', 'Katolik', 'P', 'T', '2015-12-26 21:35:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `db_antrian`
--
CREATE DATABASE IF NOT EXISTS `db_antrian` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_antrian`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `gambar` varchar(255) NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) NOT NULL DEFAULT 'sb_admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `status`, `gambar`, `theme`) VALUES
(2, 'admin@admin.com', 'admin', 'admin', 1, 'default.png', 'sb_admin');

-- --------------------------------------------------------

--
-- Table structure for table `antrian`
--

CREATE TABLE `antrian` (
  `id_antrian` int(4) NOT NULL,
  `tgl_antrian` date NOT NULL,
  `no_antrian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian`
--

INSERT INTO `antrian` (`id_antrian`, `tgl_antrian`, `no_antrian`) VALUES
(1, '2019-07-31', '1'),
(2, '2019-07-31', '2'),
(3, '2019-07-31', '3'),
(4, '2019-07-31', '4'),
(5, '2019-07-31', '5'),
(6, '2019-07-31', '6'),
(7, '2019-07-31', '7'),
(8, '2019-07-31', '8'),
(9, '2019-08-01', '1'),
(10, '2019-08-01', '2'),
(11, '2019-08-07', '1'),
(12, '2019-08-07', '2'),
(13, '2019-08-07', '3'),
(14, '2019-08-07', '4'),
(15, '2019-08-07', '5'),
(16, '2021-05-14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_poli`
--

CREATE TABLE `antrian_poli` (
  `id_antrian_poli` int(4) NOT NULL,
  `id_antrian` int(4) NOT NULL,
  `id_pasien` int(4) NOT NULL,
  `id_poli` int(2) NOT NULL,
  `no_antrian_poli` varchar(10) NOT NULL,
  `tgl_antrian_poli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian_poli`
--

INSERT INTO `antrian_poli` (`id_antrian_poli`, `id_antrian`, `id_pasien`, `id_poli`, `no_antrian_poli`, `tgl_antrian_poli`) VALUES
(1, 0, 1, 2, '1', '2019-07-17'),
(2, 0, 1, 2, '2', '2019-07-17'),
(3, 0, 1, 2, '3', '2019-07-17'),
(4, 0, 1, 4, '1', '2019-07-17'),
(5, 0, 1, 3, '1', '2019-07-17'),
(6, 0, 1, 3, '30', '2019-07-17'),
(8, 0, 1, 4, '2', '2019-07-17'),
(9, 0, 1, 2, '1', '2019-07-18'),
(10, 0, 2, 2, '30', '2019-07-18'),
(11, 0, 6, 3, '1', '2019-07-30'),
(12, 0, 1, 1, '1', '2019-07-31'),
(13, 0, 1, 1, '2', '2019-07-31'),
(14, 0, 1, 2, '1', '2019-07-31'),
(15, 0, 1, 3, '1', '2019-07-31'),
(16, 0, 1, 3, '2', '2019-07-31'),
(17, 0, 1, 3, '3', '2019-07-31'),
(18, 0, 14, 1, '3', '2019-07-31'),
(19, 0, 14, 1, '4', '2019-07-31'),
(20, 0, 14, 1, '5', '2019-07-31'),
(21, 0, 14, 2, '2', '2019-07-31'),
(22, 0, 14, 4, '1', '2019-07-31'),
(23, 0, 14, 4, '2', '2019-07-31'),
(24, 0, 14, 2, '1', '2019-08-01'),
(25, 0, 14, 3, '1', '2019-08-01'),
(26, 0, 14, 1, '1', '2019-08-07'),
(27, 0, 14, 2, '1', '2019-08-07'),
(28, 0, 14, 1, '2', '2019-08-07'),
(29, 0, 14, 1, '3', '2019-08-07'),
(30, 0, 14, 4, '1', '2019-08-07'),
(31, 0, 15, 1, '1', '2021-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_poli`
--

CREATE TABLE `kategori_poli` (
  `id_poli` int(2) NOT NULL,
  `kode_poli` varchar(5) NOT NULL,
  `nama_poli` varchar(100) NOT NULL,
  `jumlah_maksimal` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_poli`
--

INSERT INTO `kategori_poli` (`id_poli`, `kode_poli`, `nama_poli`, `jumlah_maksimal`) VALUES
(1, 'PLUM', 'Poli Umum', '30'),
(2, 'PLGG', 'Poli Gigi', '30'),
(3, 'PLIM', 'Poli Imunisasi', '30'),
(4, 'PLTB', 'Poli Tuberculosis', '30');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(4) NOT NULL,
  `no_identitas` varchar(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `no_identitas`, `nama`, `jenis_kelamin`, `tgl_lahir`, `alamat`, `no_telp`, `username`, `password`) VALUES
(1, '123456789', 'evi', 'Perempuan', '2019-07-16', '<p>\n	pomad</p>\n', '082199252530', '', ''),
(3, 'wq', 'qwqw', 'Perempuan', '2019-07-17', '<p>\n	sadas</p>\n', 'q', 'q', '7694f4a66316e53c8cdd9d9954bd611d'),
(4, '34567891234567', 'rafly', 'Laki-Laki', '1998-04-03', 'Jl. Merdeka', '08587654323', 'raff', '123'),
(5, '988553322771', 'dwi', 'Laki-Laki', '1999-03-22', 'Jl Bunga', '09584433221', 'dwi22', '12345'),
(6, '3479272653563', 'Aisyah', 'Perempuan', '2001-06-11', 'Jl. Manis', '0838222445', 'ais', '2000'),
(7, '345678564567', 'Simon', 'Laki-Laki', '1997-02-06', 'Jl. Mawar', '081319898213', 'sim', 'dia'),
(8, '998877665544', 'Putri', 'Perempuan', '2000-08-27', 'Jl. Merpati', '081994321522', 'putput', '2000'),
(9, '4523467867845', 'Vio', 'Perempuan', '2003-09-02', 'Jl Kuningan', '08225488006', 'vio', 'a591024321c5e2bdbd23ed35f0574dde'),
(10, '3425261782753', 'Josua', 'Laki-Laki', '1995-11-02', 'Jl. Setia', '081316552245', 'jo', '3f088ebeda03513be71d34d214291986'),
(11, '12536383920282', 'silva', 'Perempuan', '1998-01-04', 'Jl. Anggur', '0943527252461', 'silva98', '202cb962ac59075b964b07152d234b70'),
(12, '1224564324', 'vi', 'Laki-Laki', '1998-03-05', 'Jl.merdeka', '082199252530', 'vi98', '202cb962ac59075b964b07152d234b70'),
(13, '34567891234567', 'rafly', '', '2019-07-12', '', '', 'raff', 'ed474ee8e3b2f7c00e406d57c76c9638'),
(14, '34567891234567', 'meli', 'Perempuan', '1997-08-04', 'jl.merpati', '09584433221', 'meli', '202cb962ac59075b964b07152d234b70'),
(15, '23151524534635', 'Hafizh Londata', 'Laki-Laki', '1993-05-20', 'lampung', '085523817232', 'hafizh', 'b1294e9c9fb69bf104b5c253aafb3cff');

-- --------------------------------------------------------

--
-- Table structure for table `tjm_menu`
--

CREATE TABLE `tjm_menu` (
  `id` int(11) NOT NULL,
  `parent_menu` int(11) NOT NULL DEFAULT 1,
  `nama_menu` varchar(50) NOT NULL,
  `url_menu` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` tinyint(3) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin') NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjm_menu`
--

INSERT INTO `tjm_menu` (`id`, `parent_menu`, `nama_menu`, `url_menu`, `icon`, `urutan`, `status`, `type`) VALUES
(1, 1, 'root', '/', '', 0, 0, 'Admin'),
(2, 1, 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', 1, 1, 'Admin'),
(3, 1, 'User Admin', 'admin/useradmin', 'fa fa-users', 99, 0, 'Admin'),
(4, 1, 'Menu', 'admin/menu', 'fa fa-gear', 100, 1, 'Admin'),
(25, 1, 'Master', 'admin/master', 'fa fa-ticket', 2, 0, 'Admin'),
(31, 1, 'Data Pasien', 'admin/pasien', 'glyphicon glyphicon-user', 2, 1, 'Admin'),
(32, 1, 'Poli', 'admin/poli', 'glyphicon glyphicon-list-alt', 3, 1, 'Admin'),
(33, 1, 'Antrian Poli', 'admin/antrian_poli', 'glyphicon glyphicon-list', 4, 1, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id_antrian`);

--
-- Indexes for table `antrian_poli`
--
ALTER TABLE `antrian_poli`
  ADD PRIMARY KEY (`id_antrian_poli`);

--
-- Indexes for table `kategori_poli`
--
ALTER TABLE `kategori_poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id_antrian` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `antrian_poli`
--
ALTER TABLE `antrian_poli`
  MODIFY `id_antrian_poli` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `kategori_poli`
--
ALTER TABLE `kategori_poli`
  MODIFY `id_poli` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Database: `django.db`
--
CREATE DATABASE IF NOT EXISTS `django.db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `django.db`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id_account` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounttransactions`
--

CREATE TABLE `accounttransactions` (
  `id_account` int(11) NOT NULL,
  `date_time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `accounttransactions`
--
ALTER TABLE `accounttransactions`
  ADD KEY `id_account` (`id_account`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`);

--
-- Constraints for table `accounttransactions`
--
ALTER TABLE `accounttransactions`
  ADD CONSTRAINT `accounttransactions_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id_account`);
--
-- Database: `gameina`
--
CREATE DATABASE IF NOT EXISTS `gameina` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gameina`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(64) NOT NULL,
  `nama_admin` varchar(64) NOT NULL,
  `email_admin` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email_admin`, `password`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$10$e8aQ6j6wg/lh8/Y71sVo6ukh7nF/YYLY.SPUAtEvncoq1fEzVhtFS');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(64) NOT NULL,
  `nama_game` varchar(64) NOT NULL,
  `id_publisher` int(64) NOT NULL,
  `nama_publisher` varchar(64) NOT NULL,
  `deskripsi_produk` varchar(255) NOT NULL,
  `kategori` varchar(16) NOT NULL,
  `harga` varchar(64) NOT NULL,
  `gambar_game` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `nama_game`, `id_publisher`, `nama_publisher`, `deskripsi_produk`, `kategori`, `harga`, `gambar_game`) VALUES
(12, 'Mobile Legend', 25, 'Syauqi Zaidan', 'LOL', 'Multiplayer', '222222', 'giphy.gif'),
(13, 'Mobile Legend', 25, 'Syauqi Zaidan', 'LOL', 'Battle Royale', '121221', 'giphy1.gif'),
(14, 'ketupat lontong', 25, 'Syauqi Zaidan', 'potong ketupat lontong', 'Action', '20000', 'logo_itera.png');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(64) NOT NULL,
  `id_game` int(64) NOT NULL,
  `harga` varchar(64) NOT NULL,
  `jumlah` varchar(64) NOT NULL,
  `tanggal` varchar(64) NOT NULL,
  `id_user` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(255) NOT NULL,
  `id` int(64) NOT NULL,
  `id_game` int(64) NOT NULL,
  `jumlah_pembayaran` varchar(64) NOT NULL,
  `nama_user` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id`, `id_game`, `jumlah_pembayaran`, `nama_user`) VALUES
(1113, 70, 123, '123', '123'),
(1114, 70, 10, '100.000', 'Syauqi Zaidan Khairan Khalaf'),
(1115, 70, 10, '100.000', 'Syauqi Zaidan Khairan Khalaf'),
(1116, 70, 10, '100.000', 'Syauqi Zaidan Khairan Khalaf'),
(1117, 70, 10, '100.000', 'Syauqi Zaidan Khairan Khalaf'),
(1118, 70, 10, '100.000', 'Syauqi Zaidan Khairan Khalaf'),
(1119, 70, 10, '100.000', 'Syauqi Zaidan Khairan Khalaf'),
(1120, 70, 10, '100.000', 'Syauqi Zaidan Khairan Khalaf');

-- --------------------------------------------------------

--
-- Table structure for table `playgames`
--

CREATE TABLE `playgames` (
  `id_game` int(11) NOT NULL,
  `nama_game` varchar(255) NOT NULL,
  `gambar_game` varchar(255) NOT NULL,
  `deskripsi_game` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `link_game` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playgames`
--

INSERT INTO `playgames` (`id_game`, `nama_game`, `gambar_game`, `deskripsi_game`, `kategori`, `link_game`) VALUES
(1, 'Cube Ninja', 'cnn1.jpg', 'Game tentang ninja laki lakis', 'arcade', 'ninja.html'),
(2, 'Birdy Rush', 'birdy_rush.png', 'Game tentang burung', 'arcade', 'bird.html'),
(3, 'Olympic Rio', 'olympic.jpg', 'Permainan Sport Terseru dan populer telah hadir!', 'populer', 'olympic.html'),
(4, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'populer', 'cut_the_rope.html'),
(5, 'Turbo Racing', 'turbo_racing.jpg', 'Permainan Balapan Menegangkan ! seru dan menarik!', 'populer', 'turbo_racing.html'),
(6, '8 Ball Pool', 'ball_pool.jpg', 'Mainkan game billiar terpopuler di sini ! mainkan gratis!', 'populer', 'ball_pool.html'),
(7, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'populer', 'red_code.html'),
(8, 'Monkey Kick', 'monkey_kick.jpg', 'Tendang MONYET yang lucu dan pikakeheulen jiga kamu :)', 'populer', 'monkey_kick.html'),
(9, 'Bloxorz', 'bloxorz.png', 'Mystery box oriented game yang bikin kamu pusing dan menantang!', 'populer', 'bloxorz.html'),
(10, 'Basketball', 'basket.jpg', 'Mainkan olahraga basket dengan mudah disini!', 'populer', 'basket.html'),
(11, 'Free Falling', 'free_falling.jpg', 'Rasakan sensasi parkour yang seru dan menegangkan disini!', 'populer', 'free_falling.html'),
(12, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'populer', 'thunderbirds.html'),
(13, 'Battle Golf', 'battle_golf.jpg', 'Mainkan game golf bersama temanmu sekarang!', 'populer', 'battle_golf.html'),
(14, 'Cartapult', 'cartapult.jpg', 'Tabrakan dan ledakan mobil sekitarmu hahahahhaha!', 'populer', 'cartapult.html'),
(16, 'Zombiester', 'zombie_buster.png', 'Kalahkan para zombie dan bertahan hidup agar kamu selamat!', 'fps', 'zombie.html'),
(17, 'Tank Wars', 'tank_wars.jpg', 'Kalahkan tank lain , kuasai mereka dan menangkan pertandingan!', 'fps', 'tankwars.html'),
(18, 'Combatdier', 'soldiers-combat.jpg', 'Kalahkan musuh dan bertahan hidup untuk menang!', 'fps', 'combat.html'),
(19, 'Jelly Jump', 'jelly_jump.jpg', 'Loncat loncat fucekkkk', 'fps', 'jelly.html'),
(20, 'Throatgery', 'throat_surgery.jpg', 'Mainkan simulasi operasi gigi sekarang!', 'arcade', 'surgery.html'),
(21, 'BoxKid', 'box_kid.jpg', 'Mainkan game keren puzzle dan mengasah otak!', 'arcade', 'box.html'),
(22, 'Turbo Racing', 'turbo_racing.jpg', 'Permainan Balapan Menegangkan ! seru dan menarik!', 'balapan', 'turbo_racing.html'),
(23, 'BoxKid', 'box_kid.jpg', 'Mainkan game keren puzzle dan mengasah otak!', 'misteri', 'box.html'),
(24, 'Throatgery', 'throat_surgery.jpg', 'Mainkan simulasi operasi gigi sekarang!', 'edukasi', 'surgery.html'),
(25, 'Olympic Rio', 'olympic.jpg', 'Permainan Sport Terseru dan populer telah hadir!', 'olahraga', 'olympic.html'),
(26, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'petualangan', 'thunderbirds.html'),
(27, 'Free Falling', 'free_falling.jpg', 'Rasakan sensasi parkour yang seru dan menegangkan disini!', 'Aksi', 'free_falling.html'),
(28, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'aksi', 'thunderbirds.html'),
(29, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'aksi', 'red_code.html'),
(30, 'Monkey Kick', 'monkey_kick.jpg', 'Tendang MONYET yang lucu dan pikakeheulen jiga kamu :)', 'aksi', 'monkey_kick.html'),
(31, 'Firewatergirl', 'fireboy.jpg', 'Mainkan game bersama temanmu! selesaikan level bersama sama!', 'multiplayer', 'fire boys.html'),
(32, 'Cartapult', 'cartapult.jpg', 'Tabrakan dan ledakan mobil sekitarmu hahahahhaha!', 'balapan', 'cartapult.html'),
(33, 'Birdy Rush', 'birdy_rush.png', 'Game tentang burung', 'balapan', 'bird.html'),
(34, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'balapan', 'thunderbirds.html'),
(35, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'misteri', 'cut_the_rope.html'),
(36, 'Bloxorz', 'bloxorz.png', 'Mystery box oriented game yang bikin kamu pusing dan menantang!', 'misteri', 'bloxorz.html'),
(37, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'misteri', 'red_code.html'),
(38, 'Free Falling', 'free_falling.jpg', 'Rasakan sensasi parkour yang seru dan menegangkan disini!', 'olahraga', 'free_falling.html'),
(39, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'olahraga', 'thunderbirds.html'),
(41, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'petualangan', 'cut_the_rope.html'),
(42, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'petualangan', 'red_code.html'),
(43, 'Monkey Kick', 'monkey_kick.jpg', 'Tendang MONYET yang lucu dan pikakeheulen jiga kamu :)', 'petualangan', 'monkey_kick.html'),
(44, '8 Ball Pool', 'ball_pool.jpg', 'Mainkan game billiar terpopuler di sini ! mainkan gratis!', 'multiplayer', 'ball_pool.html'),
(45, 'Battle Golf', 'battle_golf.jpg', 'Mainkan game golf bersama temanmu sekarang!', 'multiplayer', 'battle_golf.html'),
(46, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'multiplayer', 'cut_the_rope.html'),
(47, 'Bloxorz', 'bloxorz.png', 'Mystery box oriented game yang bikin kamu pusing dan menantang!', 'edukasi', 'bloxorz.html'),
(48, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'edukasi', 'cut_the_rope.html'),
(49, 'Basketball', 'basket.jpg', 'Mainkan olahraga basket dengan mudah disini!', 'olahraga', 'basket.html'),
(50, 'Olympic Rio', 'olympic.jpg', 'Permainan Sport Terseru dan populer telah hadir!', 'edukasi', 'olympic.html'),
(54, 'Final Fantasy', 'k4n5pyovt5c41.jpg', '', 'Action', ''),
(56, 'dreadout1', 'Picture1.png', '', 'Action', '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id_publisher` int(64) NOT NULL,
  `nama_publisher` varchar(64) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `email_publisher` varchar(64) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` varchar(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id_publisher`, `nama_publisher`, `nama_perusahaan`, `email_publisher`, `image`, `password`, `is_active`, `date_created`) VALUES
(25, 'Syauqi Zaidan', 'Desienfy', 'syaufykhairan@gmail.com', 'k4n5pyovt5c41.jpg', '$2y$10$usZznYoh9n4i89ySFivE6elyY03RH/Zm9U.EC/Q.2qHwjA9VwcEvO', '1', 1583756973),
(30, 'Maantan', 'MaantanCorp', 'maantan@gmail.com', 'default.jpg', '$2y$10$7FO.XWhJ1PBpeLUGZ.lFWuk3XvhetC90PBOQRte7m6aN1OUlfaxcy', '1', 1592549207);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(64) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `image` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `inacash` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `is_active`, `date_created`, `inacash`) VALUES
(70, 'Syauqi Zaidan Khairan Khalaf', 'zaidanline67@gmail.com', 'pp.jfif', '$2y$10$fv3F2TtNn/7oi1/6i2CQkuC8CaNaSliRNfkhCKTBX5ZhX0zp1H5M.', 1, 1583582357, 200000),
(82, 'Nurul Annisa', 'anissa30403@gmail.com', 'default.jpg', '$2y$10$iTE5h.PUrc7Cnc.O.4oAFO08u8M3doA1QXtoFcdLkKXMNcI1bla2.', 1, 1583975818, 0),
(83, 'Ditta Audia Roza', 'audiadiit@gmail.com', 'default.jpg', '$2y$10$WaGebURGdE6l1cNzO/3SguARI3lVMktWsMpKhvrRPrvjFagSEJXK6', 1, 1583978764, 0),
(85, 'Askal Drajat Fachrezi', 'askaldrajat@gmail.com', 'default.jpg', '$2y$10$hGskZSQQOfs2ZC4SmjtWNuvFu2sIhErh/40yI93MTvX9UrJ1khek6', 1, 1583979637, 0),
(88, 'Syauqi Zaidan Khairan Khalaf', 'syaaufy@gmail.com', 'default.jpg', '$2y$10$8RSmU944nBT6coUtfspRl.6UzbzmejRhiuitcCUsjZQVFaGaF9MtK', 1, 1592548950, 0),
(89, 'Dummy', 'Dummy@gmail.com', 'default.jpg', '$2y$10$gsjeehNm3yfEd.UwaWmr0ehdFtgucO4k7g5t3iUgVVG2GnG23gL1C', 1, 1592549022, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(55, 'annisa30403@gmail.com', 'M84IrsJ2B03Ddg0aCRIbfluXXm99bv33tlBTzEVpE0I=', 1583975411),
(59, 'dinamarsela17@gmail.com', 'wH1DOZ8hymnp2CCiSBUFILri4I+AsaCtPlRXmwWwcqA=', 1583979496),
(63, 'syaaufy@gmail.com', 'WEohsMGvSSoQFwLCm4lT923mQNi4SqrxkjwaUDzVLmU=', 1592548950),
(64, 'Dummy@gmail.com', 'oY3JdrQ2ZFJw2G9PHCdjueWdSIuKmk+EPbjAH25SkGA=', 1592549022),
(65, 'maantan@gmail.com', 'sAA7OTqO8+6KMeG6O6xjReIoAld3mCuoZDM/T3z3uM8=', 1592549207);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`,`id_publisher`),
  ADD KEY `id_publisher` (`id_publisher`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`,`id_game`,`id_user`),
  ADD KEY `id_game` (`id_game`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`,`id`,`id_game`),
  ADD KEY `id_user` (`id`),
  ADD KEY `id_game` (`id_game`);

--
-- Indexes for table `playgames`
--
ALTER TABLE `playgames`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id_publisher`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(64) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1121;

--
-- AUTO_INCREMENT for table `playgames`
--
ALTER TABLE `playgames`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id_publisher` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- Database: `icositer`
--
CREATE DATABASE IF NOT EXISTS `icositer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `icositer`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add kti', 7, 'add_kti'),
(26, 'Can change kti', 7, 'change_kti'),
(27, 'Can delete kti', 7, 'delete_kti'),
(28, 'Can view kti', 7, 'view_kti'),
(29, 'Can add poster', 8, 'add_poster'),
(30, 'Can change poster', 8, 'change_poster'),
(31, 'Can delete poster', 8, 'delete_poster'),
(32, 'Can view poster', 8, 'view_poster'),
(33, 'Can add prototype', 9, 'add_prototype'),
(34, 'Can change prototype', 9, 'change_prototype'),
(35, 'Can delete prototype', 9, 'delete_prototype'),
(36, 'Can view prototype', 9, 'view_prototype');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'kti', 'kti'),
(8, 'poster', 'poster'),
(9, 'prototype', 'prototype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-07-05 13:40:44.332381'),
(2, 'auth', '0001_initial', '2021-07-05 13:40:53.811432'),
(3, 'admin', '0001_initial', '2021-07-05 13:40:56.612703'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-07-05 13:40:56.675205'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-05 13:40:56.737694'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-07-05 13:40:57.864459'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-07-05 13:40:59.671879'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-07-05 13:40:59.796474'),
(9, 'auth', '0004_alter_user_username_opts', '2021-07-05 13:40:59.869629'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-07-05 13:41:00.559322'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-07-05 13:41:00.637348'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-07-05 13:41:00.715479'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-07-05 13:41:00.856118'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-07-05 13:41:00.981165'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-07-05 13:41:01.130879'),
(16, 'auth', '0011_update_proxy_permissions', '2021-07-05 13:41:01.196595'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-07-05 13:41:01.357696'),
(18, 'kti', '0001_initial', '2021-07-05 13:41:01.729810'),
(19, 'poster', '0001_initial', '2021-07-05 13:41:02.067800'),
(20, 'prototype', '0001_initial', '2021-07-05 13:41:02.366063'),
(21, 'sessions', '0001_initial', '2021-07-05 13:41:03.105258');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kti_kti`
--

CREATE TABLE `kti_kti` (
  `nama_ketua` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `prodi_ketua` varchar(100) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `prodi_anggota` varchar(100) NOT NULL,
  `subtema` varchar(100) NOT NULL,
  `judul_abstrak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `poster_poster`
--

CREATE TABLE `poster_poster` (
  `nama_ketua` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `prodi_ketua` varchar(100) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `prodi_anggota` varchar(100) NOT NULL,
  `subtema` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prototype_prototype`
--

CREATE TABLE `prototype_prototype` (
  `nama_ketua` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `prodi_ketua` varchar(100) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `prodi_anggota` varchar(100) NOT NULL,
  `subtema` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `kti_kti`
--
ALTER TABLE `kti_kti`
  ADD PRIMARY KEY (`judul_abstrak`);

--
-- Indexes for table `poster_poster`
--
ALTER TABLE `poster_poster`
  ADD PRIMARY KEY (`subtema`);

--
-- Indexes for table `prototype_prototype`
--
ALTER TABLE `prototype_prototype`
  ADD PRIMARY KEY (`subtema`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `invenity`
--
CREATE DATABASE IF NOT EXISTS `invenity` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `invenity`;

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE `component` (
  `component_id` int(11) NOT NULL,
  `component_name` varchar(30) NOT NULL COMMENT 'Component Name',
  `component_page` varchar(100) NOT NULL COMMENT 'Component Page',
  `component_type` enum('system','standard') NOT NULL DEFAULT 'standard' COMMENT 'Component Type',
  `active` enum('yes','no') NOT NULL DEFAULT 'yes' COMMENT 'Active Status',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`component_id`, `component_name`, `component_page`, `component_type`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, 'User Management', 'user_management.php', 'system', 'yes', 'admin', '2015-12-04 07:54:58', 'admin', '2015-12-22 14:46:59', 2),
(2, 'Component Management', 'component_management.php', 'system', 'yes', 'admin', '2015-12-04 07:54:58', 'admin', '2015-12-22 14:46:29', 2),
(3, 'System Log', 'system_log.php', 'system', 'yes', 'admin', '2015-12-04 07:54:58', 'admin', '2015-12-22 14:46:55', 2),
(4, 'System Settings', 'system_settings.php', 'system', 'yes', 'admin', '2015-12-04 07:54:58', 'admin', '2015-12-22 14:46:57', 2),
(5, 'Device Management', 'device_management.php', 'system', 'yes', 'admin', '2015-12-03 15:01:55', 'admin', '2015-12-22 14:46:47', 2),
(6, 'Location Management', 'location_management.php', 'system', 'yes', 'admin', '2015-12-03 15:01:55', 'admin', '2015-12-22 14:46:52', 2),
(7, 'Report', 'report.php', 'system', 'yes', 'admin', '2015-12-22 11:17:36', 'admin', '2016-02-17 14:14:29', 4);

-- --------------------------------------------------------

--
-- Table structure for table `device_changes`
--

CREATE TABLE `device_changes` (
  `changes_id` int(12) UNSIGNED ZEROFILL NOT NULL,
  `device_id` int(11) NOT NULL,
  `changes` text DEFAULT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `device_list`
--

CREATE TABLE `device_list` (
  `device_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT 'FK Device Type',
  `device_code` varchar(100) NOT NULL COMMENT 'Unique Code (5 digit number in the back)',
  `device_brand` varchar(100) NOT NULL,
  `device_model` varchar(100) DEFAULT NULL,
  `device_serial` varchar(255) NOT NULL,
  `device_color` varchar(100) NOT NULL COMMENT 'Color',
  `device_description` text DEFAULT NULL,
  `device_photo` text DEFAULT NULL,
  `device_status` enum('new','in use','damaged','repaired','discarded') NOT NULL DEFAULT 'new',
  `location_id` int(11) DEFAULT NULL COMMENT 'FK Location',
  `device_deployment_date` datetime DEFAULT NULL COMMENT 'Fill this field when assigned to a location',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_list`
--

INSERT INTO `device_list` (`device_id`, `type_id`, `device_code`, `device_brand`, `device_model`, `device_serial`, `device_color`, `device_description`, `device_photo`, `device_status`, `location_id`, `device_deployment_date`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, 5, 'BCB/2016/PRT/1', 'Epson', 'L210', 'VGVK034060', 'Black', '<p>Printer Admin IT</p>', './assets/images/device_photos/VGVK034060.jpg', 'in use', 0, '2016-11-10 14:33:49', 'admin', '2016-11-10 11:01:46', 'admin', '2016-11-10 14:33:49', 3),
(2, 1, 'BCB/2016/MTR/2', 'Samsung', '20M37A', '501NDWEH3817', 'Black', '<p>Monitor IT Software</p>', './assets/images/device_photos/501NDWEH3817.jpg', 'in use', 1, '2016-11-12 12:09:19', 'admin', '2016-11-10 14:43:34', 'admin', '2016-11-12 12:09:19', 4),
(3, 2, 'BCB/2016/MSE/3', 'Logitech', 'K100', '1516HS03TEL8', 'Black', '<p>Mouse IT Software</p>', './assets/images/device_photos/standard_device.jpg', 'in use', 1, '2016-11-12 12:17:31', 'admin', '2016-11-12 12:17:31', 'admin', '2016-11-12 12:17:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `device_type`
--

CREATE TABLE `device_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(30) NOT NULL COMMENT 'Device Type Name',
  `type_code` varchar(30) NOT NULL COMMENT 'Device Type Code',
  `active` enum('yes','no') NOT NULL DEFAULT 'yes' COMMENT 'Device Type Active Status',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'Total Device Type Changes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_type`
--

INSERT INTO `device_type` (`type_id`, `type_name`, `type_code`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, 'Monitor', 'MTR', 'yes', 'admin', '2016-01-19 15:35:01', 'admin', '2016-02-17 10:43:01', 2),
(2, 'Mouse', 'MSE', 'yes', 'admin', '2016-01-19 15:37:36', 'admin', '2016-01-19 15:37:36', 0),
(3, 'Keyboard', 'KBD', 'yes', 'admin', '2016-01-19 15:37:45', 'admin', '2016-02-17 10:43:11', 2),
(4, 'Speaker', 'SPKR', 'yes', 'admin', '2016-01-19 15:38:01', 'admin', '2016-01-19 15:38:01', 0),
(5, 'Printer', 'PRT', 'yes', 'admin', '2016-01-19 15:38:15', 'admin', '2016-01-19 15:38:15', 0),
(6, 'Harddisk external', 'HDX', 'yes', 'admin', '2016-05-20 07:24:50', 'admin', '2016-06-07 11:02:05', 2),
(7, 'Ups', 'UPS', 'yes', 'admin', '2016-11-11 09:20:17', 'admin', '2016-11-11 10:37:48', 2),
(8, 'Switch', 'SWT', 'yes', 'admin', '2016-11-12 12:11:51', 'admin', '2016-11-12 12:11:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(30) NOT NULL COMMENT 'Location Name',
  `location_photo` text DEFAULT NULL COMMENT 'Location Photo - If available',
  `active` enum('yes','no') NOT NULL DEFAULT 'yes' COMMENT 'Location Active Status',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'Total Device Type Changes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `location_photo`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, 'IT Room', NULL, 'yes', 'admin', '2016-11-12 11:59:44', 'admin', '2016-11-12 12:09:02', 1),
(2, 'Storage 1', NULL, 'yes', 'admin', '2016-11-12 12:12:29', 'admin', '2016-11-12 12:12:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `location_building`
--

CREATE TABLE `location_building` (
  `building_id` int(11) NOT NULL,
  `building_name` varchar(30) NOT NULL,
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_building`
--

INSERT INTO `location_building` (`building_id`, `building_name`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, 'Main Building', 'yes', 'admin', '2016-11-12 11:59:00', 'admin', '2016-11-12 11:59:00', 0),
(2, 'Warehouse', 'yes', 'admin', '2016-11-12 11:59:13', 'admin', '2016-11-12 11:59:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE `location_details` (
  `detail_id` int(15) NOT NULL,
  `location_id` int(11) NOT NULL COMMENT 'FK location',
  `place_id` int(11) NOT NULL COMMENT 'FK place',
  `building_id` int(11) NOT NULL COMMENT 'FK building',
  `floor_id` int(11) NOT NULL COMMENT 'FK floor',
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_details`
--

INSERT INTO `location_details` (`detail_id`, `location_id`, `place_id`, `building_id`, `floor_id`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, 1, 1, 1, 3, 'yes', 'admin', '2016-11-12 12:09:02', 'admin', '2016-11-12 12:09:02', 0),
(2, 2, 2, 2, 1, 'yes', 'admin', '2016-11-12 12:12:29', 'admin', '2016-11-12 12:12:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `location_floor`
--

CREATE TABLE `location_floor` (
  `floor_id` int(11) NOT NULL,
  `floor_name` varchar(30) NOT NULL,
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_floor`
--

INSERT INTO `location_floor` (`floor_id`, `floor_name`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, '1st Floor', 'yes', 'admin', '2016-10-31 13:46:37', 'admin', '2016-11-12 11:56:48', 1),
(2, '2nd Floor', 'yes', 'admin', '2016-10-31 13:46:37', 'admin', '2016-11-12 11:56:59', 1),
(3, '3rd Floor', 'yes', 'admin', '2016-10-31 13:46:37', 'admin', '2016-11-12 11:56:39', 3),
(4, '4th Floor', 'no', 'admin', '2016-11-08 14:36:53', 'admin', '2016-11-12 11:57:08', 2);

-- --------------------------------------------------------

--
-- Table structure for table `location_place`
--

CREATE TABLE `location_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_place`
--

INSERT INTO `location_place` (`place_id`, `place_name`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
(1, 'Office One', 'yes', 'admin', '2016-10-31 13:46:37', 'admin', '2016-11-12 11:56:07', 1),
(2, 'Office Two', 'yes', 'admin', '2016-10-31 13:46:37', 'admin', '2016-11-12 11:56:19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `log_id` int(11) NOT NULL,
  `log_date` datetime NOT NULL COMMENT 'Date',
  `username` varchar(30) NOT NULL COMMENT 'Username',
  `description` text NOT NULL COMMENT 'Log Descriptions'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_name` varchar(50) NOT NULL COMMENT 'Setting Name',
  `setting_value` text NOT NULL COMMENT 'Values',
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_name`, `setting_value`, `active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
('admin_email', 'admin@is_inventory.com', 'yes', 'system', '2015-12-10 09:33:16', 'system', '2015-12-10 09:33:16', 0),
('body_background', 'symphony.png', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-01-06 11:33:54', 4),
('color_scheme', 'site-default.min.css', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-01-06 11:33:53', 4),
('device_code_format', 'BCB/year/devtype', 'yes', 'system', '2016-11-09 10:48:25', 'admin', '2016-11-09 10:48:25', 0),
('favicon', 'favicon.ico', 'no', 'system', '2015-12-10 09:33:16', 'system', '2015-12-10 09:33:16', 0),
('inventory_description', '<p>General Inventory is still under construction!</p>', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2015-12-15 16:18:09', 1),
('inventory_email', '', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-11-12 11:51:41', 1),
('inventory_fax_number', '', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-11-12 11:51:41', 1),
('inventory_location', '<p>Your Location</p>', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-11-12 11:48:18', 1),
('inventory_logo', 'sclogo.png', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-11-12 11:51:41', 2),
('inventory_name', 'General Inventory', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2015-12-15 15:46:47', 0),
('inventory_phone_number', '', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-11-12 11:51:41', 1),
('inventory_slogan', 'General Inventory | Standard Edition', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2015-12-15 15:46:47', 0),
('inventory_website', '', 'yes', 'system', '2015-12-10 09:33:16', 'admin', '2016-11-12 11:51:41', 1),
('location_details', 'enable', 'yes', 'system', '2016-11-02 11:14:23', 'admin', '2016-11-08 11:39:25', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL COMMENT 'Unique Username',
  `password` varchar(128) NOT NULL COMMENT 'SHA512',
  `salt` varchar(64) NOT NULL COMMENT 'Random String SHA256',
  `level` enum('admin','user') NOT NULL DEFAULT 'user' COMMENT 'User Level',
  `active` enum('yes','no') NOT NULL DEFAULT 'yes' COMMENT 'User Active Status',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `photo` text DEFAULT NULL COMMENT 'User Photo Profile - Set default if empty',
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'Total Profile Changes/Revision'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `salt`, `level`, `active`, `first_name`, `last_name`, `photo`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
('admin', '24ce1033bdfe226997340a7104d79eeb43a54a27c101da24a5eb465c90a10800d6f8671346158f0ecf2efb4f1440f45e9c16fbc3e45d3e53e2bb94839781e95f', '1f78147ac76487d519cdf84a31df14b84948c6a01f763b522df896c75a5d7e4f', 'admin', 'yes', 'Super', 'User', './assets/images/user_photos/standard_photo.jpg', 'admin', '2015-12-02 11:26:49', 'admin', '2015-12-02 11:26:49', 0),
('anoerman', '44a29cbf152b01a23f1396c218e6f26a6e8164c1d0ce5fd30cd5fd66a3433b0388570977ab4d595251399c74401c5deac6b3159c6346affb2dd69ba00f981f87', '3ec34b8ad808561d280ee0df7f1c9269581882c96513ae985698e1232c44eda7', 'user', 'yes', 'Noerman', 'Agustiyan', './assets/images/user_photos/anoerman.png', 'admin', '2016-01-07 09:39:53', 'admin', '2016-03-15 10:58:01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `username` varchar(30) NOT NULL,
  `privileges` text NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL,
  `revision` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_privileges`
--

INSERT INTO `user_privileges` (`username`, `privileges`, `created_by`, `created_date`, `updated_by`, `updated_date`, `revision`) VALUES
('admin', '*', 'admin', '2015-12-10 08:00:24', 'admin', '2015-12-10 08:00:24', 0),
('anoerman', '5,6', 'admin', '2016-02-17 15:08:38', 'admin', '2016-03-15 10:58:01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`component_id`);

--
-- Indexes for table `device_changes`
--
ALTER TABLE `device_changes`
  ADD PRIMARY KEY (`changes_id`);

--
-- Indexes for table `device_list`
--
ALTER TABLE `device_list`
  ADD PRIMARY KEY (`device_id`);

--
-- Indexes for table `device_type`
--
ALTER TABLE `device_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `location_building`
--
ALTER TABLE `location_building`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `location_details`
--
ALTER TABLE `location_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `location_floor`
--
ALTER TABLE `location_floor`
  ADD PRIMARY KEY (`floor_id`);

--
-- Indexes for table `location_place`
--
ALTER TABLE `location_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `component`
--
ALTER TABLE `component`
  MODIFY `component_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `device_changes`
--
ALTER TABLE `device_changes`
  MODIFY `changes_id` int(12) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_list`
--
ALTER TABLE `device_list`
  MODIFY `device_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `device_type`
--
ALTER TABLE `device_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_building`
--
ALTER TABLE `location_building`
  MODIFY `building_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_details`
--
ALTER TABLE `location_details`
  MODIFY `detail_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_floor`
--
ALTER TABLE `location_floor`
  MODIFY `floor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location_place`
--
ALTER TABLE `location_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `inventory_db`
--
CREATE DATABASE IF NOT EXISTS `inventory_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventory_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `kd_admin` int(6) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kd_admin`, `nama`, `email`, `password`, `gambar`) VALUES
(5, 'Putra', 'saputra2@gmail.com', 'admin', '1330353508976947169.jpg'),
(6, 'admin', 'admin@admin.com', 'admin', 'team1.jpg'),
(7, 'Mas Poetra', 'admin2@admin.com', 'admin2', '141204-201433.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_jual` int(15) NOT NULL,
  `harga_beli` int(15) NOT NULL,
  `stok` int(4) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_barang`, `satuan`, `harga_jual`, `harga_beli`, `stok`, `status`) VALUES
('BB000001', 'Barang 1', 'PCS', 200000, 180000, 50, '0'),
('BB000002', 'Barang 2', 'DUS', 340000, 300000, 12, '0'),
('BB000003', 'Buku 1', 'DUS', 450000, 400000, 75, '0');

-- --------------------------------------------------------

--
-- Table structure for table `barangp_sementara`
--

CREATE TABLE `barangp_sementara` (
  `id_barangp` int(6) NOT NULL,
  `kd_pembelian` char(8) NOT NULL,
  `nama_barangp` varchar(225) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_barangp` double NOT NULL,
  `item` int(4) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang_pembelian`
--

CREATE TABLE `barang_pembelian` (
  `kd_barang_beli` int(6) NOT NULL,
  `kd_pembelian` char(8) NOT NULL,
  `nama_barang_beli` varchar(225) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga_beli` double NOT NULL,
  `item` int(4) NOT NULL,
  `total` double NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_pembelian`
--

INSERT INTO `barang_pembelian` (`kd_barang_beli`, `kd_pembelian`, `nama_barang_beli`, `satuan`, `harga_beli`, `item`, `total`, `status`) VALUES
(106, 'PEM00001', 'Buku 1', 'DUS', 400000, 80, 32000000, '1'),
(107, 'PEM00001', 'Buku 2', 'DUS', 120000, 30, 3600000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `d_pembelian`
--

CREATE TABLE `d_pembelian` (
  `id_pembelian` int(6) NOT NULL,
  `kd_pembelian` char(8) NOT NULL,
  `kd_barang_beli` int(6) NOT NULL,
  `jumlah` int(6) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_pembelian`
--

INSERT INTO `d_pembelian` (`id_pembelian`, `kd_pembelian`, `kd_barang_beli`, `jumlah`, `subtotal`) VALUES
(159, 'PEM00001', 106, 80, 32000000),
(160, 'PEM00001', 107, 30, 3600000);

-- --------------------------------------------------------

--
-- Table structure for table `d_penjualan`
--

CREATE TABLE `d_penjualan` (
  `id_penjualan` int(6) NOT NULL,
  `kd_penjualan` char(8) NOT NULL,
  `kd_barang` varchar(8) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_penjualan`
--

INSERT INTO `d_penjualan` (`id_penjualan`, `kd_penjualan`, `kd_barang`, `jumlah`, `subtotal`) VALUES
(55, 'PEN00001', 'BB000003', 5, 2250000);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `kd_pembelian` char(8) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `kd_admin` int(6) NOT NULL,
  `kd_supplier` int(6) NOT NULL,
  `total_pembelian` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`kd_pembelian`, `tgl_pembelian`, `kd_admin`, `kd_supplier`, `total_pembelian`) VALUES
('PEM00001', '2016-03-13', 6, 4, 35600000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kd_penjualan` char(8) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `kd_admin` int(6) NOT NULL,
  `dibayar` double NOT NULL,
  `total_penjualan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kd_penjualan`, `tgl_penjualan`, `kd_admin`, `dibayar`, `total_penjualan`) VALUES
('PEN00001', '2016-03-13', 6, 2260000, 2250000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_sementara`
--

CREATE TABLE `penjualan_sementara` (
  `id_penjualan_sementara` int(11) NOT NULL,
  `kd_penjualan` char(8) NOT NULL,
  `kd_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` double NOT NULL,
  `item` int(4) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `kd_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `pemilik` varchar(225) NOT NULL,
  `kota` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`kd_perusahaan`, `nama_perusahaan`, `alamat`, `pemilik`, `kota`) VALUES
(1, 'PUTRA SOURCE', 'Condong Catur, Sleman Yogyakarta', 'Rizka Dwi Saputra', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kd_supplier` int(6) NOT NULL,
  `nama_supplier` varchar(60) NOT NULL,
  `alamat` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kd_supplier`, `nama_supplier`, `alamat`) VALUES
(1, 'Toko Anjas', 'condong catur, sleman'),
(3, 'TB Agus Hokya', 'Kuningan, Bandung Barat Selatan Ke Utara'),
(4, 'Toko Putra', 'jl. merdeka, boyolali, jakarta selatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `barangp_sementara`
--
ALTER TABLE `barangp_sementara`
  ADD PRIMARY KEY (`id_barangp`),
  ADD KEY `kd_pembelian` (`kd_pembelian`);

--
-- Indexes for table `barang_pembelian`
--
ALTER TABLE `barang_pembelian`
  ADD PRIMARY KEY (`kd_barang_beli`);

--
-- Indexes for table `d_pembelian`
--
ALTER TABLE `d_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `kd_pembelian` (`kd_pembelian`),
  ADD KEY `kd_pembelian_2` (`kd_pembelian`),
  ADD KEY `kd_barang_beli` (`kd_barang_beli`),
  ADD KEY `kd_barang_beli_2` (`kd_barang_beli`);

--
-- Indexes for table `d_penjualan`
--
ALTER TABLE `d_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `kd_penjualan` (`kd_penjualan`),
  ADD KEY `kd_barang` (`kd_barang`),
  ADD KEY `kd_barang_2` (`kd_barang`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`kd_pembelian`),
  ADD KEY `kd_admin` (`kd_admin`),
  ADD KEY `kd_supplier` (`kd_supplier`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kd_penjualan`),
  ADD KEY `kd_admin` (`kd_admin`);

--
-- Indexes for table `penjualan_sementara`
--
ALTER TABLE `penjualan_sementara`
  ADD PRIMARY KEY (`id_penjualan_sementara`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`kd_perusahaan`),
  ADD KEY `kd_perusahaan` (`kd_perusahaan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kd_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `kd_admin` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `barangp_sementara`
--
ALTER TABLE `barangp_sementara`
  MODIFY `id_barangp` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barang_pembelian`
--
ALTER TABLE `barang_pembelian`
  MODIFY `kd_barang_beli` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `d_pembelian`
--
ALTER TABLE `d_pembelian`
  MODIFY `id_pembelian` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `d_penjualan`
--
ALTER TABLE `d_penjualan`
  MODIFY `id_penjualan` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `penjualan_sementara`
--
ALTER TABLE `penjualan_sementara`
  MODIFY `id_penjualan_sementara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `kd_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `kd_supplier` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `d_pembelian`
--
ALTER TABLE `d_pembelian`
  ADD CONSTRAINT `d_pembelian_ibfk_3` FOREIGN KEY (`kd_pembelian`) REFERENCES `pembelian` (`kd_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d_pembelian_ibfk_4` FOREIGN KEY (`kd_barang_beli`) REFERENCES `barang_pembelian` (`kd_barang_beli`);

--
-- Constraints for table `d_penjualan`
--
ALTER TABLE `d_penjualan`
  ADD CONSTRAINT `d_penjualan_ibfk_3` FOREIGN KEY (`kd_barang`) REFERENCES `barang` (`kd_barang`),
  ADD CONSTRAINT `d_penjualan_ibfk_4` FOREIGN KEY (`kd_penjualan`) REFERENCES `penjualan` (`kd_penjualan`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`kd_supplier`) REFERENCES `supplier` (`kd_supplier`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`kd_admin`) REFERENCES `admin` (`kd_admin`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`kd_admin`) REFERENCES `admin` (`kd_admin`);
--
-- Database: `library_system`
--
CREATE DATABASE IF NOT EXISTS `library_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library_system`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add perpustakaan', 7, 'add_perpustakaan'),
(20, 'Can change perpustakaan', 7, 'change_perpustakaan'),
(21, 'Can delete perpustakaan', 7, 'delete_perpustakaan'),
(22, 'Can add barang', 8, 'add_barang'),
(23, 'Can change barang', 8, 'change_barang'),
(24, 'Can delete barang', 8, 'delete_barang'),
(25, 'Can add pelanggan', 9, 'add_pelanggan'),
(26, 'Can change pelanggan', 9, 'change_pelanggan'),
(27, 'Can delete pelanggan', 9, 'delete_pelanggan'),
(28, 'Can add peminjam', 10, 'add_peminjam'),
(29, 'Can change peminjam', 10, 'change_peminjam'),
(30, 'Can delete peminjam', 10, 'delete_peminjam');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$0Kix6AOuDC7v$X0P7bwPM4BLY1x9PIR5vn0KQs1pG7xvcM9G4qk8cWu4=', '2021-05-25 14:15:20.913260', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2021-05-25 13:49:55.310160');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_peminjam`
--

CREATE TABLE `borrowing_peminjam` (
  `id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `borrow_date` varchar(100) NOT NULL,
  `items_id` int(11) NOT NULL,
  `return_date` varchar(100) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'borrowing', 'peminjam'),
(5, 'contenttypes', 'contenttype'),
(8, 'items', 'barang'),
(7, 'library', 'perpustakaan'),
(6, 'sessions', 'session'),
(9, 'subscribers', 'pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-24 18:40:50.359112'),
(2, 'auth', '0001_initial', '2021-05-24 18:41:00.990962'),
(3, 'admin', '0001_initial', '2021-05-24 18:41:04.672779'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-24 18:41:04.752865'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-05-24 18:41:05.724606'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-05-24 18:41:06.692632'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-05-24 18:41:06.825178'),
(8, 'auth', '0004_alter_user_username_opts', '2021-05-24 18:41:06.889031'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-05-24 18:41:07.784235'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-05-24 18:41:07.840927'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2021-05-24 18:41:07.948641'),
(12, 'auth', '0008_alter_user_username_max_length', '2021-05-24 18:41:08.116296'),
(13, 'borrowing', '0001_initial', '2021-05-24 18:41:09.003084'),
(14, 'items', '0001_initial', '2021-05-24 18:41:09.411487'),
(15, 'library', '0001_initial', '2021-05-24 18:41:09.758995'),
(16, 'sessions', '0001_initial', '2021-05-24 18:41:10.599545'),
(17, 'subscribers', '0001_initial', '2021-05-24 18:41:10.997725');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hf8xq6vh28aljmxfnvvog1dvhwtsv43i', 'MDg1NTY5ZjdjOTJiNWZmNzE3OTBiNTIyNTI4NzVlYzFiZWRiNDQwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDdhMzUxMDM4MDk0NWVjZDhkYmY5YjNkMzIwZmNlMzVkYmNmOWEyIn0=', '2021-06-08 14:15:21.022977');

-- --------------------------------------------------------

--
-- Table structure for table `items_barang`
--

CREATE TABLE `items_barang` (
  `id` int(11) NOT NULL,
  `id_items` int(11) NOT NULL,
  `id_library` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `copies` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `library_perpustakaan`
--

CREATE TABLE `library_perpustakaan` (
  `id` int(11) NOT NULL,
  `id_library` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_pelanggan`
--

CREATE TABLE `subscribers_pelanggan` (
  `id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  ADD PRIMARY KEY (`borrow_date`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `items_id` (`items_id`),
  ADD KEY `subscriber_id` (`subscriber_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD PRIMARY KEY (`id_items`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_library` (`id_library`);

--
-- Indexes for table `library_perpustakaan`
--
ALTER TABLE `library_perpustakaan`
  ADD PRIMARY KEY (`id_library`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `subscribers_pelanggan`
--
ALTER TABLE `subscribers_pelanggan`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `items_barang`
--
ALTER TABLE `items_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_perpustakaan`
--
ALTER TABLE `library_perpustakaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers_pelanggan`
--
ALTER TABLE `subscribers_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  ADD CONSTRAINT `borrowing_peminjam_ibfk_1` FOREIGN KEY (`items_id`) REFERENCES `items_barang` (`id_items`),
  ADD CONSTRAINT `borrowing_peminjam_ibfk_2` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers_pelanggan` (`subscriber_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD CONSTRAINT `items_barang_ibfk_1` FOREIGN KEY (`id_library`) REFERENCES `library_perpustakaan` (`id_library`);
--
-- Database: `northwind`
--
CREATE DATABASE IF NOT EXISTS `northwind` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `northwind`;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `Id_pegawai` char(10) NOT NULL,
  `Pegawai_nama` char(30) DEFAULT NULL,
  `Jabatan` char(20) DEFAULT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`Id_pegawai`, `Pegawai_nama`, `Jabatan`, `jenis_kelamin`, `alamat`) VALUES
('pg_001', 'Santi', 'Casier', 'Perempuan', ''),
('pg_002', 'Siska', 'Casier', 'Perempuan', ''),
('pg_003', 'Nuri', 'Casier', 'Laki-laki', ''),
('pg_004', 'Jamal', 'Casier', 'Laki-laki', ''),
('pg_007', 'Dani', 'Staff', 'Laki-Laki', 'Jl. Suka Maju'),
('pg_008', 'Doni', 'Staff', 'Laki-Laki', 'Jl. Suka Mundur'),
('pg_009', 'Dian', 'Staff', 'Perempuan', 'Jl. Ryacudu'),
('pg_201', 'Santo', 'Satpam', 'Laki-laki', ''),
('pg_300', 'Yaya', 'Manager', 'Laki-laki', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `Id_pembeli` char(10) NOT NULL,
  `Pembeli_nama` char(30) DEFAULT NULL,
  `Pembeli_kontak` char(20) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`Id_pembeli`, `Pembeli_nama`, `Pembeli_kontak`, `kota`) VALUES
('C_800', 'Egi', '0812521221', 'Jakarta'),
('C_810', 'Ardi', '0862145121', 'Bandung'),
('C_901', 'Rudi', '081231511', 'Yogyakarta'),
('C_991', 'Andi', '085212021111', 'Bandar Lampung');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Produk_id` char(6) NOT NULL,
  `Produk_nama` char(30) DEFAULT NULL,
  `Jumlah_stok` char(30) DEFAULT NULL,
  `Suppliers_id` char(6) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Produk_id`, `Produk_nama`, `Jumlah_stok`, `Suppliers_id`, `harga`) VALUES
('P109', 'Teh Kotak 300 ml', '40 pcs', 'S002', '15000'),
('P114', 'Milo 100 ml', '800 pcs', 'S001', '50000'),
('P115', 'Millo 150 ml', '50 pcs', 'S003', '5000'),
('P123', 'Gulaku 1 Kg', '100 pcs', 'S005', '70000'),
('P150', 'Kretengdeng', '80 pcs', 'S004', '8000'),
('P204', 'Somos', '50 pcs', 'S002', '6000'),
('P235', 'Aqua 250 ml', '300 pcs', 'S001', '55000'),
('P311', 'Grand 320 ml', '400 pcs', 'S003', '60000'),
('P333', 'Sari Roti 100 gram', '30 pcs', 'S005', '4000'),
('P441', 'Rojo Lele 5kg', '60 pcs', 'S002', '30000'),
('P453', 'Garam 30 gram', '20 pcs', 'S006', '2000'),
('P552', 'Aqua 1 L', '300 pcs', 'S001', '65000'),
('P561', 'Marijan', '40 pcs', 'S001', '20000'),
('P792', 'Miesadap', '30 pcs', 'S004', '3000'),
('P882', 'Indomilk 25 ml', '200 pcs', 'S004', '9000');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Suppliers_id` char(6) NOT NULL,
  `Company_name` char(30) DEFAULT NULL,
  `Nama_kontak` char(30) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`Suppliers_id`, `Company_name`, `Nama_kontak`, `kota`) VALUES
('S001', 'Semua Terang', 'Ali', 'Solo'),
('S002', 'Suka Maju', 'Rahmat', 'Malang'),
('S003', 'Maju Terus', 'Daryono', 'Serang'),
('S004', 'Pelita Baru', 'Puspa', 'Palembang'),
('S005', 'Surya Kun', 'Siti', 'Medan'),
('S006', 'Ceria Kasih', 'Topan', 'Aceh');

-- --------------------------------------------------------

--
-- Table structure for table `tes`
--

CREATE TABLE `tes` (
  `kode` int(11) NOT NULL,
  `pinjam` date NOT NULL,
  `kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tes`
--

INSERT INTO `tes` (`kode`, `pinjam`, `kembali`) VALUES
(111, '2021-05-15', '2021-06-15'),
(213, '2013-01-10', '2013-01-25'),
(456, '2013-02-05', '2013-03-10'),
(789, '2013-05-11', '2013-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Id_transaksi` int(10) NOT NULL,
  `Id_pembeli` char(20) DEFAULT NULL,
  `Id_pegawai` char(20) DEFAULT NULL,
  `Produk_id` char(20) DEFAULT NULL,
  `Tgl_transaksi` date DEFAULT NULL,
  `Jumlah_beli` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Id_transaksi`, `Id_pembeli`, `Id_pegawai`, `Produk_id`, `Tgl_transaksi`, `Jumlah_beli`) VALUES
(1, 'C_901', 'pg_002', 'P552', '2017-09-12', '3 pcs'),
(2, 'C_901', 'pg_003', 'P109', '2017-09-15', '10 pcs'),
(3, 'C_810', 'pg_001', 'P114', '2017-09-15', '2 pcs'),
(4, 'C_991', 'pg_004', 'P333', '2017-09-18', '3 pcs'),
(5, 'C_800', 'pg_001', 'P552', '2017-09-18', '1 pcs'),
(6, 'C_810', 'pg_002', 'P552', '2017-09-20', '10 pcs'),
(7, 'C_810', 'pg_002', 'P552', '2013-01-10', '2 pcs'),
(8, 'C_800', 'pg_001', 'P333', '2013-01-30', '5 pcs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`Id_pegawai`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`Id_pembeli`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Produk_id`),
  ADD KEY `Suppliers_id` (`Suppliers_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Suppliers_id`);

--
-- Indexes for table `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Id_transaksi`),
  ADD KEY `Id_pembeli` (`Id_pembeli`),
  ADD KEY `Id_pegawai` (`Id_pegawai`),
  ADD KEY `Produk_id` (`Produk_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`Suppliers_id`) REFERENCES `suppliers` (`Suppliers_id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Id_pembeli`) REFERENCES `pembeli` (`Id_pembeli`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`Id_pegawai`) REFERENCES `pegawai` (`Id_pegawai`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`Produk_id`) REFERENCES `produk` (`Produk_id`);
--
-- Database: `penjualan`
--
CREATE DATABASE IF NOT EXISTS `penjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `penjualan`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'malasngoding', '069c546d1d97fd9648d8142b3e0fd3a3', 'text.png');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`) VALUES
(14, 'roti unibis', 'makanan', 'pt.makamur jaya', 5000, 6500, 350, 20),
(17, 'tim tam', 'makanan ringan', 'pt surga', 2000, 6000, 792, 10),
(19, 'tic tac', 'makanan ringan', 'pt sido multp', 2000, 4000, 2, 24),
(20, 'aqua sedang', 'minuman ringan', 'pt jamaika', 1000, 3000, 990, 1000),
(21, 'makkkanan', 'makanan ringan', 'pt surya', 2000, 4000, 894, 900),
(22, 'makkkanan', 'makanan ringan', 'pt surya', 2000, 4000, 894, 900),
(23, 'magnum', 'rokok', 'pt surga', 12000, 13000, 997, 1000),
(24, 'santri mie', 'makanan ringan', 'pt sido mulyo', 2000, 4000, 784, 800),
(25, 'rambut palsu', 'accesories', 'pt ptan', 3000, 5000, 496, 500),
(26, 'rambut palsu', 'accesories', 'pt ptan', 3000, 5000, 496, 500),
(27, 'sea foog', 'makanan ringan', 'pt surga', 4000, 60000, 598, 600),
(28, 'mild', 'rokok', 'pt sampoerna', 15000, 17000, 192, 200),
(29, 'dji sam soe', 'rokok', 'pt ptan', 14000, 15000, 145, 150),
(30, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(31, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(32, 'roti', 'makanan', 'hdhnhnhh', 2000, 5000, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `barang_laku`
--

CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_laku`
--

INSERT INTO `barang_laku` (`id`, `tanggal`, `nama`, `jumlah`, `harga`, `total_harga`, `laba`) VALUES
(46, '2015-02-01', 'roti unibis', 2, 6000, 12000, 2000),
(47, '2015-02-02', 'makkkanan', 7, 12000, 84000, 70000),
(48, '2015-02-02', 'dji sam soe', 2, 15000, 30000, 2000),
(49, '2015-02-03', 'makkkanan', 1, 12000, 12000, 10000),
(50, '2015-02-01', 'tim tam', 2, 4000, 8000, 4000),
(51, '2015-02-02', 'mild', 2, 17000, 34000, 4000),
(52, '2015-02-03', 'magnum', 1, 18000, 18000, 6000),
(53, '2015-02-06', 'dji sam soe', 2, 19000, 38000, 10000),
(54, '2015-02-15', 'nu mild', 2, 19100, 38200, 10200),
(55, '2015-02-27', 'roti unibis', 2, 8000, 16000, 6000),
(56, '2015-02-19', 'roti unibis', 1, 7000, 7000, 2000),
(57, '2015-01-14', 'roti unibis', 1, 7000, 7000, 2000),
(58, '2015-02-01', 'pulpen', 1, 3000, 3000, 2000),
(59, '2015-02-02', 'roti', 2, 3000, 6000, 2000),
(63, '2016-01-22', 'tic tac', 8, 4000, 32000, 16000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keperluan`, `nama`, `jumlah`) VALUES
(1, '2015-02-06', 'de', 'diki', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_laku`
--
ALTER TABLE `barang_laku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `barang_laku`
--
ALTER TABLE `barang_laku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `penjualan1`
--
CREATE DATABASE IF NOT EXISTS `penjualan1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `penjualan1`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `barang_laris`
-- (See below for the actual view)
--
CREATE TABLE `barang_laris` (
`kode_barang` varchar(30)
,`nama_barang` varchar(50)
,`jumlah` bigint(21)
,`satuan` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `posisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `posisi`) VALUES
(4, 'Barang', 2),
(5, 'Master', 1),
(6, 'Transaksi', 3),
(7, 'Laporan', 5),
(8, 'Retur Barang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_modul` varchar(150) NOT NULL,
  `link_menu` text NOT NULL,
  `posisi` int(11) NOT NULL,
  `icon_menu` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `id_menu`, `nama_modul`, `link_menu`, `posisi`, `icon_menu`) VALUES
(6, 4, 'Kategori Barang', 'med.php?mod=kategori', 1, 'fa fa-folder-open'),
(7, 4, 'Data Barang', 'med.php?mod=barang', 2, 'fa fa-cubes'),
(8, 5, 'Data Pelanggan', 'med.php?mod=pelanggan', 1, 'fa fa-group'),
(9, 5, 'Data Supplier', 'med.php?mod=supplier', 2, 'fa fa-user'),
(10, 6, 'Transaksi Penjualan', 'med.php?mod=penjualan', 1, 'fa fa-shopping-cart'),
(11, 6, 'Data Transaksi Penjualan', 'med.php?mod=penjualan&act=list', 2, 'fa fa-book'),
(12, 6, 'Data Transaksi Pembelian', 'med.php?mod=pembelian', 3, 'fa fa-truck'),
(13, 7, 'Laporan Stok Barang', 'med.php?mod=laporan&act=stokbarang', 1, 'fa fa-line-chart'),
(14, 7, 'Laporan Barang Terlaris', 'med.php?mod=laplaris', 2, 'fa fa-pie-chart'),
(15, 7, 'Laporan Transaksi Pembelian', 'med.php?mod=lappemblian', 3, 'fa fa-print'),
(16, 7, 'Laporan Transaksi Penjualan', 'med.php?mod=lappenjualan', 4, 'fa fa-print'),
(17, 8, 'Retur Penjualan', 'med.php?mod=returpenjualan', 1, 'fa fa-cart-arrow-down'),
(18, 8, 'Retur Pembelian', 'med.php?mod=returpembelian', 2, 'fa fa-cart-arrow-down');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_input` date NOT NULL,
  `harga_beli` double(10,2) NOT NULL,
  `harga_jual` double(10,2) NOT NULL,
  `kategori_id` char(5) NOT NULL,
  `jml_stok` int(11) NOT NULL,
  `satuan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barang`, `nama_barang`, `deskripsi`, `tgl_input`, `harga_beli`, `harga_jual`, `kategori_id`, `jml_stok`, `satuan`) VALUES
('AD00001', 'ADAPTOR ACER KW', '-', '2016-07-25', 55000.00, 150000.00, 'C002', 10, 'UNIT'),
('AD00003', 'ADAPTOR ACER MINI ORI', '-', '2016-07-28', 55000.00, 150000.00, 'C002', 10, 'UNIT'),
('AD00004', 'ADAPTOR ASUS KW', '-', '2016-07-28', 55000.00, 150000.00, 'C002', 10, 'UNIT'),
('AD00005', 'ADAPTOR ASUS MINI', '-', '2016-07-28', 57000.00, 150000.00, 'C002', 10, 'UNIT'),
('AD00006', 'ADAPTOR ASUS ORI', '-', '2016-07-28', 130000.00, 360000.00, 'C002', 10, 'UNIT'),
('AD00007', 'ADAPTOR ASUS ORI PETAK', '-', '2016-07-28', 185000.00, 40000.00, 'C002', 10, 'UNIT'),
('AD00008', 'ADAPTOR ASUS ORI EPC19V-1.75A', '-', '2016-07-28', 148000.00, 350000.00, 'C002', 10, 'UNIT'),
('AD00009', 'ADAPTOR HP JARUM KW', '-', '2016-07-28', 57000.00, 150000.00, 'C002', 10, 'UNIT'),
('AD00010', 'ADAPTOR HP MINI ORI', '-', '2016-07-28', 135000.00, 375000.00, 'C002', 10, 'UNIT'),
('AD00011', 'ADAPTOR HP JARUM ORI', '-', '2016-07-28', 145000.00, 390000.00, 'C002', 10, 'UNIT');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_pembelian`
--

CREATE TABLE `tb_detail_pembelian` (
  `no_faktur` varchar(30) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `harga_beli` double(10,2) NOT NULL,
  `qty` int(4) NOT NULL,
  `petugas` int(11) NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_pembelian`
--

INSERT INTO `tb_detail_pembelian` (`no_faktur`, `kode_barang`, `harga_beli`, `qty`, `petugas`, `timestmp`) VALUES
('TR001', 'AD00001', 56000.00, 10, 1, '2016-08-03 22:29:09'),
('TR001', 'AD00006', 132000.00, 10, 1, '2016-08-03 22:29:09'),
('TR002', 'AD00001', 55000.00, 2, 1, '2016-08-03 22:35:02'),
('TR002', 'AD00008', 148000.00, 15, 1, '2016-08-03 22:35:02');

--
-- Triggers `tb_detail_pembelian`
--
DELIMITER $$
CREATE TRIGGER `after_insert_tmp_beli` AFTER INSERT ON `tb_detail_pembelian` FOR EACH ROW BEGIN
	DELETE FROM tb_detail_pembelian_tmp 
	WHERE kode_barang = NEW.kode_barang 
	AND petugas = NEW.petugas;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_pembelian_tmp`
--

CREATE TABLE `tb_detail_pembelian_tmp` (
  `kode_barang` varchar(30) NOT NULL,
  `harga_beli` double(10,2) NOT NULL,
  `qty` int(4) NOT NULL,
  `petugas` int(11) NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_penjualan`
--

CREATE TABLE `tb_detail_penjualan` (
  `no_transaksi` varchar(30) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `qty` int(4) NOT NULL,
  `harga` double(10,2) NOT NULL,
  `disc` double(5,2) NOT NULL,
  `petugas` int(11) NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_penjualan`
--

INSERT INTO `tb_detail_penjualan` (`no_transaksi`, `kode_barang`, `qty`, `harga`, `disc`, `petugas`, `timestmp`) VALUES
('CA03081600001', 'AD00001', 1, 150000.00, 0.00, 1, '2016-08-03 21:07:14'),
('CA03081600002', 'AD00001', 1, 150000.00, 0.00, 1, '2016-08-03 21:13:05'),
('CA03081600002', 'AD00003', 1, 150000.00, 0.00, 1, '2016-08-03 21:13:06'),
('CA03081600002', 'AD00004', 1, 150000.00, 0.00, 1, '2016-08-03 21:13:07'),
('CA03081600002', 'AD00005', 1, 150000.00, 0.00, 1, '2016-08-03 21:13:09');

--
-- Triggers `tb_detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `after_insert_delete_tmp` AFTER INSERT ON `tb_detail_penjualan` FOR EACH ROW BEGIN
	DELETE FROM tb_detail_penjualan_tmp 
	WHERE kode_barang = NEW.kode_barang 
	AND petugas = NEW.petugas;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_penjualan_tmp`
--

CREATE TABLE `tb_detail_penjualan_tmp` (
  `kode_barang` varchar(50) NOT NULL,
  `harga` double(10,2) NOT NULL,
  `disc` double(10,2) NOT NULL,
  `qty` int(4) NOT NULL,
  `petugas` int(11) NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_barang`
--

CREATE TABLE `tb_kategori_barang` (
  `kategori_id` char(5) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_barang`
--

INSERT INTO `tb_kategori_barang` (`kategori_id`, `nama_kategori`) VALUES
('C001', 'LAPTOP'),
('C002', 'ADAPTOR'),
('C003', 'JASA SERVICE');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `id_log` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`id_log`, `deskripsi`, `timestmp`) VALUES
(26, '<span class=\'w3-text-green\'>Berhasil melakukan transaksi penjualan dengan nomor transaksi : </span>CA03081600001', '2016-08-03 21:07:25'),
(27, '<span class=\'w3-text-green\'>Berhasil melakukan transaksi penjualan dengan nomor transaksi : </span>CA03081600002', '2016-08-03 21:13:24'),
(28, '<span class=\'w3-text-green\'>Berhasil melakukan transaksi penjualan dengan nomor transaksi : </span>CA04081600001', '2016-08-04 13:33:06'),
(29, '<span class=\'w3-text-red\'>Transaksi penjualan telah di hapus dengan nomor transaksi</span> :CA04081600001', '2016-08-04 13:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `kode_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `nomor_telp` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`kode_pelanggan`, `nama_pelanggan`, `nomor_telp`, `alamat`) VALUES
('P0001', 'ADE INDRA SAPUTRA', '085227281672', 'JL. TP. SRIWIJAYA PERUM. VILLA MELATI ASRI NO. 42'),
('P0002', 'JAYA MOTOR', '', 'SIMPANG TELKOM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `no_faktur` varchar(30) NOT NULL,
  `kode_supplier` varchar(10) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `tgl_beli` date NOT NULL,
  `nama_kasir` varchar(50) NOT NULL,
  `petugas` int(11) NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`no_faktur`, `kode_supplier`, `nama_toko`, `tgl_beli`, `nama_kasir`, `petugas`, `timestmp`) VALUES
('TR001', 'S0001', 'ELEVEN', '2016-08-03', 'BUJANG', 1, '2016-08-03 22:29:09'),
('TR002', 'S0002', 'TIGER ONE', '2016-08-03', 'MAT LENO', 1, '2016-08-03 22:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `no_transaksi` varchar(30) NOT NULL,
  `kode_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `petugas` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bayar` double(10,2) NOT NULL,
  `potongan` double(10,2) NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`no_transaksi`, `kode_pelanggan`, `nama_pelanggan`, `tgl_transaksi`, `petugas`, `status`, `bayar`, `potongan`, `timestmp`) VALUES
('CA03081600001', 'P0001', 'ADE INDRA SAPUTRA', '2016-08-03', 1, 'LUNAS', 150000.00, 20000.00, '2016-08-03 21:07:25'),
('CA03081600002', 'P0002', 'JAYA MOTOR', '2016-08-03', 1, 'LUNAS', 600000.00, 0.00, '2016-08-03 21:13:24');

--
-- Triggers `tb_penjualan`
--
DELIMITER $$
CREATE TRIGGER `after_delete_penjualan` AFTER DELETE ON `tb_penjualan` FOR EACH ROW BEGIN
	INSERT INTO tb_log(deskripsi, timestmp) 
	VALUES(CONCAT("<span class='w3-text-red'>Transaksi penjualan telah di hapus dengan nomor transaksi</span> :", OLD.no_transaksi), NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_penjualan` AFTER INSERT ON `tb_penjualan` FOR EACH ROW BEGIN
	INSERT INTO tb_log(deskripsi, timestmp) 
	VALUES(CONCAT("<span class='w3-text-green'>Berhasil melakukan transaksi penjualan dengan nomor transaksi : </span>", NEW.no_transaksi), NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_retur_pembelian`
--

CREATE TABLE `tb_retur_pembelian` (
  `no_faktur` varchar(30) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `harga_beli` double(10,2) NOT NULL,
  `qty` int(4) NOT NULL,
  `petugas` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_retur_penjualan`
--

CREATE TABLE `tb_retur_penjualan` (
  `no_transaksi` varchar(30) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `qty` int(4) NOT NULL,
  `harga` double(10,2) NOT NULL,
  `disc` double(5,2) NOT NULL,
  `petugas` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `timestmp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_satuan_barang`
--

CREATE TABLE `tb_satuan_barang` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_satuan_barang`
--

INSERT INTO `tb_satuan_barang` (`id_satuan`, `nama_satuan`) VALUES
(18, 'PCS'),
(19, 'UNIT');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `kode_supplier` varchar(10) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`kode_supplier`, `nama_toko`, `alamat`, `telepon`, `email`) VALUES
('S0001', 'ELEVEN', 'JAMBI', '888', '-'),
('S0002', 'TIGER ONE', 'JAMBI', '888', '-');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(45) NOT NULL,
  `usernm` varchar(20) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `last_login` datetime NOT NULL,
  `akses_master` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `usernm`, `passwd`, `level`, `last_login`, `akses_master`) VALUES
(1, 'ADMINISTRATOR', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '2016-08-09 21:52:41', ''),
(2, 'CACA', 'caca', 'd2104a400c7f629a197f33bb33fe80c0', 'user', '2016-08-02 12:46:58', 'pelanggan, supplier'),
(3, 'AGUS', 'agus', 'fdf169558242ee051cca1479770ebac3', 'admin', '2016-07-31 15:57:33', '');

-- --------------------------------------------------------

--
-- Structure for view `barang_laris`
--
DROP TABLE IF EXISTS `barang_laris`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `barang_laris`  AS SELECT `a`.`kode_barang` AS `kode_barang`, `a`.`nama_barang` AS `nama_barang`, count(`a`.`kode_barang`) AS `jumlah`, `a`.`satuan` AS `satuan` FROM (`tb_barang` `a` join `tb_detail_penjualan` `b`) WHERE `a`.`kode_barang` = `b`.`kode_barang` GROUP BY `a`.`kode_barang` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `FK_tb_produk_tb_kategori_produk` (`kategori_id`);

--
-- Indexes for table `tb_detail_pembelian`
--
ALTER TABLE `tb_detail_pembelian`
  ADD PRIMARY KEY (`no_faktur`,`kode_barang`),
  ADD KEY `FK_tb_detailbeli_tb_produk` (`kode_barang`);

--
-- Indexes for table `tb_detail_pembelian_tmp`
--
ALTER TABLE `tb_detail_pembelian_tmp`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tb_detail_penjualan`
--
ALTER TABLE `tb_detail_penjualan`
  ADD PRIMARY KEY (`no_transaksi`,`kode_barang`),
  ADD KEY `FK_tb_detailproduk_tb_produk` (`kode_barang`);

--
-- Indexes for table `tb_detail_penjualan_tmp`
--
ALTER TABLE `tb_detail_penjualan_tmp`
  ADD PRIMARY KEY (`petugas`,`kode_barang`);

--
-- Indexes for table `tb_kategori_barang`
--
ALTER TABLE `tb_kategori_barang`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `tb_retur_pembelian`
--
ALTER TABLE `tb_retur_pembelian`
  ADD PRIMARY KEY (`no_faktur`,`kode_barang`),
  ADD KEY `FK_tb_detailbeli_tb_produk` (`kode_barang`);

--
-- Indexes for table `tb_retur_penjualan`
--
ALTER TABLE `tb_retur_penjualan`
  ADD PRIMARY KEY (`kode_barang`,`no_transaksi`);

--
-- Indexes for table `tb_satuan_barang`
--
ALTER TABLE `tb_satuan_barang`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_satuan_barang`
--
ALTER TABLE `tb_satuan_barang`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `FK_tb_produk_tb_kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `tb_kategori_barang` (`kategori_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_detail_pembelian`
--
ALTER TABLE `tb_detail_pembelian`
  ADD CONSTRAINT `FK_tb_detail_pembelian_tb_barang` FOREIGN KEY (`kode_barang`) REFERENCES `tb_barang` (`kode_barang`),
  ADD CONSTRAINT `FK_tb_detail_pembelian_tb_pembelian` FOREIGN KEY (`no_faktur`) REFERENCES `tb_pembelian` (`no_faktur`) ON DELETE CASCADE;

--
-- Constraints for table `tb_detail_penjualan`
--
ALTER TABLE `tb_detail_penjualan`
  ADD CONSTRAINT `FK_tb_detail_penjualan_tb_barang` FOREIGN KEY (`kode_barang`) REFERENCES `tb_barang` (`kode_barang`),
  ADD CONSTRAINT `FK_tb_detailproduk_tb_pembayaran` FOREIGN KEY (`no_transaksi`) REFERENCES `tb_penjualan` (`no_transaksi`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-07-05 13:26:41', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sosmed`
--
CREATE DATABASE IF NOT EXISTS `sosmed` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sosmed`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add instagram', 7, 'add_instagram'),
(20, 'Can change instagram', 7, 'change_instagram'),
(21, 'Can delete instagram', 7, 'delete_instagram'),
(22, 'Can add youtube', 8, 'add_youtube'),
(23, 'Can change youtube', 8, 'change_youtube'),
(24, 'Can delete youtube', 8, 'delete_youtube');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_youtube`
--

CREATE TABLE `blog_youtube` (
  `id` int(11) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_youtube`
--

INSERT INTO `blog_youtube` (`id`, `nama_akun`, `email`, `video`) VALUES
(1, 'crasshover', 'muhhafizh33@gmail.com', 'django');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'blog', 'youtube'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'sosmed', 'instagram');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-17 14:30:03.355551'),
(2, 'auth', '0001_initial', '2021-05-17 14:30:14.308006'),
(3, 'admin', '0001_initial', '2021-05-17 14:30:16.819751'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-17 14:30:16.883732'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-05-17 14:30:18.659744'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-05-17 14:30:19.827652'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-05-17 14:30:20.155641'),
(8, 'auth', '0004_alter_user_username_opts', '2021-05-17 14:30:20.235598'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-05-17 14:30:21.363508'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-05-17 14:30:21.483480'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2021-05-17 14:30:21.539480'),
(12, 'auth', '0008_alter_user_username_max_length', '2021-05-17 14:30:21.707460'),
(13, 'blog', '0001_initial', '2021-05-17 14:30:22.099425'),
(14, 'blog', '0002_auto_20210517_2128', '2021-05-17 14:30:22.499424'),
(15, 'sessions', '0001_initial', '2021-05-17 14:30:23.155329'),
(16, 'sosmed', '0001_initial', '2021-05-17 14:30:23.603292');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sosmed_instagram`
--

CREATE TABLE `sosmed_instagram` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sosmed_instagram`
--

INSERT INTO `sosmed_instagram` (`id`, `nama_depan`, `nama_belakang`, `username`) VALUES
(1, 'Hafizh', 'Londata', 'crasshover'),
(2, 'Coba', 'Lagi', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_youtube`
--
ALTER TABLE `blog_youtube`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `sosmed_instagram`
--
ALTER TABLE `sosmed_instagram`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_youtube`
--
ALTER TABLE `blog_youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sosmed_instagram`
--
ALTER TABLE `sosmed_instagram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-23 08:41:10.259080'),
(2, 'auth', '0001_initial', '2021-06-23 08:41:21.022311'),
(3, 'admin', '0001_initial', '2021-06-23 08:41:23.313003'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-23 08:41:23.344248'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-23 08:41:23.428563'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-23 08:41:24.199105'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-23 08:41:24.330723'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-23 08:41:24.462238'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-23 08:41:24.515729'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-23 08:41:25.117552'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-23 08:41:25.180046'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-23 08:41:25.249246'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-23 08:41:25.418937'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-23 08:41:25.566162'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-23 08:41:25.697839'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-23 08:41:25.766894'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-06-23 08:41:25.882899'),
(18, 'sessions', '0001_initial', '2021-06-23 08:41:27.340975');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `tes_pbo`
--
CREATE DATABASE IF NOT EXISTS `tes_pbo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tes_pbo`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add perpustakaan', 7, 'add_perpustakaan'),
(20, 'Can change perpustakaan', 7, 'change_perpustakaan'),
(21, 'Can delete perpustakaan', 7, 'delete_perpustakaan'),
(22, 'Can add barang', 8, 'add_barang'),
(23, 'Can change barang', 8, 'change_barang'),
(24, 'Can delete barang', 8, 'delete_barang'),
(25, 'Can add pelanggan', 9, 'add_pelanggan'),
(26, 'Can change pelanggan', 9, 'change_pelanggan'),
(27, 'Can delete pelanggan', 9, 'delete_pelanggan'),
(28, 'Can add peminjam', 10, 'add_peminjam'),
(29, 'Can change peminjam', 10, 'change_peminjam'),
(30, 'Can delete peminjam', 10, 'delete_peminjam'),
(31, 'Can view log entry', 1, 'view_logentry'),
(32, 'Can view permission', 2, 'view_permission'),
(33, 'Can view group', 3, 'view_group'),
(34, 'Can view user', 4, 'view_user'),
(35, 'Can view content type', 5, 'view_contenttype'),
(36, 'Can view session', 6, 'view_session'),
(37, 'Can view perpustakaan', 7, 'view_perpustakaan'),
(38, 'Can view barang', 8, 'view_barang'),
(39, 'Can view pelanggan', 9, 'view_pelanggan'),
(40, 'Can view peminjam', 10, 'view_peminjam');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$hG4adTQIAKN8GbCPbvUsUU$zhdTz2bj/EA8KSob2504daIH0387nHWYzncIwijBu+Y=', '2021-06-04 01:31:04.778130', 1, 'admin', '', '', 'admin11@gmail.com', 1, 1, '2021-06-04 01:30:48.132386');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_peminjam`
--

CREATE TABLE `borrowing_peminjam` (
  `id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `items_id_id` int(11) NOT NULL,
  `subscriber_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowing_peminjam`
--

INSERT INTO `borrowing_peminjam` (`id`, `borrow_date`, `return_date`, `fee`, `items_id_id`, `subscriber_id_id`) VALUES
(4, '2021-05-21', '2021-06-01', 0, 2, 57),
(5, '2021-05-26', '2021-06-10', 0, 1, 49),
(6, '2021-05-15', '2021-06-15', 5000, 3, 81);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'borrowing', 'peminjam'),
(5, 'contenttypes', 'contenttype'),
(8, 'items', 'barang'),
(7, 'library', 'perpustakaan'),
(6, 'sessions', 'session'),
(9, 'subscribers', 'pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-25 15:21:59.851173'),
(2, 'auth', '0001_initial', '2021-05-25 15:22:08.918122'),
(3, 'admin', '0001_initial', '2021-05-25 15:22:10.833321'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-25 15:22:10.973185'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-05-25 15:22:11.697299'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-05-25 15:22:12.691357'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-05-25 15:22:12.914127'),
(8, 'auth', '0004_alter_user_username_opts', '2021-05-25 15:22:12.980809'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-05-25 15:22:13.812349'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-05-25 15:22:13.879847'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2021-05-25 15:22:13.960311'),
(12, 'auth', '0008_alter_user_username_max_length', '2021-05-25 15:22:14.089004'),
(13, 'subscribers', '0001_initial', '2021-05-25 15:22:14.343133'),
(14, 'library', '0001_initial', '2021-05-25 15:22:14.588849'),
(15, 'items', '0001_initial', '2021-05-25 15:22:16.022675'),
(16, 'borrowing', '0001_initial', '2021-05-25 15:22:18.273854'),
(17, 'sessions', '0001_initial', '2021-05-25 15:22:18.796192'),
(18, 'borrowing', '0002_auto_20210525_2223', '2021-05-25 15:23:18.103677'),
(19, 'borrowing', '0003_auto_20210525_2245', '2021-05-25 15:45:51.674941'),
(20, 'items', '0002_barang_id', '2021-05-25 15:45:51.814453'),
(21, 'library', '0002_perpustakaan_id', '2021-05-25 15:45:52.002322'),
(22, 'subscribers', '0002_pelanggan_id', '2021-05-25 15:45:52.329794'),
(23, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-26 00:54:32.183780'),
(24, 'auth', '0009_alter_user_last_name_max_length', '2021-05-26 00:54:32.434351'),
(25, 'auth', '0010_alter_group_name_max_length', '2021-05-26 00:54:32.679579'),
(26, 'auth', '0011_update_proxy_permissions', '2021-05-26 00:54:32.764694'),
(27, 'auth', '0012_alter_user_first_name_max_length', '2021-05-26 00:54:33.114739');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('op9rwwi3wo9mlvz3rncjk17igdigvaol', '.eJxVjEEOwiAQRe_C2pDCAFNcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWSpx-t0jpwW0H-U7tNss0t3WZotwVedAur3Pm5-Vw_w4q9fqtzWi8A4eDH5A0UUSKI3BJltlBwgKGLRXQqkSbC9kI6AkdausVgBPvD98EN7A:1loyfw:6KyOVb-30aqOL3r2kSOMQpXlLT-tJUQu3BAvQEywjf0', '2021-06-18 01:31:04.890866');

-- --------------------------------------------------------

--
-- Table structure for table `items_barang`
--

CREATE TABLE `items_barang` (
  `id_items` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `copies` varchar(100) NOT NULL,
  `id_library_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_barang`
--

INSERT INTO `items_barang` (`id_items`, `category`, `title`, `author`, `publisher`, `year`, `copies`, `id_library_id`, `id`) VALUES
(1, 'Book', 'Introduction to Java Programming', 'Daniel Lang', 'Person', '2018', '10', 111, 2),
(2, 'Digital Media', 'Python 3 Object Oriented Programming', 'Dusty Phillips', 'Packt', '2010', '7', 112, 3),
(3, 'Article On Jurnal', 'A Novel Approach for Making Recommendation using Skyline Query based on user Location and Preference', 'Sanket Shah*, Amit Thakkar and Sonal Rami', 'Indian Journal of Science and Technology', '2020', '10', 113, 4);

-- --------------------------------------------------------

--
-- Table structure for table `library_perpustakaan`
--

CREATE TABLE `library_perpustakaan` (
  `id_library` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_perpustakaan`
--

INSERT INTO `library_perpustakaan` (`id_library`, `name`, `id`) VALUES
(111, 'Gedung E', 3),
(112, 'Gedung F', 4),
(113, 'Gedung Kuliah Umum', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_pelanggan`
--

CREATE TABLE `subscribers_pelanggan` (
  `subscriber_id` int(11) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers_pelanggan`
--

INSERT INTO `subscribers_pelanggan` (`subscriber_id`, `tipe`, `name`, `address`, `phone`, `email`, `id`) VALUES
(49, 'Golden', 'Hafizh', 'Pringsewu', '085766432199', 'hafizh@gmail.com', 2),
(57, 'Reguler', 'Heksa', 'Banjarrejo', '089534093462', 'heksa.danajaya@gmail.com', 3),
(81, 'Reguler', 'Gilang', 'Metro', '085233478912', 'gilang.aja@gmail.com', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowing_peminjam_items_id_id_9247031e_fk_items_barang_id_items` (`items_id_id`),
  ADD KEY `borrowing_peminjam_subscriber_id_id_fea4436c_fk_subscribe` (`subscriber_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD PRIMARY KEY (`id_items`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `items_barang_id_library_id_7d4462e5_fk_library_p` (`id_library_id`);

--
-- Indexes for table `library_perpustakaan`
--
ALTER TABLE `library_perpustakaan`
  ADD PRIMARY KEY (`id_library`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `subscribers_pelanggan`
--
ALTER TABLE `subscribers_pelanggan`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `items_barang`
--
ALTER TABLE `items_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `library_perpustakaan`
--
ALTER TABLE `library_perpustakaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribers_pelanggan`
--
ALTER TABLE `subscribers_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  ADD CONSTRAINT `borrowing_peminjam_items_id_id_9247031e_fk_items_barang_id_items` FOREIGN KEY (`items_id_id`) REFERENCES `items_barang` (`id_items`),
  ADD CONSTRAINT `borrowing_peminjam_subscriber_id_id_fea4436c_fk_subscribe` FOREIGN KEY (`subscriber_id_id`) REFERENCES `subscribers_pelanggan` (`subscriber_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD CONSTRAINT `items_barang_id_library_id_7d4462e5_fk_library_p` FOREIGN KEY (`id_library_id`) REFERENCES `library_perpustakaan` (`id_library`);
--
-- Database: `tjm`
--
CREATE DATABASE IF NOT EXISTS `tjm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tjm`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `gambar` varchar(255) NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) NOT NULL DEFAULT 'sb_admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `status`, `gambar`, `theme`) VALUES
(2, 'admin@admin.com', 'admin', 'admin', 1, 'default.png', 'sb_admin');

-- --------------------------------------------------------

--
-- Table structure for table `tjm_menu`
--

CREATE TABLE `tjm_menu` (
  `id` int(11) NOT NULL,
  `parent_menu` int(11) NOT NULL DEFAULT 1,
  `nama_menu` varchar(50) NOT NULL,
  `url_menu` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` tinyint(3) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin','Guru') NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjm_menu`
--

INSERT INTO `tjm_menu` (`id`, `parent_menu`, `nama_menu`, `url_menu`, `icon`, `urutan`, `status`, `type`) VALUES
(1, 1, 'root', '/', '', 0, 0, 'Admin'),
(2, 1, 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', 1, 1, 'Admin'),
(3, 1, 'User Admin', 'admin/useradmin', 'fa fa-users', 99, 0, 'Admin'),
(4, 1, 'Menu', 'admin/menu', 'fa fa-gear', 100, 0, 'Admin'),
(25, 1, 'Master', 'admin/master', 'fa fa-ticket', 2, 1, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Database: `topup`
--
CREATE DATABASE IF NOT EXISTS `topup` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `topup`;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_pengguna`
--

CREATE TABLE `pengguna_pengguna` (
  `id_game` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telepon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna_pengguna`
--

INSERT INTO `pengguna_pengguna` (`id_game`, `nama`, `email`, `no_telepon`) VALUES
('1234567', 'Rana', 'Rana@gmail.com', '081234567891');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna_pengguna`
--
ALTER TABLE `pengguna_pengguna`
  ADD PRIMARY KEY (`id_game`);
--
-- Database: `top_up`
--
CREATE DATABASE IF NOT EXISTS `top_up` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `top_up`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add pengguna', 7, 'add_pengguna'),
(20, 'Can change pengguna', 7, 'change_pengguna'),
(21, 'Can delete pengguna', 7, 'delete_pengguna'),
(22, 'Can add barang', 8, 'add_barang'),
(23, 'Can change barang', 8, 'change_barang'),
(24, 'Can delete barang', 8, 'delete_barang'),
(25, 'Can add transaksi', 9, 'add_transaksi'),
(26, 'Can change transaksi', 9, 'change_transaksi'),
(27, 'Can delete transaksi', 9, 'delete_transaksi'),
(28, 'Can add validators', 10, 'add_validators'),
(29, 'Can change validators', 10, 'change_validators'),
(30, 'Can delete validators', 10, 'delete_validators');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'items', 'barang'),
(7, 'pengguna', 'pengguna'),
(6, 'sessions', 'session'),
(9, 'transaksi', 'transaksi'),
(10, 'validator', 'validators');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-18 16:30:12.624511'),
(2, 'auth', '0001_initial', '2021-05-18 16:30:23.674379'),
(3, 'admin', '0001_initial', '2021-05-18 16:30:25.869108'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-18 16:30:25.927072'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-05-18 16:30:26.704534'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-05-18 16:30:27.544005'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-05-18 16:30:27.688967'),
(8, 'auth', '0004_alter_user_username_opts', '2021-05-18 16:30:27.739018'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-05-18 16:30:28.820877'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-05-18 16:30:28.890583'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2021-05-18 16:30:28.973639'),
(12, 'auth', '0008_alter_user_username_max_length', '2021-05-18 16:30:29.159704'),
(13, 'items', '0001_initial', '2021-05-18 16:30:29.437266'),
(14, 'items', '0002_auto_20210518_2329', '2021-05-18 16:30:29.921383'),
(15, 'pengguna', '0001_initial', '2021-05-18 16:30:30.158758'),
(16, 'pengguna', '0002_auto_20210518_2329', '2021-05-18 16:30:30.601316'),
(17, 'sessions', '0001_initial', '2021-05-18 16:30:31.133760'),
(18, 'transaksi', '0001_initial', '2021-05-18 16:30:31.426486'),
(19, 'transaksi', '0002_auto_20210518_2329', '2021-05-18 16:30:31.862772'),
(20, 'validator', '0001_initial', '2021-05-18 16:30:32.164874'),
(21, 'validator', '0002_auto_20210518_2329', '2021-05-18 16:30:32.811064');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items_barang`
--

CREATE TABLE `items_barang` (
  `id` int(11) NOT NULL,
  `nama_game` varchar(100) NOT NULL,
  `id_game` varchar(100) NOT NULL,
  `nominal` varchar(100) NOT NULL,
  `harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_barang`
--

INSERT INTO `items_barang` (`id`, `nama_game`, `id_game`, `nominal`, `harga`) VALUES
(4, 'Garena Free Fire', '1239987', '75 diamond', '100000'),
(5, 'Genshin Impact', '1928776', '150 crystal', '400000'),
(1, 'Mobile Legend', '1234567', '100 diamond', '150000'),
(3, 'PES Mobile', '1239487', '45 coin', '100000'),
(2, 'PUBG', '1234765', '15 uc', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_pengguna`
--

CREATE TABLE `pengguna_pengguna` (
  `id` int(11) NOT NULL,
  `id_game` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna_pengguna`
--

INSERT INTO `pengguna_pengguna` (`id`, `id_game`, `nama`, `email`, `no_telepon`) VALUES
(1, '1234567', 'Rani', 'Rani@gmail.com', '081234567891'),
(3, '1234765', 'Roni', 'Roni@gmail.com', '081733332154'),
(4, '1239487', 'Rana', 'Rana@gmail.com', '081347442574'),
(5, '1239987', 'Asep', 'Asep@gmail.com', '081344442323'),
(6, '1928776', 'Bejo', 'Bejo@gmail.com', '081234557655');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_transaksi`
--

CREATE TABLE `transaksi_transaksi` (
  `id` int(11) NOT NULL,
  `id_transaksi` varchar(100) NOT NULL,
  `tgl_transaksi` varchar(100) NOT NULL,
  `virtual_code` varchar(100) NOT NULL,
  `jenis_pembayaran` varchar(100) NOT NULL,
  `nama_game` varchar(100) NOT NULL,
  `nominal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_transaksi`
--

INSERT INTO `transaksi_transaksi` (`id`, `id_transaksi`, `tgl_transaksi`, `virtual_code`, `jenis_pembayaran`, `nama_game`, `nominal`) VALUES
(3, '816222', '15/05/2021', '903222', 'DANA', 'Garena Free Fire', '75 diamond'),
(1, '816333', '19/05/2021', '903999', 'GOPAY', 'Mobile Legend', '100 diamond'),
(2, '816444', '12/05/2021', '903444', 'OVO', 'PUBG', '15 uc'),
(4, '816777', '04/05/2021', '903111', 'GOPAY', 'PES Mobile', '45 coin'),
(5, '816888', '01/05/2021', '903555', 'OVO', 'Genshin Impact', '150 crystal');

-- --------------------------------------------------------

--
-- Table structure for table `validator_validators`
--

CREATE TABLE `validator_validators` (
  `id` int(11) NOT NULL,
  `id_pegawai` varchar(100) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `id_transaksi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `validator_validators`
--

INSERT INTO `validator_validators` (`id`, `id_pegawai`, `nama_pegawai`, `id_transaksi`) VALUES
(1, '123444', 'Heksa', '816333'),
(4, '123555', 'Aldi', '816222'),
(5, '123666', 'Veni', '816888'),
(2, '123888', 'Hani', '816444'),
(3, '123999', 'Leni', '816777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD PRIMARY KEY (`nama_game`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_game` (`id_game`);

--
-- Indexes for table `pengguna_pengguna`
--
ALTER TABLE `pengguna_pengguna`
  ADD PRIMARY KEY (`id_game`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `transaksi_transaksi`
--
ALTER TABLE `transaksi_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `nama_game` (`nama_game`);

--
-- Indexes for table `validator_validators`
--
ALTER TABLE `validator_validators`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `items_barang`
--
ALTER TABLE `items_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengguna_pengguna`
--
ALTER TABLE `pengguna_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi_transaksi`
--
ALTER TABLE `transaksi_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `validator_validators`
--
ALTER TABLE `validator_validators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD CONSTRAINT `items_barang_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `pengguna_pengguna` (`id_game`);

--
-- Constraints for table `transaksi_transaksi`
--
ALTER TABLE `transaksi_transaksi`
  ADD CONSTRAINT `transaksi_transaksi_ibfk_1` FOREIGN KEY (`nama_game`) REFERENCES `items_barang` (`nama_game`);

--
-- Constraints for table `validator_validators`
--
ALTER TABLE `validator_validators`
  ADD CONSTRAINT `validator_validators_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_transaksi` (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
