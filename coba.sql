-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2025 pada 10.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bendas`
--

CREATE TABLE `bendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bendas`
--

INSERT INTO `bendas` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'aa', '2025-06-20 01:34:28', '2025-06-20 01:34:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `hewans`
--

CREATE TABLE `hewans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hewans`
--

INSERT INTO `hewans` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'aa', '2025-06-20 01:36:39', '2025-06-20 01:36:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manusias`
--

CREATE TABLE `manusias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `manusias`
--

INSERT INTO `manusias` (`id`, `nama`, `umur`, `alamat`, `foto`, `created_at`, `updated_at`) VALUES
(5, 'bencana alam', 22, 'ss', 'image/01JY8G5SB1NC2H4A3Z08RS62RW.png', '2025-06-20 22:42:55', '2025-06-20 22:42:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_06_20_082706_create_hewans_table', 2),
(6, '2025_06_20_082713_create_tumbuhans_table', 2),
(7, '2025_06_20_082723_create_bendas_table', 2),
(8, '2025_06_20_085314_create_permission_tables', 3),
(9, '2025_06_21_043747_create_manusias_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2025-06-20 01:53:29', '2025-06-20 01:53:29'),
(2, 'view_any_role', 'web', '2025-06-20 01:53:29', '2025-06-20 01:53:29'),
(3, 'create_role', 'web', '2025-06-20 01:53:29', '2025-06-20 01:53:29'),
(4, 'update_role', 'web', '2025-06-20 01:53:29', '2025-06-20 01:53:29'),
(5, 'delete_role', 'web', '2025-06-20 01:53:29', '2025-06-20 01:53:29'),
(6, 'delete_any_role', 'web', '2025-06-20 01:53:29', '2025-06-20 01:53:29'),
(7, 'view_benda', 'web', '2025-06-20 02:01:26', '2025-06-20 02:01:26'),
(8, 'view_any_benda', 'web', '2025-06-20 02:01:26', '2025-06-20 02:01:26'),
(9, 'create_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(10, 'update_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(11, 'restore_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(12, 'restore_any_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(13, 'replicate_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(14, 'reorder_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(15, 'delete_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(16, 'delete_any_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(17, 'force_delete_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(18, 'force_delete_any_benda', 'web', '2025-06-20 02:01:27', '2025-06-20 02:01:27'),
(19, 'view_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(20, 'view_any_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(21, 'create_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(22, 'update_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(23, 'restore_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(24, 'restore_any_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(25, 'replicate_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(26, 'reorder_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(27, 'delete_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(28, 'delete_any_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(29, 'force_delete_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(30, 'force_delete_any_hewan', 'web', '2025-06-20 11:36:23', '2025-06-20 11:36:23'),
(31, 'view_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(32, 'view_any_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(33, 'create_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(34, 'update_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(35, 'restore_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(36, 'restore_any_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(37, 'replicate_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(38, 'reorder_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(39, 'delete_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(40, 'delete_any_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(41, 'force_delete_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(42, 'force_delete_any_tumbuhan', 'web', '2025-06-20 11:36:37', '2025-06-20 11:36:37'),
(43, 'view_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(44, 'view_any_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(45, 'create_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(46, 'update_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(47, 'restore_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(48, 'restore_any_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(49, 'replicate_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(50, 'reorder_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(51, 'delete_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(52, 'delete_any_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(53, 'force_delete_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(54, 'force_delete_any_user', 'web', '2025-06-20 11:37:32', '2025-06-20 11:37:32'),
(55, 'view_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(56, 'view_any_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(57, 'create_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(58, 'update_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(59, 'restore_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(60, 'restore_any_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(61, 'replicate_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(62, 'reorder_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(63, 'delete_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(64, 'delete_any_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(65, 'force_delete_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50'),
(66, 'force_delete_any_manusia', 'web', '2025-06-20 21:46:50', '2025-06-20 21:46:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-06-20 01:53:29', '2025-06-20 01:53:29'),
(2, 'petugas', 'web', '2025-06-20 02:01:26', '2025-06-20 02:01:26'),
(3, 'jj', 'web', '2025-06-20 11:40:33', '2025-06-20 11:40:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(15, 2),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tumbuhans`
--

CREATE TABLE `tumbuhans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tumbuhans`
--

INSERT INTO `tumbuhans` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'aa', '2025-06-20 01:36:50', '2025-06-20 01:36:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dandi', 'Dandi@gmail.com', NULL, '$2y$10$CZmFTqw8dGhBcXjQ49K/YeaYAEyd3BBirYubgY9alTpDSbOyJLSmC', NULL, '2025-06-20 01:25:47', '2025-06-20 01:25:47'),
(2, 'hh', 'hh@gmail.com', NULL, 'hh', NULL, '2025-06-20 01:42:32', '2025-06-20 01:42:32'),
(3, 'iia', 'ii@gmail.com', NULL, 'ii', NULL, '2025-06-20 01:48:23', '2025-06-20 01:49:01'),
(4, 'uu', 'uu@uu.com', NULL, '$2y$10$Cg9pdc5Rz8ui.oYbVAcIi.n34YU1TmAV517MU32hCOCBGxLpV/jlK', NULL, '2025-06-20 01:49:25', '2025-06-20 01:49:25'),
(5, 'oo', 'oo@oo.com', NULL, '$2y$10$dE5tYX/fNtGHMgZkcHTR6upRid7Bt8QAnjEEjklYWKrt7Jb1W68UG', NULL, '2025-06-20 11:41:11', '2025-06-20 11:41:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bendas`
--
ALTER TABLE `bendas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hewans`
--
ALTER TABLE `hewans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `manusias`
--
ALTER TABLE `manusias`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `tumbuhans`
--
ALTER TABLE `tumbuhans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bendas`
--
ALTER TABLE `bendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hewans`
--
ALTER TABLE `hewans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `manusias`
--
ALTER TABLE `manusias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tumbuhans`
--
ALTER TABLE `tumbuhans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
