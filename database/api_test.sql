-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 08:40 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'egypt', NULL, NULL),
(2, 'alex', NULL, NULL);

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
(1, '2019_12_25_000000_create_countries_table', 1),
(2, '2019_12_25_100000_create_users_table', 1),
(3, '2019_12_25_200000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
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
('1dee7885006d1b3ce4d0f1420b3bff4849ec7ae94b28c3fe571f978f31fadd4f400604aae6a6a236', 5, 1, 'MyApp', '[]', 0, '2019-12-26 10:34:44', '2019-12-26 10:34:44', '2020-12-26 12:34:44'),
('391a44f277ea3aaeb215070e50a641bdb3d8e0122916116805eda5e0e7ca4ee2fb50d7d6d137e18d', 5, 1, 'API', '[]', 0, '2019-12-26 14:41:44', '2019-12-26 14:41:44', '2020-12-26 16:41:44'),
('3d0b3e56ba3ac3df4a28fd855bfc41148d34345d44c19ca2e8a669b612369918671b852698810993', 5, 1, 'API', '[]', 0, '2019-12-26 15:32:55', '2019-12-26 15:32:55', '2020-12-26 17:32:55'),
('453131ba6309b557a89eb94328e5c1cc4724e41e2c6fb4681c7f095373e38e1f0de0c00cf926acf7', 6, 1, 'API', '[]', 0, '2019-12-26 17:34:16', '2019-12-26 17:34:16', '2020-12-26 19:34:16'),
('5566972c18831753c1ab40d1ffa0d810243ef2cde3eeaccf88eeb2c43c1625fd8899ebcfc3d6bd77', 6, 1, 'API', '[]', 0, '2019-12-26 17:33:33', '2019-12-26 17:33:33', '2020-12-26 19:33:33'),
('6e4b055d55b0c5b6697f0f78e9a14e18e9e0c169e2037657544e24ef4cd9005f0913fd5bdcb1fc41', 4, 1, 'MyApp', '[]', 0, '2019-12-26 10:32:29', '2019-12-26 10:32:29', '2020-12-26 12:32:29'),
('b78adb1a7acbdd7913b294bbb20d719d97cbd3c74ceb69c6e7d85a2e914053f89b5b3715a06627f6', 5, 1, 'MyApp', '[]', 0, '2019-12-26 11:05:32', '2019-12-26 11:05:32', '2020-12-26 13:05:32'),
('bc1b75e16e7e0cbe1108f5827dc1486a53c09ce3b435122f45c3e2d9631ee07c406c6ef4315b6e5c', 5, 1, 'Laravel', '[]', 0, '2019-12-26 14:36:22', '2019-12-26 14:36:22', '2020-12-26 16:36:22'),
('d9f32c05a612a5b1ca68a0960c9627af7910db9962176746775d0e296858272f83aeee1916731008', 5, 1, 'Laravel', '[]', 0, '2019-12-26 14:38:25', '2019-12-26 14:38:25', '2020-12-26 16:38:25'),
('e0e95da42080148b6e6cdc3e03c1c631854872de3ae15f16c7bdf5459e123b4f75eaad91e9e5709e', 3, 1, 'MyApp', '[]', 0, '2019-12-26 10:31:01', '2019-12-26 10:31:01', '2020-12-26 12:31:01'),
('ebd9112e495c0c8e245cae5b918bea02c7053f3c367c7ff41f5aaa76bb5b306888bb11f3ffcd0794', 5, 1, 'API', '[]', 0, '2019-12-26 14:41:41', '2019-12-26 14:41:41', '2020-12-26 16:41:41'),
('ff931710230879adaf97c653e51bc26a55b297bc80eddeb2514893e32b63f5dd033ea32f9f3a5f35', 5, 1, 'API', '[]', 0, '2019-12-26 15:54:46', '2019-12-26 15:54:46', '2020-12-26 17:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'DGb0G4OiIkAZeJg0g0fLHiFB5CYwRChjZCOfmcJm', 'http://localhost', 1, 0, 0, '2019-12-26 10:01:27', '2019-12-26 10:01:27'),
(2, NULL, 'Laravel Password Grant Client', 'f1VMz7gWzDrHsIFOR8BunuANWHx16afHIqe8Z2bz', 'http://localhost', 0, 1, 0, '2019-12-26 10:01:28', '2019-12-26 10:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-26 10:01:28', '2019-12-26 10:01:28');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `is_active`, `country_id`, `birth_date`, `image`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shimaa', 'naga', 'shimaa_naga@yahoo.com', 1, 1, '1995-01-01', NULL, '$2y$10$Qj9r1BeoqD5zRo9amJnF2uT1lulKAhlTVBHbRdtzGU8pzsxzNCaBG', NULL, NULL, '2019-12-25 19:11:33', '2019-12-25 19:11:33'),
(2, 'shimaa', 'naga', 'shimaa_nagaa@yahoo.com', 1, 1, '1995-01-01', NULL, '$2y$10$AnN/ZKFZ4QX0CsuzpyAiBuDjr3porw4CYzPJcA2Kewsj/5csF5Ipi', NULL, NULL, '2019-12-25 19:14:12', '2019-12-25 19:14:12'),
(3, 'shimaa', 'naga', 'shimaa_nagaao@yahoo.com', 1, 1, '1995-01-01', NULL, '$2y$10$DwMTVig5c65hsw3zGqHv1OG3nRvwEBz.JGsGIIXLV4mBab9lTB/au', NULL, NULL, '2019-12-26 10:31:00', '2019-12-26 10:31:00'),
(4, 'shimaa', 'naga', 'shimaa_nagaaoo@yahoo.com', 1, 1, '1995-01-01', NULL, '$2y$10$9ktK9k5U.5e6ikYpJWgZAe3bAvLJtN4ESoUk7yAPbcpv6YYMOPwMq', NULL, NULL, '2019-12-26 10:32:29', '2019-12-26 10:32:29'),
(5, 'shimaa', 'naga', 'shimaa@yahoo.com', 1, 2, '1995-01-03', '/uploads/users/5/1577388732.jpg', '$2y$10$r65EnXTSGu/wyh4/Kt.UC.7zBWAAjvNqlb654sTONF6lDDWsoTauC', NULL, NULL, '2019-12-26 10:34:44', '2019-12-26 17:32:12'),
(6, 'test', 'teter', 'test@tester.com', 1, 1, '1995-01-01', NULL, '$2y$10$BtZ6PPUOnnzStaksnJQSn.Y4JvQYjFGWu392qlxaKjzd2X9WQFEoC', NULL, NULL, '2019-12-26 17:33:32', '2019-12-26 17:33:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
