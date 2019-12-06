-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 06:07 PM
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
-- Database: `r37_lara_airbnb`
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
(1, 'admin', 'admin@gmail.com', '$2y$10$lQTV7EyzUGlaCvDjH9zm2.FNdCqOYK5UhFwte0kafmkGWNTmyOUQa', 0, 'vboiC7w6Og6tx8nrc4oIJ150BGy6WJg2ec1bbU8yWJapHTRqpvS6Iv3MjknX', '2019-03-23 21:44:37', '2019-03-23 21:44:37');

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
(1, 'AC', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(2, 'Oven', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(3, 'Fridge', 'dafault', 1, '2019-03-09 06:00:00', NULL, NULL),
(4, 'Washing Machine', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(5, 'Wifi', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(6, 'Smoke Detector', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(7, 'Lift', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(8, 'Hot water', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(9, 'Hair dryer', 'default', 1, '2019-03-09 06:00:00', NULL, NULL),
(10, 'Hangers', 'dafault', 1, '2019-03-09 06:00:00', NULL, NULL),
(11, 'Attach Bathroom', 'none', 1, '2019-03-18 12:00:00', NULL, NULL),
(12, 'Attached Balcony', 'none', 1, NULL, NULL, NULL);

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
(1, 1, 1, 0, NULL, NULL, NULL),
(2, 1, 11, 0, NULL, NULL, NULL),
(3, 2, 3, 0, NULL, NULL, NULL),
(4, 2, 5, 0, NULL, NULL, NULL),
(5, 3, 1, 0, NULL, NULL, NULL),
(6, 3, 3, 0, NULL, NULL, NULL),
(7, 3, 5, 0, NULL, NULL, NULL),
(8, 3, 7, 0, NULL, NULL, NULL),
(9, 3, 11, 0, NULL, NULL, NULL),
(10, 3, 12, 0, NULL, NULL, NULL),
(11, 4, 3, 0, NULL, NULL, NULL),
(12, 4, 5, 0, NULL, NULL, NULL),
(13, 4, 11, 0, NULL, NULL, NULL),
(14, 4, 12, 0, NULL, NULL, NULL),
(15, 5, 1, 0, NULL, NULL, NULL),
(16, 5, 3, 0, NULL, NULL, NULL),
(17, 5, 5, 0, NULL, NULL, NULL),
(18, 5, 7, 0, NULL, NULL, NULL),
(19, 5, 11, 0, NULL, NULL, NULL),
(20, 5, 12, 0, NULL, NULL, NULL),
(21, 6, 1, 0, NULL, NULL, NULL),
(22, 6, 2, 0, NULL, NULL, NULL),
(23, 6, 3, 0, NULL, NULL, NULL),
(24, 6, 4, 0, NULL, NULL, NULL),
(25, 6, 5, 0, NULL, NULL, NULL),
(26, 6, 7, 0, NULL, NULL, NULL),
(27, 6, 10, 0, NULL, NULL, NULL),
(28, 6, 11, 0, NULL, NULL, NULL),
(29, 6, 12, 0, NULL, NULL, NULL),
(30, 7, 1, 0, NULL, NULL, NULL),
(31, 7, 3, 0, NULL, NULL, NULL),
(32, 7, 5, 0, NULL, NULL, NULL),
(33, 7, 7, 0, NULL, NULL, NULL),
(34, 7, 11, 0, NULL, NULL, NULL),
(35, 7, 12, 0, NULL, NULL, NULL),
(36, 8, 1, 0, NULL, NULL, NULL),
(37, 8, 3, 0, NULL, NULL, NULL),
(38, 8, 5, 0, NULL, NULL, NULL),
(39, 8, 7, 0, NULL, NULL, NULL),
(40, 8, 11, 0, NULL, NULL, NULL),
(41, 8, 12, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `price_per_day` decimal(8,2) NOT NULL,
  `price_for_stay` decimal(8,2) NOT NULL,
  `tax_paid` decimal(8,2) NOT NULL,
  `site_fees` decimal(8,2) NOT NULL,
  `amount_paid` decimal(8,2) NOT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `refund_paid` decimal(8,2) DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `effective_amount` decimal(8,2) NOT NULL,
  `booking_date` datetime NOT NULL,
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Property', 'property', 1, '2019-03-19 12:00:00', NULL, NULL),
(2, 'hotels', 'hotels', 0, '2019-03-19 12:00:00', '2019-04-01 22:54:14', NULL),
(15, 'Hostels', 'All hostels', 1, '2019-04-02 03:38:16', '2019-04-02 03:38:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dhaka', 1, '2019-03-19 12:00:00', NULL, NULL),
(2, 1, 'Savar', 1, '2019-03-19 12:00:00', NULL, NULL),
(3, 2, 'Chattagram Sadar', 1, '2019-03-19 12:00:00', NULL, NULL),
(4, 2, 'Potenga', 1, '2019-03-19 12:00:00', NULL, NULL),
(5, 2, 'Kalurghat', 1, '2019-03-19 12:00:00', NULL, NULL),
(6, 4, 'Boston', 0, '2019-04-02 00:25:59', '2019-04-02 03:31:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bangladesh', 'BD', 1, '2019-03-19 12:00:00', NULL, NULL),
(2, 'United States', 'US', 1, '2019-03-19 12:00:00', NULL, NULL),
(4, 'India', 'in', 1, '2019-04-02 00:14:33', '2019-04-02 00:14:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `icon_image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Taka', 'taka.ico', 1, '2019-03-20 18:00:00', NULL, NULL),
(2, 'Dollar', 'dollar', 1, '2019-03-20 18:00:00', NULL, NULL);

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
(5, '2019_02_24_125028_create_writer_profiles_table', 1),
(6, '2019_03_18_040410_create_categories_table', 1),
(7, '2019_03_18_040425_create_subcategories_table', 1),
(8, '2019_03_18_040442_create_countries_table', 1),
(9, '2019_03_18_040443_create_states_table', 1),
(10, '2019_03_18_040454_create_cities_table', 1),
(11, '2019_03_18_040456_create_amenities_table', 1),
(12, '2019_03_18_040457_create_rooms_table', 1),
(13, '2019_03_18_040458_create_photos_table', 1),
(14, '2019_03_18_040460_create_amenities_room_table', 1),
(15, '2019_03_18_103827_create_currencies_table', 1),
(19, '2019_03_18_103932_create_bookings_table', 2),
(20, '2019_03_19_044248_create_reviews_table', 2),
(21, '2019_03_19_102829_create_replies_table', 2),
(23, '2019_04_03_095009_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifiable_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `type`, `note_id`, `notifiable_id`, `notifiable_type`, `seen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New Listing created with id:7', 'listing', '1', '1', 'App\\Admin', 0, '2019-04-03 04:15:16', '2019-04-03 04:15:16', NULL),
(2, 'New Listing created with id:8', 'listing', '1', '1', 'App\\Admin', 0, '2019-04-03 06:01:54', '2019-04-03 06:01:54', NULL);

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
(1, '1553398783_1_256541.jpg', NULL, 3, '2019-03-23 21:39:44', '2019-03-23 21:39:44'),
(2, '1553398784_1_978556.jpg', NULL, 3, '2019-03-23 21:39:44', '2019-03-23 21:39:44'),
(3, '1553398784_1_247578.jpg', NULL, 3, '2019-03-23 21:39:44', '2019-03-23 21:39:44'),
(4, '1553398784_1_704017.jpg', NULL, 3, '2019-03-23 21:39:44', '2019-03-23 21:39:44'),
(5, '1554263027_1_225946.jpg', NULL, 4, '2019-04-02 21:43:48', '2019-04-02 21:43:48'),
(6, '1554263028_1_470797.jpg', NULL, 4, '2019-04-02 21:43:49', '2019-04-02 21:43:49'),
(7, '1554263029_1_891489.jpg', NULL, 4, '2019-04-02 21:43:49', '2019-04-02 21:43:49'),
(8, '1554263029_1_152347.jpg', NULL, 4, '2019-04-02 21:43:49', '2019-04-02 21:43:49'),
(9, '1554263538_1_941615.jpg', NULL, 5, '2019-04-02 21:52:19', '2019-04-02 21:52:19'),
(10, '1554263540_1_452154.jpg', NULL, 5, '2019-04-02 21:52:20', '2019-04-02 21:52:20'),
(11, '1554263540_1_506809.jpg', NULL, 5, '2019-04-02 21:52:21', '2019-04-02 21:52:21'),
(12, '1554263541_1_687731.jpg', NULL, 5, '2019-04-02 21:52:21', '2019-04-02 21:52:21'),
(13, '1554263542_1_518014.jpg', NULL, 5, '2019-04-02 21:52:22', '2019-04-02 21:52:22'),
(14, '1554263542_1_697137.jpg', NULL, 5, '2019-04-02 21:52:23', '2019-04-02 21:52:23'),
(15, '1554263543_1_632453.jpg', NULL, 5, '2019-04-02 21:52:23', '2019-04-02 21:52:23'),
(16, '1554263543_1_481190.jpg', NULL, 5, '2019-04-02 21:52:24', '2019-04-02 21:52:24'),
(17, '1554265163_1_659007.jpg', NULL, 6, '2019-04-02 22:19:24', '2019-04-02 22:19:24'),
(18, '1554265164_1_133057.jpg', NULL, 6, '2019-04-02 22:19:24', '2019-04-02 22:19:24'),
(19, '1554265165_1_670092.jpg', NULL, 6, '2019-04-02 22:19:25', '2019-04-02 22:19:25'),
(20, '1554265165_1_512573.jpg', NULL, 6, '2019-04-02 22:19:26', '2019-04-02 22:19:26'),
(21, '1554265166_1_550484.jpg', NULL, 6, '2019-04-02 22:19:26', '2019-04-02 22:19:26'),
(22, '1554265166_1_320750.jpg', NULL, 6, '2019-04-02 22:19:27', '2019-04-02 22:19:27'),
(23, '1554265167_1_704609.jpg', NULL, 6, '2019-04-02 22:19:27', '2019-04-02 22:19:27'),
(24, '1554265167_1_368315.jpg', NULL, 6, '2019-04-02 22:19:28', '2019-04-02 22:19:28'),
(25, '1554286510_1_751647.jpg', NULL, 7, '2019-04-03 04:15:11', '2019-04-03 04:15:11'),
(26, '1554286511_1_248011.jpg', NULL, 7, '2019-04-03 04:15:12', '2019-04-03 04:15:12'),
(27, '1554286512_1_967898.jpg', NULL, 7, '2019-04-03 04:15:13', '2019-04-03 04:15:13'),
(28, '1554286513_1_609463.jpg', NULL, 7, '2019-04-03 04:15:13', '2019-04-03 04:15:13'),
(29, '1554286514_1_668521.jpg', NULL, 7, '2019-04-03 04:15:14', '2019-04-03 04:15:14'),
(30, '1554286514_1_589132.jpg', NULL, 7, '2019-04-03 04:15:15', '2019-04-03 04:15:15'),
(31, '1554286515_1_407747.jpg', NULL, 7, '2019-04-03 04:15:16', '2019-04-03 04:15:16'),
(32, '1554286516_1_192338.jpg', NULL, 7, '2019-04-03 04:15:16', '2019-04-03 04:15:16'),
(33, '1554292908_1_309430.jpeg', NULL, 8, '2019-04-03 06:01:49', '2019-04-03 06:01:49'),
(34, '1554292910_1_745404.jpg', NULL, 8, '2019-04-03 06:01:50', '2019-04-03 06:01:50'),
(35, '1554292911_1_812485.jpg', NULL, 8, '2019-04-03 06:01:51', '2019-04-03 06:01:51'),
(36, '1554292911_1_649579.jpg', NULL, 8, '2019-04-03 06:01:52', '2019-04-03 06:01:52'),
(37, '1554292912_1_413332.jpg', NULL, 8, '2019-04-03 06:01:52', '2019-04-03 06:01:52'),
(38, '1554292912_1_564166.jpg', NULL, 8, '2019-04-03 06:01:53', '2019-04-03 06:01:53'),
(39, '1554292913_1_203151.JPG', NULL, 8, '2019-04-03 06:01:53', '2019-04-03 06:01:53'),
(40, '1554292913_1_937236.jpg', NULL, 8, '2019-04-03 06:01:54', '2019-04-03 06:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED DEFAULT NULL,
  `writer_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `accuracy` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `communication` int(11) NOT NULL,
  `checkin` int(11) NOT NULL,
  `cleanliness` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` int(10) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bedroom_count` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_count` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bathroom_count` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accomodates_count` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability_type` tinyint(4) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `price_type` tinyint(4) DEFAULT NULL,
  `minimum_stay` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_stay_type` tinyint(4) DEFAULT NULL,
  `refund_type` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `description`, `writer_id`, `category_id`, `subcategory_id`, `country_id`, `state_id`, `city_id`, `latitude`, `longitude`, `bedroom_count`, `bed_count`, `bathroom_count`, `accomodates_count`, `availability_type`, `start_date`, `end_date`, `price`, `price_type`, `minimum_stay`, `minimum_stay_type`, `refund_type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 2, 1, 1, 1, '23.8062762497232', '90.3669849417114', '2', '3', '2', '5', 1, '2019-03-21', '2019-03-31', '25.00', 1, '1', 1, 0, 1, NULL, '2019-03-20 12:00:00', NULL),
(2, 'What is Lorem Ipsum 2', '2 2Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 3, 1, 1, 1, '23.8072762497232', '90.3769849417114', '1', '1', '1', '2', 1, '2019-03-21', '2019-03-31', '15.00', 1, '1', 1, 0, 1, NULL, '2019-03-20 12:00:00', NULL),
(3, 'new title', 'some desc', 1, 1, 3, 1, 1, 1, '23.792025622757198', '90.38092629101561', '2', '2', '2', '2', 0, '2019-03-26', '2019-03-30', '15.00', NULL, '0', NULL, NULL, 0, NULL, '2019-03-23 21:39:43', '2019-03-23 21:39:43'),
(4, 'Nibadika Chatri Hostel', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 15, 10, 1, 1, 1, '23.78710580472921', '90.3828176381287', '1', '1', '1', '1', 0, '2019-04-01', '2019-04-30', '5000.00', NULL, '0', NULL, NULL, 0, NULL, '2019-04-02 21:43:47', '2019-04-02 21:43:47'),
(5, 'Super Hostels', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. \nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. \nMany desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. \nVarious versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 15, 11, 1, 1, 1, '23.815828419281623', '90.3559097172913', '1', '1', '1', '1', 0, '2019-04-03', '2019-04-30', '6000.00', NULL, '0', NULL, NULL, 0, NULL, '2019-04-02 21:52:18', '2019-04-02 21:52:18'),
(6, 'Genuity Hotel', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. \nMany desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 2, 7, 1, 1, 1, '23.805698680106246', '90.36464298984379', '1', '1', '1', '1', 0, '2019-04-01', '2019-04-30', '5000.00', NULL, '0', NULL, NULL, 0, NULL, '2019-04-02 22:19:23', '2019-04-02 22:19:23'),
(7, 'Private Apartment at Bashundhara', 'Once your database table and models are defined, you may access the relationships via your models. For example, to access all of the comments for a post, we can use the  comments dynamic property', 1, 1, 2, 1, 1, 1, '23.818587451295777', '90.4528769375977', '3', '4', '3', '6', 0, '2019-04-04', '2019-04-29', '50.00', NULL, '0', NULL, NULL, 0, NULL, '2019-04-03 04:15:09', '2019-04-03 04:15:09'),
(8, 'Entire Home at Mirpur', 'some desc\nsome desc\nsome desc\nsome desc\nsome desc\nsome desc', 1, 1, 1, 1, 1, 1, '23.779576595331644', '90.37964190265507', '4', '4', '4', '4', 0, '2019-04-03', '2019-04-25', '45.00', NULL, '0', NULL, NULL, 0, NULL, '2019-04-03 06:01:47', '2019-04-03 06:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dhaka Division', 'BD-DH', 1, '2019-03-19 12:00:00', NULL, NULL),
(2, 1, 'Chottogram Division', 'BD-CH', 1, '2019-03-19 12:00:00', NULL, NULL),
(3, 1, 'Dhaka', 'BD-DH', 1, '2019-04-02 00:15:33', '2019-04-02 00:19:08', NULL),
(4, 2, 'New York', 'US-NY', 0, '2019-04-02 00:21:10', '2019-04-02 03:31:14', NULL),
(5, 1, 'Rajshahi', 'BD-RA', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Entire Home', 1, '2019-03-19 12:00:00', '2019-04-01 03:45:58', NULL),
(2, 1, 'Entire Flat', 1, '2019-03-19 12:00:00', NULL, NULL),
(3, 1, 'Private Room', 1, '2019-03-19 12:00:00', NULL, NULL),
(4, 1, 'Shared Room', 1, '2019-03-19 12:00:00', NULL, NULL),
(7, 2, '3 Star', 1, '2019-04-01 03:46:18', '2019-04-01 03:46:44', NULL),
(8, 2, '4 Star', 1, '2019-04-01 03:46:35', '2019-04-01 03:46:35', NULL),
(9, 2, '5 Star', 1, '2019-04-01 03:46:56', '2019-04-01 03:46:56', NULL),
(10, 15, 'Women Hostels', 1, '2019-04-02 03:38:41', '2019-04-02 03:39:23', NULL),
(11, 15, 'Men Hostels', 1, '2019-04-02 03:39:36', '2019-04-02 03:39:36', NULL),
(12, 15, 'Mess', 1, '2019-04-02 03:43:34', '2019-04-02 03:43:34', NULL),
(13, 15, 'Roommate', 1, '2019-04-02 03:44:18', '2019-04-02 03:45:01', NULL);

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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$uAq1cDSCiTjWSxM3JWrXcuhRLIAI9MMy3QZ.M2VZ4R3Xa7tFR.q2G', 'j5sETqwy27VPEnJeCu4HPVYr4GJagVKKhgjrJ3gvstnxsJkE8JReeyYzbBct', '2019-03-20 22:57:52', '2019-03-20 22:57:52'),
(2, 'masum', 'masum@gmail.com', NULL, '$2y$10$/U8HvvhP4YY0YIsDz1zHq.Wq8CbFqemKGBAY7/FUoaorcq30KSbne', 'LB8dbvza11XfhyAlByMxJ8FkzO4HDAv2NolkqAZgCuESB7LW0oUscU3i5CAj', '2019-04-03 05:50:28', '2019-04-03 05:50:28');

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
(1, 'Owner Number 1', 'writer1@gmail.com', '$2y$10$kQJSNeZ6uOMhQb8GqsCrR.krXoKgOhBHynTLi3vfS7WuTuNGmP9nW', 0, 'mE4mvx2RYGAfzRa7WEL4mFuNcDq4UKD10ydAsAyz6gweU08WyHNNUtKkopMh', '2019-03-20 21:58:31', '2019-03-20 21:58:31'),
(2, 'masum', 'masumidb@gmail.com', '$2y$10$2LJPTU7.dO.fXrB9.S9WMeyjn7nCSwVJ.HyVFYqxo.piHKjGDoqx.', 0, NULL, '2019-04-03 05:51:34', '2019-04-03 05:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `writer_profiles`
--

CREATE TABLE `writer_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `writer_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writer_profiles`
--

INSERT INTO `writer_profiles` (`id`, `writer_id`, `title`, `description`, `nid`, `phone`, `school`, `work`, `languages`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Welcome to My Palace', 'Some Description', '34545', '01911123456', 'Islamic Development Bank School', 'IDB BISEW', 'Bangla, English', '1553398880_1_536460.jpg', 1, '2019-03-20 22:37:18', '2019-03-23 21:41:20', NULL);

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
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_review_id_foreign` (`review_id`),
  ADD KEY `replies_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_room_id_foreign` (`room_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_writer_id_foreign` (`writer_id`),
  ADD KEY `rooms_category_id_foreign` (`category_id`),
  ADD KEY `rooms_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `rooms_country_id_foreign` (`country_id`),
  ADD KEY `rooms_state_id_foreign` (`state_id`),
  ADD KEY `rooms_city_id_foreign` (`city_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

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
-- Indexes for table `writer_profiles`
--
ALTER TABLE `writer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `writer_profiles_phone_unique` (`phone`),
  ADD KEY `writer_profiles_writer_id_foreign` (`writer_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `amenities_room`
--
ALTER TABLE `amenities_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `writer_profiles`
--
ALTER TABLE `writer_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `rooms_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `rooms_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `rooms_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `rooms_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `rooms_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `writer_profiles`
--
ALTER TABLE `writer_profiles`
  ADD CONSTRAINT `writer_profiles_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
