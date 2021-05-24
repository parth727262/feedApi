-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 01:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_added_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_added_by`, `created_at`, `updated_at`) VALUES
(1, 'covid', 'vijay', '2021-05-22 00:43:44', '2021-05-22 00:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `counsellors`
--

CREATE TABLE `counsellors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `counsellor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counsellor_whatsapp_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counsellor_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counsellor_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_avaliability` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_avaliability` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avaliability_status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counsellors`
--

INSERT INTO `counsellors` (`id`, `counsellor_name`, `counsellor_whatsapp_no`, `counsellor_contact_number`, `counsellor_email`, `day_avaliability`, `time_avaliability`, `avaliability_status`, `created_at`, `updated_at`) VALUES
(2, 'sandip', '1111111111', '2222222222', 'sandip@gmail.com', 'monday,tuesday', '13:00 to 15:00,18:00 to 21:00', 0, '2021-05-21 04:43:23', '2021-05-21 10:22:36'),
(3, 'sandip', '1111111111', '2222222222', 'sandip@gmail.com', 'Saturday,tuesday', '13:00 to 15:00,18:00 to 21:00', 0, '2021-05-22 04:52:02', '2021-05-22 04:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_category_id` bigint(20) UNSIGNED NOT NULL,
  `feed_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_added_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `feed_title`, `feed_description`, `feed_category_id`, `feed_image`, `feed_added_by`, `created_at`, `updated_at`) VALUES
(1, 'vacation', 'cdcdcxssxsxs', 1, 'public/feeds/bDqdjNwhBOiM0LrDOYoQNOwNTZghUu23o4dsA3kX.png', 'dr . sandip', '2021-05-22 02:32:28', '2021-05-22 03:29:33'),
(2, 'vactisine', 'cdcdcxssxsxs', 1, 'public/feeds/VkFDY077M6qBuCwHMYfcKrRqAlmjuy9c2IBVCZmZ.png', 'dr . vijay', '2021-05-22 03:30:46', '2021-05-22 03:30:46');

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
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_05_22_051919_create_categories_table', 2),
(9, '2021_05_22_063837_create_feeds_table', 3),
(10, '2021_05_22_090342_create_counsellors_table', 4),
(11, '2021_05_22_110238_create_sponsors_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0f6f21aa4db64f9f52217dbf40cf1cb4b2df6239343b6ba173fc7b203903d13fa084befc68cb8db2', 1, 3, 'MyApp', '[]', 0, '2021-05-22 03:20:12', '2021-05-22 03:20:12', '2022-05-22 08:50:12'),
('1663d0eb9e437ecfc0c4ad63f6b5524fbdc23408ea414279d5a3ca8ea69fa5461d0510192f0fd2ec', 1, 3, 'MyApp', '[]', 0, '2021-05-22 00:41:00', '2021-05-22 00:41:00', '2022-05-22 06:11:00'),
('339ffeaa128c832877504bcdea882903a812f4378b34cee8f4adf489f7c016822ecb30aaf380cc31', 1, 1, 'MyApp', '[]', 0, '2021-05-21 10:19:41', '2021-05-21 10:19:41', '2022-05-21 15:49:41'),
('5615ee076198dee294d3cb6790c9487b426ba11ac613d7be81a4ba342de619702b709819b999cf7f', 1, 3, 'MyApp', '[]', 0, '2021-05-22 04:31:31', '2021-05-22 04:31:31', '2022-05-22 10:01:31'),
('650c3a47b689e70d652a77123f107249e16bd7505c4530f20a37f5127591dc1257d9fe0efd74d1eb', 1, 1, 'MyApp', '[]', 0, '2021-05-21 10:08:30', '2021-05-21 10:08:30', '2022-05-21 15:38:30'),
('7a22135b2363b131f0e91791aa981616b8ef943799ac5184e227b7eddbfd394025aeafc549168242', 1, 3, 'MyApp', '[]', 0, '2021-05-22 01:05:29', '2021-05-22 01:05:29', '2022-05-22 06:35:29'),
('9016ba95787c51205d67b3a217282b0a8d9ed6fe6cec925d4a6c1ae0c0dc32b7600ef52a3c510e3c', 1, 3, 'MyApp', '[]', 0, '2021-05-22 02:31:04', '2021-05-22 02:31:04', '2022-05-22 08:01:04'),
('9b58b5b0218f626b24ba46ed57286ce4695fb2fd682385b0e62096bfcaf1bf5b236200d06253e6a9', 1, 3, 'MyApp', '[]', 0, '2021-05-22 03:26:35', '2021-05-22 03:26:35', '2022-05-22 08:56:35'),
('a190a13dfd5ac0a8b845d1b3b24b726f066538151e2ac7952476d7e122ffa4711777b5dc861f22c7', 1, 3, 'MyApp', '[]', 0, '2021-05-22 04:12:13', '2021-05-22 04:12:13', '2022-05-22 09:42:13'),
('b452b97a9a79f23faa2de55ee93f039649f021673a588805c356f50decdd2c2d2b4ee8c26bf77a21', 1, 3, 'MyApp', '[]', 0, '2021-05-22 00:49:02', '2021-05-22 00:49:02', '2022-05-22 06:19:02'),
('b46905aab91ea61fbd3ff4f522fb4cb631732086b11ba25cfb43201456965d7ee03400bc29d99d14', 1, 3, 'MyApp', '[]', 0, '2021-05-22 04:41:53', '2021-05-22 04:41:53', '2022-05-22 10:11:53'),
('b81f29959e28b5b4d9e29b0e021c02dfab61defa423c5d98c4da30be054cc0290840368451d87b99', 1, 1, 'MyApp', '[]', 0, '2021-05-21 10:07:57', '2021-05-21 10:07:57', '2022-05-21 15:37:57'),
('c10880d81f15806a3c22af5d2ddc928dc161391e675c1124802e359cb29a14fe768e46754e6747c4', 1, 3, 'MyApp', '[]', 0, '2021-05-22 02:31:14', '2021-05-22 02:31:14', '2022-05-22 08:01:14'),
('c4b4ac1995fe2c4453dff02f5f8489134d360b551a94143f964e961ce3472155f1bdc0e887454932', 2, 3, 'MyApp', '[]', 0, '2021-05-21 23:47:38', '2021-05-21 23:47:38', '2022-05-22 05:17:38'),
('d0bca54ee97820b3ed3fa5ea3fb949d1a0bf042f6be6f733df486327a9e5b2302ab4effda5b5b6ac', 1, 3, 'MyApp', '[]', 0, '2021-05-22 02:50:42', '2021-05-22 02:50:42', '2022-05-22 08:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Laravel Personal Access Client', 'khqpPIugoJ0VGe37aseo2ilzwSEdMcfaEn6lbVT1', NULL, 'http://localhost', 1, 0, 0, '2021-05-21 23:45:28', '2021-05-21 23:45:28'),
(4, NULL, 'Laravel Password Grant Client', '1bzq2E7PTMIQIwz1YgIWEsfuPeXxfBt53jzJ7wWj', 'users', 'http://localhost', 0, 1, 0, '2021-05-21 23:45:28', '2021-05-21 23:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-21 09:48:00', '2021-05-21 09:48:00'),
(2, 3, '2021-05-21 23:45:28', '2021-05-21 23:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisation_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vijay', 'vijay@gmail.com', NULL, '$2y$10$n1dZkbSmhMJc1beyBU5bBuN4s9a1Hl8eMTOotHWZDsyme5w2VlUXe', NULL, '2021-05-21 10:07:57', '2021-05-21 10:07:57'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$N/vkXLMuiy9ukHiYOgsP1ub6ZcEAZhK02sfI6g5Xo1M/O33qu8ie2', NULL, '2021-05-21 23:47:37', '2021-05-21 23:47:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counsellors`
--
ALTER TABLE `counsellors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feeds_feed_category_id_foreign` (`feed_category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `counsellors`
--
ALTER TABLE `counsellors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
  ADD CONSTRAINT `feeds_feed_category_id_foreign` FOREIGN KEY (`feed_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
