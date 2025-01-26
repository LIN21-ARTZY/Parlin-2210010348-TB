-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gudang
CREATE DATABASE IF NOT EXISTS `gudang` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gudang`;

-- Dumping structure for table gudang.barang_keluar
CREATE TABLE IF NOT EXISTS `barang_keluar` (
  `id_keluar` int NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_keluar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gudang.barang_keluar: ~0 rows (approximately)
INSERT INTO `barang_keluar` (`id_keluar`, `nama_barang`, `jumlah`, `tanggal_keluar`, `keterangan`) VALUES
	(1, 'Rexona Men', 100, '2025-01-11', 'Barang telah dibeli'),
	(2, 'Nivea Men', 10, '2025-01-24', 'barang sudah dibeli');

-- Dumping structure for table gudang.barang_masuk
CREATE TABLE IF NOT EXISTS `barang_masuk` (
  `id_masuk` int NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_masuk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gudang.barang_masuk: ~4 rows (approximately)
INSERT INTO `barang_masuk` (`id_masuk`, `nama_barang`, `jumlah`, `tanggal_masuk`, `keterangan`) VALUES
	(1, 'Sabun Daia', 12, '2025-01-04', 'ini adalah sabun yang digunakan untuk mencuci pakaian'),
	(2, 'Sabun Daia', 12, '2025-01-04', 'ini adalah sabun'),
	(3, 'Sabun Daia', 12, '2025-01-04', 'Ini adalah sabun'),
	(5, 'Rexona Men', 12, '2025-01-04', 'Ini adalah deodorant');

-- Dumping structure for table gudang.transaksi
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int NOT NULL,
  `tipe_transaksi` enum('masuk','keluar') NOT NULL,
  `harga_satuan` double NOT NULL,
  `harga_total` double NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_transaksi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gudang.transaksi: ~3 rows (approximately)
INSERT INTO `transaksi` (`id_transaksi`, `nama_barang`, `jumlah`, `tipe_transaksi`, `harga_satuan`, `harga_total`, `tanggal_transaksi`, `keterangan`) VALUES
	(1, 'So Klin', 12, 'masuk', 12000, 144000, '2025-01-03', 'Advc'),
	(2, 'So Klin liquid', 12, 'keluar', 5000, 60000, '2025-01-04', 'ini adalah sabun cuci'),
	(4, 'Rexona Men', 20, 'keluar', 23000, 460000, '2025-01-04', 'Barang sudah dibeli');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
