-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 31, 2024 at 12:36 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e`
--

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
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_14_032506_create_permission_tables', 1),
(6, '2024_06_15_053312_create_settings_table', 1),
(7, '2024_06_19_034944_create_uploads_table', 1),
(8, '2024_08_28_090707_create_categories_table', 1),
(9, '2024_08_28_090810_create_brands_table', 1),
(10, '2024_08_28_113455_create_customers_table', 1),
(11, '2024_08_28_113513_create_suppliers_table', 1),
(12, '2024_08_28_133729_create_units_table', 1),
(13, '2024_08_29_065019_create_products_table', 1),
(14, '2024_08_29_113133_create_purchases_table', 1),
(15, '2024_08_30_040205_create_orders_table', 1);

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL DEFAULT '0',
  `order_id` bigint NOT NULL DEFAULT '0',
  `product_ids` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `product_json` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_status` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `price` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `quantitys` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cash_collection` int NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user read', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(2, 'user create', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(3, 'user edit', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(4, 'user rolechange', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(5, 'user delete', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(6, 'role read', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(7, 'role create', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(8, 'role edit', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(9, 'role delete', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(10, 'product read', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(11, 'product create', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(12, 'product edit', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(13, 'product delete', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(14, 'unit read', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(15, 'unit create', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(16, 'unit edit', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(17, 'unit delete', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(18, 'purchase read', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(19, 'purchase create', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32'),
(20, 'purchase edit', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(21, 'purchase delete', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(22, 'customer read', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(23, 'customer create', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(24, 'customer edit', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(25, 'customer delete', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(26, 'stock read', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(27, 'supplier read', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(28, 'supplier create', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(29, 'supplier edit', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(30, 'supplier delete', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(31, 'category read', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(32, 'category create', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(33, 'category edit', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(34, 'category delete', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(35, 'brand read', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(36, 'brand create', 'web', '2024-08-30 08:23:33', '2024-08-30 08:23:33'),
(37, 'brand edit', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(38, 'brand delete', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(39, 'setting read', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(40, 'setting create', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(41, 'setting edit', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(42, 'setting delete', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(43, 'order read', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(44, 'order create', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(45, 'order edit', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(46, 'order delete', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(47, 'profile read', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(48, 'profile create', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(49, 'profile edit', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(50, 'profile delete', 'web', '2024-08-30 08:23:34', '2024-08-30 08:23:34'),
(51, 'theme read', 'web', '2024-08-30 08:23:35', '2024-08-30 08:23:35');

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
  `sku` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` int NOT NULL DEFAULT '0',
  `unit` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_selling` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `alert_quantity` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `quantity` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `productId` bigint NOT NULL,
  `supplierId` bigint NOT NULL,
  `quantity` bigint NOT NULL,
  `status` bigint NOT NULL,
  `price` bigint NOT NULL,
  `creator` bigint NOT NULL,
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
(1, 'superadmin', 'web', '2024-08-30 08:23:32', '2024-08-30 08:23:32');

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
(51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `creator_id`, `key`, `created_at`, `updated_at`) VALUES
(1, 'Profile', 'Profile', '0', '10', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(2, 'app_name_short', 'POS', '1', '9', '2024-08-30 08:23:45', '2024-08-30 18:35:40'),
(3, 'app_image', '2', '1', '9', '2024-08-30 08:23:45', '2024-08-30 18:35:49'),
(4, 'theme_mode', '0', '1', '1', '2024-08-30 08:23:45', '2024-08-30 08:29:38'),
(5, 'theme_layout-navbar-fixed', 'Theme Layout-Navbar-Fixed', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(6, 'theme_sidebar-collapse', '0', '1', '1', '2024-08-30 08:23:45', '2024-08-30 08:29:41'),
(7, 'theme_layout-fixed', 'Theme Layout-Fixed', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(8, 'theme_sidebar-mini', 'Theme Sidebar-Mini', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(9, 'theme_sidebar-mini-md', 'Theme Sidebar-Mini-Md', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(10, 'theme_sidebar-mini-xs', 'Theme Sidebar-Mini-Xs', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(11, 'theme_layout-footer-fixed', 'Theme Layout-Footer-Fixed', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(12, 'theme_dropdown-legacy', 'Theme Dropdown-Legacy', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(13, 'theme_border-bottom-0', 'Theme Border-Bottom-0', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(14, 'theme_navbar_bg', 'Theme Navbar Bg', '0', '1', '2024-08-30 08:23:45', '2024-08-30 08:23:45'),
(15, 'theme_sidebar-no-expand', 'Theme Sidebar-No-Expand', '0', '1', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(16, 'theme_dark_sidebar_variant', 'Theme Dark Sidebar Variant', '0', '1', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(17, 'theme_brand_link', 'Theme Brand Link', '0', '1', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(18, 'nav-flat', 'Nav-Flat', '0', '1', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(19, 'theme_nav-legacy', '0', '1', '1', '2024-08-30 08:23:46', '2024-08-30 08:31:40'),
(20, 'theme_nav-compact', '0', '1', '1', '2024-08-30 08:23:46', '2024-08-30 08:31:35'),
(21, 'theme_nav-child-indent', 'Theme Nav-Child-Indent', '0', '1', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(22, 'theme_nav-collapse-hide-child', 'Theme Nav-Collapse-Hide-Child', '0', '1', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(23, 'settings', 'Settings', '1', '10', '2024-08-30 08:23:46', '2024-08-30 08:35:53'),
(24, 'main_setting', 'Main Setting', '0', '10', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(25, 'setting_status', 'Setting Status', '0', '10', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(26, 'site_title_setting', 'Site Title Setting', '0', '10', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(27, 'payment_setting', 'Payment Setting', '0', '10', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(28, 'preloader_enable', '1', '1', '8', '2024-08-30 08:23:46', '2024-08-30 18:35:57'),
(29, 'theme_nav-flat', 'Theme Nav-Flat', '0', '1', '2024-08-30 08:23:46', '2024-08-30 08:23:46'),
(30, 'supplier', 'Supplier', '0', '10', '2024-08-30 08:25:19', '2024-08-30 08:25:19'),
(31, 'Profile1', 'Profile1', '0', '10', '2024-08-30 08:34:22', '2024-08-30 08:34:22'),
(32, 'Prof_ile', 'Profile', '1', '10', '2024-08-30 08:38:39', '2024-08-30 08:39:28'),
(33, 'customer', 'Customer', '0', '10', '2024-08-30 08:50:30', '2024-08-30 08:50:30'),
(34, 'order', 'Order', '0', '10', '2024-08-30 08:50:36', '2024-08-30 08:50:36'),
(35, 'dashboard_title', 'Dashboard Title', '0', '10', '2024-08-30 10:55:20', '2024-08-30 10:55:20'),
(36, 'category', 'Category', '0', '10', '2024-08-30 18:35:10', '2024-08-30 18:35:10');

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
  `creator` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `extension`, `size`, `source`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '9942469349821008806.jpg', 'jpg', '20217', 'Local', '1', '2024-08-30 10:06:39', '2024-08-30 10:08:23'),
(2, '7691469351044958696.webp', 'webp', '50392', 'Local', '1', '2024-08-30 18:35:49', '2024-08-30 18:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_id` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `upload_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '1', 'admin@gmail.com', '2024-08-30 08:23:31', '$2y$12$DVJCTGndVmVXHIkeOO.lJ.3aIWc.uabAR/RrosmS1I4V8KWZMhYkq', 'kUdNrFlPXvDsnc8KOVkwlmeK6ouhLI7QE9MRUJoGT2mZZr7EH3xRSz6ooLcs', '2024-08-30 08:23:32', '2024-08-30 10:59:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
