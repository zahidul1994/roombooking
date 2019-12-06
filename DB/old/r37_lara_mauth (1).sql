-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 11:44 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r37_lara_mauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin1@gmail.com', '$2y$10$5iL4zWVyEPV2VdiYMMwbS.pe5ReP7A9sYI34QSOa3C.FpXRkyHrxO', 1, NULL, '2019-02-25 03:40:32', '2019-02-25 03:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `icon_image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AC', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(2, 'Oven', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(3, 'Fridge', 'dafault', 1, '2019-03-09 18:00:00', NULL, NULL),
(4, 'Washing Machine', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(5, 'Wifi', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(6, 'Smoke Detector', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(7, 'Lift', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(8, 'Hot water', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(9, 'Hair dryer', 'default', 1, '2019-03-09 18:00:00', NULL, NULL),
(10, 'Hangers', 'dafault', 1, '2019-03-09 18:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amenities_room`
--

CREATE TABLE `amenities_room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `amenities_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities_room`
--

INSERT INTO `amenities_room` (`id`, `room_id`, `amenities_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 44, 1, 0, NULL, NULL, NULL),
(2, 44, 2, 0, NULL, NULL, NULL),
(3, 44, 4, 0, NULL, NULL, NULL),
(4, 44, 5, 0, NULL, NULL, NULL),
(5, 44, 6, 0, NULL, NULL, NULL),
(6, 45, 1, 0, NULL, NULL, NULL),
(7, 45, 4, 0, NULL, NULL, NULL),
(8, 45, 5, 0, NULL, NULL, NULL),
(9, 45, 6, 0, NULL, NULL, NULL),
(10, 45, 8, 0, NULL, NULL, NULL),
(11, 46, 1, 0, NULL, NULL, NULL),
(12, 47, 1, 0, NULL, NULL, NULL),
(13, 47, 2, 0, NULL, NULL, NULL),
(17, 48, 1, 0, NULL, NULL, NULL),
(18, 48, 2, 0, NULL, NULL, NULL),
(19, 48, 3, 0, NULL, NULL, NULL),
(20, 48, 4, 0, NULL, NULL, NULL),
(21, 48, 5, 0, NULL, NULL, NULL),
(22, 48, 6, 0, NULL, NULL, NULL),
(23, 48, 7, 0, NULL, NULL, NULL),
(24, 48, 8, 0, NULL, NULL, NULL),
(25, 48, 9, 0, NULL, NULL, NULL),
(26, 48, 10, 0, NULL, NULL, NULL),
(27, 49, 1, 0, NULL, NULL, NULL),
(28, 49, 2, 0, NULL, NULL, NULL),
(29, 49, 3, 0, NULL, NULL, NULL),
(31, 50, 2, 0, NULL, NULL, NULL),
(32, 50, 3, 0, NULL, NULL, NULL),
(36, 50, 5, 0, NULL, NULL, NULL),
(37, 50, 7, 0, NULL, NULL, NULL),
(38, 51, 1, 0, NULL, NULL, NULL),
(39, 51, 4, 0, NULL, NULL, NULL),
(40, 51, 9, 0, NULL, NULL, NULL),
(41, 51, 10, 0, NULL, NULL, NULL),
(42, 52, 1, 0, NULL, NULL, NULL),
(46, 52, 2, 0, NULL, NULL, NULL),
(47, 52, 3, 0, NULL, NULL, NULL),
(48, 53, 1, 0, NULL, NULL, NULL),
(49, 53, 2, 0, NULL, NULL, NULL),
(50, 53, 3, 0, NULL, NULL, NULL),
(51, 53, 4, 0, NULL, NULL, NULL),
(52, 53, 5, 0, NULL, NULL, NULL),
(53, 53, 6, 0, NULL, NULL, NULL),
(54, 53, 7, 0, NULL, NULL, NULL),
(55, 53, 8, 0, NULL, NULL, NULL),
(56, 53, 9, 0, NULL, NULL, NULL),
(57, 53, 10, 0, NULL, NULL, NULL),
(58, 54, 1, 0, NULL, NULL, NULL),
(59, 54, 2, 0, NULL, NULL, NULL),
(60, 54, 3, 0, NULL, NULL, NULL),
(61, 54, 4, 0, NULL, NULL, NULL),
(62, 54, 8, 0, NULL, NULL, NULL),
(63, 54, 9, 0, NULL, NULL, NULL),
(64, 55, 1, 0, NULL, NULL, NULL),
(65, 55, 6, 0, NULL, NULL, NULL),
(66, 55, 7, 0, NULL, NULL, NULL),
(67, 55, 8, 0, NULL, NULL, NULL),
(68, 55, 9, 0, NULL, NULL, NULL),
(69, 55, 10, 0, NULL, NULL, NULL),
(70, 56, 1, 0, NULL, NULL, NULL),
(71, 56, 2, 0, NULL, NULL, NULL),
(72, 56, 3, 0, NULL, NULL, NULL),
(73, 56, 5, 0, NULL, NULL, NULL),
(74, 56, 7, 0, NULL, NULL, NULL),
(75, 56, 9, 0, NULL, NULL, NULL),
(76, 56, 10, 0, NULL, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_24_124854_create_admins_table', 1),
(4, '2019_02_24_125027_create_writers_table', 1),
(6, '2019_03_06_043508_create_rooms_table', 2),
(7, '2019_03_09_043638_create_photos_table', 3),
(8, '2019_03_10_035913_create_amenities_table', 4),
(10, '2019_03_10_040708_create_amenities_room_table', 5);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `details`, `room_id`, `created_at`, `updated_at`) VALUES
(1, '1552125877_1_804781.jpg', NULL, 37, '2019-03-09 04:04:37', '2019-03-09 04:04:37'),
(2, '1552125877_1_128803.jpg', NULL, 37, '2019-03-09 04:04:38', '2019-03-09 04:04:38'),
(3, '1552125878_1_670897.jpg', NULL, 37, '2019-03-09 04:04:38', '2019-03-09 04:04:38'),
(4, '1552125878_1_934912.jpg', NULL, 37, '2019-03-09 04:04:38', '2019-03-09 04:04:38'),
(5, '1552126955_1_876964.jpg', NULL, 38, '2019-03-09 04:22:35', '2019-03-09 04:22:35'),
(6, '1552126955_1_262873.jpg', NULL, 38, '2019-03-09 04:22:36', '2019-03-09 04:22:36'),
(7, '1552126956_1_761575.jpg', NULL, 38, '2019-03-09 04:22:37', '2019-03-09 04:22:37'),
(8, '1552126957_1_809536.jpg', NULL, 38, '2019-03-09 04:22:37', '2019-03-09 04:22:37'),
(9, '1552126957_1_877448.jpg', NULL, 38, '2019-03-09 04:22:37', '2019-03-09 04:22:37'),
(10, '1552126957_1_319311.png', NULL, 38, '2019-03-09 04:22:38', '2019-03-09 04:22:38'),
(11, '1552127326_1_342382.jpg', NULL, 39, '2019-03-09 04:28:46', '2019-03-09 04:28:46'),
(12, '1552127326_1_436036.jpg', NULL, 39, '2019-03-09 04:28:46', '2019-03-09 04:28:46'),
(13, '1552127326_1_232738.png', NULL, 39, '2019-03-09 04:28:47', '2019-03-09 04:28:47'),
(14, '1552127327_1_639967.jpg', NULL, 39, '2019-03-09 04:28:47', '2019-03-09 04:28:47'),
(15, '1552188708_1_825769.jpg', NULL, 40, '2019-03-09 21:31:49', '2019-03-09 21:31:49'),
(16, '1552188709_1_407024.jpg', NULL, 40, '2019-03-09 21:31:50', '2019-03-09 21:31:50'),
(17, '1552188710_1_748901.jpg', NULL, 40, '2019-03-09 21:31:50', '2019-03-09 21:31:50'),
(18, '1552188710_1_468342.gif', NULL, 40, '2019-03-09 21:31:50', '2019-03-09 21:31:50'),
(19, '1552196276_1_926838.jpg', NULL, 44, '2019-03-09 23:37:58', '2019-03-09 23:37:58'),
(20, '1552196278_1_354591.png', NULL, 44, '2019-03-09 23:37:58', '2019-03-09 23:37:58'),
(21, '1552196278_1_512037.jpg', NULL, 44, '2019-03-09 23:37:58', '2019-03-09 23:37:58'),
(22, '1552196278_1_246753.jpg', NULL, 44, '2019-03-09 23:37:59', '2019-03-09 23:37:59'),
(23, '1552196383_1_550651.png', NULL, 45, '2019-03-09 23:39:43', '2019-03-09 23:39:43'),
(24, '1552196383_1_504877.png', NULL, 45, '2019-03-09 23:39:43', '2019-03-09 23:39:43'),
(25, '1552196383_1_929083.png', NULL, 45, '2019-03-09 23:39:43', '2019-03-09 23:39:43'),
(26, '1552196383_1_698295.png', NULL, 45, '2019-03-09 23:39:43', '2019-03-09 23:39:43'),
(27, '1552196383_1_657209.png', NULL, 45, '2019-03-09 23:39:43', '2019-03-09 23:39:43'),
(28, '1552196383_1_357267.PNG', NULL, 45, '2019-03-09 23:39:43', '2019-03-09 23:39:43'),
(29, '1552198999_16_267079.jpg', NULL, 46, '2019-03-10 00:23:20', '2019-03-10 00:23:20'),
(30, '1552200996_1_977086.png', NULL, 47, '2019-03-10 00:56:37', '2019-03-10 00:56:37'),
(31, '1552200997_1_512046.jpg', NULL, 47, '2019-03-10 00:56:37', '2019-03-10 00:56:37'),
(32, '1552200997_1_768275.jpg', NULL, 47, '2019-03-10 00:56:38', '2019-03-10 00:56:38'),
(33, '1552210363_18_750882.png', NULL, 49, '2019-03-10 03:32:44', '2019-03-10 03:32:44'),
(34, '1552210364_18_158822.png', NULL, 49, '2019-03-10 03:32:44', '2019-03-10 03:32:44'),
(35, '1552213109_1_791226.jpg', NULL, 50, '2019-03-10 04:18:30', '2019-03-10 04:18:30'),
(36, '1552213110_1_662615.jpg', NULL, 50, '2019-03-10 04:18:31', '2019-03-10 04:18:31'),
(37, '1552213111_1_176627.jpg', NULL, 50, '2019-03-10 04:18:31', '2019-03-10 04:18:31'),
(38, '1552215285_1_997683.png', NULL, 50, '2019-03-10 04:54:45', '2019-03-10 04:54:45'),
(39, '1552215285_1_660110.png', NULL, 50, '2019-03-10 04:54:46', '2019-03-10 04:54:46'),
(40, '1552215286_1_960016.png', NULL, 50, '2019-03-10 04:54:46', '2019-03-10 04:54:46'),
(41, '1552215477_17_970178.jpg', NULL, 51, '2019-03-10 04:57:57', '2019-03-10 04:57:57'),
(42, '1552215478_17_885653.jpg', NULL, 51, '2019-03-10 04:57:58', '2019-03-10 04:57:58'),
(43, '1552215479_17_136066.jpg', NULL, 52, '2019-03-10 04:57:59', '2019-03-10 04:57:59'),
(44, '1552215479_17_557794.jpg', NULL, 52, '2019-03-10 04:58:00', '2019-03-10 04:58:00'),
(45, '1552215479_17_892509.jpg', NULL, 51, '2019-03-10 04:58:00', '2019-03-10 04:58:00'),
(46, '1552215480_17_516547.jpg', NULL, 52, '2019-03-10 04:58:01', '2019-03-10 04:58:01'),
(47, '1552215518_17_563661.jpg', NULL, 52, '2019-03-10 04:58:38', '2019-03-10 04:58:38'),
(48, '1552215518_17_870375.jpg', NULL, 52, '2019-03-10 04:58:39', '2019-03-10 04:58:39'),
(49, '1552215519_17_561401.jpg', NULL, 52, '2019-03-10 04:58:40', '2019-03-10 04:58:40'),
(50, '1552221827_17_427461.jpg', NULL, 53, '2019-03-10 06:43:50', '2019-03-10 06:43:50'),
(51, '1552221830_17_432544.jpg', NULL, 53, '2019-03-10 06:43:51', '2019-03-10 06:43:51'),
(52, '1552221831_17_210437.jpg', NULL, 53, '2019-03-10 06:43:51', '2019-03-10 06:43:51'),
(53, '1552221831_17_209093.jpg', NULL, 53, '2019-03-10 06:43:52', '2019-03-10 06:43:52'),
(54, '1552280714_1_341309.png', NULL, 47, '2019-03-10 23:05:14', '2019-03-10 23:05:14'),
(55, '1552280714_1_415934.png', NULL, 47, '2019-03-10 23:05:15', '2019-03-10 23:05:15'),
(56, '1552282434_1_537992.jpg', NULL, 54, '2019-03-10 23:33:56', '2019-03-10 23:33:56'),
(57, '1552282436_1_809874.jpg', NULL, 54, '2019-03-10 23:33:56', '2019-03-10 23:33:56'),
(58, '1552282436_1_505925.jpg', NULL, 54, '2019-03-10 23:33:56', '2019-03-10 23:33:56'),
(59, '1552282550_1_606313.jpg', NULL, 55, '2019-03-10 23:35:50', '2019-03-10 23:35:50'),
(60, '1552282550_1_425003.jpg', NULL, 55, '2019-03-10 23:35:50', '2019-03-10 23:35:50'),
(61, '1552282550_1_990511.jpg', NULL, 55, '2019-03-10 23:35:51', '2019-03-10 23:35:51'),
(62, '1552282551_1_223686.jpg', NULL, 55, '2019-03-10 23:35:51', '2019-03-10 23:35:51'),
(63, '1552282655_1_899213.jpg', NULL, 56, '2019-03-10 23:37:36', '2019-03-10 23:37:36'),
(64, '1552282656_1_419679.jpg', NULL, 56, '2019-03-10 23:37:36', '2019-03-10 23:37:36'),
(65, '1552282656_1_214628.jpg', NULL, 56, '2019-03-10 23:37:36', '2019-03-10 23:37:36'),
(66, '1552282656_1_398836.jpg', NULL, 56, '2019-03-10 23:37:36', '2019-03-10 23:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` int(10) UNSIGNED NOT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `description`, `writer_id`, `latitude`, `longitude`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '0', '0', NULL, '2019-03-06 22:04:37', '2019-03-06 23:07:14'),
(3, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '0', '0', NULL, '2019-03-06 22:17:30', '2019-03-06 23:06:45'),
(4, 'bbb', 'bbbb', 1, '0', '0', NULL, '2019-03-06 22:17:38', '2019-03-06 22:17:38'),
(5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, '0', '0', NULL, '2019-03-06 23:07:44', '2019-03-06 23:07:44'),
(6, 'fahim test post 1000000000', 'post desc', 2, '0', '0', NULL, '2019-03-06 23:12:18', '2019-03-06 23:18:22'),
(7, 'fahim test post 22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2, '0', '0', NULL, '2019-03-06 23:13:25', '2019-03-06 23:13:25'),
(8, 'fahim test post 3', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 2, '0', '0', NULL, '2019-03-06 23:15:05', '2019-03-06 23:15:05'),
(9, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5, '0', '0', NULL, '2019-03-06 23:15:42', '2019-03-06 23:15:42'),
(10, 'স্ত্রীকে মারধরের মামলায় হিরো আলম গ্রেপ্তার', 'বগুড়ার আশরাফুল হোসেন আলম ওরফে হিরো আলমকে গ্রেপ্তার করা হয়েছে। স্ত্রীকে মারধরের অভিযোগে নারী নির্যাতন দমন আইনে করা এক মামলায় তাঁকে বুধবার রাতে গ্রেপ্তার করে পুলিশ।\n\nবগুড়া সদর সার্কেলের অতিরিক্ত পুলিশ সুপার সনাতন চক্রবর্তী প্রথম আলোকে বিষয়টি নিশ্চিত করেছেন। তিনি জানান, হিরো আলম ও তাঁর শ্বশুর সাইফুল ইসলাম থানায় পাল্টাপাল্টি অভিযোগ দিয়েছিলেন। বুধবার রাতে দুই পক্ষকে থানায় ডাকা হয়। উভয় পক্ষের বক্তব্য শুনে সাইফুল ইসলামের অভিযোগটি নারী নির্যাতন দমন আইনে মামলা হিসেবে রেকর্ড করে হিরো আলমকে গ্রেপ্তার করা হয়।', 4, '0', '0', NULL, '2019-03-06 23:15:43', '2019-03-06 23:15:43'),
(11, 'Abdullah Al Noman(Nirob)', 'Idea is very nice sir', 6, '0', '0', NULL, '2019-03-06 23:16:32', '2019-03-06 23:18:35'),
(12, 'টিআইবি একচোখা নয়, দুদক চেয়ারম্যানের বক্তব্য বিভ্রান্তিকর', 'দুর্নীতিবিরোধী সংগঠন ট্রান্সপারেন্সি ইন্টারন্যাশনাল, বাংলাদেশ (টিআইবি) বলেছে, সংগঠনটি সম্পর্কে দুর্নীতি দমন কমিশনের চেয়ারম্যানের বক্তব্য ‘অমূলক’ ও ‘হতাশাব্যঞ্জক’। আজ বুধবার গণমাধ্যমে পাঠানো এক বিবৃতিতে এ কথা বলে টিআইবি।\n\nগতকাল মঙ্গলবার দুদকের চেয়ারম্যান ইকবাল মাহমুদ বলেন, জনগণের মধ্যে টিআইবি নিয়ে ইতিবাচক ভাবমূর্তি থাকলেও এর কিছু সমালোচনাও শোনা যায়। \nদুদকের প্রধান কার্যালয়ে উন্নয়ন সহযোগী সংস্থা ডিএফআইডি, সুইডেন ও ডেনমার্কের দূতাবাসের সহায়তায় জেনেভা-ভিত্তিক নীতি ও কৌশল বিশেষজ্ঞ ম্যাথিয়াস বসের নেতৃত্বে তিন সদস্যের একটি প্রতিনিধিদল দুদক চেয়ারম্যানের সঙ্গে মতবিনিময় করে। সেই সময় এ মন্তব্য করেন দুদক চেয়ারম্যান। তিনি টিআইবি সম্পর্কে বলেন, ‘তাদের একচোখা হলে চলবে না, দুচোখা হতে হবে।’', 4, '0', '0', NULL, '2019-03-06 23:17:09', '2019-03-06 23:19:00'),
(13, 'থাই ব্যবসায়ী মেয়ের পাত্র খুঁজছেন, দেবেন লাখো ডলার', 'থাইল্যান্ডের অন্যতম ধনকুবের আরনন রদথং ২৬ বছর বয়সী মেয়েকে বিয়ে দেবেন। আর পাত্র খুঁজতে তিনি অভিনব এক প্রস্তাব রেখেছেন। মেয়েকে কোনো পাত্র বিয়ে করতে রাজি হলেই মিলবে লাখো ডলার।\n\nডেইলি মেইলের খবরে বলা হয়েছে, আরনন রদথংয়ের বাড়ি চুমফুন প্রদেশে। মেয়ে কার্নসিতার জন্য পাত্র খুঁজছেন। মেয়েকে বিবাহ করতে রাজি হওয়া ছেলেকে তিনি ১০ লাখ থাই বাথ (২ লাখ ৪০ হাজার পাউন্ড) দেওয়ার ঘোষণা দিয়েছেন। মেয়ের নিরাপদ ভবিষ্যতের কথা ভেবেই মেয়ের জামাইকে তিনি ৩ লাখ মার্কিন ডলার দেওয়ার ঘোষণা দিয়েছেন। ইংরেজি জানা কার্নসিতার কৃষি খামারের কাজে বাবাকে সাহায্য করেন। তবে পাত্রের যোগ্যতা সম্পর্কে তেমন কিছু চাননি তিনি। শুধু বলেছেন, যে ছেলে মেয়েকে বিয়ে করতে চাইবে, তাকে অবশ্যই পরিশ্রমী হতে হবে। আর তার মেয়েকে সুখে রাখতে হবে।', 4, '0', '0', NULL, '2019-03-06 23:18:15', '2019-03-06 23:18:15'),
(14, 'room no 04', 'AC VIP ROOM', 5, '0', '0', NULL, '2019-03-06 23:18:57', '2019-03-06 23:19:48'),
(15, 'ABC', 'Nice decoration', 10, '0', '0', NULL, '2019-03-06 23:19:05', '2019-03-06 23:20:03'),
(16, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 9, '0', '0', NULL, '2019-03-06 23:19:33', '2019-03-06 23:19:33'),
(17, 'Room Facalities', 'Room', 12, '0', '0', NULL, '2019-03-06 23:19:49', '2019-03-06 23:20:11'),
(18, 'qq', 'qqq', 1, '0', '0', NULL, '2019-03-06 23:19:50', '2019-03-06 23:19:50'),
(19, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 9, '0', '0', NULL, '2019-03-06 23:20:09', '2019-03-06 23:20:09'),
(20, 'women1', 'women1', 11, '0', '0', NULL, '2019-03-06 23:20:22', '2019-03-06 23:20:46'),
(21, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 9, '0', '0', NULL, '2019-03-06 23:20:45', '2019-03-06 23:20:45'),
(22, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 9, '0', '0', NULL, '2019-03-06 23:21:11', '2019-03-06 23:21:11'),
(23, '৩ ফোনে শান্ত ভারত-পাকিস্তান', 'পুলওয়ামায় জইশ-ই-মুহাম্মদের আত্মঘাতী হামলায় সিআরপিএফের ৪০ জনের বেশি জওয়ান নিহত হওয়ার পরই পাকিস্তানের নিয়ন্ত্রণরেখায় (লাইন অব কন্ট্রোল) বালাকোটে বিমান হামলা চালায় ভারত। ২১ মিনিটের ওই হামলার পরদিনই ভারতের আকাশসীমায় ঢুকে পড়ে পাকিস্তানের একাধিক যুদ্ধবিমান। এরই মধ্য পাকিস্তানে আটক হন ভারতের উইং কমান্ডার অভিনন্দন বর্তমান। ভারত ও পাকিস্তান সীমান্তে শুরু হয় উত্তেজনা। দুই দেশেই একে অপরের দিকে মারণাস্ত্র তাক করে রাখে। বিশ্বের অনেক দেশই ভারত-পাকিস্তানকে শান্তির পথ বেছে নেওয়ার আহ্বান জানায়। কিন্তু উত্তেজনার পারদ আর নামে না। এরই মধ্যে বিদেশ থেকে দুই দেশে ক্রিং ক্রিং বেজে উঠল ফোন। এই ফোনের পরই আপাত-উত্তেজনা কমে যায়। মেলে সমাধানের ইঙ্গিত।\n\nএনডিটিভির খবরে বলা হয়েছে, মার্কিন পররাষ্ট্রমন্ত্রী মাইক পম্পেওর তিনটি ফোনে ভারত ও পাকিস্তানের চলমান উত্তেজনা কমে যায়। ভিয়েতনামের রাজধানী হ্যানয় থেকে তিনি ফোন করেন দিল্লি ও ইসলামাবাদে। পম্পেওর ভূমিকার কারণে দুই দেশের সীমান্তে উত্তেজনার পারদ নিচে নেমে যায়। মার্কিন পররাষ্ট্র দপ্তরের উপমুখপাত্র রবার্ট পাল্লাডিনো গতকাল মঙ্গলবার সাংবাদিক সম্মেলনে এসব তথ্য জানান। তিনি বলেন, মাইক পম্পেওর গুরুত্বপূর্ণ ভূমিকার পরই ভারত ও পাকিস্তানের মধ্যকার চলমান সমস্যা কমতে শুরু করে।', 4, '0', '0', NULL, '2019-03-06 23:21:16', '2019-03-06 23:21:16'),
(24, 'মোদিকে ‘গব্বর সিং’ বললেন মমতা', 'গতকাল বুধবার পশ্চিমবঙ্গের মুখ্যমন্ত্রী ও তৃণমূল নেত্রী মমতা বন্দ্যোপাধ্যায় যোগ দিয়েছিলেন হাওড়ার আড়ুপাড়ায় দলীয় এক সমাবেশে। সেখানেই তিনি একহাত নেন বিজেপি ও মোদি-অমিত শাহ জুটিকে।\nমমতা বলেন, ‘এবার আমরা মোদি-অমিত শাহর সাইনবোর্ড উঠিয়ে দেব। ওরা গেলে দেশ বাঁচবে।’\nপশ্চিমবঙ্গের মুখ্যমন্ত্রী বলেন, মেয়াদ ফুরিয়ে গেলে সেই ওষুধ খেলে কোনো কাজ হয় না। তেমনই বিজেপি সরকারের মেয়াদ শেষ হয়ে গেছে।\nমমতা জোরের সঙ্গে বলেন, সারা দেশে বিজেপি শ্রেণিবিন্যাস করছে। বিভেদ তৈরি করছে। ঘৃণা-বিদ্বেষ ছড়াচ্ছে। সন্ত্রাসবাদের সিন্ডিকেট বানিয়েছে।\nমমতা প্রশ্ন রাখেন, ‘কখনো এমনটা হয়েছে যে দেশের কোনো প্রধানমন্ত্রীকে এতটা ভয় পান? এ যেন সেই গব্বর সিং। ওদের হাত থেকে দেশকে রক্ষা করতেই হবে।’', 4, '0', '0', NULL, '2019-03-06 23:22:15', '2019-03-06 23:22:51'),
(25, 'Was the room a true story?', 'Room is a 2010 novel by Irish-Canadian author Emma Donoghue. The story is told from the perspective of a five-year-old boy, Jack, who is being held captive in a small room along with his mother. Donoghue conceived the story after hearing about five-year-old Felix in the Fritzl case.', 13, '0', '0', NULL, '2019-03-06 23:26:11', '2019-03-06 23:26:11'),
(26, 'What defines a room?', 'English Language Learners Definition of room. (Entry 1 of 2) : a part of the inside of a building that is divided from other areas by walls and a door and that has its own floor and ceiling. : a room in a house, hotel, etc., where someone sleeps. : space that is used for something.March07,2019', 13, '0', '0', NULL, '2019-03-06 23:27:27', '2019-03-06 23:28:19'),
(27, 'New apartment in 8 floor with 4 bedrooms in Uttara', 'New apartment in Uttara sector 10 perfect for families ,business trips and couples ,also we can provide 24 driver services with charge apply.', 1, '0', '0', NULL, '2019-03-07 03:30:04', '2019-03-08 22:25:43'),
(28, 'Mirpur DOHS, Dhaka, Bangladesh', 'My apartment has 3 bedroom and dining cum Dinnaing space which can easily accommodate 6 guests with children. \n\nIt\'s a fully furnished flat, with regular electricity, generator, & lift (elevator). Security Guards and CC Camera is 24×7.\n\nThe space\n\nMy apartment is situated in one of the nice residential areas right in the center of the city. It is located in a highly secured neighborhood, with 24/7 security (Security Guards and CC Cameras) Public transportation (e.g, auto rickshaw/cng, buses, and taxis/cabs) is readily available at Mirpur 12 Bus stop which is minutes away from the flat. Several places of worship, including mosques are within the vicinity.\n\nGuest access\n\nThe guests are welcome to use the common spaces, including the kitchen, dining room.\n\nInteraction with guests\n\nI am more than happy to guide my guests around the city, provide tips and suggestions for local eateries and restaurants. Guests are also welcome to call me if they need any help or guidance.\n\nOther things to note\n\nTo ensure that the guests have a pleasant experience I expect that the guests would keep the premises tidy and clean.\n\nTourist Guide service available.\nInside Dhaka- $25 per Guest (with transport)\n\nCloth washing service also available. 10 clothes- $2.', 1, '0', '0', NULL, '2019-03-07 03:30:54', '2019-03-07 03:30:54'),
(29, 'Peaceful Flat @Bashundhara R/A, Dhaka', 'The place is close to the entrance from 300ft of Bashundhara R/A.\n\nAirport is 5 minuets driving away.\n\nAll the embassies are close by.\nLocal transports are easily available. Uber is a minute away or two.\n\nIf you love shopping, Jamuna Future Park will be your closest destination which is the biggest mall in Bangladesh.\n\nPlz note that the bathroom is just beside the room,not attached. But it’s completely private.\n\nN.B: -Plz bring your valid photo ID.Local couples need to provide proof of marriage.\n\nThe space\n\n- Close to Airport \n- Close to train station \n- Close to all Embassies \n- Close to biggest shopping mall\n- Close to movie theatre\n\nGuest access\n\nGuests will have access to my dining space and kitchen all the time.\n\nInteraction with guests\n\nI’m always available for the guests.\n\nOther things to note\n\nThe place and it’s surrounding is not crowded at all. So you’ll feel the peace and tranquility staying here.', 1, '0', '0', NULL, '2019-03-07 03:31:39', '2019-03-07 03:31:39'),
(30, 'ENTIRE 3 bed 3 bath apartment near Mirpur Stadium', 'I have a 3 bedroom 3 bath condo near national cricket stadium. The place is located in a safe Residetial area. My family and I Use the condo when we visit Bangladesh. Car service is available if needed. Very affordable and close to airport, gulshan, Banani and can-torment area.\n\nThe space\n\nEntire apartment is available for guest to use\n\nInteraction with guests\n\nThe care taker lives in the same apartment building\n\nOther things to note\n\nMaid and food service available for additional fees of $10 per day', 1, '0', '0', NULL, '2019-03-07 03:32:37', '2019-03-07 03:32:37'),
(31, 'A MODERN FURNISHED APARTMENT SUITABLE FOR FAMILIES', 'Named Civil JR Tower at Sector 3, Uttara Residential Area, it is newly built 13-story modern apartment complex with 24/7 security arrangement. The building is just 5-minute drive from the Dhaka International Airport and 12 miles north of the downtown on the way to industrial zones near Dhaka. Shopping malls, modern restaurants, etc. are all at walking distances.The area is populated by businessmen, professionals and foreign visitors. This apartment has three bedrooms with en-suites bathrooms\n\nThe space\n\nNear Dhaka Hazrat Shahjalal International Airport. Close to Dhaka Uttara High Way. Easy access to Industrial heartland Bangladesh by Highway. Excellent shopping facilities, Both local and quality International restaurant at walking distance.\nSector three , where the property is located is called the \'\'heart of Uttara\'\'\n\nGuest access\n\nIndependent apartment in a secured multistory building. Guest can access the property by elevator and stairs to lobby . 1,650 sq feet space.\n\nInteraction with guests\n\nGuests can contact host by phone ( (Hidden by Airbnb) , Viber, intercom 24/7. The block is managed by a care taker manager.\n\nOther things to note\n\nFor safety and security every guests have to submit a copy of their government issued photo identity to the cohost on check in. Bangladesh contact number will be needed for emergency.\nVisitors to all guests need to log in and out during their visit. Guests will be contacted by the guards before visitors are allowed to go to the property.\nCohost or host’s representative will receive the guests at the bulking on arrival', 1, '0', '0', NULL, '2019-03-07 03:33:14', '2019-03-07 03:33:14'),
(32, 'Budget Hotel near Airport (Hotel De Meridian Ltd)', 'A small hotel with a big heart, Hotel De Meridian is located minutes from the Hazrat Shah Jalal International Airport, Dhaka. We pride ourselves in providing the utmost customer care and thrive to make your stay a pleasurable and comfortable one. Enjoy our complimentary shuttle service to and from the airport at any given time as well as free breakfast every morning.\nEach guest is welcomed with complimentary beverage, fruit basket and mineral water. We also provide tea making facility.\n\nThe space\n\nEach room is equipped with free WiFi, split air-conditioner, ceiling fan, flat screen TV and refrigerator. Spacious rooms with ample storage, upgraded bathrooms (hot and cold water) with all modern facilities and complimentary toiletries.\n\nGuest access\n\nMeet other travelers in our 24 hour fine dining restaurant on our roof-top or at our lobby. Well equipped fitness center for those trying to get in a quick work out session. We also arrange guided tours with options of rental cars. Our aim is to give a taste of a family hotel.', 1, '0', '0', NULL, '2019-03-07 03:33:39', '2019-03-07 03:33:39'),
(33, 'Ffanuzas Asset', 'The property is located in Defense Officers Housing Society (DOHS), Baridhara. It has 3 bedrooms, 1 kitchen, I dinning cum family living. Fully furnished with Air Con in every room including common space\n\nThe space\n\nAdditional Advantages:\n24 hours generator support.\n24 hours hot water available\n24 hours lift service available.\n\nPositional Advantage:\n\n1. Recreational Park - 1 minute walk from the apartment. The Park consist of 800m joggers lane, basketball court, football court, badminton court (winter), lake (boat ride). Gym (indoor), Public seating with beautiful garden and lake view.\n\n2. Departmental store- 5 min walk from apartment. Collect your fresh food and groceries. Operating ours 8 am - 8 pm.\n\n3. Shopping Complex- Anyanna- 15 minutes walk.\n\n4. Health & Care: United Hospital 10m drive from the place.\n\n5. DOHS Baridhara has 24 hours guard security and CCTV coverages of general area. In addition apartment has its own guards & CCTV coverage.\n\n6. Friendly neighborhood.\n\n7. Army Golf Club is just across the main road- 15m drive.\n\n8. Nearest Hotel: Radission Blu.\n\n9. Located centrally to connect international airport, railway station and inter-district bus station, all within 15m drive.\n\nGuest access\n\nTotal Space is for Guest...\n\nInteraction with guests\n\nI am available on Intercom, Cell number, email, (Hidden by Airbnb) , Messenger etc\n\nOther things to note\n\nFor any requirement of guest, if I am consulted. Can advise, provide support and extend logistics help to make stay as comfortable as humanly possible.', 1, '0', '0', NULL, '2019-03-07 03:34:17', '2019-03-07 03:34:17'),
(34, 'Khan\'s Serviced Apartment @ Bashundhara', 'Beautiful brand new apartment with natural lighting, high security and cleanliness in Block A, Bashundhara (just opposite to Apollo Hospital Dhaka). The apartment is spacious and is located in one of the prime suburbs of Dhaka with two major landmarks (Apollo Hospital Dhaka and International School Dhaka) just opposite to the building.\n\nThe apartment is furnished with furniture, utensils and amenities. On-site manager is available to assist 24/7.\n\nThe space\n\nBrand new fully furnished service apartment. Very clean and secure. It is near all major landmarks in Dhaka.\n\nThe pricing in Airbnb is for each room. There are 3 bedrooms in total.\n\nGuest access\n\nAll spaces are accessible including the balcony, dining area, kitchen and living area.\n\nInteraction with guests\n\nI am always available for queries over the email and the phone. Furthermore, my manager is available 24/7 to serve any guest.\n\nOther things to note\n\nThe pricing in Airbnb is for each room. There are 3 bedrooms in total.', 1, '0', '0', NULL, '2019-03-07 03:37:26', '2019-03-07 03:37:26'),
(35, 'Cozy two room apartment at the centre of Dhaka.', 'The flat is in a central place and at the heart of Dhaka . The parliament bhavan, Basundhara Super Market, New Market, Dhaka University, Engineering University, Ramna Park, Dhaka club, Officers Club, Big Hospitals like LAB aid, Central Hosp, Ramna Super Market etc are very near to my Flat. Some are just walking distance. The place is very safe with cctv protected, There is Smart TV, Wi-Fi, Dish line, Kooking facilities, also Freeze, micro oven etc facilities. There is a guard for your help.\n\nThe space\n\nThe flat is in the 2nd Floor. So it is free from any noice. As it is at the centre of Dhaka , you can go any where from here easily.\n\nGuest access\n\nThe flat is in the 2nd Floor. The name of the building is Aziz Mansion. It is a 5 storied building.\n\nInteraction with guests\n\nI am always available. However most time Dr Nasir Ahmed my colleaque, who is working in Ministry of Health will communicate with you. You can always communicate with us over telephone, mobile, message, messenger, Viber etc\n\nOther things to note\n\nThe flat is in Dhanmondi. However, I live in another place in Banani. So please use the electronic equipments properly. If any electronic equipment is out of order due to mishandle, it will take some time to repair it. You can take help from my brothers as well, who lives in that building. One of my brother in the 3rd floor and another in the 4th floor.', 1, '0', '0', NULL, '2019-03-07 03:52:34', '2019-03-07 03:52:34'),
(37, 'room 001 dhanmondi', 'The flat is in a central place and at the heart of Dhaka . The parliament bhavan, Basundhara Super Market, New Market, Dhaka University, Engineering University, Ramna Park, Dhaka club, Officers Club, Big Hospitals like LAB aid, Central Hosp, Ramna Super Market etc are very near to my Flat. Some are just walking distance. The place is very safe with cctv protected, There is Smart TV, Wi-Fi, Dish line, Kooking facilities, also Freeze, micro oven etc facilities. There is a guard for your help.', 1, '0', '0', NULL, '2019-03-09 04:04:37', '2019-03-09 04:04:37'),
(38, 'The original lightbox script.  Eight years later — still going strong!', 'The original lightbox script. \nEight years later — still going strong!\nThe original lightbox script. \nEight years later — still going strong!The original lightbox script. \nEight years later — still going strong!The original lightbox script. \nEight years later — still going strong!\nThe original lightbox script. \nEight years later — still going strong!', 1, '0', '0', NULL, '2019-03-09 04:22:35', '2019-03-09 04:22:35'),
(39, 'qqq', 'qqqq', 1, '0', '0', NULL, '2019-03-09 04:28:46', '2019-03-09 04:28:46'),
(40, 'rooftop room for 2 persons', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. \nThe generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, '0', '0', NULL, '2019-03-09 21:31:48', '2019-03-09 21:31:48'),
(41, 'qq', 'qq', 1, '0', '0', NULL, '2019-03-09 23:19:15', '2019-03-09 23:19:15'),
(42, 'qq', 'qq', 1, '0', '0', NULL, '2019-03-09 23:20:58', '2019-03-09 23:20:58'),
(43, 'www', 'www', 1, '0', '0', NULL, '2019-03-09 23:22:19', '2019-03-09 23:22:19'),
(44, 'new title', 'asdf sadf sdf sdf sdf df \ndsf\nsdf', 1, '0', '0', NULL, '2019-03-09 23:37:56', '2019-03-09 23:37:56'),
(45, 'ci questions', 'ewr e r\nwer\newr\ner', 1, '0', '0', NULL, '2019-03-09 23:39:42', '2019-03-09 23:39:42'),
(46, '5*hotel', 'hotel picture', 16, '0', '0', NULL, '2019-03-10 00:23:19', '2019-03-10 00:23:19'),
(47, 'রিয়াল মাদ্রিদের এমন হার ১৮ বছর পর', 'sadf dsaf dsf df df dsf', 1, '0', '0', NULL, '2019-03-10 00:56:35', '2019-03-10 00:56:35'),
(48, 'test room', 'test description', 17, '0', '0', NULL, '2019-03-10 03:24:08', '2019-03-10 03:24:08'),
(49, 'room a', 'room a room a room a room a room a room a room a', 18, '0', '0', NULL, '2019-03-10 03:32:43', '2019-03-10 03:32:43'),
(50, 'rrr123', 'rrrrr123', 1, '0', '0', NULL, '2019-03-10 04:18:29', '2019-03-10 04:54:44'),
(51, 'test room1', 'test room 1 Description', 17, '0', '0', NULL, '2019-03-10 04:57:52', '2019-03-10 04:57:52'),
(52, 'test room12', 'test room 1 Description2', 17, '0', '0', NULL, '2019-03-10 04:57:56', '2019-03-10 04:58:38'),
(53, 'test room', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 17, '0', '0', NULL, '2019-03-10 06:43:45', '2019-03-10 06:43:45'),
(54, 'Flora & Fauna (now with Kitchen!)', 'A unique, large air-conditioned en-suite room in the loft of the building, facing a beautiful garden, with the convenience of a kitchen & private entrance. The garden in front, with a panoramic view of the cityscape, is equipped with a seating area where you can relax and unwind in complete tranquility, away from the noisy distractions of the city.\n\nThe entire loft is self-contained, and fully secured. The room is modern and well-equipped, with stylish interiors, to accommodate every need.\n\nThe space\n\n- The building is fully secured with Security Guards at the gate, at all times (24-hours a day).\n\n- Car Parking is available inside the building.\n\n- The entire loft is Self-Contained, and features a fully Private Entrance.\n\n- The room has an Attached Bathroom.\n\n- The room is equipped with Air-Conditioner.\n\n- All sides/windows of the room can be covered up using the Blinds/Curtains.\n\n- All kinds of Food/Cuisines can be Delivered directly to your doorstep, using the apps Pathao (fastest delivery), Foodpanda or HungryNaki.\n\n- Clean Plates, Glasses & Spoons are provided for convenience of having food.\n\n- Kitchen is available with a Gas Stove, Counter-top & Sink for washing dishes.\n\n- Cooking essentials, such as Sauce Pan, Fry Pan, Spatula, Oil, Salt, Dishwashing Liquid are provided.\n\n- A small fridge is provided to store food and beverages.\n\n- A Water Purifier is provided in the room, which automatically refills and dispenses fresh water.\n\n- Electronic Hot-Water Kettle is provided in the room, so you can make yourself some tea or coffee in the morning or evening.\n\n- Microwave is not provided in the room but can be used when needed. Just come downstairs and ring the bell to our apartment :)\n\n- A small wardrobe is provided, so that you can store your clothes.\n\n- A \"Googl Chromecast\" is attached to the TV, so you can stream content/media from your phone or laptop to the TV Screen.\n\n- Great-sounding speakers are provided with the TV.\n\n> The room will be cleaned, free of charge, every two days during your stay.\n\nGuest access\n\n- The Large Bedroom with Attached Bathroom (private)\n\n- The Garden Area (shared with Host\'s family and for Cleaning the garden)\n\nInteraction with guests\n\nGuests\' privacy will be fully respected. But would love to have a small chat if guests are up for it!\n\nOther things to note\n\n- Try to avoid street food if you are coming from abroad, as they might get you sick.\n\n> Please note: with Airbnb, you are staying at someone\'s home.\n\n> Useful Tip: If the date you are trying to book on has already been taken, please feel free to click or tap the \"Heart button\", in order to save \"Flora & Fauna\" to your \"Favourites\". That way it will be easier for you to find and book the place at a later time.', 1, '23.78838282804896', '90.37554041531371', NULL, '2019-03-10 23:33:54', '2019-03-10 23:33:54'),
(55, 'Apartment in Lost Panorama', 'Lost Panorama is a concept of living in an ancient city. A place of Art and culture, music and history and sharing knowledge with people. Quality time is important with living in a cultural area and Love and respect are beyond anything else. Lost panorama is made for sharing all positivity. Welcome to your home away from home.', 1, '23.816840150682754', '90.35722629216002', NULL, '2019-03-10 23:35:49', '2019-03-10 23:35:49'),
(56, 'Budget Hotel near Airport (Hotel De Meridian Ltd)', 'A small hotel with a big heart, Hotel De Meridian is located minutes from the Hazrat Shah Jalal International Airport, Dhaka. We pride ourselves in providing the utmost customer care and thrive to make your stay a pleasurable and comfortable one. Enjoy our complimentary shuttle service to and from the airport at any given time as well as free breakfast every morning.\nEach guest is welcomed with complimentary beverage, fruit basket and mineral water. We also provide tea making facility.\n\nThe space\n\nEach room is equipped with free WiFi, split air-conditioner, ceiling fan, flat screen TV and refrigerator. Spacious rooms with ample storage, upgraded bathrooms (hot and cold water) with all modern facilities and complimentary toiletries.', 1, '23.830394205496475', '90.46289459851073', NULL, '2019-03-10 23:37:35', '2019-03-10 23:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'user1@gmail.com', NULL, '$2y$10$VdOpwamWf5rLsOevQgrFo.U9z1ZO3LqaR5LYzWMCtfRcHCplDPrHu', 'a9jX1TKp18DUvdiYpultjMPSv5q7RG119VduIQmCCzkoYCUtCADHMRIztuw7', '2019-02-25 03:39:03', '2019-02-25 03:39:03'),
(2, 'Noman', 'noman@gmail.com', NULL, '$2y$10$BT2zgyJRof.KjYiBakSyIuKKXiwL.5c3capjfGuXoLmke/XzNP3y2', 'yEpfAiuJ6lHizB5vlzfKySEFeCI6bVZTw6zPYz593R7F8jO5XAAl3KDg8wy4', '2019-03-06 23:10:40', '2019-03-06 23:10:40'),
(3, 'Sheikh Sadia Afrin', 'sadia@gmail.com', NULL, '$2y$10$tZuau4KdCiv2ODO9Na0PpOajZeNPpL7sRjl7mN.f2iodxgxatPp3G', 'HgeFzRySyCr13Ub9zuu8dcEBJIKC0qfgbWswjh8E06AdSJG5LMKH73bYCkjb', '2019-03-06 23:11:38', '2019-03-06 23:11:38'),
(4, 'amir', 'amir@gmail.com', NULL, '$2y$10$mdOBwlTGXJ4H8MmCdWACL.Yq/G4sfimdjHQj4SSpaSOPLf.6krlf6', 'OoDD40MGQe6AjYgJ319iXV3iQ6xakYelKl7m55hiMWkZAXptH6JB9FmEds6a', '2019-03-06 23:11:44', '2019-03-06 23:11:44'),
(5, 'Md Yeasin Miah', 'yeasinmiah292@gmail.com', NULL, '$2y$10$A2nQccTTZFr6oGyOtke6bOhGbM6wHVDcYsSJap7dePB7NVDyFUpIS', 'KSkXgXh9qw0I84ckpokq0lx3Ru00Ledtb620NC39DZLrc9xKHNZvtz4HhYZ6', '2019-03-06 23:11:44', '2019-03-06 23:11:44'),
(6, 'Raihan', 'aabraihan@gmail.com', NULL, '$2y$10$QW/JW12.8R8BLL1IeWrIZOMm9KIwW0OWDng/bfPLa/l/PobOehDuC', 'znzIHL8TCM6Gh4v209o4b3vCMrbD9RfI08gvaU4luQutxLXg9jdMZyZiWhCA', '2019-03-06 23:12:15', '2019-03-06 23:12:15'),
(7, 'maya', 'maya@gmail.com', NULL, '$2y$10$PpKiO0NCzn.8jcDAYaxLkuLsE7GQ4aZ/.8DlPNvWD.886bCjLze.u', 'aBuhPWR3RKkVFpMsqqPwd4lPKtJW096gsmYSh2JPwhA6RWOBjB511pxCWSjP', '2019-03-06 23:13:47', '2019-03-06 23:13:47'),
(8, 'ashiq', 'ashiq@gmail.com', NULL, '$2y$10$WzXbB40kvLStKuGzz1ivreuV3u65wRuO8AMrb6PIIyJN2TcqbFeci', 'ROaQcLgdDHAbaT3L5r9wWcEBA4jm5OdGndWShoEiz5ipKm01yT6Txw1Ev8N7', '2019-03-06 23:14:09', '2019-03-06 23:14:09'),
(9, 'gm robayet hossain', 'gmrobayet1990@gmail.com', NULL, '$2y$10$mqLEJjmK7s86B8QlooEowe1yk99/lLVQBVuy7mJwnOQrrLyLLwxZG', '436eXxX0iALp9C5XQBEFmLw1ONzKmVQg0Vcg0DpQJgNLkZNcUN48Re0GeuP3', '2019-03-06 23:14:31', '2019-03-06 23:14:31'),
(10, 'gm robayet hossain', 'itsors18081@gmail.com', NULL, '$2y$10$Qa6LKSNFm99jguWySlD4tOj5MAiB8xNnQjBtlmjnb8S7yedSefdJG', 'vWi53VngRUR9kQfrg4SXOa3iZtEgIIaJh5ZAmsLJYDvipXMVONLeYyJr1J65', '2019-03-06 23:20:24', '2019-03-06 23:20:24'),
(11, 'amir', 'amir12@gmail.com', NULL, '$2y$10$HSl3bOs4AYX0kt8uOWS6Su/NnZZrJLFc5A1a0JvB7Ik2QQAwg2l4O', 'QBVZX9Kerb9pvDYiz2fo8K1yOSPu0GIPnc0dcq6i9f8aFskCsxCy2cVd3fGk', '2019-03-06 23:20:57', '2019-03-06 23:20:57'),
(12, 'Tanzir', 'tanzirnur@gmail.com', NULL, '$2y$10$QdP3IbizHXQVox0C321oGevAABk0/YJ.oG1JReSdJX8Pf9JPXZEXW', 'rg4JJntzNRdZFo9v4TPyFttYpxug2dLzCaYf4JdHDrgwNDYTgb3NtSSF1uWj', '2019-03-07 02:51:35', '2019-03-07 02:51:35'),
(13, 'masum', 'masum@gmail.com', NULL, '$2y$10$Es8IDUHAvSyoJLD0l5G/pOqeF9jwuFyz6WOrV/CyxXigk/I0h7HlK', 'hp1zCyDXqslE4U83jEzD7hisrpKEQ9RTwrU3beDuOrSxDrAR297ykXv30hqo', '2019-03-07 05:48:11', '2019-03-07 05:48:11'),
(14, 'Mahdia Tanzeem', 'mahdiatanzeem@gmail.com', NULL, '$2y$10$21Tj3EtT9eP/ZR7saVYdo.5gzNJhcsBoQtF/fqInQaQs0NI2Uz1tW', 'WeOhcNuRC1EhilAPowcx572SMxtfrkCOpcT8WJXtq7QFmHpzRlcvKT6VT1yN', '2019-03-08 21:25:57', '2019-03-08 21:25:57'),
(15, 'Mahdia Tanzeem', 'mahdiatanzeemm@gmail.com', NULL, '$2y$10$gXr/6RoiMoLikuxmgdrcmOPEKaMGnEJ5wkFrc5cAgYB/m/DAiq/vW', NULL, '2019-03-09 00:10:47', '2019-03-09 00:10:47'),
(16, 'aman', 'aman@gmail.com', NULL, '$2y$10$RuToRaQ1rJGIiX9UKHsmTuTFPw3MbifsnWkkCVbHjnTZick9naLxC', NULL, '2019-03-09 00:22:12', '2019-03-09 00:22:12'),
(17, 'Munzur', 's@gmail.com', NULL, '$2y$10$GuMYdw/lGeURQvMOY7PZLeBnNYeDUeELcgWj4ZvL3Dc/1V/8BCI8u', NULL, '2019-03-09 06:52:17', '2019-03-09 06:52:17'),
(18, 'Noman', 'nomanmiazy@gmail.com', NULL, '$2y$10$hyBFHMFKPH8iQ4EiscbM4eY8.sOXmu.ESEGdfQ3901Z9ofns2ZGmm', 'u6H6i436FKvUeV2ss2M7AyXbZZxQtBvRBJPdweB7KNVftQWUwdxR9YnWwpQe', '2019-03-10 00:18:14', '2019-03-10 00:18:14'),
(19, 'Mahdia Tanzeem', 'mahdiatanzeem49@gmail.com', NULL, '$2y$10$uod2eKW9tBPljJwKJC2J8.v5sBL.j9cEyzbmfWGjxo587ALEwQVBK', 'mIzfByw00LaOooFhD9Qk7jnyMHZq4r1R2viGuNjtTRMVdeOA1244fSh5Xc5e', '2019-03-10 00:25:56', '2019-03-10 00:25:56'),
(20, 'Ashiq', 'ashiq@yahoo.com', NULL, '$2y$10$DXr.paXJGSwIy958hpN/AuH2avAaXogN9xsZoYbfHHrfMckRad4dW', NULL, '2019-03-10 23:38:14', '2019-03-10 23:38:14'),
(21, 'Shakil', 'matirmanush25@gmail.com', NULL, '$2y$10$e4b2SLmUUwS5FqHTL009HuLrO0MIccNwTuB5.RWtvW6fXLMAITSzi', 'wDodQsOlTGtLYXdFoVgyzllMeOa0pm0Ugok3iqzh6xmJIyPp1d6tkAUYWiIP', '2019-03-10 23:40:15', '2019-03-10 23:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_editor` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `email`, `password`, `is_editor`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'writer1', 'writer1@gmail.com', '$2y$10$hGQCwigt0WKWg6RI.pk1we9YfmS0d2Zzk//G5UT0RCrAlGpXisCmW', 0, 'L1I8kowQO8TGPCvPn4FlOp4jEpetwjhUHumXfqbjU6pnFuRLJRmPaHnR5crQ', '2019-02-25 03:41:53', '2019-02-25 03:41:53'),
(2, 'fahim', 'fahim.amin71@gmail.com', '$2y$10$.LHYVXfosMCZKHx7MFyLXOW6oRTDLvhMWDdbwNzYqTvYNbV48pGVO', 0, NULL, '2019-03-06 23:11:12', '2019-03-06 23:11:12'),
(3, 'Md parvaz', 'mdparvaz@gmail.com', '$2y$10$78sPL2MzCnxTAglZKCg2reGC94ayYWKN2lDbbOiiXQeRwMB/w2oSe', 0, NULL, '2019-03-06 23:11:56', '2019-03-06 23:11:56'),
(4, 'Mohammad Ali Abdullah', 'mdalibd511@gmail.com', '$2y$10$XjU.vybCqA/frvtmgV.cf.kfCABqvsODmZnIO53dGw/nnKe6Oxa5.', 0, NULL, '2019-03-06 23:12:28', '2019-03-06 23:12:28'),
(5, 'Shakil', 'kazimuhammadullah@gmail.com', '$2y$10$JOH7E4grgyAsn20u6r1nCOMT0ndT3j3Mm1vm8hyXOb5dxiFXw2uQa', 0, NULL, '2019-03-06 23:12:58', '2019-03-06 23:12:58'),
(6, 'Noman', 'noman1@gmail.com', '$2y$10$O51W1R5HfdCWwkaGhGYPn.5MrOmJlGFY26XI2Wa87BkjUdKQI4u4u', 0, NULL, '2019-03-06 23:14:55', '2019-03-06 23:14:55'),
(7, 'Sifat Hossain', 'sh@gmail.com', '$2y$10$TTmuwj7nrQD/RFKLai0CIOXv82MqLLAINdLw1q7ug6TrKjFI3js1C', 0, NULL, '2019-03-06 23:16:01', '2019-03-06 23:16:01'),
(9, 'Mehdi Hasan', 'mehdi@gmail.com', '$2y$10$Nwsxc8eAkT4WYQp5y770c.Ii9TwrSaeWFRfodhODR4ywd0o/y//C6', 0, NULL, '2019-03-06 23:17:02', '2019-03-06 23:17:02'),
(10, 'Sifat Hossain', 'sha@gmail.com', '$2y$10$JM1SqtQiLcdahYivUxYt/.3bHtxMPUYF.ozpLhaouSHF.NnMFgHl6', 0, NULL, '2019-03-06 23:17:19', '2019-03-06 23:17:19'),
(11, 'shokina', 'shokina@gmail.com', '$2y$10$lz93008lGraOILpjxHJ4uO26dyNiIjOUDCtVTzwOBt.JLoXEs/wye', 0, NULL, '2019-03-06 23:17:28', '2019-03-06 23:17:28'),
(12, 'Sheikh Sadia Afrin', 'afrin@gmail.com', '$2y$10$umHtUp2gzIyhdcVX6s1Qy.4js2k2BZqq4tn9QuVMX1.ysj713Wt72', 0, NULL, '2019-03-06 23:17:46', '2019-03-06 23:17:46'),
(13, 'gm robayet hossain', 'gmrobayet1992@gmail.com', '$2y$10$wmxZO4iuk1LEr1ivvQNxLuuyVaiOKFGMBhWVDbFqXcVayOCqKtEje', 0, NULL, '2019-03-06 23:23:03', '2019-03-06 23:23:03'),
(14, 'amir', 'hossain@gmail.com', '$2y$10$eSC1/nD7kDP9Q8/IhEqDQuq7fh44oCeCUz9D7ELsMserEYAbholTu', 0, NULL, '2019-03-06 23:23:40', '2019-03-06 23:23:40'),
(15, 'customer', 'customer@gmail.com', '$2y$10$.fLXtYis2kPMiBcvtTfMdec9Rz1e2I7MIDTdkM.91vmu9c4lEjfk2', 0, NULL, '2019-03-07 06:05:01', '2019-03-07 06:05:01'),
(16, 'noman', 'noman2@gmail.com', '$2y$10$42g37/LbHLDK564pQpqLdusX8fpZoVg1sN1BNSQqF99PBk1nAT/Ju', 0, NULL, '2019-03-10 00:19:41', '2019-03-10 00:19:41'),
(17, 'Touhidun', 'touhi13@gmail.com', '$2y$10$EVKwSbxNob5bHTC5w4e1wu0QP4tRwc/6k2x02VzYdpbS2dunZ5REK', 0, '0OoiQuOEy89q7bRdvpfbom0GIVlRPYYdGV4Pqja2Tbijb0NiVHzU7OqGctH6', '2019-03-10 03:23:08', '2019-03-10 03:23:08'),
(18, 'Tanzir', 'tanzir@gmail.com', '$2y$10$zI76javcA90Vo/w1JjYFX..CKzzuRHyQlwUs5i75oAC3HvpcubnM.', 0, NULL, '2019-03-10 03:31:19', '2019-03-10 03:31:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities_room`
--
ALTER TABLE `amenities_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amenities_room_room_id_foreign` (`room_id`),
  ADD KEY `amenities_room_amenities_id_foreign` (`amenities_id`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_room_id_foreign` (`room_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `writers_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `amenities_room`
--
ALTER TABLE `amenities_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenities_room`
--
ALTER TABLE `amenities_room`
  ADD CONSTRAINT `amenities_room_amenities_id_foreign` FOREIGN KEY (`amenities_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `amenities_room_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
