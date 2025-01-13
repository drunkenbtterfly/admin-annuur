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


-- Dumping database structure for annuur
CREATE DATABASE IF NOT EXISTS `annuur` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `annuur`;

-- Dumping structure for table annuur.donasis
CREATE TABLE IF NOT EXISTS `donasis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `qr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.donasis: ~0 rows (approximately)
INSERT INTO `donasis` (`id`, `qr`, `no_rek`, `no_telp`, `created_at`, `updated_at`) VALUES
	(1, 'donasi/qris.jpg', '7133 1480 88', '(+62) 812-3348-7147', '2025-01-06 03:05:13', '2025-01-06 03:05:13');

-- Dumping structure for table annuur.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table annuur.fasilitas
CREATE TABLE IF NOT EXISTS `fasilitas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.fasilitas: ~4 rows (approximately)
INSERT INTO `fasilitas` (`id`, `fasilitas`, `deskripsi`, `created_at`, `updated_at`) VALUES
	(1, 'Lingkungan Kondusif', 'Rumah Tahfidz dengan lingkungan serta Komunitas masyarakat yang cocok untuk kegiatan belajar dan menghafal Al Qur’an', '2025-01-06 03:20:03', '2025-01-11 09:26:48'),
	(2, 'Lokasi Strategis', 'Lokasi Rumah Tahfidz berdekatan dengan pondok-pondok, TPQ, TPA dan akses umum yang terjangkau di kota Bekasi', '2025-01-08 03:10:12', '2025-01-08 03:10:12'),
	(3, 'Kamar Representatif', 'Asrama santri putra dan putri telah dilengkapi dengan fasilitas yang menunjang seperti kasur lipat,lemari,dapur terpisah (putra dan putri). Sehingga setiap santri yang akan masuk asrama Rumah Tahfidz kami, tidak perlu membawa peralatan tersebut diatas', '2025-01-08 03:10:21', '2025-01-08 03:10:21'),
	(5, 'Wi-fi Area', 'Lingkugan asrama Rumah Tahfidz dilengkapi dengan fasilitas Wi-fi untuk menunjang komunikasi kepada orang tua, pembelajaran, dan lain sebagainya', '2025-01-11 09:33:41', '2025-01-11 09:33:41');

-- Dumping structure for table annuur.galeris
CREATE TABLE IF NOT EXISTS `galeris` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speed` double(8,2) NOT NULL,
  `rotate` double(8,2) NOT NULL,
  `kategori` enum('Fasilitas','Kegiatan','Prestasi','Santri') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.galeris: ~34 rows (approximately)
INSERT INTO `galeris` (`id`, `nama_gambar`, `deskripsi_gambar`, `url`, `speed`, `rotate`, `kategori`, `created_at`, `updated_at`) VALUES
	(1, 'Wisuda Dimas Fajar Rizki', 'Dimas Fajar Rizki tersenyum hangat sambil memegang bucket bunga, simbol apresiasi atas pencapaiannya dalam menyelesaikan hafalan 30 juz Al-Qur\'an. Suasana penuh kebahagiaan dan kebanggaan menyelimuti momen spesial ini. 🌟', 'galeri/Wisuda Dimas Fajar Rizki.webp', 0.20, 3.00, 'Prestasi', '2025-01-06 03:38:40', '2025-01-08 18:17:52'),
	(2, 'Foto Bersama Wisuda Dimas', 'Momen kebersamaan saat wisuda dimas', 'galeri/Foto Bersama Saat Wisuda Dimas.webp', 0.15, -3.00, 'Prestasi', '2025-01-08 08:35:12', '2025-01-08 18:18:15'),
	(3, 'Tasyakkur', 'Tasyakkuran Dimas Fajar Rizki', 'galeri/Tasyakkur.webp', 0.12, 3.00, 'Prestasi', '2025-01-08 18:15:43', '2025-01-08 18:18:40'),
	(4, 'Wisuda Santri 2', 'Momen wisuda ditemani oleh ustadz Yusuf Mansur', 'galeri/wisuda1.webp', 0.28, 3.00, 'Prestasi', '2025-01-08 18:17:13', '2025-01-08 21:55:35'),
	(5, 'Wisuda Santri 3', 'Momen wisuda ditemani oleh ustadz Yusuf Mansur', 'galeri/wisuda2.webp', -0.10, -3.00, 'Prestasi', '2025-01-08 18:20:19', '2025-01-08 21:56:11'),
	(6, 'Wisuda Santri 4', 'Momen wisuda ditemani oleh ustadz Yusuf Mansur', 'galeri/wisuda3.webp', 0.10, -3.00, 'Prestasi', '2025-01-08 18:21:22', '2025-01-08 19:00:46'),
	(7, 'Foto Bersama Santri Cilik', 'Momen para santri wisuda ', 'galeri/wisuda4.webp', 0.10, 3.00, 'Prestasi', '2025-01-08 19:02:50', '2025-01-08 19:02:50'),
	(8, 'Foto Bersama Santri Di Istiqlal', 'Wisuda santri di istiqlal', 'galeri/wisuda5.webp', 0.10, -3.00, 'Prestasi', '2025-01-08 19:03:52', '2025-01-08 19:03:52'),
	(9, 'Foto Bersama di Lingkungan An Nuur', 'Foto bersama sebelum berangkat ke istiqlal', 'galeri/wisuda6.webp', 0.10, 3.00, 'Prestasi', '2025-01-08 19:05:25', '2025-01-08 19:05:25'),
	(10, 'Foto Bersama di Istiqlal', 'Momen kebersamaan saat santri wisuda di istiqlal', 'galeri/wisuda7.webp', 0.10, -3.00, 'Prestasi', '2025-01-08 19:06:37', '2025-01-08 19:06:37'),
	(11, 'Tasyakkuran Santri 30 Juz', 'Momen tasyakkuran bersama ustadz sidqie', 'galeri/wisuda8.webp', 0.10, 3.00, 'Prestasi', '2025-01-08 20:47:10', '2025-01-08 20:47:10'),
	(12, 'Foto Awwarding', 'Momen awarding kepada santri yang telah menyelesaikan 30 Juz', 'galeri/wisuda9.webp', 0.10, -3.00, 'Prestasi', '2025-01-08 20:48:20', '2025-01-08 20:48:20'),
	(13, 'Tasyakkuran Santri 30 Juz', 'Momen foto bersama saat tasyakkuran', 'galeri/wisuda10.webp', 0.10, 3.00, 'Prestasi', '2025-01-08 20:49:15', '2025-01-08 20:49:15'),
	(14, 'Juara III Lomba MHQ', 'Momen seorang santri Rumah Tahfidz An-Nuur menjadi juara ke-3 MHQ', 'galeri/wisuda11.webp', 0.10, -3.00, 'Prestasi', '2025-01-08 20:50:51', '2025-01-08 20:51:15'),
	(15, 'Santri Akhwat', 'Foto bersama di halaman Rumah Tahfidz An-Nuur', 'galeri/santri1.webp', 0.10, 3.00, 'Santri', '2025-01-08 21:07:37', '2025-01-08 21:07:37'),
	(16, 'Santri Ikhwan', 'Foto bersama di halaman Rumah Tahfidz An-Nuur', 'galeri/santri2.webp', 0.10, -3.00, 'Santri', '2025-01-08 21:08:25', '2025-01-08 21:08:25'),
	(17, 'Santri Akhwat', 'Foto Bersama di Lingkungan khusus akhwat', 'galeri/santri3.webp', 0.10, 3.00, 'Santri', '2025-01-08 21:09:16', '2025-01-08 21:09:16'),
	(18, 'Santri Ikhwan dan Ustadz Sidqie', 'Foto bersama di halaman depan Rumah Tahfidz An-Nuur', 'galeri/santri4.webp', 0.10, -3.00, 'Santri', '2025-01-08 21:10:09', '2025-01-08 21:10:09'),
	(19, 'Halaman Depan Rumah Tahfidz An-Nuur', 'Foto halaman depan rumah tahfidz an-nuur', 'galeri/fasilitas1.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:12:01', '2025-01-08 21:12:01'),
	(20, 'Halaman Dalam Rumah Tahfidz An-Nuur', 'Bagian kiri untuk akhwat dan bagian kanan untuk ikhwan', 'galeri/fasilitas2.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:13:13', '2025-01-08 21:13:13'),
	(21, 'Tempat Parkir Untuk Kendaraan', 'Bagi pemilik kendaraan bisa menaruh kendaraan di halaman tersebut', 'galeri/fasilitas3.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:14:07', '2025-01-08 21:14:07'),
	(22, 'Bagian Ikhwan', 'Wilayah untuk kegiatan khusus untuk ikhwan', 'galeri/fasilitas4.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:14:53', '2025-01-08 21:14:53'),
	(23, 'Tempat Belajar Mengajar', 'Tempat santri ikhwan untuk belajar dan berkegiatan lainnya', 'galeri/fasilitas5.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:16:01', '2025-01-08 21:48:59'),
	(24, 'Dekorasi Ruangan Belajar', 'Terdapat Penghargaan dan Foto kegiatan yang telah dilalui', 'galeri/fasilitas6.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:16:49', '2025-01-08 21:49:19'),
	(25, 'Dekorasi Bagian Ikhwan', 'Terdapat piagam penghargaan', 'galeri/fasilitas7.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:17:44', '2025-01-08 21:49:32'),
	(26, 'Ruang Istirahat Santri Ikhwan', 'Saat malam tiba, santri beristirahat di sini', 'galeri/fasilitas8.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:18:45', '2025-01-08 21:18:45'),
	(27, 'Ruang Istirahat', 'Tampak dari samping', 'galeri/fasilitas9.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:19:34', '2025-01-08 21:49:47'),
	(28, 'Kamar Mandi Ikhwan', 'Terdapat 2 Kamar mandi dengan view seperti di gambar', 'galeri/fasilitas10.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:21:10', '2025-01-08 21:49:58'),
	(29, 'Bagian Depan Kamar Mandi Ikhwan', 'Terdapat peralatan mandi setiap santri di depan', 'galeri/fasilitas11.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:22:11', '2025-01-08 21:50:14'),
	(30, 'Ruang Belajar Santri Akhwat', 'Santri akhwat berkegiatan di sini', 'galeri/fasilitas12.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:22:55', '2025-01-08 21:50:24'),
	(31, 'Ruang Belajar Santri Akhwat', 'Tampak dari view yang berbeda', 'galeri/fasilitas13.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:23:37', '2025-01-08 21:24:28'),
	(32, 'Dapur Santri Akhwat', 'Santri dapat memasak di sini', 'galeri/fasilitas14.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:25:22', '2025-01-08 21:25:22'),
	(33, 'Kamar Mandi Santri Akhwat', 'View kamar mandi untuk santri akhwat', 'galeri/fasilitas15.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:26:30', '2025-01-08 21:26:30'),
	(34, 'Kamar Tidur Santri Akhwat', 'Santri akhwat beristirahat di sini', 'galeri/fasilitas16.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:27:26', '2025-01-08 21:27:26'),
	(35, 'Kamar Tidur Santri Akhwat', 'Terdapat 2 kamar untuk santri akhwat', 'galeri/fasilitas17.webp', 0.10, 3.00, 'Fasilitas', '2025-01-08 21:28:14', '2025-01-08 21:28:14'),
	(36, 'Ruang Tengah Santri Akhwat', 'Terdapat lemari santri untuk menaruh barang/baju', 'galeri/fasilitas18.webp', 0.10, -3.00, 'Fasilitas', '2025-01-08 21:29:10', '2025-01-08 21:29:10');

-- Dumping structure for table annuur.kegiatans
CREATE TABLE IF NOT EXISTS `kegiatans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `waktu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.kegiatans: ~7 rows (approximately)
INSERT INTO `kegiatans` (`id`, `waktu`, `tempat`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
	(1, '03.00', 'Rumah Tahfidz An-Nuur', 'Sholat Tahajud', 'Mempersiapkan setoran zidayah Subuh', '2025-01-06 03:14:36', '2025-01-06 03:14:36'),
	(2, '04.20', 'Rumah Tahfidz An-Nuur', 'Sholat Subuh', 'Sholat subuh berjamaah, Membaca surah Al-Waqiah bersama, Halaqah subuh (Setor Hafalan Ziyadah), Bersih-Bersih, Sarapan Pagi', '2025-01-08 02:36:41', '2025-01-08 02:36:41'),
	(3, '07.20', 'Rumah Tahfidz An-Nuur', 'Kegiatan Pagi', 'Mandi mencuci pakaian dll, Membaca surah Ar-Rahman bersama, Halaqah Pagi (Setor Hafalan Murojaah), Dirosah (Fiqh/Zafsir/Akhlaq), Qoilullah', '2025-01-08 02:52:33', '2025-01-08 02:53:42'),
	(4, '12.00', 'Rumah Tahfidz An-Nuur', 'Sholat Dzuhur', 'Shalat Dzuhur berjamaah & dzikir, Makan siang, Istirahat siang', '2025-01-08 03:01:51', '2025-01-08 03:01:51'),
	(5, '14.50', 'Rumah Tahfidz An-Nuur', 'Sholat Ashar', 'Sholat ashar berjamaah & Doa bersama, Halaqah Sore (Setor hafalan zidayah), 17.00 Mandi mencuci pakaian dll', '2025-01-08 03:02:13', '2025-01-08 03:02:13'),
	(6, '18.00', 'Rumah Tahfidz An-Nuur', 'Sholat Magrib', 'Sholat magrib berjamaah & dzikir, Murojaah mandiri, Makan malam bersama', '2025-01-08 03:02:35', '2025-01-08 03:02:35'),
	(7, '19.15', 'Rumah Tahfidz An-Nuur', 'Sholat Isya', 'Sholat isya berjamaah, Hafalan mufrodat/vocabulary (kosa kata) bahasa arab & inggris, Halaqah Mandiri (mempersiapkan setoran besok)', '2025-01-08 03:03:48', '2025-01-08 03:04:46'),
	(8, '21.00', 'Rumah Tahfidz An-Nuur', 'Istirahat', 'Saatnya santri beristirahat untuk memulihkan energi dan mempersiapkan diri menghadapi aktivitas esok hari.', '2025-01-08 03:04:17', '2025-01-08 03:04:17');

-- Dumping structure for table annuur.kegiatan_tambahans
CREATE TABLE IF NOT EXISTS `kegiatan_tambahans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.kegiatan_tambahans: ~9 rows (approximately)
INSERT INTO `kegiatan_tambahans` (`id`, `deskripsi`, `created_at`, `updated_at`) VALUES
	(1, 'Setiap senin dan kamis puasa sunnah.', '2025-01-06 03:17:36', '2025-01-08 03:08:19'),
	(2, 'Membaca surah Al-Kahfi setiap hari jumat.', '2025-01-08 03:08:34', '2025-01-08 03:08:34'),
	(3, 'Setiap sabtu malam membaca rotib haddad/Athos dan latihan muhadharah.', '2025-01-08 03:08:40', '2025-01-08 03:08:40'),
	(4, 'Penugasan imam shalat Maghrib bagi santri yang Hafidz di masjid sekitar.', '2025-01-08 03:08:47', '2025-01-08 03:08:47'),
	(5, 'Penugasan imam tarawih dan kultum saat Bulan Ramadhan di masjid-masjid sekitar.', '2025-01-08 03:08:53', '2025-01-08 03:08:53'),
	(6, 'Zoom Meeting setoran hafalan saat Libur puasa dan lebaran.', '2025-01-08 03:08:59', '2025-01-08 03:08:59'),
	(7, 'Setiap Sabtu Pagi kegiatan Shobahul Lughoh(Pagi berbahasa arab).', '2025-01-08 03:09:05', '2025-01-08 03:09:35'),
	(8, 'Setiap sabtu sore Mudarosah.', '2025-01-08 03:09:12', '2025-01-08 03:09:12'),
	(9, 'Hari Libur setiap hari Ahad', '2025-01-08 03:09:17', '2025-01-08 03:09:17'),
	(10, 'Setiap Ahad pagi Joging/CFD Bersama.', '2025-01-08 03:09:24', '2025-01-08 03:09:24');

-- Dumping structure for table annuur.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.migrations: ~12 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2025_01_06_100013_create_donasis_table', 2),
	(6, '2025_01_06_100711_create_penguruses_table', 3),
	(7, '2025_01_06_101027_create_sertifikats_table', 4),
	(8, '2025_01_06_101245_create_kegiatans_table', 5),
	(9, '2025_01_06_101510_create_kegiatan_tambahans_table', 6),
	(10, '2025_01_06_101824_create_fasilitas_table', 7),
	(11, '2025_01_06_102338_create_santri30_juzs_table', 8),
	(12, '2025_01_06_103233_create_galeris_table', 9);

-- Dumping structure for table annuur.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table annuur.penguruses
CREATE TABLE IF NOT EXISTS `penguruses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.penguruses: ~2 rows (approximately)
INSERT INTO `penguruses` (`id`, `nama`, `jabatan`, `foto`, `created_at`, `updated_at`) VALUES
	(1, 'H. Hanibal Noor Yaqub', 'Pendiri', 'penguruses/abi.webp', '2025-01-06 03:08:51', '2025-01-06 03:08:51'),
	(2, 'Hj. Ayustine Dyah', 'Pendiri', 'penguruses/umi.webp', '2025-01-06 03:09:13', '2025-01-06 03:09:13'),
	(3, 'Ustadz Sidqie', 'Pengurus', 'penguruses/ustadz.webp', '2025-01-06 03:09:30', '2025-01-06 03:09:30');

-- Dumping structure for table annuur.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table annuur.santri30_juzs
CREATE TABLE IF NOT EXISTS `santri30_juzs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.santri30_juzs: ~9 rows (approximately)
INSERT INTO `santri30_juzs` (`id`, `nama`, `asal`, `created_at`, `updated_at`) VALUES
	(1, 'A Rizqo Maulana', 'Brebes', '2025-01-06 03:26:51', '2025-01-06 03:26:51'),
	(2, 'M Rizqi Maulana', 'Brebes', '2025-01-08 02:34:04', '2025-01-08 02:34:04'),
	(3, 'Ali Hasan Al Habibi', 'Bekasi', '2025-01-08 02:34:19', '2025-01-08 02:34:19'),
	(4, 'M Ilham Setiawan', 'Jakarta', '2025-01-08 02:34:29', '2025-01-08 02:34:29'),
	(5, 'Zul Arkhan Tanjung', 'Bengkulu', '2025-01-08 02:34:38', '2025-01-08 02:34:38'),
	(6, 'Dewangga Satria Adiyajaksa', 'Padang', '2025-01-08 02:34:46', '2025-01-08 02:34:46'),
	(7, 'Faiz Al Farisi', 'Bekasi', '2025-01-08 02:34:54', '2025-01-08 02:34:54'),
	(8, 'M Hafidz Raihan', 'Medan', '2025-01-08 02:35:02', '2025-01-08 02:35:02'),
	(9, 'Dimas Fajar Rizki', 'Bogor', '2025-01-08 02:35:10', '2025-01-08 02:35:10');

-- Dumping structure for table annuur.sertifikats
CREATE TABLE IF NOT EXISTS `sertifikats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.sertifikats: ~0 rows (approximately)
INSERT INTO `sertifikats` (`id`, `sertifikat`, `created_at`, `updated_at`) VALUES
	(1, 'sertifikat/1.jpg', '2025-01-06 03:12:03', '2025-01-06 03:12:03');

-- Dumping structure for table annuur.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table annuur.users: ~0 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$QoPO.GL4A7b8W706yvjd8OOsgppFeJ2YyX9sglurZuB13KalydCBe', NULL, '2025-01-06 02:57:28', '2025-01-06 02:57:28');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
