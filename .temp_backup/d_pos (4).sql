-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 04, 2025 at 11:20 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `email`, `phone`, `address`, `address_optional`, `district`, `stay_time`, `country`, `state`, `postal`, `creator`, `updater`, `addressable_type`, `addressable_id`, `created_at`, `updated_at`) VALUES
(1, 'Derek Hardy', 'nipofykuf@mailinator.com', '+1 (273) 842-9426', 'Ipsa dolor quos ali', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:10:47', '2025-03-04 07:10:47'),
(5, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:07', '2025-03-04 07:49:07'),
(6, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:08', '2025-03-04 07:49:08'),
(7, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:08', '2025-03-04 07:49:08'),
(8, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:08', '2025-03-04 07:49:08'),
(9, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:09', '2025-03-04 07:49:09'),
(10, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:09', '2025-03-04 07:49:09'),
(11, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:19', '2025-03-04 07:49:19'),
(12, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:24', '2025-03-04 07:49:24'),
(13, ' ', '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 2, '2025-03-04 07:49:27', '2025-03-04 07:49:27'),
(14, 'Hanae Morrow', 'malubyqula@mailinator.com', '+1 (228) 958-1862', 'Consequatur volupta', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 3, '2025-03-04 09:47:53', '2025-03-04 09:47:53'),
(15, 'Cameron Baxter', 'ruxi@mailinator.com', '+1 (524) 675-1288', 'Ut quam vero dolor s', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 4, '2025-03-04 10:15:33', '2025-03-04 10:15:33');

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
(1, 'bangladesh', 'bangladesh', 0, 1, '1', '0', NULL, '2025-03-04 07:23:29', '2025-03-04 07:23:29');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `location`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-03-02 09:18:54', '2025-03-02 09:18:54'),
(2, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-03-04 06:17:50', '2025-03-04 06:17:50'),
(3, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(4, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(5, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
(1, 1, 'Apple', 'apple', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 1, 'Bata', 'bata', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 1, 'Lotto', 'lotto', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 1, 'Easy', 'easy', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(5, 1, 'Pran', 'pran', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(6, 1, 'RFL', 'rfl', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(7, 1, 'Easy', 'easy-1', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(8, 1, 'Magna', 'magna', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(9, 1, 'Padma', 'padma', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(10, 1, 'Duronto', 'duronto', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(11, 1, 'Sumsung', 'sumsung', 1, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_color` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 'T Shirt', 't-shirt', 0, NULL, '1', NULL, NULL, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 1, 'Shoes', 'shoes', 0, NULL, '1', NULL, NULL, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 1, 'Pant', 'pant', 0, NULL, '1', NULL, NULL, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 1, 'Sheree', 'sheree', 0, NULL, '1', NULL, NULL, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(5, 1, 'Underwire', 'underwire', 0, NULL, '1', NULL, NULL, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
(1, '_compare_style.compare_style1', 'Header Style', 'preset/compare_variant/compare_style1.png', 1, '#ffffff', '\n                   Compare Style 1\n                ', '2025-03-02 09:19:08', '2025-03-02 09:19:08');

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
(1, NULL, 'Walk In Delivery', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(2, NULL, 'EasyPost', NULL, NULL, NULL, NULL, NULL, 'shippo_test_2cb6d0c8057930440e8b510e19434d982c1ce48d', '1', '1', 1, 1, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(3, NULL, 'SteadFast', 'g94vnmgpdvehmsp8vrhgkyrv', 'jwqjaywbmswqrwymm0bdvnwvrr6annc4 ', NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(4, NULL, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-03-02 09:19:08', '2025-03-02 09:19:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `shop_name`, `shop_phone`, `shop_address`, `type`, `user_id`, `creator`, `location`, `account_holder`, `account_number`, `note`, `bank_name`, `credit_limit`, `prev_due`, `area`, `password`, `v_code`, `v_status`, `bank_branch`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@gmail.com', '015*******', NULL, NULL, NULL, NULL, NULL, '1', 'Dhaka Bangladesh', 'MD SAZZAD', '01590084779', NULL, 'bKash', NULL, NULL, NULL, '$2y$12$39HnHG/4B/tZd/2EBsESsuEfcOCfnZ6dhXCXS87NyyT6h4XRqLuSi', NULL, 0, 'Bangladesh', '0', '2025-03-02 09:18:54', '2025-03-02 09:18:54'),
(2, 'Derek Hardy', 'nipofykuf@mailinator.com', '01590084779', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, 20000, 0, 1, '$2y$12$Jdez7TMtnSki70m3jzN4UuJNpNsoX9k256pKO.UFZh9nnMn3h.DxG', NULL, 0, NULL, '0', '2025-03-04 07:10:47', '2025-03-04 07:23:39'),
(3, 'Hanae Morrow', 'malubyqula@mailinator.com', '+1 (228) 958-1862', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$4viyUIb2O7nyNomZjBLKcO./j5vRz9jHIz4gRB2LFvgCF4kSK3x6u', NULL, 0, NULL, '0', '2025-03-04 09:47:52', '2025-03-04 09:47:52'),
(4, 'Cameron Baxter', 'ruxi@mailinator.com', '+1 (524) 675-1288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$s9yYQFaXb1npjgpLVRlG1ug6AnVkr.9NNq49jDK/tUN1udjThOusO', '9859', 0, NULL, '0', '2025-03-04 10:15:33', '2025-03-04 11:00:33');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_type`, `ip`, `logout`, `suspend_date`, `data`, `creator`, `updater_id`, `user_agent`, `payload`, `last_activity`, `deleted_at`, `notification_data`, `created_at`, `updated_at`) VALUES
(1, 'Windows \"Not(A:Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python313\\\\Scripts\\\\;C:\\\\Python313\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;D:\\\\wamp64\\\\bin\\\\php\\\\php8.3.14;C:\\\\composer;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"APP_ENV\": \"local\", \"APP_KEY\": \"base64:gL/AanXMDo0GNDHhAKpX5xOp0RzBBvT3c0T4Iggz7CY=\", \"APP_URL\": \"/\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"DB_HOST\": \"127.0.0.1\", \"DB_PORT\": \"3306\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"APP_NAME\": \"SunnahStyle\", \"PHP_SELF\": \"/public/index.php\", \"APP_DEBUG\": \"true\", \"HTTP_HOST\": \"pos.localhost\", \"LOG_LEVEL\": \"debug\", \"MAIL_HOST\": \"mailpit\", \"MAIL_PORT\": \"1025\", \"AWS_BUCKET\": \"\", \"REDIS_HOST\": \"127.0.0.1\", \"REDIS_PORT\": \"6379\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"DB_DATABASE\": \"d_pos\", \"DB_PASSWORD\": \"\", \"DB_USERNAME\": \"root\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"userNA45647854564785=OTY%3D; laravel_cookie_consent=http://pos.localhost; XSRF-TOKEN=eyJpdiI6IkhxRHFubzUvUkFrRzlKTHgwL2xBNVE9PSIsInZhbHVlIjoiY3hqbSticnd2YTEyN0M3VStTTjFmSnIvZkdVUGs4eStmM2JxUStaQ0ZacGovZjMrOU42Tkpua3c2bmwvcldjSVVNSlBaM3lTa3JuRUhWVlljWWZrTzlYUStwRjRpaE80eHNlanMwWjk3aXNZeldReHRuMDBaWDRrb08rTWl3bXMiLCJtYWMiOiI1MzExOTg2NjFiYzNkN2I4YjJiODAxMzUzMGQzNzllOTg0MGIyMTBiMmJiOTJlYmYxNmRjYzJjYTU3YzhmYjc3IiwidGFnIjoiIn0%3D; sunnahstyle_session=eyJpdiI6IjdqMlZiN3NoVHNGOStIemtrc3ByNmc9PSIsInZhbHVlIjoiYW5GakhHakJvcG9SL0VudmtUeEc1VnN4KzJLUTFRakVWdG1oQmNPanJLc2dHejdGV0RRZkI3cnBuenREcm9PZXJwdEVpbEJ5TE1NTWN3L0NjYW9RWGxNNlBLQXpLemRNUWdFR2JpajV3RUljaDFYYVNGZnE0Y0todU82N2lrcDgiLCJtYWMiOiIxMjAwZjY4YWE4NzU5ZTJmMDIwZGZlMzcyYzE2MDNkMzU2MzliZWQzZTFjZWE1OTQzYzdjNWRlZTlkNTEyMDMwIiwidGFnIjoiIn0%3D\", \"LOG_CHANNEL\": \"stack\", \"MAIL_MAILER\": \"smtp\", \"PUSHER_HOST\": \"\", \"PUSHER_PORT\": \"443\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"62988\", \"REQUEST_URI\": \"/device_access_check\", \"SCRIPT_NAME\": \"/public/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"pos.localhost\", \"SERVER_PORT\": \"80\", \"CACHE_DRIVER\": \"file\", \"HTTP_REFERER\": \"http://pos.localhost/admin/header-style\", \"QUERY_STRING\": \"/device_access_check\", \"REDIRECT_URL\": \"/public/device_access_check\", \"REQUEST_TIME\": 1740907203, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DB_CONNECTION\": \"mysql\", \"DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"MAIL_PASSWORD\": \"null\", \"MAIL_USERNAME\": \"null\", \"PUSHER_APP_ID\": \"\", \"PUSHER_SCHEME\": \"https\", \"VITE_APP_NAME\": \"SunnahStyle\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"MAIL_FROM_NAME\": \"SunnahStyle\", \"MEMCACHED_HOST\": \"127.0.0.1\", \"PUSHER_APP_KEY\": \"\", \"REDIS_PASSWORD\": \"null\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"SESSION_DRIVER\": \"file\", \"APP_MAINTANANCE\": \"false\", \"FILESYSTEM_DISK\": \"local\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"MAIL_ENCRYPTION\": \"null\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/public/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev\", \"BROADCAST_DRIVER\": \"log\", \"GOOGLE_CLIENT_ID\": \"7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com\", \"QUEUE_CONNECTION\": \"sync\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev Server at pos.localhost Port 80</address>\\n\", \"SESSION_LIFETIME\": \"120\", \"VITE_PUSHER_HOST\": \"\", \"VITE_PUSHER_PORT\": \"443\", \"AWS_ACCESS_KEY_ID\": \"\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"MAIL_FROM_ADDRESS\": \"hello@example.com\", \"PUSHER_APP_SECRET\": \"\", \"AWS_DEFAULT_REGION\": \"us-east-1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"PUSHER_APP_CLUSTER\": \"mt1\", \"RECAPTCHA_SITE_KEY\": \"6LeGitMqAAAAAAGqbFGX3gpRnLDlWTG6nwH_sJJp\", \"REQUEST_TIME_FLOAT\": 1740907203.615475, \"VITE_PUSHER_SCHEME\": \"https\", \"GOOGLE_REDIRECT_URL\": \"http://localhost\", \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"VITE_PUSHER_APP_KEY\": \"\", \"APP_MAINTENANCE_TIME\": \"2025-02-08T15:57\", \"GOOGLE_CLIENT_SECRET\": \"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\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"RECAPTCHA_SECRET_KEY\": \"6LeGitMqAAAAAJLqOdU8wEtbE98lLywBBs5JdLrh\", \"AWS_SECRET_ACCESS_KEY\": \"\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"REDIRECT_QUERY_STRING\": \"/device_access_check\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"VITE_PUSHER_APP_CLUSTER\": \"mt1\", \"LOG_DEPRECATIONS_CHANNEL\": \"null\", \"REDIRECT_REDIRECT_STATUS\": \"200\", \"APP_MAINTENANCE_TIME_FROM\": \"2025-02-08T15:54\", \"AWS_USE_PATH_STYLE_ENDPOINT\": \"false\"}', 1, 1, NULL, NULL, 1740908461, NULL, '', '2025-03-02 09:20:03', '2025-03-02 09:41:01'),
(2, 'Windows \"Not(A:Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python313\\\\Scripts\\\\;C:\\\\Python313\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;D:\\\\wamp64\\\\bin\\\\php\\\\php8.3.14;C:\\\\composer;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"APP_ENV\": \"local\", \"APP_KEY\": \"base64:gL/AanXMDo0GNDHhAKpX5xOp0RzBBvT3c0T4Iggz7CY=\", \"APP_URL\": \"/\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"DB_PORT\": \"3306\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"APP_NAME\": \"SunnahStyle\", \"PHP_SELF\": \"/public/index.php\", \"APP_DEBUG\": \"true\", \"HTTP_HOST\": \"pos.localhost\", \"LOG_LEVEL\": \"debug\", \"MAIL_HOST\": \"mailpit\", \"MAIL_PORT\": \"1025\", \"AWS_BUCKET\": \"\", \"REDIS_PORT\": \"6379\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"DB_DATABASE\": \"d_pos\", \"DB_PASSWORD\": \"\", \"DB_USERNAME\": \"root\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"laravel_cookie_consent=http://pos.localhost; XSRF-TOKEN=eyJpdiI6InRZUG5XUERiaWZUc1k4ZUdGMWw2YUE9PSIsInZhbHVlIjoicHBRODAydm5iWWoxUHB0NXVrNSttcVpOczZBcVBUMTVlMnZRN1BHK1ZxZC8rc1ZZK25sRTJhWWdTWmUvMytNcXFwaFFuQ1pLRDV5dFkwTUJtbXZ6NnJ5VERVQVZoTWZpVEFUamZCdGRndGF6YjNpcjZyeWxHUUl5ejRFMmNicnkiLCJtYWMiOiI0ZDBmNWIyY2NjYzAwMzdmZTE4MzI2NjI4NzcwZmRhNjM2OTg3MDAwOTNlNjU2M2ViZmQ2MmExZGIwYmY0ZTY5IiwidGFnIjoiIn0%3D; sunnahstyle_session=eyJpdiI6Ijk0OXpRYnd5TUdxWWJWRU1nVmQzNUE9PSIsInZhbHVlIjoieEppU0dmdkFTZ3BBekJIMWs1YTExdGpZSkU5cUxsQXlYd3lYZGxaQ1dtdWtWRFd0eXV1RVlLRmdWbXVaZ0p3SkhBSDhabDlKNTFibG94UnhkZ1RXSEgwYUh6Q1R4SHVtNlNWQVBId2dKMkFwZDUxZWxkRTg1TTZ5TXdMV1AwY1EiLCJtYWMiOiI2NWNlNGNjMjU2ODJiOWMyN2MyZmUwMzc3ZGU0YmEyOGM3NWQzMDY1OGI1ODNiZmYxYjM5NzFmZTVhOTQ1ZWUyIiwidGFnIjoiIn0%3D\", \"LOG_CHANNEL\": \"stack\", \"MAIL_MAILER\": \"smtp\", \"PUSHER_HOST\": \"\", \"PUSHER_PORT\": \"443\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"59522\", \"REQUEST_URI\": \"/device_access_check\", \"SCRIPT_NAME\": \"/public/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"pos.localhost\", \"SERVER_PORT\": \"80\", \"CACHE_DRIVER\": \"file\", \"HTTP_REFERER\": \"http://pos.localhost/admin?%2Fadmin=\", \"QUERY_STRING\": \"/device_access_check\", \"REDIRECT_URL\": \"/public/device_access_check\", \"REQUEST_TIME\": 1740975119, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"MAIL_PASSWORD\": \"null\", \"MAIL_USERNAME\": \"null\", \"PUSHER_APP_ID\": \"\", \"PUSHER_SCHEME\": \"https\", \"VITE_APP_NAME\": \"SunnahStyle\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"MAIL_FROM_NAME\": \"SunnahStyle\", \"MEMCACHED_HOST\": \"127.0.0.1\", \"PUSHER_APP_KEY\": \"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"APP_MAINTANANCE\": \"false\", \"FILESYSTEM_DISK\": \"local\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"MAIL_ENCRYPTION\": \"null\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/public/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev\", \"BROADCAST_DRIVER\": \"log\", \"GOOGLE_CLIENT_ID\": \"7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev Server at pos.localhost Port 80</address>\\n\", \"SESSION_LIFETIME\": \"120\", \"VITE_PUSHER_HOST\": \"\", \"VITE_PUSHER_PORT\": \"443\", \"AWS_ACCESS_KEY_ID\": \"\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"MAIL_FROM_ADDRESS\": \"hello@example.com\", \"PUSHER_APP_SECRET\": \"\", \"AWS_DEFAULT_REGION\": \"us-east-1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"PUSHER_APP_CLUSTER\": \"mt1\", \"RECAPTCHA_SITE_KEY\": \"6LeGitMqAAAAAAGqbFGX3gpRnLDlWTG6nwH_sJJp\", \"REQUEST_TIME_FLOAT\": 1740975119.602269, \"VITE_PUSHER_SCHEME\": \"https\", \"GOOGLE_REDIRECT_URL\": \"http://localhost\", \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"VITE_PUSHER_APP_KEY\": \"\", \"APP_MAINTENANCE_TIME\": \"2025-02-08T15:57\", \"GOOGLE_CLIENT_SECRET\": \"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\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"RECAPTCHA_SECRET_KEY\": \"6LeGitMqAAAAAJLqOdU8wEtbE98lLywBBs5JdLrh\", \"AWS_SECRET_ACCESS_KEY\": \"\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"REDIRECT_QUERY_STRING\": \"/device_access_check\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"VITE_PUSHER_APP_CLUSTER\": \"mt1\", \"LOG_DEPRECATIONS_CHANNEL\": \"null\", \"REDIRECT_REDIRECT_STATUS\": \"200\", \"APP_MAINTENANCE_TIME_FROM\": \"2025-02-08T15:54\"}', 1, 1, NULL, NULL, 1741000154, NULL, '', '2025-03-03 04:11:59', '2025-03-03 11:09:14'),
(3, 'Windows \"Not(A:Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python313\\\\Scripts\\\\;C:\\\\Python313\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;D:\\\\wamp64\\\\bin\\\\php\\\\php8.3.14;C:\\\\composer;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/public/index.php\", \"HTTP_HOST\": \"pos.localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"laravel_cookie_consent=http://pos.localhost; XSRF-TOKEN=eyJpdiI6Ii8yd1JzckViWmxJbjNqRzQ2ZWdkWGc9PSIsInZhbHVlIjoiVjBtaEdYUncvUjVYQ25zYTJMMlZnTkJpVUp2VTJuRXZXN3dORUFRZ2Z0M1orUjlaNkk5UnU0R2cxa25rQm11SEVxR0NVc2EvU1puS3prSGttVXZ3M0kzaldMLzRJYnlwOVlJM0JpaUZSMHdaYnBqUk5pbW9xOHlKUHgwN3VJaXAiLCJtYWMiOiI5ZTM3NTI3Njk3MTU1MjM1ZGFmMzhjYjA4NjlmNDliNmE1YzIzMjZhMDcxNmU4MzM0M2M2YjVjNDQ3NWZhNTJmIiwidGFnIjoiIn0%3D; sunnahstyle_session=eyJpdiI6ImJEUjU5NXZDcWUwUnZ4NTB3ckJ0VHc9PSIsInZhbHVlIjoiWjVyWlQ5bWw5WlMyK21rT1JzbjlxTGN4M1JwT0dXZXRIWElBQkRIcHB5VFhuUjA4QzFzYXhRcXlHZnFiTEhkZ0ZZNi9uWXBTTk1CK3UrclZlYjI1bmNIQmxIcmlhbkExMEtxUkNlV3kycGQ0UmVwL3FYR0NqSThkYmR6UFNhc3giLCJtYWMiOiJkM2MyN2I3NTRhMDU2OWMwNDBhZTVlYzIzYTNmNzU4ZmNiZmQwZTc0NmYwN2I2YjM2OWQ1OGQyMWIxZWY2MDk3IiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"49948\", \"REQUEST_URI\": \"/device_access_check\", \"SCRIPT_NAME\": \"/public/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"pos.localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://pos.localhost/admin?%2Fadmin=\", \"QUERY_STRING\": \"/device_access_check\", \"REDIRECT_URL\": \"/public/device_access_check\", \"REQUEST_TIME\": 1741063158, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/public/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.62 (Win64) PHP/8.2.26 mod_fcgid/2.3.10-dev Server at pos.localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1741063158.931377, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www/pos/\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"REDIRECT_QUERY_STRING\": \"/device_access_check\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"REDIRECT_REDIRECT_STATUS\": \"200\"}', 1, 1, NULL, NULL, 1741087162, NULL, '', '2025-03-04 04:39:19', '2025-03-04 11:19:22'),
(4, 'Windows \"Not(A:Brand\"', '127.0.0.1', 0, NULL, '{\"APP_KEY\": \"base64:gL/AanXMDo0GNDHhAKpX5xOp0RzBBvT3c0T4Iggz7CY=\", \"APP_URL\": \"/\", \"DB_HOST\": \"127.0.0.1\", \"DB_PORT\": \"3306\", \"APP_NAME\": \"SunnahStyle\", \"PHP_SELF\": \"/index.php/device_access_check\", \"APP_DEBUG\": \"true\", \"HTTP_HOST\": \"127.0.0.1:8000\", \"LOG_LEVEL\": \"debug\", \"MAIL_HOST\": \"mailpit\", \"MAIL_PORT\": \"1025\", \"PATH_INFO\": \"/device_access_check\", \"AWS_BUCKET\": \"\", \"REDIS_HOST\": \"127.0.0.1\", \"REDIS_PORT\": \"6379\", \"DB_DATABASE\": \"d_pos\", \"DB_PASSWORD\": \"\", \"DB_USERNAME\": \"root\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"_ga=GA1.1.1287333414.1740644792; _ga_RGPN7GM6YG=GS1.1.1740995396.6.0.1740995396.0.0.0; XSRF-TOKEN=eyJpdiI6IjZLY3JSWmpuTnptc0IvMmpXbWwyK3c9PSIsInZhbHVlIjoiVTJBVnY5bldLQU11UVgzTkwvNW84NjgzSlBDS2RtaTMzUnp1Wk5GVzNMM09wd3UvcEVBVXBwTGVjY09temNCS3lwRVVUWklLTXlLTWtvenp0Q3NIb2E1UUhwa3lJM3h5WTFUQnhrZGk3QXNhSnNObE1idTkremdCaGJDZ28xbUwiLCJtYWMiOiI1YjY0NTM5MDdjYjY5ZTMwNDg4MGFiYmQwYTQ0YzdjMWQyYzVlYTM4Mjc2NTlhMGZmMmQ2MmQxZjFhYmUyMTY3IiwidGFnIjoiIn0%3D; sunnahstyle_session=eyJpdiI6InVublJCYXRVQ3pCSmNueUhQdjRONnc9PSIsInZhbHVlIjoiV2ZHVjBpSlowTUl3L1pSdk9pN2VZeTAwMU92TkZObjh0TFNFM3c4TnV1U2pqVi8xMWNQQXNCQzh3ZktCSUZLSWZDenMyRzJvaTFTV2tobmRKbHpKOE4wcmRwaWFtYjcydHhySmthd2VyMkxEbnlaR0hCNDgyWlZFM25EVml2SHoiLCJtYWMiOiI5MGQ4MTI4YTkyNWRiMDVlY2UzYzFmOTU1YTVkYmU5YTZjNmFlYmQyZTdiYWYzMzEwOWUzYjk4MzE1MmIzYmRlIiwidGFnIjoiIn0%3D\", \"LOG_CHANNEL\": \"stack\", \"MAIL_MAILER\": \"smtp\", \"PUSHER_HOST\": \"\", \"PUSHER_PORT\": \"443\", \"REMOTE_ADDR\": \"127.0.0.1\", \"REMOTE_PORT\": \"58457\", \"REQUEST_URI\": \"/device_access_check\", \"SCRIPT_NAME\": \"/index.php\", \"SERVER_NAME\": \"127.0.0.1\", \"SERVER_PORT\": \"8000\", \"CACHE_DRIVER\": \"file\", \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin\", \"REQUEST_TIME\": 1741080091, \"DB_CONNECTION\": \"mysql\", \"DOCUMENT_ROOT\": \"D:\\\\wamp64\\\\www\\\\pos\\\\public\", \"MAIL_PASSWORD\": \"null\", \"MAIL_USERNAME\": \"null\", \"PUSHER_APP_ID\": \"\", \"PUSHER_SCHEME\": \"https\", \"VITE_APP_NAME\": \"SunnahStyle\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"MAIL_FROM_NAME\": \"SunnahStyle\", \"MEMCACHED_HOST\": \"127.0.0.1\", \"PUSHER_APP_KEY\": \"\", \"REDIS_PASSWORD\": \"null\", \"REQUEST_METHOD\": \"GET\", \"SESSION_DRIVER\": \"file\", \"APP_MAINTANANCE\": \"false\", \"FILESYSTEM_DISK\": \"local\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"MAIL_ENCRYPTION\": \"null\", \"SCRIPT_FILENAME\": \"D:\\\\wamp64\\\\www\\\\pos\\\\public\\\\index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"PHP/8.3.14 (Development Server)\", \"BROADCAST_DRIVER\": \"log\", \"GOOGLE_CLIENT_ID\": \"7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com\", \"QUEUE_CONNECTION\": \"sync\", \"SESSION_LIFETIME\": \"120\", \"VITE_PUSHER_HOST\": \"\", \"VITE_PUSHER_PORT\": \"443\", \"AWS_ACCESS_KEY_ID\": \"\", \"MAIL_FROM_ADDRESS\": \"hello@example.com\", \"PUSHER_APP_SECRET\": \"\", \"AWS_DEFAULT_REGION\": \"us-east-1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"PUSHER_APP_CLUSTER\": \"mt1\", \"RECAPTCHA_SITE_KEY\": \"6LeGitMqAAAAAAGqbFGX3gpRnLDlWTG6nwH_sJJp\", \"REQUEST_TIME_FLOAT\": 1741080091.132076, \"VITE_PUSHER_SCHEME\": \"https\", \"GOOGLE_REDIRECT_URL\": \"http://localhost\", \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"VITE_PUSHER_APP_KEY\": \"\", \"APP_MAINTENANCE_TIME\": \"2025-02-08T15:57\", \"GOOGLE_CLIENT_SECRET\": \"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\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"RECAPTCHA_SECRET_KEY\": \"6LeGitMqAAAAAJLqOdU8wEtbE98lLywBBs5JdLrh\", \"AWS_SECRET_ACCESS_KEY\": \"\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"VITE_PUSHER_APP_CLUSTER\": \"mt1\", \"LOG_DEPRECATIONS_CHANNEL\": \"null\", \"APP_MAINTENANCE_TIME_FROM\": \"2025-02-08T15:54\", \"AWS_USE_PATH_STYLE_ENDPOINT\": \"false\"}', 1, 1, NULL, NULL, 1741080612, NULL, '', '2025-03-04 09:21:31', '2025-03-04 09:30:12');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(5, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(6, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(7, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(8, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(9, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(10, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(11, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(12, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(13, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(14, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(15, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
(1, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(5, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
(1, 'Useful Links', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'Our Services', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'Hic solutasetp', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'Nobis illum', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
(1, '1', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, '1', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, '1', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, '1', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(5, '2', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(6, '2', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(7, '2', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(8, '2', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(9, '3', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(10, '3', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(11, '3', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(12, '3', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(13, '4', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(14, '4', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(15, '4', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(16, '4', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
(1, 'footer_style.footer_style1', 'Footer Style Style', 'preset/footer_style/footer_style1.png', 1, '#ffffff', '\n                   Compare Style 1\n                ', '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(2, 'footer_style.footer_style2', 'Footer Style Style 2', 'preset/footer_style/footer_style2.png', 1, '#ffffff', '\n                   Compare Style 1\n                ', '2025-03-02 09:19:08', '2025-03-02 09:19:08');

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
(1, 'header_style.header_style1', 'Header Style', 'preset/header_variant/header_style1.png', 0, '#ffffff', '\n                    Left Welcome Note\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-03-02 03:19:08', '2025-03-02 03:19:08'),
(2, 'header_style.header_style2', 'Header Style', 'preset/header_variant/header_style2.png', 0, '#ffffff', '\n                    Left Email Phone\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-03-02 03:19:08', '2025-03-02 09:20:52'),
(3, 'header_style.header_style3', 'Header Style', 'preset/header_variant/header_style3.png', 1, '#ffffff', '\n                    Left Email Phone\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-03-02 03:19:08', '2025-03-02 09:20:52'),
(4, 'header_style.header_style4', 'Header Style 4', 'preset/header_variant/header_style4.png', 0, '#ffffff', '\n                    Left Email Phone\n                    Right contact,\n                    Track Order,\n                    About,\n                    Language\n\n                    Middle Logo,\n                    Search,\n                    Register,\n                    Login,\n                    Cart,\n\n                    Navbar\n                    With Sticky\n\n                ', '2025-03-02 03:19:08', '2025-03-02 03:19:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_manages`
--

INSERT INTO `home_page_manages` (`id`, `key`, `title`, `title_status`, `sub_title`, `sub_title_status`, `short_read_more`, `short_read_more_status`, `short_read_more_page_url`, `view_all`, `view_all_status`, `view_all_page_url`, `items_per_row`, `items_show`, `is_details_page`, `background`, `background_color`, `background_type`, `controlby`, `order`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`, `category`, `title_style`, `upload_id1`, `upload_id2`, `upload_id3`) VALUES
(1, '_hero_variant._hero_slider1', 'Hero Slider', '0', 'Hero Slider', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(2, '_hero_variant._hero_style3', 'Hero Style 3', '0', 'Hero Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(3, '_category_variant._category_style2', 'Category Style 2', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(4, '_product_variant._recent_product', 'Recent product Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(5, '_product_variant._feature_product', 'Feature Product  Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 4, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(6, '_product_variant._popular_product', 'Popular Product Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(7, '_product_variant._recommended_product', 'Recommended Product Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(8, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '2', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(9, '_about_us_variant.about_us_style1', 'About page 1', '0', 'About Us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '2', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(10, '_faq_variant._faq_style1', 'Faq style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '2', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(11, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '3', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(12, '_filter_variant.filter_vaiant1', 'Product Filter  1', '1', 'Product Filter Title', '1', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '3', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(13, '_product_details.product_details1', 'Product Details page 1', '0', 'Product Details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '4', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(14, '_cart_variant.cart_style1', 'Product Filter  1', '0', 'Product Filter Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '5', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(15, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '6', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(16, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', 'Product checkout Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '6', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(17, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '7', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(18, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', 'Product tracking Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '7', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(19, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '8', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(20, '_service_variant._service_style1', 'Service Style 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '8', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(21, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '9', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(22, '_service_view_variant._service_view1', 'Service View 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '9', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(23, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '10', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(24, '_register_variant.register_style1', 'Register us  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '10', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(25, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(26, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(27, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(28, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(29, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(30, '_profile._location.variant_1', 'profile location style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(31, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(32, '_profile._cart.variant_1', 'Profile cart style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(33, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(34, '_profile._checkout.variant_1', 'Checkout Page 1', '0', 'Checkout Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(35, '_order_success.success_style1', 'Success Page', '0', 'Register Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '27', 1, '1', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08', '0', 'title_style_0', '0', '0', '0'),
(36, '_profile._payment_information.variant_1', 'Payment Page 1', '0', 'Payment Page 1', '0', 'Read More', 0, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '22', 1, '1', '0', '0', NULL, '2025-03-04 10:22:34', '2025-03-04 10:22:34', '0', 'title_style_0', '0', '0', '0'),
(37, '_profile._checkout_payment.variant_1', 'profile location style  1', '0', 'Register Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '31', 1, '1', '0', '0', NULL, '2025-03-04 10:48:14', '2025-03-04 10:48:14', '0', 'title_style_0', '0', '0', '0'),
(38, '_profile._checkout_payment.variant_1', 'profile location style  1', '0', 'Register Title', '0', 'Read More', 0, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '32', 1, '1', '0', '0', NULL, '2025-03-04 10:49:09', '2025-03-04 10:49:09', '0', 'title_style_0', '0', '0', '0');

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
(1, 'en', 1, 1, 1, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(2, 'bn', 1, 1, 1, '2025-03-02 09:19:06', '2025-03-02 09:19:06');

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_deal_stages`
--

INSERT INTO `lead_deal_stages` (`id`, `name`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(2, 'Reschedule', 1, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(3, 'Qualified', 1, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(4, 'Closed', 1, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(5, 'Pending', 1, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(6, 'Reschedule', 1, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(7, 'Qualified', 1, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(8, 'Closed', 1, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(9, 'Pending', 1, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(10, 'Reschedule', 1, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(11, 'Qualified', 1, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(12, 'Closed', 1, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(13, 'Pending', 1, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(14, 'Reschedule', 1, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(15, 'Qualified', 1, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(16, 'Closed', 1, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(17, 'Pending', 1, 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(18, 'Reschedule', 1, 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(19, 'Qualified', 1, 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(20, 'Closed', 1, 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_sources`
--

INSERT INTO `lead_sources` (`id`, `name`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'website', '1', 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(2, 'Facebook', '1', 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(3, 'Email', '1', 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(4, 'Twitter', '1', 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(5, 'Voice Call', '1', 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(6, 'Whatsapp', '1', 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(7, 'Linkedin', '1', 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(8, 'website', '1', 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(9, 'Facebook', '1', 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(10, 'Email', '1', 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(11, 'Twitter', '1', 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(12, 'Voice Call', '1', 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(13, 'Whatsapp', '1', 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(14, 'Linkedin', '1', 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(15, 'website', '1', 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(16, 'Facebook', '1', 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(17, 'Email', '1', 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(18, 'Twitter', '1', 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(19, 'Voice Call', '1', 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(20, 'Whatsapp', '1', 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(21, 'Linkedin', '1', 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(22, 'website', '1', 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(23, 'Facebook', '1', 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(24, 'Email', '1', 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(25, 'Twitter', '1', 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(26, 'Voice Call', '1', 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(27, 'Whatsapp', '1', 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(28, 'Linkedin', '1', 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(29, 'website', '1', 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(30, 'Facebook', '1', 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(31, 'Email', '1', 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(32, 'Twitter', '1', 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(33, 'Voice Call', '1', 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(34, 'Whatsapp', '1', 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(35, 'Linkedin', '1', 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `from_address`, `from_name`, `smtp_encryption`, `smtp_host`, `smtp_password`, `smtp_port`, `smtp_username`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(2, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(3, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(4, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(5, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-03-04 10:48:14', '2025-03-04 10:48:14');

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
(1, 'test_mail', 'name', 'test_mail', 1, 1, NULL, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(2, 'order_create', 'name', 'test_mail', 1, 1, NULL, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(3, 'order_status_change', 'name,order_id,status,email,note', 'test_mail', 1, 1, NULL, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(4, 'order_reject', 'name', 'test_mail', 1, 1, NULL, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(5, 'verification_customer', 'name,code,email', 'test_mail', 1, 1, NULL, '2025-03-02 09:19:07', '2025-03-02 09:19:07');

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
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(88, '2025_02_24_142959_create_mail_boxes_table', 1),
(89, '2025_03_03_005944_create_calendar_events_table', 2);

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_banners`
--

INSERT INTO `offer_banners` (`id`, `title`, `subtitle`, `image1`, `image2`, `image3`, `status`, `link`, `offer_end_data`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-03-25 09:18:55', '1', NULL, NULL),
(2, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-25 09:18:55', '2', NULL, NULL),
(3, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-25 09:18:55', '3', NULL, NULL),
(4, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-03-27 06:17:51', '1', NULL, NULL),
(5, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 06:17:51', '2', NULL, NULL),
(6, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 06:17:51', '3', NULL, NULL),
(7, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-03-27 10:41:56', '1', NULL, NULL),
(8, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 10:41:56', '2', NULL, NULL),
(9, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 10:41:56', '3', NULL, NULL),
(10, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-03-27 10:42:32', '1', NULL, NULL),
(11, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 10:42:32', '2', NULL, NULL),
(12, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 10:42:32', '3', NULL, NULL),
(13, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-03-27 10:48:08', '1', NULL, NULL),
(14, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 10:48:08', '2', NULL, NULL),
(15, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-03-27 10:48:08', '3', NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_id`, `product_ids`, `product_json`, `delivery_status`, `quantity`, `quantitys`, `discount_id`, `price`, `vat`, `status`, `note`, `payment_method`, `shipping_charge_id`, `address`, `billing_address`, `cash_collection`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1741072247, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', 'Assumenda minus offi', 1, '1', '1', '2', 85, NULL, '2025-03-04 07:10:47', '2025-03-04 07:10:47'),
(2, 2, 1741072260, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', 'Assumenda minus offi', 1, '1', '1', '3', 85, NULL, '2025-03-04 07:11:00', '2025-03-04 07:11:00'),
(3, 2, 1741072350, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', 'Assumenda minus offi', 1, '1', '1', '4', 85, NULL, '2025-03-04 07:12:30', '2025-03-04 07:12:30'),
(4, 2, 1741074547, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 1, '1', '5', '1', 85, NULL, '2025-03-04 07:49:07', '2025-03-04 07:49:07'),
(5, 2, 1741075223, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 1, '1', '13', '13', 85, NULL, '2025-03-04 08:00:23', '2025-03-04 08:00:23'),
(6, 2, 1741075307, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '10', '10', 85, NULL, '2025-03-04 08:01:47', '2025-03-04 08:01:47'),
(7, 2, 1741078423, '{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"2\":\"1\"},\"product_ids\":{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_2\",\"product\":{\"id\":2,\"name\":\"Keane Lowe\",\"product_id\":\"p\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe\",\"category\":\"2\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":8,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:16.000000Z\",\"updated_at\":\"2025-03-04T06:48:51.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"2\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '9', '9', 85, NULL, '2025-03-04 08:53:43', '2025-03-04 08:53:43'),
(8, 2, 1741078586, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 1, '1', '6', '6', 85, NULL, '2025-03-04 08:56:26', '2025-03-04 08:56:26'),
(9, 2, 1741078741, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '8', '8', 85, NULL, '2025-03-04 08:59:01', '2025-03-04 08:59:01'),
(10, 2, 1741079384, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 1, '1', '5', '5', 185, NULL, '2025-03-04 09:09:44', '2025-03-04 09:09:44'),
(11, 2, 1741079418, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '9', '9', 185, NULL, '2025-03-04 09:10:18', '2025-03-04 09:10:18'),
(12, 2, 1741079806, '{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"2\":\"1\"},\"product_ids\":{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_2\",\"product\":{\"id\":2,\"name\":\"Keane Lowe\",\"product_id\":\"p\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe\",\"category\":\"2\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":8,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:16.000000Z\",\"updated_at\":\"2025-03-04T06:48:51.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"2\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '9', '9', 185, NULL, '2025-03-04 09:16:46', '2025-03-04 09:16:46'),
(13, 2, 1741079945, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '11', '11', 185, NULL, '2025-03-04 09:19:05', '2025-03-04 09:19:05'),
(14, 2, 1741081551, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '8', '8', 185, NULL, '2025-03-04 09:45:52', '2025-03-04 09:45:52'),
(15, 3, 1741081673, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', 'Amet sint id enim a', 1, '1', '14', '14', 185, NULL, '2025-03-04 09:47:53', '2025-03-04 09:47:53'),
(16, 3, 1741081721, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '14', '14', 185, NULL, '2025-03-04 09:48:41', '2025-03-04 09:48:41'),
(17, 3, 1741082046, '{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"2\":\"1\"},\"product_ids\":{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_2\",\"product\":{\"id\":2,\"name\":\"Keane Lowe\",\"product_id\":\"p\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe\",\"category\":\"2\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":8,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:16.000000Z\",\"updated_at\":\"2025-03-04T06:48:51.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"2\":\"1\"}', '0', 85, '0', '1', '', 1, '1', '14', '14', 185, NULL, '2025-03-04 09:54:06', '2025-03-04 09:54:06'),
(18, 3, 1741082432, '{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"2\":\"1\"},\"product_ids\":{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_2\",\"product\":{\"id\":2,\"name\":\"Keane Lowe\",\"product_id\":\"p\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe\",\"category\":\"2\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":8,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:16.000000Z\",\"updated_at\":\"2025-03-04T06:48:51.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"2\":\"1\"}', '0', 85, '0', '1', '', 1, '2', '14', '14', 235, NULL, '2025-03-04 10:00:32', '2025-03-04 10:00:32'),
(19, 3, 1741082609, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 1, '2', '14', '14', 235, NULL, '2025-03-04 10:03:29', '2025-03-04 10:03:29'),
(20, 3, 1741082656, '{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"2\":\"1\"},\"product_ids\":{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_2\",\"product\":{\"id\":2,\"name\":\"Keane Lowe\",\"product_id\":\"p\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe\",\"category\":\"2\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":8,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:16.000000Z\",\"updated_at\":\"2025-03-04T06:48:51.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"2\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '14', '14', 185, NULL, '2025-03-04 10:04:16', '2025-03-04 10:04:16'),
(21, 3, 1741082756, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 3, '1', '14', '14', 185, NULL, '2025-03-04 10:05:56', '2025-03-04 10:05:56'),
(22, 4, 1741083333, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', 'Asperiores commodo a', 3, '1', '15', '15', 185, NULL, '2025-03-04 10:15:33', '2025-03-04 10:15:33'),
(23, 4, 1741083629, '{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"2\":\"1\"},\"product_ids\":{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_2\",\"product\":{\"id\":2,\"name\":\"Keane Lowe\",\"product_id\":\"p\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe\",\"category\":\"2\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":8,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:16.000000Z\",\"updated_at\":\"2025-03-04T06:48:51.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"2\":\"1\"}', '0', 85, '0', '1', '', 3, '2', '15', '15', 235, NULL, '2025-03-04 10:20:29', '2025-03-04 10:20:29'),
(24, 4, 1741084419, '{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}', '{\"subtotal\":{\"pre_price\":85,\"quantity\":1,\"discount\":0,\"vat\":0,\"price\":85,\"coupon\":0,\"coupon_without_price\":85,\"quantitys\":{\"3\":\"1\"},\"product_ids\":{\"pd_3\":{\"product_id\":\"3\",\"quantaty\":\"1\",\"size\":0}}},\"product\":[{\"size\":0,\"quantity\":\"1\",\"session_id\":\"pd_3\",\"product\":{\"id\":3,\"name\":\"Keane Lowe\",\"product_id\":\"p-1\",\"sku\":\"Mariam Stevens\",\"slug\":\"sed-in-eius-sed-aspe-1\",\"category\":\"0\",\"brand\":\"0\",\"weight\":\"Uriel Mccall\",\"description\":null,\"additional_description\":null,\"unit\":\"0\",\"for_selling\":\"1\",\"garage\":\"David Hurst\",\"route\":\"Leonard Puckett\",\"feature\":\"1\",\"alert_quantity\":\"78\",\"quantity\":0,\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"1\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Consequatur dolor s\",\"youtube_video\":\"Officia quidem paria\",\"tags\":null,\"views\":6,\"old_price\":110,\"selling_price\":85,\"free_delivery\":1,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":\\\"\\\",\\\"vairant_value\\\":\\\"\\\",\\\"variant_details_key\\\":\\\"\\\",\\\"variant_details_value\\\":\\\"\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#124b36\",\"landing_page_color\":\"#b375ab\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-03-02T09:29:19.000000Z\",\"updated_at\":\"2025-03-04T05:13:05.000000Z\",\"image_url\":\"http:\\/\\/pos.localhost\\/uploads\\/galaxy-s23-ultra_1740977245403_n6ckf9.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\",\"instance_price\":\"$ 85\"},\"product_variant\":null,\"vat\":null,\"price\":85,\"discount_price\":0,\"price_discount\":85,\"vat_price\":0,\"cal_total_with_vat\":85,\"single_subtotal\":85}]}', '0', 1, '{\"3\":\"1\"}', '0', 85, '0', '1', '', 1, '1', '15', '15', 185, NULL, '2025-03-04 10:33:39', '2025-03-04 10:33:39');

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_events`
--

INSERT INTO `order_events` (`id`, `order_id`, `status_id`, `creator`, `updater`, `upload_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 2, 0, NULL, '2025-03-04 07:10:47', '2025-03-04 07:10:47'),
(2, 2, 1, 2, 2, 0, NULL, '2025-03-04 07:11:00', '2025-03-04 07:11:00'),
(3, 3, 1, 2, 2, 0, NULL, '2025-03-04 07:12:30', '2025-03-04 07:12:30'),
(4, 4, 1, 2, 2, 0, NULL, '2025-03-04 07:49:07', '2025-03-04 07:49:07'),
(5, 5, 1, 2, 2, 0, NULL, '2025-03-04 08:00:23', '2025-03-04 08:00:23'),
(6, 6, 1, 2, 2, 0, NULL, '2025-03-04 08:01:47', '2025-03-04 08:01:47'),
(7, 7, 1, 2, 2, 0, NULL, '2025-03-04 08:53:43', '2025-03-04 08:53:43'),
(8, 8, 1, 2, 2, 0, NULL, '2025-03-04 08:56:26', '2025-03-04 08:56:26'),
(9, 9, 1, 2, 2, 0, NULL, '2025-03-04 08:59:01', '2025-03-04 08:59:01'),
(10, 10, 1, 2, 2, 0, NULL, '2025-03-04 09:09:44', '2025-03-04 09:09:44'),
(11, 11, 1, 2, 2, 0, NULL, '2025-03-04 09:10:18', '2025-03-04 09:10:18'),
(12, 12, 1, 2, 2, 0, NULL, '2025-03-04 09:16:46', '2025-03-04 09:16:46'),
(13, 13, 1, 2, 2, 0, NULL, '2025-03-04 09:19:05', '2025-03-04 09:19:05'),
(14, 14, 1, 2, 2, 0, NULL, '2025-03-04 09:45:52', '2025-03-04 09:45:52'),
(15, 15, 1, 3, 3, 0, NULL, '2025-03-04 09:47:53', '2025-03-04 09:47:53'),
(16, 16, 1, 3, 3, 0, NULL, '2025-03-04 09:48:41', '2025-03-04 09:48:41'),
(17, 17, 1, 3, 3, 0, NULL, '2025-03-04 09:54:06', '2025-03-04 09:54:06'),
(18, 18, 1, 3, 3, 0, NULL, '2025-03-04 10:00:32', '2025-03-04 10:00:32'),
(19, 19, 1, 3, 3, 0, NULL, '2025-03-04 10:03:29', '2025-03-04 10:03:29'),
(20, 20, 1, 3, 3, 0, NULL, '2025-03-04 10:04:16', '2025-03-04 10:04:16'),
(21, 21, 1, 3, 3, 0, NULL, '2025-03-04 10:05:56', '2025-03-04 10:05:56'),
(22, 22, 1, 4, 4, 0, NULL, '2025-03-04 10:15:33', '2025-03-04 10:15:33'),
(23, 23, 1, 4, 4, 0, NULL, '2025-03-04 10:20:29', '2025-03-04 10:20:29'),
(24, 24, 1, 4, 4, 0, NULL, '2025-03-04 10:33:39', '2025-03-04 10:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
CREATE TABLE IF NOT EXISTS `order_statuses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `qty_status` int NOT NULL DEFAULT '0' COMMENT '0 for nothing, 1 for positive 2 for negative',
  `qty_add_remove` int NOT NULL DEFAULT '0',
  `under_items` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `qty`, `qty_status`, `qty_add_remove`, `under_items`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 0, 0, 0, NULL, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'Shipping', 0, 0, 0, NULL, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'Delivered', 0, 0, 0, NULL, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'Confirmed', 0, 0, 0, NULL, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(5, 'Pending', 0, 0, 0, NULL, 1, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(6, 'Shipping', 0, 0, 0, NULL, 1, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(7, 'Delivered', 0, 0, 0, NULL, 1, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(8, 'Confirmed', 0, 0, 0, NULL, 1, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(9, 'Pending', 0, 0, 0, NULL, 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(10, 'Shipping', 0, 0, 0, NULL, 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(11, 'Delivered', 0, 0, 0, NULL, 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(12, 'Confirmed', 0, 0, 0, NULL, 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(13, 'Pending', 0, 0, 0, NULL, 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(14, 'Shipping', 0, 0, 0, NULL, 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(15, 'Delivered', 0, 0, 0, NULL, 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(16, 'Confirmed', 0, 0, 0, NULL, 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(17, 'Pending', 0, 0, 0, NULL, 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(18, 'Shipping', 0, 0, 0, NULL, 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(19, 'Delivered', 0, 0, 0, NULL, 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(20, 'Confirmed', 0, 0, 0, NULL, 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `status`, `homepage`, `order`, `page_type`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', '1', '1', '1', '', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(2, 'About', 'about-us', '1', '0', '1', 'about', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(3, 'Filter', 'filter', '1', '0', '1', 'filter', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(4, 'Product details', 'product/details', '1', '0', '1', 'view', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(5, 'cart', 'cart', '1', '0', '1', 'cart', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(6, 'Checkout', 'checkout', '1', '0', '1', 'checkout', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(7, 'Tracking', 'tracking', '1', '0', '1', 'tracking', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(8, 'Service', 'service', '1', '0', '1', 'service', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(9, 'Service Details', 'service-details', '1', '0', '1', 'service_details', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(10, 'Register', 'register', '1', '0', '1', 'register', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(11, 'Wishlist', 'wishlist', '1', '0', '1', 'wishlist', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(12, 'coming-soon', 'coming-soon', '1', '0', '1', '', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(13, 'Blog', 'blog', '1', '0', '1', '', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(14, 'Blog Details', 'blog/details', '1', '0', '1', '', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(15, 'FAQ', 'faq', '1', '0', '1', '', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(16, 'Contact', 'contact', '1', '0', '1', 'contact', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(17, 'Sales Partner', 'sales/partner', '1', '0', '1', 'sales_partner', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(18, 'Dashboard', 'user/dashboard', '1', '0', '1', 'profile_dashboard', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(19, 'Cart', 'user/cart', '1', '0', '1', 'profile_cart', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(20, 'Location', 'user/location', '1', '0', '1', 'profile_location', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(21, 'Order', 'user/order', '1', '0', '1', 'checkout_page', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(22, 'Payment Information', 'user/payment-info', '1', '0', '1', 'payment_page', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(23, 'Category Information', 'category/details', '1', '0', '1', 'category_details_page', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(24, 'Bluk Order', 'bluk-order', '1', '0', '1', 'bluk_order', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(25, 'Custom Order', 'custom-order', '1', '0', '1', 'custom_order', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(26, 'Login', 'customer/login', '1', '0', '1', 'customer_login', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(27, 'Order Success', 'order/success', '1', '0', '1', 'order_success', '0', '0', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(28, '404', '404', '1', '0', '1', '404_error', '0', '0', NULL, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(29, '503', '503', '1', '0', '1', '503_error', '0', '0', NULL, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(30, '401', '401', '1', '0', '1', '401_error', '0', '0', NULL, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(31, 'payment', 'payment_method', '1', '0', '1', 'payment_method', '0', '0', NULL, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(32, 'payment', 'checkout/payment_method', '1', '0', '1', 'payment_method', '0', '0', NULL, '2025-03-04 10:42:36', '2025-03-04 10:42:36');

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
(1, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'AmarPay', 'aamarpaytest', NULL, NULL, NULL, 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'SSLCommerz', 'dengr6606dde118f61', 'dengr6606dde118f61@ssl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AW94vUy1U0BcDsirCdw3Ry8OXvfre6uAB2eLkhl4mXwbMBjRm4vTjNYiu3yIEk_zAM7jhMfYwQKZRaj9', 'EP3FKuvBoUKCdqTDMqrX_NB6U6Ljjzb0o-aptPsQSrjsXC1RmvrTnuGuEUQ0LU8mNOf8b4H9nYZBBtfo', NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(5, 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sk_test_51QBS8gGmdDJ09IiPeBXzbzsKu4yZC3GLYepHUyK8uzqNeXl1hJan55DmOZpJMY5D3uHhNREjAU2qId5Y4SeaaMBS000ZwhS3JO', 'pk_test_51QBS8gGmdDJ09IiPzuSRshs99WwkulloA8wW0rPt4vTORhFZUYXXa2LaxrySoZMgwcndwdnFbVTWsDkemFIJl43W00fxHQeYXV', '1', '1', 0.00, 'us', 'us', 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(6, 'braintree', NULL, NULL, 'bxqn974w5gzggj44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wktqb878b2x7jj7r', '4d024a30390cb9475e556d475aaa399f', NULL, NULL, NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(7, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user read', 'web', '2025-03-02 09:18:57', '2025-03-02 09:18:57'),
(2, 'user create', 'web', '2025-03-02 09:18:57', '2025-03-02 09:18:57'),
(3, 'user edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(4, 'user rolechange', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(5, 'user delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(6, 'role read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(7, 'role create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(8, 'role edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(9, 'role delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(10, 'branch read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(11, 'branch create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(12, 'branch edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(13, 'branch delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(14, 'cashcounter read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(15, 'cashcounter create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(16, 'cashcounter edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(17, 'cashcounter delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(18, 'product read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(19, 'product create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(20, 'product edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(21, 'product delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(22, 'product barcode', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(23, 'unit read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(24, 'unit create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(25, 'unit edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(26, 'unit delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(27, 'purchase read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(28, 'purchase create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(29, 'purchase edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(30, 'purchase delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(31, 'customer read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(32, 'customer create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(33, 'customer edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(34, 'customer delete', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(35, 'stock read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(36, 'supplier read', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(37, 'supplier create', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(38, 'supplier edit', 'web', '2025-03-02 09:18:58', '2025-03-02 09:18:58'),
(39, 'supplier delete', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(40, 'category read', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(41, 'category create', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(42, 'category edit', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(43, 'category delete', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(44, 'subcategory read', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(45, 'subcategory create', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(46, 'subcategory edit', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(47, 'subcategory delete', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(48, 'area read', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(49, 'area create', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(50, 'area edit', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(51, 'area delete', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(52, 'brand read', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(53, 'brand create', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(54, 'brand edit', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(55, 'brand delete', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(56, 'vat read', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(57, 'vat create', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(58, 'vat edit', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(59, 'vat delete', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(60, 'discount read', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(61, 'discount create', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(62, 'discount edit', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(63, 'discount delete', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(64, 'pos read', 'web', '2025-03-02 09:18:59', '2025-03-02 09:18:59'),
(65, 'pos create', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(66, 'pos edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(67, 'pos delete', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(68, 'siteverification read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(69, 'siteverification edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(70, 'tagmanagement read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(71, 'tagmanagement edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(72, 'pwa read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(73, 'pwa edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(74, 'notification read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(75, 'notification edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(76, 'takto read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(77, 'takto edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(78, 'cookie read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(79, 'cookie edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(80, 'smtp read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(81, 'smtp edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(82, 'payment_credentials read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(83, 'payment_credentials edit', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(84, 'maintenance mode', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(85, 'maintenance debug', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(86, 'maintenance database', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(87, 'database backup', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(88, 'device_access_check read', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(89, 'settings payment_configration', 'web', '2025-03-02 09:19:00', '2025-03-02 09:19:00'),
(90, 'settings main', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(91, 'settings notification', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(92, 'settings site_verification', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(93, 'settings site_tag', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(94, 'settings tracking_report', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(95, 'settings site_pwa', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(96, 'settings messagesdk', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(97, 'settings cookie', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(98, 'settings email_setting', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(99, 'imap management', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(100, 'order read', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(101, 'order create', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(102, 'order edit', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(103, 'order delete', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(104, 'custom_order type read', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(105, 'custom_order bulk read', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(106, 'custom_order custom read', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(107, 'order_status read', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(108, 'order_status delete', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(109, 'order_status edit', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(110, 'order_status create', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(111, 'offerbanner read', 'web', '2025-03-02 09:19:01', '2025-03-02 09:19:01'),
(112, 'offerbanner create', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(113, 'offerbanner edit', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(114, 'offerbanner delete', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(115, 'profile read', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(116, 'profile create', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(117, 'profile edit', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(118, 'profile delete', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(119, 'theme read', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(120, 'LeadAccount read', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(121, 'LeadAccount create', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(122, 'LeadAccount edit', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(123, 'LeadAccount delete', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(124, 'LeadContact read', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(125, 'LeadContact create', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(126, 'LeadContact edit', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(127, 'LeadContact delete', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(128, 'LeadDeal read', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(129, 'LeadDeal create', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(130, 'LeadDeal edit', 'web', '2025-03-02 09:19:02', '2025-03-02 09:19:02'),
(131, 'LeadDeal delete', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(132, 'LeadDealStage read', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(133, 'LeadDealStage create', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(134, 'LeadDealStage edit', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(135, 'LeadDealStage delete', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(136, 'Lead read', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(137, 'Lead create', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(138, 'Lead edit', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(139, 'Lead delete', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(140, 'LeadSource read', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(141, 'LeadSource create', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(142, 'LeadSource edit', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(143, 'LeadSource delete', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(144, 'language read', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(145, 'language create', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(146, 'language edit', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(147, 'language delete', 'web', '2025-03-02 09:19:03', '2025-03-02 09:19:03'),
(148, 'Translation read', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(149, 'Translation create', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(150, 'Translation edit', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(151, 'Translation delete', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(152, 'slider read', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(153, 'slider create', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(154, 'slider edit', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(155, 'slider delete', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(156, 'service read', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(157, 'service create', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(158, 'service edit', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(159, 'service delete', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(160, 'testimonial read', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(161, 'testimonial create', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(162, 'testimonial edit', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(163, 'testimonial delete', 'web', '2025-03-02 09:19:04', '2025-03-02 09:19:04'),
(164, 'footerlinkheading read', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(165, 'footerlinkheading create', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(166, 'footerlinkheading edit', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(167, 'footerlinkheading delete', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(168, 'footerlinksubheading read', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(169, 'footerlinksubheading create', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(170, 'footerlinksubheading edit', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(171, 'footerlinksubheading delete', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(172, 'headernav read', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(173, 'headernav create', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(174, 'headernav edit', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(175, 'headernav delete', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(176, 'faq read', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(177, 'faq create', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(178, 'faq edit', 'web', '2025-03-02 09:19:05', '2025-03-02 09:19:05'),
(179, 'faq delete', 'web', '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(180, 'page read', 'web', '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(181, 'page create', 'web', '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(182, 'page edit', 'web', '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(183, 'page delete', 'web', '2025-03-02 09:19:06', '2025-03-02 09:19:06');

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
  `quantity` bigint NOT NULL DEFAULT '0',
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
  `free_delivery` int NOT NULL DEFAULT '0',
  `vat` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `service` tinyint(1) NOT NULL DEFAULT '0',
  `variant_on` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `variant_option` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `landing_page_bg` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page_color` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page_deasing_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_id`, `sku`, `slug`, `category`, `brand`, `weight`, `description`, `additional_description`, `unit`, `for_selling`, `garage`, `route`, `feature`, `alert_quantity`, `quantity`, `discount_id`, `creator`, `upload_id`, `uploads_id`, `sub_category`, `short_description`, `youtube_video`, `tags`, `views`, `old_price`, `selling_price`, `free_delivery`, `vat`, `service`, `variant_on`, `variant_option`, `status`, `landing_page_bg`, `landing_page_color`, `landing_page_deasing_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', 0, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, NULL, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'Keane Lowe', 'p', 'Mariam Stevens', 'sed-in-eius-sed-aspe', '2', '0', 'Uriel Mccall', NULL, NULL, '0', '1', 'David Hurst', 'Leonard Puckett', '1', '78', 0, '0', '1', '1', '0', '0', 'Consequatur dolor s', 'Officia quidem paria', NULL, 8, 110, 85, 1, '0', 1, '0', '{\"variant_key\":\"\",\"vairant_value\":\"\",\"variant_details_key\":\"\",\"variant_details_value\":\"\"}', '1', '#124b36', '#b375ab', NULL, NULL, '2025-03-02 09:29:16', '2025-03-04 06:48:51'),
(3, 'Keane Lowe', 'p-1', 'Mariam Stevens', 'sed-in-eius-sed-aspe-1', '0', '0', 'Uriel Mccall', NULL, NULL, '0', '1', 'David Hurst', 'Leonard Puckett', '1', '78', 0, '0', '1', '1', '0', '0', 'Consequatur dolor s', 'Officia quidem paria', NULL, 6, 110, 85, 1, '0', 1, '0', '{\"variant_key\":\"\",\"vairant_value\":\"\",\"variant_details_key\":\"\",\"variant_details_value\":\"\"}', '1', '#124b36', '#b375ab', NULL, NULL, '2025-03-02 09:29:19', '2025-03-04 05:13:05'),
(4, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', 0, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, NULL, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(5, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', 0, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, NULL, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(6, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', 0, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, NULL, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(7, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', 0, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, NULL, '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_styles`
--

INSERT INTO `product_styles` (`id`, `key`, `title`, `upload_id`, `status`, `background_color`, `details`, `created_at`, `updated_at`) VALUES
(1, '_product_style.product_style1', 'Product Style Style', 'preset/_product_style/product_style1.png', 0, '#ffffff', '\n                   Product Style 1\n                ', '2025-02-25 09:19:08', '2025-02-27 18:29:11'),
(2, '_product_style.product_style2', 'Product Style Style', 'preset/_product_style/product_style2.png', 0, '#ffffff', '\n                   Product Style 2\n                ', '2025-02-25 09:19:08', '2025-03-04 10:42:01'),
(3, '_product_style.product_style3', 'Product Style Style', 'preset/_product_style/product_style3.png', 0, '#ffffff', '\n                   Product Style 3\n                ', '2025-02-25 09:19:08', '2025-03-04 10:42:01'),
(4, '_product_style.product_style4', 'Product Style Style', 'preset/_product_style/product_style4.png', 1, '#ffffff', '\n                   Product Style 3\n                ', '2025-02-27 06:17:54', '2025-03-04 10:42:01'),
(5, '_product_style.product_style5', 'Product Style Style', 'preset/_product_style/product_style5.png', 1, '#ffffff', '\n                   Product Style 6\n                ', '2025-02-27 06:17:54', '2025-03-04 10:42:01'),
(6, '_product_style.product_style6', 'Product Style Style', 'preset/_product_style/product_style6.png', 1, '#ffffff', '\n                   Product Style 6\n                ', '2025-02-27 06:17:54', '2025-03-04 10:42:01');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'superadmin', 'web', '2025-03-02 09:18:57', '2025-03-02 09:18:57');

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
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1);

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
(1, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-asd', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-dfs', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-met-df-e', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-sdfsd', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(5, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-dfdgd', '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `creator_id`, `key`, `created_at`, `updated_at`) VALUES
(181, 'theme_nav-collapse-hide-child', 'Theme Nav-Collapse-Hide-Child', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(4, 'currency_symbol', '$', '1', '9', NULL, NULL),
(5, 'app_image', '0', '1', '9', NULL, NULL),
(6, 'app_name_short', 'Sunnahstyle sdfa sdf', '1', '9', NULL, '2025-03-03 10:48:02'),
(7, 'app_title', 'D Engr Pos', '1', '9', NULL, NULL),
(8, 'app_footer_image', '0', '1', '9', NULL, NULL),
(9, 'app_email', 'dengrweb@gmail.com', '1', '9', NULL, NULL),
(10, 'app_about', 'We are best of software company', '1', '9', NULL, NULL),
(11, 'app_tel', '01590084779', '1', '9', NULL, NULL),
(12, 'app_linkedin', 'https://linkedin.com/mdsazzad0002', '1', '9', NULL, NULL),
(13, 'app_facebook', 'https://facebook.com/mdsazzad0002', '1', '9', NULL, NULL),
(14, 'app_whatsapp', 'https://api.whatsapp.com/send?phone=01590084779', '1', '9', NULL, '2025-03-04 05:05:51'),
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
(27, 'theme_color', '#0f7b79', '1', '9', NULL, '2025-03-03 05:12:43'),
(28, 'google-site-verification', 'Google-Site-Verification', '0', '25', '2025-03-02 09:18:54', '2025-03-02 09:18:54'),
(29, 'msvalidate.01', 'Msvalidate.01', '0', '25', '2025-03-02 09:18:54', '2025-03-02 09:18:54'),
(30, 'yandex-verification', 'Yandex-Verification', '0', '25', '2025-03-02 09:18:54', '2025-03-02 09:18:54'),
(31, 'p:domain_verify', 'P:domain Verify', '0', '25', '2025-03-02 09:18:54', '2025-03-02 09:18:54'),
(32, 'fb:admins', 'Fb:admins', '0', '25', '2025-03-02 09:18:54', '2025-03-02 09:18:54'),
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
(168, 'theme_layout-fixed', 'Theme Layout-Fixed', '0', '1', '2025-03-04 10:48:56', '2025-03-04 10:48:56'),
(167, 'theme_layout-navbar-fixed', 'Theme Layout-Navbar-Fixed', '0', '1', '2025-03-04 10:48:56', '2025-03-04 10:48:56'),
(166, 'theme_mode', 'Theme Mode', '0', '1', '2025-03-04 10:48:56', '2025-03-04 10:48:56'),
(165, 'custom_css__footer_code', '', '1', '45', NULL, NULL),
(80, 'app_fav_image', 'App Fav Image', '0', '9', '2025-03-02 09:20:02', '2025-03-02 09:20:02'),
(180, 'theme_nav-child-indent', 'Theme Nav-Child-Indent', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(178, 'theme_brand_link', 'Theme Brand Link', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(179, 'nav-flat', 'Nav-Flat', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(177, 'theme_dark_sidebar_variant', 'Theme Dark Sidebar Variant', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(176, 'theme_sidebar-no-expand', 'Theme Sidebar-No-Expand', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(175, 'theme_navbar_bg', 'Theme Navbar Bg', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(174, 'theme_border-bottom-0', 'Theme Border-Bottom-0', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(172, 'theme_layout-footer-fixed', 'Theme Layout-Footer-Fixed', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(173, 'theme_dropdown-legacy', 'Theme Dropdown-Legacy', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(171, 'theme_sidebar-mini-xs', 'Theme Sidebar-Mini-Xs', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(164, 'custom_css__head_code', '', '1', '45', NULL, NULL),
(163, 'custom_css_footer_code', '', '1', '45', NULL, NULL),
(162, 'custom_js_footer_code', '', '1', '45', NULL, NULL),
(161, 'custom_css_head_code', '', '1', '45', NULL, NULL),
(160, 'custom_js_head_code', '', '1', '45', NULL, NULL),
(98, 'category_wise_filter_status', 'Category Wise Filter Status', '0', '80', '2025-03-02 09:20:25', '2025-03-02 09:20:25'),
(99, 'header_style_button_box_status', 'Header Style Button Box Status', '0', '80', '2025-03-02 09:20:25', '2025-03-02 09:20:25'),
(100, 'header_sticky_status', 'Header Sticky Status', '0', '9', '2025-03-02 09:20:25', '2025-03-02 09:20:25'),
(101, 'app_instagram', 'App Instagram', '0', '9', '2025-03-02 09:20:26', '2025-03-02 09:20:26'),
(102, 'app_whatssap_fixed_status', 'App Whatssap Fixed Status', '0', '9', '2025-03-02 09:20:26', '2025-03-02 09:20:26'),
(103, 'app_messenger_fixed_status', 'App Messenger Fixed Status', '0', '9', '2025-03-02 09:20:26', '2025-03-02 09:20:26'),
(104, 'welcome_note', 'Welcome Note', '0', '9', '2025-03-02 09:20:46', '2025-03-02 09:20:46'),
(105, 'product_variant_style1_status', 'Product Variant Style1 Status', '0', '99', '2025-03-02 09:29:34', '2025-03-02 09:29:34'),
(106, 'product_variant_style2_status', 'Product Variant Style2 Status', '0', '99', '2025-03-02 09:29:34', '2025-03-02 09:29:34'),
(107, 'product_variant_style3_status', 'Product Variant Style3 Status', '0', '99', '2025-03-02 09:29:34', '2025-03-02 09:29:34'),
(108, 'login_admin_image', 'Login Admin Image', '0', '9', '2025-03-03 04:11:30', '2025-03-03 04:11:30'),
(109, 'order', 'Order', '0', '10', '2025-03-03 04:16:38', '2025-03-03 04:16:38'),
(110, 'footerlinkheadings', 'Footerlinkheadings', '0', '10', '2025-03-03 08:43:30', '2025-03-03 08:43:30'),
(170, 'theme_sidebar-mini-md', 'Theme Sidebar-Mini-Md', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57'),
(169, 'theme_sidebar-mini', 'Theme Sidebar-Mini', '0', '1', '2025-03-04 10:48:56', '2025-03-04 10:48:56'),
(159, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(158, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(157, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(137, 'checkout_note', 'Checkout Note', '0', '9', '2025-03-04 07:10:39', '2025-03-04 07:10:39'),
(138, 'customer', 'Customer', '0', '10', '2025-03-04 07:23:04', '2025-03-04 07:23:04'),
(182, 'theme_nav-flat', 'Theme Nav-Flat', '0', '1', '2025-03-04 10:48:57', '2025-03-04 10:48:57');

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
(1, 'Inside Dhaka', '100', '1', '1', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'Outside Dhaka', '150', '1', '1', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
(1, 'In Service 1', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'In Service 2', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'In Service 3', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55');

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
  `status` int NOT NULL DEFAULT '0' COMMENT '0 for nothing, 1 for positive 2 for negative',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `order_id`, `product_id`, `variant_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, '2025-03-04 07:10:47', '2025-03-04 07:10:47'),
(2, 1, 0, 0, 0, 0, '2025-03-04 07:10:47', '2025-03-04 07:10:47'),
(3, 1, 0, 0, 0, 0, '2025-03-04 07:10:47', '2025-03-04 07:10:47'),
(4, 2, 0, 0, 0, 0, '2025-03-04 07:11:00', '2025-03-04 07:11:00'),
(5, 2, 0, 0, 0, 0, '2025-03-04 07:11:00', '2025-03-04 07:11:00'),
(6, 2, 0, 0, 0, 0, '2025-03-04 07:11:00', '2025-03-04 07:11:00'),
(7, 3, 0, 0, 0, 0, '2025-03-04 07:12:30', '2025-03-04 07:12:30'),
(8, 3, 0, 0, 0, 0, '2025-03-04 07:12:30', '2025-03-04 07:12:30'),
(9, 3, 0, 0, 0, 0, '2025-03-04 07:12:30', '2025-03-04 07:12:30'),
(10, 4, 0, 0, 0, 0, '2025-03-04 07:49:07', '2025-03-04 07:49:07'),
(11, 4, 0, 0, 0, 0, '2025-03-04 07:49:07', '2025-03-04 07:49:07'),
(12, 4, 0, 0, 0, 0, '2025-03-04 07:49:07', '2025-03-04 07:49:07'),
(13, 5, 0, 0, 0, 0, '2025-03-04 08:00:23', '2025-03-04 08:00:23'),
(14, 5, 0, 0, 0, 0, '2025-03-04 08:00:23', '2025-03-04 08:00:23'),
(15, 5, 0, 0, 0, 0, '2025-03-04 08:00:23', '2025-03-04 08:00:23'),
(16, 6, 0, 0, 0, 0, '2025-03-04 08:01:47', '2025-03-04 08:01:47'),
(17, 6, 0, 0, 0, 0, '2025-03-04 08:01:47', '2025-03-04 08:01:47'),
(18, 6, 0, 0, 0, 0, '2025-03-04 08:01:47', '2025-03-04 08:01:47'),
(19, 7, 0, 0, 0, 0, '2025-03-04 08:53:43', '2025-03-04 08:53:43'),
(20, 7, 0, 0, 0, 0, '2025-03-04 08:53:43', '2025-03-04 08:53:43'),
(21, 7, 0, 0, 0, 0, '2025-03-04 08:53:43', '2025-03-04 08:53:43'),
(22, 8, 0, 0, 0, 0, '2025-03-04 08:56:26', '2025-03-04 08:56:26'),
(23, 8, 0, 0, 0, 0, '2025-03-04 08:56:26', '2025-03-04 08:56:26'),
(24, 8, 0, 0, 0, 0, '2025-03-04 08:56:26', '2025-03-04 08:56:26'),
(25, 9, 0, 0, 0, 0, '2025-03-04 08:59:01', '2025-03-04 08:59:01'),
(26, 9, 0, 0, 0, 0, '2025-03-04 08:59:01', '2025-03-04 08:59:01'),
(27, 9, 0, 0, 0, 0, '2025-03-04 08:59:01', '2025-03-04 08:59:01'),
(28, 10, 0, 0, 0, 0, '2025-03-04 09:09:44', '2025-03-04 09:09:44'),
(29, 10, 0, 0, 0, 0, '2025-03-04 09:09:44', '2025-03-04 09:09:44'),
(30, 10, 0, 0, 0, 0, '2025-03-04 09:09:44', '2025-03-04 09:09:44'),
(31, 11, 0, 0, 0, 0, '2025-03-04 09:10:18', '2025-03-04 09:10:18'),
(32, 11, 0, 0, 0, 0, '2025-03-04 09:10:18', '2025-03-04 09:10:18'),
(33, 11, 0, 0, 0, 0, '2025-03-04 09:10:18', '2025-03-04 09:10:18'),
(34, 12, 0, 0, 0, 0, '2025-03-04 09:16:46', '2025-03-04 09:16:46'),
(35, 12, 0, 0, 0, 0, '2025-03-04 09:16:46', '2025-03-04 09:16:46'),
(36, 12, 0, 0, 0, 0, '2025-03-04 09:16:46', '2025-03-04 09:16:46'),
(37, 13, 0, 0, 0, 0, '2025-03-04 09:19:05', '2025-03-04 09:19:05'),
(38, 13, 0, 0, 0, 0, '2025-03-04 09:19:05', '2025-03-04 09:19:05'),
(39, 13, 0, 0, 0, 0, '2025-03-04 09:19:05', '2025-03-04 09:19:05'),
(40, 14, 0, 0, 0, 0, '2025-03-04 09:45:52', '2025-03-04 09:45:52'),
(41, 14, 0, 0, 0, 0, '2025-03-04 09:45:52', '2025-03-04 09:45:52'),
(42, 14, 0, 0, 0, 0, '2025-03-04 09:45:52', '2025-03-04 09:45:52'),
(43, 15, 0, 0, 0, 0, '2025-03-04 09:47:53', '2025-03-04 09:47:53'),
(44, 15, 0, 0, 0, 0, '2025-03-04 09:47:53', '2025-03-04 09:47:53'),
(45, 15, 0, 0, 0, 0, '2025-03-04 09:47:53', '2025-03-04 09:47:53'),
(46, 16, 0, 0, 0, 0, '2025-03-04 09:48:41', '2025-03-04 09:48:41'),
(47, 16, 0, 0, 0, 0, '2025-03-04 09:48:41', '2025-03-04 09:48:41'),
(48, 16, 0, 0, 0, 0, '2025-03-04 09:48:41', '2025-03-04 09:48:41'),
(49, 17, 0, 0, 0, 0, '2025-03-04 09:54:06', '2025-03-04 09:54:06'),
(50, 17, 0, 0, 0, 0, '2025-03-04 09:54:06', '2025-03-04 09:54:06'),
(51, 17, 0, 0, 0, 0, '2025-03-04 09:54:06', '2025-03-04 09:54:06'),
(52, 18, 0, 0, 0, 0, '2025-03-04 10:00:32', '2025-03-04 10:00:32'),
(53, 18, 0, 0, 0, 0, '2025-03-04 10:00:32', '2025-03-04 10:00:32'),
(54, 18, 0, 0, 0, 0, '2025-03-04 10:00:32', '2025-03-04 10:00:32'),
(55, 19, 0, 0, 0, 0, '2025-03-04 10:03:29', '2025-03-04 10:03:29'),
(56, 19, 0, 0, 0, 0, '2025-03-04 10:03:29', '2025-03-04 10:03:29'),
(57, 19, 0, 0, 0, 0, '2025-03-04 10:03:29', '2025-03-04 10:03:29'),
(58, 20, 0, 0, 0, 0, '2025-03-04 10:04:16', '2025-03-04 10:04:16'),
(59, 20, 0, 0, 0, 0, '2025-03-04 10:04:16', '2025-03-04 10:04:16'),
(60, 20, 0, 0, 0, 0, '2025-03-04 10:04:16', '2025-03-04 10:04:16'),
(61, 21, 0, 0, 0, 0, '2025-03-04 10:05:56', '2025-03-04 10:05:56'),
(62, 21, 0, 0, 0, 0, '2025-03-04 10:05:56', '2025-03-04 10:05:56'),
(63, 21, 0, 0, 0, 0, '2025-03-04 10:05:56', '2025-03-04 10:05:56'),
(64, 22, 0, 0, 0, 0, '2025-03-04 10:15:33', '2025-03-04 10:15:33'),
(65, 22, 0, 0, 0, 0, '2025-03-04 10:15:33', '2025-03-04 10:15:33'),
(66, 22, 0, 0, 0, 0, '2025-03-04 10:15:33', '2025-03-04 10:15:33'),
(67, 23, 0, 0, 0, 0, '2025-03-04 10:20:29', '2025-03-04 10:20:29'),
(68, 23, 0, 0, 0, 0, '2025-03-04 10:20:29', '2025-03-04 10:20:29'),
(69, 23, 0, 0, 0, 0, '2025-03-04 10:20:29', '2025-03-04 10:20:29'),
(70, 24, 0, 0, 0, 0, '2025-03-04 10:33:39', '2025-03-04 10:33:39'),
(71, 24, 0, 0, 0, 0, '2025-03-04 10:33:39', '2025-03-04 10:33:39'),
(72, 24, 0, 0, 0, 0, '2025-03-04 10:33:39', '2025-03-04 10:33:39');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_types`
--

INSERT INTO `supplier_types` (`id`, `name`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Distributor', 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'Whole Seller', 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'Broker', 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'Distributor', 1, '2025-03-04 06:17:50', '2025-03-04 06:17:50'),
(5, 'Whole Seller', 1, '2025-03-04 06:17:50', '2025-03-04 06:17:50'),
(6, 'Broker', 1, '2025-03-04 06:17:50', '2025-03-04 06:17:50'),
(7, 'Distributor', 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(8, 'Whole Seller', 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(9, 'Broker', 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(10, 'Distributor', 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(11, 'Whole Seller', 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(12, 'Broker', 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(13, 'Distributor', 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(14, 'Whole Seller', 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(15, 'Broker', 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `description`, `upload_id`, `rating`, `status`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(3, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(4, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(5, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(6, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(7, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(8, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(9, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(10, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(11, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(12, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(13, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(14, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(15, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transection_information`
--

INSERT INTO `transection_information` (`id`, `payment_method_id`, `user_id`, `location_id`, `order_id`, `name`, `email`, `phone`, `address`, `status`, `mer_txnid`, `currency`, `ip_address`, `by_method`, `description`, `tnx_id_by_user`, `amount`, `store_amount`, `service_charge`, `payment_charge`, `all_response`, `secret`, `PayerID`, `token`, `client_id`, `updater`, `creator`, `created_at`, `updated_at`) VALUES
(1, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6b8ec82512', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 08:25:16', '2025-03-04 08:25:16'),
(2, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6bf9c7b185', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 08:53:48', '2025-03-04 08:53:48'),
(3, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6c0d9e59fa', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 08:59:05', '2025-03-04 08:59:05'),
(4, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6c4bab5d8a', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:15:38', '2025-03-04 09:15:38'),
(5, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6c5038adf2', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:16:51', '2025-03-04 09:16:51'),
(6, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6c58e084ad', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:19:10', '2025-03-04 09:19:10'),
(7, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6c5c37e1db', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:20:03', '2025-03-04 09:20:03'),
(8, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6c62b945ab', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:21:47', '2025-03-04 09:21:47'),
(9, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6c6aa07d13', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:23:54', '2025-03-04 09:23:54'),
(10, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'success', '67c6c8190d32e', 'BDT', NULL, 'NAGAD-Nagad', 'example', NULL, '100', '100.00', NULL, '0', '{\"tran_id\":\"67c6c8190d32e\",\"val_id\":\"25030415301002vckwdrboKfkGy\",\"amount\":\"100.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"97.50\",\"card_no\":null,\"bank_tran_id\":\"2503041530100AxPqu749iVNfiQ\",\"status\":\"VALID\",\"tran_date\":\"2025-03-04 15:30:01\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"dengr6606dde118f61\",\"verify_sign\":\"09b4b1d1b374c76c82e52daec8c51350\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"71609a6e4669ae7fab546b8091732b660df7a0b0810414dc628ed5f7dbf26100\",\"currency_type\":\"BDT\",\"currency_amount\":\"100.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"ref001\",\"value_b\":\"ref002\",\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:30:01', '2025-03-04 09:30:17'),
(11, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'success', '67c6cbd69394c', 'BDT', NULL, 'NAGAD-Nagad', 'example', NULL, '100', '100.00', NULL, '0', '{\"tran_id\":\"67c6cbd69394c\",\"val_id\":\"2503041546251GddtrVt3wBG2cN\",\"amount\":\"100.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"97.50\",\"card_no\":null,\"bank_tran_id\":\"2503041546250WzS3eeMyXcQtiq\",\"status\":\"VALID\",\"tran_date\":\"2025-03-04 15:45:58\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"dengr6606dde118f61\",\"verify_sign\":\"cd476326e5ab07a53e50a298c409d253\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"79215195cf7d6e346398f0b61e10f4c2bf38ed33b841b4956649b9b718d70bb1\",\"currency_type\":\"BDT\",\"currency_amount\":\"100.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"ref001\",\"value_b\":\"ref002\",\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\",\"\\/sslcommerz\\/success\":null}', NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 09:45:58', '2025-03-04 09:46:28'),
(12, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6d024a9e3c', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', '0', '2025-03-04 10:04:20', '2025-03-04 10:04:20'),
(13, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '67c6d0ad9b94e', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', '0', '2025-03-04 10:06:37', '2025-03-04 10:06:37'),
(14, 0, '0', '14', '21', 'Hanae Morrow', 'malubyqula@mailinator.com', '+1 (228) 958-1862', 'example', 'success', '67c6d14203979', 'BDT', NULL, 'NAGAD-Nagad', '', NULL, '185', '185.00', NULL, '0', '{\"tran_id\":\"67c6d14203979\",\"val_id\":\"250304160944UrH2QTo4MtDwr9K\",\"amount\":\"185.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"180.38\",\"card_no\":null,\"bank_tran_id\":\"250304160944K7MpRgKnjMyuwOV\",\"status\":\"VALID\",\"tran_date\":\"2025-03-04 16:09:06\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"dengr6606dde118f61\",\"verify_sign\":\"e7487386ed44a671af4a811f91d2c53c\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"2e191c584668021f38fb753e435acec4f8796690245c9b375d6e02420c2e586c\",\"currency_type\":\"BDT\",\"currency_amount\":\"185.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"ref001\",\"value_b\":\"ref002\",\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\",\"\\/sslcommerz\\/success\":null}', NULL, NULL, NULL, NULL, '0', '0', '2025-03-04 10:09:06', '2025-03-04 10:09:47'),
(15, 0, '0', '15', '22', 'Cameron Baxter', 'ruxi@mailinator.com', '+1 (524) 675-1288', 'example', 'success', '67c6d2ccb4779', 'BDT', NULL, 'NAGAD-Nagad', 'Asperiores commodo a', NULL, '185', '185.00', NULL, '0', '{\"tran_id\":\"67c6d2ccb4779\",\"val_id\":\"2503041615481yw2S6HKmwEVcYH\",\"amount\":\"185.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"180.38\",\"card_no\":null,\"bank_tran_id\":\"2503041615481Gg56mkjuBmtyoD\",\"status\":\"VALID\",\"tran_date\":\"2025-03-04 16:15:40\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"dengr6606dde118f61\",\"verify_sign\":\"914e683db827658d972be11ca8836f1a\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"ad7c3822a01404c937bd3c1d84c88dc3eff2bb0c066c3530b95007586bc9dc73\",\"currency_type\":\"BDT\",\"currency_amount\":\"185.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"ref001\",\"value_b\":\"ref002\",\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\",\"\\/sslcommerz\\/success\":null}', NULL, NULL, NULL, NULL, '0', '0', '2025-03-04 10:15:40', '2025-03-04 10:15:51'),
(16, 0, '0', '15', '23', 'Cameron Baxter', 'ruxi@mailinator.com', '+1 (524) 675-1288', 'example', 'success', '67c6d3f236298', 'BDT', NULL, 'NAGAD-Nagad', '', NULL, '235', '235.00', NULL, '0', '{\"tran_id\":\"67c6d3f236298\",\"val_id\":\"2503041620410KCcrlsxMqSoqxr\",\"amount\":\"235.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"229.13\",\"card_no\":null,\"bank_tran_id\":\"250304162041LJHwsrhRCy28C75\",\"status\":\"VALID\",\"tran_date\":\"2025-03-04 16:20:34\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"dengr6606dde118f61\",\"verify_sign\":\"dd99e1b68e81a3a5398cc5290baecb5b\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"963e5f9ef2b960e10e214c36a5758606478edb68c29bdbaba0d5ec50ee6893ca\",\"currency_type\":\"BDT\",\"currency_amount\":\"235.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"ref001\",\"value_b\":\"ref002\",\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\",\"\\/sslcommerz\\/success\":null}', NULL, NULL, NULL, NULL, '0', '0', '2025-03-04 10:20:34', '2025-03-04 10:20:44'),
(17, 0, '0', '15', '24', 'Cameron Baxter', 'ruxi@mailinator.com', '+1 (524) 675-1288', 'example', 'success', '67c6e1b2f27c4', 'BDT', NULL, 'DBBLMOBILEB-Dbbl Mobile Banking', '', NULL, '185', '185.00', NULL, '0', '{\"tran_id\":\"67c6e1b2f27c4\",\"val_id\":\"2503041719211wZ5LKbsIAGjcZT\",\"amount\":\"185.00\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"180.38\",\"card_no\":null,\"bank_tran_id\":\"25030417192109LtUpoeE8YT8Sv\",\"status\":\"VALID\",\"tran_date\":\"2025-03-04 17:19:15\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"dengr6606dde118f61\",\"verify_sign\":\"5e8eaccfc27746243242daf40299bb78\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"219df6d8539665150f112c21ab9dd2a180c6fd598f5b1c1e6867527e1be5ba1a\",\"currency_type\":\"BDT\",\"currency_amount\":\"185.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"ref001\",\"value_b\":\"ref002\",\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\",\"\\/sslcommerz\\/success\":null}', NULL, NULL, NULL, NULL, '1', '1', '2025-03-04 11:19:15', '2025-03-04 11:19:24');

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
) ENGINE=MyISAM AUTO_INCREMENT=1791 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(2, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(3, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(4, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(5, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(6, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(7, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(8, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(9, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(10, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(11, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(12, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(13, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(14, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(15, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(16, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(17, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(18, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(19, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(20, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(21, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(22, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(23, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(24, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(25, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(26, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(27, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(28, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(29, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(30, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(31, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(32, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(33, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(34, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(35, 'setting.sidebar.list', 1, 'System Settings', 'setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(36, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(37, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(38, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(39, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(40, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(41, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(42, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(43, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(44, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(45, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(46, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(47, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(48, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(49, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(50, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(51, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(52, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(53, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(54, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(55, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(56, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(57, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(58, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(59, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(60, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(61, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(62, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(63, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(64, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(65, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(66, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(67, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(68, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(69, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(70, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(71, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(72, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(73, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(74, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(75, 'main-setting.app_address', 1, 'App Address', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(76, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(77, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(78, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(79, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(80, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(81, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(82, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(83, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(84, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(85, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(86, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(87, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(88, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(89, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(90, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(91, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(92, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(93, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(94, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(95, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(96, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(97, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(98, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-03-02 09:19:06', '2025-03-02 09:19:06'),
(99, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(100, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(101, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(102, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(103, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(104, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(105, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(106, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(107, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(108, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(109, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(110, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(111, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(112, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(113, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(114, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(115, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(116, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(117, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(118, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(119, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(120, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(121, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(122, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(123, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(124, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(125, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(126, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(127, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(128, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(129, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(130, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(131, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(132, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(133, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(134, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(135, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(136, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(137, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(138, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(139, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(140, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(141, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(142, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(143, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(144, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(145, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(146, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(147, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(148, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(149, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(150, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(151, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(152, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(153, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(154, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(155, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(156, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(157, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(158, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(159, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(160, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(161, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(162, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(163, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(164, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(165, 'header_style.show_filter_offer_product_status', 1, 'Filter Offer Product Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(166, 'header_style.show_filter_feature_product_status', 1, 'Filter Feature Product Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(167, 'header_style.show_filter_by_rating_status', 1, 'Filter Rating Product Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(168, 'header_style.show_filter_by_brand_status', 1, 'Filter Brand Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(169, 'header_style.show_filter_by_price_status', 1, 'Filter Price Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(170, 'header_style.show_filter_by_category_status', 1, 'Filter Category Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(171, 'header_style.header_style_button_box_status', 1, 'Navbar Button Box Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(172, 'header_style.category_wise_filter_status', 1, 'Header Category Wise Filter Status', 'header_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(173, 'sidebar.Footer_Style', 1, 'Footer Status', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(174, 'sidebar.Header_Style', 1, 'Header Status', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(175, 'sidebar.variant_part_status', 1, 'Variant Part Status', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(176, 'variant_part_status.contact_style1_map_status', 1, 'Contact form maps Status', 'variant_part_status', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(177, 'frontend.follow_us', 1, 'Contact form maps Status', 'frontend', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(178, 'footer_style.footer_payment_method_image', 1, 'Footer Style 2 Payment Method Image', 'footer_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(179, 'footer_style.footer_style1_status', 1, 'Footer Style 1 Status', 'footer_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(180, 'footer_style.footer_style2_status', 1, 'Footer Style 2 Status', 'footer_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(181, 'footer_style.footer_payment_method_status', 1, 'Footer style 2 payment method image Status', 'footer_style', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(182, 'settings.footer_style', 1, 'Footer style Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(183, 'settings.header_style', 1, 'Header style Settings', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(184, 'settings.variant_part_status', 1, 'Variant Part Status', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(185, 'takto-messageing-management.livechatinc_chat_status', 1, 'Livechatinc Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(186, 'takto-messageing-management.livechatinc_chat_id', 1, 'Livechatinc Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(187, 'takto-messageing-management.intercom_chat_status', 1, 'Intercom Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(188, 'takto-messageing-management.intercom_chat_id', 1, 'Intercom Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(189, 'takto-messageing-management.tidio_chat_status', 1, 'Tidio Chat  status', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(190, 'takto-messageing-management.tidio_chat_public_key', 1, 'Tidio Chat  public key', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(191, 'takto-messageing-management.chat_status', 1, ' Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(192, 'takto-messageing-management.tiledesk_chat_id', 1, 'Tidedesk chat id', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(193, 'takto-messageing-management.tiledesk_chat_status', 1, 'Tidedesk chat status', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(194, 'sidebar.maintanance', 1, 'Maintenance Mode', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(195, 'tracking_report.bd_courier_tracking_id', 1, 'Courier Tracking Id', 'tracking_report', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(196, 'tracking_report.bd_courier_tracking_status', 1, 'Courier Tracking  Status', 'tracking_report', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(197, 'frontend.order_success', 1, 'Success', 'frontend', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(198, 'order.success_text', 1, 'Successfully Received your Order. Keep With Us.', 'order', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(199, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(200, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(201, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(202, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(203, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(204, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(205, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(206, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(207, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(208, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(209, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(210, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(211, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(212, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(213, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(214, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(215, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(216, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(217, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(218, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(219, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(220, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(221, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(222, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(223, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(224, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(225, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(226, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(227, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(228, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(229, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(230, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(231, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(232, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(233, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(234, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(235, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(236, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(237, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(238, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(239, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(240, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(241, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(242, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(243, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(244, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(245, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(246, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(247, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(248, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(249, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(250, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(251, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(252, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(253, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(254, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(255, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(256, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(257, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(258, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(259, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(260, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(261, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(262, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(263, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(264, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(265, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(266, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(267, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(268, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(269, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(270, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(271, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(272, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(273, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(274, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(275, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(276, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(277, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(278, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(279, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(280, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(281, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(282, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(283, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(284, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(285, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(286, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(287, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(288, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(289, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(290, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(291, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(292, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(293, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(294, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(295, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(296, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(297, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(298, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(299, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(300, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(301, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(302, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(303, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(304, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(305, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(306, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(307, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(308, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(309, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(310, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(311, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(312, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(313, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(314, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(315, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(316, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(317, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(318, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(319, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(320, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(321, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(322, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(323, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(324, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(325, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(326, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(327, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(328, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(329, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(330, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(331, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(332, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(333, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(334, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(335, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(336, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(337, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(338, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(339, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(340, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(341, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(342, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(343, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(344, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(345, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(346, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(347, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(348, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(349, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(350, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(351, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(352, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(353, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(354, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(355, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(356, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(357, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(358, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-03-02 09:19:07', '2025-03-02 09:19:07'),
(359, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(360, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(361, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(362, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(363, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(364, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(365, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(366, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(367, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(368, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(369, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(370, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(371, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(372, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(373, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(374, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(375, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(376, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(377, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(378, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(379, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(380, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(381, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(382, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(383, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(384, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(385, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(386, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(387, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(388, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(389, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(390, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(391, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(392, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(393, 'setting.sidebar.list', 1, 'System Settings', 'setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(394, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(395, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(396, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(397, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(398, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(399, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(400, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(401, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(402, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(403, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(404, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(405, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(406, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(407, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(408, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(409, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(410, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(411, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(412, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(413, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(414, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(415, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(416, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(417, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(418, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(419, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(420, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(421, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(422, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(423, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(424, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(425, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(426, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(427, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(428, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(429, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(430, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(431, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(432, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(433, 'main-setting.app_address', 1, 'App Address', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(434, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(435, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(436, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(437, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(438, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(439, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(440, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(441, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(442, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(443, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(444, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(445, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(446, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(447, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(448, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(449, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(450, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(451, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(452, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(453, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(454, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(455, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(456, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(457, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(458, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(459, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(460, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(461, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(462, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(463, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(464, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(465, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(466, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(467, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(468, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(469, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(470, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(471, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(472, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(473, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(474, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(475, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(476, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(477, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(478, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(479, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(480, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(481, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(482, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(483, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(484, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(485, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(486, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(487, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(488, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(489, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(490, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(491, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(492, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(493, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(494, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(495, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(496, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(497, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(498, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(499, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(500, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(501, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(502, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(503, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(504, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(505, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(506, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(507, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(508, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(509, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(510, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(511, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(512, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(513, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(514, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(515, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(516, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(517, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(518, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(519, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(520, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(521, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(522, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(523, 'header_style.show_filter_offer_product_status', 1, 'Filter Offer Product Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(524, 'header_style.show_filter_feature_product_status', 1, 'Filter Feature Product Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(525, 'header_style.show_filter_by_rating_status', 1, 'Filter Rating Product Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(526, 'header_style.show_filter_by_brand_status', 1, 'Filter Brand Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(527, 'header_style.show_filter_by_price_status', 1, 'Filter Price Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(528, 'header_style.show_filter_by_category_status', 1, 'Filter Category Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(529, 'header_style.header_style_button_box_status', 1, 'Navbar Button Box Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(530, 'header_style.category_wise_filter_status', 1, 'Header Category Wise Filter Status', 'header_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(531, 'sidebar.Footer_Style', 1, 'Footer Status', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(532, 'sidebar.Header_Style', 1, 'Header Status', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(533, 'sidebar.variant_part_status', 1, 'Variant Part Status', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(534, 'variant_part_status.contact_style1_map_status', 1, 'Contact form maps Status', 'variant_part_status', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(535, 'frontend.follow_us', 1, 'Contact form maps Status', 'frontend', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(536, 'footer_style.footer_payment_method_image', 1, 'Footer Style 2 Payment Method Image', 'footer_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(537, 'footer_style.footer_style1_status', 1, 'Footer Style 1 Status', 'footer_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(538, 'footer_style.footer_style2_status', 1, 'Footer Style 2 Status', 'footer_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(539, 'footer_style.footer_payment_method_status', 1, 'Footer style 2 payment method image Status', 'footer_style', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(540, 'settings.footer_style', 1, 'Footer style Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(541, 'settings.header_style', 1, 'Header style Settings', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(542, 'settings.variant_part_status', 1, 'Variant Part Status', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(543, 'takto-messageing-management.livechatinc_chat_status', 1, 'Livechatinc Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(544, 'takto-messageing-management.livechatinc_chat_id', 1, 'Livechatinc Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(545, 'takto-messageing-management.intercom_chat_status', 1, 'Intercom Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(546, 'takto-messageing-management.intercom_chat_id', 1, 'Intercom Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(547, 'takto-messageing-management.tidio_chat_status', 1, 'Tidio Chat  status', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(548, 'takto-messageing-management.tidio_chat_public_key', 1, 'Tidio Chat  public key', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(549, 'takto-messageing-management.chat_status', 1, ' Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(550, 'takto-messageing-management.tiledesk_chat_id', 1, 'Tidedesk chat id', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(551, 'takto-messageing-management.tiledesk_chat_status', 1, 'Tidedesk chat status', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(552, 'sidebar.maintanance', 1, 'Maintenance Mode', 'sidebar', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(553, 'tracking_report.bd_courier_tracking_id', 1, 'Courier Tracking Id', 'tracking_report', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(554, 'tracking_report.bd_courier_tracking_status', 1, 'Courier Tracking  Status', 'tracking_report', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(555, 'frontend.order_success', 1, 'Success', 'frontend', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(556, 'order.success_text', 1, 'Successfully Received your Order. Keep With Us.', 'order', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(557, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(558, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(559, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(560, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-03-04 06:17:52', '2025-03-04 06:17:52'),
(561, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(562, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(563, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(564, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(565, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(566, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(567, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(568, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(569, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(570, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(571, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(572, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(573, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(574, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(575, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(576, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(577, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(578, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(579, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(580, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(581, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(582, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(583, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(584, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(585, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(586, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(587, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(588, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(589, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(590, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(591, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(592, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(593, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(594, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(595, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(596, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(597, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(598, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(599, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(600, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(601, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(602, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(603, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(604, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(605, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(606, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(607, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(608, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(609, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(610, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(611, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(612, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(613, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(614, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(615, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(616, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(617, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(618, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(619, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(620, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(621, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(622, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(623, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(624, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(625, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(626, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(627, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(628, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(629, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(630, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(631, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(632, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(633, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(634, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(635, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(636, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(637, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(638, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(639, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(640, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(641, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(642, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(643, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(644, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(645, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(646, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(647, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(648, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(649, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(650, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(651, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(652, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(653, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(654, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(655, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(656, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(657, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(658, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(659, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(660, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(661, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(662, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(663, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(664, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(665, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(666, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(667, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(668, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(669, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(670, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(671, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(672, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(673, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(674, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(675, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(676, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(677, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(678, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(679, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(680, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(681, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(682, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(683, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(684, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(685, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(686, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(687, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(688, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(689, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(690, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(691, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(692, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(693, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(694, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-03-04 06:17:53', '2025-03-04 06:17:53'),
(695, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(696, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(697, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(698, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(699, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(700, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(701, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(702, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(703, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(704, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(705, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(706, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(707, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(708, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(709, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(710, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(711, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(712, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(713, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(714, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(715, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(716, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-03-04 06:17:54', '2025-03-04 06:17:54'),
(717, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(718, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(719, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(720, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(721, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(722, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(723, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(724, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(725, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(726, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(727, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(728, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(729, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(730, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(731, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(732, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(733, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(734, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(735, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(736, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(737, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(738, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(739, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(740, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(741, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(742, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(743, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(744, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(745, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(746, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(747, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(748, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(749, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(750, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(751, 'setting.sidebar.list', 1, 'System Settings', 'setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(752, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(753, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(754, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(755, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(756, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(757, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(758, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(759, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(760, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(761, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(762, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(763, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(764, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(765, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(766, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(767, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(768, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(769, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(770, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(771, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(772, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(773, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(774, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(775, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(776, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(777, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(778, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-03-04 10:41:57', '2025-03-04 10:41:57'),
(779, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(780, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(781, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(782, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(783, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(784, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(785, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(786, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(787, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(788, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(789, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(790, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(791, 'main-setting.app_address', 1, 'App Address', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(792, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(793, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(794, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(795, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(796, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(797, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(798, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(799, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(800, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(801, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(802, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(803, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(804, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(805, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(806, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(807, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(808, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(809, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(810, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(811, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(812, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(813, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(814, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(815, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(816, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(817, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(818, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(819, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(820, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(821, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(822, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(823, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(824, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(825, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(826, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(827, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(828, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(829, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(830, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(831, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(832, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(833, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(834, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(835, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(836, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(837, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(838, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(839, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(840, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(841, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(842, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(843, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(844, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(845, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(846, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(847, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(848, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(849, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(850, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(851, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(852, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(853, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(854, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(855, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(856, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(857, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(858, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(859, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(860, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(861, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(862, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(863, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(864, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(865, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(866, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(867, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(868, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(869, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(870, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(871, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(872, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(873, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(874, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(875, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(876, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(877, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(878, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(879, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(880, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(881, 'header_style.show_filter_offer_product_status', 1, 'Filter Offer Product Status', 'header_style', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(882, 'header_style.show_filter_feature_product_status', 1, 'Filter Feature Product Status', 'header_style', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(883, 'header_style.show_filter_by_rating_status', 1, 'Filter Rating Product Status', 'header_style', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(884, 'header_style.show_filter_by_brand_status', 1, 'Filter Brand Status', 'header_style', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(885, 'header_style.show_filter_by_price_status', 1, 'Filter Price Status', 'header_style', NULL, 0, '2025-03-04 10:41:58', '2025-03-04 10:41:58'),
(886, 'header_style.show_filter_by_category_status', 1, 'Filter Category Status', 'header_style', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(887, 'header_style.header_style_button_box_status', 1, 'Navbar Button Box Status', 'header_style', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(888, 'header_style.category_wise_filter_status', 1, 'Header Category Wise Filter Status', 'header_style', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(889, 'sidebar.Footer_Style', 1, 'Footer Status', 'sidebar', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(890, 'sidebar.Header_Style', 1, 'Header Status', 'sidebar', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(891, 'sidebar.variant_part_status', 1, 'Variant Part Status', 'sidebar', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(892, 'variant_part_status.contact_style1_map_status', 1, 'Contact form maps Status', 'variant_part_status', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(893, 'frontend.follow_us', 1, 'Contact form maps Status', 'frontend', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(894, 'footer_style.footer_payment_method_image', 1, 'Footer Style 2 Payment Method Image', 'footer_style', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(895, 'footer_style.footer_style1_status', 1, 'Footer Style 1 Status', 'footer_style', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(896, 'footer_style.footer_style2_status', 1, 'Footer Style 2 Status', 'footer_style', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(897, 'footer_style.footer_payment_method_status', 1, 'Footer style 2 payment method image Status', 'footer_style', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(898, 'settings.footer_style', 1, 'Footer style Settings', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(899, 'settings.header_style', 1, 'Header style Settings', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(900, 'settings.variant_part_status', 1, 'Variant Part Status', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(901, 'takto-messageing-management.livechatinc_chat_status', 1, 'Livechatinc Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(902, 'takto-messageing-management.livechatinc_chat_id', 1, 'Livechatinc Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(903, 'takto-messageing-management.intercom_chat_status', 1, 'Intercom Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(904, 'takto-messageing-management.intercom_chat_id', 1, 'Intercom Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(905, 'takto-messageing-management.tidio_chat_status', 1, 'Tidio Chat  status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(906, 'takto-messageing-management.tidio_chat_public_key', 1, 'Tidio Chat  public key', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(907, 'takto-messageing-management.chat_status', 1, ' Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(908, 'takto-messageing-management.tiledesk_chat_id', 1, 'Tidedesk chat id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(909, 'takto-messageing-management.tiledesk_chat_status', 1, 'Tidedesk chat status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(910, 'sidebar.maintanance', 1, 'Maintenance Mode', 'sidebar', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(911, 'tracking_report.bd_courier_tracking_id', 1, 'Courier Tracking Id', 'tracking_report', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(912, 'tracking_report.bd_courier_tracking_status', 1, 'Courier Tracking  Status', 'tracking_report', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(913, 'frontend.order_success', 1, 'Success', 'frontend', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(914, 'order.success_text', 1, 'Successfully Received your Order. Keep With Us.', 'order', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(915, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(916, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(917, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(918, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(919, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(920, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(921, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(922, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(923, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(924, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(925, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(926, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(927, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(928, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(929, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(930, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(931, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(932, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(933, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(934, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(935, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(936, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(937, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(938, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(939, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(940, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(941, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(942, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(943, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(944, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(945, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(946, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(947, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(948, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(949, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(950, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(951, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(952, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(953, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(954, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(955, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(956, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(957, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(958, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(959, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(960, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(961, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(962, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(963, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(964, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(965, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(966, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(967, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(968, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(969, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(970, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(971, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(972, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(973, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(974, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(975, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(976, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(977, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(978, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(979, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(980, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(981, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(982, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(983, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(984, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(985, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(986, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(987, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(988, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(989, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(990, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(991, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:41:59', '2025-03-04 10:41:59'),
(992, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(993, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(994, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(995, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(996, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(997, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(998, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(999, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1000, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1001, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1002, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1003, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1004, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1005, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1006, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1007, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1008, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1009, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1010, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1011, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1012, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1013, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1014, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1015, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1016, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1017, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1018, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1019, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1020, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1021, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1022, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1023, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1024, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1025, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1026, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1027, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1028, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1029, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1030, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1031, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1032, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1033, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1034, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1035, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1036, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1037, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1038, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1039, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1040, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1041, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1042, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1043, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1044, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1045, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1046, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1047, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1048, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1049, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1050, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1051, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1052, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1053, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1054, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1055, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1056, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1057, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1058, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1059, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1060, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1061, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1062, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1063, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1064, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1065, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1066, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1067, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1068, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1069, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1070, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1071, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1072, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1073, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1074, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-03-04 10:42:00', '2025-03-04 10:42:00'),
(1075, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1076, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1077, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1078, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1079, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1080, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1081, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1082, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1083, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1084, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1085, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1086, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1087, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1088, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1089, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1090, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1091, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1092, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1093, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1094, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1095, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1096, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1097, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1098, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1099, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1100, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1101, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1102, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1103, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1104, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1105, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1106, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1107, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1108, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1109, 'setting.sidebar.list', 1, 'System Settings', 'setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1110, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1111, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1112, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1113, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1114, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1115, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1116, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1117, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1118, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1119, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1120, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1121, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1122, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1123, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1124, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1125, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1126, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1127, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1128, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1129, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1130, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1131, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1132, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1133, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1134, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1135, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1136, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1137, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1138, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1139, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1140, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1141, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1142, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1143, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1144, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1145, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1146, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1147, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1148, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1149, 'main-setting.app_address', 1, 'App Address', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1150, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(1151, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1152, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1153, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1154, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1155, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1156, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1157, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1158, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1159, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1160, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1161, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1162, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1163, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1164, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1165, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1166, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1167, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1168, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1169, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1170, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1171, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1172, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1173, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1174, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1175, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1176, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1177, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1178, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1179, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1180, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1181, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1182, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1183, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1184, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1185, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1186, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1187, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1188, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1189, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1190, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1191, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1192, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1193, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1194, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1195, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1196, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1197, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1198, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1199, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1200, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1201, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1202, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1203, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1204, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1205, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1206, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1207, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1208, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1209, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1210, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1211, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1212, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1213, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1214, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1215, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1216, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1217, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1218, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1219, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1220, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1221, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1222, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1223, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1224, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1225, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1226, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1227, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1228, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1229, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1230, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1231, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1232, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1233, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1234, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1235, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1236, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1237, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1238, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1239, 'header_style.show_filter_offer_product_status', 1, 'Filter Offer Product Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1240, 'header_style.show_filter_feature_product_status', 1, 'Filter Feature Product Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1241, 'header_style.show_filter_by_rating_status', 1, 'Filter Rating Product Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1242, 'header_style.show_filter_by_brand_status', 1, 'Filter Brand Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1243, 'header_style.show_filter_by_price_status', 1, 'Filter Price Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1244, 'header_style.show_filter_by_category_status', 1, 'Filter Category Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1245, 'header_style.header_style_button_box_status', 1, 'Navbar Button Box Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1246, 'header_style.category_wise_filter_status', 1, 'Header Category Wise Filter Status', 'header_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1247, 'sidebar.Footer_Style', 1, 'Footer Status', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1248, 'sidebar.Header_Style', 1, 'Header Status', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1249, 'sidebar.variant_part_status', 1, 'Variant Part Status', 'sidebar', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1250, 'variant_part_status.contact_style1_map_status', 1, 'Contact form maps Status', 'variant_part_status', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1251, 'frontend.follow_us', 1, 'Contact form maps Status', 'frontend', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1252, 'footer_style.footer_payment_method_image', 1, 'Footer Style 2 Payment Method Image', 'footer_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1253, 'footer_style.footer_style1_status', 1, 'Footer Style 1 Status', 'footer_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1254, 'footer_style.footer_style2_status', 1, 'Footer Style 2 Status', 'footer_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1255, 'footer_style.footer_payment_method_status', 1, 'Footer style 2 payment method image Status', 'footer_style', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1256, 'settings.footer_style', 1, 'Footer style Settings', 'settings', NULL, 0, '2025-03-04 10:42:33', '2025-03-04 10:42:33'),
(1257, 'settings.header_style', 1, 'Header style Settings', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1258, 'settings.variant_part_status', 1, 'Variant Part Status', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1259, 'takto-messageing-management.livechatinc_chat_status', 1, 'Livechatinc Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1260, 'takto-messageing-management.livechatinc_chat_id', 1, 'Livechatinc Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1261, 'takto-messageing-management.intercom_chat_status', 1, 'Intercom Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1262, 'takto-messageing-management.intercom_chat_id', 1, 'Intercom Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1263, 'takto-messageing-management.tidio_chat_status', 1, 'Tidio Chat  status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1264, 'takto-messageing-management.tidio_chat_public_key', 1, 'Tidio Chat  public key', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1265, 'takto-messageing-management.chat_status', 1, ' Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1266, 'takto-messageing-management.tiledesk_chat_id', 1, 'Tidedesk chat id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1267, 'takto-messageing-management.tiledesk_chat_status', 1, 'Tidedesk chat status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1268, 'sidebar.maintanance', 1, 'Maintenance Mode', 'sidebar', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1269, 'tracking_report.bd_courier_tracking_id', 1, 'Courier Tracking Id', 'tracking_report', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1270, 'tracking_report.bd_courier_tracking_status', 1, 'Courier Tracking  Status', 'tracking_report', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1271, 'frontend.order_success', 1, 'Success', 'frontend', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1272, 'order.success_text', 1, 'Successfully Received your Order. Keep With Us.', 'order', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1273, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1274, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1275, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1276, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1277, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1278, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1279, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1280, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1281, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1282, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1283, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1284, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1285, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1286, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1287, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1288, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1289, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1290, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1291, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1292, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1293, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1294, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1295, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1296, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1297, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1298, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1299, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1300, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1301, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1302, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1303, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1304, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1305, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1306, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1307, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1308, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1309, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1310, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1311, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1312, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1313, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1314, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1315, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1316, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1317, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1318, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1319, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1320, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1321, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1322, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1323, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1324, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1325, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1326, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1327, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1328, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1329, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1330, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1331, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1332, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1333, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1334, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1335, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1336, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1337, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1338, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1339, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1340, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1341, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1342, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1343, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1344, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:34', '2025-03-04 10:42:34'),
(1345, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1346, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1347, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1348, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1349, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1350, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1351, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1352, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1353, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1354, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1355, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1356, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1357, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1358, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1359, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1360, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1361, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1362, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1363, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1364, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1365, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1366, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1367, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1368, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1369, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1370, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1371, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1372, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1373, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1374, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1375, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1376, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1377, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1378, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1379, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1380, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1381, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1382, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1383, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1384, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1385, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1386, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1387, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1388, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1389, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1390, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1391, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1392, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1393, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1394, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1395, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1396, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1397, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1398, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1399, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1400, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1401, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1402, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1403, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1404, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1405, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1406, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1407, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1408, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1409, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1410, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1411, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1412, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1413, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1414, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1415, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1416, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1417, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1418, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1419, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1420, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1421, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1422, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1423, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1424, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1425, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1426, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1427, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1428, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1429, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1430, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1431, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1432, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-03-04 10:42:35', '2025-03-04 10:42:35'),
(1433, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-03-04 10:48:08', '2025-03-04 10:48:08'),
(1434, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1435, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1436, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1437, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1438, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1439, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1440, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1441, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1442, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1443, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1444, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1445, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1446, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1447, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1448, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1449, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1450, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1451, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1452, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1453, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1454, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1455, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1456, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1457, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1458, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1459, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1460, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1461, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1462, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1463, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1464, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1465, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1466, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1467, 'setting.sidebar.list', 1, 'System Settings', 'setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1468, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1469, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1470, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1471, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1472, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1473, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1474, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1475, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1476, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1477, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1478, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1479, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1480, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1481, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1482, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1483, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1484, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1485, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1486, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1487, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1488, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1489, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1490, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1491, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1492, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1493, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1494, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1495, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1496, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1497, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1498, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1499, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1500, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1501, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1502, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1503, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1504, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1505, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1506, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1507, 'main-setting.app_address', 1, 'App Address', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1508, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1509, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1510, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1511, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1512, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-03-04 10:48:09', '2025-03-04 10:48:09'),
(1513, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1514, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1515, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1516, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1517, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1518, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1519, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1520, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1521, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1522, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1523, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1524, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1525, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1526, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1527, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1528, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1529, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1530, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1531, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1532, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1533, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1534, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1535, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1536, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1537, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1538, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1539, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1540, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1541, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1542, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1543, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1544, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1545, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1546, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1547, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1548, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1549, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1550, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1551, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1552, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1553, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1554, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1555, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1556, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1557, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1558, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1559, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1560, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1561, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1562, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1563, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1564, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1565, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1566, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1567, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1568, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1569, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1570, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1571, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1572, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1573, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1574, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1575, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1576, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1577, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1578, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1579, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1580, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1581, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1582, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1583, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1584, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1585, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1586, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1587, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1588, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1589, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1590, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1591, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1592, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1593, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1594, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1595, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1596, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1597, 'header_style.show_filter_offer_product_status', 1, 'Filter Offer Product Status', 'header_style', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1598, 'header_style.show_filter_feature_product_status', 1, 'Filter Feature Product Status', 'header_style', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1599, 'header_style.show_filter_by_rating_status', 1, 'Filter Rating Product Status', 'header_style', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1600, 'header_style.show_filter_by_brand_status', 1, 'Filter Brand Status', 'header_style', NULL, 0, '2025-03-04 10:48:10', '2025-03-04 10:48:10'),
(1601, 'header_style.show_filter_by_price_status', 1, 'Filter Price Status', 'header_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1602, 'header_style.show_filter_by_category_status', 1, 'Filter Category Status', 'header_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1603, 'header_style.header_style_button_box_status', 1, 'Navbar Button Box Status', 'header_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1604, 'header_style.category_wise_filter_status', 1, 'Header Category Wise Filter Status', 'header_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1605, 'sidebar.Footer_Style', 1, 'Footer Status', 'sidebar', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1606, 'sidebar.Header_Style', 1, 'Header Status', 'sidebar', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1607, 'sidebar.variant_part_status', 1, 'Variant Part Status', 'sidebar', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1608, 'variant_part_status.contact_style1_map_status', 1, 'Contact form maps Status', 'variant_part_status', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1609, 'frontend.follow_us', 1, 'Contact form maps Status', 'frontend', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1610, 'footer_style.footer_payment_method_image', 1, 'Footer Style 2 Payment Method Image', 'footer_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1611, 'footer_style.footer_style1_status', 1, 'Footer Style 1 Status', 'footer_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1612, 'footer_style.footer_style2_status', 1, 'Footer Style 2 Status', 'footer_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1613, 'footer_style.footer_payment_method_status', 1, 'Footer style 2 payment method image Status', 'footer_style', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1614, 'settings.footer_style', 1, 'Footer style Settings', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1615, 'settings.header_style', 1, 'Header style Settings', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1616, 'settings.variant_part_status', 1, 'Variant Part Status', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1617, 'takto-messageing-management.livechatinc_chat_status', 1, 'Livechatinc Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1618, 'takto-messageing-management.livechatinc_chat_id', 1, 'Livechatinc Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1619, 'takto-messageing-management.intercom_chat_status', 1, 'Intercom Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1620, 'takto-messageing-management.intercom_chat_id', 1, 'Intercom Chat  id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1621, 'takto-messageing-management.tidio_chat_status', 1, 'Tidio Chat  status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1622, 'takto-messageing-management.tidio_chat_public_key', 1, 'Tidio Chat  public key', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1623, 'takto-messageing-management.chat_status', 1, ' Chat  Status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1624, 'takto-messageing-management.tiledesk_chat_id', 1, 'Tidedesk chat id', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1625, 'takto-messageing-management.tiledesk_chat_status', 1, 'Tidedesk chat status', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1626, 'sidebar.maintanance', 1, 'Maintenance Mode', 'sidebar', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1627, 'tracking_report.bd_courier_tracking_id', 1, 'Courier Tracking Id', 'tracking_report', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1628, 'tracking_report.bd_courier_tracking_status', 1, 'Courier Tracking  Status', 'tracking_report', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1629, 'frontend.order_success', 1, 'Success', 'frontend', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1630, 'order.success_text', 1, 'Successfully Received your Order. Keep With Us.', 'order', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1631, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1632, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1633, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1634, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1635, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1636, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1637, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1638, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1639, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1640, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1641, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1642, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1643, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1644, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1645, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1646, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1647, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1648, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1649, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1650, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1651, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1652, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1653, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1654, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1655, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1656, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1657, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1658, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1659, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1660, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1661, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1662, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1663, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1664, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1665, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1666, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1667, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-03-04 10:48:11', '2025-03-04 10:48:11'),
(1668, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1669, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1670, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1671, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1672, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1673, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1674, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1675, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1676, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1677, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1678, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1679, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1680, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1681, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1682, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1683, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1684, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1685, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1686, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1687, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1688, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1689, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1690, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1691, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1692, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1693, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1694, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1695, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1696, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1697, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1698, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1699, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1700, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1701, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1702, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1703, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1704, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1705, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1706, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1707, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1708, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1709, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1710, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1711, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1712, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1713, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1714, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1715, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1716, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1717, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1718, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1719, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1720, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1721, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1722, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1723, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1724, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1725, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1726, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1727, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1728, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1729, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1730, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1731, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1732, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1733, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:12', '2025-03-04 10:48:12'),
(1734, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1735, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1736, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1737, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1738, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1739, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1740, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1741, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1742, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1743, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1744, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1745, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1746, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1747, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1748, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1749, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1750, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1751, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1752, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1753, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1754, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1755, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1756, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1757, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1758, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1759, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1760, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1761, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1762, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1763, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1764, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1765, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1766, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1767, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1768, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1769, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1770, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1771, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-03-04 10:48:13', '2025-03-04 10:48:13'),
(1772, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1773, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1774, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1775, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1776, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1777, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1778, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1779, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1780, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1781, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1782, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1783, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1784, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1785, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1786, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1787, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1788, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1789, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14'),
(1790, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-03-04 10:48:14', '2025-03-04 10:48:14');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `extension`, `size`, `source`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'galaxy-s23-ultra_1740977245403_n6ckf9.png', 'png', NULL, 'Local', '1', '2025-03-03 04:47:25', '2025-03-03 04:47:25');

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
(1, NULL, 'Super Admin', NULL, NULL, 'superadmin', NULL, NULL, 'super-admin', NULL, NULL, '0', '1', NULL, NULL, '0', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', 'admin@gmail.com', '2025-03-02 09:18:57', '$2y$12$1QuQfvZvbWjbUgZ2hVF42OlVtkkceeCFgfKWkojMIIat3OnD4B/82', NULL, 'Co3nQ85J1V', '2025-03-02 09:18:57', '2025-03-02 09:18:57');

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
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varinat_suggessions`
--

INSERT INTO `varinat_suggessions` (`id`, `key`, `title`, `title_status`, `title_manage_status`, `sub_title`, `sub_title_status`, `sub_title_manage_status`, `short_read_more`, `short_read_more_page_url`, `short_read_more_status`, `short_read_more_manage_status`, `view_all`, `view_all_page_url`, `view_all_status`, `view_all_manage_status`, `items_per_row`, `items_per_row_status`, `items_show`, `items_manage_status`, `is_details_page`, `is_details_page_manage_status`, `background`, `background_color`, `background_type`, `background_manage_status`, `category_manage_status`, `upload_id`, `upload_id_status`, `upload_id1`, `upload_id2`, `upload_manage_status`, `upload_id3`, `upload_manage_id3_status`, `order`, `status`, `creator`, `updater`, `permission`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '_brand_variant._brand_style1', 'Brand Style 1', '0', '1', 'Brand Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/brand_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(2, '_brand_variant._brand_style2', 'Brand Style 2', '0', '1', 'Brand Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/brand_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(3, '_contact_variant._contact_style1', 'Contact Style 1', '0', '1', 'Contact Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 0, 0, 20, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/contact_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(4, '_category_variant._category_style1', 'Category Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(5, '_category_variant._category_style2', 'Category Style 2', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(6, '_category_variant._category_style3', 'Category Style 3', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(7, '_category_variant._category_style4', 'Category Style 4', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style4.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(8, '_category_variant._category_style5', 'Category Style 5', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style5.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(9, '_category_variant._category_style6', 'Category Style 6', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 3, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style6.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(10, '_hero_variant._hero_style1', 'Hero Style 1', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_style1.png', '0', '0', '0', '0', '0', '1', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(11, '_hero_variant._hero_style2', 'Hero Style 2', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(12, '_hero_variant._hero_style3', 'Hero Style 3', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(13, '_hero_variant._hero_slider1', 'Hero Slider', '0', '1', 'Hero Slider', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 1, 0, 0, '1', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_slider1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(14, '_product_variant._feature_product', 'Feature Product  Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 4, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/feature_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(15, '_product_variant._popular_product', 'Popular Product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/popular_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(16, '_product_variant._recommended_product', 'Recommended Product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/recommended_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(17, '_product_variant._recent_product', 'Recent product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/resent_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(18, '_product_variant._category_wise_product', 'Product as Category & category Wise Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 1, 1, 'preset/page_variant/category_wise_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(19, '_product_variant._randomize_product_category_wise', 'Product as Category & Random Wise Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 1, 1, 0, 'preset/page_variant/_randomize_product_category_wise.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(20, '_filter_variant.partials1.recent_product', 'Recent Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/recent_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(21, '_product_variant._category_wise_product1', 'Recent Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'preset/page_variant/_category_wise_product1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(22, '_product_cat_brand_wise._cat_band_wise_product', 'Category Brand', '0', '1', 'Category Wise Product ', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_cat_band_wise_product_lg.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(23, '_product_cat_brand_wise._cat_product_sm', 'Category Wise Product Small', '0', '1', 'Category Wise Product ', '0', '1', '#', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'preset/page_variant/_cat_band_wise_product_sm.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(24, '_service_variant._service_style1', 'Service Style 1', '1', '1', 'Service Sub Title', '1', '1', 'Read More', '#', 1, 1, 'View All', '#', 1, 1, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(25, '_service_variant._service_style2', 'Service Style 2', '1', '1', 'Service Sub Title', '1', '1', 'Read More', '#', 1, 1, 'View All', '#', 1, 1, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(26, '_service_view_variant._service_view1', 'Service View 1', '1', '1', 'Service Sub Title', '1', '1', 'Read More', '#', 1, 1, 'View All', '#', 1, 1, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(27, '_banner_card._bannar_card1', 'Banner Card 1', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(28, '_banner_card._bannar_card2', 'Banner Card 2', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(29, '_about_us_variant.about_us_style1', 'About page 1', '0', '1', 'About Us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(30, '_product_details.product_details1', 'Product Details page 1', '0', '1', 'Product Details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(31, '_filter_variant.filter_vaiant1', 'Product Filter  1', '1', '0', 'Product Filter Title', '1', '0', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 1, 0, 0, '0', '#eeeeee', 1, 1, 0, 'preset/page_variant/category_style6.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(32, '_cart_variant.cart_style1', 'Product Filter  1', '0', '1', 'Product Filter Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(33, '_wishlist_variant.wish_list_style1', 'Product wishlist  1', '0', '1', 'Product wishlist Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(34, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', '1', 'Product checkout Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(35, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', '1', 'Product tracking Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(36, '_contact_us_variant.contact_us_style1', 'Contact us  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(37, '_register_variant.register_style1', 'Register us  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(38, '_404_variant.404_style1', '404 page  1', '0', '1', 'Something went wrong', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/404_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(39, '_comming_soon.comming_soon1', 'Comming soon  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(40, '_blog_variant.blog_variant1', 'blog  1', '0', '1', 'blog Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(41, '_blog_details_variant.blog_details_variant1', 'Blog Details  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(42, '_faq_variant._faq_style1', 'Faq style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(43, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(44, '_profile._location.variant_1', 'profile location style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(45, '_profile._cart.variant_1', 'Profile cart style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(46, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(47, '_variant_manage.page_title', 'Page Title style  1', '1', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, 'preset/page_variant/page_title1.png', '1', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(48, '_variant_manage.page_title1', 'Page Title style  2', '1', '1', 'Page Title subtitle 2', '0', '0', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/page_title2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(49, '_profile._payment_information.variant_1', 'Payment Page 1', '0', '1', 'Payment Page 1', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(50, '_profile._checkout.variant_1', 'Checkout Page 1', '0', '1', 'Checkout Page 1', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(51, '_order._order_form1', 'Costom Form Bluk Order', '0', '1', 'Costom Form Bluk Order Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/custom_form_bluk_order_form1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'custom_order bulk read', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(52, '_order._order_form2', 'Custom Order', '0', '1', 'Custom Order Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/custom_order_form2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'custom_order custom read', NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(53, '_authenticate_form._login', 'Login', '0', '1', 'Login Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/custom_order_form2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(54, '_authenticate_form._registration', 'Register', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/register.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(55, '_order_success.success_style1', 'Success Page', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_order_success_success_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-02 09:19:08', '2025-03-02 09:19:08'),
(56, '_profile._checkout_payment.variant_1', 'profile location style  1', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_order_success_success_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-04 10:48:14', '2025-03-04 10:48:14');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vats`
--

INSERT INTO `vats` (`id`, `name`, `type`, `status`, `amount`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Include Vat', '0', '1', '0', '1', '2025-03-02 09:18:55', '2025-03-02 09:18:55'),
(2, 'Include Vat', '0', '1', '0', '1', '2025-03-04 06:17:51', '2025-03-04 06:17:51'),
(3, 'Include Vat', '0', '1', '0', '1', '2025-03-04 10:41:56', '2025-03-04 10:41:56'),
(4, 'Include Vat', '0', '1', '0', '1', '2025-03-04 10:42:32', '2025-03-04 10:42:32'),
(5, 'Include Vat', '0', '1', '0', '1', '2025-03-04 10:48:08', '2025-03-04 10:48:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `user_agent`, `browser`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', '2025-03-02', '2025-03-02 09:20:03', '2025-03-02 09:20:03'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', '2025-03-03', '2025-03-03 04:11:57', '2025-03-03 04:11:57'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', '2025-03-04', '2025-03-04 04:39:18', '2025-03-04 04:39:18'),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', '2025-03-04', '2025-03-04 09:20:40', '2025-03-04 09:20:40');

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
