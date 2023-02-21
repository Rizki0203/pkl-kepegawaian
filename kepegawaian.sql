-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 01:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mulai_cuti` date NOT NULL,
  `berakhir_cuti` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id`, `user_id`, `mulai_cuti`, `berakhir_cuti`, `keterangan`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 2, '2023-01-31', '2023-02-03', 'pulkam', 1, '2023-01-28 09:25:08', '2023-01-28 09:29:37'),
(2, 3, '2023-02-04', '2023-02-08', 'liburan', 1, '2023-02-01 07:06:46', '2023-02-01 07:19:17'),
(3, 2, '2023-02-21', '2023-02-22', '-', 0, '2023-02-20 03:08:18', '2023-02-20 03:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `dinas`
--

CREATE TABLE `dinas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `jenis_surat_dinas` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dinas`
--

INSERT INTO `dinas` (`id`, `user_id`, `tujuan`, `perihal`, `jenis_surat_dinas`, `alasan`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 2, 'paman birin', 'pindah tempat', 'pindah tempat', 'cari pengalaman', 1, '2023-01-28 09:27:19', '2023-01-28 09:30:34'),
(2, 3, 'kepala dinas', 'izin belajar', 'pengajuan belajar melanjutkan pasca sarjana', 'syarat kenaikan pangkat', 2, '2023-02-01 07:14:26', '2023-02-01 07:20:08'),
(3, 2, 'kepala dinas', 'pindah tempat', 'pindah tempat', 'menyoba hal baru', 0, '2023-02-20 03:11:34', '2023-02-20 03:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `dinas_lampiran`
--

CREATE TABLE `dinas_lampiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dinas_id` bigint(20) UNSIGNED NOT NULL,
  `lampiran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dinas_lampiran`
--

INSERT INTO `dinas_lampiran` (`id`, `dinas_id`, `lampiran`, `created_at`, `updated_at`) VALUES
(1, 1, 'Photocopy KTP', '2023-01-28 09:27:19', '2023-01-28 09:27:19'),
(2, 1, 'Photocopy SIM', '2023-01-28 09:27:19', '2023-01-28 09:27:19'),
(3, 1, 'Photocopy KK', '2023-01-28 09:27:19', '2023-01-28 09:27:19'),
(4, 1, 'Photocopy Sertifikat', '2023-01-28 09:27:19', '2023-01-28 09:27:19'),
(5, 2, 'Photocopy KTP', '2023-02-01 07:14:26', '2023-02-01 07:14:26'),
(6, 2, 'Photocopy KK', '2023-02-01 07:14:26', '2023-02-01 07:14:26'),
(7, 2, 'Photocopy SK CPNS', '2023-02-01 07:14:26', '2023-02-01 07:14:26'),
(8, 2, 'Photocopy SK Terakhir', '2023-02-01 07:14:26', '2023-02-01 07:14:26'),
(9, 3, 'Photocopy KTP', '2023-02-20 03:11:34', '2023-02-20 03:11:34'),
(10, 3, 'Photocopy KK', '2023-02-20 03:11:34', '2023-02-20 03:11:34'),
(11, 3, 'Photocopy SK PNS', '2023-02-20 03:11:34', '2023-02-20 03:11:34'),
(12, 3, 'Photocopy SK Terakhir', '2023-02-20 03:11:34', '2023-02-20 03:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kinerja`
--

CREATE TABLE `kinerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tugas_id` bigint(20) UNSIGNED NOT NULL,
  `aktifitas` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kinerja`
--

INSERT INTO `kinerja` (`id`, `tugas_id`, `aktifitas`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 'sudah selesai', '-', '2023-01-28 09:21:44', '2023-01-28 09:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `kontrak`
--

CREATE TABLE `kontrak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kontrak` varchar(255) NOT NULL,
  `mulai_kontrak` varchar(255) NOT NULL,
  `berakhir_kontrak` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontrak`
--

INSERT INTO `kontrak` (`id`, `user_id`, `jenis_kontrak`, `mulai_kontrak`, `berakhir_kontrak`, `created_at`, `updated_at`) VALUES
(1, 2, 'honor', '2023-01-28', '2023-02-28', '2023-01-28 08:53:23', '2023-01-28 08:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_13_153034_create_profiles_table', 1),
(6, '2023_01_13_153111_create_cuti_table', 1),
(7, '2023_01_13_162036_create_kontrak_table', 1),
(8, '2023_01_14_085614_create_dinas_table', 1),
(9, '2023_01_14_090545_create_tugas_table', 1),
(10, '2023_01_14_090627_create_dinas_lampiran_table', 1),
(11, '2023_01_14_165403_create_kinerja_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `no_ktp` varchar(255) DEFAULT NULL,
  `no_sim` varchar(255) DEFAULT NULL,
  `no_npwp` varchar(255) DEFAULT NULL,
  `no_passport` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` enum('menikah','belum_menikah') NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `tinggi` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `no_rekening` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `no_ktp`, `no_sim`, `no_npwp`, `no_passport`, `jenis_kelamin`, `agama`, `alamat`, `tempat`, `tanggal_lahir`, `status`, `no_hp`, `tinggi`, `berat`, `bank`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 2, '90909090', '70707070', '80808080', '60606060', 'laki-laki', 'islam', 'martapura', 'mtp', '0001-03-02', 'menikah', '0817', 170, 70, 'kalsel', '1234', '2023-01-28 09:19:44', '2023-01-28 09:19:44'),
(2, 3, '80808080', '6060', '707070', '606060', 'laki-laki', 'islam', 'bincau', 'bincau', '2001-02-09', 'menikah', '0878', 165, 55, 'kalsel', '1234', '2023-02-01 07:03:41', '2023-02-01 07:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mulai` date NOT NULL,
  `berakhir` date NOT NULL,
  `tugas` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `user_id`, `mulai`, `berakhir`, `tugas`, `keterangan`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, 2, '2023-01-28', '2023-01-29', 'membuat surat', '-', 1, '2023-01-28 08:58:34', '2023-01-28 09:21:44'),
(2, 3, '2023-02-01', '2023-02-02', 'perjalanan dinas', '4 hari', 1, '2023-02-01 07:00:36', '2023-02-01 07:04:18'),
(3, 3, '2023-02-20', '2023-02-22', 'menerima panggilan telpon', '-', 0, '2023-02-20 03:14:30', '2023-02-20 03:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nidn`, `name`, `email`, `email_verified_at`, `password`, `role`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1234567890', 'Super Admin', 'super@admin.com', NULL, '$2y$10$hrhBsJuf6fAHEUlSqC0PG.P.xc80XJIQtWEOoa4TUuPku83V6ax0m', 'admin', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png', NULL, '2023-01-28 08:39:55', '2023-01-28 08:39:55'),
(2, '1498279478', 'muhammad rizki', 'rizki999@gmail.com', NULL, '$2y$10$QbeNme9awbUeKvsqPR1pt.gIZWx4vp/8UuTJx7f2R3Kv91uif3twy', 'user', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png', NULL, '2023-01-28 08:49:25', '2023-02-18 06:30:01'),
(3, '7942607522', 'zaini', 'zaini888@gmail.com', NULL, '$2y$10$w.1RqcMKLD7zZ7LHajYrFeTMSl8NpjXH1RJ9EcppRmNinmu57tnou', 'user', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png', NULL, '2023-02-01 06:59:11', '2023-02-18 06:36:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuti_user_id_foreign` (`user_id`);

--
-- Indexes for table `dinas`
--
ALTER TABLE `dinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dinas_user_id_foreign` (`user_id`);

--
-- Indexes for table `dinas_lampiran`
--
ALTER TABLE `dinas_lampiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dinas_lampiran_dinas_id_foreign` (`dinas_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kinerja`
--
ALTER TABLE `kinerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kinerja_tugas_id_foreign` (`tugas_id`);

--
-- Indexes for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kontrak_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dinas`
--
ALTER TABLE `dinas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dinas_lampiran`
--
ALTER TABLE `dinas_lampiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kinerja`
--
ALTER TABLE `kinerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kontrak`
--
ALTER TABLE `kontrak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuti`
--
ALTER TABLE `cuti`
  ADD CONSTRAINT `cuti_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `dinas`
--
ALTER TABLE `dinas`
  ADD CONSTRAINT `dinas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `dinas_lampiran`
--
ALTER TABLE `dinas_lampiran`
  ADD CONSTRAINT `dinas_lampiran_dinas_id_foreign` FOREIGN KEY (`dinas_id`) REFERENCES `dinas` (`id`);

--
-- Constraints for table `kinerja`
--
ALTER TABLE `kinerja`
  ADD CONSTRAINT `kinerja_tugas_id_foreign` FOREIGN KEY (`tugas_id`) REFERENCES `tugas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD CONSTRAINT `kontrak_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
