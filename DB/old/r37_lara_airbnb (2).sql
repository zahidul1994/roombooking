-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 10:16 AM
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
(1, 'admin', 'admin@gmail.com', '$2y$10$lQTV7EyzUGlaCvDjH9zm2.FNdCqOYK5UhFwte0kafmkGWNTmyOUQa', 0, NULL, '2019-03-23 21:44:37', '2019-03-23 21:44:37');

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
(10, 3, 12, 0, NULL, NULL, NULL);

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
  `price_for_day` decimal(8,2) NOT NULL,
  `tax_paid` decimal(8,2) NOT NULL,
  `site_fees` decimal(8,2) NOT NULL,
  `amount_paid` decimal(8,2) NOT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `refund_paid` decimal(8,2) DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `effective_amount` decimal(8,2) NOT NULL,
  `booking_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `room_id`, `user_id`, `currency_id`, `check_in_date`, `check_out_date`, `price_per_day`, `price_for_day`, `tax_paid`, `site_fees`, `amount_paid`, `cancel_date`, `refund_paid`, `transaction_id`, `effective_amount`, `booking_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 1, 1, '2019-03-25', '2019-03-30', '15.00', '75.00', '0.00', '0.00', '0.00', NULL, '0.00', NULL, '0.00', '2019-03-21 05:06:12', 0, '2019-03-20 23:06:12', '2019-03-20 23:06:12', NULL),
(3, 1, 1, 1, '2019-04-05', '2019-04-08', '25.00', '75.00', '0.00', '0.00', '0.00', NULL, '0.00', NULL, '0.00', '2019-03-21 05:08:34', 0, '2019-03-20 23:08:34', '2019-03-20 23:08:34', NULL);

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
(2, 'hotels', 'hotels', 1, '2019-03-19 12:00:00', NULL, NULL);

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
(5, 2, 'Kalurghat', 1, '2019-03-19 12:00:00', NULL, NULL);

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
(2, 'United States', 'US', 1, '2019-03-19 12:00:00', NULL, NULL);

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
(16, '2019_03_18_103932_create_bookings_table', 1),
(17, '2019_03_19_044248_create_reviews_table', 1),
(18, '2019_03_19_102829_create_replies_table', 1);

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
(4, '1553398784_1_704017.jpg', NULL, 3, '2019-03-23 21:39:44', '2019-03-23 21:39:44');

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
(3, 'new title', 'some desc', 1, 1, 3, 1, 1, 1, '23.792025622757198', '90.38092629101561', '2', '2', '2', '2', 0, '2019-03-26', '2019-03-30', '15.00', NULL, '0', NULL, NULL, 0, NULL, '2019-03-23 21:39:43', '2019-03-23 21:39:43');

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
(2, 1, 'Chottogram Division', 'BD-CH', 1, '2019-03-19 12:00:00', NULL, NULL);

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
(1, 1, 'Entire Home', 1, '2019-03-19 12:00:00', NULL, NULL),
(2, 1, 'Entire Flat', 1, '2019-03-19 12:00:00', NULL, NULL),
(3, 1, 'Private Room', 1, '2019-03-19 12:00:00', NULL, NULL),
(4, 1, 'Shared Room', 1, '2019-03-19 12:00:00', NULL, NULL);

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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$uAq1cDSCiTjWSxM3JWrXcuhRLIAI9MMy3QZ.M2VZ4R3Xa7tFR.q2G', 'j5sETqwy27VPEnJeCu4HPVYr4GJagVKKhgjrJ3gvstnxsJkE8JReeyYzbBct', '2019-03-20 22:57:52', '2019-03-20 22:57:52');

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
(1, 'Owner Number 1', 'writer1@gmail.com', '$2y$10$kQJSNeZ6uOMhQb8GqsCrR.krXoKgOhBHynTLi3vfS7WuTuNGmP9nW', 0, 'f3SzjFEbqSSdH4ZWJLpy27tVGcMZTnGegMuy9UbanxpQU0LQC5SHQDZdu5yY', '2019-03-20 21:58:31', '2019-03-20 21:58:31');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
