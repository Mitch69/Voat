-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 04:44 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voat`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploads` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `subject`, `body`, `uploads`, `category`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Hey Man Science is useful', 'Hey Man Science is useful for the life that we leaving', '1561013985.jpg', 'Science', 1, '2019-06-20 03:59:46', '2019-06-20 03:59:46'),
(4, 'Programming Is Life', 'Programming Is Life For Most', '1561014602.jpg', 'Programming', 1, '2019-06-20 04:10:02', '2019-06-20 04:10:02'),
(5, 'Gaming is Life Welcome', 'Gaming is Life Welcome To Life', '1561014730.jpg', 'Gaming', 1, '2019-06-20 04:12:10', '2019-06-20 04:12:10'),
(6, 'Life without music is dead', 'Life without music is dead for all', '1561015745.jpg', 'Music', 3, '2019-06-20 04:29:06', '2019-06-20 04:29:06'),
(7, 'Technology is the future', 'Technology is the future guys!', '1561018585.jpg', 'Technology', 2, '2019-06-20 05:16:25', '2019-06-20 05:16:25'),
(8, 'Smart watches are the current trend!', 'Smart watches are the current trend guys!\r\nGet one if you can!!', '1561018640.jpg', 'Technology', 2, '2019-06-20 05:17:21', '2019-06-20 05:17:21'),
(9, 'Analogue computers', 'Is this an analogue computer?', '1561018694.jpg', 'Technology', 2, '2019-06-20 05:18:15', '2019-06-20 05:18:15'),
(10, 'Chemical Engineering', 'Chemical Engineering is developing!', '1561018747.jpg', 'Science', 2, '2019-06-20 05:19:09', '2019-06-20 05:19:09'),
(11, 'Programming Is Life', 'Programming Is Life guys', '1561018877.jpg', 'Programming', 2, '2019-06-20 05:21:19', '2019-06-20 05:21:19'),
(12, 'Arcade games', 'Arcade games are fun guys', '1561019000.jpg', 'Gaming', 2, '2019-06-20 05:23:22', '2019-06-20 05:23:22'),
(13, 'Baby Fever', 'I want a baby', '1561019122.jpg', 'Aww', 2, '2019-06-20 05:25:22', '2019-06-20 05:25:22'),
(14, 'White dogs', 'Which type of dog is this?', '1561019158.jpg', 'Aww', 2, '2019-06-20 05:25:58', '2019-06-20 05:25:58'),
(15, 'GOT Season 8', 'Who was happy with the ending?', '1561019229.jpg', 'TV', 2, '2019-06-20 05:27:09', '2019-06-20 05:27:09'),
(16, 'Snow boarding', 'Snow boarding in iceland', '1561019304.jpg', 'Sports', 2, '2019-06-20 05:28:26', '2019-06-20 05:28:26'),
(17, 'I love reading #issnotalie', 'I love reading like always', '1561019631.jpg', 'Books', 2, '2019-06-20 05:33:51', '2019-06-20 05:33:51'),
(18, 'Sports is life', 'Sports is life always', '1561019740.jpg', 'Sports', 2, '2019-06-20 05:35:41', '2019-06-20 05:35:41'),
(19, 'Programming Is Addictive', 'Programming Is Addictive Like Seriously', '1561022452.jpg', 'Programming', 2, '2019-06-20 06:20:53', '2019-06-20 06:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2019_05_24_220909_create_admins_table', 1),
(23, '2019_06_11_210746_add_role_to_users', 1),
(24, '2019_06_19_113910_create_comments_table', 1),
(25, '2019_06_19_122630_create_posts_table', 1),
(26, '2019_06_19_130855_add_password_to_users', 1),
(27, '2019_06_19_150910_add_email_to_users', 1),
(28, '2019_06_19_160129_add_voted_to_users', 2),
(29, '2019_06_19_160211_drop_admins_table', 3),
(30, '2019_06_19_160233_create_vote_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `comment_Id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voted` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `voted`, `email_verified_at`, `provider`, `provider_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mitch Omz', NULL, 1, NULL, 'facebook', '187125638941026', NULL, NULL, '2019-06-19 12:10:52', '2019-06-19 13:18:12'),
(2, 1, 'Eric Burugu', 'ericgburugu@gmail.com', 1, NULL, 'google', '112769489699588277777', NULL, NULL, '2019-06-19 17:59:40', '2019-06-20 06:49:26'),
(3, 0, 'Eric Burugu', 'eric.burugu@strathmore.edu', 0, NULL, 'google', '102189128541642364902', NULL, NULL, '2019-06-19 18:00:21', '2019-06-19 18:00:21'),
(4, 0, 'Michelle Omondi', 'mitchomzz@gmail.com', 0, NULL, 'google', '112422522312725037677', NULL, NULL, '2019-06-19 19:22:27', '2019-06-19 19:22:27'),
(5, 0, 'Michelle Omondi', 'michelle.omondi@strathmore.edu', 0, NULL, 'google', '111645863455966138589', NULL, NULL, '2019-06-19 19:23:24', '2019-06-19 19:23:24'),
(6, 0, 'Fiona Ochieng', 'fiona.ochieng@strathmore.edu', 0, NULL, 'google', '105778885191543328129', NULL, NULL, '2019-06-20 06:10:34', '2019-06-20 06:10:34'),
(7, 0, 'Fiona', 'fionachristina6@gmail.com', 0, NULL, 'google', '100329359954481722384', NULL, NULL, '2019-06-20 06:11:24', '2019-06-20 06:11:24'),
(8, 0, 'Gabriel Mbugua', 'gabriel.mbugua307@gmail.com', 0, NULL, 'google', '115874859373784400891', NULL, NULL, '2019-06-20 06:14:14', '2019-06-20 06:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `user_id`, `post_id`, `vote`, `created_at`, `updated_at`) VALUES
(3, 2, 3, 1, '2019-06-20 06:49:26', '2019-06-20 06:49:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_comment_id_foreign` (`comment_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote_user_id_foreign` (`user_id`),
  ADD KEY `vote_post_id_foreign` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_comment_id_foreign` FOREIGN KEY (`comment_Id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vote_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
