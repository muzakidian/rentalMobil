-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 27, 2012 at 06:58 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `rental`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `tblmobil`
-- 

CREATE TABLE `tblmobil` (
  `kd_mobil` varchar(30) NOT NULL,
  `type_mobil` varchar(30) NOT NULL,
  `no_mesin` varchar(30) NOT NULL,
  `no_rangka` varchar(30) NOT NULL,
  `warna_mobil` varchar(30) NOT NULL,
  `thn_pemb` varchar(6) NOT NULL,
  `hrg_sewa` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`kd_mobil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tblmobil`
-- 

INSERT INTO `tblmobil` VALUES ('BA4894WY', 'AVANZA', '332211', '212122', 'HITAM', '2009', '250000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA3442TY', 'AVANZA', '213211', '212333', 'PUTIH', '2010', '250000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA3423RE', 'AVANZA', '324342', '324234', 'HITAM', '2008', '250000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA3456YU', 'INNOVA', '343423', '324354', 'HIJAU', '2010', '300000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA3221FU', 'INNOVA', '322121', '212322', 'MERAH', '2010', '300000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA5555GY', 'INNOVA', '2345123', '2345665', 'HITAM', '2010', '300000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA217AN', 'INNOVA', '239439', '234343', 'HITAM', '2009', '300000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA1651RE', 'KIJANG', '12345678', '12345667', 'HIJAU', '2010', '500000', 'Free');
INSERT INTO `tblmobil` VALUES ('BA5555TU', 'INNOVA', '567890', '578908', 'HITAM', '2010', '300000', 'Free');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblpeminjam`
-- 

CREATE TABLE `tblpeminjam` (
  `id_peminjam` varchar(30) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jekel` varchar(13) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  PRIMARY KEY  (`id_peminjam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tblpeminjam`
-- 

INSERT INTO `tblpeminjam` VALUES ('R001', 'ANTON', 'Laki-Laki', 'JL. IMAM BONJOL', '0879564433');
INSERT INTO `tblpeminjam` VALUES ('P003', 'HERU', 'Laki-Laki', 'JL. TULANG', '0987654');
INSERT INTO `tblpeminjam` VALUES ('p00005', 'roby', 'Laki-Laki', 'jl ancak', '56789');
INSERT INTO `tblpeminjam` VALUES ('P555', 'BOTAK', 'Laki-Laki', 'JL BALI', '123456');
INSERT INTO `tblpeminjam` VALUES ('66666', 'DINUL', 'Laki-Laki', 'JATI', '3456789');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblpeminjaman`
-- 

CREATE TABLE `tblpeminjaman` (
  `kd_pinjam` varchar(30) NOT NULL,
  `id_peminjam` varchar(30) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_hrs_kembali` varchar(30) NOT NULL,
  `lama_sewa` varchar(30) NOT NULL,
  `jam_p` varchar(30) NOT NULL,
  `jam_k` varchar(30) NOT NULL,
  `dp` varchar(30) NOT NULL,
  `sisa_p` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tblpeminjaman`
-- 

INSERT INTO `tblpeminjaman` VALUES ('P001', 'R001', '2012-06-02', '2012-06-03', '1', '12', '10', '250000', '300000', '0');
INSERT INTO `tblpeminjaman` VALUES ('R005', 'P003', '2012-06-02', '2012-06-03', '1', '10', '10', '300000', '250000', '0');
INSERT INTO `tblpeminjaman` VALUES ('p888', 'R001', '2012-06-13', '2012-06-14', '1', '14', '14', '500000', '350000', '0');
INSERT INTO `tblpeminjaman` VALUES ('p99999', 'p00005', '2012-06-16', '2012-06-17', '1', '12', '12', '300000', '300000', '0');
INSERT INTO `tblpeminjaman` VALUES ('88899', 'p00005', '2012-06-02', '2012-06-03', '1', '10', '10', '200000', '300000', '0');
INSERT INTO `tblpeminjaman` VALUES ('S555', 'P555', '2012-06-17', '2012-06-19', '2', '10', '10', '500000', '600000', '0');
INSERT INTO `tblpeminjaman` VALUES ('S3444', 'P555', '2012-06-19', '2012-06-20', '1', '11', '11', '200000', '300000', '0');
INSERT INTO `tblpeminjaman` VALUES ('777777', '66666', '2012-06-23', '2012-06-24', '1', '10', '10', '300000', '300000', '0');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblpeminjamandetail`
-- 

CREATE TABLE `tblpeminjamandetail` (
  `kd_pinjam` varchar(30) NOT NULL,
  `kd_mobil` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tblpeminjamandetail`
-- 

INSERT INTO `tblpeminjamandetail` VALUES ('P001', 'BA217AN', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('P001', 'BA3423RE', '250000');
INSERT INTO `tblpeminjamandetail` VALUES ('R005', 'BA217AN', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('R005', 'BA3423RE', '250000');
INSERT INTO `tblpeminjamandetail` VALUES ('p888', 'BA3423RE', '250000');
INSERT INTO `tblpeminjamandetail` VALUES ('p888', 'BA3221FU', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('p888', 'BA3456YU', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('p99999', 'BA217AN', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('p99999', 'BA3221FU', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('88899', 'BA3423RE', '250000');
INSERT INTO `tblpeminjamandetail` VALUES ('88899', 'BA3442TY', '250000');
INSERT INTO `tblpeminjamandetail` VALUES ('S555', 'BA5555GY', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('S555', 'BA4894WY', '250000');
INSERT INTO `tblpeminjamandetail` VALUES ('S3444', 'BA1651RE', '500000');
INSERT INTO `tblpeminjamandetail` VALUES ('777777', 'BA5555TU', '300000');
INSERT INTO `tblpeminjamandetail` VALUES ('777777', 'BA217AN', '300000');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblpengembalian`
-- 

CREATE TABLE `tblpengembalian` (
  `kd_kembali` varchar(30) NOT NULL,
  `kd_pinjam` varchar(30) NOT NULL,
  `tglkembali` date NOT NULL,
  `denda` varchar(30) NOT NULL,
  `jam_t` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tblpengembalian`
-- 

INSERT INTO `tblpengembalian` VALUES ('K001', 'P001', '2012-06-07', '2200000.0', '11');
INSERT INTO `tblpengembalian` VALUES ('K888', 'R005', '2012-06-04', '1100000.0', '17');
INSERT INTO `tblpengembalian` VALUES ('k900', 'p888', '2012-06-15', '850000.0', '15');
INSERT INTO `tblpengembalian` VALUES ('k88889', 'p99999', '2012-06-17', '50000.0', '18');
INSERT INTO `tblpengembalian` VALUES ('K8889', 'S555', '2012-06-19', '0', '11');
INSERT INTO `tblpengembalian` VALUES ('K777', 'S3444', '2012-06-20', '500000.0', '18');
INSERT INTO `tblpengembalian` VALUES ('K889999', '88899', '2012-06-05', '1000000.0', '11');
INSERT INTO `tblpengembalian` VALUES ('9999', '777777', '2012-06-24', '0', '11');
