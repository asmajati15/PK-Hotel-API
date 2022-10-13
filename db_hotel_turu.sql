-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 10:41 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel_turu`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `review`, `created_at`, `updated_at`) VALUES
(1, 'Farhan Kebab', '@farhan.kebab@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec neque placerat, efficitur risus et, luctus mi. Praesent elit tortor, imperdiet eget risus vitae, sodales auctor arcu. Proin in molestie leo. Nunc ornare ligula ligula, eget varius ex lacinia aliquet. Nulla sollicitudin porta varius. Cras rutrum mattis tincidunt. Cras ac velit placerat, tincidunt nisl a, viverra massa. Nunc volutpat nulla at neque vulputate, id vehicula sem suscipit. Aenean erat quam, laoreet quis ornare sit amet, condimentum tempor massa. Aenean quam nibh, lacinia sit amet neque nec, sagittis faucibus diam.', '2022-10-13 01:34:02', '2022-10-13 01:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_10_13_021357_create_rooms_table', 1),
(6, '2022_10_13_021953_create_invoices_table', 1),
(7, '2022_10_13_022255_create_foods_table', 1),
(8, '2022_10_13_081252_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `type`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Regular Room', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec neque placerat, efficitur risus et, luctus mi. Praesent elit tortor, imperdiet eget risus vitae, sodales auctor arcu. Proin in molestie leo. Nunc ornare ligula ligula, eget varius ex lacinia aliquet. Nulla sollicitudin porta varius. Cras rutrum mattis tincidunt. Cras ac velit placerat, tincidunt nisl a, viverra massa. Nunc volutpat nulla at neque vulputate, id vehicula sem suscipit. Aenean erat quam, laoreet quis ornare sit amet, condimentum tempor massa. Aenean quam nibh, lacinia sit amet neque nec, sagittis faucibus diam.', '$60', '2022-10-13 03:34:32', '2022-10-13 03:34:32'),
(2, 'VIP Room', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec neque placerat, efficitur risus et, luctus mi. Praesent elit tortor, imperdiet eget risus vitae, sodales auctor arcu. Proin in molestie leo. Nunc ornare ligula ligula, eget varius ex lacinia aliquet. Nulla sollicitudin porta varius. Cras rutrum mattis tincidunt. Cras ac velit placerat, tincidunt nisl a, viverra massa. Nunc volutpat nulla at neque vulputate, id vehicula sem suscipit. Aenean erat quam, laoreet quis ornare sit amet, condimentum tempor massa. Aenean quam nibh, lacinia sit amet neque nec, sagittis faucibus diam.', '$80', '2022-10-13 03:34:32', '2022-10-13 03:34:32'),
(3, 'Exclusive Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec neque placerat, efficitur risus et, luctus mi. Praesent elit tortor, imperdiet eget risus vitae, sodales auctor arcu. Proin in molestie leo. Nunc ornare ligula ligula, eget varius ex lacinia aliquet. Nulla sollicitudin porta varius. Cras rutrum mattis tincidunt. Cras ac velit placerat, tincidunt nisl a, viverra massa. Nunc volutpat nulla at neque vulputate, id vehicula sem suscipit. Aenean erat quam, laoreet quis ornare sit amet, condimentum tempor massa. Aenean quam nibh, lacinia sit amet neque nec, sagittis faucibus diam.', '$110', '2022-10-12 21:14:38', '2022-10-12 21:32:47'),
(7, 'Exclusive Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec neque placerat, efficitur risus et, luctus mi. Praesent elit tortor, imperdiet eget risus vitae, sodales auctor arcu. Proin in molestie leo. Nunc ornare ligula ligula, eget varius ex lacinia aliquet. Nulla sollicitudin porta varius. Cras rutrum mattis tincidunt. Cras ac velit placerat, tincidunt nisl a, viverra massa. Nunc volutpat nulla at neque vulputate, id vehicula sem suscipit. Aenean erat quam, laoreet quis ornare sit amet, condimentum tempor massa. Aenean quam nibh, lacinia sit amet neque nec, sagittis faucibus diam.', '$110', '2022-10-12 21:54:36', '2022-10-12 21:54:36'),
(8, 'Exclusive Roomss', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec neque placerat, efficitur risus et, luctus mi. Praesent elit tortor, imperdiet eget risus vitae, sodales auctor arcu. Proin in molestie leo. Nunc ornare ligula ligula, eget varius ex lacinia aliquet. Nulla sollicitudin porta varius. Cras rutrum mattis tincidunt. Cras ac velit placerat, tincidunt nisl a, viverra massa. Nunc volutpat nulla at neque vulputate, id vehicula sem suscipit. Aenean erat quam, laoreet quis ornare sit amet, condimentum tempor massa. Aenean quam nibh, lacinia sit amet neque nec, sagittis faucibus diam.', '$110', '2022-10-12 22:45:13', '2022-10-12 22:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `room_id` (`room_id`);

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
