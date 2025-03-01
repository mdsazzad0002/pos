-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2025 at 06:32 AM
-- Server version: 9.1.0
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_optional` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stay_time` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_addressable_type_addressable_id_index` (`addressable_type`,`addressable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `email`, `phone`, `address`, `address_optional`, `district`, `stay_time`, `country`, `state`, `postal`, `creator`, `updater`, `addressable_type`, `addressable_id`, `created_at`, `updated_at`) VALUES
(1, 'Dolan Mays', 'tebavadidy@mailinator.com', '+1 (387) 557-4274', 'Et voluptatibus dolo', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-02-27 12:17:35', '2025-02-27 12:17:35'),
(2, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-02-27 12:17:35', '2025-02-27 12:17:35'),
(3, 'Charles Kline', 'liwuzelogi@mailinator.com', '+1 (774) 245-4717', 'Reprehenderit invent', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 3, '2025-03-01 05:07:07', '2025-03-01 05:07:07'),
(4, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 3, '2025-03-01 05:07:07', '2025-03-01 05:07:07'),
(5, 'Charles Kline', 'liwuzelogi@mailinator.com1', '+1 (774) 245-4717', 'Reprehenderit invent', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 4, '2025-03-01 05:10:32', '2025-03-01 05:10:32'),
(6, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 4, '2025-03-01 05:10:32', '2025-03-01 05:10:32'),
(7, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 4, '2025-03-01 05:11:10', '2025-03-01 05:11:10'),
(8, 'Uta Best', 'vuduwacuj@mailinator.com', '+1 (726) 253-1935', 'Temporibus blanditii', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 5, '2025-03-01 05:13:33', '2025-03-01 05:13:33'),
(9, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 5, '2025-03-01 05:13:33', '2025-03-01 05:13:33'),
(10, 'Uta Best', 'vuduwacuj@mailinator.com1', '+1 (726) 253-1935', 'Temporibus blanditii', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 6, '2025-03-01 05:14:02', '2025-03-01 05:14:02'),
(11, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 6, '2025-03-01 05:14:02', '2025-03-01 05:14:02'),
(12, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 6, '2025-03-01 06:18:15', '2025-03-01 06:18:15'),
(13, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 6, '2025-03-01 06:18:15', '2025-03-01 06:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

DROP TABLE IF EXISTS `advance_salaries`;
CREATE TABLE IF NOT EXISTS `advance_salaries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` bigint NOT NULL DEFAULT '0',
  `user_id` bigint NOT NULL DEFAULT '0',
  `month` bigint NOT NULL DEFAULT '0',
  `year` bigint NOT NULL DEFAULT '0',
  `description` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
CREATE TABLE IF NOT EXISTS `areas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_id` bigint NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `slug`, `upload_id`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sdfsd', 'sdfsd', 0, 1, '1', '0', NULL, '2025-02-26 12:41:33', '2025-02-26 12:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `year` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `month` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` bigint NOT NULL DEFAULT '0',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog_category`
--

DROP TABLE IF EXISTS `blog_blog_category`;
CREATE TABLE IF NOT EXISTS `blog_blog_category` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_id` bigint UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_category_blog_id_foreign` (`blog_id`),
  KEY `blog_blog_category_blog_category_id_foreign` (`blog_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `location`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-02-25 13:50:28', '2025-02-25 13:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator` bigint NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `creator`, `name`, `slug`, `status`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Apple', 'apple', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 1, 'Bata', 'bata', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 1, 'Lotto', 'lotto', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(4, 1, 'Easy', 'easy', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(5, 1, 'Pran', 'pran', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(6, 1, 'RFL', 'rfl', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(7, 1, 'Easy', 'easy-1', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(8, 1, 'Magna', 'magna', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(9, 1, 'Padma', 'padma', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(10, 1, 'Duronto', 'duronto', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(11, 1, 'Sumsung', 'sumsung', 1, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `cash_counters`
--

DROP TABLE IF EXISTS `cash_counters`;
CREATE TABLE IF NOT EXISTS `cash_counters` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cash_counters_branch_id_foreign` (`branch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator` bigint NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_order` bigint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_bg` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `creator`, `name`, `slug`, `position_order`, `description`, `status`, `upload_id`, `upload_bg`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'T Shirt', 't-shirt', 0, NULL, '1', NULL, NULL, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 1, 'Shoes', 'shoes', 0, NULL, '1', NULL, NULL, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 1, 'Pant', 'pant', 0, NULL, '1', NULL, NULL, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(4, 1, 'Sheree', 'sheree', 0, NULL, '1', NULL, NULL, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(5, 1, 'Underwire', 'underwire', 0, NULL, '1', NULL, NULL, NULL, '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `company_permissions`
--

DROP TABLE IF EXISTS `company_permissions`;
CREATE TABLE IF NOT EXISTS `company_permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `key` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare_styles`
--

DROP TABLE IF EXISTS `compare_styles`;
CREATE TABLE IF NOT EXISTS `compare_styles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compare_styles`
--

INSERT INTO `compare_styles` (`id`, `key`, `title`, `upload_id`, `status`, `background_color`, `details`, `created_at`, `updated_at`) VALUES
(1, '_compare_style.compare_style1', 'Header Style', 'uploads/preset/compare_variant/compare_style1.png', 1, '#ffffff', '\n                   Compare Style 1\n                ', '2025-02-25 13:50:42', '2025-02-25 13:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `source` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactable_id` bigint UNSIGNED NOT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_contactable_type_contactable_id_index` (`contactable_type`,`contactable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1 = fixed 0 present',
  `amount` int NOT NULL DEFAULT '0',
  `expire_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_use_histories`
--

DROP TABLE IF EXISTS `coupon_use_histories`;
CREATE TABLE IF NOT EXISTS `coupon_use_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courier_credentials`
--

DROP TABLE IF EXISTS `courier_credentials`;
CREATE TABLE IF NOT EXISTS `courier_credentials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Secret_Key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Api_Key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_token` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `creator` bigint NOT NULL DEFAULT '1',
  `updater` bigint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_credentials`
--

INSERT INTO `courier_credentials` (`id`, `upload_id`, `provider`, `Secret_Key`, `Api_Key`, `client_id`, `client_secret`, `secret_token`, `key`, `sandbox_status`, `status`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Walk In Delivery', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-02-25 13:50:42', '2025-02-25 13:50:42'),
(2, NULL, 'EasyPost', NULL, NULL, NULL, NULL, NULL, 'shippo_test_2cb6d0c8057930440e8b510e19434d982c1ce48d', '1', '1', 1, 1, '2025-02-25 13:50:42', '2025-02-25 13:50:42'),
(3, NULL, 'SteadFast', 'g94vnmgpdvehmsp8vrhgkyrv', 'jwqjaywbmswqrwymm0bdvnwvrr6annc4 ', NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-02-25 13:50:42', '2025-02-25 13:50:42'),
(4, NULL, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-02-25 13:50:42', '2025-02-25 13:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `bank_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` int DEFAULT NULL,
  `prev_due` int DEFAULT NULL,
  `area` int DEFAULT NULL,
  `password` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_code` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_status` tinyint(1) NOT NULL DEFAULT '0',
  `bank_branch` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `shop_name`, `shop_phone`, `shop_address`, `type`, `user_id`, `creator`, `location`, `account_holder`, `account_number`, `note`, `bank_name`, `credit_limit`, `prev_due`, `area`, `password`, `v_code`, `v_status`, `bank_branch`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@gmail.com', '015*******', NULL, NULL, NULL, NULL, NULL, '1', 'Dhaka Bangladesh', 'MD SAZZAD', '01590084779', NULL, 'bKash', NULL, NULL, NULL, '$2y$12$AwRSSuYyQ8Kk/iltuoqWZOcTvyVgM2Q7jdOp1hHEfXb90tqOKvfsO', NULL, 0, 'Bangladesh', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'Dolan Mays', 'tebavadidy@mailinator.com', '+1 (387) 557-4274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$UeNc5BlFvS0wgyNr0kqe9ekIGOf.No8grfP5agYvJCwNytpv921MW', NULL, 0, NULL, '0', '2025-02-27 12:17:35', '2025-02-27 12:17:35'),
(3, 'Charles Kline', 'liwuzelogi@mailinator.com', '+1 (774) 245-4717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$dtIczzNi1wSH3T2YaqY/z.OVEZXKSkzxlijwDJXRgeqQ0NYXqPXju', NULL, 0, NULL, '0', '2025-03-01 05:07:07', '2025-03-01 05:07:07'),
(4, 'Charles Kline', 'liwuzelogi@mailinator.com1', '+1 (774) 245-4717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$03n4maq5S4d5zCJZRBwjz.hI98HJ2ZlzP8NgcWHxfrpPigSwo08FO', NULL, 0, NULL, '0', '2025-03-01 05:10:32', '2025-03-01 05:10:32'),
(5, 'Uta Best', 'vuduwacuj@mailinator.com', '+1 (726) 253-1935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$.GemJ686KRzwzg0mhIV5gexYBMiJ4cTa/a/Fou4GtG1X1CtRnxaDq', NULL, 0, NULL, '0', '2025-03-01 05:13:33', '2025-03-01 05:13:33'),
(6, 'Uta Best', 'vuduwacuj@mailinator.com1', '+1 (726) 253-1935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$7lQnm1Ni430nuJPBE53pA.VzaOC96HLx4.RNjYwlwbDJDlUfEbcmO', NULL, 0, NULL, '0', '2025-03-01 05:14:02', '2025-03-01 05:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `device_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout` tinyint(1) NOT NULL DEFAULT '0',
  `suspend_date` timestamp NULL DEFAULT NULL,
  `data` json DEFAULT NULL,
  `creator` bigint DEFAULT NULL,
  `updater_id` bigint DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci,
  `last_activity` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `notification_data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `devices_device_type_index` (`device_type`),
  KEY `devices_ip_index` (`ip`),
  KEY `devices_last_activity_index` (`last_activity`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_type`, `ip`, `logout`, `suspend_date`, `data`, `creator`, `updater_id`, `user_agent`, `payload`, `last_activity`, `deleted_at`, `notification_data`, `created_at`, `updated_at`) VALUES
(1, 'Windows \"Not(A:Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;D:\\\\wamp64\\\\bin\\\\php\\\\php8.3.14;C:\\\\composer;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Python313\\\\Scripts\\\\;C:\\\\Python313\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/public/index.php\", \"HTTP_HOST\": \"pos.localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"laravel_session=eyJpdiI6IkNLS3JORjNtQW1rckFXa1F0V3ZneUE9PSIsInZhbHVlIjoiVHhoTVNYQm0rdzdwTi9rRmJXcDk5WGFySXlDaWdZUHlXMzAyTG1XeWpuNStlY296UUs5a2xiVkQ0WnlFRGpaY1pzMjBIeW9ObVVmTElWbW5KOTRKbTViM2Y0cUZvZmNVNjAwc1E3ODlnOGhVUk5yUEZQMnBKMW9zUzZjN0FleG8iLCJtYWMiOiI0ZDUzN2UzN2NkODI1YjhlYTdjZGMwMjcwOGQ5ZmM1OTlkYzhlNGMxOTM2ODQ2YjIyYmYwMjQ2OWRkYzM0N2QxIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImM2bHJMWWNjS2UxbnJxeElFSTcwdnc9PSIsInZhbHVlIjoibXRnZXNvNUhrVkFKM0RKUkVWWUh4TEFqK0ovTVlWUzkyZEc0Z3lyRG1KbE1sZ3NHV0p4SUlyWnNXZjdQUXlNTkRoL2pKTlI2WWZvL1daMzZyU242bytzY0Z5OWpqZEw0THUvMnM5ZGs2cTlyNCtxY0FidXd1c1pQUnlhQUlSYlciLCJtYWMiOiI1ODU1YzY1OGQ3ZmE4OGM0NWVmM2YzMzliOWRmYzQyODNiZWY2YTQzMjA0Mjc3ODhhOTZkNTJlNmViOTIxYmU0IiwidGFnIjoiIn0%3D; sunnahstyle_session=eyJpdiI6InhDSUdLVXgra0RuM0xmOVptUXVnVGc9PSIsInZhbHVlIjoiK1BiU0JBNzhtOHdRa1BkZmNrcVNyVWdPSzV5UG1vZW1OZythOFlQdzk3cStPdHk3QmlHUWR2bWtmeVhqazA0V1RacXZnc096ZE9CUXBydHRZaUNqVFZGNTVVUmRBaGVpbXdWYVNNaFBNaXFnRk9FVk5FWGZYUmtrcStRN3ZLOVkiLCJtYWMiOiJiN2Q3ZGIzYjc1ZGUyZDhiYTU2NzJiMTc1ODJkNzA2NjVmM2NkYzY0MDNlMDM0YTVlYzY5NjRjZjYzZDU1OGQ4IiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"61652\", \"REQUEST_URI\": \"/device_access_check\", \"SCRIPT_NAME\": \"/public/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"pos.localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://pos.localhost/admin?%2Fadmin=\", \"QUERY_STRING\": \"/device_access_check\", \"REDIRECT_URL\": \"/public/device_access_check\", \"REQUEST_TIME\": 1740546267, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/public/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.62 (Win64) PHP/8.3.14 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.62 (Win64) PHP/8.3.14 mod_fcgid/2.3.10-dev Server at pos.localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1740546267.593386, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"REDIRECT_QUERY_STRING\": \"/device_access_check\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"REDIRECT_REDIRECT_STATUS\": \"200\"}', 1, 1, NULL, NULL, 1740578236, NULL, '', '2025-02-26 05:04:27', '2025-02-26 13:57:16'),
(2, 'Windows \"Not(A:Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python313\\\\Scripts\\\\;C:\\\\Python313\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;D:\\\\wamp64\\\\bin\\\\php\\\\php8.3.14;C:\\\\composer;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/public/index.php\", \"HTTP_HOST\": \"pos.localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"XSRF-TOKEN=eyJpdiI6Ik5sN0tUWENsdGtHbzRjU2hrSCtEeHc9PSIsInZhbHVlIjoibTJVK25CRDlkN2dwUjEwZkVEOG9HWmI2dXJtblh4aXlTbWM4d3RTOWJpNFR2bEJCYnpMME9CazAzbVEzcU1OaEl5djg3NXNvNWhtNzNlbmVSbzdrNzl5Vi9JUzZFd3pXNXphTm84NEpkMGM1d2V5RDQ1clZhNms5ZlpIN1ZTakwiLCJtYWMiOiI3ZDZmMzhjN2I2OWRjM2NhN2E4NTc2NjM0NjJlODVmNWYyZmYwYTBmYTA5NTcxZTE0YWQzOTVmMjU0NmQ3NTA2IiwidGFnIjoiIn0%3D; sunnahstyle_session=eyJpdiI6ImRpZWtoY0JOb2NBV1VpV2NQTFdaR0E9PSIsInZhbHVlIjoiYlJNSDd6K2I1UXlneFo1dzBaS0pGVm0wRWxkSmxHNysrU2dldlRPSUFVOWpsWHFJSkpkbGRGRURuNXlOMzEwRitXMkVUV0F5TzR3UUZJZnc0ZWtsNyt6RDczUHNoQ3J0clc1Smhlb1pyaDVQcTdXZENVUGt2U2EyQkF6VEFFODkiLCJtYWMiOiIwNmUxYjFiNDM3ZTkwYWQ0ZDFhYWE2MTM5MDNlNmRjYzllOTY0ODIyYTk0MWZiNmNkZDYxZjQ0NzQ5NTdkMmQxIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"58678\", \"REQUEST_URI\": \"/device_access_check\", \"SCRIPT_NAME\": \"/public/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"pos.localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://pos.localhost/admin?%2Fadmin=\", \"QUERY_STRING\": \"/device_access_check\", \"REDIRECT_URL\": \"/public/device_access_check\", \"REQUEST_TIME\": 1740629525, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/public/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.62 (Win64) PHP/8.3.14 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.62 (Win64) PHP/8.3.14 mod_fcgid/2.3.10-dev Server at pos.localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1740629525.719182, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"REDIRECT_QUERY_STRING\": \"/device_access_check\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"REDIRECT_REDIRECT_STATUS\": \"200\"}', 1, 1, NULL, NULL, 1740663169, NULL, '', '2025-02-27 04:12:05', '2025-02-27 13:32:49'),
(3, 'Windows \"Not(A:Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python313\\\\Scripts\\\\;C:\\\\Python313\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;D:\\\\wamp64\\\\bin\\\\php\\\\php8.3.14;C:\\\\composer;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/public/index.php\", \"HTTP_HOST\": \"pos.localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"XSRF-TOKEN=eyJpdiI6Im0rbGN4UUpCUlp4KytUVE9JTW5pTGc9PSIsInZhbHVlIjoicVlPQkt5Unl5eTdoY0RIZVcvMzJ1QXJvVWMrb0lwUHQ5ZkRLdEE3elRsaGlWa24rYTloQ1o1QnF4NkRIQzJPYTR0azVUZ2NtYXp5UWFVWWMzcTN1VjZ2VEM2ZFRoV0VRNDFvSisySzRQNTJHOVRPdnU4ZDBpMk1EcHZMbTQydzUiLCJtYWMiOiIzMDIwYzI4ZTlkNWQ3NWQwOWIxZWZlZGM1Yzc3NzcxZWNjZGJhOWI0ZTQxNjQ2MWQwNmNmMDNiNDk0ZjRlMzIxIiwidGFnIjoiIn0%3D; sunnahstyle_session=eyJpdiI6IlBGbFZHR051eTQ4cGduYmRUNWxNaVE9PSIsInZhbHVlIjoiUHlBSlpSSlBzRmJmTC9ORFhZRzliYkx5Q0VsSXB2Z1dPOFJwLytLWTg1QzRFbC9JN3JLdmUrdGJnQk5ScTl4SE1aTzUyK29nZUVZL0gwM1d0cnczZGNGSDFDZkJzR09wWmNVVnk0N3ZLa3QzYU9FV1Vrckx4VkFJTUpXcEdBd1ciLCJtYWMiOiI4MmFjMmFmYzRhMmNhNjIyMWRkZmUxYTExNzJkNDEzN2QyMGE1MjdiMjlmZjAzMzAzYThjYmJjOWU5ZDI4MzM1IiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"50145\", \"REQUEST_URI\": \"/device_access_check\", \"SCRIPT_NAME\": \"/public/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"pos.localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://pos.localhost/admin?%2Fadmin=\", \"QUERY_STRING\": \"/device_access_check\", \"REDIRECT_URL\": \"/public/device_access_check\", \"REQUEST_TIME\": 1740802734, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/public/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev Server at pos.localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1740802734.874209, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"REDIRECT_QUERY_STRING\": \"/device_access_check\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"REDIRECT_REDIRECT_STATUS\": \"200\"}', 1, 1, NULL, NULL, 1740810676, NULL, '', '2025-03-01 04:18:55', '2025-03-01 06:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `amount` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `month` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `amount` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expriences`
--

DROP TABLE IF EXISTS `expriences`;
CREATE TABLE IF NOT EXISTS `expriences` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `company` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit_date` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `fcms`
--

DROP TABLE IF EXISTS `fcms`;
CREATE TABLE IF NOT EXISTS `fcms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fcm_private_key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_public_key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_status_key` tinyint(1) NOT NULL DEFAULT '0',
  `creator` bigint DEFAULT NULL,
  `updater_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcms`
--

INSERT INTO `fcms` (`id`, `fcm_private_key`, `fcm_public_key`, `fcm_status_key`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, '9IzLk8M_5OjGgIT5xLYyRoSHbkTl2wR4tSIgTJiikOs', 'BEaBNMfmaFzxbCbix8u9SnnGpcQljcz6CwrxLTw5xGoljkGZsdm5zpuqpHmkS3djcaJTI_pmRmYTjhodXn0xnLA', 0, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon_class` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `upload_id` bigint NOT NULL DEFAULT '0',
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon_class`, `title`, `short_description`, `description`, `upload_id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(4, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(5, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `footer_link_headings`
--

DROP TABLE IF EXISTS `footer_link_headings`;
CREATE TABLE IF NOT EXISTS `footer_link_headings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_link_headings`
--

INSERT INTO `footer_link_headings` (`id`, `title`, `status`, `updater`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Useful Links', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'Our Services', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'Hic solutasetp', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(4, 'Nobis illum', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `footer_link_sub_headings`
--

DROP TABLE IF EXISTS `footer_link_sub_headings`;
CREATE TABLE IF NOT EXISTS `footer_link_sub_headings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `heading_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_link_sub_headings`
--

INSERT INTO `footer_link_sub_headings` (`id`, `heading_id`, `title`, `url`, `icon`, `status`, `updater`, `creator`, `created_at`, `updated_at`) VALUES
(1, '1', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, '1', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, '1', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(4, '1', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(5, '2', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(6, '2', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(7, '2', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(8, '2', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(9, '3', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(10, '3', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(11, '3', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(12, '3', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(13, '4', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(14, '4', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(15, '4', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(16, '4', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `footer_styles`
--

DROP TABLE IF EXISTS `footer_styles`;
CREATE TABLE IF NOT EXISTS `footer_styles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_styles`
--

INSERT INTO `footer_styles` (`id`, `key`, `title`, `upload_id`, `status`, `background_color`, `details`, `created_at`, `updated_at`) VALUES
(1, 'footer_style.footer_style1', 'Footer Style Style', 'uploads/preset/footer_style/footer_style1.png', 0, '#ffffff', '\n                   Compare Style 1\n                ', '2025-02-25 07:50:42', '2025-02-25 07:50:42'),
(2, 'footer_style.footer_style2', 'Footer Style Style 2', 'uploads/preset/footer_style/footer_style2.png', 1, '#ffffff', '\n                   Compare Style 1\n                ', '2025-02-25 07:50:42', '2025-02-25 07:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

DROP TABLE IF EXISTS `headers`;
CREATE TABLE IF NOT EXISTS `headers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT ' left ,  center,  right',
  `order` int NOT NULL DEFAULT '0',
  `key_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preset` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header_styles`
--

DROP TABLE IF EXISTS `header_styles`;
CREATE TABLE IF NOT EXISTS `header_styles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_styles`
--

INSERT INTO `header_styles` (`id`, `key`, `title`, `upload_id`, `status`, `background_color`, `details`, `created_at`, `updated_at`) VALUES
(1, 'header_style.header_style1', 'Header Style', 'uploads/preset/header_variant/header_style1.png', 0, '#ffffff', '\n                    Left Welcome Note\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-02-24 19:50:42', '2025-02-24 19:50:42'),
(2, 'header_style.header_style2', 'Header Style', 'uploads/preset/header_variant/header_style2.png', 0, '#ffffff', '\n                    Left Email Phone\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-02-24 19:50:42', '2025-02-24 19:50:42'),
(3, 'header_style.header_style3', 'Header Style', 'uploads/preset/header_variant/header_style3.png', 1, '#ffffff', '\n                    Left Email Phone\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-02-24 19:50:42', '2025-02-24 19:50:42'),
(4, 'header_style.header_style4', 'Header Style 4', 'uploads/preset/header_variant/header_style4.png', 0, '#ffffff', '\n                    Left Email Phone\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-02-24 19:50:42', '2025-02-24 19:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_manages`
--

DROP TABLE IF EXISTS `home_page_manages`;
CREATE TABLE IF NOT EXISTS `home_page_manages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sub_title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `short_read_more` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Read More',
  `short_read_more_status` tinyint(1) NOT NULL DEFAULT '1',
  `short_read_more_page_url` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_all` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'See All',
  `view_all_status` tinyint(1) NOT NULL DEFAULT '1',
  `view_all_page_url` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_per_row` int NOT NULL DEFAULT '3',
  `items_show` int NOT NULL DEFAULT '4',
  `is_details_page` int NOT NULL DEFAULT '0',
  `background` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `background_color` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#eeeeee',
  `background_type` tinyint(1) NOT NULL DEFAULT '1',
  `controlby` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 => Homepage',
  `order` int NOT NULL DEFAULT '1',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title_style` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'title_style_0',
  `upload_id1` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id2` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id3` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_manages`
--

INSERT INTO `home_page_manages` (`id`, `key`, `title`, `title_status`, `sub_title`, `sub_title_status`, `short_read_more`, `short_read_more_status`, `short_read_more_page_url`, `view_all`, `view_all_status`, `view_all_page_url`, `items_per_row`, `items_show`, `is_details_page`, `background`, `background_color`, `background_type`, `controlby`, `order`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`, `category`, `title_style`, `upload_id1`, `upload_id2`, `upload_id3`) VALUES
(1, '_hero_variant._hero_slider1', 'Hero Slider', '0', 'Hero Slider', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(2, '_hero_variant._hero_style3', 'Hero Style 3', '0', 'Hero Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(3, '_category_variant._category_style2', 'Category Style 2', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(4, '_product_variant._recent_product', 'Recent product Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(5, '_product_variant._feature_product', 'Feature Product  Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 4, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(6, '_product_variant._popular_product', 'Popular Product Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(7, '_product_variant._recommended_product', 'Recommended Product Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(8, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '2', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(9, '_about_us_variant.about_us_style1', 'About page 1', '0', 'About Us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '2', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(10, '_faq_variant._faq_style1', 'Faq style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '2', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(11, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '3', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(12, '_filter_variant.filter_vaiant1', 'Product Filter  1', '1', 'Product Filter Title', '1', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '3', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(13, '_product_details.product_details1', 'Product Details page 1', '0', 'Product Details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '4', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(14, '_cart_variant.cart_style1', 'Product Filter  1', '0', 'Product Filter Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '5', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(15, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '6', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(16, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', 'Product checkout Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '6', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(17, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '7', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(18, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', 'Product tracking Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '7', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(19, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '8', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(20, '_service_variant._service_style1', 'Service Style 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '8', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(21, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '9', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(22, '_service_view_variant._service_view1', 'Service View 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '9', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(23, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '10', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(24, '_register_variant.register_style1', 'Register us  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '10', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(25, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(26, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(27, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(28, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(29, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(30, '_profile._location.variant_1', 'profile location style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(31, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(32, '_profile._cart.variant_1', 'Profile cart style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(33, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(34, '_profile._checkout.variant_1', 'Checkout Page 1', '0', 'Checkout Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(35, '_order_success.success_style1', 'Success Page', '0', 'Register Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '27', 1, '1', '0', '0', NULL, '2025-02-25 13:50:42', '2025-02-25 13:50:42', '0', 'title_style_0', '0', '0', '0'),
(36, '_404_variant.404_style1', '404 page  1', '0', 'Something went wrong', '0', 'Read More', 0, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '28', 1, '1', '0', '0', NULL, '2025-02-26 09:38:58', '2025-02-26 09:38:58', '0', 'title_style_0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updater_id` bigint DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `status`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'en', 1, 1, 1, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(2, 'bn', 1, 1, 1, '2025-02-25 13:50:40', '2025-02-25 13:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_lead_id` bigint NOT NULL,
  `date` date NOT NULL,
  `contact_id` bigint NOT NULL DEFAULT '0',
  `creator` bigint NOT NULL DEFAULT '0',
  `updater_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_accounts`
--

DROP TABLE IF EXISTS `lead_accounts`;
CREATE TABLE IF NOT EXISTS `lead_accounts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '0',
  `updater_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_contacts`
--

DROP TABLE IF EXISTS `lead_contacts`;
CREATE TABLE IF NOT EXISTS `lead_contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `account_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_deals`
--

DROP TABLE IF EXISTS `lead_deals`;
CREATE TABLE IF NOT EXISTS `lead_deals` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `note` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_replay` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `stage_id` int NOT NULL DEFAULT '0',
  `lead_id` bigint NOT NULL DEFAULT '0',
  `creator` bigint NOT NULL DEFAULT '0',
  `updater_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_deal_stages`
--

DROP TABLE IF EXISTS `lead_deal_stages`;
CREATE TABLE IF NOT EXISTS `lead_deal_stages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` bigint NOT NULL,
  `updater_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_deal_stages`
--

INSERT INTO `lead_deal_stages` (`id`, `name`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(2, 'Reschedule', 1, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(3, 'Qualified', 1, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(4, 'Closed', 1, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `lead_sources`
--

DROP TABLE IF EXISTS `lead_sources`;
CREATE TABLE IF NOT EXISTS `lead_sources` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_sources`
--

INSERT INTO `lead_sources` (`id`, `name`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'website', '1', 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(2, 'Facebook', '1', 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(3, 'Email', '1', 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(4, 'Twitter', '1', 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(5, 'Voice Call', '1', 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(6, 'Whatsapp', '1', 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(7, 'Linkedin', '1', 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `mail_boxes`
--

DROP TABLE IF EXISTS `mail_boxes`;
CREATE TABLE IF NOT EXISTS `mail_boxes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcc` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_id` bigint DEFAULT NULL,
  `subject` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT ' Important, Promotions, Social',
  `box` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INBOX, Sent, Draft, Trash',
  `image` text COLLATE utf8mb4_unicode_ci,
  `date_message` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_boxes`
--

INSERT INTO `mail_boxes` (`id`, `name`, `from`, `to`, `cc`, `bcc`, `reply_id`, `subject`, `message`, `type`, `box`, `image`, `date_message`, `creator`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'cpanel@sunnahstyles.net', 'info@sunnahstyles.net', 'Unknown', 'Unknown', NULL, '[sunnahstyles.net] Client configuration settings for “info@sunnahstyles.net”.', '\"<body style=\\\"background:#F4F4F4\\\">\\r\\n    <div style=\\\"margin:0;padding:0;background:#F4F4F4\\\">\\r\\n        <table cellpadding=\\\"10\\\" cellspacing=\\\"0\\\" border=\\\"0\\\" width=\\\"100%\\\" style=\\\"width:0 auto;\\\">\\r\\n            <tbody>\\r\\n                <tr>\\r\\n                    <td align=\\\"center\\\">\\r\\n                        <table cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" border=\\\"0\\\" width=\\\"680\\\" style=\\\"border:0;width:0 auto;max-width:680px;\\\">\\r\\n                            <tbody>\\r\\n                                <tr>\\r\\n                                    \\r\\n                                    <td width=\\\"680\\\" height=\\\"25\\\" style=\\\"font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;font-size:16px;color:#333333\\\">\\r\\n                                        \\r\\n                                            \\r\\n                                            Client Configuration settings for \\u201cinfo@sunnahstyles.net\\u201d.\\r\\n                                        \\r\\n                                    <\\/td>\\r\\n                                    \\r\\n                                <\\/tr>\\r\\n                                <tr>\\r\\n                                    \\r\\n                                    <td style=\\\"padding: 15px 0 20px 0; background-color: #FFFFFF; border: 2px solid #E8E8E8; border-bottom: 2px solid #FF6C2C;\\\">\\r\\n                                        <table width=\\\"680\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"background:#FFFFFF;font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;\\\">\\r\\n                                            <tbody>\\r\\n                                                <tr>\\r\\n                                                    <td width=\\\"15\\\">\\r\\n                                                    <\\/td>\\r\\n                                                    <td width=\\\"650\\\">\\r\\n                                                        <table cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" border=\\\"0\\\" width=\\\"100%\\\">\\r\\n                                                            <tbody>\\r\\n                                                                <tr>\\r\\n                                                                    <td>\\r\\n                                                                        <div id=\\\"manual_settings_area\\\" class=\\\"section\\\">\\r\\n        <h2 id=\\\"hdrManualSettings\\\">Mail Client Manual Settings<\\/h2>\\r\\n        \\r\\n        <div class=\\\"row\\\">\\r\\n         <div class=\\\"col-md-6\\\">\\r\\n          <div id=\\\"ssl_settings_area\\\"\\r\\n            \\r\\n            style=\\\"background-color: #fff;  border: 1px solid transparent; border-radius: 4px; box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05); margin-bottom: 20px; border-color: #428bca;\\\"\\r\\n            \\r\\n            class=\\\"preferred-selection panel panel-primary\\\">\\r\\n               <div\\r\\n                \\r\\n                style=\\\"border-top-left-radius: 3px; border-top-right-radius: 3px; padding: 10px 15px; background-color: #428bca; border-color: #428bca; color: #fff;\\\"\\r\\n                \\r\\n                class=\\\"panel-heading\\\">\\r\\n                Secure <abbr title=\\\"Secure Sockets Layer\\\">SSL<\\/abbr>\\/<abbr title=\\\"Transport Layer Security\\\">TLS<\\/abbr> Settings\\r\\n                (Recommended)\\r\\n              <\\/div>\\r\\n              <table class=\\\"table manual_settings_table\\\" style=\\\"border-collapse: collapse; border-spacing: 0; margin-bottom: 0; width: 100%; background-color: transparent; max-width: 100%;\\\">\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"lblSSLSettingsAreaUsername\\\">Username:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"valSSLSettingsAreaUsername\\\" class=\\\"data wrap-text\\\">info@sunnahstyles.net<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"lblSettingsAreaPassword\\\">Password:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"valSettingsAreaPassword\\\" class=\\\"escape-note\\\"> Use the email account\\u2019s password.<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"lblSettingsAreaIncomingServer\\\">Incoming Server:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"valSettingsAreaIncomingServer\\\" class=\\\"data\\\">mail.sunnahstyles.net\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><abbr title=\\\"Internet Message Access Protocol\\\" class=\\\"initialism\\\">IMAP<\\/abbr> Port: 993<\\/li>\\r\\n                              \\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><abbr title=\\\"Post Office Protocol 3\\\" class=\\\"initialism\\\">POP3<\\/abbr> Port: 995<\\/li>\\r\\n                              \\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"lblSettingsAreaOutgoingServer\\\">Outgoing Server:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"valSettingsAreaOutGoingServer\\\" class=\\\"data\\\">mail.sunnahstyles.net\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><abbr title=\\\"Simple Mail Transfer Protocol\\\">SMTP<\\/abbr> Port: 465<\\/li>\\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" colspan=\\\"2\\\" class=\\\"notes\\\">\\r\\n                                                    \\r\\n                                                                                <div id=\\\"lblSettingsAreaSmallNote1\\\" class=\\\"small_note\\\">IMAP, POP3, and SMTP require authentication.<\\/div>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n              <\\/table>\\r\\n          <\\/div>\\r\\n         <\\/div>\\r\\n  \\r\\n      <\\/div>\\r\\n        \\r\\n\\r\\n        <div class=\\\"row\\\" id=\\\"nonSSL\\\" style=\\\"display: none\\\">\\r\\n         <div class=\\\"col-md-6\\\">\\r\\n           <div id=\\\"non_ssl_settings_area\\\"\\r\\n            \\r\\n            style=\\\"background-color: #fff;  border: 1px solid transparent; border-radius: 4px; box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05); margin-bottom: 20px; border-color: #f6c342;\\\"\\r\\n            \\r\\n           class=\\\"panel panel-default panel-warning\\\">\\r\\n               <div\\r\\n                \\r\\n                style=\\\"border-top-left-radius: 3px; border-top-right-radius: 3px; padding: 10px 15px; background-color: #fcf8e1; border-color: #f6c342; color: #333;\\\"\\r\\n                \\r\\n                class=\\\"panel-heading\\\">\\r\\n                <span id=\\\"descNonSSLSettings\\\" class=\\\"caption not-recommended\\\">Non-SSL Settings (NOT Recommended)<\\/span>\\r\\n              <\\/div>\\r\\n              <table id=\\\"tblManualSettingsTable\\\" class=\\\"table manual_settings_table\\\" style=\\\"border-collapse: collapse; border-spacing: 0; margin-bottom: 0; width: 100%; background-color: transparent; max-width: 100%;\\\">\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"lblNonSSLSettingsUsername\\\">Username:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"valNonSSLSettingsUsername\\\" class=\\\"data wrap-text\\\">info@sunnahstyles.net<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"lblNonSSLSettingsPassword\\\">Password:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"valNonSSLSettingsPassword\\\" class=\\\"escape-note\\\">Use the email account\\u2019s password.<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"lblNonSSLSettingsIncomingServer\\\">Incoming Server:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"valNonSSLSettingsIncomingServer\\\" class=\\\"data\\\">mail.sunnahstyles.net                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><abbr title=\\\"Internet Message Access Protocol\\\" class=\\\"initialism\\\">IMAP<\\/abbr> Port: 143<\\/li>\\r\\n                               \\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><abbr title=\\\"Post Office Protocol 3\\\" class=\\\"initialism\\\">POP3<\\/abbr> Port: 110<\\/li>\\r\\n                              \\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                   \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"NonSSLSettingsOutgoingServer\\\">Outgoing Server:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" id=\\\"NonSSLSettingsOutgoingServerData\\\" class=\\\"data\\\">mail.sunnahstyles.net                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><abbr title=\\\"Simple Mail Transfer Protocol\\\">SMTP<\\/abbr> Port: 587<\\/li>\\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" colspan=\\\"2\\\" class=\\\"notes\\\">\\r\\n                                                    \\r\\n                                                                                <div id=\\\"descNonSSLSettingsAuthenticationIsRequiredForIMAPPOP3SMTP1\\\" class=\\\"small_note\\\">IMAP, POP3, and SMTP require authentication.<\\/div>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n              <\\/table>\\r\\n          <\\/div>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n\\r\\n    <\\/div><div class=\\\"section\\\">\\r\\n        <h2>Calendar &amp; Contacts Manual Settings<\\/h2>\\r\\n        <div class=\\\"row\\\">\\r\\n         \\r\\n         <div class=\\\"col-md-6\\\">\\r\\n          <div style=\\\"background-color: #fff;  border: 1px solid transparent; border-radius: 4px; box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05); margin-bottom: 20px; border-color: #428bca;\\\" class=\\\"preferred-selection panel panel-primary\\\">\\r\\n               <div style=\\\"border-top-left-radius: 3px; border-top-right-radius: 3px; padding: 10px 15px; background-color: #428bca; border-color: #428bca; color: #fff;\\\" class=\\\"panel-heading\\\">\\r\\n                Secure <abbr title=\\\"Secure Sockets Layer\\\">SSL<\\/abbr>\\/<abbr title=\\\"Transport Layer Security\\\">TLS<\\/abbr> Settings (Recommended).\\r\\n              <\\/div>\\r\\n              <table class=\\\"table manual_settings_table\\\" style=\\\"border-collapse: collapse; border-spacing: 0; margin-bottom: 0; width: 100%; background-color: transparent; max-width: 100%;\\\">\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Username:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data wrap-text\\\">info@sunnahstyles.net<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Password:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"escape-note\\\"> Use the email account\\u2019s password.<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Server:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data\\\">https:\\/\\/mail.sunnahstyles.net:2080\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\">Port: 2080<\\/li>\\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Full Calendar URL(s):<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data\\\">\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              \\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><b>cPanel CalDAV Calendar<\\/b>:<\\/li>\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\">https:\\/\\/mail.sunnahstyles.net:2080\\/calendars\\/info@sunnahstyles.net\\/calendar<\\/li>\\r\\n                              \\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n                  \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Full Contact List URL(s):<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data\\\">\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              \\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><b>cPanel CardDAV Address Book<\\/b>:<\\/li>\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\">https:\\/\\/mail.sunnahstyles.net:2080\\/addressbooks\\/info@sunnahstyles.net\\/addressbook<\\/li>\\r\\n                              \\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n              <\\/table>\\r\\n          <\\/div>\\r\\n         <\\/div>\\r\\n         \\r\\n         <div class=\\\"col-md-6\\\">\\r\\n          <div style=\\\"background-color: #fff;  border: 1px solid transparent; border-radius: 4px; box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05); margin-bottom: 20px; border-color: #f6c342;\\\" class=\\\"preferred-selection panel panel-primary\\\">\\r\\n               <div style=\\\"border-top-left-radius: 3px; border-top-right-radius: 3px; padding: 10px 15px; background-color: #fcf8e1; border-color: #f6c342; color: #333;\\\" class=\\\"panel-heading\\\">\\r\\n                Non-SSL Settings (NOT Recommended).\\r\\n              <\\/div>\\r\\n              <table class=\\\"table manual_settings_table\\\" style=\\\"border-collapse: collapse; border-spacing: 0; margin-bottom: 0; width: 100%; background-color: transparent; max-width: 100%;\\\">\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Username:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data wrap-text\\\">info@sunnahstyles.net<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Password:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"escape-note\\\"> Use the email account\\u2019s password.<\\/td>\\r\\n                  <\\/tr>\\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Server:<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data\\\">http:\\/\\/mail.sunnahstyles.net:2079\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\">Port: 2079<\\/li>\\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Full Calendar URL(s):<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data\\\">\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              \\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><b>cPanel CalDAV Calendar<\\/b>:<\\/li>\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\">http:\\/\\/mail.sunnahstyles.net:2079\\/calendars\\/info@sunnahstyles.net\\/calendar<\\/li>\\r\\n                              \\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n                  \\r\\n                  <tr>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\">Full Contact List URL(s):<\\/td>\\r\\n                      <td style=\\\"border-top: 1px solid #ddd; padding: 8px;\\\" class=\\\"data\\\">\\r\\n                          <ul\\r\\n                          style=\\\"margin-bottom: 10px; margin-top: 0; list-style: outside none none; margin-left: -5px; padding-left: 0;\\\"\\r\\n                          class=\\\"port_list list-inline\\\">\\r\\n                              \\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\"><b>cPanel CardDAV Address Book<\\/b>:<\\/li>\\r\\n                              <li style=\\\"display: inline-block; padding-left: 5px; padding-right: 5px;\\\">http:\\/\\/mail.sunnahstyles.net:2079\\/addressbooks\\/info@sunnahstyles.net\\/addressbook<\\/li>\\r\\n                              \\r\\n                          <\\/ul>\\r\\n                      <\\/td>\\r\\n                  <\\/tr>\\r\\n                  \\r\\n              <\\/table>\\r\\n          <\\/div>\\r\\n         <\\/div>\\r\\n         \\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div><p>\\r\\n A .mobileconfig file for use with iOS for iPhone\\/iPad\\/iPod and MacOS\\u00ae Mail.app\\u00ae for Mountain Lion (10.8+) is attached to this message.\\r\\n<\\/p>\\r\\n                                                                    <\\/td>\\r\\n                                                                <\\/tr>\\r\\n                                                                <tr>\\r\\n                                                                    <td>\\r\\n                                                                        <div style=\\\"font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;border-top: 2px solid #E8E8E8; padding-top:5px; margin-top: 5px; font-size:12px; color: #666666;\\\">\\r\\n        <p style=\\\"padding:0 0 0 0; margin: 5px 0 0 0;\\\">\\r\\n        \\r\\n          This notice is the result of a request made by a computer with the <abbr title=\\\"Internet Protocol\\\">IP<\\/abbr> address of \\u201c103.198.133.215\\u201d through the \\u201ccpanel\\u201d service on the server.\\r\\n        \\r\\n    <\\/p>\\r\\n\\r\\n                        <p style=\\\"padding:0 0 0 0; margin: 5px 0 0 0;\\\">\\r\\n                A reverse <abbr title=\\\"Domain Name Service\\\">DNS<\\/abbr> lookup on the remote <abbr title=\\\"Internet Protocol\\\">IP<\\/abbr> address returned the host name \\u201cclient-103-198-133-215.digijadoo.net\\u201d.\\r\\n            <\\/p>\\r\\n                <p style=\\\"padding:0 0 0 0; margin: 5px 0 0 0;\\\">\\r\\n                            The remote computer\\u2019s location appears to be: Bangladesh (BD).\\r\\n                    <\\/p>\\r\\n        \\r\\n            \\r\\n                <p style=\\\"padding:0 0 0 0; margin: 5px 0 0 0;\\\">\\r\\n                  The remote computer\\u2019s <abbr title=\\\"Internet Protocol\\\">IP<\\/abbr> address is assigned to the provider: \\u201cVelocity Networks Limited Lotus Kamal Tower - One | Level 9, 57 Zoar Shahara C\\/A Velocity Networks Limited\\u201d\\r\\n                <\\/p>\\r\\n            \\r\\n            \\r\\n                <p style=\\\"padding:0 0 0 0; margin: 5px 0 0 0;\\\">\\r\\n                  The provider supplied the following remarks about the <abbr title=\\\"Internet Protocol\\\">IP<\\/abbr> address allocation: \\u201c-------------------------------------------------------- To report network abuse, please contact mnt-irt For troubleshooting, please contact tech-c and admin-c Report invalid contact via www.apnic.net\\/invalidcontact --------------------------------------------------------\\u201d\\r\\n                <\\/p>\\r\\n            \\r\\n\\r\\n         \\r\\n                                        <p style=\\\"padding:0 0 0 0; margin: 5px 0 0 0;\\\">\\r\\n          \\r\\n            The remote computer\\u2019s operating system appears to be: \\u201cWindows\\u201d with version \\u201cNT kernel 5.x\\u201d.\\r\\n          \\r\\n        <\\/p>\\r\\n          \\r\\n    <p style=\\\"padding:0 0 0 0; margin: 5px 0 0 0;\\\">\\r\\n        The system generated this notice on Thursday, September 26, 2024 at 11:34:34 PM UTC.\\r\\n    <\\/p>\\r\\n<\\/div>                                                                        \\r\\n                                                                           <!-- -->\\r\\n                                                                        \\r\\n<p>\\r\\n    Do not reply to this automated message.\\r\\n<\\/p>\\r\\n                                                                    <\\/td>\\r\\n                                                                <\\/tr>\\r\\n                                                            <\\/tbody>\\r\\n                                                        <\\/table>\\r\\n\\r\\n                                                    <\\/td>\\r\\n                                                    <td width=\\\"15\\\">\\r\\n                                                    <\\/td>\\r\\n                                                <\\/tr>\\r\\n                                            <\\/tbody>\\r\\n                                        <\\/table>\\r\\n                                    <\\/td>\\r\\n                                    \\r\\n                                <\\/tr>\\r\\n                                <tr>\\r\\n                                    <td align=\\\"center\\\" style=\\\"padding-top: 10px;\\\">\\r\\n                                    \\r\\n                                        <img src=\\\"http:\\/\\/pos.localhost\\/attachments\\/1740567635_cpanel-logo-tiny.png\\\" height=\\\"25\\\" width=\\\"25\\\" style=\\\"border:0;line-height:100%;border:0\\\" alt=\\\"cP\\\">\\r\\n                                        <p style=\\\"font-family:\'Helvetica Neue\',Helvetica,Arial,sans-serif;font-size:12px;color:#666666; padding: 0; margin: 0;\\\">Copyright\\u00a9\\u00a02024 cPanel, L.L.C.<p>\\r\\n                                    \\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                            <\\/tbody>\\r\\n                        <\\/table>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n            <\\/tbody>\\r\\n        <\\/table>\\r\\n    <\\/div>\\r\\n<\\/body>\"', 'configuration', 'INBOX', '{\"auto_cid_2024886155\":{\"url\":\"http:\\/\\/pos.localhost\\/attachments\\/1740567635_cpanel-logo-tiny.png\",\"type\":\"image\\/png\",\"name\":\"cpanel-logo-tiny.png\",\"size\":25098,\"size_megabyte\":\"24.51 KB\",\"id\":\"auto_cid_2024886155\",\"disposition\":\"attachment\",\"extension\":\"png\",\"icon\":\"img\",\"file_path\":\"attachments\\/1740567635_cpanel-logo-tiny.png\"},\"bb16aa9a\":{\"url\":\"http:\\/\\/pos.localhost\\/attachments\\/1740567635_email-info@sunnahstyles.net.mobileconfig\",\"type\":\"application\\/octet-stream\",\"name\":\"email-info@sunnahstyles.net.mobileconfig\",\"size\":8476,\"size_megabyte\":\"8.28 KB\",\"id\":\"bb16aa9a\",\"disposition\":\"attachment\",\"extension\":\"mobileconfig\",\"icon\":\"fas fa-paperclip\",\"file_path\":\"attachments\\/1740567635_email-info@sunnahstyles.net.mobileconfig\"},\"76ce2aa7\":{\"url\":\"http:\\/\\/pos.localhost\\/attachments\\/1740567635_caldav-info@sunnahstyles.net.mobileconfig\",\"type\":\"application\\/octet-stream\",\"name\":\"caldav-info@sunnahstyles.net.mobileconfig\",\"size\":7220,\"size_megabyte\":\"7.05 KB\",\"id\":\"76ce2aa7\",\"disposition\":\"attachment\",\"extension\":\"mobileconfig\",\"icon\":\"fas fa-paperclip\",\"file_path\":\"attachments\\/1740567635_caldav-info@sunnahstyles.net.mobileconfig\"},\"94dda8ab\":{\"url\":\"http:\\/\\/pos.localhost\\/attachments\\/1740567635_carddav-info@sunnahstyles.net.mobileconfig\",\"type\":\"application\\/octet-stream\",\"name\":\"carddav-info@sunnahstyles.net.mobileconfig\",\"size\":6990,\"size_megabyte\":\"6.83 KB\",\"id\":\"94dda8ab\",\"disposition\":\"attachment\",\"extension\":\"mobileconfig\",\"icon\":\"fas fa-paperclip\",\"file_path\":\"attachments\\/1740567635_carddav-info@sunnahstyles.net.mobileconfig\"}}', '2024-09-26 23:34:34', 0, 1, '2025-02-26 11:00:35', '2025-02-26 11:29:21'),
(2, NULL, 'mdsazzad0002@gmail.com', 'info@sunnahstyles.net', 'Unknown', 'Unknown', NULL, 'Re: hello sazzad', '\"<p dir=\\\"ltr\\\">Gbbj<\\/p>\\r\\n<br><div class=\\\"gmail_quote gmail_quote_container\\\"><div dir=\\\"ltr\\\" class=\\\"gmail_attr\\\">On Mon, Feb 24, 2025, 1:56 PM D Engr Mailer &lt;<a href=\\\"mailto:info@sunnahstyles.net\\\">info@sunnahstyles.net<\\/a>&gt; wrote:<br><\\/div><blockquote class=\\\"gmail_quote\\\" style=\\\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\\\"><u><\\/u>\\r\\n\\r\\n\\r\\n    \\r\\n\\r\\n<div>\\r\\n    <p>how are you<\\/p>\\r\\n<\\/div>\\r\\n\\r\\n\\r\\n<\\/blockquote><\\/div>\"', 'general', 'INBOX', '[]', '2025-02-24 21:04:20', 0, 1, '2025-02-26 11:00:35', '2025-02-26 11:29:18'),
(3, NULL, 'Mailer-Daemon@srvbdix2.noc223.com', 'info@sunnahstyles.net', 'Unknown', 'Unknown', NULL, 'Mail delivery failed: returning message to sender', '\"This message was created automatically by mail delivery software.\\r\\n\\r\\nA message that you sent could not be delivered to one or more of its\\r\\nrecipients. This is a permanent error. The following address(es) failed:\\r\\n\\r\\n  web.developer.sazzad0002@gmail.com\\r\\n    host gmail-smtp-in.l.google.com [142.251.12.27]\\r\\n    SMTP error from remote mail server after RCPT TO:<web.developer.sazzad0002@gmail.com>:\\r\\n    550-5.1.1 The email account that you tried to reach does not exist. Please try\\r\\n    550-5.1.1 double-checking the recipient\'s email address for typos or\\r\\n    550-5.1.1 unnecessary spaces. For more information, go to\\r\\n    550 5.1.1  https:\\/\\/support.google.com\\/mail\\/?p=NoSuchUser 41be03b00d2f7-adece7028fesi28526642a12.25 - gsmtp\"', 'general', 'INBOX', '{\"502785ad\":{\"url\":\"http:\\/\\/pos.localhost\\/attachments\\/1740567635_502785ad\",\"type\":\"message\\/delivery-status\",\"name\":\"502785ad\",\"size\":520,\"size_megabyte\":\"0.51 KB\",\"id\":\"502785ad\",\"disposition\":null,\"extension\":\"\",\"icon\":\"fas fa-paperclip\",\"file_path\":\"attachments\\/1740567635_502785ad\"},\"b8362d65\":{\"url\":\"http:\\/\\/pos.localhost\\/attachments\\/1740567635_b8362d65\",\"type\":\"message\\/rfc822\",\"name\":\"b8362d65\",\"size\":795,\"size_megabyte\":\"0.78 KB\",\"id\":\"b8362d65\",\"disposition\":null,\"extension\":\"\",\"icon\":\"fas fa-paperclip\",\"file_path\":\"attachments\\/1740567635_b8362d65\"}}', '2025-02-25 00:08:34', 0, 1, '2025-02-26 11:00:35', '2025-02-26 11:00:42'),
(4, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'sdfa', '\"dfasd\"', 'general', 'Sent', '[]', '2025-02-10 16:47:21', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(5, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'asd', '\"asd\"', 'general', 'Sent', '[]', '2025-02-12 16:02:17', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(6, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'sdfsd', '\"sdfs\"', 'general', 'Sent', '[]', '2025-02-24 02:10:18', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(7, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'test subject', '\"test body\"', 'general', 'Sent', '[]', '2025-02-24 02:32:23', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(8, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'test subject', '\"test body\"', 'general', 'Sent', '[]', '2025-02-24 02:42:20', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(9, NULL, 'info@sunnahstyles.net', 'web.developer.sazzad@gmail.com', 'Unknown', 'Unknown', NULL, 'form sunnahstyle', '\"sdfas asdfa\"', 'general', 'Sent', '[]', '2025-02-24 14:00:47', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(10, NULL, 'info@sunnahstyles.net', 'web.developer.sazzad@gmail.com', 'Unknown', 'Unknown', NULL, 'Re: form sunnahstyle', '\"sdfas\"', 'general', 'Sent', '[]', '2025-02-24 17:08:44', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(11, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'sazzad0002@gmail.com', '\"23wrwe1551\"', 'general', 'Sent', '[]', '2025-02-24 23:33:01', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(12, NULL, 'info@sunnahstyles.net', 'web.developer.sazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'my name is sazzad', '\"sd sdfs dfasd\"', 'general', 'Sent', '[]', '2025-02-25 00:10:45', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(13, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'sazzad', '\"photoftgtyyt\"', 'general', 'Sent', '[]', '2025-02-25 00:58:48', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(14, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'fdsfdshghfhghg', '\"ghfgdfgdgfdgf\"', 'general', 'Sent', '[]', '2025-02-25 00:59:57', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(15, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'fhfghgfhgfhg', '\"fyhtyuthjhhjhhj\"', 'general', 'Sent', '[]', '2025-02-25 01:02:58', 0, 0, '2025-02-26 11:00:49', '2025-02-26 11:00:49'),
(16, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'fhfghgfhgfhg', '\"fyhtyuthjhhjhhjkj\"', 'general', 'Sent', '[]', '2025-02-25 01:06:05', 0, 1, '2025-02-26 11:00:49', '2025-02-26 11:01:20'),
(17, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'fhfghgfhgfhg', '\"fyhtyuthjhhjhhjkj\"', 'general', 'Sent', '[]', '2025-02-25 01:10:00', 0, 1, '2025-02-26 11:00:49', '2025-02-26 11:00:51'),
(18, NULL, 'info@sunnahstyles.net', 'undisclosed-recipients', 'Unknown', 'Unknown', NULL, 'sd', '\"sdfs\"', 'general', 'Drafts', '[]', '2025-02-22 03:44:51', 0, 1, '2025-02-26 11:00:57', '2025-02-26 11:01:00'),
(19, NULL, 'no-reply@edisonmail.com', 'info@sunnahstyles.net', 'Unknown', 'Unknown', NULL, 'Welcome to Edison Mail!', '\"\"', 'general', 'Trash', '{\"2912c5b4\":{\"url\":\"http:\\/\\/pos.localhost\\/attachments\\/1740567669_2912c5b4\",\"type\":\"multipart\\/related\",\"name\":\"2912c5b4\",\"size\":7795,\"size_megabyte\":\"7.61 KB\",\"id\":\"2912c5b4\",\"disposition\":null,\"extension\":\"\",\"icon\":\"fas fa-paperclip\",\"file_path\":\"attachments\\/1740567669_2912c5b4\"}}', '2025-02-11 05:14:29', 0, 0, '2025-02-26 11:01:09', '2025-02-26 11:01:09'),
(20, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'hello sazzad', '\"how are you\"', 'general', 'Trash', '[]', '2025-02-24 13:56:08', 0, 1, '2025-02-26 11:01:09', '2025-02-26 11:01:11'),
(21, NULL, 'info@sunnahstyles.net', 'mdsazzad0002@gmail.com', 'Unknown', 'Unknown', NULL, 'fhfghgfhgfhg', '\"fyhtyuthjhhjhhjkj\"', 'general', 'Sent', '[]', '2025-02-26 17:01:26', 0, 1, '2025-02-26 11:29:03', '2025-02-26 11:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

DROP TABLE IF EXISTS `mail_settings`;
CREATE TABLE IF NOT EXISTS `mail_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_encryption` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `from_address`, `from_name`, `smtp_encryption`, `smtp_host`, `smtp_password`, `smtp_port`, `smtp_username`, `status`, `created_at`, `updated_at`) VALUES
(1, 'info@sunnahstyles.net', 'D Engr Mailer', 'tls', 'mail.sunnahstyles.net', 'p#2Q--zwpv}^', '465', 'info@sunnahstyles.net', '0', '2025-02-25 13:50:41', '2025-03-01 05:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

DROP TABLE IF EXISTS `mail_templates`;
CREATE TABLE IF NOT EXISTS `mail_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` longtext COLLATE utf8mb4_unicode_ci,
  `creator` bigint NOT NULL DEFAULT '0',
  `updater_id` bigint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `name`, `keywords`, `template`, `creator`, `updater_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test_mail', 'name', 'test_mail', 1, 1, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(2, 'order_create', 'name', 'test_mail', 1, 1, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(3, 'order_status_change', 'name,order_id,status,email,note', 'test_mail', 1, 1, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(4, 'order_reject', 'name', 'test_mail', 1, 1, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(5, 'verification_customer', 'name,code,email', 'test_mail', 1, 1, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_type` int NOT NULL DEFAULT '0' COMMENT '1 text, 2 voice, 3 image, 4 video',
  `thread_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_28_175635_create_threads_table', 1),
(4, '2014_10_28_180224_create_participants_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_06_14_032506_create_permission_tables', 1),
(8, '2024_06_15_053312_create_settings_table', 1),
(9, '2024_06_19_034944_create_uploads_table', 1),
(10, '2024_08_28_090707_create_categories_table', 1),
(11, '2024_08_28_090810_create_brands_table', 1),
(12, '2024_08_28_113455_create_customers_table', 1),
(13, '2024_08_28_113513_create_suppliers_table', 1),
(14, '2024_08_28_133729_create_units_table', 1),
(15, '2024_08_29_065019_create_products_table', 1),
(16, '2024_08_29_113133_create_purchases_table', 1),
(17, '2024_08_30_040205_create_orders_table', 1),
(18, '2024_09_11_043244_create_branches_table', 1),
(19, '2024_09_26_150032_create_supplier_types_table', 1),
(20, '2024_09_26_155746_create_sallaries_table', 1),
(21, '2024_09_26_155759_create_advance_sallaries_table', 1),
(22, '2024_09_26_163539_create_variant_options_table', 1),
(23, '2024_09_26_164741_create_expenses_table', 1),
(24, '2024_09_26_170303_create_attendences_table', 1),
(25, '2024_09_26_183330_create_order_statuses_table', 1),
(26, '2024_09_26_183815_create_vats_table', 1),
(27, '2024_09_26_184553_create_payments_table', 1),
(28, '2024_09_26_184953_create_payment_methods_table', 1),
(29, '2024_09_26_185833_create_discounts_table', 1),
(30, '2024_09_27_030814_create_leads_table', 1),
(31, '2024_09_27_030919_create_lead_contacts_table', 1),
(32, '2024_09_27_030942_create_lead_deals_table', 1),
(33, '2024_09_27_031005_create_lead_deal_stages_table', 1),
(34, '2024_09_27_031047_create_lead_accounts_table', 1),
(35, '2024_09_27_032447_create_lead_sources_table', 1),
(36, '2024_10_01_150323_create_translations_table', 1),
(37, '2024_10_02_064635_create_languages_table', 1),
(38, '2024_10_02_154302_create_mail_settings_table', 1),
(39, '2024_10_02_154337_create_mail_templates_table', 1),
(40, '2024_10_06_114840_create_devices_table', 1),
(41, '2024_10_10_162844_create_fcms_table', 1),
(42, '2024_10_17_064250_create_amarpays_table', 1),
(43, '2024_10_17_064540_create_transection_informations_table', 1),
(44, '2024_10_19_070204_create_sub_categories_table', 1),
(45, '2024_10_20_043249_create_product_faqs_table', 1),
(46, '2024_10_20_055524_create_review_products_table', 1),
(47, '2024_10_22_143432_create_services_table', 1),
(48, '2024_10_22_165233_create_sliders_table', 1),
(49, '2024_10_23_015622_create_features_table', 1),
(50, '2024_10_23_153642_create_footer_link_headings_table', 1),
(51, '2024_10_23_153801_create_footer_link_sub_headings_table', 1),
(52, '2024_10_23_172423_create_testimonials_table', 1),
(53, '2024_10_24_030657_create_faqs_table', 1),
(54, '2024_10_27_041448_create_blogs_table', 1),
(55, '2024_10_27_041728_create_blog_categories_table', 1),
(56, '2024_10_27_041925_create_table_blog_blog_category_table', 1),
(57, '2024_10_29_155815_create_home_page_manages_table', 1),
(58, '2024_10_29_180635_create_varinat_suggessions_table', 1),
(59, '2024_10_30_131936_create_pages_table', 1),
(60, '2024_11_02_061807_create_special_events_table', 1),
(61, '2024_11_03_051903_create_areas_table', 1),
(62, '2024_11_05_065855_create_offerbanners_table', 1),
(63, '2024_11_11_055451_create_headers_table', 1),
(64, '2024_11_16_170934_create_messages_table', 1),
(65, '2024_11_26_181708_create_cash_counters_table', 1),
(66, '2024_12_07_064648_create_addresses_table', 1),
(67, '2024_12_07_065044_create_expriences_table', 1),
(68, '2024_12_07_072603_create_social_contacts_table', 1),
(69, '2024_12_07_103930_create_contacts_table', 1),
(70, '2024_12_07_122335_create_product_refs_table', 1),
(71, '2024_12_07_122614_create_refrence_users_table', 1),
(72, '2024_12_12_044827_create_couriers_table', 1),
(73, '2024_12_28_092830_create_coupons_table', 1),
(74, '2024_12_29_155344_create_sessions_table', 1),
(75, '2025_01_02_103521_create_supplier_payments_table', 1),
(76, '2025_01_07_132238_create_coupon_use_histories_table', 1),
(77, '2025_01_16_050641_create_stocks_table', 1),
(78, '2025_01_19_115854_create_order_events_table', 1),
(79, '2025_01_26_060948_create_shipping_charges_table', 1),
(80, '2025_02_10_212322_create_header_styles_table', 1),
(81, '2025_02_10_212333_create_footer_styles_table', 1),
(82, '2025_02_10_212348_create_product_styles_table', 1),
(83, '2025_02_10_212408_create_compare_styles_table', 1),
(84, '2025_02_11_131310_create_whole_sale_orders_table', 1),
(85, '2025_02_11_132244_create_whole_sale_product_types_table', 1),
(86, '2025_02_16_013933_visitors', 1),
(87, '2025_02_17_104109_create_company_permissions_table', 1),
(88, '2025_02_24_142959_create_mail_boxes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offer_banners`
--

DROP TABLE IF EXISTS `offer_banners`;
CREATE TABLE IF NOT EXISTS `offer_banners` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image2` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image3` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `link` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `offer_end_data` timestamp NULL DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1 => feature card 2 => full banner 3 => countdown',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_banners`
--

INSERT INTO `offer_banners` (`id`, `title`, `subtitle`, `image1`, `image2`, `image3`, `status`, `link`, `offer_end_data`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-03-20 13:50:29', '1', NULL, NULL),
(2, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-20 13:50:29', '2', NULL, NULL),
(3, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-20 13:50:29', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL DEFAULT '0',
  `order_id` bigint NOT NULL DEFAULT '0',
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `product_json` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `quantitys` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `discount_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `price` int NOT NULL DEFAULT '0',
  `vat` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `payment_method` bigint NOT NULL DEFAULT '0',
  `shipping_charge_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `billing_address` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cash_collection` int NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_id`, `product_ids`, `product_json`, `delivery_status`, `quantity`, `quantitys`, `discount_id`, `price`, `vat`, `status`, `note`, `payment_method`, `shipping_charge_id`, `address`, `billing_address`, `cash_collection`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, 6, 1740809895, '[{\"pd_51\":{\"product_id\":\"51\",\"quantaty\":\"1\",\"size\":0}}]', '{\"subtotal\":{\"pre_price\":5684,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":5684,\"coupon\":0,\"coupon_without_price\":5684,\"quantitys\":{\"51\":\"1\"},\"product_ids\":[{\"pd_51\":{\"product_id\":\"51\",\"quantaty\":\"1\",\"size\":0}}]},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_51\",\"product\":{\"id\":51,\"name\":\"Shoes For Women\",\"product_id\":\"p-46\",\"sku\":\"Tyrone Valencia\",\"slug\":\"shoes-for-women-2\",\"category\":\"10\",\"brand\":\"0\",\"weight\":null,\"description\":\"<p><strong style=\\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\\\">Lorem Ipsum<\\/strong><span style=\\\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<\\/span><\\/p>\",\"additional_description\":\"<p><strong style=\\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\\\">Lorem Ipsum<\\/strong><span style=\\\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<\\/span><\\/p>\",\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"ddsf\",\"route\":\"fdfds\",\"feature\":\"0\",\"alert_quantity\":\"20\",\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"96\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"youtube_video\":\"Ea quae exercitation\",\"tags\":null,\"views\":9,\"old_price\":5741,\"selling_price\":5684,\"vat\":\"0\",\"service\":0,\"variant_on\":\"0\",\"variant_option\":null,\"status\":\"1\",\"landing_page_bg\":\"#9d2cab\",\"landing_page_color\":\"#9e86ec\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-01-30T04:15:22.000000Z\",\"updated_at\":\"2025-02-26T05:40:18.000000Z\",\"quantity\":0,\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/preset\\/fixing.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 5684\"},\"product_variant\":null,\"vat\":null,\"price\":5684,\"discount_price\":0,\"price_discount\":5684,\"vat_price\":0,\"cal_total_with_vat\":5684,\"single_subtotal\":5684}]}', '0', 1, '{\"51\":\"1\"}', '0', 5684, '0', '1', '', 1, '1', '12', '13', 5684, NULL, '2025-03-01 06:18:15', '2025-03-01 06:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_events`
--

DROP TABLE IF EXISTS `order_events`;
CREATE TABLE IF NOT EXISTS `order_events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `status_id` bigint NOT NULL,
  `creator` bigint NOT NULL,
  `updater` bigint NOT NULL,
  `upload_id` bigint NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_events`
--

INSERT INTO `order_events` (`id`, `order_id`, `status_id`, `creator`, `updater`, `upload_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 2, 0, NULL, '2025-02-27 12:17:35', '2025-02-27 12:17:35'),
(2, 1, 5, 1, 1, 0, NULL, '2025-03-01 04:50:10', '2025-03-01 04:50:10'),
(3, 2, 1, 3, 3, 0, NULL, '2025-03-01 05:07:07', '2025-03-01 05:07:07'),
(4, 3, 1, 4, 4, 0, NULL, '2025-03-01 05:10:32', '2025-03-01 05:10:32'),
(5, 4, 1, 4, 4, 0, NULL, '2025-03-01 05:11:10', '2025-03-01 05:11:10'),
(6, 5, 1, 5, 5, 0, NULL, '2025-03-01 05:13:33', '2025-03-01 05:13:33'),
(7, 6, 1, 6, 6, 0, NULL, '2025-03-01 05:14:03', '2025-03-01 05:14:03'),
(8, 7, 1, 6, 6, 0, NULL, '2025-03-01 05:16:58', '2025-03-01 05:16:58'),
(9, 8, 1, 6, 6, 0, NULL, '2025-03-01 05:17:19', '2025-03-01 05:17:19'),
(10, 9, 1, 6, 6, 0, NULL, '2025-03-01 05:17:32', '2025-03-01 05:17:32'),
(11, 10, 1, 6, 6, 0, NULL, '2025-03-01 05:18:16', '2025-03-01 05:18:16'),
(12, 11, 1, 6, 6, 0, NULL, '2025-03-01 05:18:36', '2025-03-01 05:18:36'),
(13, 11, 5, 1, 1, 0, NULL, '2025-03-01 06:13:28', '2025-03-01 06:13:28'),
(14, 11, 3, 1, 1, 0, NULL, '2025-03-01 06:16:44', '2025-03-01 06:16:44'),
(15, 12, 1, 6, 6, 0, NULL, '2025-03-01 06:18:15', '2025-03-01 06:18:15'),
(16, 12, 4, 1, 1, 0, NULL, '2025-03-01 06:21:17', '2025-03-01 06:21:17'),
(17, 12, 3, 1, 1, 0, NULL, '2025-03-01 06:21:37', '2025-03-01 06:21:37'),
(18, 12, 4, 1, 1, 0, NULL, '2025-03-01 06:23:42', '2025-03-01 06:23:42'),
(19, 12, 3, 1, 1, 0, NULL, '2025-03-01 06:23:56', '2025-03-01 06:23:56'),
(20, 12, 4, 1, 1, 0, NULL, '2025-03-01 06:24:27', '2025-03-01 06:24:27'),
(21, 12, 3, 1, 1, 0, NULL, '2025-03-01 06:24:35', '2025-03-01 06:24:35'),
(22, 12, 4, 1, 1, 0, NULL, '2025-03-01 06:28:44', '2025-03-01 06:28:44'),
(23, 12, 2, 1, 1, 0, NULL, '2025-03-01 06:28:51', '2025-03-01 06:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
CREATE TABLE IF NOT EXISTS `order_statuses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `qty_status` int NOT NULL DEFAULT '0',
  `qty_add_remove` int NOT NULL DEFAULT '0',
  `under_items` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `qty`, `qty_status`, `qty_add_remove`, `under_items`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 0, 0, 1, '[\"3\",\"4\",\"5\"]', 1, '2025-02-25 13:50:29', '2025-03-01 06:19:09'),
(2, 'Shipping', 0, 0, 0, '[]', 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'Delivered', 0, 0, 0, '[\"4\"]', 1, '2025-02-25 13:50:29', '2025-03-01 06:23:32'),
(4, 'Confirmed', 0, 1, 1, '[\"1\",\"2\",\"3\",\"4\",\"5\"]', 1, '2025-02-25 13:50:29', '2025-03-01 06:22:57'),
(5, 'Hello', 0, 1, 1, '[\"3\",\"4\"]', 0, '2025-02-27 13:09:45', '2025-03-01 04:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `homepage` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `page_type` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Like filter, homepage',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `status`, `homepage`, `order`, `page_type`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', '1', '1', '1', '', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(2, 'About', 'about-us', '1', '0', '1', 'about', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(3, 'Filter', 'filter', '1', '0', '1', 'filter', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(4, 'Product details', 'product/details', '1', '0', '1', 'view', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(5, 'cart', 'cart', '1', '0', '1', 'cart', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(6, 'Checkout', 'checkout', '1', '0', '1', 'checkout', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(7, 'Tracking', 'tracking', '1', '0', '1', 'tracking', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(8, 'Service', 'service', '1', '0', '1', 'service', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(9, 'Service Details', 'service-details', '1', '0', '1', 'service_details', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(10, 'Register', 'register', '1', '0', '1', 'register', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(11, 'Wishlist', 'wishlist', '1', '0', '1', 'wishlist', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(12, 'coming-soon', 'coming-soon', '1', '0', '1', '', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(13, 'Blog', 'blog', '1', '0', '1', '', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(14, 'Blog Details', 'blog/details', '1', '0', '1', '', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(15, 'FAQ', 'faq', '1', '0', '1', '', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(16, 'Contact', 'contact', '1', '0', '1', 'contact', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(17, 'Sales Partner', 'sales/partner', '1', '0', '1', 'sales_partner', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(18, 'Dashboard', 'user/dashboard', '1', '0', '1', 'profile_dashboard', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(19, 'Cart', 'user/cart', '1', '0', '1', 'profile_cart', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(20, 'Location', 'user/location', '1', '0', '1', 'profile_location', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(21, 'Order', 'user/order', '1', '0', '1', 'checkout_page', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(22, 'Payment Information', 'user/payment-info', '1', '0', '1', 'payment_page', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(23, 'Category Information', 'category/details', '1', '0', '1', 'category_details_page', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(24, 'Bluk Order', 'bluk-order', '1', '0', '1', 'bluk_order', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(25, 'Custom Order', 'custom-order', '1', '0', '1', 'custom_order', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(26, 'Login', 'customer/login', '1', '0', '1', 'customer_login', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(27, 'Order Success', 'order/success', '1', '0', '1', 'order_success', '0', '0', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(28, '404', '404', '1', '0', '1', 'service', '0', '0', NULL, '2025-02-26 09:37:42', '2025-02-26 09:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE IF NOT EXISTS `participants` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `thread_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `user_type` int NOT NULL DEFAULT '1' COMMENT '1 user, 2 customer',
  `last_read` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `amount` bigint NOT NULL,
  `method` bigint NOT NULL,
  `tnxid` bigint NOT NULL,
  `status` bigint NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_credentials`
--

DROP TABLE IF EXISTS `payment_credentials`;
CREATE TABLE IF NOT EXISTS `payment_credentials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_password` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_secret` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_number` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishable` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `charge` double(8,2) NOT NULL DEFAULT '1.00',
  `banach` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '1',
  `updater` bigint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_credentials`
--

INSERT INTO `payment_credentials` (`id`, `provider`, `store_id`, `store_password`, `merchant_id`, `api_key`, `signature_key`, `app_key`, `app_secret`, `username`, `password`, `merchant_number`, `public_key`, `private_key`, `client_id`, `secret`, `publishable`, `sandbox_status`, `status`, `charge`, `banach`, `country`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-02-25 13:50:30', '2025-02-25 13:50:30'),
(2, 'AmarPay', 'aamarpaytest', NULL, NULL, NULL, 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-02-25 13:50:30', '2025-02-25 13:50:30'),
(3, 'SSLCommerz', 'dengr6606dde118f61', 'dengr6606dde118f61@ssl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-02-25 13:50:30', '2025-02-25 13:50:30'),
(4, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AW94vUy1U0BcDsirCdw3Ry8OXvfre6uAB2eLkhl4mXwbMBjRm4vTjNYiu3yIEk_zAM7jhMfYwQKZRaj9', 'EP3FKuvBoUKCdqTDMqrX_NB6U6Ljjzb0o-aptPsQSrjsXC1RmvrTnuGuEUQ0LU8mNOf8b4H9nYZBBtfo', NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2025-02-25 13:50:30', '2025-02-25 13:50:30'),
(5, 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sk_test_51QBS8gGmdDJ09IiPeBXzbzsKu4yZC3GLYepHUyK8uzqNeXl1hJan55DmOZpJMY5D3uHhNREjAU2qId5Y4SeaaMBS000ZwhS3JO', 'pk_test_51QBS8gGmdDJ09IiPzuSRshs99WwkulloA8wW0rPt4vTORhFZUYXXa2LaxrySoZMgwcndwdnFbVTWsDkemFIJl43W00fxHQeYXV', '1', '1', 0.00, 'us', 'us', 1, 1, '2025-02-25 13:50:30', '2025-02-25 13:50:30'),
(6, 'braintree', NULL, NULL, 'bxqn974w5gzggj44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wktqb878b2x7jj7r', '4d024a30390cb9475e556d475aaa399f', NULL, NULL, NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2025-02-25 13:50:30', '2025-02-25 13:50:30'),
(7, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-02-25 13:50:30', '2025-02-25 13:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `card_holder` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier_code` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` double(8,2) NOT NULL DEFAULT '0.00',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `paymethodable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymethodable_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_methods_paymethodable_type_paymethodable_id_index` (`paymethodable_type`,`paymethodable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(2, 'user create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(3, 'user edit', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(4, 'user rolechange', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(5, 'user delete', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(6, 'role read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(7, 'role create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(8, 'role edit', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(9, 'role delete', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(10, 'branch read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(11, 'branch create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(12, 'branch edit', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(13, 'branch delete', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(14, 'cashcounter read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(15, 'cashcounter create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(16, 'cashcounter edit', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(17, 'cashcounter delete', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(18, 'product read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(19, 'product create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(20, 'product edit', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(21, 'product delete', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(22, 'product barcode', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(23, 'unit read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(24, 'unit create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(25, 'unit edit', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(26, 'unit delete', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(27, 'purchase read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(28, 'purchase create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(29, 'purchase edit', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(30, 'purchase delete', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(31, 'customer read', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(32, 'customer create', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32'),
(33, 'customer edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(34, 'customer delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(35, 'stock read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(36, 'supplier read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(37, 'supplier create', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(38, 'supplier edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(39, 'supplier delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(40, 'category read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(41, 'category create', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(42, 'category edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(43, 'category delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(44, 'subcategory read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(45, 'subcategory create', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(46, 'subcategory edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(47, 'subcategory delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(48, 'area read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(49, 'area create', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(50, 'area edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(51, 'area delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(52, 'brand read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(53, 'brand create', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(54, 'brand edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(55, 'brand delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(56, 'vat read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(57, 'vat create', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(58, 'vat edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(59, 'vat delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(60, 'discount read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(61, 'discount create', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(62, 'discount edit', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(63, 'discount delete', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(64, 'pos read', 'web', '2025-02-25 13:50:33', '2025-02-25 13:50:33'),
(65, 'pos create', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(66, 'pos edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(67, 'pos delete', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(68, 'siteverification read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(69, 'siteverification edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(70, 'tagmanagement read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(71, 'tagmanagement edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(72, 'pwa read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(73, 'pwa edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(74, 'notification read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(75, 'notification edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(76, 'takto read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(77, 'takto edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(78, 'cookie read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(79, 'cookie edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(80, 'smtp read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(81, 'smtp edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(82, 'payment_credentials read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(83, 'payment_credentials edit', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(84, 'maintenance mode', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(85, 'maintenance debug', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(86, 'maintenance database', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(87, 'database backup', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(88, 'device_access_check read', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(89, 'settings payment_configration', 'web', '2025-02-25 13:50:34', '2025-02-25 13:50:34'),
(90, 'settings main', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(91, 'settings notification', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(92, 'settings site_verification', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(93, 'settings site_tag', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(94, 'settings tracking_report', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(95, 'settings site_pwa', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(96, 'settings messagesdk', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(97, 'settings cookie', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(98, 'settings email_setting', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(99, 'imap management', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(100, 'order read', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(101, 'order create', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(102, 'order edit', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(103, 'order delete', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(104, 'custom_order type read', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(105, 'custom_order bulk read', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(106, 'custom_order custom read', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(107, 'offerbanner read', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(108, 'offerbanner create', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(109, 'offerbanner edit', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(110, 'offerbanner delete', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(111, 'profile read', 'web', '2025-02-25 13:50:35', '2025-02-25 13:50:35'),
(112, 'profile create', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(113, 'profile edit', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(114, 'profile delete', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(115, 'theme read', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(116, 'LeadAccount read', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(117, 'LeadAccount create', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(118, 'LeadAccount edit', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(119, 'LeadAccount delete', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(120, 'LeadContact read', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(121, 'LeadContact create', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(122, 'LeadContact edit', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(123, 'LeadContact delete', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(124, 'LeadDeal read', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(125, 'LeadDeal create', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(126, 'LeadDeal edit', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(127, 'LeadDeal delete', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(128, 'LeadDealStage read', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(129, 'LeadDealStage create', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(130, 'LeadDealStage edit', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(131, 'LeadDealStage delete', 'web', '2025-02-25 13:50:36', '2025-02-25 13:50:36'),
(132, 'Lead read', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(133, 'Lead create', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(134, 'Lead edit', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(135, 'Lead delete', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(136, 'LeadSource read', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(137, 'LeadSource create', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(138, 'LeadSource edit', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(139, 'LeadSource delete', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(140, 'language read', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(141, 'language create', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(142, 'language edit', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(143, 'language delete', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(144, 'Translation read', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(145, 'Translation create', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(146, 'Translation edit', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(147, 'Translation delete', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(148, 'slider read', 'web', '2025-02-25 13:50:37', '2025-02-25 13:50:37'),
(149, 'slider create', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(150, 'slider edit', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(151, 'slider delete', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(152, 'service read', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(153, 'service create', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(154, 'service edit', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(155, 'service delete', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(156, 'testimonial read', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(157, 'testimonial create', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(158, 'testimonial edit', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(159, 'testimonial delete', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(160, 'footerlinkheading read', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(161, 'footerlinkheading create', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(162, 'footerlinkheading edit', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(163, 'footerlinkheading delete', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(164, 'footerlinksubheading read', 'web', '2025-02-25 13:50:38', '2025-02-25 13:50:38'),
(165, 'footerlinksubheading create', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(166, 'footerlinksubheading edit', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(167, 'footerlinksubheading delete', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(168, 'headernav read', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(169, 'headernav create', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(170, 'headernav edit', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(171, 'headernav delete', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(172, 'faq read', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(173, 'faq create', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(174, 'faq edit', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(175, 'faq delete', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(176, 'page read', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(177, 'page create', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(178, 'page edit', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39'),
(179, 'page delete', 'web', '2025-02-25 13:50:39', '2025-02-25 13:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_description` longtext COLLATE utf8mb4_unicode_ci,
  `unit` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_selling` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `garage` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `route` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `feature` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `alert_quantity` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `discount_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `uploads_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sub_category` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `youtube_video` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `old_price` int NOT NULL DEFAULT '0',
  `selling_price` int NOT NULL DEFAULT '0',
  `vat` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `service` tinyint(1) NOT NULL DEFAULT '0',
  `variant_on` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `variant_option` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `landing_page_bg` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page_color` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page_deasing_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_id`, `sku`, `slug`, `category`, `brand`, `weight`, `description`, `additional_description`, `unit`, `for_selling`, `garage`, `route`, `feature`, `alert_quantity`, `discount_id`, `creator`, `upload_id`, `uploads_id`, `sub_category`, `short_description`, `youtube_video`, `tags`, `views`, `old_price`, `selling_price`, `vat`, `service`, `variant_on`, `variant_option`, `status`, `landing_page_bg`, `landing_page_color`, `landing_page_deasing_id`, `deleted_at`, `created_at`, `updated_at`, `quantity`) VALUES
(1, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-28 04:50:27', '2025-01-28 02:54:45', '2025-01-28 04:50:27', 0),
(2, 'Tree Planting Earth Auger Machine', 'p', NULL, 'tree-planting-earth-auger-machine', '6', '1', '0', '<ul style=\"margin-bottom: 2.5rem; padding-left: 18px; color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\"><li>Single cylinder, two-stroke, air-cooling&nbsp;</li><li>1E40F-5 match engine&nbsp;</li><li>42.7cc engine displacement &nbsp;</li><li>1.4kW rated output power &nbsp;&nbsp;</li><li>1200ml fuel tank capacity&nbsp;</li><li>3 feet drive ration&nbsp;</li><li>1.85 module of gear</li><li>25:1 fuel mixture ratio&nbsp;</li><li>9.5Kg weight</li></ul>', '<p><span style=\"color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\">This soil drill machine has suitable for all kinds of geological, Gardening / agriculture / fishing / geophysical exploration, and construction all employ this auger machine. It uses a powerful yet efficient 42.7cc engine displacement, Your 12-ml fuel tank, and 2-stroke petrol engine enable you to dig deeper in refills. It is very easy to use, 59 x 36.5 x 31.5cm dimension.</span></p>', '1', '1', '0', '0', '1', '0', '1', '1', '10', '12,11,9,10', '0', 'The lowest price of Tree planting earth auger machine in Bangladesh is Tk 17,000 only. Buy from Dhaka at low price in Bdstall. There is currently 2 sellers.', '0', NULL, 53, 17000, 19500, '0', 0, '0', NULL, '1', '#000000', '#000000', NULL, NULL, '2025-01-28 04:58:04', '2025-02-27 12:16:04', 1),
(3, 'Tree Planting Earth Auger Machine', 'p-1', NULL, 'tree-planting-earth-auger-machine-1', '6', '1', '0', '<ul style=\"margin-bottom: 2.5rem; padding-left: 18px; color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\"><li>Single cylinder, two-stroke, air-cooling&nbsp;</li><li>1E40F-5 match engine&nbsp;</li><li>42.7cc engine displacement &nbsp;</li><li>1.4kW rated output power &nbsp;&nbsp;</li><li>1200ml fuel tank capacity&nbsp;</li><li>3 feet drive ration&nbsp;</li><li>1.85 module of gear</li><li>25:1 fuel mixture ratio&nbsp;</li><li>9.5Kg weight</li></ul>', '<p><span style=\"color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\">This soil drill machine has suitable for all kinds of geological, Gardening / agriculture / fishing / geophysical exploration, and construction all employ this auger machine. It uses a powerful yet efficient 42.7cc engine displacement, Your 12-ml fuel tank, and 2-stroke petrol engine enable you to dig deeper in refills. It is very easy to use, 59 x 36.5 x 31.5cm dimension.</span></p>', '1', '1', '0', '0', '0', '0', '1', '1', '10', '12,11,9,10', '0', 'The lowest price of Tree planting earth auger machine in Bangladesh is Tk 17,000 only. Buy from Dhaka at low price in Bdstall. There is currently 2 sellers.', '0', NULL, 34, 17000, 19500, '0', 0, '0', NULL, '1', '#000000', '#000000', NULL, NULL, '2025-01-28 04:58:28', '2025-02-26 12:46:12', 1),
(4, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-29 03:14:38', '2025-01-28 06:09:24', '2025-01-29 03:14:38', 0),
(5, 'Madaline Collier', 'p-2', NULL, 'madaline-collier', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '14', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 9, 718, 627, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:18:54', '2025-02-26 05:47:45', 0),
(6, 'Hotpot', 'p-3', NULL, 'hotpot', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '15', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 7, 718, 627, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:19:42', '2025-02-26 05:49:24', 0),
(7, 'Presser Cooker', 'p-4', NULL, 'presser-cooker', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '16', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 6, 718, 627, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:20:26', '2025-02-26 05:48:07', 0),
(8, 'pan', 'p-5', NULL, 'pan', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '17', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 7, 718, 627, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:21:36', '2025-02-26 05:41:59', 0),
(9, 'Rice Cooker', 'p-6', NULL, 'rice-cooker', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '19', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 7, 718, 627, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:22:55', '2025-02-26 05:45:57', 0),
(10, 'Hitter', 'p-7', NULL, 'hitter', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '20', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 6, 718, 627, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:23:45', '2025-02-26 05:43:02', 0),
(11, 'Harvesters', 'p-8', NULL, 'harvesters', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '21', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 32, 718, 627, '0', 1, '1', '{\"variant_key\":[\"Model\"],\"vairant_value\":[\"AA60,AA70,AA80,AA100,AA125,AA150\"],\"variant_details_key\":[\"Capacity\",\"Main Motor\",\"Vacuum pump\",\"Power Heater\",\"Conveyer\",\"Total Power\",\"Volt\",\"Total Weight\",\"Ma c hine Size (mm)\"],\"variant_details_value\":[\"60Kg\\/h\",\"2.2 kw\",\"0.55 kw\",\"0.9 kw\",\"#\",\"3.65 kw\",\"220 v\",\"220 kg\",\"1200*780*1100\"]}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:30:31', '2025-02-26 05:41:14', 0),
(12, 'Power Tiller', 'p-9', NULL, 'power-tiller', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '22', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 22, 20718, 19962, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:31:23', '2025-02-26 05:46:28', 0),
(13, 'Agriculture Machinery', 'p-10', NULL, 'agriculture-machinery', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '23', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 22, 20718, 19962, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:32:05', '2025-02-26 05:42:40', 0),
(14, 'Agriculture Katting machine', 'p-11', NULL, 'agriculture-katting-machine', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '24', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 23, 50718, 45962, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:33:24', '2025-02-26 05:36:58', 0),
(15, 'Mini Harvesters', 'p-12', NULL, 'mini-harvesters', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '26', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 37, 100718, 90718, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:34:38', '2025-02-26 05:47:10', 0),
(16, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-29 03:14:31', '2025-01-29 01:42:40', '2025-01-29 03:14:31', 0),
(17, 'Hardscape', 'p-13', NULL, 'hardscape', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '27', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 25, 22180, 20180, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:44:43', '2025-02-26 05:39:55', 0),
(18, 'Outdoors', 'p-14', NULL, 'outdoors', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '28', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 24, 600, 580, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:45:52', '2025-02-26 05:44:37', 0),
(19, 'Hardscape', 'p-15', NULL, 'hardscape-1', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '29', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 22, 3000, 2500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:48:26', '2025-02-26 05:41:50', 0),
(20, 'Screwfix', 'p-16', NULL, 'screwfix', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '31', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 22, 3000, 2500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:50:33', '2025-02-26 05:38:23', 0),
(21, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-29 03:14:42', '2025-01-29 01:51:59', '2025-01-29 03:14:42', 0),
(22, 'Harnessing', 'p-17', NULL, 'harnessing', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '32', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 7, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:52:33', '2025-02-26 05:40:04', 0),
(23, 'Walton targets', 'p-18', NULL, 'walton-targets', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '33', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 7, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:53:11', '2025-02-26 05:48:18', 0),
(24, 'Domestic Appliances', 'p-19', NULL, 'domestic-appliances', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '34', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 6, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:53:51', '2025-02-26 05:49:46', 0),
(25, 'Kitchen Appliances', 'p-20', NULL, 'kitchen-appliances', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '35', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 6, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:54:31', '2025-02-26 05:35:16', 0),
(26, 'Fashion Store Interior', 'p-21', NULL, 'fashion-store-interior', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '36', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 8, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:56:00', '2025-02-26 05:45:25', 0),
(27, 'Fashion Store Interior Design', 'p-22', NULL, 'fashion-store-interior-design', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '38', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 8, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:57:08', '2025-02-26 05:47:00', 0),
(28, 'Fashion House - Cascavelle', 'p-23', NULL, 'fashion-house-cascavelle', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '39', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 11, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:06:14', '2025-02-26 05:38:05', 0),
(29, 'Fashion house showroom', 'p-24', NULL, 'fashion-house-showroom', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '40', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 9, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:33:37', '2025-02-26 05:45:15', 0),
(30, 'Best interior design', 'p-25', NULL, 'best-interior-design', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '41', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 7, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:39:52', '2025-02-26 05:43:11', 0),
(31, 'Fashion House International', 'p-26', NULL, 'fashion-house-international', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '42', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 9, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:40:29', '2025-02-26 05:42:50', 0),
(32, 'Gurwani\'s Boutique', 'p-27', NULL, 'gurwanis-boutique', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '43', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 9, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:41:51', '2025-02-26 05:44:45', 0),
(33, '𝐇𝐨𝐮𝐬𝐞 𝐎𝐟 𝐅𝐚𝐬𝐡𝐢𝐨𝐧 𝐁𝐨𝐮𝐭𝐢𝐪𝐮𝐞', 'p-28', NULL, '', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '44', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:42:40', '2025-01-29 02:42:40', 0),
(34, 'Walton brings 2 model', 'p-29', NULL, 'walton-brings-2-model', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '45', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 6, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:44:50', '2025-02-26 05:42:59', 0),
(35, 'Home Appliances that Consume', 'p-30', NULL, 'home-appliances-that-consume', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '47', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 7, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:46:02', '2025-02-26 05:41:52', 0),
(36, 'Save Big on the Top 8 Home', 'p-31', NULL, 'save-big-on-the-top-8-home', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '48', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 9, 63000, 55500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:47:07', '2025-02-26 05:34:59', 0),
(37, 'Latest Range of Consumer Products', 'p-32', NULL, 'latest-range-of-consumer-products', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '52', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 11, 43000, 35500, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:48:47', '2025-02-26 05:35:08', 0),
(38, 'Cookeriess Cookeries Hand Hammered', 'p-33', NULL, 'cookeriess-cookeries-hand-hammered', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '53', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 10, 1300, 1000, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:51:17', '2025-02-26 05:44:47', 0),
(39, 'Cookeriess Cookeries Hand Stahl', 'p-34', NULL, 'cookeriess-cookeries-hand-stahl', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '55', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 8, 2200, 2000, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:52:35', '2025-02-26 05:44:28', 0),
(40, 'Agriculture Equipment', 'p-35', NULL, 'agriculture-equipment', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '57', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 34, 510200, 500200, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:55:05', '2025-02-26 05:42:02', 0),
(41, 'Hello fellas', 'p-36', NULL, 'hello-fellas', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '59', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 28, 2500, 2200, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:57:51', '2025-02-26 05:45:29', 0),
(42, 'Grading Tools', 'p-37', NULL, 'grading-tools', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '60', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 30, 90500, 87050, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:59:04', '2025-02-26 05:46:08', 0),
(43, 'Garden Tools for sale in Dublin', 'p-38', NULL, 'garden-tools-for-sale-in-dublin', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '67', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 25, 6500, 5050, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 03:01:01', '2025-02-26 05:33:10', 0),
(44, 'Garden Tools for sale in Nelson', 'p-39', NULL, 'garden-tools-for-sale-in-nelson', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '68', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 29, 6500, 5050, '0', 1, '0', NULL, '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 03:02:08', '2025-02-26 05:29:02', 0),
(45, 'Shoes For men', 'p-40', 'Tyrone Valencia', 'shoes-for-men', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '85', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 11, 5741, 5684, '0', 0, '0', NULL, '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:08:35', '2025-02-26 05:49:34', 0),
(46, 'Shoes For men', 'p-41', 'Tyrone Valencia', 'shoes-for-men-5', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '86', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 19, 5741, 5684, '0', 0, '1', '{\"variant_key\":[\"Perfect Size\"],\"vairant_value\":[\"39,40,41,42,43,44\"],\"variant_details_key\":[\"Bata\",\"CM\"],\"variant_details_value\":[\"bata\",\"bata\"]}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:09:14', '2025-02-26 05:44:16', 0),
(47, 'Shoes For men', 'p-42', 'Tyrone Valencia', 'shoes-for-men-2', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '87', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 12, 5741, 5684, '0', 0, '0', NULL, '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:09:44', '2025-02-26 05:43:57', 0),
(48, 'Shoes For men', 'p-43', 'Tyrone Valencia', 'shoes-for-men-3', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '90', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 7, 5741, 5684, '0', 0, '0', NULL, '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:10:58', '2025-02-26 05:44:26', 0),
(49, 'Shoes For men', 'p-44', 'Tyrone Valencia', 'shoes-for-men-4', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '91', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 24, 5741, 5684, '0', 0, '0', NULL, '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:11:31', '2025-02-26 05:44:07', 0),
(50, 'Shoes For Women', 'p-45', 'Tyrone Valencia', 'shoes-for-women', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '94', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 8, 5741, 5684, '0', 0, '0', NULL, '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:14:26', '2025-02-26 05:44:57', 0),
(51, 'Shoes For Women', 'p-46', 'Tyrone Valencia', 'shoes-for-women-2', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '96', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 9, 5741, 5684, '0', 0, '0', NULL, '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:15:22', '2025-03-01 06:28:51', -1),
(52, 'Shoes For Women', 'p-47', 'Tyrone Valencia', 'shoes-for-women-3', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '98', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 15, 5741, 5684, '0', 0, '0', NULL, '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:16:07', '2025-02-26 05:40:27', 0),
(53, 'BAta shoes', 'p-48', NULL, 'bata-shoes-1', '26', '0', '0', NULL, NULL, '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL, '0', NULL, 11, 10, 1, '0', 0, '0', NULL, '1', '#000000', '#000000', NULL, '2025-02-02 04:03:43', '2025-01-31 23:05:56', '2025-02-02 04:03:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_faqs`
--

DROP TABLE IF EXISTS `product_faqs`;
CREATE TABLE IF NOT EXISTS `product_faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order_sort` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_refs`
--

DROP TABLE IF EXISTS `product_refs`;
CREATE TABLE IF NOT EXISTS `product_refs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_no` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taka` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_styles`
--

DROP TABLE IF EXISTS `product_styles`;
CREATE TABLE IF NOT EXISTS `product_styles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_styles`
--

INSERT INTO `product_styles` (`id`, `key`, `title`, `upload_id`, `status`, `background_color`, `details`, `created_at`, `updated_at`) VALUES
(1, '_product_style.product_style1', 'Product Style Style', 'uploads/preset/_product_style/product_style1.png', 0, '#ffffff', '\n                   Product Style 1\n                ', '2025-02-25 01:50:42', '2025-02-26 06:05:57'),
(2, '_product_style.product_style2', 'Product Style Style', 'uploads/preset/_product_style/product_style2.png', 1, '#ffffff', '\n                   Product Style 2\n                ', '2025-02-25 01:50:42', '2025-02-26 12:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint NOT NULL,
  `productId` bigint NOT NULL,
  `supplierId` bigint NOT NULL,
  `quantity` bigint NOT NULL,
  `unit_id` bigint DEFAULT NULL,
  `varinat_id` bigint DEFAULT NULL,
  `status` bigint NOT NULL,
  `price` bigint NOT NULL,
  `total` bigint NOT NULL,
  `buying_date` timestamp NULL DEFAULT NULL,
  `expiring_date` timestamp NULL DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_unit_id_foreign` (`unit_id`),
  KEY `purchases_varinat_id_foreign` (`varinat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_id`, `productId`, `supplierId`, `quantity`, `unit_id`, `varinat_id`, `status`, `price`, `total`, `buying_date`, `expiring_date`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, 1, 0, 2, 0, 0, '2025-02-25 18:00:00', NULL, '1', '0', '2025-02-26 12:46:12', '2025-02-26 12:46:12'),
(2, 1, 3, 1, 1, 1, 0, 2, 0, 0, '2025-02-25 18:00:00', NULL, '1', '0', '2025-02-26 12:46:12', '2025-02-26 12:46:12'),
(3, 1, 45, 1, 1, 1, 0, 2, 0, 0, '2025-02-25 18:00:00', NULL, '1', '0', '2025-02-26 12:46:12', '2025-02-26 12:46:12'),
(4, 1, 47, 1, 1, 1, 0, 2, 0, 0, '2025-02-25 18:00:00', NULL, '1', '0', '2025-02-26 12:46:12', '2025-02-26 12:46:12'),
(5, 1, 48, 1, 1, 1, 0, 2, 0, 0, '2025-02-25 18:00:00', NULL, '1', '0', '2025-02-26 12:46:12', '2025-02-26 12:46:12'),
(6, 1, 51, 1, 1, 1, 0, 2, 0, 0, '2025-02-25 18:00:00', NULL, '1', '0', '2025-02-26 12:46:12', '2025-02-26 12:46:12'),
(7, 1, 52, 1, 1, 1, 0, 2, 0, 0, '2025-02-25 18:00:00', NULL, '1', '0', '2025-02-26 12:46:12', '2025-02-26 12:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `refrence_users`
--

DROP TABLE IF EXISTS `refrence_users`;
CREATE TABLE IF NOT EXISTS `refrence_users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_products`
--

DROP TABLE IF EXISTS `review_products`;
CREATE TABLE IF NOT EXISTS `review_products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2025-02-25 13:50:32', '2025-02-25 13:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
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
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE IF NOT EXISTS `salaries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` bigint NOT NULL DEFAULT '0',
  `user_id` bigint NOT NULL DEFAULT '0',
  `month` bigint NOT NULL DEFAULT '0',
  `year` bigint NOT NULL DEFAULT '0',
  `description` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon_class` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `upload_id` bigint NOT NULL DEFAULT '0',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon_class`, `title`, `short_description`, `description`, `upload_id`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-asd', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-dfs', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-met-df-e', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(4, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-sdfsd', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(5, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-dfdgd', '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `creator_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `creator_id`, `key`, `created_at`, `updated_at`) VALUES
(1, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(2, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(3, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(4, 'currency_symbol', '$', '1', '9', NULL, NULL),
(5, 'app_image', '0', '1', '9', NULL, NULL),
(6, 'app_name_short', 'D Pos', '1', '9', NULL, NULL),
(7, 'app_title', 'D Engr Pos', '1', '9', NULL, NULL),
(8, 'app_footer_image', '0', '1', '9', NULL, NULL),
(9, 'app_email', 'dengrweb@gmail.com', '1', '9', NULL, NULL),
(10, 'app_about', 'We are best of software company', '1', '9', NULL, NULL),
(11, 'app_tel', '01590084779', '1', '9', NULL, NULL),
(12, 'app_linkedin', 'https://linkedin.com/mdsazzad0002', '1', '9', NULL, NULL),
(13, 'app_facebook', 'https://facebook.com/mdsazzad0002', '1', '9', NULL, NULL),
(14, 'app_whatsapp', 'https://wa.me/01590084779', '1', '9', NULL, NULL),
(15, 'app_twitter', 'https://twitter.com/mdsazzad0002', '1', '9', NULL, NULL),
(16, 'app_youtube', 'https://youtube.com/mdsazzad0002', '1', '9', NULL, NULL),
(17, 'app_telegram', 'https://t.me/mdsazzad0002', '1', '9', NULL, NULL),
(18, 'app_linkedin', 'https://linkedin.com/in/mdsazzad0002', '1', '9', NULL, NULL),
(19, 'app_pinterest', 'https://pinterest.com/mdsazzad0002', '1', '9', NULL, NULL),
(20, 'app_github', 'https://github.com/mdsazzad0002', '1', '9', NULL, NULL),
(21, 'app_figma', 'https://figma.com/mdsazzad0002', '1', '9', NULL, NULL),
(22, 'app_website', 'https://code.dengrweb.com/users/superadmin', '1', '9', NULL, NULL),
(23, 'app_address', 'Dhaka Mirpur', '1', '9', NULL, NULL),
(24, 'app_maps', 'https://maps.google.com', '1', '9', NULL, NULL),
(25, 'app_preloader_image', '0', '1', '9', NULL, NULL),
(26, 'app_preloader_status', '0', '1', '9', NULL, NULL),
(27, 'theme_color', '#000000', '1', '9', NULL, NULL),
(28, 'google-site-verification', 'Google-Site-Verification', '0', '25', '2025-02-25 13:50:28', '2025-02-25 13:50:28'),
(29, 'msvalidate.01', 'Msvalidate.01', '0', '25', '2025-02-25 13:50:28', '2025-02-25 13:50:28'),
(30, 'yandex-verification', 'Yandex-Verification', '0', '25', '2025-02-25 13:50:28', '2025-02-25 13:50:28'),
(31, 'p:domain_verify', 'P:domain Verify', '0', '25', '2025-02-25 13:50:28', '2025-02-25 13:50:28'),
(32, 'fb:admins', 'Fb:admins', '0', '25', '2025-02-25 13:50:28', '2025-02-25 13:50:28'),
(33, 'google_tag_manager_key', '', '1', '24', NULL, NULL),
(34, 'google_tag_analysis_key', '', '1', '24', NULL, NULL),
(35, 'facebook_app_id', '', '1', '24', NULL, NULL),
(36, 'facebook_pixel_id', '', '1', '24', NULL, NULL),
(37, 'pwa_image', '0', '1', '20', NULL, NULL),
(38, 'pwa_name', '0', '1', '20', NULL, NULL),
(39, 'pwa_sort_name', 'D Pos', '1', '20', NULL, NULL),
(40, 'theme_color', '#000000', '1', '20', NULL, NULL),
(41, 'pwa_background_color', '#6b6b6b', '1', '20', NULL, NULL),
(42, 'pwa_orientation', 'any', '1', '20', NULL, NULL),
(43, 'pwa_description', 'D Pos', '1', '20', NULL, NULL),
(44, 'pwa_type', 'image/png', '1', '20', NULL, NULL),
(45, 'pwa_sizes', '150x150', '1', '20', NULL, NULL),
(46, 'pwa_display', 'standalone', '1', '20', NULL, NULL),
(47, 'pwa_status', '0', '1', '20', NULL, NULL),
(48, 'chat_status', '0', '1', '31', NULL, NULL),
(49, 's1_src_link_tawk_to', 'https://embed.tawk.to/670faba22480f5b4f58e3fa8/1iaajctkv', '1', '31', NULL, NULL),
(50, 'tawk_to_status', '0', '1', '31', NULL, NULL),
(51, 'crisp_chat_id', '081aca0a-3ef7-42a7-bfb1-40311e186858', '1', '31', NULL, NULL),
(52, 'crisp_chat_status', '0', '1', '31', NULL, NULL),
(53, 'livechatinc_chat_id', '19014517', '1', '31', NULL, NULL),
(54, 'livechatinc_chat_status', '0', '1', '31', NULL, NULL),
(55, 'tidio_chat_public_key', '5qzknqts5kypovduysccptkdg41kbinq', '1', '31', NULL, NULL),
(56, 'tidio_chat_status', '0', '1', '31', NULL, NULL),
(57, 'tiledesk_chat_id', '679bbecad8fd32001345ae09', '1', '31', NULL, NULL),
(58, 'tiledesk_chat_status', '0', '1', '31', NULL, NULL),
(59, 'cookie_declined_btn', 'Declined', '1', '40', NULL, NULL),
(60, 'cookie_accept_btn', 'Accept', '1', '40', NULL, NULL),
(61, 'cookie_link_text', 'Read More ...', '1', '40', NULL, NULL),
(62, 'cookie_link', 'https://dengrweb.com', '1', '40', NULL, NULL),
(63, 'cookie_description', 'Your description text', '1', '40', NULL, NULL),
(64, 'cookie_title', 'Cookie Concent', '1', '40', NULL, NULL),
(65, 'cookie_i_con_class_title', 'fas fa-cookie', '1', '40', NULL, NULL),
(66, 'cookie_status', '0', '1', '40', NULL, NULL),
(67, 'cookie_bg_color', '#139dd8', '1', '40', NULL, NULL),
(68, 'cookie_btn_1_color', '#ffffff', '1', '40', NULL, NULL),
(69, 'cookie_btn_1_color_bg', '#0d5caf', '1', '40', NULL, NULL),
(70, 'cookie_btn_2_color', '#eeeeee', '1', '40', NULL, NULL),
(71, 'cookie_btn_2_color_bg', '#d21919', '1', '40', NULL, NULL),
(72, 'bd_courier_tracking_id', '44KuwISREmzWwTxOhapxFaiVyAIAuXVS2618lNMTa4OAJ3NWffuQKjrDeTfk', '1', '27', NULL, NULL),
(73, 'bd_courier_tracking_status', '1', '1', '27', NULL, NULL),
(74, 'custom_js_head_code', '', '1', '45', NULL, NULL),
(75, 'custom_css_head_code', '', '1', '45', NULL, NULL),
(76, 'custom_js_footer_code', '', '1', '45', NULL, NULL),
(77, 'custom_css_footer_code', '', '1', '45', NULL, NULL),
(78, 'custom_css__head_code', '', '1', '45', NULL, NULL),
(79, 'custom_css__footer_code', '', '1', '45', NULL, NULL),
(80, 'app_fav_image', 'App Fav Image', '0', '9', '2025-02-26 05:03:55', '2025-02-26 05:03:55'),
(81, 'category_wise_filter_status', '0', '1', '80', '2025-02-26 05:03:57', '2025-02-26 05:26:07'),
(82, 'app_instagram', 'App Instagram', '0', '9', '2025-02-26 05:03:57', '2025-02-26 05:03:57'),
(83, 'app_whatssap_fixed_status', 'App Whatssap Fixed Status', '0', '9', '2025-02-26 05:03:57', '2025-02-26 05:03:57'),
(84, 'app_messenger_fixed_status', 'App Messenger Fixed Status', '0', '9', '2025-02-26 05:03:57', '2025-02-26 05:03:57'),
(85, 'login_admin_image', 'Login Admin Image', '0', '9', '2025-02-26 05:04:16', '2025-02-26 05:04:16'),
(86, 'dashboard_title', 'Dashboard Title', '0', '10', '2025-02-26 05:04:21', '2025-02-26 05:04:21'),
(87, 'theme_mode', '0', '1', '1', '2025-02-26 05:04:22', '2025-02-26 11:00:14'),
(88, 'theme_layout-navbar-fixed', 'Theme Layout-Navbar-Fixed', '0', '1', '2025-02-26 05:04:22', '2025-02-26 05:04:22'),
(89, 'theme_layout-fixed', 'Theme Layout-Fixed', '0', '1', '2025-02-26 05:04:22', '2025-02-26 05:04:22'),
(90, 'theme_sidebar-mini', 'Theme Sidebar-Mini', '0', '1', '2025-02-26 05:04:22', '2025-02-26 05:04:22'),
(91, 'theme_sidebar-mini-md', 'Theme Sidebar-Mini-Md', '0', '1', '2025-02-26 05:04:22', '2025-02-26 05:04:22'),
(92, 'theme_sidebar-mini-xs', 'Theme Sidebar-Mini-Xs', '0', '1', '2025-02-26 05:04:22', '2025-02-26 05:04:22'),
(93, 'theme_layout-footer-fixed', 'Theme Layout-Footer-Fixed', '0', '1', '2025-02-26 05:04:22', '2025-02-26 05:04:22'),
(94, 'theme_dropdown-legacy', 'Theme Dropdown-Legacy', '0', '1', '2025-02-26 05:04:23', '2025-02-26 05:04:23'),
(95, 'theme_border-bottom-0', 'Theme Border-Bottom-0', '0', '1', '2025-02-26 05:04:23', '2025-02-26 05:04:23'),
(96, 'theme_navbar_bg', 'Theme Navbar Bg', '0', '1', '2025-02-26 05:04:23', '2025-02-26 05:04:23'),
(97, 'theme_sidebar-no-expand', 'Theme Sidebar-No-Expand', '0', '1', '2025-02-26 05:04:24', '2025-02-26 05:04:24'),
(98, 'theme_dark_sidebar_variant', 'Theme Dark Sidebar Variant', '0', '1', '2025-02-26 05:04:24', '2025-02-26 05:04:24'),
(99, 'theme_brand_link', 'Theme Brand Link', '0', '1', '2025-02-26 05:04:24', '2025-02-26 05:04:24'),
(100, 'nav-flat', 'Nav-Flat', '0', '1', '2025-02-26 05:04:24', '2025-02-26 05:04:24'),
(101, 'theme_nav-child-indent', 'Theme Nav-Child-Indent', '0', '1', '2025-02-26 05:04:24', '2025-02-26 05:04:24'),
(102, 'theme_nav-collapse-hide-child', 'Theme Nav-Collapse-Hide-Child', '0', '1', '2025-02-26 05:04:24', '2025-02-26 05:04:24'),
(103, 'theme_nav-flat', 'Theme Nav-Flat', '0', '1', '2025-02-26 05:04:25', '2025-02-26 05:04:25'),
(104, 'footerlinkheadings', 'Footerlinkheadings', '0', '10', '2025-02-26 05:26:55', '2025-02-26 05:26:55'),
(105, 'product_variant_style1_status', 'Product Variant Style1 Status', '0', '99', '2025-02-26 05:27:59', '2025-02-26 05:27:59'),
(106, 'product_variant_style2_status', 'Product Variant Style2 Status', '0', '99', '2025-02-26 05:27:59', '2025-02-26 05:27:59'),
(107, 'product_variant_style3_status', 'Product Variant Style3 Status', '0', '99', '2025-02-26 05:27:59', '2025-02-26 05:27:59'),
(108, 'footer_payment_method_status', 'Footer Payment Method Status', '0', '88', '2025-02-26 05:28:00', '2025-02-26 05:28:00'),
(109, 'show_filter_by_category_status', 'Show Filter By Category Status', '0', '80', '2025-02-26 05:36:17', '2025-02-26 05:36:17'),
(110, 'show_filter_by_price_status', 'Show Filter By Price Status', '0', '80', '2025-02-26 05:36:17', '2025-02-26 05:36:17'),
(111, 'show_filter_by_brand_status', 'Show Filter By Brand Status', '0', '80', '2025-02-26 05:36:17', '2025-02-26 05:36:17'),
(112, 'show_filter_by_rating_status', 'Show Filter By Rating Status', '0', '80', '2025-02-26 05:36:17', '2025-02-26 05:36:17'),
(113, 'show_filter_feature_product_status', 'Show Filter Feature Product Status', '0', '80', '2025-02-26 05:36:17', '2025-02-26 05:36:17'),
(114, 'show_filter_offer_product_status', 'Show Filter Offer Product Status', '0', '80', '2025-02-26 05:36:17', '2025-02-26 05:36:17'),
(115, 'pages', 'Pages', '0', '10', '2025-02-26 09:36:51', '2025-02-26 09:36:51'),
(116, 'footerlinksubheadings', 'Footerlinksubheadings', '0', '10', '2025-02-26 10:43:51', '2025-02-26 10:43:51'),
(117, 'Contacts', 'Contacts', '0', '10', '2025-02-26 12:38:49', '2025-02-26 12:38:49'),
(118, 'Product Type', 'Product Type', '0', '10', '2025-02-26 12:38:52', '2025-02-26 12:38:52'),
(119, 'supplier', 'Supplier', '0', '10', '2025-02-26 12:40:43', '2025-02-26 12:40:43'),
(120, 'purchase', 'Purchase', '0', '10', '2025-02-26 12:43:41', '2025-02-26 12:43:41'),
(121, 'address', 'Address', '0', '9', '2025-02-26 12:46:31', '2025-02-26 12:46:31'),
(122, 'category', 'Category', '0', '10', '2025-02-26 12:55:31', '2025-02-26 12:55:31'),
(123, 'order', 'Order', '0', '10', '2025-02-27 07:43:12', '2025-02-27 07:43:12'),
(124, 'checkout_note', 'Checkout Note', '0', '9', '2025-02-27 12:16:36', '2025-02-27 12:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

DROP TABLE IF EXISTS `shipping_charges`;
CREATE TABLE IF NOT EXISTS `shipping_charges` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `creator`, `updater`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka', '100', '1', '1', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'Outside Dhaka', '150', '1', '1', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `sub_description` text COLLATE utf8mb4_unicode_ci,
  `upload_id` bigint DEFAULT NULL,
  `upload_bg` bigint DEFAULT NULL,
  `button_title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `short_description`, `sub_description`, `upload_id`, `upload_bg`, `button_title`, `button_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'In Service 1', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'In Service 2', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'In Service 3', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `social_contacts`
--

DROP TABLE IF EXISTS `social_contacts`;
CREATE TABLE IF NOT EXISTS `social_contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_source_id` bigint NOT NULL,
  `url` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sociable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sociable_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_contacts_sociable_type_sociable_id_index` (`sociable_type`,`sociable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_events`
--

DROP TABLE IF EXISTS `special_events`;
CREATE TABLE IF NOT EXISTS `special_events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL DEFAULT '0',
  `quantity` bigint NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0' COMMENT '1 for positive 0 for negative',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `order_id`, `product_id`, `variant_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(3, 12, 51, 0, 1, 1, '2025-03-01 06:18:15', '2025-03-01 06:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator` bigint NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `feature` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` bigint NOT NULL DEFAULT '0',
  `location` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `area`, `location`, `type`, `business_name`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `creator`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 'asdfasd', 'asdf@gmail.com', '01590084779', 1, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '2025-02-26 12:41:38', '2025-02-26 12:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

DROP TABLE IF EXISTS `supplier_payments`;
CREATE TABLE IF NOT EXISTS `supplier_payments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint NOT NULL,
  `amount` bigint NOT NULL,
  `method` bigint NOT NULL,
  `tnxid` bigint NOT NULL,
  `creator` bigint NOT NULL,
  `status` bigint NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_types`
--

DROP TABLE IF EXISTS `supplier_types`;
CREATE TABLE IF NOT EXISTS `supplier_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_types`
--

INSERT INTO `supplier_types` (`id`, `name`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Distributor', 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'Whole Seller', 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'Broker', 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_id` bigint NOT NULL DEFAULT '0',
  `rating` int NOT NULL DEFAULT '2',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `creator` tinyint(1) NOT NULL DEFAULT '1',
  `updater` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `description`, `upload_id`, `rating`, `status`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(2, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29'),
(3, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

DROP TABLE IF EXISTS `threads`;
CREATE TABLE IF NOT EXISTS `threads` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '1' COMMENT '1 single, 2 group',
  `status` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transection_information`
--

DROP TABLE IF EXISTS `transection_information`;
CREATE TABLE IF NOT EXISTS `transection_information` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_method_id` int NOT NULL,
  `user_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mer_txnid` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `by_method` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tnx_id_by_user` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_amount` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_charge` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_charge` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_response` text COLLATE utf8mb4_unicode_ci,
  `secret` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PayerID` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` int NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `updater_id` bigint DEFAULT NULL,
  `creator` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(2, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(3, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(4, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(5, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(6, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(7, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(8, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(9, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(10, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(11, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(12, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(13, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(14, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(15, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(16, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(17, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(18, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(19, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(20, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(21, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(22, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(23, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(24, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(25, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(26, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(27, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(28, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(29, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(30, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(31, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(32, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(33, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(34, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(35, 'setting.sidebar.list', 1, 'System Settings', 'setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(36, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(37, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(38, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(39, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(40, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(41, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(42, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(43, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(44, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(45, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(46, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(47, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(48, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(49, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(50, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(51, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(52, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(53, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(54, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(55, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(56, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(57, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(58, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(59, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(60, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(61, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(62, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(63, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(64, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(65, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(66, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(67, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(68, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(69, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(70, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(71, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(72, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(73, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(74, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(75, 'main-setting.app_address', 1, 'App Address', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(76, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(77, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(78, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(79, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(80, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(81, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(82, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(83, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(84, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(85, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(86, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(87, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(88, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(89, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(90, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(91, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(92, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(93, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(94, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(95, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(96, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(97, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(98, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(99, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(100, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(101, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(102, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(103, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(104, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(105, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(106, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(107, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(108, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(109, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(110, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(111, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(112, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(113, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(114, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(115, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(116, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(117, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(118, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(119, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(120, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(121, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(122, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(123, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(124, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(125, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(126, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(127, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(128, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(129, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(130, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(131, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(132, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(133, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(134, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(135, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(136, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(137, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(138, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(139, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(140, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(141, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(142, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(143, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(144, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(145, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(146, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(147, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(148, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(149, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(150, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(151, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(152, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(153, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(154, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(155, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(156, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(157, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(158, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(159, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(160, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(161, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(162, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(163, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(164, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(165, 'header_style.show_filter_offer_product_status', 1, 'Filter Offer Product Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(166, 'header_style.show_filter_feature_product_status', 1, 'Filter Feature Product Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(167, 'header_style.show_filter_by_rating_status', 1, 'Filter Rating Product Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(168, 'header_style.show_filter_by_brand_status', 1, 'Filter Brand Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(169, 'header_style.show_filter_by_price_status', 1, 'Filter Price Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(170, 'header_style.show_filter_by_category_status', 1, 'Filter Category Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(171, 'header_style.header_style_button_box_status', 1, 'Navbar Button Box Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(172, 'header_style.category_wise_filter_status', 1, 'Header Category Wise Filter Status', 'header_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(173, 'sidebar.Footer_Style', 1, 'Footer Status', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(174, 'sidebar.Header_Style', 1, 'Header Status', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(175, 'sidebar.variant_part_status', 1, 'Variant Part Status', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(176, 'variant_part_status.contact_style1_map_status', 1, 'Contact form maps Status', 'variant_part_status', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(177, 'frontend.follow_us', 1, 'Contact form maps Status', 'frontend', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(178, 'footer_style.footer_payment_method_image', 1, 'Footer Style 2 Payment Method Image', 'footer_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(179, 'footer_style.footer_style1_status', 1, 'Footer Style 1 Status', 'footer_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(180, 'footer_style.footer_style2_status', 1, 'Footer Style 2 Status', 'footer_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(181, 'footer_style.footer_payment_method_status', 1, 'Footer style 2 payment method image Status', 'footer_style', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(182, 'settings.footer_style', 1, 'Footer style Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(183, 'settings.header_style', 1, 'Header style Settings', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(184, 'settings.variant_part_status', 1, 'Variant Part Status', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(185, 'takto-messageing-management.livechatinc_chat_status', 1, 'Livechatinc Chat  Status', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(186, 'takto-messageing-management.livechatinc_chat_id', 1, 'Livechatinc Chat  id', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(187, 'takto-messageing-management.intercom_chat_status', 1, 'Intercom Chat  Status', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(188, 'takto-messageing-management.intercom_chat_id', 1, 'Intercom Chat  id', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(189, 'takto-messageing-management.tidio_chat_status', 1, 'Tidio Chat  status', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(190, 'takto-messageing-management.tidio_chat_public_key', 1, 'Tidio Chat  public key', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(191, 'takto-messageing-management.chat_status', 1, ' Chat  Status', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(192, 'takto-messageing-management.tiledesk_chat_id', 1, 'Tidedesk chat id', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(193, 'takto-messageing-management.tiledesk_chat_status', 1, 'Tidedesk chat status', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(194, 'sidebar.maintanance', 1, 'Maintenance Mode', 'sidebar', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(195, 'tracking_report.bd_courier_tracking_id', 1, 'Courier Tracking Id', 'tracking_report', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(196, 'tracking_report.bd_courier_tracking_status', 1, 'Courier Tracking  Status', 'tracking_report', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(197, 'frontend.order_success', 1, 'Success', 'frontend', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(198, 'order.success_text', 1, 'Successfully Received your Order. Keep With Us.', 'order', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(199, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(200, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(201, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(202, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(203, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(204, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(205, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(206, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(207, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(208, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(209, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(210, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(211, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(212, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(213, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-02-25 13:50:40', '2025-02-25 13:50:40'),
(214, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(215, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(216, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(217, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(218, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(219, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(220, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(221, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(222, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(223, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(224, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(225, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(226, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(227, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(228, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(229, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(230, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(231, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(232, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(233, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(234, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(235, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(236, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(237, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(238, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(239, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(240, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(241, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(242, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(243, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(244, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(245, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(246, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(247, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(248, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(249, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(250, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(251, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(252, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(253, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(254, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(255, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(256, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(257, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(258, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(259, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(260, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(261, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(262, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(263, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(264, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(265, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(266, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(267, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(268, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(269, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(270, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(271, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(272, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(273, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(274, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(275, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(276, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(277, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(278, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(279, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(280, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(281, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(282, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(283, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(284, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(285, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(286, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(287, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(288, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(289, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(290, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(291, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(292, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(293, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(294, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(295, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(296, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(297, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(298, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(299, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(300, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(301, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(302, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(303, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(304, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(305, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(306, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(307, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(308, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(309, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(310, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(311, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(312, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(313, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(314, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(315, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(316, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(317, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(318, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(319, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(320, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(321, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(322, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(323, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(324, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(325, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(326, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(327, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(328, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(329, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(330, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(331, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(332, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(333, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(334, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(335, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(336, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(337, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(338, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(339, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(340, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(341, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(342, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(343, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(344, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(345, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(346, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(347, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(348, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(349, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(350, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(351, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(352, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(353, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(354, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(355, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(356, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(357, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(358, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-02-25 13:50:41', '2025-02-25 13:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sub_items_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sub_items` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `sort_name`, `decimal`, `sub_items_id`, `sub_items`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'PCS', NULL, '0', '0', '0', '1', '2025-02-26 12:45:08', '2025-02-26 12:45:08'),
(2, 'PCS', NULL, '0', '0', '0', '1', '2025-02-26 12:45:25', '2025-02-26 12:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `branch_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `joining_date` date DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sales_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `birth` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_mobile_number` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_mobile_number` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_tax_payer_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `marital_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sales_commission_present` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcm_token` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `prefix`, `name`, `father`, `mother`, `username`, `designation`, `religion`, `slug`, `nationality`, `nid`, `salary`, `branch_id`, `joining_date`, `exit_date`, `upload_id`, `status`, `sales_status`, `birth`, `blood_group`, `mobile_number`, `alt_mobile_number`, `family_mobile_number`, `account_tax_payer_id`, `gender`, `marital_status`, `sales_commission_present`, `email`, `email_verified_at`, `password`, `fcm_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin', NULL, NULL, 'superadmin', NULL, NULL, 'super-admin', NULL, NULL, '0', '1', NULL, NULL, '0', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', 'admin@gmail.com', '2025-02-25 13:50:31', '$2y$12$/pW7eGwJ7Rv5g/.plbupyureI5blJV3xPLKVi5nbQMG4rMMbudpum', NULL, 'sT5iXlPPNQn8w6eQbjTkhr5WHHs7BoR6QZBVJmx1q2vz1ofjNSNjOcRkVcP5', '2025-02-25 13:50:31', '2025-02-25 13:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `variant_options`
--

DROP TABLE IF EXISTS `variant_options`;
CREATE TABLE IF NOT EXISTS `variant_options` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_0` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_1` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_2` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_3` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_4` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_5` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_6` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_7` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_8` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_9` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_10` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_11` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_12` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_13` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_14` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_15` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_16` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_17` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_18` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_key_value_19` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_price` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `selling_price` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `alert_quantity` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `quantity` bigint NOT NULL DEFAULT '0',
  `creator` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `varinat_suggessions`
--

DROP TABLE IF EXISTS `varinat_suggessions`;
CREATE TABLE IF NOT EXISTS `varinat_suggessions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `title_manage_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sub_title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sub_title_manage_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `short_read_more` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Read More',
  `short_read_more_page_url` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_read_more_status` tinyint(1) NOT NULL DEFAULT '1',
  `short_read_more_manage_status` tinyint(1) NOT NULL DEFAULT '1',
  `view_all` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'See All',
  `view_all_page_url` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_all_status` tinyint(1) NOT NULL DEFAULT '1',
  `view_all_manage_status` tinyint(1) NOT NULL DEFAULT '1',
  `items_per_row` int NOT NULL DEFAULT '3',
  `items_per_row_status` int NOT NULL DEFAULT '0',
  `items_show` int NOT NULL DEFAULT '4',
  `items_manage_status` int NOT NULL DEFAULT '0',
  `is_details_page` int NOT NULL DEFAULT '0',
  `is_details_page_manage_status` int NOT NULL DEFAULT '0',
  `background` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `background_color` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#eeeeee',
  `background_type` tinyint(1) NOT NULL DEFAULT '1',
  `background_manage_status` int NOT NULL DEFAULT '0',
  `category_manage_status` int NOT NULL DEFAULT '0',
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id1` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id2` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_manage_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id3` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_manage_id3_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '1',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `updater` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `permission` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varinat_suggessions`
--

INSERT INTO `varinat_suggessions` (`id`, `key`, `title`, `title_status`, `title_manage_status`, `sub_title`, `sub_title_status`, `sub_title_manage_status`, `short_read_more`, `short_read_more_page_url`, `short_read_more_status`, `short_read_more_manage_status`, `view_all`, `view_all_page_url`, `view_all_status`, `view_all_manage_status`, `items_per_row`, `items_per_row_status`, `items_show`, `items_manage_status`, `is_details_page`, `is_details_page_manage_status`, `background`, `background_color`, `background_type`, `background_manage_status`, `category_manage_status`, `upload_id`, `upload_id_status`, `upload_id1`, `upload_id2`, `upload_manage_status`, `upload_id3`, `upload_manage_id3_status`, `order`, `status`, `creator`, `updater`, `permission`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '_brand_variant._brand_style1', 'Brand Style 1', '0', '1', 'Brand Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/brand_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(2, '_brand_variant._brand_style2', 'Brand Style 2', '0', '1', 'Brand Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/brand_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(3, '_contact_variant._contact_style1', 'Contact Style 1', '0', '1', 'Contact Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 0, 0, 20, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/contact_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(4, '_category_variant._category_style1', 'Category Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/category_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(5, '_category_variant._category_style2', 'Category Style 2', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/category_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(6, '_category_variant._category_style3', 'Category Style 3', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/category_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(7, '_category_variant._category_style4', 'Category Style 4', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/category_style4.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(8, '_category_variant._category_style5', 'Category Style 5', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/category_style5.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(9, '_category_variant._category_style6', 'Category Style 6', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 3, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/category_style6.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(10, '_hero_variant._hero_style1', 'Hero Style 1', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/hero_style1.png', '0', '0', '0', '0', '0', '1', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(11, '_hero_variant._hero_style2', 'Hero Style 2', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/hero_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(12, '_hero_variant._hero_style3', 'Hero Style 3', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/hero_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(13, '_hero_variant._hero_slider1', 'Hero Slider', '0', '1', 'Hero Slider', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 1, 0, 0, '1', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/hero_slider1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(14, '_product_variant._feature_product', 'Feature Product  Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 4, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'uploads/preset/page_variant/feature_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(15, '_product_variant._popular_product', 'Popular Product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'uploads/preset/page_variant/popular_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(16, '_product_variant._recommended_product', 'Recommended Product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'uploads/preset/page_variant/recommended_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(17, '_product_variant._recent_product', 'Recent product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'uploads/preset/page_variant/resent_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(18, '_product_variant._category_wise_product', 'Product as Category & category Wise Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 1, 1, 'uploads/preset/page_variant/category_wise_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(19, '_product_variant._randomize_product_category_wise', 'Product as Category & Random Wise Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 1, 1, 0, 'uploads/preset/page_variant/_randomize_product_category_wise.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(20, '_filter_variant.partials1.recent_product', 'Recent Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/recent_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(21, '_product_variant._category_wise_product1', 'Recent Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'uploads/preset/page_variant/_category_wise_product1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(22, '_product_cat_brand_wise._cat_band_wise_product', 'Category Brand', '0', '1', 'Category Wise Product ', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/_cat_band_wise_product_lg.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(23, '_product_cat_brand_wise._cat_product_sm', 'Category Wise Product Small', '0', '1', 'Category Wise Product ', '0', '1', '#', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'uploads/preset/page_variant/_cat_band_wise_product_sm.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(24, '_service_variant._service_style1', 'Service Style 1', '1', '1', 'Service Sub Title', '1', '1', 'Read More', '#', 1, 1, 'View All', '#', 1, 1, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(25, '_service_variant._service_style2', 'Service Style 2', '1', '1', 'Service Sub Title', '1', '1', 'Read More', '#', 1, 1, 'View All', '#', 1, 1, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(26, '_service_view_variant._service_view1', 'Service View 1', '1', '1', 'Service Sub Title', '1', '1', 'Read More', '#', 1, 1, 'View All', '#', 1, 1, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(27, '_banner_card._bannar_card1', 'Banner Card 1', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(28, '_banner_card._bannar_card2', 'Banner Card 2', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(29, '_about_us_variant.about_us_style1', 'About page 1', '0', '1', 'About Us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(30, '_product_details.product_details1', 'Product Details page 1', '0', '1', 'Product Details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(31, '_filter_variant.filter_vaiant1', 'Product Filter  1', '1', '0', 'Product Filter Title', '1', '0', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 1, 0, 0, '0', '#eeeeee', 1, 1, 0, 'uploads/preset/page_variant/category_style6.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(32, '_cart_variant.cart_style1', 'Product Filter  1', '0', '1', 'Product Filter Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(33, '_wishlist_variant.wish_list_style1', 'Product wishlist  1', '0', '1', 'Product wishlist Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(34, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', '1', 'Product checkout Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(35, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', '1', 'Product tracking Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(36, '_contact_us_variant.contact_us_style1', 'Contact us  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(37, '_register_variant.register_style1', 'Register us  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(38, '_404_variant.404_style1', '404 page  1', '0', '1', 'Something went wrong', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'uploads/preset/page_variant/404_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(39, '_comming_soon.comming_soon1', 'Comming soon  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(40, '_blog_variant.blog_variant1', 'blog  1', '0', '1', 'blog Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(41, '_blog_details_variant.blog_details_variant1', 'Blog Details  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(42, '_faq_variant._faq_style1', 'Faq style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(43, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(44, '_profile._location.variant_1', 'profile location style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(45, '_profile._cart.variant_1', 'Profile cart style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(46, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(47, '_variant_manage.page_title', 'Page Title style  1', '1', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, 'uploads/preset/page_variant/page_title1.png', '1', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(48, '_variant_manage.page_title1', 'Page Title style  2', '1', '1', 'Page Title subtitle 2', '0', '0', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'uploads/preset/page_variant/page_title2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(49, '_profile._payment_information.variant_1', 'Payment Page 1', '0', '1', 'Payment Page 1', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(50, '_profile._checkout.variant_1', 'Checkout Page 1', '0', '1', 'Checkout Page 1', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(51, '_order._order_form1', 'Costom Form Bluk Order', '0', '1', 'Costom Form Bluk Order Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/custom_form_bluk_order_form1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'custom_order bulk read', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(52, '_order._order_form2', 'Custom Order', '0', '1', 'Custom Order Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/custom_order_form2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'custom_order custom read', NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(53, '_authenticate_form._login', 'Login', '0', '1', 'Login Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/custom_order_form2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(54, '_authenticate_form._registration', 'Register', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/register.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41'),
(55, '_order_success.success_style1', 'Success Page', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'uploads/preset/page_variant/_order_success_success_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-02-25 13:50:41', '2025-02-25 13:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `vats`
--

DROP TABLE IF EXISTS `vats`;
CREATE TABLE IF NOT EXISTS `vats` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 means include  1 means exclude',
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `amount` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vats`
--

INSERT INTO `vats` (`id`, `name`, `type`, `status`, `amount`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Include Vat', '0', '1', '0', '1', '2025-02-25 13:50:29', '2025-02-25 13:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE IF NOT EXISTS `visitors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visitors_ip_address_visit_date_unique` (`ip_address`,`visit_date`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `user_agent`, `browser`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', '2025-02-26', '2025-02-26 05:03:52', '2025-02-26 05:03:52'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', '2025-02-27', '2025-02-27 04:11:36', '2025-02-27 04:11:36'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', '2025-03-01', '2025-03-01 04:18:29', '2025-03-01 04:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `whole_sale_orders`
--

DROP TABLE IF EXISTS `whole_sale_orders`;
CREATE TABLE IF NOT EXISTS `whole_sale_orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `quantity` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whole_sale_product_types`
--

DROP TABLE IF EXISTS `whole_sale_product_types`;
CREATE TABLE IF NOT EXISTS `whole_sale_product_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
