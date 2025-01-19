-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2025 at 05:38 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dengrweb_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(125) DEFAULT NULL,
  `village` varchar(125) DEFAULT NULL,
  `post` varchar(125) DEFAULT NULL,
  `post_code` varchar(125) DEFAULT NULL,
  `district` varchar(125) DEFAULT NULL,
  `stay_time` varchar(125) DEFAULT NULL,
  `country` varchar(125) DEFAULT NULL,
  `creator` varchar(125) DEFAULT NULL,
  `updater` varchar(125) DEFAULT NULL,
  `addressable_type` varchar(125) NOT NULL,
  `addressable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address_optional` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `postal` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `village`, `post`, `post_code`, `district`, `stay_time`, `country`, `creator`, `updater`, `addressable_type`, `addressable_id`, `created_at`, `updated_at`, `name`, `email`, `phone`, `address_optional`, `state`, `postal`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'App\\Models\\customer', 5, '2025-01-11 03:13:17', '2025-01-11 03:13:17', ' ', NULL, NULL, NULL, NULL, NULL),
(2, 'Nostrum eos ea magni', NULL, NULL, NULL, 'Sint in atque est', NULL, 'Repudiandae consequa', NULL, NULL, 'App\\Models\\customer', 6, '2025-01-15 01:03:32', '2025-01-15 01:03:32', 'Travis Floyd Burgess', 'xepubivo@mailinator.com', '+1 (817) 873-8131', 'Pariatur Quibusdam', 'Quo dolorem et venia', '11269'),
(3, 'Nostrum eos ea magni', NULL, NULL, NULL, 'Sint in atque est', NULL, 'Repudiandae consequa', NULL, NULL, 'App\\Models\\customer', 6, '2025-01-15 01:03:42', '2025-01-15 01:03:42', 'Travis Floyd Burgess', 'xepubivo@mailinator.com', '+1 (817) 873-8131', 'Pariatur Quibusdam', 'Quo dolorem et venia', '11269'),
(4, 'Nostrum eos ea magni', NULL, NULL, NULL, 'Sint in atque est', NULL, 'Repudiandae consequa', NULL, NULL, 'App\\Models\\customer', 6, '2025-01-15 01:05:20', '2025-01-15 01:05:20', 'Travis Floyd Burgess', 'xepubivo@mailinator.com', '+1 (817) 873-8131', 'Pariatur Quibusdam', 'Quo dolorem et venia', '11269'),
(5, 'Nostrum eos ea magni', NULL, NULL, NULL, 'Sint in atque est', NULL, 'Repudiandae consequa', NULL, NULL, 'App\\Models\\customer', 6, '2025-01-15 01:06:45', '2025-01-15 01:06:45', 'Travis Floyd Burgess', 'xepubivo@mailinator.com', '+1 (817) 873-8131', 'Pariatur Quibusdam', 'Quo dolorem et venia', '11269'),
(6, 'Nostrum eos ea magni', NULL, NULL, NULL, 'Sint in atque est', NULL, 'Repudiandae consequa', NULL, NULL, 'App\\Models\\customer', 6, '2025-01-15 01:07:51', '2025-01-15 01:07:51', 'Travis Floyd Burgess', 'xepubivo@mailinator.com', '+1 (817) 873-8131', 'Pariatur Quibusdam', 'Quo dolorem et venia', '11269'),
(7, 'Nostrum eos ea magni', NULL, NULL, NULL, 'Sint in atque est', NULL, 'Repudiandae consequa', NULL, NULL, 'App\\Models\\customer', 6, '2025-01-15 01:08:51', '2025-01-15 01:08:51', 'Travis Floyd Burgess', 'xepubivo@mailinator.com', '+1 (817) 873-8131', 'Pariatur Quibusdam', 'Quo dolorem et venia', '11269'),
(8, 'Delectus quasi volu', NULL, NULL, NULL, 'Proident suscipit e', NULL, 'Aliqua Facere alias', NULL, NULL, 'App\\Models\\customer', 10, '2025-01-15 06:29:02', '2025-01-15 06:29:02', 'Steven Mcconnell Blackburn', 'foheti@mailinator.com', '+1 (957) 161-5993', 'Sit ea voluptate su', 'Est libero quis labo', '87480');

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `month` bigint(20) NOT NULL DEFAULT 0,
  `year` bigint(20) NOT NULL DEFAULT 0,
  `description` varchar(125) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `slug` varchar(125) DEFAULT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `slug`, `upload_id`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sazzad', 'sazzad', 0, 1, '1', '0', NULL, '2025-01-02 02:18:40', '2025-01-02 02:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(125) NOT NULL DEFAULT '0',
  `month` varchar(125) NOT NULL DEFAULT '0',
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(125) NOT NULL,
  `short_description` varchar(125) NOT NULL,
  `description` varchar(125) NOT NULL,
  `meta_title` varchar(125) NOT NULL,
  `meta_description` varchar(125) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog_category`
--

CREATE TABLE `blog_blog_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `slug` varchar(125) NOT NULL,
  `status` varchar(125) NOT NULL,
  `creator` varchar(125) NOT NULL,
  `updater` varchar(125) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `location` varchar(125) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `location`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(2, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:00:12', '2025-01-15 05:00:12'),
(3, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(4, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:12:55', '2025-01-15 05:12:55'),
(5, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(6, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(7, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(8, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:26:55', '2025-01-15 05:26:55'),
(9, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(10, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator` bigint(20) NOT NULL,
  `name` varchar(125) NOT NULL,
  `slug` varchar(125) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `upload_id` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `creator`, `name`, `slug`, `status`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Apple', 'apple', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(2, 1, 'Bata', 'bata', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(3, 1, 'Lotto', 'lotto-1', 1, '42', '2024-12-28 06:20:56', '2024-12-29 01:09:31'),
(4, 1, 'Easy', 'easy', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(5, 1, 'Pran', 'pran', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(6, 1, 'RFL', 'rfl', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(7, 1, 'Easy', 'easy-1', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(8, 1, 'Magna', 'magna', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(9, 1, 'Padma', 'padma', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(10, 1, 'Duronto', 'duronto', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(11, 1, 'Sumsung', 'sumsung', 1, NULL, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(12, 1, 'Asus 510M', 'asus-510m', 1, '50', '2024-12-29 01:21:05', '2024-12-29 01:21:05'),
(13, 1, 'valutop', 'valutop', 1, '55', '2024-12-29 01:39:22', '2024-12-29 01:39:22'),
(14, 1, 'Megatop', 'megatop', 1, '73', '2024-12-29 04:48:08', '2024-12-29 04:48:08'),
(15, 1, 'Apple', 'apple-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(16, 1, 'Bata', 'bata-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(17, 1, 'Lotto', 'lotto', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(18, 1, 'Easy', 'easy-2', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(19, 1, 'Pran', 'pran-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(20, 1, 'RFL', 'rfl-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(21, 1, 'Easy', 'easy-3', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(22, 1, 'Magna', 'magna-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(23, 1, 'Padma', 'padma-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(24, 1, 'Duronto', 'duronto-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(25, 1, 'Sumsung', 'sumsung-1', 1, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(26, 1, 'Apple', 'apple-2', 1, NULL, '2025-01-15 05:12:55', '2025-01-15 05:12:55'),
(27, 1, 'Bata', 'bata-2', 1, NULL, '2025-01-15 05:12:55', '2025-01-15 05:12:55'),
(28, 1, 'Lotto', 'lotto-2', 1, NULL, '2025-01-15 05:12:55', '2025-01-15 05:12:55'),
(29, 1, 'Easy', 'easy-4', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(30, 1, 'Pran', 'pran-2', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(31, 1, 'RFL', 'rfl-2', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(32, 1, 'Easy', 'easy-5', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(33, 1, 'Magna', 'magna-2', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(34, 1, 'Padma', 'padma-2', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(35, 1, 'Duronto', 'duronto-2', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(36, 1, 'Sumsung', 'sumsung-2', 1, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(37, 1, 'Apple', 'apple-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(38, 1, 'Bata', 'bata-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(39, 1, 'Lotto', 'lotto-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(40, 1, 'Easy', 'easy-6', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(41, 1, 'Pran', 'pran-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(42, 1, 'RFL', 'rfl-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(43, 1, 'Easy', 'easy-7', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(44, 1, 'Magna', 'magna-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(45, 1, 'Padma', 'padma-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(46, 1, 'Duronto', 'duronto-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(47, 1, 'Sumsung', 'sumsung-3', 1, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(48, 1, 'Apple', 'apple-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(49, 1, 'Bata', 'bata-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(50, 1, 'Lotto', 'lotto-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(51, 1, 'Easy', 'easy-8', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(52, 1, 'Pran', 'pran-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(53, 1, 'RFL', 'rfl-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(54, 1, 'Easy', 'easy-9', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(55, 1, 'Magna', 'magna-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(56, 1, 'Padma', 'padma-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(57, 1, 'Duronto', 'duronto-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(58, 1, 'Sumsung', 'sumsung-4', 1, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(59, 1, 'Apple', 'apple-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(60, 1, 'Bata', 'bata-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(61, 1, 'Lotto', 'lotto-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(62, 1, 'Easy', 'easy-10', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(63, 1, 'Pran', 'pran-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(64, 1, 'RFL', 'rfl-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(65, 1, 'Easy', 'easy-11', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(66, 1, 'Magna', 'magna-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(67, 1, 'Padma', 'padma-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(68, 1, 'Duronto', 'duronto-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(69, 1, 'Sumsung', 'sumsung-5', 1, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(70, 1, 'Apple', 'apple-6', 1, NULL, '2025-01-15 05:26:55', '2025-01-15 05:26:55'),
(71, 1, 'Bata', 'bata-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(72, 1, 'Lotto', 'lotto-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(73, 1, 'Easy', 'easy-12', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(74, 1, 'Pran', 'pran-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(75, 1, 'RFL', 'rfl-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(76, 1, 'Easy', 'easy-13', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(77, 1, 'Magna', 'magna-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(78, 1, 'Padma', 'padma-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(79, 1, 'Duronto', 'duronto-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(80, 1, 'Sumsung', 'sumsung-6', 1, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(81, 1, 'Apple', 'apple-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(82, 1, 'Bata', 'bata-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(83, 1, 'Lotto', 'lotto-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(84, 1, 'Easy', 'easy-14', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(85, 1, 'Pran', 'pran-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(86, 1, 'RFL', 'rfl-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(87, 1, 'Easy', 'easy-15', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(88, 1, 'Magna', 'magna-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(89, 1, 'Padma', 'padma-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(90, 1, 'Duronto', 'duronto-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(91, 1, 'Sumsung', 'sumsung-7', 1, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(92, 1, 'Apple', 'apple-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(93, 1, 'Bata', 'bata-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(94, 1, 'Lotto', 'lotto-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(95, 1, 'Easy', 'easy-16', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(96, 1, 'Pran', 'pran-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(97, 1, 'RFL', 'rfl-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(98, 1, 'Easy', 'easy-17', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(99, 1, 'Magna', 'magna-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(100, 1, 'Padma', 'padma-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(101, 1, 'Duronto', 'duronto-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(102, 1, 'Sumsung', 'sumsung-8', 1, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(125) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:151:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"user read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"user create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"user edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:15:\"user rolechange\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"user delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:9:\"role read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:11:\"role create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:9:\"role edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"role delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:11:\"branch read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"branch create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:11:\"branch edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"branch delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"cashcounter read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:18:\"cashcounter create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:16:\"cashcounter edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:18:\"cashcounter delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:12:\"product read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:14:\"product create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:12:\"product edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:14:\"product delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:9:\"unit read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"unit create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"unit edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"unit delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:13:\"purchase read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"purchase create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:13:\"purchase edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:15:\"purchase delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:13:\"customer read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"customer create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"customer edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"customer delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:10:\"stock read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:13:\"supplier read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:15:\"supplier create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:13:\"supplier edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:15:\"supplier delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:13:\"category read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:15:\"category create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:13:\"category edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"category delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:16:\"subcategory read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:18:\"subcategory create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:16:\"subcategory edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:18:\"subcategory delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:9:\"area read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:11:\"area create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:9:\"area edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:11:\"area delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:10:\"brand read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:12:\"brand create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:10:\"brand edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:12:\"brand delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:8:\"vat read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:10:\"vat create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:8:\"vat edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:10:\"vat delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:13:\"discount read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:15:\"discount create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:13:\"discount edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:15:\"discount delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:12:\"setting read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:14:\"setting create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:12:\"setting edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:14:\"setting delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:21:\"siteverification read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:21:\"siteverification edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:18:\"tagmanagement read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:18:\"tagmanagement edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:8:\"pwa read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:8:\"pwa edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:17:\"notification read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:17:\"notification edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:10:\"takto read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:10:\"takto edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:11:\"cookie read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:11:\"cookie edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:9:\"smtp read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:9:\"smtp edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:24:\"payment_credentials read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:24:\"payment_credentials edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:10:\"order read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:12:\"order create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:10:\"order edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:12:\"order delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:12:\"profile read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:14:\"profile create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:12:\"profile edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:14:\"profile delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:10:\"theme read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:16:\"LeadAccount read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:18:\"LeadAccount create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:16:\"LeadAccount edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:18:\"LeadAccount delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:16:\"LeadContact read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:18:\"LeadContact create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:16:\"LeadContact edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:18:\"LeadContact delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:13:\"LeadDeal read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:15:\"LeadDeal create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:13:\"LeadDeal edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:15:\"LeadDeal delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:18:\"LeadDealStage read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:20:\"LeadDealStage create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:18:\"LeadDealStage edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:20:\"LeadDealStage delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:9:\"Lead read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:11:\"Lead create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:9:\"Lead edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:11:\"Lead delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:15:\"LeadSource read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:17:\"LeadSource create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:15:\"LeadSource edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:17:\"LeadSource delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:13:\"language read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:15:\"language create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:13:\"language edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:15:\"language delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:16:\"Translation read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:18:\"Translation create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:16:\"Translation edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:18:\"Translation delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:11:\"slider read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:13:\"slider create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:11:\"slider edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:13:\"slider delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:12:\"service read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:14:\"service create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:12:\"service edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:14:\"service delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:16:\"testimonial read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:18:\"testimonial create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:16:\"testimonial edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:18:\"testimonial delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:22:\"footerlinkheading read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:24:\"footerlinkheading create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:22:\"footerlinkheading edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:24:\"footerlinkheading delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:25:\"footerlinksubheading read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:27:\"footerlinksubheading create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:25:\"footerlinksubheading edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:27:\"footerlinksubheading delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:8:\"faq read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:10:\"faq create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:8:\"faq edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:10:\"faq delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:9:\"page read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:11:\"page create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:9:\"page edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:11:\"page delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"superadmin\";s:1:\"c\";s:3:\"web\";}}}', 1735623986),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:151:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"user read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"user create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"user edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:15:\"user rolechange\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"user delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:9:\"role read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:11:\"role create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:9:\"role edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"role delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:11:\"branch read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"branch create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:11:\"branch edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"branch delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"cashcounter read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:18:\"cashcounter create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:16:\"cashcounter edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:18:\"cashcounter delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:12:\"product read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:14:\"product create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:12:\"product edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:14:\"product delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:9:\"unit read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"unit create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"unit edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"unit delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:13:\"purchase read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"purchase create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:13:\"purchase edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:15:\"purchase delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:13:\"customer read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"customer create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"customer edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"customer delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:10:\"stock read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:13:\"supplier read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:15:\"supplier create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:13:\"supplier edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:15:\"supplier delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:13:\"category read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:15:\"category create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:13:\"category edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"category delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:16:\"subcategory read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:18:\"subcategory create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:16:\"subcategory edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:18:\"subcategory delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:9:\"area read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:11:\"area create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:9:\"area edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:11:\"area delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:10:\"brand read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:12:\"brand create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:10:\"brand edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:12:\"brand delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:8:\"vat read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:10:\"vat create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:8:\"vat edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:10:\"vat delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:13:\"discount read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:15:\"discount create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:13:\"discount edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:15:\"discount delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:12:\"setting read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:14:\"setting create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:12:\"setting edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:14:\"setting delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:21:\"siteverification read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:21:\"siteverification edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:18:\"tagmanagement read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:18:\"tagmanagement edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:8:\"pwa read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:8:\"pwa edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:17:\"notification read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:17:\"notification edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:10:\"takto read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:10:\"takto edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:11:\"cookie read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:11:\"cookie edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:9:\"smtp read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:9:\"smtp edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:24:\"payment_credentials read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:24:\"payment_credentials edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:10:\"order read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:12:\"order create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:10:\"order edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:12:\"order delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:12:\"profile read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:14:\"profile create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:12:\"profile edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:14:\"profile delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:10:\"theme read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:16:\"LeadAccount read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:18:\"LeadAccount create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:16:\"LeadAccount edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:18:\"LeadAccount delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:16:\"LeadContact read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:18:\"LeadContact create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:16:\"LeadContact edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:18:\"LeadContact delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:13:\"LeadDeal read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:15:\"LeadDeal create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:13:\"LeadDeal edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:15:\"LeadDeal delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:18:\"LeadDealStage read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:20:\"LeadDealStage create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:18:\"LeadDealStage edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:20:\"LeadDealStage delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:9:\"Lead read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:11:\"Lead create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:9:\"Lead edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:11:\"Lead delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:15:\"LeadSource read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:17:\"LeadSource create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:15:\"LeadSource edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:17:\"LeadSource delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:13:\"language read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:15:\"language create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:13:\"language edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:15:\"language delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:16:\"Translation read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:18:\"Translation create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:16:\"Translation edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:18:\"Translation delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:11:\"slider read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:13:\"slider create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:11:\"slider edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:13:\"slider delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:12:\"service read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:14:\"service create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:12:\"service edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:14:\"service delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:16:\"testimonial read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:18:\"testimonial create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:16:\"testimonial edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:18:\"testimonial delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:22:\"footerlinkheading read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:24:\"footerlinkheading create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:22:\"footerlinkheading edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:24:\"footerlinkheading delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:25:\"footerlinksubheading read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:27:\"footerlinksubheading create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:25:\"footerlinksubheading edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:27:\"footerlinksubheading delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:8:\"faq read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:10:\"faq create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:8:\"faq edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:10:\"faq delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:9:\"page read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:11:\"page create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:9:\"page edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:11:\"page delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"superadmin\";s:1:\"c\";s:3:\"web\";}}}', 1735623986);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(125) NOT NULL,
  `owner` varchar(125) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_counters`
--

CREATE TABLE `cash_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator` bigint(20) NOT NULL,
  `name` varchar(125) NOT NULL,
  `slug` varchar(125) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(125) NOT NULL DEFAULT '1',
  `upload_id` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `creator`, `name`, `slug`, `description`, `status`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hazbol', 't-shirt', NULL, '1', '51', '2024-12-28 06:20:56', '2024-12-29 01:35:32'),
(2, 1, 'loop', 'shoes', NULL, '1', '52', '2024-12-28 06:20:56', '2024-12-29 01:35:59'),
(11, 1, 'Sanitary', 'sanitary', 'sanitary', '1', '70', '2024-12-29 02:46:24', '2024-12-29 02:46:24'),
(4, 1, 'Filter', 'sheree', NULL, '1', '53', '2024-12-28 06:20:56', '2024-12-29 01:36:20'),
(6, 1, 'Door Handle', 'skirts', NULL, '1', '54', '2024-12-29 00:58:22', '2024-12-29 01:37:15'),
(7, 1, 'Looks', 'shorts', NULL, '0', '56', '2024-12-29 00:59:05', '2024-12-29 01:37:58'),
(10, 1, 'GreenField', 'greenfield', 'martull', '1', '55', '2024-12-29 01:37:42', '2024-12-29 01:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source` varchar(125) DEFAULT NULL,
  `contact` varchar(125) DEFAULT NULL,
  `contactable_type` varchar(125) NOT NULL,
  `contactable_id` bigint(20) UNSIGNED NOT NULL,
  `creator` varchar(125) NOT NULL,
  `updater` varchar(125) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` varchar(125) NOT NULL DEFAULT '0',
  `title` varchar(125) DEFAULT NULL,
  `details` varchar(125) DEFAULT NULL,
  `type` varchar(125) NOT NULL DEFAULT '0' COMMENT '1 = fixed 0 present',
  `amount` int(11) NOT NULL DEFAULT 0,
  `expire_date` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_use_histories`
--

CREATE TABLE `coupon_use_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courier_credentials`
--

CREATE TABLE `courier_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` varchar(125) DEFAULT NULL,
  `provider` varchar(125) DEFAULT NULL,
  `Secret_Key` varchar(125) DEFAULT NULL,
  `Api_Key` varchar(125) DEFAULT NULL,
  `client_id` varchar(125) DEFAULT NULL,
  `client_secret` varchar(125) DEFAULT NULL,
  `secret_token` varchar(125) DEFAULT NULL,
  `key` varchar(125) DEFAULT NULL,
  `sandbox_status` varchar(125) NOT NULL DEFAULT '1',
  `status` varchar(125) NOT NULL DEFAULT '1',
  `creator` bigint(20) NOT NULL DEFAULT 1,
  `updater` bigint(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_credentials`
--

INSERT INTO `courier_credentials` (`id`, `upload_id`, `provider`, `Secret_Key`, `Api_Key`, `client_id`, `client_secret`, `secret_token`, `key`, `sandbox_status`, `status`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Walk In Delivery', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2024-12-28 06:21:05', '2024-12-28 06:21:05'),
(2, NULL, 'EasyPost', NULL, NULL, NULL, NULL, NULL, 'shippo_test_2cb6d0c8057930440e8b510e19434d982c1ce48d', '1', '1', 1, 1, '2024-12-28 06:21:05', '2024-12-28 06:21:05'),
(3, NULL, 'SteadFast', 'g94vnmgpdvehmsp8vrhgkyrv', 'jwqjaywbmswqrwymm0bdvnwvrr6annc4 ', NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2024-12-28 06:21:05', '2024-12-28 06:21:05'),
(4, NULL, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2024-12-28 06:21:05', '2024-12-28 06:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `phone` varchar(125) DEFAULT NULL,
  `shop_name` varchar(125) DEFAULT NULL,
  `shop_phone` varchar(125) DEFAULT NULL,
  `shop_address` varchar(125) DEFAULT NULL,
  `type` varchar(125) DEFAULT NULL,
  `user_id` varchar(125) DEFAULT NULL,
  `creator` varchar(125) DEFAULT NULL,
  `location` varchar(125) DEFAULT NULL,
  `account_holder` varchar(125) DEFAULT NULL,
  `account_number` varchar(125) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `bank_name` varchar(125) DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `prev_due` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `bank_branch` varchar(125) DEFAULT NULL,
  `upload_id` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `shop_name`, `shop_phone`, `shop_address`, `type`, `user_id`, `creator`, `location`, `account_holder`, `account_number`, `note`, `bank_name`, `credit_limit`, `prev_due`, `area`, `bank_branch`, `upload_id`, `created_at`, `updated_at`, `password`) VALUES
(1, 'Test User', 'test@gmail.com', '015*******', NULL, NULL, NULL, NULL, NULL, '1', 'Dhaka Bangladesh', 'MD SAZZAD', '01590084779', NULL, 'bKash', NULL, NULL, NULL, 'Bangladesh', '0', '2024-12-28 06:20:56', '2024-12-28 06:20:56', ''),
(2, 'Octavius Bennett', 'rywa@mailinator.com', '+1 (696) 137-3343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-07 23:23:12', '2025-01-07 23:23:12', ''),
(3, 'Lyle Rivers', 'byruj@mailinator.com', '+1 (838) 307-6423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-08 01:02:24', '2025-01-08 01:02:24', ''),
(4, 'Nero Woods', 'revudurem@mailinator.com', '+1 (153) 807-9431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-09 07:20:51', '2025-01-09 07:20:51', ''),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, NULL, '0', '2025-01-11 02:48:10', '2025-01-11 02:48:10', '$2y$12$OtDZbfX/r.CpXpTHyeWQke0FH8rwah7t3YcU0yIsryyS1pLdhbZLG'),
(6, 'Lee Castaneda', 'wadibit@mailinator.com', '+1 (429) 999-9366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-14 22:37:37', '2025-01-14 22:37:37', '$2y$12$pHmPpnqd1fVUfsBEYEbGbOvrD8JE1NIE02NxgfsUB1Oq3gKkdkWuK'),
(7, 'Ainsley Vargas', 'gegupoki@mailinator.com', '+1 (983) 414-3512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-15 02:03:21', '2025-01-15 02:03:21', '$2y$12$B62PsgLIFGrhaYwp.z7Ai.venN02e7UBOf4zV3yfHEbgdeFVmQbJm'),
(8, 'Mallory Frank', 'pizup@mailinator.com', '+1 (749) 943-4546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-15 02:40:37', '2025-01-15 02:40:37', '$2y$12$vSu62W2nPla6xo3r1cHyneH6r.kvrqfqNI0ShxcQqoVdUYnVRQ2b2'),
(9, 'Uriel Cain', 'sequqen@mailinator.com', '+1 (931) 153-4192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-15 03:46:05', '2025-01-15 03:46:05', '$2y$12$EIDt6J6E2zYl8HGaB5ESfOTw2zu8mTLu4c7OW2IE0RX9cidkvUpoS'),
(10, 'Hedwig Warner', 'nalykugopa@mailinator.com', '+1 (757) 901-2699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-15 05:03:31', '2025-01-15 05:03:31', '$2y$12$1.p8LQV7W5mHduO4oS.HVOCgT0ep6XIzdl6tCtQhZpdDWVPf5Lv2S');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_type` varchar(125) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `logout` tinyint(1) NOT NULL DEFAULT 0,
  `suspend_date` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `creator` bigint(20) DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext DEFAULT NULL,
  `last_activity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `notification_data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_type`, `ip`, `logout`, `suspend_date`, `data`, `creator`, `updater_id`, `user_agent`, `payload`, `last_activity`, `deleted_at`, `notification_data`, `created_at`, `updated_at`) VALUES
(1, 'Windows \"Not A(Brand\"', '192.168.0.50', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"APP_ENV\": \"local\", \"APP_KEY\": \"base64:gL/AanXMDo0GNDHhAKpX5xOp0RzBBvT3c0T4Iggz7CY=\", \"APP_URL\": \"http://192.168.0.50/pos/\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"DB_HOST\": \"127.0.0.1\", \"DB_PORT\": \"3306\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"APP_NAME\": \"Laravel\", \"PHP_SELF\": \"/pos/index.php\", \"APP_DEBUG\": \"true\", \"ASSET_URL\": \"http://192.168.0.50/pos/public\", \"HTTP_HOST\": \"192.168.0.50\", \"LOG_LEVEL\": \"debug\", \"MAIL_HOST\": \"mailpit\", \"MAIL_PORT\": \"1025\", \"AWS_BUCKET\": \"\", \"REDIS_HOST\": \"127.0.0.1\", \"REDIS_PORT\": \"6379\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"DB_DATABASE\": \"d_pos\", \"DB_PASSWORD\": \"\", \"DB_USERNAME\": \"root\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"userNA45647854564785=MTY%3D; notunthikana_session=eyJpdiI6IndhVVZKT21rbExLQ2hiQWtUWW9wN1E9PSIsInZhbHVlIjoiVC9iRkpJMEVHdWJPV0Q2RDg3WTlrcXE4dnE4cmdkTlkwdjVvSklTUnBGWWFZUlJlMjFQclV4N3VQWWM2KzJFUFErNC9uTjhzWU91NHp2VE5pbmZGKzdTVHF3RHdaUk5QUk1wSFA1Q2hLTW1mQWRJamRzREk4NDdSZFptQWx3STIiLCJtYWMiOiJlNzZmZTc0NjA3YzVjMmQxZmJlNmQ0MTg1NjI5MzQyZTc4ZTZiZTFmMGQ3ZGY5ZjBiNGMzNDE4YzJhOTFjYzJhIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Ik0yRW5mZnE5L1RKWWpwaUVHQVBxMWc9PSIsInZhbHVlIjoiK01NL0FYT1RzOFRMQ0JnTGtLdUZnbVhtOFVMSmZNaW1OSzJVRHRBSzh5eFd3K2VreXEyMC9sTWh6WXlOZy9ndEdGMzJXSEs2S1F0UU9yNDRIUER1VE91R0pTcDhKeFMxZzNmWjhwbGpDdXJ2T1FvejdXWmU0WkVXQkl3eTZVSVIiLCJtYWMiOiI0NTc1ZjMzNmE0YzcyMjRiMmNjMDUwMjU0YWZkN2QxZjZkYzgwMDYxZWY2ZDJhNTcyY2ZiNjRkYzkyMGEyMmNiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjJWSE9MM0NWMER5K0ZPN1A1ODVoZEE9PSIsInZhbHVlIjoiNDA2bGRYWk5uM255OFliZ21uWVBQZ0RGZitueUFRTm43UGdQemZnbG1tWGlJQ0ZOQ096Q0h5bGdqMjNHdmhKZ2tSSlU5dnFJTEE4L0txWVJtZ1dRVnREazAwZHp1MUxlV1lTazIxYXUzd1kveVZqaEFQeE41TWNkR2J1ZzRJZ0oiLCJtYWMiOiI2NWZlN2Q1OTNjYWZhNjVmYzRiZTQ0ZGY1ZGE1NDZlMjUwYThhNzcxN2ZhODg4ZjI1Mzg0MjBjYTJiNjBkZGEzIiwidGFnIjoiIn0%3D\", \"LOG_CHANNEL\": \"stack\", \"MAIL_MAILER\": \"smtp\", \"PUSHER_HOST\": \"\", \"PUSHER_PORT\": \"443\", \"REMOTE_ADDR\": \"192.168.0.50\", \"REMOTE_PORT\": \"51672\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"192.168.0.50\", \"SERVER_NAME\": \"192.168.0.50\", \"SERVER_PORT\": \"80\", \"CACHE_DRIVER\": \"file\", \"HTTP_REFERER\": \"http://192.168.0.50/pos/admin/settings/site-tag-management/24\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735388488, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DB_CONNECTION\": \"mysql\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"MAIL_PASSWORD\": \"null\", \"MAIL_USERNAME\": \"null\", \"PUSHER_APP_ID\": \"\", \"PUSHER_SCHEME\": \"https\", \"VITE_APP_NAME\": \"Laravel\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"MAIL_FROM_NAME\": \"Laravel\", \"MEMCACHED_HOST\": \"127.0.0.1\", \"PUSHER_APP_KEY\": \"\", \"REDIS_PASSWORD\": \"null\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"SESSION_DRIVER\": \"file\", \"FILESYSTEM_DISK\": \"local\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"MAIL_ENCRYPTION\": \"null\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"BROADCAST_DRIVER\": \"log\", \"GOOGLE_CLIENT_ID\": \"7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com\", \"QUEUE_CONNECTION\": \"sync\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at 192.168.0.50 Port 80</address>\\n\", \"SESSION_LIFETIME\": \"120\", \"VITE_PUSHER_HOST\": \"\", \"VITE_PUSHER_PORT\": \"443\", \"AWS_ACCESS_KEY_ID\": \"\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"MAIL_FROM_ADDRESS\": \"hello@example.com\", \"PUSHER_APP_SECRET\": \"\", \"AWS_DEFAULT_REGION\": \"us-east-1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"PUSHER_APP_CLUSTER\": \"mt1\", \"REQUEST_TIME_FLOAT\": 1735388488.321528, \"VITE_PUSHER_SCHEME\": \"https\", \"GOOGLE_REDIRECT_URL\": \"http://192.168.0.50/pos/google/callback\", \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"VITE_PUSHER_APP_KEY\": \"\", \"GOOGLE_CLIENT_SECRET\": \"xxxxxx-sl9vkVFFmovXgAOp2ZSektxxxxxx\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"AWS_SECRET_ACCESS_KEY\": \"\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\", \"VITE_PUSHER_APP_CLUSTER\": \"mt1\", \"LOG_DEPRECATIONS_CHANNEL\": \"null\", \"AWS_USE_PATH_STYLE_ENDPOINT\": \"false\"}', 1, 1, NULL, NULL, 1736258499, NULL, '', '2024-12-28 06:21:28', '2025-01-07 08:01:39'),
(2, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; notunthikana_session=eyJpdiI6IlRCOWdldnc3bnRtdDZsR3dCZXBFK2c9PSIsInZhbHVlIjoieWt2NUNtRm1OZGF4dEJxOTA1Kzl2TGpyNWZGeXd2U1VOUE9kTy9tUmo4WGh6WVpXK2xicWNEdzdGemhSYXdoUnkvK1dhNmhia1FjZk1ZUmw4YVZaditSb1dGblBsc0k5aiswUFJ3ZHNBOUJTWStCL1Uycm1UN1g4UnhWYVBKWTAiLCJtYWMiOiIzZTE1YTZhODlmNDA2ZTFiZjY0YWMxODA0ZjkyMTUzYmZkMDRhODJjMzM4MmU4MmRkMDc2M2Q4ZjQ3OWRlNWEwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkY2ZVgwb3FKZzN1NGFnL0FKTk9PSkE9PSIsInZhbHVlIjoiNmFFY1dDWkJ6K25DVmY1WERKT0pYNUlEOGQySDRoR0JjcWR1T0JQZWxWS0YzNTlpQm1jMnNIRXp4TmhjU2NqRkUxN29WVzRsc011c0Z0Z05CbFc0QXF1T1hFeWQyZ3ZqSnhMclpIOG0wUDJQZTVQTW5IZG9zNDcxM3YwSlJCUnQiLCJtYWMiOiI4NTY0YzQ3ZTFjOTczMmJkZGM1MTY0YTVhMjkwNDA5NmRjNTliZDUyMjliOWVmNTNjZTQ5ODVlNjBlNjc4ZmMyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjFURk5JNFQ2QjRlVGVHLzJUTG5MOVE9PSIsInZhbHVlIjoiTU1PbVdmOTBxMWZPSWRNbGF2UzBmZithYXlqZ2RDMWRFRG1SUXZremRZSnZwYnVmWmE2MGUzRzBFZFFadWpwMDFSRTJ5NTRvcWpJMzRBMGVYTGcwemNFR0JtMk0yR0xpTCtHeUhCb2NDVmY4WWozN0R6eUY1ZlowMHBPWStpY3AiLCJtYWMiOiJmNzc3YmY0ZWVhMGQ0ODM1ZmQwMDVmNGRiNTFhM2VkZGI3NWY3MDFlYzAwNjEyMTc3YjY1N2Q5YjA5NjkwMWYxIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"56146\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin/dashboard\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735452351, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1735452351.550083, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1735474617, NULL, '', '2024-12-29 00:05:51', '2024-12-29 06:16:57'),
(3, 'Linux Mozilla/5.0 (X11', '192.168.0.103', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"APP_URL\": \"http://192.168.0.50/pos/\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"DB_HOST\": \"127.0.0.1\", \"DB_PORT\": \"3306\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"ASSET_URL\": \"http://192.168.0.50/pos/public\", \"HTTP_HOST\": \"192.168.0.50\", \"LOG_LEVEL\": \"debug\", \"MAIL_HOST\": \"mailpit\", \"MAIL_PORT\": \"1025\", \"REDIS_PORT\": \"6379\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"DB_DATABASE\": \"d_pos\", \"DB_PASSWORD\": \"\", \"DB_USERNAME\": \"root\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"XSRF-TOKEN=eyJpdiI6ImFhOVI1bjBwMDYrZHlXYVpNVlZXUkE9PSIsInZhbHVlIjoidDZlTnNXY0dDbWtHMVZkSFZDRXZMeSt2WS93Vm5CMktaS05wOEFLNnVpUmFReVhLQ2YrWWt5c3FVeDQ4R3F3a29GeUtUWlVkZlJNOWVZdmFzUWtzb1dNcG91dFNXRWZpb2JIWXNJbzlmV295SisyaUMvWnJRMURwKytZeWVMdVEiLCJtYWMiOiIwNDMyZTcxMThlYTBjNjEyMTE2Nzc1ZDUzNTJmM2Y3ODY2MWZlZTMzZjc5YjAwOWYxNjg4YjU0MjlkNjg2NGI3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBsNFFuZ3FYdnd0UytzSVNLdXpaOUE9PSIsInZhbHVlIjoiMllabmZuSitLazBjbTltSGpxZUpFdTVDdnNvcEkvVSswcDBlUWVDcXFBMEpvcVhPaDRYKzdEWHhkb1RxVER4K0liODV1VDZKbnQycGtqQWhtTkt0RWR1TUkxRVJlT0xmald6dUNoSGQwNi94QiswTkFnakovUDZDWnY5OG51R3EiLCJtYWMiOiJlZmMzNzc5ZjU3OTU2ZGNhMDc5MTIzOGI5Yzg3Y2IxZTM1MDZkYzg0MzJhYzlmN2E1YTliOTI5ZWUzMDNkNDhkIiwidGFnIjoiIn0%3D\", \"LOG_CHANNEL\": \"stack\", \"MAIL_MAILER\": \"smtp\", \"REMOTE_ADDR\": \"192.168.0.103\", \"REMOTE_PORT\": \"44672\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"192.168.0.50\", \"SERVER_NAME\": \"192.168.0.50\", \"SERVER_PORT\": \"80\", \"CACHE_DRIVER\": \"file\", \"HTTP_REFERER\": \"http://192.168.0.50/pos/admin/dashboard\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735454871, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DB_CONNECTION\": \"mysql\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"MAIL_USERNAME\": \"null\", \"CONTEXT_PREFIX\": \"\", \"REDIS_PASSWORD\": \"null\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"FILESYSTEM_DISK\": \"local\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"BROADCAST_DRIVER\": \"log\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at 192.168.0.50 Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1735454871.604333, \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"LOG_DEPRECATIONS_CHANNEL\": \"null\"}', 1, 1, NULL, NULL, 1735469558, NULL, '', '2024-12-29 00:47:51', '2024-12-29 04:52:38'),
(4, 'Windows \"Google Chrome\"', '192.168.0.104', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"192.168.0.50\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"notunthikana_session=eyJpdiI6IllQeWR6OGtWaGZqc1VyREFGaUM3dmc9PSIsInZhbHVlIjoiN3NPdE1SL3lNcWUyMmlwcktVbTJDUTMybWdqMk9XNGdzODVya3gyM2gzVTl4WEl4KzNMSmd3TzdrNjlCeFZaWkdVamN5bGJhV2F3bkc0ekhkVi9EeGRzbFdMVEErdGNkU2FjWm9DRTEraTRqQ05pUHNHVExRRUNiNFQ5TW5hcDIiLCJtYWMiOiI0YjkxOGE4YTdiZmFhN2VmYjFiMTkyNGExZGFmOTBmMDIxNmM2NDA4MTAzMWFlYzY5OWM3YWMxOTc5Y2NjNWQyIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlRzRlpWdHdRMHpCTGtYOHErZS8wR0E9PSIsInZhbHVlIjoiTmg2UWdqa1BBalVBVW1XL0RKY0xpVmdtTEF4Ui94ZDdZcnNwYVJHZS9ETmZKY0FuZXNRcFM1bi9McXZqWFpwWWdJMllZMDFSZWIrT21EVVJXN2tpaHJtdy93UmlrKzZ5cTRDRjVnbXNjeDJ3QXdiQnAyRnU5eFBSWEJOa05rVEkiLCJtYWMiOiI1NGU0NTIzYmZmNmE0NTJmOTdlY2IyY2MxYmVmYzBmNTcyNzcxMTk0ZTRmNTEwZjg4OThlYWNlMDAyY2UwZDBlIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ikpmdkh2RUs0Mkg3N3JMYk5BN05HdHc9PSIsInZhbHVlIjoiUzRLb0FmOWZpYmE3SlVHLzlVSVplRUlwUmhpMGd4ZkFBdXZWZXlHZms2N05LRzkrdjhqZHoxWDRZNlQvZUZ6TUdpMDZ2MVFJYStCNkEyN1Y0M2NyRGgzZGI2Z2dZd3IxVDNNS090SFZOWXB0MVRwd3U5Nk53TDE4NW5QRnYvNysiLCJtYWMiOiIyYzc3NjhiODMxNzc1ZDA0MDFlM2JiNDU1MTBmYWU2YWVkYTc0YjRlZGNmMjFmZThmN2NkZTNjMWU2ZTVmNjUyIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"192.168.0.104\", \"REMOTE_PORT\": \"60539\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"192.168.0.50\", \"SERVER_NAME\": \"192.168.0.50\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://192.168.0.50/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735454966, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at 192.168.0.50 Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1735454966.961636, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1735463042, NULL, '', '2024-12-29 00:49:27', '2024-12-29 03:04:02'),
(5, 'Windows \"Not A(Brand\"', '192.168.0.50', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"192.168.0.50\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"XSRF-TOKEN=eyJpdiI6ImF0a2xnUUdWemVkU21TWmJEbVNNWmc9PSIsInZhbHVlIjoidVl2TlFoeW4zcGZla1NmMm16bFk3K3VEY0tpNEp2MmpNK243cWhURDFqT2ZrMGk1R0RHWTBOQVZOREd5TkdVY2M4RUFQWUJTS2NrMm1QNWtpMXdDeGZmWDg3MXd3WWJvUzZmbUlNbjY1azRVRzNNb0pQVmdSb2xqTFYwU210ZzgiLCJtYWMiOiJjNTY5NTBmOTIyOTZmZWJhOTllMTFhYmM4NmJlZDk4NjU2OGU3NTMyOTJjNzZmYWFjN2I2MTJmODAzNTgzMDIyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImpYdjFrT2pIYk83ajFRRGs4QTJFY2c9PSIsInZhbHVlIjoidCtEUXNFcU00Nkd1YldXb0hzRjBpK0FQM2J0UUJ0NFE4SGNBMWt2MWJLMEszOXhFZHA2WHN1Q2ZSVS90NTdiMzdPdmRta3BVc1NISWZqMDh4RytNeit0TEFZb1dQUnFWSTZBMm43Qmk2NzJOeEtQeWtMSjhUajVNMUpDKzZvWTUiLCJtYWMiOiI4MDI5MjUwOWIwOTNkYzlmMWQ4MDFmNTNiMDhlZjA5ZDAwMGJkZjM2MmQyNWRjMTYyMzYyZDNiZWZiZTA3NjA2IiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"192.168.0.50\", \"REMOTE_PORT\": \"61167\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"192.168.0.50\", \"SERVER_NAME\": \"192.168.0.50\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://192.168.0.50/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735455054, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at 192.168.0.50 Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1735455054.234834, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1735473445, NULL, '', '2024-12-29 00:50:54', '2024-12-29 05:57:25'),
(6, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"XSRF-TOKEN=eyJpdiI6Im5pNHR3RmMzTXVEUTNvYnRsek8rU0E9PSIsInZhbHVlIjoiQXBzVG1OTjFIQXF3dGZGWWdUSDNITEZYc2plRlRldTU4Yk5Dc3VQWWFtOWU0eTFOSzluLzY0dDN0dnA1TWpxTUtSdmN6Q0FPUjlsS3BZUnFBOE9raVd0QlNIVGtpZmRhcnZaSHZ2NXhuN0xnakx5ZlJKSGN6TElwemI0ZlJSbVciLCJtYWMiOiJmZTJlMGNlNGE4NDgzOGRhYzljMGJkYjI0MjY5NzQxM2VmMzg1NjcxNzEzYTVkNjgxMzIyMDM4NWRjNmJiOTkzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ii9xY2NKN3JFQm1wQ09WWGZudFp3VEE9PSIsInZhbHVlIjoiWnRNWDNBMUw5M3lHOGhDTy9oWEdya0kyZnJYVWpEL3VTVHNuUDBsMEp6Yzh3THh6SEZBcHJDY1FXMHZJck5VUlRlZEhiQ1ZKdG9lYlp6YmFNblNaZXljeW1xaDYzcXpqTllzUVJ4VFJrc25JWXZyMXZmeTUwcmtpRUtvS0NpRisiLCJtYWMiOiJlMDBiOWZlNjIxNDM2YmVlN2MzYzc3NDU1MTJlZjJhMjI5NmJhNzdmYTg4MWM4MTgxYTVjNjA0MDg0NzRmMzZmIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"62495\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735464676, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1735464676.04565, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1735471597, NULL, '', '2024-12-29 03:31:16', '2024-12-29 05:26:37'),
(7, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; laravel_dpos_session=eyJpdiI6IlN3QnA4aVZOeVpwaFo1b0FablBmMFE9PSIsInZhbHVlIjoiSllxZTZNZnZPWjhVYTRrd0M3TDRTUE1Wa25lYWpFZHlIaFNYYm5zQzVWRkxqK2RkU1I4WkpWdkJubzFZMlJNZDhYOGdka29RcUxFbUNMR1BGWXZ3a09OQ0k3YWhrekF4L1Fvay83RG96QUs2RVNVNzVoUGZHY2RUOUVLN0JzTTAiLCJtYWMiOiIwYjU5MGU4MzM4ZGU5MDI0M2QyZDAwMGE2MjcxMWQ1NzA0ZmUxZDE5ZDYzOGM5Yzc1NTAzYTQ3MjI2MjA5MzUzIiwidGFnIjoiIn0%3D; notunthikana_session=eyJpdiI6InpiblgvSU54NDNrTDB0NHgycUw3bnc9PSIsInZhbHVlIjoiWWJxek1oaW12dmVub3dlZ1IxRlJxU0xnb0ZXVHFJOU5iVHFJU2tYZW1HSjNZNFJQL2NuZDNONTk5TWhHZTRkNUxOQWhMcCtDeXNHN3RoYXc0RE9hMkJuNnRsdmtOaGhORXlSRFRHbS8zY2hEN2hFUyt6ckQ2OTZiWnhMa2x2MU8iLCJtYWMiOiI1N2EwMTEwMDg2ZDRkZTE1OWZkYWZhMzVkZjc3MGMxYThmZTQ1YWE1ZTIxZTFkN2UwNDE1MGVmZWEyNTBkNmE5IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlVnNk9NSWp5K1NrYS91RjQ2bmFFUnc9PSIsInZhbHVlIjoiZTBnYjRYWWhEN2o5ZERQZUpJaS90dmtRd2tGTFIvTG90MWUwTEpyYlR2UERUeDV1UXkwSmRxN3FRNkt4M0ZzVy9WVmZubWpDRVh6aVdGMDBjOXc4TXd3TFgvRmJtdXJramlxL0ZNWHEyTlgyQzQzY09Tdkk0NjN0Q29lSnF4R3AiLCJtYWMiOiI0ZTA1ODQxZTk0ZTc4N2I3NWM4NDdhMWJjMjJlOTQzMzEwZTdjMmZlOWU1MTc2Y2I1NWIwODQxMWE0NDQ0Njc4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImJ5ZXYySzlzSHZiWDBWTE5VSEx0d3c9PSIsInZhbHVlIjoiVmMxM0k0UWxZM2RINCthQlFSbFp1WDlHOVVpSTlYZDNXMmNGSlJTM2FFd25iWEhpdGtQQmxrbkJpQUt2bWIxOGVmczN6MnM1alREa1hjY3ByZGRxT1ZtcmhvUkVNVUZvVTExeS8vY3RlQnp6UkFHWXNwNUpsaVV0WEFZa3VabDkiLCJtYWMiOiJmMGI5OWE3MzdjMjg3MzBlOTA0N2RlY2ZlZWE2ZmM2YWIwNjZiN2Y1ZTZkNGJlNTkzYjkxNDU2YTcyYTYyMDM5IiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"51862\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin/dashboard\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735553226, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1735553226.991036, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1735555303, NULL, '', '2024-12-30 04:07:07', '2024-12-30 04:41:43'),
(8, 'Windows \"Not(A:Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"XSRF-TOKEN=eyJpdiI6IlNYU092OGh2Q1VkaElNdGMwUVJOSEE9PSIsInZhbHVlIjoiUzk2WkZQLzlKRlNBUmMxRGpJbm9FYUhpaUdmTnRrNXV5NktuUTgzZUlscFEyWkJXeEEvc2F3bXgwSHRZUDNJUHZwanN6Tjg1ZThTeUl3SG9FaVlZL2ZhZEdFYTNHZGxVT2wvWk51c0pJemR6VnNqb3c4amZ2dDZlU2xHekw4M00iLCJtYWMiOiJlYWI2YTNlMmNjNmIxODAyN2VlNDliZGQxMDY5ZWVlNDg3YzA2NTI2MjY4OWRkYWI0MTljNDI5MzNiM2JhZGI4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkFTUTVIei9yT0pITWNXcVEvdTI5SUE9PSIsInZhbHVlIjoiRlNydklXdS8xL09XNkdpbFVKRFo2bzRsNXRFU3MxT2lhZldwcCtabDg2dDJ3d1F5VFJLSHN3MEJpdHNrcDZWOElyc0QydUNOWklOTmNYa21UMzdsSFNmanJNRVI0Q3diQnhlbk5LWFpwVWFhUGwycWJ4Qzh3UDM3MnA0UmwvY3MiLCJtYWMiOiI3MDBkYzY2YjNmNGEwNWIyMjZlMTdlMWFkN2I0MzA0NzYzZWQ5ZWEwYjliNzJjMDZlMTlkN2I2ODQzZjRmZDk3IiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"51133\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1735792813, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1735792813.522886, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1735824092, NULL, '', '2025-01-01 22:40:13', '2025-01-02 07:21:32'),
(9, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; notunthikana_session=eyJpdiI6IjZId3dLMC93TE0xWHBSQU1CVms4Umc9PSIsInZhbHVlIjoiOXd6U0RzQXl3QVBSalpud00zT3lyK3Z6MWJkVmJJN2F4ZDVXTGhJWHdvR1RDaGlwZlhENVFwVk5UclI1SGFwM1BaR2lDbXE2cVBudHd4UENldlZic01uNEhHNVUrMzNBTWxHT1JJUllIUEFITmxNVkNLQUs2OWdLREJGQlcwQ3giLCJtYWMiOiIxODk2MjY4OTIzNzIwOTJlOWU2ZmRjMjU1ZmVlZWZiYzZjYWY5NTFjYWI0NzhjYTI2ODgxYjkxZjgzMWIxNzI2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImovTlZ5cjlUMVVFaHJKN1FPNkVSS0E9PSIsInZhbHVlIjoiTm9WQVdxNGJSUk5CcEFuZnpiUGM3QXlnQ25RQW5kVEs4c0EwN01xQ0ppbnBxVlk5K2hlQ3dQME5QeVRQT3k1RjR2NHoyaGNkMUxPSXhsd0hBaHVyM3FOWGZLemQ0Snd0bzBGWDBwQ2ZsQ1pVN2Jhd1VWK0dsUk80SkVyVDdnZTkiLCJtYWMiOiI5NzYxNmUzM2ZmYWRiNDMzMzg1OGM0YzllNzA0OTc0NDMxYTYyMTAxZWU5MDA5NzZiYTk1NGM3ODA3MzdiYzc3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IndqeXdXbmZlWkFwUWFVVFU3Z2dxZ1E9PSIsInZhbHVlIjoic1NkYlNFQmU2L1JBRWRDRjVZR2gyQUYxZ1h5TkhzQmVTUjFvcm41QVVsUXpOV2x6MU8vazR4TDVuYTJNN2VuSExhc1VtVlE5MHc3S1FlM1IzS2dGK2x1Zm5iWldKS1dlYWFhUldJTFpSaEZad3gwbkNRUytoazcrMTBBYlhtSGwiLCJtYWMiOiI3MGNhNDdlOWEyZjQ4OTVjYTliMzY2Y2Y0NzI5ZWNiZTcyNDNiZDU4ZDFiMWM0Mzg1OWJhYTBjZmE5YTliNTdlIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"51490\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1736224931, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1736224931.684746, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1736237615, NULL, '', '2025-01-06 22:42:11', '2025-01-07 02:13:35'),
(10, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; notunthikana_session=eyJpdiI6IjhBSUN5NUJXRlA3WHB0MDFwbjdsVXc9PSIsInZhbHVlIjoiRk5WcXdSamhuU0hVUzZCbGcrL240OUhNVnUzNE5HUDN3YktHSVFGUk9mdnBTa2ZON2RqcFBPVFp2cnM3R1hkYVh4cktCN2VjS21JakFSUFhTR0dmcjhST0pXcWpQcGNPLytuTmFnZGNlUThqaDhJRmk5WE56dnVkLzBRV2YwQlUiLCJtYWMiOiI4ZWJlNTZkZjA3NjhhNTk5NzVmYjM2NGEwYTg3MDJlYmViMTNkNjgyMzM4YzlkMDE1N2MwZWZjMWY2OGVkYjMyIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImR5YmMySVpOa29CTi9Vc3JWYk5MOEE9PSIsInZhbHVlIjoiekhHOUtDRlkva0NSbFlsTDhWc2FZejV1eDlIMVVBQ3A5WTg3MFA1Z29IdnJLTWZXSTVmYjdxUUJDaUdxY0sxVXJGKzJqYzZkSmo0ZVEwaVh6K1pDZFpUNUh6eGk2c0o4eGY5ZUtSOURuTGJodEFjeDJZWU1kc0lrbzl0L3ZjMnUiLCJtYWMiOiI5YmY0ZTM4OWY2YzZmYmZiM2M1OWExZmFlM2U5MzU2MDcyZDkyNmZjMTQ2MmQwNTNkZGQ1YjlhODY5MmI4YTlkIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkN5cTgrdVdXNnBnUVlYaXFzcm1GUEE9PSIsInZhbHVlIjoieUZ3d2lHMGRETDNvRDJ4azAyZkNvbEYrVEc5L0pkZWN2VnNKc2VEa0FNdXVYK05RaUpib2ZmYTVkbm51anlOREtWVk56aXp0ODFTWjF3SWkrUTFvaVpsaFNPR0RuSCt2NVVyYkRyVHVnb0xGYTUwMXBrS00veHJtOWtlaGVKZjIiLCJtYWMiOiIyNmFmZDUzZDk2YTczYmQ3Zjk5MjQ4ODQzNDczMTY2ZTllMmUyYzFlZGQ0M2FjYzM2MmMyZTQ3ZWQ5NjFhZDRmIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"57146\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1736313995, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1736313995.568879, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1736322671, NULL, '', '2025-01-07 23:26:35', '2025-01-08 01:51:11');
INSERT INTO `devices` (`id`, `device_type`, `ip`, `logout`, `suspend_date`, `data`, `creator`, `updater_id`, `user_agent`, `payload`, `last_activity`, `deleted_at`, `notification_data`, `created_at`, `updated_at`) VALUES
(11, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; g_state={\\\"i_l\\\":0}; notunthikana_session=eyJpdiI6Ik5XS1c4dHhEUGI3Z0ZDNTRCcnhiYlE9PSIsInZhbHVlIjoiQ1E5U0lIRUdaMGVZc0ZTMkgrMWlGSEtyeFEwUXErY2dxdHRiU0l0K1FkT3h1bElKV3pPNWo0aUJlYSs3bVY2M3Y3NHFiQTlqOU5rVU9PWGhMTVppMS9NSVpyNVFYWTY3WkpEaitRTW82VkQ3NDVaNjgrSkZxc0ticHlCdlgzTnEiLCJtYWMiOiI0NGJlMDA5ZTJhZjQwZmY3OGU3M2NhNTllYzkzNGU5OWY4ZDU3ZGZiMWZhYjZlNjQ0MTJjODIxN2M2MTM3YzI2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Im11b1RTQ2JEU2NyZ3poOFdzZnBBRnc9PSIsInZhbHVlIjoiSllQM3lpczFQKzkweUtmT0pnbDNHNFp3N21CalZ0YUwzbi8rK1pTZlpWbWxGVDRXaXcreU5sN0xHYWsxZS9IMDN0WUZTMW0xdE1OK2dhVlh2VTM5SlRSd1QyYkdxdzd1STR4blVVelJwWU5MWlNPcEQ2NmRuTCtBdExVRjIvdUgiLCJtYWMiOiJjNzY3MWEyYzlkODY2NzJkYjE3NjYzZjc5MTdlZGExMTRjMGI0MTBlNmMzYzM0OGVlNTBlN2FiZTJiN2VjYTI4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjNkOG90VFQwM2prVFY5aGlLc1drRFE9PSIsInZhbHVlIjoiYng0TDh0aG43N2VNTlF1N2lZMUREZUgxTHdOQlAxNUQ3Si9XM1JVOGNUNy9DS2oxQUpmeURFengxZlZzNm8yMkdOdFgyb2xiUUFzK2QrNzBlM2JSdnhVSzd0RFNqb0JGYk9QQkg2dlVwN1owOXRxWnNjZWlYK2JHa1o1ZERMQ08iLCJtYWMiOiIyYTZmMTQ4YWY1NDU5ZDJmYTA2Yzg2N2EzZjRhMGZkNjhhMjk5NzFjMjBmZjMwZDcxZjc2YWFjMWU5Y2RlNDhjIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"59160\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1736585326, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1736585326.507929, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1736593710, NULL, '', '2025-01-11 02:48:46', '2025-01-11 05:08:30'),
(12, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; g_state={\\\"i_l\\\":0}; laravel_dpos_session=eyJpdiI6IkV6eTZxRVlJSVZjdDhtUldVdGVnaGc9PSIsInZhbHVlIjoiVytVLzJvZUVvVEVHWUZ5WmM4TDRwMGtyb2EvWHltZ3JBOEI0SHFsUk1kcm9MdWJMUUJqWFptYm1ORkQ4aXZnbVZKY2hwYjE2enhJUlZDTzNLUlo5SXRLdTJCRXJRKytZZFY5bVNkR1Z6OVZUSFdyL2l4TndhdFFlNXVzbndLN0UiLCJtYWMiOiIxYjBhOGQ1ZGM1Yjk1ZmFjNmI5ZDJhYjBhNmYwZmNiNThlOWZhMWJkYzFhOWQxZjhjOTg4YjE1NmJiZGFjMGE2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InFJbUhEbEl0bUNqSVBOWnIyMkMzS2c9PSIsInZhbHVlIjoiT01CUi8xZ09FNlo3amxwRld4VG9JemVZWmNJWUUyOFNsNkJCYXg3NTBGU0dNTjFMekFvYzV1VmNESHZsbmYvem1nOXdRdWMxbFZjQ05sVGxaNkxLWkdoMmNyNTBlaXJVRWFGdVI0VUt3azlEUE01bThGa2dDbjN4RHVBOEtRS3YiLCJtYWMiOiJhMTU4ZGVlMzI2YjA1ZDBlOTRjNmM3Y2FlMmRkMTQzYjVkNWU1MjliMmI5MjE5NDA5MDY2YjUyNDUxNjYzYWVkIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjhNblVGd051QS9FMVRUZjhmZndhNFE9PSIsInZhbHVlIjoia0crV3NSR2x4R1BtQ20ybndSajBCSTN1V0VyeEQ2enA4bDRMVVdXV1F1ZnQrbnZ4V0JEZjB0WFJMLzlBbE1PRmY1K3JxZzRVbC8rUFJiSkpsenprSFlZVXBoakJva200c1Y2NkRCZi92SEczZWZqaHV4WlFEZENBeG5hNS9nRGwiLCJtYWMiOiJiMmY5MzVlMmVkMjg4MzllNTdhYzdiMzZjNjYxMWRiNGUxOWU2ZThiN2YzMGY3YTE0NTJlZGM2Mzk1MjQ4YjkxIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"59037\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1736915920, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1736915920.161467, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1736948016, NULL, '', '2025-01-14 22:38:40', '2025-01-15 07:33:36'),
(13, 'Windows \"Google Chrome\"', '103.198.133.215', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9,bn;q=0.8\",\"HTTP_COOKIE\":\"XSRF-TOKEN=eyJpdiI6IkNIL0tkR0w0UW1ZV2E2cnJTTGltaEE9PSIsInZhbHVlIjoia0JGa3pHazZYWTBIWlZDYzhQd1V6YWZHb1ZNTW9oMmhuR2NKeWV0cWt0RExDbG1IRmYvRHpqNk1jWmpBTVdzZ2FjNUpsVEFRbjhXV2E5MkhmbzFiYmg1T0J2Rjh4QjVHUUdTcVVUb2h1SzVCcWZYeitSeGhsSmdGcmJoZVA0UGgiLCJtYWMiOiIwNTk5MTg5MmMxYTk0YTc1MjFjZmVjYmY3MGI4NDZlOWRmY2RhNzUxNzg4N2U1ZmRkN2Y0YWZhY2YzMzU3YTdkIiwidGFnIjoiIn0%3D; laravel_pos_session=eyJpdiI6IkNuZkF4bmdVWUluU25vZVB5MGlGWnc9PSIsInZhbHVlIjoiampYYUt0ZlRKRDVBcVVvSmlKU2dsWXc5NlU1QUQ1UmhnVjBDbDVsNk8zVEd4MlEzU3lzdTRuOFRwRkJNVnlMNkNDN0JUNWZadDE1OHoyeENtL25ONW0xL2l6QlhOcXZVWmJGUm1qYnBoOFJ6SWs4Y3hBcHcvbElkWXRTOTJOdFkiLCJtYWMiOiIzZGNhNjdlYjc3NjA0OTJhZmUzOTBmMDlmNWVhMDYzYjEwNDQ1MmE2MzY1NGJlYmIwYjYzYzZhMTc4MzMyNjE2IiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"ecom.dengrweb.com\",\"HTTP_REFERER\":\"https:\\/\\/ecom.dengrweb.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\",\"REMOTE_ADDR\":\"103.198.133.215\",\"REMOTE_PORT\":\"60779\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"ecom.dengrweb.com\",\"SERVER_ADMIN\":\"webmaster@ecom.dengrweb.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/ecom.dengrweb.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1736946163.9727790355682373046875,\"REQUEST_TIME\":1736946163,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel_pos\",\"APP_ENV\":\"developemnt\",\"APP_KEY\":\"base64:P7X\\/6a9T5IDUanHEYBNT+x95G9\\/Yaq3icuR2AzosVlU=\",\"APP_DEBUG\":\"true\",\"APP_URL\":\"\\/\",\"ASSET_URL\":\"\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"dengrweb_ecom\",\"DB_USERNAME\":\"dengrweb_ecom\",\"DB_PASSWORD\":\"r_Mm!TIe!7(Q\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel_pos\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel_pos\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"SESSION_DOMAIN\":\".dengrweb.com\",\"SESSION_SECURE_COOKIE\":\"true\",\"GOOGLE_ANALYTICS_ID\":\"GTM-K3Q56C4X\"}', 1, 1, NULL, NULL, 1736947564, NULL, '', '2025-01-15 07:02:44', '2025-01-15 07:26:04'),
(14, 'Windows \"Not A(Brand\"', '103.198.133.215', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9\",\"HTTP_COOKIE\":\"XSRF-TOKEN=eyJpdiI6Ikdvam5FZ3hzQWFmRXVZcVFINUZzU2c9PSIsInZhbHVlIjoiTmE5L1A1YjkyQ3ZFQ3F5ZDlhT2hDcmdsMFVMWUU0cDVkaG1vN25hUTRESW9JYkJOUXYxUFl6dXM0dytNSlJXbFlENTE5S1p6bHlXcm9JaTFiTWs5VWJvOXJaMlVlOXJ3NnF6YkJFZXZMMzFTT2VkWi9mdmxST3JRZkN4Wlg0aHEiLCJtYWMiOiJhMjUyYzdkNWM5NDM1NDZjMTc5ZGU3ZDZkZjRlZDIzNDVlMzg1ZjIxYjE1OWUwNmU5MDNkNTI3ODQxNTg5M2UzIiwidGFnIjoiIn0%3D; laravel_pos_session=eyJpdiI6IlhIS2pSM0dkaHZtdHdiZG5NMkJMNWc9PSIsInZhbHVlIjoiNFJRSDNIdndwSXlMMTNKQmFsN29jRXh5aStVVE44anhiaE8vT0pBVm9hYVhKeU5JZ2xXc0w2ckF3Z0tSaFpKTENmUWcwcUMwNG1oRUIrZWZ3eVpSc1ArTmpnME41b2k2UmpKc3g1c2xhVHR0d1pmc0JSN1ZUc0dES0hGODNmZ1kiLCJtYWMiOiIzOTU5N2Q2ZGIyYzhjNjQ5YTdjMjk2MmE4ZWQyNjBlYTg5ODk3ZTM0YzRjNzNiZTZiNjdlZjkwYTZkMzA4ZjI1IiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"ecom.dengrweb.com\",\"HTTP_REFERER\":\"https:\\/\\/ecom.dengrweb.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/132.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\",\"REMOTE_ADDR\":\"103.198.133.215\",\"REMOTE_PORT\":\"54846\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"ecom.dengrweb.com\",\"SERVER_ADMIN\":\"webmaster@ecom.dengrweb.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/ecom.dengrweb.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1736946856.1711161136627197265625,\"REQUEST_TIME\":1736946856,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel_pos\",\"APP_ENV\":\"developemnt\",\"APP_KEY\":\"base64:P7X\\/6a9T5IDUanHEYBNT+x95G9\\/Yaq3icuR2AzosVlU=\",\"APP_DEBUG\":\"true\",\"APP_URL\":\"\\/\",\"ASSET_URL\":\"\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"dengrweb_ecom\",\"DB_USERNAME\":\"dengrweb_ecom\",\"DB_PASSWORD\":\"r_Mm!TIe!7(Q\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel_pos\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel_pos\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"SESSION_DOMAIN\":\".dengrweb.com\",\"SESSION_SECURE_COOKIE\":\"true\",\"GOOGLE_ANALYTICS_ID\":\"GTM-K3Q56C4X\"}', 1, 1, NULL, NULL, 1736947467, NULL, '', '2025-01-15 07:14:16', '2025-01-15 07:24:27'),
(15, 'Windows \"Not A(Brand\"', '103.198.133.215', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9\",\"HTTP_COOKIE\":\"cf_clearance=wuGUq8yBCvyRmaUBMAsOIrSmFbqzYfJpgJs7YGkTTlo-1736586261-1.2.1.1-VubDeKg4Lox0oY0QYlO9AFybhDRdmoGiKnGlqPxkhmOXXw5MypDSy5KNrZfDmV84I8wg9rBkrRmaQJSkgkxG0sDm0AuZUXwvP3.EhJT6_chVUU4BrYOjBTIaN_G1sk.mguNETyi4mrfGGmqVSxRTeG4m1v7UL7bPDA5BwmIXMr9ALHfkWDdW1i9LmJrIUhSqKQsTtUjQlLDZfCsukmdWFi.GSZYoW8ohtIh5m4Cuf6Srnuuql3.TsEfHZfmPe96IHiBBJsxVl0AusUuDn6N_NxxYGmaeM2FKfRu1gt41bBBtxSjrrNe6sIpGG4_kBCkz_f4eCAwhKIlbokSc4ftZ.w; XSRF-TOKEN=eyJpdiI6IlRDZlloSmJJVFF6SCtaTjBFcmk1dEE9PSIsInZhbHVlIjoiaVFScVpyWVRkV2ZuSjREblYrT1N0cHU0Z0Vjc2pSbEFudlJ2bHNFWG5lbDhjeFhvYVMwYUpZV0thNlVJQ2dVZzFobUx4TStZdjBHQ3BWVUFla0pzb0dTUm1ORElpQUkzM3JGQ1hTRFVwMTBMM3BQekxKeXcyeWhnN0t0ZnQ0b24iLCJtYWMiOiJmZDQyMzk4YTczZDk4M2M3MmY3OWJkNDk5NjU5OTYzMzMyOTZiMDM4ZWM0NjMwYTQ4ZjVjMzYzZmIzOTljZjMzIiwidGFnIjoiIn0%3D; laravel_pos_session=eyJpdiI6Ink3UmQ2Rys1SkJNQXowdkNvamNxemc9PSIsInZhbHVlIjoiOU1zbndycjdNRUdLQ3F2SExXYVZWME50V0piZCtRMm14dXRnb3RLWmZlWHV6KzZpWTNLUy85bnU0TE5ySkcxVUNzWlh4b3QxSHB4VkNOZUJ3d280VlVEK1ArZm1RY1d4S0dZR0JaMnZCeTdBTnAreENHMlFwVHcvNDFwcDhQZVYiLCJtYWMiOiI5NmUwZDg2YmM4NDRlMjZkZmQ3OWEyZDgzY2ExMzBmZjFjZWQ5NTZhMTYyODljODFkYjBlNWUwMjI2ZTAwNmM2IiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"ecom.dengrweb.com\",\"HTTP_REFERER\":\"https:\\/\\/ecom.dengrweb.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/132.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_FULL_VERSION_LIST\":\"\\\"Not A(Brand\\\";v=\\\"8.0.0.0\\\", \\\"Chromium\\\";v=\\\"132.0.6779.0\\\", \\\"Google Chrome\\\";v=\\\"132.0.6779.0\\\"\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\",\"HTTP_SEC_CH_UA_BITNESS\":\"\\\"64\\\"\",\"HTTP_SEC_CH_UA_MODEL\":\"\\\"\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_CH_UA_ARCH\":\"\\\"x86\\\"\",\"HTTP_SEC_CH_UA_FULL_VERSION\":\"\\\"132.0.6779.0\\\"\",\"HTTP_SEC_CH_UA_PLATFORM_VERSION\":\"\\\"19.0.0\\\"\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\",\"REMOTE_ADDR\":\"103.198.133.215\",\"REMOTE_PORT\":\"64348\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"ecom.dengrweb.com\",\"SERVER_ADMIN\":\"webmaster@ecom.dengrweb.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/ecom.dengrweb.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1737001007.0796658992767333984375,\"REQUEST_TIME\":1737001007,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel_pos\",\"APP_ENV\":\"developemnt\",\"APP_KEY\":\"base64:P7X\\/6a9T5IDUanHEYBNT+x95G9\\/Yaq3icuR2AzosVlU=\",\"APP_DEBUG\":\"true\",\"APP_URL\":\"\\/\",\"ASSET_URL\":\"\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"dengrweb_ecom\",\"DB_USERNAME\":\"dengrweb_ecom\",\"DB_PASSWORD\":\"r_Mm!TIe!7(Q\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel_pos\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel_pos\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"SESSION_DOMAIN\":\".dengrweb.com\",\"SESSION_SECURE_COOKIE\":\"true\",\"GOOGLE_ANALYTICS_ID\":\"GTM-K3Q56C4X\"}', 1, 1, NULL, NULL, 1737027515, NULL, '', '2025-01-15 22:16:47', '2025-01-16 05:38:35'),
(16, 'Windows \"Google Chrome\"', '103.198.133.215', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9,bn;q=0.8\",\"HTTP_COOKIE\":\"XSRF-TOKEN=eyJpdiI6ImpUTUxwYXlTZ292K2RWckd3ME8vMnc9PSIsInZhbHVlIjoiTkt0WURrem12MEJPU1lBQzNEcElqRnorcDNNU1lwdFFZVjZsT0RBeVNKZ1NnL2ZMaTFVNlphU09YS0pSd2M5eTdFQjAxUStYblVZSTcrMFdESmRWWVBsTXp4VzdRV2VidkV3cEdqbFIwZEdWNGJqUnpaMFhTalU1SmJwZHYzbmUiLCJtYWMiOiIzZDZjNTQ5YmRjOGVjMzg3NTRlNmI0NWY0YmNkMWE1ZWM3ZjdkZmQ4ZWQyNDFiNWI3ZTg1Y2I2MTc1MTQ4OWY1IiwidGFnIjoiIn0%3D; laravel_pos_session=eyJpdiI6IlcrUUowSDA4a1d5YXZQTDRxa1VMclE9PSIsInZhbHVlIjoiQjFVN3FUY1VYWFZOU2lzeWlIQ0hmbXVKYUFqL21hSi9kTS9QR0ZmQmREZ1p1aEZyWnFuVkxPZk5DRkhhSjYxb1gwTDZFVUpCRDNXTk5sNmZEd21wNzM1dngrQVo4dS9mRnJiUDVXVWZVMVdFUzVXUW0wYUorTENPVGxFY1BSOW8iLCJtYWMiOiIyYWRiMWM2ZmQxN2JlY2Y3NGY2YTBkMzE3Mzg0OGIxZTIyMDA3ZTY5OGQ1M2IzYzBlMWM1YzRjYmY5NWMzYjM5IiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"ecom.dengrweb.com\",\"HTTP_REFERER\":\"https:\\/\\/ecom.dengrweb.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\",\"REMOTE_ADDR\":\"103.198.133.215\",\"REMOTE_PORT\":\"49834\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"ecom.dengrweb.com\",\"SERVER_ADMIN\":\"webmaster@ecom.dengrweb.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/ecom.dengrweb.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1737001130.2799179553985595703125,\"REQUEST_TIME\":1737001130,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel_pos\",\"APP_ENV\":\"developemnt\",\"APP_KEY\":\"base64:P7X\\/6a9T5IDUanHEYBNT+x95G9\\/Yaq3icuR2AzosVlU=\",\"APP_DEBUG\":\"true\",\"APP_URL\":\"\\/\",\"ASSET_URL\":\"\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"dengrweb_ecom\",\"DB_USERNAME\":\"dengrweb_ecom\",\"DB_PASSWORD\":\"r_Mm!TIe!7(Q\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel_pos\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel_pos\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"SESSION_DOMAIN\":\".dengrweb.com\",\"SESSION_SECURE_COOKIE\":\"true\",\"GOOGLE_ANALYTICS_ID\":\"GTM-K3Q56C4X\"}', 1, 1, NULL, NULL, 1737001261, NULL, '', '2025-01-15 22:18:50', '2025-01-15 22:21:01'),
(17, 'Windows \"Google Chrome\"', '103.198.133.215', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9\",\"HTTP_COOKIE\":\"XSRF-TOKEN=eyJpdiI6IlBTL1J2MUNVUHZnVTJjVmJ5QnZQVEE9PSIsInZhbHVlIjoiUFQ0bkU2T2tVMmZpVjlDV05iUUpSOXpjZHNmcmdtRkVZRFhVZ2Q0NWhRTmhvUVRpakpPWktTNUt6akRtYVQ5MENSazN0OHdyYlNVb1BsdFFrQ1VvN2lkMVlSeHp5ZkZVbXJ6M0tNRmEzWER1b081end6WmwvQUNpaWQxTG1hZlEiLCJtYWMiOiI4YmU1NDIzYWUzMjExYThkMjVlZmU2ZmVmZWQ2ZDdjMDQ5ZGMzNmFjYjNkMmIxYjMxOTliOTI1ZjQxZDBiMTQ5IiwidGFnIjoiIn0%3D; laravel_pos_session=eyJpdiI6InR4cDloNHFVU25Xb2pSYjdpZVo5T3c9PSIsInZhbHVlIjoiV3FxNXFSbVdzZmVWOEd2elhQMDNOL0tGSkY3UEpUUGlhZmxteXdCTXBCMnc0ZFQzMkMwNUk1akVQdyt1blVwc1RMUFQrRmZvdE1GMU9kTnZLdnJWeWRHVTNzR0pIbkdWOCt5NUNETU9HcUxlZDRtZ1VJMW5yY2dsSTNPT3IxQlIiLCJtYWMiOiI4OTUwODI4ZDhmMTBlOWZjZjA3M2ZmOTdkZTM2MjMzNTllMWMzZTYyMWZlY2ZjNWM1OTU5MWE0ODVmY2E3NmRmIiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"ecom.dengrweb.com\",\"HTTP_REFERER\":\"https:\\/\\/ecom.dengrweb.com\\/admin\\/unit\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\",\"REMOTE_ADDR\":\"103.198.133.215\",\"REMOTE_PORT\":\"50112\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"ecom.dengrweb.com\",\"SERVER_ADMIN\":\"webmaster@ecom.dengrweb.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/ecom.dengrweb.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1737001205.9665720462799072265625,\"REQUEST_TIME\":1737001205,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel_pos\",\"APP_ENV\":\"developemnt\",\"APP_KEY\":\"base64:P7X\\/6a9T5IDUanHEYBNT+x95G9\\/Yaq3icuR2AzosVlU=\",\"APP_DEBUG\":\"true\",\"APP_URL\":\"\\/\",\"ASSET_URL\":\"\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"dengrweb_ecom\",\"DB_USERNAME\":\"dengrweb_ecom\",\"DB_PASSWORD\":\"r_Mm!TIe!7(Q\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel_pos\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel_pos\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"SESSION_DOMAIN\":\".dengrweb.com\",\"SESSION_SECURE_COOKIE\":\"true\",\"GOOGLE_ANALYTICS_ID\":\"GTM-K3Q56C4X\"}', 1, 1, NULL, NULL, 1737027514, NULL, '', '2025-01-15 22:20:05', '2025-01-16 05:38:34'),
(18, 'Windows \"Google Chrome\"', '103.198.133.215', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9,bn;q=0.8\",\"HTTP_COOKIE\":\"XSRF-TOKEN=eyJpdiI6IjlIVDd2MW9zZThESGFvOWE1YXBFZFE9PSIsInZhbHVlIjoiU0J0UWxBWWg5ZDRHZXU5bHlySUZYcVljUFlpWWQ1ZFpSN2Y4Y2QwVDA5UmpzU1NRQXpGTDhkbysvQ0NtMUxwYUw0RTBPNEpkRUI3K2ZWdm5LMytXQUlTMG44bWFGVi9FdlQyTkp0YjJTRXpyTnprYmsyNDZYMkwwempPSnNpYS8iLCJtYWMiOiI2NTc3NmRiNDQ5ZjdhMWRiNjlmYTUzYTAzNjQzYmM1NDFjNTQzYjNiMTkwMzVmODVkY2Q0ZTFjNWViOGJmMzQwIiwidGFnIjoiIn0%3D; laravel_pos_session=eyJpdiI6ImxRY1dRTHBzNlZOZVY3d0JxampsL1E9PSIsInZhbHVlIjoiaEdXWVB4R2FhTEU5ZVpsNXUyUmFMMDlhMmJ3SGRMM0JzV3JqeVQyUTdrK1NMR2xZZlFBUHlEbVh2dVVuVjFYMDljQ3dObVJRYTFySVFVYW5DZkJEbXFwMGFaV0hFaklVbi96b0JpbGhJTHpSaGp6dXhDOGNnc0JBZjJFTCt0cjAiLCJtYWMiOiI0OWQ0ZTQ4ZmU4M2MyOTAyMTdhZmM1YjI3MmRhNDIwZDk0NjY4Y2I2MmYwZGI0YmNkMTJmZWNlMmUyYjI3MzMwIiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"ecom.dengrweb.com\",\"HTTP_REFERER\":\"https:\\/\\/ecom.dengrweb.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\",\"REMOTE_ADDR\":\"103.198.133.215\",\"REMOTE_PORT\":\"65179\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"ecom.dengrweb.com\",\"SERVER_ADMIN\":\"webmaster@ecom.dengrweb.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/dengrweb\\/ecom.dengrweb.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/ecom.dengrweb.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1737027282.7746150493621826171875,\"REQUEST_TIME\":1737027282,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel_pos\",\"APP_ENV\":\"developemnt\",\"APP_KEY\":\"base64:P7X\\/6a9T5IDUanHEYBNT+x95G9\\/Yaq3icuR2AzosVlU=\",\"APP_DEBUG\":\"true\",\"APP_URL\":\"\\/\",\"ASSET_URL\":\"\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"dengrweb_ecom\",\"DB_USERNAME\":\"dengrweb_ecom\",\"DB_PASSWORD\":\"r_Mm!TIe!7(Q\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel_pos\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel_pos\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"SESSION_DOMAIN\":\".dengrweb.com\",\"SESSION_SECURE_COOKIE\":\"true\",\"GOOGLE_ANALYTICS_ID\":\"GTM-K3Q56C4X\"}', 1, 1, NULL, NULL, 1737027515, NULL, '', '2025-01-16 05:34:42', '2025-01-16 05:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `type` varchar(125) NOT NULL DEFAULT '0',
  `amount` varchar(125) NOT NULL DEFAULT '0',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `type`, `amount`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'HappyNewYear', '0', '20', '1', 0, '2024-12-29 00:51:27', '2024-12-29 00:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` varchar(125) DEFAULT NULL,
  `year` varchar(125) NOT NULL DEFAULT '0',
  `month` varchar(125) NOT NULL DEFAULT '0',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expriences`
--

CREATE TABLE `expriences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(125) DEFAULT NULL,
  `designation` varchar(125) DEFAULT NULL,
  `joining_date` varchar(125) DEFAULT NULL,
  `exit_date` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(125) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(125) DEFAULT NULL,
  `answer` varchar(125) DEFAULT NULL,
  `status` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(2, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(3, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(4, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(5, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(6, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(7, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(8, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(9, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(10, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(11, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(12, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(13, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(14, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(15, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(16, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(17, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(18, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(19, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(20, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(21, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-15 05:35:58', '2025-01-15 05:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `fcms`
--

CREATE TABLE `fcms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fcm_private_key` varchar(125) DEFAULT NULL,
  `fcm_public_key` varchar(125) DEFAULT NULL,
  `fcm_status_key` tinyint(1) NOT NULL DEFAULT 0,
  `creator` bigint(20) DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcms`
--

INSERT INTO `fcms` (`id`, `fcm_private_key`, `fcm_public_key`, `fcm_status_key`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, '9IzLk8M_5OjGgIT5xLYyRoSHbkTl2wR4tSIgTJiikOs', 'BEaBNMfmaFzxbCbix8u9SnnGpcQljcz6CwrxLTw5xGoljkGZsdm5zpuqpHmkS3djcaJTI_pmRmYTjhodXn0xnLA', 0, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(125) DEFAULT NULL,
  `title` varchar(125) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT 0,
  `slug` varchar(125) DEFAULT NULL,
  `status` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon_class`, `title`, `short_description`, `description`, `upload_id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(2, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(3, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(4, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(5, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(6, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(7, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(8, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(9, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(10, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(11, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(12, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(13, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(14, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(15, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(16, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(17, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(18, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(19, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(20, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(21, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(22, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(23, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(24, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(25, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(26, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(27, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(28, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(29, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(30, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(31, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(32, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(33, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(34, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(35, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `footer_link_headings`
--

CREATE TABLE `footer_link_headings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(125) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_link_headings`
--

INSERT INTO `footer_link_headings` (`id`, `title`, `status`, `updater`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Useful Links', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(2, 'Our Services', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(3, 'Hic solutasetp', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(4, 'Nobis illum', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `footer_link_sub_headings`
--

CREATE TABLE `footer_link_sub_headings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading_id` varchar(125) NOT NULL DEFAULT '1',
  `title` varchar(125) DEFAULT NULL,
  `url` varchar(125) DEFAULT NULL,
  `icon` varchar(125) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_link_sub_headings`
--

INSERT INTO `footer_link_sub_headings` (`id`, `heading_id`, `title`, `url`, `icon`, `status`, `updater`, `creator`, `created_at`, `updated_at`) VALUES
(96, '4', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(95, '4', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(94, '4', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(93, '4', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(92, '3', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(91, '3', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(90, '3', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(89, '3', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(88, '2', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(87, '2', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(86, '2', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(85, '2', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(84, '1', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(83, '1', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(82, '1', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(81, '1', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(1, '1', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(2, '1', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(3, '1', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(4, '1', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(5, '2', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(6, '2', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(7, '2', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(8, '2', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(9, '3', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(10, '3', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(11, '3', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(12, '3', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(13, '4', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(14, '4', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(15, '4', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59'),
(16, '4', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2024-12-29 23:41:59', '2024-12-29 23:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL DEFAULT '',
  `slug` varchar(125) NOT NULL DEFAULT '',
  `position` varchar(125) NOT NULL COMMENT ' left ,  center,  right',
  `order` int(11) NOT NULL DEFAULT 0,
  `page_id` int(11) NOT NULL DEFAULT 0,
  `is_page` tinyint(1) NOT NULL DEFAULT 0,
  `is_text` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `name`, `slug`, `position`, `order`, `page_id`, `is_page`, `is_text`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Explore New', '#', 'right', 0, 0, 0, 1, 1, '2025-01-07 01:24:53', '2025-01-11 03:59:02'),
(9, 'About', 'about-us', 'center', 0, 2, 1, 0, 1, '2025-01-07 01:22:54', '2025-01-07 01:24:10'),
(10, 'Filter', 'filter', 'center', 0, 3, 1, 0, 1, '2025-01-07 01:22:55', '2025-01-07 01:22:58'),
(12, 'Category', '#', 'left', 0, 0, 0, 0, 1, '2025-01-07 01:24:07', '2025-01-11 03:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_manages`
--

CREATE TABLE `home_page_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(125) NOT NULL,
  `title` varchar(125) DEFAULT NULL,
  `title_status` varchar(125) NOT NULL DEFAULT '1',
  `sub_title` varchar(125) DEFAULT NULL,
  `sub_title_status` varchar(125) NOT NULL DEFAULT '1',
  `short_read_more` varchar(125) NOT NULL DEFAULT 'Read More',
  `short_read_more_status` tinyint(1) NOT NULL DEFAULT 1,
  `short_read_more_page_url` varchar(125) DEFAULT NULL,
  `view_all` varchar(125) NOT NULL DEFAULT 'See All',
  `view_all_status` tinyint(1) NOT NULL DEFAULT 1,
  `view_all_page_url` varchar(125) DEFAULT NULL,
  `items_per_row` int(11) NOT NULL DEFAULT 3,
  `items_show` int(11) NOT NULL DEFAULT 4,
  `is_details_page` int(11) NOT NULL DEFAULT 0,
  `background` varchar(125) NOT NULL DEFAULT '0',
  `background_color` varchar(125) NOT NULL DEFAULT '#eeeeee',
  `background_type` tinyint(1) NOT NULL DEFAULT 1,
  `controlby` varchar(125) NOT NULL DEFAULT '1' COMMENT '1 => Homepage',
  `is_banner` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 1,
  `status` varchar(125) NOT NULL DEFAULT '1',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_manages`
--

INSERT INTO `home_page_manages` (`id`, `key`, `title`, `title_status`, `sub_title`, `sub_title_status`, `short_read_more`, `short_read_more_status`, `short_read_more_page_url`, `view_all`, `view_all_status`, `view_all_page_url`, `items_per_row`, `items_show`, `is_details_page`, `background`, `background_color`, `background_type`, `controlby`, `is_banner`, `order`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '_hero_variant._hero_style3', 'Hero Style 3', '0', 'Hero Sub Title', '0', 'Read More', 0, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, '1', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(2, '_category_variant._category_style2', 'Category Style 2', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 12, 15, 0, '0', '#eeeeee', 0, '1', 0, 2, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(3, '_product_variant._recent_product', 'Product Style 3', '0', 'Category Sub Title', '0', 'Read More', 0, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 0, 3, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(4, '_product_variant._feature_product', 'Product  Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 4, 4, 0, '0', '#eeeeee', 0, '1', 0, 4, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(5, '_product_variant._popular_product', 'Product Style 2', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 0, 5, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(6, '_product_variant._recommended_product', 'Product Style 3', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, '1', 0, 7, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(7, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '2', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(8, '_about_us_variant.about_us_style1', 'About page 1', '0', 'About Us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '2', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(9, '_faq_variant._faq_style1', 'Faq style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '2', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(10, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '3', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(11, '_filter_variant.filter_vaiant1', 'Product Filter  1', '0', 'Product Filter Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '3', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(12, '_product_details.product_details1', 'Product Details page 1', '0', 'Product Details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '4', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(13, '_cart_variant.cart_style1', 'Product Filter  1', '0', 'Product Filter Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '5', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(14, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '6', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(15, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', 'Product checkout Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '6', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(16, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '7', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(17, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', 'Product tracking Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '7', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(18, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '8', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(19, '_service_variant._service_style1', 'Service Style 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '8', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(20, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '9', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(21, '_service_view_variant._service_view1', 'Service View 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '9', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(22, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '10', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(23, '_register_variant.register_style1', 'Register us  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, '10', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(24, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(25, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(26, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 0, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(35, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 0, 1, '1', '0', '0', NULL, '2025-01-14 22:45:24', '2025-01-15 05:02:38'),
(28, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:39'),
(29, '_profile._location.variant_1', 'profile location style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:39'),
(30, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:39'),
(31, '_profile._cart.variant_1', 'Profile cart style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:39'),
(32, '_wishlist_variant.wish_list_style1', 'Wishlist', '0', NULL, '0', 'Read More', 1, NULL, 'View All', 0, NULL, 0, 4, 0, '0', '#eeeeee', 0, '11', 0, 1, '1', '0', '0', NULL, '2025-01-07 23:49:17', '2025-01-07 23:49:17'),
(34, '_banner_card._bannar_card1', NULL, '0', NULL, '0', 'Read More', 0, NULL, 'View All', 0, NULL, 0, 4, 0, '87', '#eeeeee', 0, '1', 0, 6, '1', '0', '0', NULL, '2025-01-11 03:44:31', '2025-01-11 03:48:10'),
(36, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 0, 1, '1', '0', '0', NULL, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(38, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '22', 0, 1, '1', '0', '0', NULL, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(40, '_profile._checkout.variant_1', 'Checkout Page 1', '0', 'Checkout Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 0, 1, '1', '0', '0', NULL, '2025-01-15 05:16:48', '2025-01-15 05:16:48'),
(41, '_profile._payment_information.variant_1', 'Payment Page 1', '0', 'Payment Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '22', 0, 1, '1', '0', '0', NULL, '2025-01-15 05:16:48', '2025-01-15 05:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(125) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updater_id` bigint(20) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `status`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'en', 1, 1, 1, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(2, 'bn', 1, 1, 1, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(3, 'en', 1, 1, 1, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(4, 'bn', 1, 1, 1, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(5, 'en', 1, 1, 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(6, 'bn', 1, 1, 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(7, 'en', 1, 1, 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(8, 'bn', 1, 1, 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(9, 'en', 1, 1, 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(10, 'bn', 1, 1, 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(11, 'en', 1, 1, 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(12, 'bn', 1, 1, 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(13, 'en', 1, 1, 1, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(14, 'bn', 1, 1, 1, '2025-01-15 05:35:59', '2025-01-15 05:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_lead_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `contact_id` bigint(20) NOT NULL DEFAULT 0,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_accounts`
--

CREATE TABLE `lead_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `phone` varchar(125) DEFAULT NULL,
  `website` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_contacts`
--

CREATE TABLE `lead_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `phone` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `account_id` varchar(125) NOT NULL,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_deals`
--

CREATE TABLE `lead_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(125) DEFAULT NULL,
  `note_replay` varchar(125) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `stage_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` bigint(20) NOT NULL DEFAULT 0,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_deal_stages`
--

CREATE TABLE `lead_deal_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `creator` bigint(20) NOT NULL,
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_deal_stages`
--

INSERT INTO `lead_deal_stages` (`id`, `name`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(2, 'Reschedule', 1, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(3, 'Qualified', 1, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(4, 'Closed', 1, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(5, 'Pending', 1, 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(6, 'Reschedule', 1, 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(7, 'Qualified', 1, 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(8, 'Closed', 1, 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(9, 'Pending', 1, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(10, 'Reschedule', 1, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(11, 'Qualified', 1, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(12, 'Closed', 1, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(13, 'Pending', 1, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(14, 'Reschedule', 1, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(15, 'Qualified', 1, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(16, 'Closed', 1, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(17, 'Pending', 1, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(18, 'Reschedule', 1, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(19, 'Qualified', 1, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(20, 'Closed', 1, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(21, 'Pending', 1, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(22, 'Reschedule', 1, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(23, 'Qualified', 1, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(24, 'Closed', 1, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(25, 'Pending', 1, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(26, 'Reschedule', 1, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(27, 'Qualified', 1, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(28, 'Closed', 1, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `lead_sources`
--

CREATE TABLE `lead_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_sources`
--

INSERT INTO `lead_sources` (`id`, `name`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'website', '1', 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(2, 'Facebook', '1', 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(3, 'Email', '1', 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(4, 'Twitter', '1', 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(5, 'Voice Call', '1', 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(6, 'Whatsapp', '1', 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(7, 'Linkedin', '1', 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(8, 'website', '1', 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(9, 'Facebook', '1', 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(10, 'Email', '1', 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(11, 'Twitter', '1', 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(12, 'Voice Call', '1', 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(13, 'Whatsapp', '1', 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(14, 'Linkedin', '1', 0, '2025-01-15 05:02:36', '2025-01-15 05:02:36'),
(15, 'website', '1', 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(16, 'Facebook', '1', 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(17, 'Email', '1', 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(18, 'Twitter', '1', 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(19, 'Voice Call', '1', 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(20, 'Whatsapp', '1', 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(21, 'Linkedin', '1', 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(22, 'website', '1', 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(23, 'Facebook', '1', 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(24, 'Email', '1', 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(25, 'Twitter', '1', 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(26, 'Voice Call', '1', 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(27, 'Whatsapp', '1', 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(28, 'Linkedin', '1', 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(29, 'website', '1', 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(30, 'Facebook', '1', 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(31, 'Email', '1', 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(32, 'Twitter', '1', 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(33, 'Voice Call', '1', 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(34, 'Whatsapp', '1', 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(35, 'Linkedin', '1', 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(36, 'website', '1', 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(37, 'Facebook', '1', 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(38, 'Email', '1', 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(39, 'Twitter', '1', 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(40, 'Voice Call', '1', 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(41, 'Whatsapp', '1', 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(42, 'Linkedin', '1', 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(43, 'website', '1', 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(44, 'Facebook', '1', 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(45, 'Email', '1', 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(46, 'Twitter', '1', 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(47, 'Voice Call', '1', 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(48, 'Whatsapp', '1', 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(49, 'Linkedin', '1', 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

CREATE TABLE `mail_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_address` varchar(125) DEFAULT NULL,
  `from_name` varchar(125) DEFAULT NULL,
  `smtp_encryption` varchar(125) DEFAULT NULL,
  `smtp_host` varchar(125) DEFAULT NULL,
  `smtp_password` varchar(125) DEFAULT NULL,
  `smtp_port` varchar(125) DEFAULT NULL,
  `smtp_username` varchar(125) DEFAULT NULL,
  `status` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `from_address`, `from_name`, `smtp_encryption`, `smtp_host`, `smtp_password`, `smtp_port`, `smtp_username`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(2, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(3, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(4, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(5, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(6, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(7, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-15 05:35:59', '2025-01-15 05:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `keywords` varchar(125) NOT NULL,
  `template` longtext DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `updater_id` bigint(20) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `name`, `keywords`, `template`, `creator`, `updater_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test_mail', 'name', 'test_mail', 1, 1, NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(2, 'order_create', 'name', 'test_mail', 1, 1, NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(3, 'order_status_change', 'name', 'test_mail', 1, 1, NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(4, 'order_reject', 'name', 'test_mail', 1, 1, NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_type` int(11) NOT NULL DEFAULT 0 COMMENT '1 text, 2 voice, 3 image, 4 video',
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(125) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(74, '2024_12_29_155344_create_sessions_table', 2),
(75, '2025_01_02_103521_create_supplier_payments_table', 2),
(76, '2025_01_07_132238_create_coupon_use_histories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
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

CREATE TABLE `offer_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(125) DEFAULT NULL,
  `subtitle` varchar(125) DEFAULT NULL,
  `image1` varchar(125) NOT NULL DEFAULT '0',
  `image2` varchar(125) NOT NULL DEFAULT '0',
  `image3` varchar(125) NOT NULL DEFAULT '0',
  `status` varchar(125) NOT NULL DEFAULT '0',
  `link` varchar(125) NOT NULL DEFAULT '#',
  `offer_end_data` timestamp NULL DEFAULT NULL,
  `type` varchar(125) NOT NULL DEFAULT '0' COMMENT '1 => feature card 2 => full banner 3 => countdown',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_banners`
--

INSERT INTO `offer_banners` (`id`, `title`, `subtitle`, `image1`, `image2`, `image3`, `status`, `link`, `offer_end_data`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Special Offer', 'Aero Control Pro Joysticks', '82', '86', '83', '0', '#', '2025-01-20 06:20:57', '1', NULL, '2025-01-11 03:37:42'),
(2, 'Hurry up! Offer ends in', NULL, '79', '78', '87', '0', '#', '2025-01-20 06:20:57', '2', NULL, '2025-01-11 03:47:01'),
(3, 'Hurry up! Offer ends in', NULL, '87', '82', '77', '0', '#', '2025-01-20 06:20:57', '3', NULL, '2025-01-11 03:45:56'),
(4, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-07 05:02:35', '1', NULL, NULL),
(5, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:02:35', '2', NULL, NULL),
(6, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:02:35', '3', NULL, NULL),
(7, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-07 05:12:56', '1', NULL, NULL),
(8, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:12:56', '2', NULL, NULL),
(9, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:12:56', '3', NULL, NULL),
(10, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-07 05:15:22', '1', NULL, NULL),
(11, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:15:22', '2', NULL, NULL),
(12, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:15:22', '3', NULL, NULL),
(13, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-07 05:16:47', '1', NULL, NULL),
(14, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:16:47', '2', NULL, NULL),
(15, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:16:47', '3', NULL, NULL),
(16, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-07 05:26:56', '1', NULL, NULL),
(17, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:26:56', '2', NULL, NULL),
(18, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:26:56', '3', NULL, NULL),
(19, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-07 05:35:58', '1', NULL, NULL),
(20, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:35:58', '2', NULL, NULL),
(21, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-07 05:35:58', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL DEFAULT 0,
  `order_id` bigint(20) NOT NULL DEFAULT 0,
  `product_ids` text DEFAULT NULL,
  `product_json` longtext DEFAULT NULL,
  `delivery_status` varchar(125) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT 0,
  `quantitys` varchar(125) NOT NULL DEFAULT '0',
  `discount_id` varchar(125) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT 0,
  `vat` varchar(125) NOT NULL DEFAULT '0',
  `status` varchar(125) NOT NULL DEFAULT '0',
  `cash_collection` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL,
  `billing_address` varchar(250) DEFAULT '0',
  `address` varchar(250) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_id`, `product_ids`, `product_json`, `delivery_status`, `quantity`, `quantitys`, `discount_id`, `price`, `vat`, `status`, `cash_collection`, `created_at`, `updated_at`, `note`, `billing_address`, `address`) VALUES
(1, 5, 1736586797, '[{\"pd_16vr_10\":{\"product_id\":\"16\",\"quantaty\":\"5\",\"size\":\"10\"}},{\"pd_13\":{\"product_id\":\"13\",\"quantaty\":1,\"size\":0}}]', '{\"subtotal\":{\"price\":20424.8,\"vat\":396.32,\"quantity\":6,\"total_price\":0,\"total_vat\":0,\"discount\":990.8,\"coupon\":0,\"coupon_without_price\":20424.8,\"quantitys\":{\"16\":\"5\",\"13\":1},\"product_ids\":[{\"pd_16vr_10\":{\"product_id\":\"16\",\"quantaty\":\"5\",\"size\":\"10\"}},{\"pd_13\":{\"product_id\":\"13\",\"quantaty\":1,\"size\":0}}]},\"product\":[{\"size\":\"10\",\"quantity\":\"5\",\"session_id\":\"pd_16vr_10\",\"product\":{\"id\":16,\"name\":\"Alma Tate\",\"product_id\":\"p-9\",\"sku\":\"Bruce Mcintosh\",\"slug\":\"alma-tate-1\",\"category\":\"11\",\"brand\":\"0\",\"weight\":\"Trevor Boyer\",\"description\":\"<p>ghjkghj<\\/p>\",\"additional_description\":\"<p>gkjhghk<\\/p>\",\"unit\":\"1\",\"for_selling\":\"1\",\"garage\":\"Priscilla Lucas\",\"route\":\"Germane Melendez\",\"feature\":\"1\",\"alert_quantity\":\"384\",\"discount_id\":\"1\",\"creator\":\"1\",\"upload_id\":\"0\",\"uploads_id\":\"0\",\"sub_category\":\"5\",\"short_description\":\"Ipsam sint officiis\",\"youtube_video\":\"Pariatur Officia al\",\"tags\":null,\"views\":0,\"old_price\":19,\"selling_price\":236,\"vat\":\"2\",\"service\":0,\"variant_on\":\"1\",\"variant_option\":\"{\\\"variant_key\\\":\\\"red,yellow,blue\\\",\\\"vairant_value\\\":\\\"S,L,T\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#486cec\",\"landing_page_color\":\"#db41e9\",\"landing_page_deasing_id\":null,\"created_at\":\"2025-01-07T04:47:17.000000Z\",\"updated_at\":\"2025-01-07T04:47:17.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/fixing.png\",\"avg_rat\":0,\"rat_count\":0},\"product_variant\":{\"id\":10,\"product_id\":16,\"name\":\"red:S\",\"old_price\":\"45645\",\"selling_price\":\"4564\",\"alert_quantity\":\"0\",\"creator\":1,\"created_at\":\"2025-01-07T04:47:17.000000Z\",\"updated_at\":\"2025-01-07T04:47:17.000000Z\"},\"vat\":{\"id\":2,\"name\":\"New Vat\",\"type\":\"1\",\"status\":\"1\",\"amount\":\"10\",\"creator\":\"1\",\"created_at\":\"2024-12-29T08:48:18.000000Z\",\"updated_at\":\"2024-12-29T08:48:18.000000Z\"},\"price\":\"4564\",\"discount_price\":912.8,\"price_discount\":3651.2,\"vat_price\":365.12,\"cal_total_with_vat\":4016.3199999999997,\"single_subtotal\":20081.6},{\"size\":0,\"quantity\":1,\"session_id\":\"pd_13\",\"product\":{\"id\":13,\"name\":\"Modal Constracr\",\"product_id\":\"p-6\",\"sku\":\"Sku-19JH5\",\"slug\":\"modal-constracr\",\"category\":\"11\",\"brand\":\"14\",\"weight\":\"1000gm\",\"description\":\"<p><strong style=\\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">Lorem Ipsum<\\/strong><span style=\\\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book<\\/span><\\/p>\",\"additional_description\":\"<p><strong style=\\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">Lorem Ipsum<\\/strong><span style=\\\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book<\\/span><\\/p>\",\"unit\":\"1\",\"for_selling\":\"1\",\"garage\":\"45\",\"route\":\"4\",\"feature\":\"1\",\"alert_quantity\":\"1000\",\"discount_id\":\"1\",\"creator\":\"1\",\"upload_id\":\"72\",\"uploads_id\":\"72\",\"sub_category\":\"11\",\"short_description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":500,\"selling_price\":390,\"vat\":\"2\",\"service\":1,\"variant_on\":\"1\",\"variant_option\":\"{\\\"variant_key\\\":\\\"red,yellow,blue\\\",\\\"vairant_value\\\":\\\"S\\\"}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T10:50:06.000000Z\",\"updated_at\":\"2025-01-07T06:22:51.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/4465369769333381430.jpg\",\"avg_rat\":0,\"rat_count\":0},\"product_variant\":null,\"vat\":{\"id\":2,\"name\":\"New Vat\",\"type\":\"1\",\"status\":\"1\",\"amount\":\"10\",\"creator\":\"1\",\"created_at\":\"2024-12-29T08:48:18.000000Z\",\"updated_at\":\"2024-12-29T08:48:18.000000Z\"},\"price\":390,\"discount_price\":78,\"price_discount\":312,\"vat_price\":31.2,\"cal_total_with_vat\":343.2,\"single_subtotal\":343.2}]}', '0', 6, '{\"16\":\"5\",\"13\":1}', '990.8', 20425, '396.32', '1', 20425, '2025-01-11 03:13:17', '2025-01-11 03:13:17', '', '1', '1'),
(2, 6, 1736924931, '[{\"pd_9\":{\"product_id\":\"9\",\"quantaty\":1,\"size\":0}},{\"pd_7\":{\"product_id\":\"7\",\"quantaty\":1,\"size\":0}},{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":1,\"size\":0}}]', '{\"subtotal\":{\"price\":540,\"vat\":20,\"quantity\":3,\"total_price\":0,\"total_vat\":0,\"discount\":80,\"coupon\":0,\"coupon_without_price\":540,\"quantitys\":{\"9\":1,\"7\":1,\"2\":1},\"product_ids\":[{\"pd_9\":{\"product_id\":\"9\",\"quantaty\":1,\"size\":0}},{\"pd_7\":{\"product_id\":\"7\",\"quantaty\":1,\"size\":0}},{\"pd_2\":{\"product_id\":\"2\",\"quantaty\":1,\"size\":0}}]},\"product\":[{\"size\":0,\"quantity\":1,\"session_id\":\"pd_9\",\"product\":{\"id\":9,\"name\":\"Sanitary\",\"product_id\":\"p-3\",\"sku\":\"Sku-19JH5\",\"slug\":\"sanitary-1\",\"category\":\"11\",\"brand\":\"13\",\"weight\":\"400\",\"description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy<\\/span><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy<\\/span><\\/p>\",\"unit\":\"5\",\"for_selling\":\"1\",\"garage\":\"100\",\"route\":\"5\",\"feature\":\"0\",\"alert_quantity\":\"100\",\"discount_id\":\"1\",\"creator\":\"1\",\"upload_id\":\"77\",\"uploads_id\":\"70\",\"sub_category\":\"10\",\"short_description\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":400,\"selling_price\":250,\"vat\":\"2\",\"service\":0,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T08:48:53.000000Z\",\"updated_at\":\"2025-01-11T09:21:39.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/4676469814277488744.jpeg\",\"avg_rat\":4,\"rat_count\":1},\"product_variant\":null,\"vat\":{\"id\":2,\"name\":\"New Vat\",\"type\":\"1\",\"status\":\"1\",\"amount\":\"10\",\"creator\":\"1\",\"created_at\":\"2024-12-29T08:48:18.000000Z\",\"updated_at\":\"2024-12-29T08:48:18.000000Z\"},\"price\":250,\"discount_price\":50,\"price_discount\":200,\"vat_price\":20,\"cal_total_with_vat\":220,\"single_subtotal\":220},{\"size\":0,\"quantity\":1,\"session_id\":\"pd_7\",\"product\":{\"id\":7,\"name\":\"Selai\",\"product_id\":\"p-1\",\"sku\":\"Sku-19JHB\",\"slug\":\"selai\",\"category\":\"10\",\"brand\":\"0\",\"weight\":\"300\",\"description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random<\\/span><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random<\\/span><\\/p>\",\"unit\":\"5\",\"for_selling\":\"1\",\"garage\":\"100\",\"route\":\"2\",\"feature\":\"0\",\"alert_quantity\":\"200\",\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"77\",\"uploads_id\":\"64\",\"sub_category\":\"8\",\"short_description\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":100,\"selling_price\":200,\"vat\":\"0\",\"service\":0,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T08:39:06.000000Z\",\"updated_at\":\"2025-01-11T09:22:14.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/4676469814277488744.jpeg\",\"avg_rat\":0,\"rat_count\":0},\"product_variant\":null,\"vat\":null,\"price\":200,\"discount_price\":0,\"price_discount\":200,\"vat_price\":0,\"cal_total_with_vat\":200,\"single_subtotal\":200},{\"size\":0,\"quantity\":1,\"session_id\":\"pd_2\",\"product\":{\"id\":2,\"name\":\"Green Field\",\"product_id\":\"p\",\"sku\":\"34JH5666\",\"slug\":\"green-field\",\"category\":\"10\",\"brand\":\"13\",\"weight\":\"1000gm\",\"description\":\"<p><span style=\\\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">Reference site about&nbsp;<\\/span><span style=\\\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">Lorem Ipsum<\\/span><span style=\\\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">, giving information on its origins, as well as a random&nbsp;<\\/span><span style=\\\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">Lipsum generator<\\/span><span style=\\\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">.<\\/span><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">Reference site about&nbsp;<\\/span><span style=\\\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">Lorem Ipsum<\\/span><span style=\\\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">, giving information on its origins, as well as a random&nbsp;<\\/span><span style=\\\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">Lipsum generator<\\/span><span style=\\\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\\\">.<\\/span><\\/p>\",\"unit\":\"1\",\"for_selling\":\"1\",\"garage\":\"100\",\"route\":\"4\",\"feature\":\"0\",\"alert_quantity\":\"355\",\"discount_id\":\"1\",\"creator\":\"1\",\"upload_id\":\"82\",\"uploads_id\":\"55,58\",\"sub_category\":\"8\",\"short_description\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":250,\"selling_price\":150,\"vat\":\"1\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T06:52:58.000000Z\",\"updated_at\":\"2025-01-11T09:21:18.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/2929369814279539046.jpg\",\"avg_rat\":0,\"rat_count\":0},\"product_variant\":null,\"vat\":{\"id\":1,\"name\":\"Include Vat\",\"type\":\"0\",\"status\":\"1\",\"amount\":\"0\",\"creator\":\"1\",\"created_at\":\"2024-12-28T12:20:56.000000Z\",\"updated_at\":\"2024-12-28T12:20:56.000000Z\"},\"price\":150,\"discount_price\":30,\"price_discount\":120,\"vat_price\":0,\"cal_total_with_vat\":120,\"single_subtotal\":120}]}', '0', 3, '{\"9\":1,\"7\":1,\"2\":1}', '80', 540, '20', '1', 540, '2025-01-15 01:08:51', '2025-01-15 01:08:51', 'Aperiam veniam iste', '7', '7'),
(3, 10, 1736944142, '[{\"pd_14\":{\"product_id\":\"14\",\"quantaty\":1,\"size\":0}},{\"pd_9\":{\"product_id\":\"9\",\"quantaty\":1,\"size\":0}},{\"pd_8\":{\"product_id\":\"8\",\"quantaty\":2,\"size\":0}},{\"pd_7\":{\"product_id\":\"7\",\"quantaty\":1,\"size\":0}}]', '{\"subtotal\":{\"price\":1263.2,\"vat\":51.2,\"quantity\":5,\"total_price\":0,\"total_vat\":0,\"discount\":128,\"coupon\":0,\"coupon_without_price\":1263.2,\"quantitys\":{\"14\":1,\"9\":1,\"8\":2,\"7\":1},\"product_ids\":[{\"pd_14\":{\"product_id\":\"14\",\"quantaty\":1,\"size\":0}},{\"pd_9\":{\"product_id\":\"9\",\"quantaty\":1,\"size\":0}},{\"pd_8\":{\"product_id\":\"8\",\"quantaty\":2,\"size\":0}},{\"pd_7\":{\"product_id\":\"7\",\"quantaty\":1,\"size\":0}}]},\"product\":[{\"size\":0,\"quantity\":1,\"session_id\":\"pd_14\",\"product\":{\"id\":14,\"name\":\"Iron Nat\",\"product_id\":\"p-7\",\"sku\":\"Sku-19JH5\",\"slug\":\"iron-nat-1\",\"category\":\"11\",\"brand\":\"14\",\"weight\":\"1000gm\",\"description\":\"<p><strong style=\\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">Lorem Ipsum<\\/strong><span style=\\\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book<\\/span><\\/p>\",\"additional_description\":\"<p><strong style=\\\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">Lorem Ipsum<\\/strong><span style=\\\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book<\\/span><\\/p>\",\"unit\":\"2\",\"for_selling\":\"1\",\"garage\":\"45\",\"route\":\"4\",\"feature\":\"1\",\"alert_quantity\":\"1000\",\"discount_id\":\"1\",\"creator\":\"1\",\"upload_id\":\"79\",\"uploads_id\":\"75\",\"sub_category\":\"11\",\"short_description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":500,\"selling_price\":390,\"vat\":\"2\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T11:03:36.000000Z\",\"updated_at\":\"2025-01-11T09:23:34.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/8998369814278172178.jpg\",\"avg_rat\":0,\"rat_count\":0},\"product_variant\":null,\"vat\":{\"id\":2,\"name\":\"New Vat\",\"type\":\"1\",\"status\":\"1\",\"amount\":\"10\",\"creator\":\"1\",\"created_at\":\"2024-12-29T08:48:18.000000Z\",\"updated_at\":\"2024-12-29T08:48:18.000000Z\"},\"price\":390,\"discount_price\":78,\"price_discount\":312,\"vat_price\":31.2,\"cal_total_with_vat\":343.2,\"single_subtotal\":343.2},{\"size\":0,\"quantity\":1,\"session_id\":\"pd_9\",\"product\":{\"id\":9,\"name\":\"Sanitary\",\"product_id\":\"p-3\",\"sku\":\"Sku-19JH5\",\"slug\":\"sanitary-1\",\"category\":\"11\",\"brand\":\"13\",\"weight\":\"400\",\"description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy<\\/span><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy<\\/span><\\/p>\",\"unit\":\"5\",\"for_selling\":\"1\",\"garage\":\"100\",\"route\":\"5\",\"feature\":\"0\",\"alert_quantity\":\"100\",\"discount_id\":\"1\",\"creator\":\"1\",\"upload_id\":\"77\",\"uploads_id\":\"70\",\"sub_category\":\"10\",\"short_description\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":400,\"selling_price\":250,\"vat\":\"2\",\"service\":0,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T08:48:53.000000Z\",\"updated_at\":\"2025-01-11T09:21:39.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/4676469814277488744.jpeg\",\"avg_rat\":4,\"rat_count\":1},\"product_variant\":null,\"vat\":{\"id\":2,\"name\":\"New Vat\",\"type\":\"1\",\"status\":\"1\",\"amount\":\"10\",\"creator\":\"1\",\"created_at\":\"2024-12-29T08:48:18.000000Z\",\"updated_at\":\"2024-12-29T08:48:18.000000Z\"},\"price\":250,\"discount_price\":50,\"price_discount\":200,\"vat_price\":20,\"cal_total_with_vat\":220,\"single_subtotal\":220},{\"size\":0,\"quantity\":2,\"session_id\":\"pd_8\",\"product\":{\"id\":8,\"name\":\"Hemar\",\"product_id\":\"p-2\",\"sku\":\"Sku-19JH5\",\"slug\":\"hemar\",\"category\":\"10\",\"brand\":\"13\",\"weight\":\"400\",\"description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy<\\/span><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy<\\/span><\\/p>\",\"unit\":\"1\",\"for_selling\":\"1\",\"garage\":\"100\",\"route\":\"5\",\"feature\":\"0\",\"alert_quantity\":\"100\",\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"78\",\"uploads_id\":\"64\",\"sub_category\":\"10\",\"short_description\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":100,\"selling_price\":250,\"vat\":\"0\",\"service\":0,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T08:43:38.000000Z\",\"updated_at\":\"2025-01-11T09:22:33.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/1249969814277890764.jpg\",\"avg_rat\":0,\"rat_count\":0},\"product_variant\":null,\"vat\":null,\"price\":250,\"discount_price\":0,\"price_discount\":250,\"vat_price\":0,\"cal_total_with_vat\":250,\"single_subtotal\":500},{\"size\":0,\"quantity\":1,\"session_id\":\"pd_7\",\"product\":{\"id\":7,\"name\":\"Selai\",\"product_id\":\"p-1\",\"sku\":\"Sku-19JHB\",\"slug\":\"selai\",\"category\":\"10\",\"brand\":\"0\",\"weight\":\"300\",\"description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random<\\/span><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random<\\/span><\\/p>\",\"unit\":\"5\",\"for_selling\":\"1\",\"garage\":\"100\",\"route\":\"2\",\"feature\":\"0\",\"alert_quantity\":\"200\",\"discount_id\":\"0\",\"creator\":\"1\",\"upload_id\":\"77\",\"uploads_id\":\"64\",\"sub_category\":\"8\",\"short_description\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random\",\"youtube_video\":\"0\",\"tags\":null,\"views\":0,\"old_price\":100,\"selling_price\":200,\"vat\":\"0\",\"service\":0,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#000000\",\"landing_page_color\":\"#000000\",\"landing_page_deasing_id\":null,\"created_at\":\"2024-12-29T08:39:06.000000Z\",\"updated_at\":\"2025-01-11T09:22:14.000000Z\",\"image_url\":\"\\/pos\\/public\\/uploads\\/4676469814277488744.jpeg\",\"avg_rat\":0,\"rat_count\":0},\"product_variant\":null,\"vat\":null,\"price\":200,\"discount_price\":0,\"price_discount\":200,\"vat_price\":0,\"cal_total_with_vat\":200,\"single_subtotal\":200}]}', '0', 5, '{\"14\":1,\"9\":1,\"8\":2,\"7\":1}', '128', 1263, '51.2', '1', 1263, '2025-01-15 06:29:03', '2025-01-15 06:29:03', 'Sed consequat Assum', '8', '8');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(2, 'Shipping', 1, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(3, 'Delivered', 1, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(4, 'Confirmed', 1, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(5, 'Pending', 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(6, 'Shipping', 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(7, 'Delivered', 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(8, 'Confirmed', 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(9, 'Pending', 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(10, 'Shipping', 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(11, 'Delivered', 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(12, 'Confirmed', 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(13, 'Pending', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(14, 'Shipping', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(15, 'Delivered', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(16, 'Confirmed', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(17, 'Pending', 1, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(18, 'Shipping', 1, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(19, 'Delivered', 1, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(20, 'Confirmed', 1, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(21, 'Pending', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(22, 'Shipping', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(23, 'Delivered', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(24, 'Confirmed', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(25, 'Pending', 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(26, 'Shipping', 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(27, 'Delivered', 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(28, 'Confirmed', 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(29, 'Pending', 1, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(30, 'Shipping', 1, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(31, 'Delivered', 1, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(32, 'Confirmed', 1, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(33, 'Pending', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(34, 'Shipping', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(35, 'Delivered', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(36, 'Confirmed', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `slug` varchar(125) DEFAULT NULL,
  `status` varchar(125) NOT NULL DEFAULT '1',
  `homepage` varchar(125) NOT NULL DEFAULT '0',
  `order` varchar(125) NOT NULL DEFAULT '1',
  `page_type` varchar(125) DEFAULT NULL COMMENT 'Like filter, homepage',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `status`, `homepage`, `order`, `page_type`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', '1', '1', '1', '', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(2, 'About', 'about-us', '1', '0', '1', 'about', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(3, 'Filter', 'filter', '1', '0', '1', 'filter', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(4, 'Product details', 'product/details', '1', '0', '1', 'view', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(5, 'cart', 'cart', '1', '0', '1', 'cart', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(6, 'Checkout', 'checkout', '1', '0', '1', 'checkout', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(7, 'Tracking', 'tracking', '1', '0', '1', 'tracking', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(8, 'Service', 'service', '1', '0', '1', 'service', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(9, 'Service Details', 'service-details', '1', '0', '1', 'service_details', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(10, 'Register', 'register', '1', '0', '1', 'register', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(11, 'Wishlist', 'wishlist', '1', '0', '1', 'wishlist', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(12, 'coming-soon', 'coming-soon', '1', '0', '1', '', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(13, 'Blog', 'blog', '1', '0', '1', '', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(14, 'Blog Details', 'blog/details', '1', '0', '1', '', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(15, 'FAQ', 'faq', '1', '0', '1', '', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(16, 'Contact', 'contact', '1', '0', '1', 'contact', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(17, 'Sales Partner', 'sales/partner', '1', '0', '1', 'sales_partner', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(18, 'Dashboard', 'user/dashboard', '1', '0', '1', 'profile_dashboard', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(19, 'Cart', 'user/cart', '1', '0', '1', 'profile_cart', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(20, 'Location', 'user/location', '1', '0', '1', 'profile_location', '0', '0', NULL, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(21, 'Order', 'user/order', '1', '0', '1', 'checkout_page', '0', '0', NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(22, 'Payment Information', 'user/payment-info', '1', '0', '1', 'payment_page', '0', '0', NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 user, 2 customer',
  `last_read` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(125) NOT NULL,
  `token` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `method` bigint(20) NOT NULL,
  `tnxid` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_credentials`
--

CREATE TABLE `payment_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(125) DEFAULT NULL,
  `store_id` varchar(125) DEFAULT NULL,
  `store_password` varchar(125) DEFAULT NULL,
  `merchant_id` varchar(125) DEFAULT NULL,
  `api_key` varchar(125) DEFAULT NULL,
  `signature_key` varchar(125) DEFAULT NULL,
  `app_key` varchar(125) DEFAULT NULL,
  `app_secret` varchar(125) DEFAULT NULL,
  `username` varchar(125) DEFAULT NULL,
  `password` varchar(125) DEFAULT NULL,
  `merchant_number` varchar(125) DEFAULT NULL,
  `public_key` varchar(125) DEFAULT NULL,
  `private_key` varchar(125) DEFAULT NULL,
  `client_id` varchar(125) DEFAULT NULL,
  `secret` varchar(125) DEFAULT NULL,
  `publishable` varchar(125) DEFAULT NULL,
  `sandbox_status` varchar(125) NOT NULL DEFAULT '1',
  `status` varchar(125) NOT NULL DEFAULT '1',
  `charge` double(8,2) NOT NULL DEFAULT 1.00,
  `banach` varchar(125) DEFAULT NULL,
  `country` varchar(125) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 1,
  `updater` bigint(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_credentials`
--

INSERT INTO `payment_credentials` (`id`, `provider`, `store_id`, `store_password`, `merchant_id`, `api_key`, `signature_key`, `app_key`, `app_secret`, `username`, `password`, `merchant_number`, `public_key`, `private_key`, `client_id`, `secret`, `publishable`, `sandbox_status`, `status`, `charge`, `banach`, `country`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(2, 'AmarPay', 'aamarpaytest', NULL, NULL, NULL, 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(3, 'SSLCommerz', 'dengr6606dde118f61', 'dengr6606dde118f61@ssl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(4, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AW94vUy1U0BcDsirCdw3Ry8OXvfre6uAB2eLkhl4mXwbMBjRm4vTjNYiu3yIEk_zAM7jhMfYwQKZRaj9', 'EP3FKuvBoUKCdqTDMqrX_NB6U6Ljjzb0o-aptPsQSrjsXC1RmvrTnuGuEUQ0LU8mNOf8b4H9nYZBBtfo', NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(5, 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sk_test_51QBS8gGmdDJ09IiPeBXzbzsKu4yZC3GLYepHUyK8uzqNeXl1hJan55DmOZpJMY5D3uHhNREjAU2qId5Y4SeaaMBS000ZwhS3JO', 'pk_test_51QBS8gGmdDJ09IiPzuSRshs99WwkulloA8wW0rPt4vTORhFZUYXXa2LaxrySoZMgwcndwdnFbVTWsDkemFIJl43W00fxHQeYXV', '1', '1', 0.00, 'us', 'us', 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(6, 'braintree', NULL, NULL, 'bxqn974w5gzggj44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wktqb878b2x7jj7r', '4d024a30390cb9475e556d475aaa399f', NULL, NULL, NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(7, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_holder` varchar(125) NOT NULL,
  `account_no` varchar(125) NOT NULL,
  `identifier_code` varchar(125) NOT NULL,
  `provider` varchar(125) DEFAULT NULL,
  `branch` varchar(125) DEFAULT NULL,
  `charge` double(8,2) NOT NULL DEFAULT 0.00,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `paymethodable_type` varchar(125) NOT NULL,
  `paymethodable_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user read', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(2, 'user create', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(3, 'user edit', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(4, 'user rolechange', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(5, 'user delete', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(6, 'role read', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(7, 'role create', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(8, 'role edit', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(9, 'role delete', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(10, 'branch read', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(11, 'branch create', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(12, 'branch edit', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(13, 'branch delete', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(14, 'cashcounter read', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(15, 'cashcounter create', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(16, 'cashcounter edit', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(17, 'cashcounter delete', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(18, 'product read', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(19, 'product create', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(20, 'product edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(21, 'product delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(22, 'unit read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(23, 'unit create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(24, 'unit edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(25, 'unit delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(26, 'purchase read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(27, 'purchase create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(28, 'purchase edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(29, 'purchase delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(30, 'customer read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(31, 'customer create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(32, 'customer edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(33, 'customer delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(34, 'stock read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(35, 'supplier read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(36, 'supplier create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(37, 'supplier edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(38, 'supplier delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(39, 'category read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(40, 'category create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(41, 'category edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(42, 'category delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(43, 'subcategory read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(44, 'subcategory create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(45, 'subcategory edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(46, 'subcategory delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(47, 'area read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(48, 'area create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(49, 'area edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(50, 'area delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(51, 'brand read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(52, 'brand create', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(53, 'brand edit', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(54, 'brand delete', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(55, 'vat read', 'web', '2024-12-28 06:20:58', '2024-12-28 06:20:58'),
(56, 'vat create', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(57, 'vat edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(58, 'vat delete', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(59, 'discount read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(60, 'discount create', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(61, 'discount edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(62, 'discount delete', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(63, 'setting read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(64, 'setting create', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(65, 'setting edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(66, 'setting delete', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(67, 'siteverification read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(68, 'siteverification edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(69, 'tagmanagement read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(70, 'tagmanagement edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(71, 'pwa read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(72, 'pwa edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(73, 'notification read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(74, 'notification edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(75, 'takto read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(76, 'takto edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(77, 'cookie read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(78, 'cookie edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(79, 'smtp read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(80, 'smtp edit', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(81, 'payment_credentials read', 'web', '2024-12-28 06:20:59', '2024-12-28 06:20:59'),
(82, 'payment_credentials edit', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(83, 'order read', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(84, 'order create', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(85, 'order edit', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(86, 'order delete', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(87, 'profile read', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(88, 'profile create', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(89, 'profile edit', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(90, 'profile delete', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(91, 'theme read', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(92, 'LeadAccount read', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(93, 'LeadAccount create', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(94, 'LeadAccount edit', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(95, 'LeadAccount delete', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(96, 'LeadContact read', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(97, 'LeadContact create', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(98, 'LeadContact edit', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(99, 'LeadContact delete', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(100, 'LeadDeal read', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(101, 'LeadDeal create', 'web', '2024-12-28 06:21:00', '2024-12-28 06:21:00'),
(102, 'LeadDeal edit', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(103, 'LeadDeal delete', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(104, 'LeadDealStage read', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(105, 'LeadDealStage create', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(106, 'LeadDealStage edit', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(107, 'LeadDealStage delete', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(108, 'Lead read', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(109, 'Lead create', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(110, 'Lead edit', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(111, 'Lead delete', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(112, 'LeadSource read', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(113, 'LeadSource create', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(114, 'LeadSource edit', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(115, 'LeadSource delete', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(116, 'language read', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(117, 'language create', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(118, 'language edit', 'web', '2024-12-28 06:21:01', '2024-12-28 06:21:01'),
(119, 'language delete', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(120, 'Translation read', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(121, 'Translation create', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(122, 'Translation edit', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(123, 'Translation delete', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(124, 'slider read', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(125, 'slider create', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(126, 'slider edit', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(127, 'slider delete', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(128, 'service read', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(129, 'service create', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(130, 'service edit', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(131, 'service delete', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(132, 'testimonial read', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(133, 'testimonial create', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(134, 'testimonial edit', 'web', '2024-12-28 06:21:02', '2024-12-28 06:21:02'),
(135, 'testimonial delete', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(136, 'footerlinkheading read', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(137, 'footerlinkheading create', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(138, 'footerlinkheading edit', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(139, 'footerlinkheading delete', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(140, 'footerlinksubheading read', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(141, 'footerlinksubheading create', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(142, 'footerlinksubheading edit', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(143, 'footerlinksubheading delete', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(144, 'faq read', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(145, 'faq create', 'web', '2024-12-28 06:21:03', '2024-12-28 06:21:03'),
(146, 'faq edit', 'web', '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(147, 'faq delete', 'web', '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(148, 'page read', 'web', '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(149, 'page create', 'web', '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(150, 'page edit', 'web', '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(151, 'page delete', 'web', '2024-12-28 06:21:04', '2024-12-28 06:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(125) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `product_id` varchar(125) DEFAULT NULL,
  `sku` varchar(125) DEFAULT NULL,
  `slug` varchar(125) DEFAULT NULL,
  `category` varchar(125) DEFAULT NULL,
  `brand` varchar(125) DEFAULT NULL,
  `weight` varchar(125) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `additional_description` longtext DEFAULT NULL,
  `unit` varchar(125) DEFAULT NULL,
  `for_selling` varchar(125) NOT NULL DEFAULT '0',
  `garage` varchar(125) NOT NULL DEFAULT '0',
  `route` varchar(125) NOT NULL DEFAULT '0',
  `feature` varchar(125) NOT NULL DEFAULT '0',
  `alert_quantity` varchar(125) NOT NULL DEFAULT '0',
  `discount_id` varchar(125) DEFAULT NULL,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `upload_id` varchar(125) NOT NULL DEFAULT '0',
  `uploads_id` varchar(125) NOT NULL DEFAULT '0',
  `sub_category` varchar(125) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `youtube_video` varchar(125) DEFAULT NULL,
  `tags` varchar(125) DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `old_price` int(11) NOT NULL DEFAULT 0,
  `selling_price` int(11) NOT NULL DEFAULT 0,
  `vat` varchar(125) NOT NULL DEFAULT '0',
  `service` tinyint(1) NOT NULL DEFAULT 0,
  `variant_on` varchar(125) NOT NULL DEFAULT '0',
  `variant_option` varchar(125) DEFAULT NULL,
  `status` varchar(125) DEFAULT NULL,
  `landing_page_bg` varchar(125) DEFAULT NULL,
  `landing_page_color` varchar(125) DEFAULT NULL,
  `landing_page_deasing_id` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_id`, `sku`, `slug`, `category`, `brand`, `weight`, `description`, `additional_description`, `unit`, `for_selling`, `garage`, `route`, `feature`, `alert_quantity`, `discount_id`, `creator`, `upload_id`, `uploads_id`, `sub_category`, `short_description`, `youtube_video`, `tags`, `views`, `old_price`, `selling_price`, `vat`, `service`, `variant_on`, `variant_option`, `status`, `landing_page_bg`, `landing_page_color`, `landing_page_deasing_id`, `created_at`, `updated_at`) VALUES
(2, 'Green Field', 'p', '34JH5666', 'green-field-1', '10', '13', '1000gm', '<p><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Reference site about&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lorem Ipsum</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">, giving information on its origins, as well as a random&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lipsum generator</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">.</span></p>', '<p><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Reference site about&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lorem Ipsum</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">, giving information on its origins, as well as a random&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lipsum generator</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">.</span></p>', '1', '1', '100', '4', '0', '355', '1', '1', '82', '55,58', '8', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.', '0', NULL, 0, 250, 150, '1', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, '2024-12-29 00:52:58', '2025-01-15 07:23:12'),
(9, 'Sanitary', 'p-3', 'Sku-19JH5', 'sanitary-1', '11', '13', '400', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy</span></p>', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy</span></p>', '5', '1', '100', '5', '0', '100', '1', '1', '77', '70', '10', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy', '0', NULL, 0, 400, 250, '2', 0, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, '2024-12-29 02:48:53', '2025-01-11 03:21:39'),
(6, 'Filter', 'p-5', '34JH5666', 'filter-1', '9', '12', '500gm', '<p><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Reference site about&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lorem Ipsum</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">, giving information on its origins, as well as a random&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lipsum generator</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">.</span></p>', '<p><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Reference site about&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lorem Ipsum</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">, giving information on its origins, as well as a random&nbsp;</span><span style=\"font-weight: bold; color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">Lipsum generator</span><span style=\"color: rgb(191, 191, 191); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(31, 31, 31);\">.</span></p>', '3', '1', '12', '3', '0', '25', '1', '1', '76', '0', '7', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.', '0', NULL, 0, 1000, 800, '1', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, '2024-12-29 01:22:15', '2025-01-11 03:21:59'),
(7, 'Selai', 'p-1', 'Sku-19JHB', 'selai', '10', '0', '300', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random</span></p>', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random</span></p>', '5', '1', '100', '2', '0', '200', '0', '1', '77', '64', '8', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random', '0', NULL, 0, 100, 200, '0', 0, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, '2024-12-29 02:39:06', '2025-01-11 03:22:14'),
(8, 'Hemar', 'p-2', 'Sku-19JH5', 'hemar', '10', '13', '400', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy</span></p>', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy</span></p>', '1', '1', '100', '5', '0', '100', '0', '1', '78', '64', '10', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy', '0', NULL, 0, 100, 250, '0', 0, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, '2024-12-29 02:43:38', '2025-01-11 03:22:33'),
(10, 'Pipe Cutting', 'p-4', 'Sku-19JH5', 'pipe-cutting-1', '11', '13', '400', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy</span></p>', '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Bai Jamjuree&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy</span></p>', '4', '1', '100', '5', '1', '100', '1', '1', '79', '71', '10', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random gome aito eiso paimy', '0', NULL, 0, 400, 350, '2', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, '2024-12-29 03:03:58', '2025-01-11 03:22:50'),
(13, 'Modal Constracr', 'p-6', 'Sku-19JH5', 'modal-constracr-1', '11', '14', '1000gm', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</span></p>', '1', '1', '45', '4', '1', '1000', '1', '1', '80', '72', '11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '0', NULL, 0, 500, 390, '2', 1, '1', '{\"variant_key\":\"red,yellow,blue\",\"vairant_value\":\"S\"}', '1', '#000000', '#000000', NULL, '2024-12-29 04:50:06', '2025-01-11 03:23:09'),
(14, 'Iron Nat', 'p-7', 'Sku-19JH5', 'iron-nat-1', '11', '14', '1000gm', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</span></p>', '2', '1', '45', '4', '1', '1000', '1', '1', '79', '75', '11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '0', NULL, 0, 500, 390, '2', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, '2024-12-29 05:03:36', '2025-01-11 03:23:34'),
(15, 'Alma Tate', 'p-8', 'Bruce Mcintosh', 'alma-tate-2', '11', '3', 'Trevor Boyer', '<p>ghjkghj</p>', '<p>gkjhghk</p>', '1', '1', 'Priscilla Lucas', 'Germane Melendez', '1', '384', '1', '1', '80', '40,51,52,45,66,54', '5', 'Ipsam sint officiis', 'Pariatur Officia al', NULL, 0, 19, 236, '2', 0, '1', '{\"variant_key\":\"red,yellow,blue\",\"vairant_value\":\"S,L,T\"}', '1', '#486cec', '#db41e9', NULL, '2025-01-06 22:44:48', '2025-01-11 03:33:41'),
(16, 'Alma Tate', 'p-9', 'Bruce Mcintosh', 'alma-tate', '11', '0', 'Trevor Boyer', '<p>ghjkghj</p>', '<p>gkjhghk</p>', '1', '1', 'Priscilla Lucas', 'Germane Melendez', '1', '384', '1', '1', '82', '0', '5', 'Ipsam sint officiis', 'Pariatur Officia al', NULL, 0, 19, 236, '2', 0, '1', '{\"variant_key\":\"red,yellow,blue\",\"vairant_value\":\"S,L,T\"}', '1', '#486cec', '#db41e9', NULL, '2025-01-06 22:47:17', '2025-01-11 03:23:49'),
(17, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(18, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(19, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(20, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(21, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(22, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(23, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(24, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(25, 'test', 'p-10', NULL, 'test', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL, '0', NULL, 0, 0, 0, '0', 0, '1', '{\"variant_key\":\"red,yellow,blue\",\"vairant_value\":\"S,L,T\"}', '0', '#000000', '#000000', NULL, '2025-01-15 07:23:59', '2025-01-15 07:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_faqs`
--

CREATE TABLE `product_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(125) DEFAULT NULL,
  `answer` varchar(125) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_refs`
--

CREATE TABLE `product_refs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `model_no` varchar(125) DEFAULT NULL,
  `taka` varchar(125) DEFAULT NULL,
  `creator` varchar(125) NOT NULL,
  `updater` varchar(125) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `supplierId` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `varinat_id` bigint(20) DEFAULT NULL,
  `status` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `buying_date` timestamp NULL DEFAULT NULL,
  `expiring_date` timestamp NULL DEFAULT NULL,
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_id`, `productId`, `supplierId`, `quantity`, `unit_id`, `varinat_id`, `status`, `price`, `total`, `buying_date`, `expiring_date`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 03:25:44', '2025-01-02 03:25:44'),
(2, 1, 7, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 03:25:44', '2025-01-02 03:25:44'),
(3, 1, 8, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 03:25:44', '2025-01-02 03:25:44'),
(4, 2, 9, 1, 1, 1, 0, 2, 150, 150, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 03:27:41', '2025-01-02 03:27:41'),
(5, 2, 7, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 03:27:41', '2025-01-02 03:27:41'),
(6, 3, 9, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 03:29:50', '2025-01-02 03:29:50'),
(7, 4, 8, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 06:16:52', '2025-01-02 06:16:52'),
(8, 5, 9, 1, 1, 1, 0, 2, 5, 5, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 06:34:41', '2025-01-02 06:34:41'),
(9, 5, 7, 1, 1, 1, 0, 2, 4, 4, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 06:34:41', '2025-01-02 06:34:41'),
(10, 5, 8, 1, 5, 1, 0, 2, 4, 20, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 06:34:41', '2025-01-02 06:34:41'),
(11, 6, 7, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 06:58:09', '2025-01-02 06:58:09'),
(12, 6, 9, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 06:58:09', '2025-01-02 06:58:09'),
(13, 6, 8, 1, 1, 1, 0, 2, 0, 0, '2025-01-01 18:00:00', NULL, '1', '0', '2025-01-02 06:58:09', '2025-01-02 06:58:09'),
(14, 7, 25, 1, 54, 1, 1, 2, 150, 8100, '2025-01-15 18:00:00', NULL, '1', '0', '2025-01-16 00:42:39', '2025-01-16 00:42:39'),
(15, 7, 9, 1, 5, 1, 0, 2, 150, 750, '2025-01-15 18:00:00', NULL, '1', '0', '2025-01-16 00:42:39', '2025-01-16 00:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `refrence_users`
--

CREATE TABLE `refrence_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_products`
--

CREATE TABLE `review_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `comment` varchar(125) DEFAULT NULL,
  `rating` varchar(125) DEFAULT NULL,
  `creator` varchar(125) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review_products`
--

INSERT INTO `review_products` (`id`, `name`, `email`, `comment`, `rating`, `creator`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'sdfasdf', 'sf@gmail.com', 'asdfasdf', '4', '0', 9, '2025-01-07 01:38:49', '2025-01-07 01:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2024-12-28 06:20:57', '2024-12-28 06:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
(151, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `month` bigint(20) NOT NULL DEFAULT 0,
  `year` bigint(20) NOT NULL DEFAULT 0,
  `description` varchar(125) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(125) DEFAULT NULL,
  `title` varchar(125) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(125) DEFAULT NULL,
  `slug` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon_class`, `title`, `short_description`, `description`, `upload_id`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(8, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-met-df-e', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(22, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-dfs', '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(27, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-dfs', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(28, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-met-df-e', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(29, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-sdfsd', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(30, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, '1', 'nesciunt-mete-dfdgd', '2025-01-15 05:26:32', '2025-01-15 05:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(125) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `value` varchar(125) DEFAULT NULL,
  `creator_id` varchar(125) DEFAULT NULL,
  `key` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `creator_id`, `key`, `created_at`, `updated_at`) VALUES
(1, 'theme_sidebar-collapse', '0', '1', '1', NULL, '2024-12-30 04:26:22'),
(2, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(3, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(4, 'currency_symbol', 'BDT', '1', '9', NULL, '2024-12-29 01:21:03'),
(5, 'app_image', '90', '1', '9', NULL, '2025-01-15 07:06:33'),
(6, 'app_name_short', 'SHB', '1', '9', NULL, '2025-01-15 07:08:49'),
(7, 'app_title', 'Sunnah style', '1', '9', NULL, '2025-01-11 03:55:03'),
(8, 'app_footer_image', '90', '1', '9', NULL, '2025-01-15 07:06:35'),
(9, 'app_email', '#', '1', '9', NULL, '2025-01-11 03:40:15'),
(10, 'app_about', 'SHB about', '1', '9', NULL, '2025-01-15 07:07:00'),
(11, 'app_tel', '#', '1', '9', NULL, '2025-01-11 03:56:18'),
(12, 'app_linkedin', 'https://linkedin.com/#', '1', '9', NULL, '2025-01-11 03:40:11'),
(13, 'app_facebook', 'https://facebook.com/#', '1', '9', NULL, '2025-01-11 03:40:07'),
(14, 'app_whatsapp', 'https://wa.me/#', '1', '9', NULL, '2025-01-11 03:54:41'),
(15, 'app_twitter', 'https://twitter.com/mdsazzad0002', '1', '9', NULL, NULL),
(16, 'app_youtube', 'https://youtube.com/mdsazzad0002', '1', '9', NULL, NULL),
(17, 'app_telegram', 'https://t.me/mdsazzad0002', '1', '9', NULL, NULL),
(18, 'app_linkedin', 'https://linkedin.com/in/mdsazzad0002', '1', '9', NULL, NULL),
(19, 'app_pinterest', 'https://pinterest.com/#', '1', '9', NULL, '2025-01-11 03:40:01'),
(20, 'app_github', 'https://github.com/mdsazzad0002', '1', '9', NULL, NULL),
(21, 'app_figma', 'https://figma.com/mdsazzad0002', '1', '9', NULL, NULL),
(22, 'app_website', '#', '1', '9', NULL, '2025-01-11 03:40:02'),
(23, 'app_address', 'Address', '1', '9', NULL, '2025-01-11 03:39:59'),
(106, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(24, 'app_maps', 'https://maps.google.com', '1', '9', NULL, NULL),
(25, 'app_preloader_image', '48', '1', '9', NULL, '2025-01-15 07:08:59'),
(26, 'app_preloader_status', '0', '1', '9', NULL, NULL),
(27, 'google-site-verification', 'Google-Site-Verification', '0', '25', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(28, 'msvalidate.01', 'Msvalidate.01', '0', '25', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(29, 'yandex-verification', 'Yandex-Verification', '0', '25', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(30, 'p:domain_verify', 'P:domain Verify', '0', '25', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(31, 'fb:admins', 'Fb:admins', '0', '25', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(32, 'google_tag_manager_key', '', '1', '24', NULL, NULL),
(33, 'google_tag_analysis_key', '', '1', '24', NULL, NULL),
(34, 'facebook_app_id', '', '1', '24', NULL, NULL),
(35, 'pwa_image', '0', '1', '20', NULL, NULL),
(36, 'pwa_name', '0', '1', '20', NULL, NULL),
(37, 'pwa_sort_name', 'D Pos', '1', '20', NULL, NULL),
(38, 'theme_color', '#000000', '1', '20', NULL, NULL),
(39, 'pwa_background_color', '#6b6b6b', '1', '20', NULL, NULL),
(40, 'pwa_orientation', 'any', '1', '20', NULL, NULL),
(41, 'pwa_description', 'D Pos', '1', '20', NULL, NULL),
(42, 'pwa_type', 'image/png', '1', '20', NULL, NULL),
(43, 'pwa_sizes', '150x150', '1', '20', NULL, NULL),
(44, 'pwa_display', 'standalone', '1', '20', NULL, NULL),
(45, 'pwa_status', '0', '1', '20', NULL, NULL),
(46, 's1_src_link_tawk_to', 'https://embed.tawk.to/670faba22480f5b4f58e3fa8/1iaajctkv', '1', '31', NULL, NULL),
(47, 'tawk_to_status', '0', '1', '31', NULL, NULL),
(48, 'cookie_declined_btn', 'Declined', '1', '40', NULL, NULL),
(49, 'cookie_accept_btn', 'Accept', '1', '40', NULL, NULL),
(50, 'cookie_link_text', 'Read More ...', '1', '40', NULL, NULL),
(51, 'cookie_link', 'https://dengrweb.com', '1', '40', NULL, NULL),
(52, 'cookie_description', 'Your description text', '1', '40', NULL, NULL),
(53, 'cookie_title', 'Cookie Concent', '1', '40', NULL, NULL),
(54, 'cookie_i_con_class_title', 'fas fa-cookie', '1', '40', NULL, NULL),
(55, 'cookie_status', '0', '1', '40', NULL, NULL),
(56, 'cookie_bg_color', '#139dd8', '1', '40', NULL, NULL),
(57, 'cookie_btn_1_color', '#ffffff', '1', '40', NULL, NULL),
(58, 'cookie_btn_1_color_bg', '#0d5caf', '1', '40', NULL, NULL),
(59, 'cookie_btn_2_color', '#eeeeee', '1', '40', NULL, NULL),
(60, 'cookie_btn_2_color_bg', '#d21919', '1', '40', NULL, NULL),
(61, 'bd_courier_tracking_id', '44KuwISREmzWwTxOhapxFaiVyAIAuXVS2618lNMTa4OAJ3NWffuQKjrDeTfk', '1', '27', NULL, NULL),
(62, 'bd_courier_tracking_status', '1', '1', '27', NULL, '2024-12-28 06:34:41'),
(63, 'app_fav_image', '48', '1', '9', '2024-12-28 06:21:44', '2025-01-15 07:09:09'),
(64, 'theme_mode', '0', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:25:48'),
(65, 'theme_layout-navbar-fixed', '1', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:25:59'),
(66, 'theme_layout-fixed', '1', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:26:27'),
(67, 'theme_sidebar-mini', '1', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:26:44'),
(68, 'theme_sidebar-mini-md', '1', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:26:50'),
(69, 'theme_sidebar-mini-xs', '0', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:26:59'),
(70, 'theme_layout-footer-fixed', '1', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:27:11'),
(71, 'theme_dropdown-legacy', '1', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:26:14'),
(72, 'theme_border-bottom-0', '1', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:26:18'),
(73, 'theme_navbar_bg', 'bg-primary', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:27:30'),
(74, 'theme_sidebar-no-expand', '0', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:27:08'),
(75, 'theme_dark_sidebar_variant', 'Theme Dark Sidebar Variant', '0', '1', '2024-12-28 06:21:44', '2024-12-28 06:21:44'),
(76, 'theme_brand_link', 'Theme Brand Link', '0', '1', '2024-12-28 06:21:44', '2024-12-28 06:21:44'),
(77, 'nav-flat', 'Nav-Flat', '0', '1', '2024-12-28 06:21:44', '2024-12-28 06:21:44'),
(78, 'theme_nav-child-indent', '0', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:27:06'),
(79, 'theme_nav-collapse-hide-child', '0', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:27:07'),
(80, 'theme_nav-flat', '0', '1', '1', '2024-12-28 06:21:44', '2024-12-30 04:27:03'),
(81, 'welcome_note', 'Welcome to Sunnah Style', '1', '9', '2024-12-28 23:57:41', '2025-01-11 03:51:24'),
(82, 'app_instagram', 'App Instagram', '0', '9', '2024-12-28 23:57:41', '2024-12-28 23:57:41'),
(83, 'login_admin_image', '61', '1', '9', '2024-12-29 00:05:46', '2024-12-29 01:51:10'),
(84, 'dashboard_title', 'Dashboard Title', '0', '10', '2024-12-29 00:05:49', '2024-12-29 00:05:49'),
(85, 'order', 'Order', '0', '10', '2024-12-29 00:48:08', '2024-12-29 00:48:08'),
(86, 'category', 'Category', '0', '10', '2024-12-29 00:50:06', '2024-12-29 00:50:06'),
(87, 'subcategory', 'Subcategory', '0', '10', '2024-12-29 00:54:13', '2024-12-29 00:54:13'),
(88, 'sliders', 'Sliders', '0', '10', '2024-12-29 01:10:52', '2024-12-29 01:10:52'),
(89, 'footerlinksubheadings', 'Footerlinksubheadings', '0', '10', '2024-12-29 01:16:21', '2024-12-29 01:16:21'),
(90, 'customer', 'Customer', '0', '10', '2024-12-29 02:51:47', '2024-12-29 02:51:47'),
(91, 'pages', 'Pages', '0', '10', '2024-12-29 03:31:23', '2024-12-29 03:31:23'),
(92, 'offerbanner', 'Offerbanner', '0', '10', '2024-12-29 04:43:00', '2024-12-29 04:43:00'),
(93, 'supplier', 'Supplier', '0', '10', '2024-12-30 04:07:09', '2024-12-30 04:07:09'),
(94, 'purchase', 'Purchase', '0', '10', '2024-12-30 04:07:11', '2024-12-30 04:07:11'),
(95, 'Commision Agent', 'Commision Agent', '0', '10', '2024-12-30 04:07:15', '2024-12-30 04:07:15'),
(96, 'Contacts', 'Contacts', '0', '10', '2024-12-30 04:07:18', '2024-12-30 04:07:18'),
(97, 'LeadSources', 'Leadsources', '0', '10', '2024-12-30 04:08:18', '2024-12-30 04:08:18'),
(98, 'LeadDealStages', 'Leaddealstages', '0', '10', '2024-12-30 04:08:58', '2024-12-30 04:08:58'),
(99, 'Leads', 'Leads', '0', '10', '2024-12-30 04:09:00', '2024-12-30 04:09:00'),
(100, 'address', 'Mirpur 12', '1', '9', '2025-01-02 03:39:54', '2025-01-02 03:40:16'),
(101, 'faqs', 'Faqs', '0', '10', '2025-01-07 02:04:31', '2025-01-07 02:04:31'),
(102, 'testimonials', 'Testimonials', '0', '10', '2025-01-07 02:11:50', '2025-01-07 02:11:50'),
(103, 'checkout_note', 'Checkout Note', '0', '9', '2025-01-11 02:47:09', '2025-01-11 02:47:09'),
(104, 'terms_condition', 'Terms Condition', '0', '9', '2025-01-11 02:47:09', '2025-01-11 02:47:09'),
(105, 'services', 'Services', '0', '10', '2025-01-11 03:38:20', '2025-01-11 03:38:20'),
(107, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(108, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(109, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(110, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(111, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(112, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(113, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(114, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(115, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(116, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(117, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(118, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(119, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(120, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(121, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(122, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(123, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(124, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(125, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(126, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(127, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(128, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(129, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(130, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(131, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(132, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(133, 'footerlinkheadings', 'Footerlinkheadings', '0', '10', '2025-01-15 07:08:32', '2025-01-15 07:08:32'),
(134, 'Prof_ile', 'Prof Ile', '0', '10', '2025-01-15 07:12:39', '2025-01-15 07:12:39'),
(135, 'Branch', 'Branch', '0', '10', '2025-01-15 07:28:02', '2025-01-15 07:28:02'),
(136, 'cashcounter', 'Cashcounter', '0', '10', '2025-01-15 07:28:03', '2025-01-15 07:28:03'),
(137, 'LeadDeals', 'Leaddeals', '0', '10', '2025-01-15 22:23:17', '2025-01-15 22:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(125) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `sub_description` text DEFAULT NULL,
  `upload_id` bigint(20) DEFAULT NULL,
  `upload_bg` bigint(20) DEFAULT NULL,
  `button_title` varchar(125) DEFAULT NULL,
  `button_link` varchar(125) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `short_description`, `sub_description`, `upload_id`, `upload_bg`, `button_title`, `button_link`, `status`, `created_at`, `updated_at`) VALUES
(2, 'New Arrival', NULL, 'Limited offer', 78, 89, 'Buy Now', '#', 1, '2024-12-28 06:20:56', '2025-01-11 05:08:58'),
(3, 'Limited Edition', NULL, 'Limited offer', 81, 84, 'Explore Now', '#', 1, '2024-12-28 06:20:56', '2025-01-11 03:27:55'),
(4, 'Buy one Get One', NULL, NULL, 82, 85, 'Book now', '#', 1, '2024-12-29 02:35:39', '2025-01-11 03:29:00'),
(5, 'In Service', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(6, 'In Service', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(7, 'In Service', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(8, 'In Service', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(9, 'In Service', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(10, 'In Service', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(11, 'In Service', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(12, 'In Service', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(13, 'In Service', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(14, 'In Service', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(15, 'In Service', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(16, 'In Service', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(17, 'In Service', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(18, 'In Service', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(19, 'In Service', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(20, 'In Service', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(21, 'In Service', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(22, 'In Service', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(23, 'In Service', 'Best sell tody', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(24, 'In Service', 'Best ', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(25, 'In Service', 'Best', 'Limited offer', 0, NULL, 'Get Started', '#', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `social_contacts`
--

CREATE TABLE `social_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_source_id` bigint(20) NOT NULL,
  `url` varchar(125) NOT NULL,
  `creator` varchar(125) NOT NULL,
  `updater` varchar(125) NOT NULL,
  `sociable_type` varchar(125) NOT NULL,
  `sociable_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_events`
--

CREATE TABLE `special_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator` bigint(20) NOT NULL,
  `name` varchar(125) NOT NULL,
  `slug` varchar(125) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` varchar(125) NOT NULL,
  `status` varchar(125) NOT NULL DEFAULT '1',
  `feature` varchar(125) NOT NULL DEFAULT '0',
  `upload_id` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `creator`, `name`, `slug`, `description`, `category_id`, `status`, `feature`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'ShowesOrCase', 'showesorcase', 'sdfsdfsdfsdf', '2', '1', '0', '35', '2024-12-29 00:50:35', '2024-12-29 01:00:19'),
(2, 1, 'Polo T-shirt', 'polo-t-shirt', NULL, '1', '0', '0', '37', '2024-12-29 01:01:23', '2024-12-29 01:01:23'),
(3, 1, 'Jorjet', 'jorjet', NULL, '4', '0', '0', '38', '2024-12-29 01:01:58', '2024-12-29 01:01:58'),
(4, 1, 'Jens', 'jens', NULL, '3', '0', '0', '39', '2024-12-29 01:02:59', '2024-12-29 01:02:59'),
(5, 1, 'ShowesOrCase', 'showesorcase-1', 'sfsdfsdfsdfsdfsdf', '2', '1', '0', '40', '2024-12-29 01:04:59', '2024-12-29 01:04:59'),
(6, 1, 'drink', 'drink', 'asdfsfsdsdf', '8', '1', '0', '43', '2024-12-29 01:10:11', '2024-12-29 01:10:11'),
(7, 1, 'Motherboard', 'motherboard', 'sdfsfsdfd', '9', '1', '0', '49', '2024-12-29 01:20:35', '2024-12-29 01:20:35'),
(8, 1, 'Martul', 'martul', 'sdfsdfsdfsdf', '10', '1', '0', '55', '2024-12-29 01:38:26', '2024-12-29 01:38:26'),
(9, 1, 'Selai', 'selai', 'Selai', '10', '1', '0', '64', '2024-12-29 02:37:42', '2024-12-29 02:37:42'),
(10, 1, 'Hatul', 'hatul', 'hatul', '10', '1', '0', '67', '2024-12-29 02:42:16', '2024-12-29 02:42:16'),
(11, 1, 'Electric Light Machine', 'electric-light-machine', 'electric', '11', '1', '0', '72', '2024-12-29 04:47:28', '2024-12-29 04:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `phone` varchar(125) DEFAULT NULL,
  `area` bigint(20) NOT NULL DEFAULT 0,
  `location` varchar(125) DEFAULT NULL,
  `type` varchar(125) DEFAULT NULL,
  `business_name` varchar(125) DEFAULT NULL,
  `account_holder` varchar(125) DEFAULT NULL,
  `account_number` varchar(125) DEFAULT NULL,
  `bank_name` varchar(125) DEFAULT NULL,
  `bank_branch` varchar(125) DEFAULT NULL,
  `creator` varchar(125) DEFAULT NULL,
  `upload_id` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `area`, `location`, `type`, `business_name`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `creator`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 'Steel Aguilar', 'cucatoqune@mailinator.com', '+1 (699) 608-5453', 1, 'Unde aut ex aliqua', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '2025-01-02 02:35:07', '2025-01-02 02:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `method` bigint(20) NOT NULL,
  `tnxid` bigint(20) NOT NULL,
  `creator` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_types`
--

CREATE TABLE `supplier_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_types`
--

INSERT INTO `supplier_types` (`id`, `name`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Distributor', 1, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(2, 'Whole Seller', 1, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(3, 'Broker', 1, '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(4, 'Distributor', 1, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(5, 'Whole Seller', 1, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(6, 'Broker', 1, '2025-01-15 05:02:34', '2025-01-15 05:02:34'),
(7, 'Distributor', 1, '2025-01-15 05:12:55', '2025-01-15 05:12:55'),
(8, 'Whole Seller', 1, '2025-01-15 05:12:55', '2025-01-15 05:12:55'),
(9, 'Broker', 1, '2025-01-15 05:12:55', '2025-01-15 05:12:55'),
(10, 'Distributor', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(11, 'Whole Seller', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(12, 'Broker', 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(13, 'Distributor', 1, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(14, 'Whole Seller', 1, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(15, 'Broker', 1, '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(16, 'Distributor', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(17, 'Whole Seller', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(18, 'Broker', 1, '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(19, 'Distributor', 1, '2025-01-15 05:26:55', '2025-01-15 05:26:55'),
(20, 'Whole Seller', 1, '2025-01-15 05:26:55', '2025-01-15 05:26:55'),
(21, 'Broker', 1, '2025-01-15 05:26:55', '2025-01-15 05:26:55'),
(22, 'Distributor', 1, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(23, 'Whole Seller', 1, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(24, 'Broker', 1, '2025-01-15 05:35:34', '2025-01-15 05:35:34'),
(25, 'Distributor', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(26, 'Whole Seller', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(27, 'Broker', 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `designation` varchar(125) DEFAULT NULL,
  `description` varchar(125) DEFAULT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 2,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` tinyint(1) NOT NULL DEFAULT 1,
  `updater` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `description`, `upload_id`, `rating`, `status`, `creator`, `updater`, `created_at`, `updated_at`) VALUES
(1, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(2, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(3, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2024-12-28 06:20:57', '2024-12-28 06:20:57'),
(4, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(5, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(6, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(7, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(8, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(9, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(10, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(11, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(12, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(13, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(14, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(15, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(16, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(17, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(18, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(19, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(20, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58'),
(21, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-15 05:35:58', '2025-01-15 05:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(125) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 single, 2 group',
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transection_information`
--

CREATE TABLE `transection_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `user_id` varchar(125) DEFAULT NULL,
  `location_id` varchar(125) DEFAULT NULL,
  `order_id` varchar(125) DEFAULT NULL,
  `name` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `phone` varchar(125) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `status` varchar(125) DEFAULT NULL,
  `mer_txnid` varchar(125) DEFAULT NULL,
  `currency` varchar(125) DEFAULT NULL,
  `ip_address` varchar(125) DEFAULT NULL,
  `by_method` varchar(125) DEFAULT NULL,
  `description` varchar(125) DEFAULT NULL,
  `tnx_id_by_user` varchar(125) DEFAULT NULL,
  `amount` varchar(125) DEFAULT NULL,
  `store_amount` varchar(125) DEFAULT NULL,
  `service_charge` varchar(125) DEFAULT NULL,
  `payment_charge` varchar(125) DEFAULT NULL,
  `all_response` text DEFAULT NULL,
  `secret` varchar(125) DEFAULT NULL,
  `PayerID` varchar(125) DEFAULT NULL,
  `token` varchar(125) DEFAULT NULL,
  `client_id` varchar(125) DEFAULT NULL,
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(125) NOT NULL,
  `language` int(11) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(125) NOT NULL DEFAULT 'general',
  `updater_id` bigint(20) DEFAULT NULL,
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'log.in', 1, 'log in', 'log', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(2, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(3, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(4, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(5, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(6, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(7, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(8, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(9, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(10, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(11, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(12, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(13, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(14, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(15, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(16, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(17, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(18, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(19, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(20, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(21, 'settings.takto_sidebar-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(22, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(23, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(24, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(25, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(26, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(27, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(28, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(29, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(30, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(31, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(32, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(33, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(34, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(35, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(36, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(37, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(38, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(39, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(40, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(41, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(42, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(43, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(44, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(45, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(46, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(47, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(48, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(49, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(50, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(51, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(52, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(53, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(54, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(55, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(56, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(57, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(58, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(59, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(60, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(61, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(62, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(63, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(64, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(65, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(66, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(67, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(68, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(69, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(70, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(71, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(72, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(73, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(74, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(75, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(76, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(77, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(78, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(79, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(80, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(81, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(82, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(83, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(84, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(85, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(86, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(87, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(88, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(89, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(90, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(91, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(92, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(93, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(94, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(95, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(96, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(97, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(98, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(99, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(100, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(101, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(102, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(103, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(104, 'settings.takto-messageing-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(105, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(106, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(107, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(108, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(109, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(110, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(111, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(112, 'language.title', 1, 'Language', 'language', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(113, 'language.add_new', 1, '+', 'language', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(114, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(115, 'log.Email', 1, 'Email', 'log', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(116, 'log.Password', 1, 'Password', 'log', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(117, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(118, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(119, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(120, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(121, 'sidebar.product_create', 1, 'Product Create', 'sidebar', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(122, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(123, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(124, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(125, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(126, 'log.in', 2, 'log in bn', 'log', NULL, 0, '2024-12-28 06:21:04', '2024-12-28 06:21:04'),
(127, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(128, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(129, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(130, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(131, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(132, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(133, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(134, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(135, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(136, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(137, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(138, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(139, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(140, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(141, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(142, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(143, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(144, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(145, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(146, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(147, 'settings.takto_sidebar-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(148, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(149, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(150, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(151, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(152, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(153, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(154, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(155, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(156, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(157, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(158, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(159, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(160, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(161, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(162, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(163, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(164, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(165, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(166, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(167, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(168, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(169, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(170, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(171, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(172, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(173, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(174, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(175, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(176, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(177, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(178, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(179, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(180, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(181, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(182, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(183, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(184, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(185, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(186, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(187, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(188, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(189, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(190, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(191, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(192, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(193, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(194, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(195, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(196, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(197, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(198, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(199, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(200, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(201, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(202, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(203, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(204, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(205, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(206, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(207, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(208, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(209, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(210, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(211, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(212, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(213, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(214, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(215, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(216, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(217, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(218, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(219, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(220, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(221, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(222, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(223, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(224, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(225, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(226, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(227, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(228, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(229, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(230, 'settings.takto-messageing-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(231, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(232, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(233, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(234, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(235, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(236, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(237, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(238, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(239, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(240, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(241, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(242, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(243, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(244, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(245, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(246, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(247, 'sidebar.product_create', 1, 'Product Create', 'sidebar', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(248, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(249, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(250, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(251, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(252, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(253, 'log.in', 2, 'log in bn', 'log', NULL, 0, '2025-01-15 05:02:37', '2025-01-15 05:02:37'),
(254, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(255, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(256, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(257, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(258, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(259, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(260, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(261, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(262, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(263, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(264, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(265, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(266, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(267, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(268, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(269, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(270, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(271, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(272, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(273, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(274, 'settings.takto_sidebar-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(275, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(276, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(277, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(278, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(279, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(280, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(281, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(282, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(283, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(284, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(285, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(286, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(287, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(288, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(289, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(290, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(291, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(292, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(293, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(294, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(295, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(296, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(297, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(298, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(299, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(300, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(301, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(302, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(303, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(304, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(305, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(306, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(307, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(308, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(309, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(310, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(311, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(312, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(313, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(314, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(315, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(316, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(317, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(318, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(319, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(320, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(321, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(322, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(323, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(324, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(325, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(326, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(327, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(328, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(329, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(330, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(331, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(332, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(333, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(334, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(335, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(336, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(337, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(338, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(339, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(340, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(341, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(342, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(343, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(344, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(345, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(346, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(347, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(348, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(349, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(350, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(351, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(352, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(353, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(354, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(355, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(356, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(357, 'settings.takto-messageing-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(358, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(359, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(360, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(361, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(362, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(363, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(364, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(365, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(366, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(367, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(368, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(369, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(370, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(371, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(372, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(373, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(374, 'sidebar.product_create', 1, 'Product Create', 'sidebar', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(375, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(376, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(377, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(378, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(379, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(380, 'log.in', 2, 'log in bn', 'log', NULL, 0, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(381, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(382, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(383, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(384, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(385, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(386, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(387, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(388, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(389, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(390, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(391, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(392, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(393, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(394, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(395, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(396, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(397, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(398, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(399, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(400, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(401, 'settings.takto_sidebar-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(402, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(403, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(404, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(405, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(406, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(407, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(408, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(409, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(410, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(411, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(412, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(413, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(414, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(415, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(416, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(417, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(418, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(419, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(420, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(421, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(422, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(423, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(424, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(425, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(426, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(427, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(428, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(429, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(430, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(431, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(432, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(433, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(434, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(435, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(436, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(437, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(438, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(439, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(440, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(441, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(442, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(443, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(444, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(445, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(446, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(447, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(448, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(449, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(450, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(451, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(452, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(453, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(454, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(455, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(456, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(457, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(458, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(459, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(460, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(461, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(462, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(463, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(464, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(465, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(466, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(467, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(468, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(469, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(470, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(471, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(472, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(473, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(474, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(475, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(476, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(477, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(478, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(479, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(480, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(481, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(482, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(483, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(484, 'settings.takto-messageing-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(485, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(486, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(487, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(488, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(489, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(490, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(491, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(492, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(493, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(494, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(495, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(496, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(497, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(498, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(499, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(500, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(501, 'sidebar.product_create', 1, 'Product Create', 'sidebar', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(502, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(503, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(504, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(505, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(506, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(507, 'log.in', 2, 'log in bn', 'log', NULL, 0, '2025-01-15 05:15:23', '2025-01-15 05:15:23'),
(508, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(509, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(510, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(511, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(512, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(513, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(514, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(515, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(516, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(517, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(518, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(519, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(520, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(521, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(522, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(523, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(524, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(525, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(526, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(527, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(528, 'settings.takto_sidebar-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(529, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(530, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(531, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(532, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(533, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(534, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(535, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(536, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(537, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(538, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(539, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(540, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(541, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(542, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(543, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(544, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(545, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(546, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(547, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(548, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(549, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(550, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(551, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(552, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(553, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(554, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(555, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(556, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(557, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(558, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(559, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(560, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(561, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(562, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(563, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(564, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(565, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(566, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(567, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(568, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(569, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(570, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(571, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(572, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(573, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(574, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(575, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(576, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(577, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(578, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(579, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(580, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(581, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(582, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(583, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(584, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(585, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(586, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(587, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(588, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(589, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(590, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(591, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(592, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(593, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(594, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(595, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(596, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(597, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(598, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(599, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(600, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(601, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(602, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(603, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(604, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(605, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(606, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(607, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(608, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(609, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(610, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(611, 'settings.takto-messageing-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(612, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(613, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(614, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(615, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(616, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(617, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(618, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(619, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(620, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(621, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(622, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(623, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(624, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(625, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(626, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(627, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(628, 'sidebar.product_create', 1, 'Product Create', 'sidebar', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(629, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(630, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(631, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(632, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(633, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(634, 'log.in', 2, 'log in bn', 'log', NULL, 0, '2025-01-15 05:16:47', '2025-01-15 05:16:47'),
(635, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(636, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(637, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(638, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(639, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(640, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(641, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(642, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(643, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(644, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(645, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(646, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(647, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(648, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(649, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(650, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(651, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(652, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(653, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(654, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(655, 'settings.takto_sidebar-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(656, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(657, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(658, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(659, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(660, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(661, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(662, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(663, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(664, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(665, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(666, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(667, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(668, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(669, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(670, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(671, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(672, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(673, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(674, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(675, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(676, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(677, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(678, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(679, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(680, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(681, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(682, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(683, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(684, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(685, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(686, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(687, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(688, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(689, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(690, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(691, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(692, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(693, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(694, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(695, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(696, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(697, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(698, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(699, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(700, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(701, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(702, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(703, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(704, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(705, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(706, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(707, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(708, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(709, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(710, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(711, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(712, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(713, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(714, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(715, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(716, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(717, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(718, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(719, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(720, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(721, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(722, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(723, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(724, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(725, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(726, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(727, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(728, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(729, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(730, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(731, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(732, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(733, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(734, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(735, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(736, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(737, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(738, 'settings.takto-messageing-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(739, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(740, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(741, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(742, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(743, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(744, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(745, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(746, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(747, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(748, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(749, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(750, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(751, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(752, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(753, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(754, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(755, 'sidebar.product_create', 1, 'Product Create', 'sidebar', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(756, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(757, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(758, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(759, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(760, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(761, 'log.in', 2, 'log in bn', 'log', NULL, 0, '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(762, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(763, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(764, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(765, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(766, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(767, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(768, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(769, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(770, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(771, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(772, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(773, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(774, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(775, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(776, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(777, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(778, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(779, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(780, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(781, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(782, 'settings.takto_sidebar-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(783, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(784, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(785, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(786, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(787, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(788, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(789, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(790, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(791, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(792, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(793, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(794, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(795, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(796, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(797, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(798, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(799, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(800, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(801, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(802, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(803, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(804, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(805, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(806, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(807, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(808, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(809, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(810, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(811, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(812, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(813, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(814, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(815, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(816, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(817, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(818, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(819, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(820, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(821, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(822, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(823, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(824, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(825, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(826, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(827, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(828, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(829, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(830, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(831, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(832, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(833, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(834, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(835, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(836, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(837, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(838, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(839, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(840, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(841, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(842, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(843, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(844, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(845, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(846, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(847, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(848, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(849, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(850, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(851, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(852, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(853, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(854, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(855, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(856, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(857, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(858, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(859, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(860, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(861, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(862, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(863, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(864, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(865, 'settings.takto-messageing-management', 1, 'Tak.to Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(866, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(867, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(868, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(869, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(870, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(871, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(872, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(873, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(874, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(875, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(876, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(877, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(878, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(879, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(880, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(881, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(882, 'sidebar.product_create', 1, 'Product Create', 'sidebar', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(883, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(884, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(885, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(886, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(887, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59'),
(888, 'log.in', 2, 'log in bn', 'log', NULL, 0, '2025-01-15 05:35:59', '2025-01-15 05:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `sort_name` varchar(125) DEFAULT NULL,
  `decimal` varchar(125) NOT NULL DEFAULT '0',
  `sub_items_id` varchar(125) NOT NULL DEFAULT '0',
  `sub_items` varchar(125) NOT NULL DEFAULT '0',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `sort_name`, `decimal`, `sub_items_id`, `sub_items`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'pics', 'pcs', '1', '0', '0', '1', '2024-12-29 00:57:36', '2025-01-02 02:40:15'),
(5, 'halli', 'hali', '0', '1', '4', '1', '2025-01-02 03:08:52', '2025-01-02 03:08:52'),
(6, 'dorjon', 'dorjon', '0', '1', '12', '1', '2025-01-02 03:09:09', '2025-01-02 03:09:09'),
(7, '1 box', 'box', '0', '0', '0', '1', '2025-01-02 03:09:55', '2025-01-02 03:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `extension` varchar(125) DEFAULT NULL,
  `size` varchar(125) DEFAULT NULL,
  `source` varchar(125) DEFAULT NULL,
  `user_id` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `extension`, `size`, `source`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '4492869768763116060.jpeg', 'jpeg', '7284', 'Local', '1', '2024-12-29 00:50:30', '2024-12-29 00:50:30'),
(2, '5288969768767136260.jpeg', 'jpeg', '4570', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(3, '8805769768767136260.jpg', 'jpg', '9952', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(4, '2254869768767136260.jpg', 'jpg', '11637', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(5, '2469369768767136260.jpeg', 'jpeg', '81343', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(6, '3822569768767136260.jpg', 'jpg', '10313', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(7, '7043869768767136260.jpg', 'jpg', '845290', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(8, '2368869768767136260.jpg', 'jpg', '845290', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(9, '4118969768767136260.jpg', 'jpg', '10337', 'Local', '1', '2024-12-29 00:52:10', '2024-12-29 00:52:10'),
(10, '4420269768767498078.jpeg', 'jpeg', '4570', 'Local', '1', '2024-12-29 00:52:19', '2024-12-29 00:52:19'),
(11, '3578369768767900098.jpg', 'jpg', '209163', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(12, '5784869768767900098.jpeg', 'jpeg', '140326', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(13, '3985069768767900098.jpg', 'jpg', '845290', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(14, '3808269768767900098.jpg', 'jpg', '6510', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(15, '861269768767900098.jpg', 'jpg', '1631', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(16, '5226569768767900098.jpeg', 'jpeg', '13320', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(17, '173369768767900098.jpg', 'jpg', '9976', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(18, '8403369768767900098.jpg', 'jpg', '6896', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(19, '6192669768767900098.jpg', 'jpg', '960065', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(20, '989269768767900098.png', 'png', '2064459', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(21, '710269768767900098.jpg', 'jpg', '10351', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(22, '6337269768767900098.jpg', 'jpg', '9246', 'Local', '1', '2024-12-29 00:52:29', '2024-12-29 00:52:29'),
(23, '328469768768221714.jpg', 'jpg', '529607', 'Local', '1', '2024-12-29 00:52:37', '2024-12-29 00:52:37'),
(24, '8398269768772603732.jpg', 'jpg', '6920', 'Local', '1', '2024-12-29 00:54:26', '2024-12-29 00:54:26'),
(25, '9269269768773246964.jpeg', 'jpeg', '7284', 'Local', '1', '2024-12-29 00:54:42', '2024-12-29 00:54:42'),
(26, '5784769768773287166.png', 'png', '7658', 'Local', '1', '2024-12-29 00:54:43', '2024-12-29 00:54:43'),
(27, '4211869768774010802.jpg', 'jpg', '19544', 'Local', '1', '2024-12-29 00:55:01', '2024-12-29 00:55:01'),
(28, '9157069768774935448.jpg', 'jpg', '8854', 'Local', '1', '2024-12-29 00:55:24', '2024-12-29 00:55:24'),
(29, '9452369768775860094.jpeg', 'jpeg', '7284', 'Local', '1', '2024-12-29 00:55:47', '2024-12-29 00:55:47'),
(30, '9967469768776221912.jpg', 'jpg', '41639', 'Local', '1', '2024-12-29 00:55:56', '2024-12-29 00:55:56'),
(31, '2792769768777870194.jpeg', 'jpeg', '4034', 'Local', '1', '2024-12-29 00:56:37', '2024-12-29 00:56:37'),
(32, '3982669768781327566.jpeg', 'jpeg', '4570', 'Local', '1', '2024-12-29 00:58:03', '2024-12-29 00:58:03'),
(33, '8550169768781930596.png', 'png', '67783', 'Local', '1', '2024-12-29 00:58:18', '2024-12-29 00:58:18'),
(34, '2092069768783699484.jpeg', 'jpeg', '29655', 'Local', '1', '2024-12-29 00:59:02', '2024-12-29 00:59:02'),
(35, '2149369768786634230.png', 'png', '24733', 'Local', '1', '2024-12-29 01:00:15', '2024-12-29 01:00:15'),
(36, '3837969768787960896.jpg', 'jpg', '529607', 'Local', '1', '2024-12-29 01:00:48', '2024-12-29 01:00:48'),
(37, '5725969768788041300.jpg', 'jpg', '17880', 'Local', '1', '2024-12-29 01:00:50', '2024-12-29 01:00:50'),
(38, '5483969768790654430.jpg', 'jpg', '8854', 'Local', '1', '2024-12-29 01:01:55', '2024-12-29 01:01:55'),
(39, '6397669768793146954.jpg', 'jpg', '21745', 'Local', '1', '2024-12-29 01:02:57', '2024-12-29 01:02:57'),
(40, '9886469768797327962.jpeg', 'jpeg', '7284', 'Local', '1', '2024-12-29 01:04:41', '2024-12-29 01:04:41'),
(41, '3796569768800302910.jpeg', 'jpeg', '7284', 'Local', '1', '2024-12-29 01:05:55', '2024-12-29 01:05:55'),
(42, '9908769768808865936.png', 'png', '53359', 'Local', '1', '2024-12-29 01:09:28', '2024-12-29 01:09:28'),
(43, '1571169768809308158.jpeg', 'jpeg', '4570', 'Local', '1', '2024-12-29 01:09:39', '2024-12-29 01:09:39'),
(44, '6494769768813770580.jpg', 'jpg', '111752', 'Local', '1', '2024-12-29 01:11:30', '2024-12-29 01:11:30'),
(45, '510469768814132398.jpg', 'jpg', '88155', 'Local', '1', '2024-12-29 01:11:39', '2024-12-29 01:11:39'),
(46, '1989469768815861084.png', 'png', '193916', 'Local', '1', '2024-12-29 01:12:23', '2024-12-29 01:12:23'),
(47, '2295969768816504316.jpg', 'jpg', '74901', 'Local', '1', '2024-12-29 01:12:38', '2024-12-29 01:12:38'),
(48, '4878869768827157846.png', 'png', '252737', 'Local', '1', '2024-12-29 01:17:03', '2024-12-29 01:17:03'),
(49, '8220769768833951984.jpg', 'jpg', '33287', 'Local', '1', '2024-12-29 01:19:52', '2024-12-29 01:19:52'),
(50, '4790869768836725922.jpg', 'jpg', '45133', 'Local', '1', '2024-12-29 01:21:01', '2024-12-29 01:21:01'),
(51, '2203769768871339844.webp', 'webp', '16018', 'Local', '1', '2024-12-29 01:35:22', '2024-12-29 01:35:22'),
(52, '7155169768872264490.jpg', 'jpg', '67365', 'Local', '1', '2024-12-29 01:35:45', '2024-12-29 01:35:45'),
(53, '4615669768873309742.jpg', 'jpg', '18895', 'Local', '1', '2024-12-29 01:36:11', '2024-12-29 01:36:11'),
(54, '8428269768874314792.webp', 'webp', '2786', 'Local', '1', '2024-12-29 01:36:36', '2024-12-29 01:36:36'),
(55, '4502369768875882670.jpg', 'jpg', '27063', 'Local', '1', '2024-12-29 01:37:15', '2024-12-29 01:37:15'),
(56, '5331369768876485700.jpg', 'jpg', '773269', 'Local', '1', '2024-12-29 01:37:30', '2024-12-29 01:37:30'),
(57, '9407669768881470748.webp', 'webp', '28618', 'Local', '1', '2024-12-29 01:39:34', '2024-12-29 01:39:34'),
(58, '5586469768882154182.jpg', 'jpg', '27063', 'Local', '1', '2024-12-29 01:39:51', '2024-12-29 01:39:51'),
(59, '2250969768884325090.jpg', 'jpg', '143615', 'Local', '1', '2024-12-29 01:40:45', '2024-12-29 01:40:45'),
(60, '4907069768886335190.jpeg', 'jpeg', '6854', 'Local', '1', '2024-12-29 01:41:35', '2024-12-29 01:41:35'),
(61, '2664969768909370936.jpeg', 'jpeg', '134458', 'Local', '1', '2024-12-29 01:51:08', '2024-12-29 01:51:08'),
(62, '382969769015986640.jpg', 'jpg', '69329', 'Local', '1', '2024-12-29 02:35:20', '2024-12-29 02:35:20'),
(63, '2438969769017996740.jpg', 'jpg', '169445', 'Local', '1', '2024-12-29 02:36:10', '2024-12-29 02:36:10'),
(64, '1953969769019444012.jpg', 'jpg', '18955', 'Local', '1', '2024-12-29 02:36:46', '2024-12-29 02:36:46'),
(65, '6550269769022338556.jpeg', 'jpeg', '134458', 'Local', '1', '2024-12-29 02:37:58', '2024-12-29 02:37:58'),
(66, '8573869769028610068.webp', 'webp', '31178', 'Local', '1', '2024-12-29 02:40:34', '2024-12-29 02:40:34'),
(67, '3214069769032509662.jpg', 'jpg', '24218', 'Local', '1', '2024-12-29 02:42:11', '2024-12-29 02:42:11'),
(68, '983869769034841378.jpg', 'jpg', '46885', 'Local', '1', '2024-12-29 02:43:09', '2024-12-29 02:43:09'),
(69, '8241169769039585214.jpg', 'jpg', '18895', 'Local', '1', '2024-12-29 02:45:07', '2024-12-29 02:45:07'),
(70, '9033269769042479758.webp', 'webp', '21294', 'Local', '1', '2024-12-29 02:46:19', '2024-12-29 02:46:19'),
(71, '1382169769080149032.jpg', 'jpg', '52229', 'Local', '1', '2024-12-29 03:01:56', '2024-12-29 03:01:56'),
(72, '4465369769333381430.jpg', 'jpg', '75158', 'Local', '1', '2024-12-29 04:46:55', '2024-12-29 04:46:55'),
(73, '2072769769336195570.jpg', 'jpg', '68353', 'Local', '1', '2024-12-29 04:48:05', '2024-12-29 04:48:05'),
(74, '3962569769373060804.jpg', 'jpg', '75158', 'Local', '1', '2024-12-29 05:03:22', '2024-12-29 05:03:22'),
(75, '2086369769373302016.jpg', 'jpg', '51112', 'Local', '1', '2024-12-29 05:03:28', '2024-12-29 05:03:28'),
(76, '9931569814277448542.jpeg', 'jpeg', '444156', 'Local', '1', '2025-01-11 03:19:31', '2025-01-11 03:19:31'),
(77, '4676469814277488744.jpeg', 'jpeg', '120292', 'Local', '1', '2025-01-11 03:19:32', '2025-01-11 03:19:32'),
(78, '1249969814277890764.jpg', 'jpg', '321652', 'Local', '1', '2025-01-11 03:19:42', '2025-01-11 03:19:42'),
(79, '8998369814278172178.jpg', 'jpg', '188451', 'Local', '1', '2025-01-11 03:19:49', '2025-01-11 03:19:49'),
(80, '8608369814278493794.jpg', 'jpg', '280242', 'Local', '1', '2025-01-11 03:19:57', '2025-01-11 03:19:57'),
(81, '9319769814278936016.jpg', 'jpg', '522364', 'Local', '1', '2025-01-11 03:20:08', '2025-01-11 03:20:08'),
(82, '2929369814279539046.jpg', 'jpg', '269143', 'Local', '1', '2025-01-11 03:20:23', '2025-01-11 03:20:23'),
(83, '5486769814292443888.png', 'png', '106320', 'Local', '1', '2025-01-11 03:25:44', '2025-01-11 03:25:44'),
(84, '5773169814293167524.png', 'png', '27768', 'Local', '1', '2025-01-11 03:26:02', '2025-01-11 03:26:02'),
(85, '5671469814293167524.png', 'png', '27768', 'Local', '1', '2025-01-11 03:26:02', '2025-01-11 03:26:02'),
(86, '5766669814320746096.png', 'png', '40124', 'Local', '1', '2025-01-11 03:37:28', '2025-01-11 03:37:28'),
(87, '9471569814320906904.png', 'png', '52499', 'Local', '1', '2025-01-11 03:37:32', '2025-01-11 03:37:32'),
(88, '7760469814325168316.jpeg', 'jpeg', '13354', 'Local', '1', '2025-01-11 03:39:18', '2025-01-11 03:39:18'),
(89, '385869814541334470.webp', 'webp', '63468', 'Local', '1', '2025-01-11 05:08:55', '2025-01-11 05:08:55'),
(90, '336269828718770780.png', 'png', '252737', 'Local', '1', '2025-01-15 07:06:30', '2025-01-15 07:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` varchar(125) DEFAULT NULL,
  `name` varchar(125) NOT NULL,
  `father` varchar(125) DEFAULT NULL,
  `mother` varchar(125) DEFAULT NULL,
  `username` varchar(125) DEFAULT NULL,
  `designation` varchar(125) DEFAULT NULL,
  `religion` varchar(125) DEFAULT NULL,
  `slug` varchar(125) DEFAULT NULL,
  `nationality` varchar(125) DEFAULT NULL,
  `nid` varchar(125) DEFAULT NULL,
  `salary` varchar(125) NOT NULL DEFAULT '0',
  `branch_id` varchar(125) NOT NULL DEFAULT '0',
  `joining_date` date DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `upload_id` varchar(125) NOT NULL DEFAULT '0',
  `status` varchar(125) NOT NULL DEFAULT '0',
  `sales_status` varchar(125) NOT NULL DEFAULT '0',
  `birth` varchar(125) DEFAULT NULL,
  `blood_group` varchar(125) DEFAULT NULL,
  `mobile_number` varchar(125) DEFAULT NULL,
  `alt_mobile_number` varchar(125) DEFAULT NULL,
  `family_mobile_number` varchar(125) DEFAULT NULL,
  `account_tax_payer_id` varchar(125) DEFAULT NULL,
  `gender` varchar(125) NOT NULL DEFAULT '0',
  `marital_status` varchar(125) NOT NULL DEFAULT '0',
  `sales_commission_present` varchar(125) NOT NULL DEFAULT '0',
  `email` varchar(125) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(125) NOT NULL,
  `fcm_token` varchar(125) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `prefix`, `name`, `father`, `mother`, `username`, `designation`, `religion`, `slug`, `nationality`, `nid`, `salary`, `branch_id`, `joining_date`, `exit_date`, `upload_id`, `status`, `sales_status`, `birth`, `blood_group`, `mobile_number`, `alt_mobile_number`, `family_mobile_number`, `account_tax_payer_id`, `gender`, `marital_status`, `sales_commission_present`, `email`, `email_verified_at`, `password`, `fcm_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin', NULL, NULL, 'superadmin', NULL, NULL, 'super-admin', NULL, NULL, '0', '1', NULL, NULL, '0', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', 'admin@gmail.com', '2024-12-28 06:20:57', '$2y$12$m52rXmOZn7H0.9ynL2305OjokjJUHTpDEDmhOg3ffMFTWYxKDzTx6', NULL, 'IsdTrRTfz9NOdCorK8wP6p1cAqiPLgMxMi446GbzKJhjHMQ7kU88u8a0Wlnk', '2024-12-28 06:20:57', '2024-12-28 06:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `variant_options`
--

CREATE TABLE `variant_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `old_price` varchar(125) NOT NULL DEFAULT '0',
  `selling_price` varchar(125) NOT NULL DEFAULT '0',
  `alert_quantity` varchar(125) NOT NULL DEFAULT '0',
  `creator` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_options`
--

INSERT INTO `variant_options` (`id`, `product_id`, `name`, `old_price`, `selling_price`, `alert_quantity`, `creator`, `created_at`, `updated_at`) VALUES
(1, 15, 'red:S', '45645', '4564', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(2, 15, 'red:L', '456', '4564', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(3, 15, 'red:T', '564', '56456', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(4, 15, 'yellow:S', '564566', '4564', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(5, 15, 'yellow:L', '456', '4564', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(6, 15, 'yellow:T', '6456', '456', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(7, 15, 'blue:S', '456', '456', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(8, 15, 'blue:L', '456', '456', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(9, 15, 'blue:T', '456', '456', '0', 1, '2025-01-06 22:44:48', '2025-01-06 22:44:48'),
(10, 16, 'red:S', '45645', '4564', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(11, 16, 'red:L', '456', '4564', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(12, 16, 'red:T', '564', '56456', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(13, 16, 'yellow:S', '564566', '4564', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(14, 16, 'yellow:L', '456', '4564', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(15, 16, 'yellow:T', '6456', '456', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(16, 16, 'blue:S', '456', '456', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(17, 16, 'blue:L', '456', '456', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(18, 16, 'blue:T', '456', '456', '0', 1, '2025-01-06 22:47:17', '2025-01-06 22:47:17'),
(19, 13, 'red:S', '23423', '234', '0', 1, '2025-01-07 00:22:20', '2025-01-07 00:22:20'),
(20, 13, 'yellow:S', '2342', '3423', '0', 1, '2025-01-07 00:22:20', '2025-01-07 00:22:20'),
(21, 13, 'blue:S', '4234', '2342', '0', 1, '2025-01-07 00:22:20', '2025-01-07 00:22:20'),
(22, 25, 'red:S', '23423', '4234', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(23, 25, 'red:L', '234', '234', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(24, 25, 'red:T', '234', '234', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(25, 25, 'yellow:S', '4', '234', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(26, 25, 'yellow:L', '2342', '234', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(27, 25, 'yellow:T', '234', '234', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(28, 25, 'blue:S', '23423', '4234', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(29, 25, 'blue:L', '2342', '3423', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59'),
(30, 25, 'blue:T', '4234', '23', '0', 1, '2025-01-15 07:23:59', '2025-01-15 07:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `varinat_suggessions`
--

CREATE TABLE `varinat_suggessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(125) NOT NULL,
  `title` varchar(125) DEFAULT NULL,
  `title_status` varchar(125) NOT NULL DEFAULT '1',
  `sub_title` varchar(125) DEFAULT NULL,
  `sub_title_status` varchar(125) NOT NULL DEFAULT '1',
  `short_read_more` varchar(125) NOT NULL DEFAULT 'Read More',
  `short_read_more_status` tinyint(1) NOT NULL DEFAULT 1,
  `short_read_more_page_url` varchar(125) DEFAULT NULL,
  `view_all` varchar(125) NOT NULL DEFAULT 'See All',
  `view_all_status` tinyint(1) NOT NULL DEFAULT 1,
  `view_all_page_url` varchar(125) DEFAULT NULL,
  `items_per_row` int(11) NOT NULL DEFAULT 3,
  `items_show` int(11) NOT NULL DEFAULT 4,
  `is_details_page` int(11) NOT NULL DEFAULT 0,
  `background` varchar(125) NOT NULL DEFAULT '0',
  `background_color` varchar(125) NOT NULL DEFAULT '#eeeeee',
  `background_type` tinyint(1) NOT NULL DEFAULT 1,
  `is_banner` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 1,
  `status` varchar(125) NOT NULL DEFAULT '1',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varinat_suggessions`
--

INSERT INTO `varinat_suggessions` (`id`, `key`, `title`, `title_status`, `sub_title`, `sub_title_status`, `short_read_more`, `short_read_more_status`, `short_read_more_page_url`, `view_all`, `view_all_status`, `view_all_page_url`, `items_per_row`, `items_show`, `is_details_page`, `background`, `background_color`, `background_type`, `is_banner`, `order`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '_brand_variant._brand_style1', 'Brand Style 1', '1', 'Brand Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:04', '2025-01-15 05:02:38'),
(2, '_brand_variant._brand_style2', 'Brand Style 2', '0', 'Brand Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:04', '2025-01-15 05:02:38'),
(3, '_contact_variant._contact_style1', 'Contact Style 1', '1', 'Contact Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:04', '2025-01-15 05:02:38'),
(4, '_category_variant._category_style1', 'Category Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 12, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:04', '2025-01-15 05:02:38'),
(5, '_category_variant._category_style2', 'Category Style 2', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 12, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(6, '_hero_variant._hero_style1', 'Hero Style 1', '1', 'Hero Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(7, '_hero_variant._hero_style2', 'Hero Style 2', '1', 'Hero Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(8, '_hero_variant._hero_style3', 'Hero Style 3', '0', 'Hero Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 15, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(9, '_product_variant._feature_product', 'Product  Style 1', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 4, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(10, '_product_variant._popular_product', 'Product Style 2', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(11, '_product_variant._recommended_product', 'Product Style 3', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(12, '_product_variant._recent_product', 'Product Style 3', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 6, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(13, '_service_variant._service_style1', 'Service Style 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(14, '_service_variant._service_style2', 'Service Style 2', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(15, '_service_view_variant._service_view1', 'Service View 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(16, '_banner_card._bannar_card1', 'Banner Card 1', '0', 'Service Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(17, '_banner_card._bannar_card2', 'Banner Card 2', '0', 'Service Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(18, '_about_us_variant.about_us_style1', 'About page 1', '0', 'About Us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(19, '_product_details.product_details1', 'Product Details page 1', '0', 'Product Details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(20, '_filter_variant.filter_vaiant1', 'Product Filter  1', '0', 'Product Filter Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(21, '_cart_variant.cart_style1', 'Product Filter  1', '0', 'Product Filter Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(22, '_wishlist_variant.wish_list_style1', 'Product wishlist  1', '0', 'Product wishlist Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(23, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', 'Product checkout Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(24, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', 'Product tracking Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(25, '_contact_us_variant.contact_us_style1', 'Contact us  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(26, '_register_variant.register_style1', 'Register us  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(27, '_404_variant.404_style1', '404 page  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(28, '_comming_soon.comming_soon1', 'Comming soon  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(29, '_blog_variant.blog_variant1', 'blog  1', '0', 'blog Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(30, '_blog_details_variant.blog_details_variant1', 'Blog Details  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(31, '_faq_variant._faq_style1', 'Faq style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(32, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(33, '_profile._location.variant_1', 'profile location style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(34, '_profile._cart.variant_1', 'Profile cart style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(35, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(36, '_variant_manage.page_title', 'Page Title style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2024-12-28 06:21:05', '2025-01-15 05:02:38'),
(37, '_payment_information.variant_1', 'Payment Page 1', '0', 'Payment Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(38, '_checkout.variant_1', 'Checkout Page 1', '0', 'Checkout Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(39, '_profile._payment_information.variant_1', 'Payment Page 1', '0', 'Payment Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2025-01-15 05:16:48', '2025-01-15 05:16:48'),
(40, '_profile._checkout.variant_1', 'Checkout Page 1', '0', 'Checkout Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, 0, 1, '1', '0', '0', NULL, '2025-01-15 05:16:48', '2025-01-15 05:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `vats`
--

CREATE TABLE `vats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `type` varchar(125) NOT NULL DEFAULT '1' COMMENT '0 means include  1 means exclude',
  `status` varchar(125) NOT NULL DEFAULT '1',
  `amount` varchar(125) DEFAULT NULL,
  `creator` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vats`
--

INSERT INTO `vats` (`id`, `name`, `type`, `status`, `amount`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Include Vat', '0', '1', '0', '1', '2024-12-28 06:20:56', '2024-12-28 06:20:56'),
(2, 'New Vat', '1', '1', '10', '1', '2024-12-29 02:48:18', '2024-12-29 02:48:18'),
(3, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:02:35', '2025-01-15 05:02:35'),
(4, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:12:56', '2025-01-15 05:12:56'),
(5, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:15:22', '2025-01-15 05:15:22'),
(6, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:16:46', '2025-01-15 05:16:46'),
(7, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:26:32', '2025-01-15 05:26:32'),
(8, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:26:56', '2025-01-15 05:26:56'),
(9, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:35:35', '2025-01-15 05:35:35'),
(10, 'Include Vat', '0', '1', '0', '1', '2025-01-15 05:35:58', '2025-01-15 05:35:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_addressable_type_addressable_id_index` (`addressable_type`,`addressable_id`);

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blog_category`
--
ALTER TABLE `blog_blog_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blog_category_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_blog_category_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_counters`
--
ALTER TABLE `cash_counters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_counters_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_contactable_type_contactable_id_index` (`contactable_type`,`contactable_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_use_histories`
--
ALTER TABLE `coupon_use_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_credentials`
--
ALTER TABLE `courier_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_device_type_index` (`device_type`),
  ADD KEY `devices_ip_index` (`ip`),
  ADD KEY `devices_last_activity_index` (`last_activity`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expriences`
--
ALTER TABLE `expriences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcms`
--
ALTER TABLE `fcms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_link_headings`
--
ALTER TABLE `footer_link_headings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_link_sub_headings`
--
ALTER TABLE `footer_link_sub_headings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_manages`
--
ALTER TABLE `home_page_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_accounts`
--
ALTER TABLE `lead_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_contacts`
--
ALTER TABLE `lead_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_deals`
--
ALTER TABLE `lead_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_deal_stages`
--
ALTER TABLE `lead_deal_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_sources`
--
ALTER TABLE `lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_settings`
--
ALTER TABLE `mail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `offer_banners`
--
ALTER TABLE `offer_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_credentials`
--
ALTER TABLE `payment_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_paymethodable_type_paymethodable_id_index` (`paymethodable_type`,`paymethodable_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_refs`
--
ALTER TABLE `product_refs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_unit_id_foreign` (`unit_id`),
  ADD KEY `purchases_varinat_id_foreign` (`varinat_id`);

--
-- Indexes for table `refrence_users`
--
ALTER TABLE `refrence_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_products`
--
ALTER TABLE `review_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_contacts`
--
ALTER TABLE `social_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_contacts_sociable_type_sociable_id_index` (`sociable_type`,`sociable_id`);

--
-- Indexes for table `special_events`
--
ALTER TABLE `special_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_types`
--
ALTER TABLE `supplier_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection_information`
--
ALTER TABLE `transection_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variant_options`
--
ALTER TABLE `variant_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varinat_suggessions`
--
ALTER TABLE `varinat_suggessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vats`
--
ALTER TABLE `vats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_blog_category`
--
ALTER TABLE `blog_blog_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `cash_counters`
--
ALTER TABLE `cash_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_use_histories`
--
ALTER TABLE `coupon_use_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courier_credentials`
--
ALTER TABLE `courier_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expriences`
--
ALTER TABLE `expriences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `fcms`
--
ALTER TABLE `fcms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `footer_link_headings`
--
ALTER TABLE `footer_link_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `footer_link_sub_headings`
--
ALTER TABLE `footer_link_sub_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `home_page_manages`
--
ALTER TABLE `home_page_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_accounts`
--
ALTER TABLE `lead_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_contacts`
--
ALTER TABLE `lead_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_deals`
--
ALTER TABLE `lead_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_deal_stages`
--
ALTER TABLE `lead_deal_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `mail_settings`
--
ALTER TABLE `mail_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `offer_banners`
--
ALTER TABLE `offer_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_credentials`
--
ALTER TABLE `payment_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_faqs`
--
ALTER TABLE `product_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_refs`
--
ALTER TABLE `product_refs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `refrence_users`
--
ALTER TABLE `refrence_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_products`
--
ALTER TABLE `review_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `social_contacts`
--
ALTER TABLE `social_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `special_events`
--
ALTER TABLE `special_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_types`
--
ALTER TABLE `supplier_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transection_information`
--
ALTER TABLE `transection_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variant_options`
--
ALTER TABLE `variant_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `varinat_suggessions`
--
ALTER TABLE `varinat_suggessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `vats`
--
ALTER TABLE `vats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
