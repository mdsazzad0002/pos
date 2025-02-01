-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2025 at 10:40 AM
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
-- Database: `zaasmult_professonal`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `phone` varchar(125) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `address_optional` varchar(125) DEFAULT NULL,
  `district` varchar(125) DEFAULT NULL,
  `stay_time` varchar(125) DEFAULT NULL,
  `country` varchar(125) DEFAULT NULL,
  `state` varchar(125) DEFAULT NULL,
  `postal` varchar(125) DEFAULT NULL,
  `creator` varchar(125) DEFAULT NULL,
  `updater` varchar(125) DEFAULT NULL,
  `addressable_type` varchar(125) NOT NULL,
  `addressable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `email`, `phone`, `address`, `address_optional`, `district`, `stay_time`, `country`, `state`, `postal`, `creator`, `updater`, `addressable_type`, `addressable_id`, `created_at`, `updated_at`) VALUES
(1, 'Md', 'forhad@gmail.com', '01814556688', '', '', '', NULL, '', '', '', NULL, NULL, 'App\\Models\\Customer', 3, '2025-01-31 07:53:16', '2025-01-31 07:53:16');

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
(1, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-28 02:54:44', '2025-01-28 02:54:44'),
(2, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-28 06:09:23', '2025-01-28 06:09:23'),
(3, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(4, 'Head Branch', 'Mirpur 10', 1, '1', '0', NULL, '2025-01-29 01:51:59', '2025-01-29 01:51:59');

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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `creator`, `name`, `slug`, `description`, `status`, `upload_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 1, 'Agriculture & Machine', 'agriculture-machine', NULL, '1', '77', NULL, '2025-01-28 02:57:28', '2025-01-30 02:06:15'),
(7, 1, 'Gradining Tools', 'gradining-tools', NULL, '1', '76', NULL, '2025-01-28 02:57:43', '2025-01-30 02:06:30'),
(8, 1, 'Home Appliances', 'home-appliances', NULL, '1', '79', NULL, '2025-01-28 02:58:01', '2025-01-30 02:06:40'),
(9, 1, 'Cookeries', 'cookeries', NULL, '1', '84', NULL, '2025-01-28 02:58:32', '2025-01-30 02:33:15'),
(10, 1, 'Fashion House', 'fashion-house', NULL, '1', '78', NULL, '2025-01-28 02:58:59', '2025-01-30 02:06:59');

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
  `expire_date` timestamp NULL DEFAULT NULL,
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
(1, NULL, 'Walk In Delivery', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(2, NULL, 'EasyPost', NULL, NULL, NULL, NULL, NULL, 'shippo_test_2cb6d0c8057930440e8b510e19434d982c1ce48d', '1', '1', 1, 1, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(3, NULL, 'SteadFast', 'g94vnmgpdvehmsp8vrhgkyrv', 'jwqjaywbmswqrwymm0bdvnwvrr6annc4 ', NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(4, NULL, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 1, 1, '2025-01-28 02:54:55', '2025-01-28 02:54:55');

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
  `password` varchar(125) DEFAULT NULL,
  `bank_branch` varchar(125) DEFAULT NULL,
  `upload_id` varchar(125) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `shop_name`, `shop_phone`, `shop_address`, `type`, `user_id`, `creator`, `location`, `account_holder`, `account_number`, `note`, `bank_name`, `credit_limit`, `prev_due`, `area`, `password`, `bank_branch`, `upload_id`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@gmail.com', '015*******', NULL, NULL, NULL, NULL, NULL, '1', 'Dhaka Bangladesh', 'MD SAZZAD', '01590084779', NULL, 'bKash', NULL, NULL, NULL, '$2y$12$Gc1x9TTAKMgkq/Gn9/Mn1OFCcEDpDXypStYS8MrXWgzvhFCvWW2lW', 'Bangladesh', '0', '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(2, 'Kasper Leonard', 'julo@mailinator.com', '+1 (396) 273-7003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$XNVfKO864/4linkJPtpYKuOfSdXoFgKwk23jaIUIxf1ETACUqKKsW', NULL, '13', '2025-01-29 00:46:15', '2025-01-29 00:46:24'),
(3, 'Md', 'forhad@gmail.com', '01814556688', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 0, NULL, '$2y$12$5O9jQn0Srci1Lo3WlgC6busHxLpCY8ek5eVKdCtRUFVJh/jWlkXmi', NULL, '0', '2025-01-31 07:53:16', '2025-01-31 07:53:16');

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
(1, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;D:\\\\wamp64\\\\bin\\\\mysql\\\\mysql8.3.0\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"userNA45647854564785=MzI%3D; botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; g_state={\\\"i_l\\\":0}; twk_uuid_670faba22480f5b4f58e3fa8=%7B%22uuid%22%3A%221.HQ1yI0350LKGV8IGYpOj84yCyFszUYyslzvGcw54qhvreYsf4EfzymL5jAK496vj1ICUSZLYmfxdNNaKczEoHnUFvcYEseMdpoWdP%22%2C%22version%22%3A3%2C%22domain%22%3Anull%2C%22ts%22%3A1737877475663%7D; crisp-client%2Fsession%2F081aca0a-3ef7-42a7-bfb1-40311e186858=session_633f7a91-20c0-4bee-a7d7-60047b87b0b0; notunthikana_session=eyJpdiI6InRKaVJTUmlERXdEb3liMElEUEs0alE9PSIsInZhbHVlIjoiN1hpcFQva3RXN0wwUVM1N0tMdHdRTHRST0VXSnMwUDFDMlhKb2wvK2VMRkhVMFhGaGpIWGI1U0Q1NEVGNDV1M1JEcDlyclJPZ1gxaENWU0hycEVRbUIyLy9hdnNqRStPL0dNcTNQUGFYUmFVL3VyaE1GSDNtMGkxMmRjT0VTNEciLCJtYWMiOiI0YTcwNmNlMmU0MWIzZGE5YWM5YzNlNTdjZTQ3ZGExYjg0MDA3OWIyNzZhYzU2MWFmNjkxMDQxMTY4OTFjYTRhIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkN0WmkyMDJZdnZhRXlMeExwa0M3S0E9PSIsInZhbHVlIjoiZm9BNlBXc081TnQxa3BTQUprREEzcU0zaTdvWkw5bnRpMEROT1R4aU50OTV1cXNsbjhQdkpuVWhYTUxLUklhOGh2M0FwRktDaFNlQll4QzcyWHhWNHZtREdsQzdIaTR1L1ZPRWdiaTdFRTdXWHN1YVZnT3ZtVVlXdlZBdnVnTmUiLCJtYWMiOiJkNmUyZTE0OTc4YmEyZjBmNTE4YWU3MTM3NWQ5OWMwYmZiMmRlNTU0MTRmYzg4NWNlNjdkMmYxNjBlZGQ2YjQ2IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlllSVBWSXpKdGtFL2dxWTdkZGZEOHc9PSIsInZhbHVlIjoibVp3SXhSYUphMFhGMmFNdDU3WnVvYjdkaDgxN1dUdXJvd0E5SGdKbUVSTWd1OVZYNnhIUTRqMHI0WlVOSXBJVzE1cWVHV3A5V2VFYXVVZnFBNTEyUzJNYm0yNTlncHRWTFJjSlM5UnpNZnBxTFVteDlkUmxzVWlYUWdYd1R1eTMiLCJtYWMiOiI3NjZlYTQ3ZTQyZmFmNTY4NjFlMDc4YjhlMzJhNGQ3MWJhNTQ2NDg3ZjE0YmJiMzEyZWY4N2Y2YjExM2I0ZjQxIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"64207\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin/order\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1738054504, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1738054504.10843, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1738070117, NULL, '', '2025-01-28 02:55:04', '2025-01-28 07:15:17'),
(2, 'Windows \"Not A(Brand\"', '::1', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;D:\\\\wamp64\\\\bin\\\\mysql\\\\mysql8.3.0\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"localhost\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"botble_footprints_cookie=eyJpdiI6ImxZaUI4K2h3NUFGNWxRcGUvbjhoV1E9PSIsInZhbHVlIjoiVHlXbzVhejNqMWp0QU1LSGVsckF0TkR4bVEwRFlRRnF6L2xHT1FuVVVWcGs5YXhocWNxQktJSHBMWEdRNVd4RHplMlNKMjI2WElPOUNMTVhtb2NZS0k2dWVlN2Q3cEpTWVJxVVdpNjdCNElMdGpIZDZ4VElFdTNBMElWdVhxQVMiLCJtYWMiOiJmNTJkMmIwZDlhYzNjZjc2Mzg0YWI0ZGEwNWU0NDRkMzUzZDE5NWI1NjZlMGNjOTIxZjljMDM2OTNmNjVjN2UyIiwidGFnIjoiIn0%3D; botble_footprints_cookie_data=eyJpdiI6IjlneEdhczArWVpXNTh0YU14NStlY1E9PSIsInZhbHVlIjoiNjNVNWlaSUk1UlJwai9SMEhjbGNpTFNzeFFlVEYyMG93QitDUXZLdEtIZEUwTEpMMGlqVjdTeCtHYlFxWTltQVJ3a09Pc0xUbk12SWZMMVZ1MkxwVnQvYjRRVFdvWHN6TGVvS2RpUjM5R0RFU1VEcnkyTTlFdE5NVGl4bjc3UnR6dnpuVHpoMjlLakZveGxnWTl4V3BqSUs1akFwREZET1lqZXFLK0lZUmZvbllkdlgybUk3aXhPWTkwZytPdlYwVElPdGxPY1pOdWkyM3lKNmJxUTBMQUlMNXFRWCtLK09hSEZJVXJ3M0tsUlF1bUdLUyttMk5VSW1CdjE3Vm9oQTZRTXVvV2U2RVVtNTcrWDFXSnFxdW0vejhVVVY4Y0V2R0YySExVTE9IYnBSWDhVcTU0bno4NTFCdG51VWFOUklaSVgrTi8xRk9lTzFBSGcySm8vYTMxMXdBRHZEcmU5ZUY4cXdWWmo1QkprQWYwenBMUGFSMTFhTkVXYXJPOXNBaitoMzlzVnZad1l4b2NLLy8wZHVmclB1VjFvdGYwQ2VWbXZOdDBJK05RMjQ0R01SVU03QmtEUHgxUkt2eFJZN05DUm0rQUhoZ1pGbk9oY3ZDdXU0OU5ETjNCRTlaR0NnanB5YUNTa3FTbHM9IiwibWFjIjoiYzcwNmFjNDYzNDI3MWIxMDc4NjQ3MWRkODFlZjE5MjI1N2EzMjFmMWI5MDgzYmM0ZTE2OTJiNTVhZjA3NTE3NyIsInRhZyI6IiJ9; _ga=GA1.1.1562615106.1730878582; _fbp=fb.0.1730878582290.398619031224172341; cookie_for_consent=1; remember_customer_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6Ijd2dDFHZjd0Rmw3a0ZhcmF0cTZiTUE9PSIsInZhbHVlIjoibUVTTDE3TW0wdXJoamtRTm1RYlJZc1JxZXZiSHRsQk9YWlhLS25SYk1pQlhyZVFoQ0g4OFByRnlhMUZqZERqOXE0SkZyRDJ0VGJrOXlZRmR1cERnU09ZbHptYnpkU1g2R3BYMHg4ZDdLTC9FRzAyRmtSUGdmdGpqcW5sc2dyakFJQ0xQZnZVKy9vTmYvdFQyRjZURnBOSkxhbjNDajNoSVRrQ29zSlBTWVdqNmlXbjBqM2NpRmRoZUdXL0lFWE1oQkk5Y3FnOXJOK1pCUUZUZm9qbGpCRVdwUkJNY3ZYZzZUV0Y4aG1yN3A0Zz0iLCJtYWMiOiJiNTAzMTUyNjY5YmFlNjViYTk5ODQ4YzczODUxYjA2YzQzN2IxOTcxOTUyNWIxNjQyMGU3NTM1NmYyNDA3MmRkIiwidGFnIjoiIn0%3D; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpnRWJBMmxZbzdVV1R3MFpkYkFJUXc9PSIsInZhbHVlIjoidU5TUk0zNElSeENqbllqcm5ac2xjaWFjMjE0d2JMYXhnU3IyY08xQmNVb0daVnZ0TFNSWlV5bFRNNnZVeTQwN3U5bzM0TEkxaFZkMWR0NExXVTlTbFp6N1lvdDFGTDJKOVFqTG1kdzdxSUxJMHpwM1dqdUhpaVBhU2t3TEE5UVRsYkxIcDJuaGZ4amdvVnoxSzMxOHhyakRnUmlkVUZLQWVTcEhSdGdCVklSUHpFREk0M0NFdTdDaGQrT2t2aVBvUml0eHhSaG9uU3NoVHRSNmZsbnRMWGtodS9zczgza3ZsWDlzZFQ5ckNyZz0iLCJtYWMiOiJmZmIyMjM0Mzg0YzRkMWQ3ODlmODUyODhmYWMxMWJiNzFlYWQ2M2FhYmQwNzEyNDIwYjRjMGU3Yzk5NDdlMmU3IiwidGFnIjoiIn0%3D; _ga_VWDV3J1R98=GS1.1.1730895913.3.1.1730895920.0.0.0; g_state={\\\"i_l\\\":0}; twk_uuid_670faba22480f5b4f58e3fa8=%7B%22uuid%22%3A%221.HQ1yI0350LKGV8IGYpOj84yCyFszUYyslzvGcw54qhvreYsf4EfzymL5jAK496vj1ICUSZLYmfxdNNaKczEoHnUFvcYEseMdpoWdP%22%2C%22version%22%3A3%2C%22domain%22%3Anull%2C%22ts%22%3A1737877475663%7D; crisp-client%2Fsession%2F081aca0a-3ef7-42a7-bfb1-40311e186858=session_633f7a91-20c0-4bee-a7d7-60047b87b0b0; XSRF-TOKEN=eyJpdiI6ImdhVkFDMHdhUlpuOFBwOVAxckFqWXc9PSIsInZhbHVlIjoiVDkzRngrMWJ0N1ZFWE5DelhvTUxySHNrYW5BclZJSXdINm9TdFVRbE1NaVQraDB4d09KYStEN2hUSzB5MDU3cFN3WFB5NnJ6N0Q3UVc3Um56ZFNpaHM0bDNDVVlGSXZIRGdhMldEOW9ITTlPd0VpUk1EWFVDOU1xZk5JMVpCd00iLCJtYWMiOiI4NTgyYmIwNWViYzk0MDA4M2Q2NTAyODA3ODBmOTM5YWIyM2RhYTkyNjkyM2EwMmU2ZGIyMDIwZWE5ZjYzNzJkIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkdFTm1CNS9XOGRrUVVGbkw1SjlRY1E9PSIsInZhbHVlIjoiMGduWGc4bVJvQzVkRkJ1WXg0MkR2REQxM1FKMVZjOXF4R1dzQU9UZGpvYy9ZWXk1SXJ4cmFoaGZBOHRhWWl3ZnJTN0I1RjRpMGYzM2RZbE01L2xxWnlMMmNEd2JBRWk5ZjVzcUJ2RTJiMk00bTJOZUtkam1kcEZuTTBrU0ZzQTUiLCJtYWMiOiJlZGI3NzY0ZDhjZjhiYzBiOTliMWZjZmUwNGQ3NThiYzk3NzlmMDUyNDM5ODRmNDg3MjQxZTM2YmU5MjkxY2I0IiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"::1\", \"REMOTE_PORT\": \"54662\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"::1\", \"SERVER_NAME\": \"localhost\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://localhost/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1738124893, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at localhost Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1738124893.330571, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1738151928, NULL, '', '2025-01-28 22:28:13', '2025-01-29 05:58:48'),
(3, 'Windows \"Not A(Brand\"', '192.168.0.104', 0, NULL, '{\"PATH\": \"C:\\\\Python312\\\\Scripts\\\\;C:\\\\Python312\\\\;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;D:\\\\wamp64\\\\bin\\\\php\\\\php8.2.18;C:\\\\composer;C:\\\\Program Files (x86)\\\\cloudflared\\\\;C:\\\\Program Files\\\\Cloudflare\\\\Cloudflare WARP\\\\;D:\\\\wamp64\\\\bin\\\\mysql\\\\mysql8.3.0\\\\bin;C:\\\\WINDOWS\\\\system32\\\\config\\\\systemprofile\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\", \"WINDIR\": \"C:\\\\WINDOWS\", \"COMSPEC\": \"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\", \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PY;.PYW\", \"PHP_SELF\": \"/pos/index.php\", \"HTTP_HOST\": \"192.168.0.50\", \"SystemRoot\": \"C:\\\\WINDOWS\", \"HTTP_ACCEPT\": \"text/event-stream\", \"HTTP_COOKIE\": \"twk_uuid_670faba22480f5b4f58e3fa8=%7B%22uuid%22%3A%221.Sww6LrALxeHWaVvqTraTrsrxugu1kBZQ247a4cDV0c0q13TgzcQ2fGXgkUqtLNkaQfiyUZ15GtPuhPrJpdsHZxdBw3PYaOYtMzx1XzgmtPBONBe6Op0bh%22%2C%22version%22%3A3%2C%22domain%22%3A%22192.168.0.50%22%2C%22ts%22%3A1737864303751%7D; _ga=GA1.1.1809262368.1738067855; _fbp=fb.3.1738067859396.742133090633363582; crisp-client%2Fsession%2Ff69fd138-69d5-4d24-9a1c-214dbdeaeb8a=session_cc7adaad-68a2-4205-9479-e18065114ddf; _ga_NZP1R3J96M=GS1.1.1738127732.3.1.1738132086.0.0.399204572; XSRF-TOKEN=eyJpdiI6ImRXbCtCTVhhc0RBbEVXSTlKVVlZekE9PSIsInZhbHVlIjoiODhVVWRVY2U5dlJxU0RkVzNwQ05EUWVpMk5KTWxraWp3ZVlheUtRMW9QdGRsdm5CVlNLZ1IwTVZvNllqeDBkRHNPcm11bzVkc01UVjg3eVFIVnFvelFoQm5HOVRMSXU1dkJERnhoRGt5ZE5JZWZjS29RdkxJS1BhOGJwelNlSHQiLCJtYWMiOiJjODk5MWY2OGJmYzNkMjRhNjk2ZWNhYjE3ZTkwOTgwNDFjMjRmMDFlNzE1YzljZGM0ODg1YWZkNDI3OGIyYzhiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlVwNmtKbER5aDIxaFZ3MUcvNU9OQ1E9PSIsInZhbHVlIjoiR1pOK09wSGJFdU5qRURFeEd6VFhrSXREbVVySDFtUkY0VnZ4NFd4QmxUQ1cxOWRVeUFWcmVUbW9sUVBkZDRzZG9BUStndE8wRkpVcUlONFhzZ2NWT283NTA5eFM0ZEZ6ejNBNSthcnphaG5wQmRyYngvUGZvak11RW1MZzlOOU0iLCJtYWMiOiJjN2YzMWI3ZTY4ZDliMjU2MzFlYzI0NDg5NDEwMzc3NzVlYzBiMjA3MTFmMTNkZWI5ZWQ4ZTUzMjQ3MmEzYTEzIiwidGFnIjoiIn0%3D\", \"REMOTE_ADDR\": \"192.168.0.104\", \"REMOTE_PORT\": \"61964\", \"REQUEST_URI\": \"/pos/device_access_check\", \"SCRIPT_NAME\": \"/pos/index.php\", \"SERVER_ADDR\": \"192.168.0.50\", \"SERVER_NAME\": \"192.168.0.50\", \"SERVER_PORT\": \"80\", \"HTTP_REFERER\": \"http://192.168.0.50/pos/admin\", \"QUERY_STRING\": \"\", \"REDIRECT_URL\": \"/pos/device_access_check\", \"REQUEST_TIME\": 1738134880, \"SERVER_ADMIN\": \"wampserver@wampserver.invalid\", \"DOCUMENT_ROOT\": \"D:/wamp64/www\", \"CONTEXT_PREFIX\": \"\", \"HTTP_SEC_CH_UA\": \"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\", \"REQUEST_METHOD\": \"GET\", \"REQUEST_SCHEME\": \"http\", \"HTTP_CONNECTION\": \"keep-alive\", \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\", \"REDIRECT_STATUS\": \"200\", \"SCRIPT_FILENAME\": \"D:/wamp64/www/pos/index.php\", \"SERVER_PROTOCOL\": \"HTTP/1.1\", \"SERVER_SOFTWARE\": \"Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev\", \"SERVER_SIGNATURE\": \"<address>Apache/2.4.59 (Win64) PHP/8.3.6 mod_fcgid/2.3.10-dev Server at 192.168.0.50 Port 80</address>\\n\", \"GATEWAY_INTERFACE\": \"CGI/1.1\", \"HTTP_CACHE_CONTROL\": \"no-cache\", \"REQUEST_TIME_FLOAT\": 1738134880.350546, \"HTTP_SEC_FETCH_DEST\": \"empty\", \"HTTP_SEC_FETCH_MODE\": \"cors\", \"HTTP_SEC_FETCH_SITE\": \"same-origin\", \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate\", \"HTTP_ACCEPT_LANGUAGE\": \"en-US,en;q=0.9,bn;q=0.8\", \"CONTEXT_DOCUMENT_ROOT\": \"D:/wamp64/www\", \"HTTP_SEC_CH_UA_MOBILE\": \"?0\", \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\"}', 1, 1, NULL, NULL, 1738148375, NULL, '', '2025-01-29 01:14:40', '2025-01-29 04:59:35'),
(4, 'Windows \"Not A(Brand\"', '103.198.133.214', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9,bn;q=0.8\",\"HTTP_COOKIE\":\"twk_uuid_670faba22480f5b4f58e3fa8=%7B%22uuid%22%3A%221.3Cf90lKpmF0K1M15ZWJLuKJGlpMH5eqlNdkHi4v2i0O7qu5OmV9dnAwNZ396Tms9zFQEUk6n39gFEkhkuLYbM9XXOTKvZqWMo7hgrWz0DihTMjLMhiTMsD3iVasBiRdVHCfiSmu%22%2C%22version%22%3A3%2C%22domain%22%3A%22zaasmultifoodbeverage.com%22%2C%22ts%22%3A1738154837851%7D; XSRF-TOKEN=eyJpdiI6IjN6WGJBWHYzYVFUUHJiUSs5WmgxK2c9PSIsInZhbHVlIjoiQXBEdk5UMmhRWGFiWGNEdXN0a3VSVkFVUklBTjN4VDV2WGJKTTZHSmxqTStteGdza1BJVkg2RkVEa3NEbDFqak1QcXoxdzN2Y2N5empKK01CbXhKR1ZpR0xLaVN5dHorUkNKQ1NuQVh5eUh1azVXa1lPc0EyaDVkSEkvQVNJbVoiLCJtYWMiOiI3Mzg5Njc0YWFkMGYxZDEyZTQ3ZDMzOTQ1MDlmYzEzNjQ4NWU3MzgyZjU3NTczMmQyYTQ4YWI2NGQxNWRlY2E2IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ill1YU9lYkk4MGgxS2txdmZkZWtESFE9PSIsInZhbHVlIjoiNkRMdERtOVZFY29HMUM2SVhSMXpZVjdDY01Fb1VSUENkUHhkcGMvV1pyN0dCcm02RFBXOG9CdEdaN3FYQXNGQ3RXNlV5VjhGWnBadU9KcEkxcHpCNlFuUk9idDJLTmpBNU9RclF5SjJXdVQ2SVJqV1poNURyUXIwQVltTzJDblMiLCJtYWMiOiJiYjY0Mjc2YTZhNDAxNGUyNThjMTkxM2JkNTc3NDhjMzY2MzA4Nzg5NTA2NjM4MTZmZDhkNzNhNDNmZmQ4OGZkIiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"n.zaasmultifoodbeverage.com\",\"HTTP_REFERER\":\"https:\\/\\/n.zaasmultifoodbeverage.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/132.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/zaasmult\\/n.zaasmultifoodbeverage.com\",\"REMOTE_ADDR\":\"103.198.133.214\",\"REMOTE_PORT\":\"56962\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"n.zaasmultifoodbeverage.com\",\"SERVER_ADMIN\":\"webmaster@n.zaasmultifoodbeverage.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/zaasmult\\/n.zaasmultifoodbeverage.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/n.zaasmultifoodbeverage.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1738216649.9577720165252685546875,\"REQUEST_TIME\":1738216649,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel\",\"APP_ENV\":\"local\",\"APP_KEY\":\"base64:gL\\/AanXMDo0GNDHhAKpX5xOp0RzBBvT3c0T4Iggz7CY=\",\"APP_DEBUG\":\"false\",\"APP_URL\":\"\\/\\/n.zaasmultifoodbeverage.com\\/\",\"ASSET_URL\":\"\\/\\/n.zaasmultifoodbeverage.com\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"zaasmult_professonal\",\"DB_USERNAME\":\"zaasmult_professonal\",\"DB_PASSWORD\":\"SZOPbr&@J;Y9\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"GOOGLE_CLIENT_ID\":\"7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com\",\"GOOGLE_CLIENT_SECRET\":\"xxxxxx-sl9vkVFFmovXgAOp2ZSektxxxxxx\",\"GOOGLE_REDIRECT_URL\":\"http:\\/\\/192.168.0.50\\/pos\\/google\\/callback\"}', 1, 1, NULL, NULL, 1738235442, NULL, '', '2025-01-29 23:57:30', '2025-01-30 05:10:42'),
(5, 'Windows \"Not A(Brand\"', '103.198.133.214', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9\",\"HTTP_COOKIE\":\"XSRF-TOKEN=eyJpdiI6IitNZ2gvaGNOejZObmpsQ0QwazFOSmc9PSIsInZhbHVlIjoieHlDWHhpejNCSXlHRm1Yc3ZBRXhGOTVyTWRrNll2eU9ENXlTb1lSRFdKQjVrVmQ5NzFLd1NnK1h4QkZZeFJ5bXl2QStDVWtua01jcW56VHY0MHpUMGd1SldtVHZWV20vZExOUGhPTkVSY1Z1ZE52QVlCbHVIU0s0NkpRQ3BEMTkiLCJtYWMiOiJkOTE1ZWFjNGJkMjQ4NTA5NzIzMDk4OTRjMzFjNTkzM2FmZmIwZWZiOGQzNmI4MDVlN2I2ZmNhNGIzNjhhNmFhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBnMjVVOGJ5RVJ5amh3clJrOEp4TEE9PSIsInZhbHVlIjoiK0tlTE9nREpQM3ZjbVlWMHg4cUVqRUhkelV3dENIREpwcTRodWpaNmN0Zk11aTQwS2w3dDhwSUQxeDFTTXZpelVjaXBjdGJkdStTL1h4QVNJSkFadUpGL0ZsUTQ5RUptZkRFdWpZZGdET1FUb3pmY1pHS29ZczErWWw0R244SUgiLCJtYWMiOiI3NGFmMGNhYjcyMzcwZTg4NmIyZTQ3MmZiNTE1MDk3NmMyYTA0YTVjODZjYmZiZWRiOGIxYmQ3NjMxYTQ3NWUxIiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"n.zaasmultifoodbeverage.com\",\"HTTP_REFERER\":\"https:\\/\\/n.zaasmultifoodbeverage.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/132.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/zaasmult\\/n.zaasmultifoodbeverage.com\",\"REMOTE_ADDR\":\"103.198.133.214\",\"REMOTE_PORT\":\"64347\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"n.zaasmultifoodbeverage.com\",\"SERVER_ADMIN\":\"webmaster@n.zaasmultifoodbeverage.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/zaasmult\\/n.zaasmultifoodbeverage.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/n.zaasmultifoodbeverage.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1738223894.6606540679931640625,\"REQUEST_TIME\":1738223894,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel\",\"APP_ENV\":\"local\",\"APP_KEY\":\"base64:gL\\/AanXMDo0GNDHhAKpX5xOp0RzBBvT3c0T4Iggz7CY=\",\"APP_DEBUG\":\"false\",\"APP_URL\":\"\\/\\/n.zaasmultifoodbeverage.com\\/\",\"ASSET_URL\":\"\\/\\/n.zaasmultifoodbeverage.com\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"zaasmult_professonal\",\"DB_USERNAME\":\"zaasmult_professonal\",\"DB_PASSWORD\":\"SZOPbr&@J;Y9\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"GOOGLE_CLIENT_ID\":\"7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com\",\"GOOGLE_CLIENT_SECRET\":\"xxxxxx-sl9vkVFFmovXgAOp2ZSektxxxxxx\",\"GOOGLE_REDIRECT_URL\":\"http:\\/\\/192.168.0.50\\/pos\\/google\\/callback\"}', 1, 1, NULL, NULL, 1738226591, NULL, '', '2025-01-30 01:58:14', '2025-01-30 02:43:11'),
(6, 'Windows \"Not A(Brand\"', '103.198.133.214', 0, NULL, '{\"PATH\":\"\\/usr\\/local\\/bin:\\/bin:\\/usr\\/bin\",\"HTTP_ACCEPT\":\"text\\/event-stream\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate, br, zstd\",\"HTTP_ACCEPT_LANGUAGE\":\"en-US,en;q=0.9,bn;q=0.8\",\"HTTP_COOKIE\":\"twk_uuid_670faba22480f5b4f58e3fa8=%7B%22uuid%22%3A%221.3Cf90wkK24xUpFQvnKfD3ijwIlHM0zVherOAv2RzgnfJKQ8EkVPtv0KTjov0cRibGLf84xk5FvS6lQSrd1uT41zcr5taTiZ2VpxYex4mmVmVmLKLwQ1CeURXpqaqbYC6rkihCie%22%2C%22version%22%3A3%2C%22domain%22%3A%22zaasmultifoodbeverage.com%22%2C%22ts%22%3A1737547339547%7D; XSRF-TOKEN=eyJpdiI6ImNTbStDVlVCVThGUlpPUGNpN3E0d2c9PSIsInZhbHVlIjoiUERSRWZ6WXNuU2ROZ0k3OWt2ck4vN0lyN3NnOTZpUWwvK2FhNzVlUmxvL1pUb3h5MXArRXhTSXdjM2ttWmZCUS9zS2dNWmNMYUdyY25wNVordVlCMFh1YUVxMnFMQkFtY3dBckNBUjQxRkI0ODIrWFJGSHU0VEhWemlQaGs5bVkiLCJtYWMiOiJiNTA2NzRhNzhjMGIxMjkxZDVlYzliMzZkYWI5OGUyYzEyNjgyYjU5NDIyYjhjOGVjMDgxNjhiY2NhOWI3M2IwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlprNUhxNStncWUybGI5WnVOUDBETVE9PSIsInZhbHVlIjoiWEVpekkzZXN1UmhXL1V2RGJUaEhLUklhTWVLNjdQbnBGREl0bFU3VlpwWDd2bjVjWnFHQWxWd2xPTldNRlIxQnJ0eHlEdmNEUHZqYUxoTlRIcEFKOG0rR2xsVGQ3YkhtdExGZXlwMldSeWdFWk5SZXBXcGMwUy9oZzdVQXZVSTgiLCJtYWMiOiJlNDFmYjc2ZTEwMWYzYzcxYzY2MzVlY2M4NTRjNGI4YzdhZjI5YzAzZTdmN2RhMjNkZmNhZmU0YzIzY2E1MmE2IiwidGFnIjoiIn0%3D\",\"HTTP_HOST\":\"n.zaasmultifoodbeverage.com\",\"HTTP_REFERER\":\"https:\\/\\/n.zaasmultifoodbeverage.com\\/admin\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/132.0.0.0 Safari\\/537.36\",\"HTTP_CACHE_CONTROL\":\"no-cache\",\"HTTP_SEC_CH_UA_PLATFORM\":\"\\\"Windows\\\"\",\"HTTP_SEC_CH_UA\":\"\\\"Not A(Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"132\\\", \\\"Google Chrome\\\";v=\\\"132\\\"\",\"HTTP_SEC_CH_UA_MOBILE\":\"?0\",\"HTTP_SEC_FETCH_SITE\":\"same-origin\",\"HTTP_SEC_FETCH_MODE\":\"cors\",\"HTTP_SEC_FETCH_DEST\":\"empty\",\"HTTP_PRIORITY\":\"u=1, i\",\"DOCUMENT_ROOT\":\"\\/home\\/zaasmult\\/n.zaasmultifoodbeverage.com\",\"REMOTE_ADDR\":\"103.198.133.214\",\"REMOTE_PORT\":\"60897\",\"SERVER_ADDR\":\"103.191.241.188\",\"SERVER_NAME\":\"n.zaasmultifoodbeverage.com\",\"SERVER_ADMIN\":\"webmaster@n.zaasmultifoodbeverage.com\",\"SERVER_PORT\":\"443\",\"REQUEST_SCHEME\":\"https\",\"REQUEST_URI\":\"\\/device_access_check\",\"REDIRECT_URL\":\"\\/device_access_check\",\"REDIRECT_REQUEST_METHOD\":\"GET\",\"HTTPS\":\"on\",\"REDIRECT_STATUS\":\"200\",\"X_SPDY\":\"HTTP2\",\"SSL_PROTOCOL\":\"TLSv1.3\",\"SSL_CIPHER\":\"TLS_AES_128_GCM_SHA256\",\"SSL_CIPHER_USEKEYSIZE\":\"128\",\"SSL_CIPHER_ALGKEYSIZE\":\"128\",\"SCRIPT_FILENAME\":\"\\/home\\/zaasmult\\/n.zaasmultifoodbeverage.com\\/index.php\",\"QUERY_STRING\":\"\",\"SCRIPT_URI\":\"https:\\/\\/n.zaasmultifoodbeverage.com\\/device_access_check\",\"SCRIPT_URL\":\"\\/device_access_check\",\"SCRIPT_NAME\":\"\\/index.php\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"SERVER_SOFTWARE\":\"LiteSpeed\",\"REQUEST_METHOD\":\"GET\",\"X-LSCACHE\":\"on\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1738231341.260921001434326171875,\"REQUEST_TIME\":1738231341,\"argv\":[],\"argc\":0,\"APP_NAME\":\"Laravel\",\"APP_ENV\":\"local\",\"APP_KEY\":\"base64:gL\\/AanXMDo0GNDHhAKpX5xOp0RzBBvT3c0T4Iggz7CY=\",\"APP_DEBUG\":\"false\",\"APP_URL\":\"\\/\\/n.zaasmultifoodbeverage.com\\/\",\"ASSET_URL\":\"\\/\\/n.zaasmultifoodbeverage.com\\/public\\/\",\"LOG_CHANNEL\":\"stack\",\"LOG_DEPRECATIONS_CHANNEL\":\"null\",\"LOG_LEVEL\":\"debug\",\"DB_CONNECTION\":\"mysql\",\"DB_HOST\":\"127.0.0.1\",\"DB_PORT\":\"3306\",\"DB_DATABASE\":\"zaasmult_professonal\",\"DB_USERNAME\":\"zaasmult_professonal\",\"DB_PASSWORD\":\"SZOPbr&@J;Y9\",\"BROADCAST_DRIVER\":\"log\",\"CACHE_DRIVER\":\"file\",\"FILESYSTEM_DISK\":\"local\",\"QUEUE_CONNECTION\":\"sync\",\"SESSION_DRIVER\":\"file\",\"SESSION_LIFETIME\":\"120\",\"MEMCACHED_HOST\":\"127.0.0.1\",\"REDIS_HOST\":\"127.0.0.1\",\"REDIS_PASSWORD\":\"null\",\"REDIS_PORT\":\"6379\",\"MAIL_MAILER\":\"smtp\",\"MAIL_HOST\":\"mailpit\",\"MAIL_PORT\":\"1025\",\"MAIL_USERNAME\":\"null\",\"MAIL_PASSWORD\":\"null\",\"MAIL_ENCRYPTION\":\"null\",\"MAIL_FROM_ADDRESS\":\"hello@example.com\",\"MAIL_FROM_NAME\":\"Laravel\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"us-east-1\",\"AWS_BUCKET\":\"\",\"AWS_USE_PATH_STYLE_ENDPOINT\":\"false\",\"PUSHER_APP_ID\":\"\",\"PUSHER_APP_KEY\":\"\",\"PUSHER_APP_SECRET\":\"\",\"PUSHER_HOST\":\"\",\"PUSHER_PORT\":\"443\",\"PUSHER_SCHEME\":\"https\",\"PUSHER_APP_CLUSTER\":\"mt1\",\"VITE_APP_NAME\":\"Laravel\",\"VITE_PUSHER_APP_KEY\":\"\",\"VITE_PUSHER_HOST\":\"\",\"VITE_PUSHER_PORT\":\"443\",\"VITE_PUSHER_SCHEME\":\"https\",\"VITE_PUSHER_APP_CLUSTER\":\"mt1\",\"GOOGLE_CLIENT_ID\":\"7734250976-obt32uahupkmtaep4rr7gq0q8p0qibh7.apps.googleusercontent.com\",\"GOOGLE_CLIENT_SECRET\":\"xxxxxx-sl9vkVFFmovXgAOp2ZSektxxxxxx\",\"GOOGLE_REDIRECT_URL\":\"http:\\/\\/192.168.0.50\\/pos\\/google\\/callback\"}', 1, 1, NULL, NULL, 1738236258, NULL, '', '2025-01-30 04:02:21', '2025-01-30 05:24:18');

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
(1, 'Sale', '0', '10', '1', 0, '2025-01-28 04:55:28', '2025-01-28 04:56:00');

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
(1, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(2, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(3, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(4, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(5, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(6, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(7, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(8, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(9, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(10, 'sd fflaskdf lskdo', 'sd sdflas kd lskdo', '1', '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(11, 'sd sdfaso', 'sd sdflas kd lskdo', '1', '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(12, 'asdfasdf', 'sd sdflas kd lskdo', '1', '2025-01-29 01:52:00', '2025-01-29 01:52:00');

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
(1, 'bi bi-activity', 'Nesciunt Mete asd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-asd', '1', '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(2, 'bi bi-broadcast', 'Nesciunt Mete dfs', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfs', '1', '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(3, 'bi bi-easel', 'Nesciunt Met df e', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-met-df-e', '1', '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(4, 'bi bi-bounding-box-circles', 'Nesciunt Mete sdfsd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-sdfsd', '1', '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(5, 'bi bi-chat-square-text', 'Nesciunt Mete dfdgd', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', 0, 'nesciunt-mete-dfdgd', '1', '2025-01-28 02:54:45', '2025-01-28 02:54:45');

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
(1, 'Useful Links', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(2, 'Our Services', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(3, 'Hic solutasetp', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(4, 'Nobis illum', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46');

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
(1, '1', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(2, '1', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(3, '1', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(4, '1', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(5, '2', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(6, '2', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(7, '2', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(8, '2', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(9, '3', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(10, '3', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(11, '3', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(12, '3', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(13, '4', 'Useful Links', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(14, '4', 'Our Services', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(15, '4', 'Hic solutasetp', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(16, '4', 'Nobis illum', '#', 'bi bi-chevron-right', 1, '0', '0', '2025-01-28 02:54:46', '2025-01-28 02:54:46');

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
  `key_name` varchar(125) DEFAULT NULL,
  `preset` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `name`, `slug`, `position`, `order`, `key_name`, `preset`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Agriculture & Machine', 'filter?category=agriculture-machine', 'center', 1, 'Agriculture & Machine', 0, 1, '2025-01-28 02:59:09', '2025-01-30 03:38:41'),
(2, 'Gradining Tools', 'filter?category=gradining-tools', 'center', 2, 'Gradining Tools', 0, 1, '2025-01-28 02:59:10', '2025-01-30 03:38:41'),
(3, 'Home Appliances', 'filter?category=home-appliances', 'center', 3, 'Home Appliances', 0, 1, '2025-01-28 02:59:10', '2025-01-30 03:38:41'),
(4, 'Cookeries', 'filter?category=cookeries', 'center', 4, 'Cookeries', 0, 1, '2025-01-28 02:59:11', '2025-01-30 03:38:41'),
(5, 'Fashion House', 'filter?category=fashion-house', 'center', 5, 'Fashion House', 0, 1, '2025-01-28 02:59:11', '2025-01-30 03:38:41'),
(6, 'Home', '/', 'center', 0, 'Home', 0, 1, '2025-01-30 03:38:38', '2025-01-30 03:38:56');

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
  `order` int(11) NOT NULL DEFAULT 1,
  `status` varchar(125) NOT NULL DEFAULT '1',
  `creator` varchar(125) NOT NULL DEFAULT '0',
  `updater` varchar(125) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `upload_id1` varchar(125) NOT NULL DEFAULT '0',
  `upload_id2` varchar(125) NOT NULL DEFAULT '0',
  `upload_id3` varchar(125) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_manages`
--

INSERT INTO `home_page_manages` (`id`, `key`, `title`, `title_status`, `sub_title`, `sub_title_status`, `short_read_more`, `short_read_more_status`, `short_read_more_page_url`, `view_all`, `view_all_status`, `view_all_page_url`, `items_per_row`, `items_show`, `is_details_page`, `background`, `background_color`, `background_type`, `controlby`, `order`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`, `upload_id1`, `upload_id2`, `upload_id3`) VALUES
(1, '_hero_variant._hero_slider1', 'Hero Slider', '0', 'Hero Slider', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 10, 0, '1', '#74c3b6', 0, '1', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-30 02:08:58', '0', '0', '0'),
(41, '_contact_variant._contact_style1', 'Contact Style 1', '0', 'Contact Sub Title', '0', 'Read More', 0, '#', 'View All', 0, '#', 3, 4, 0, '0', '#ededed', 0, '16', 2, '1', '0', '0', NULL, '2025-01-29 00:58:50', '2025-01-29 02:55:12', '0', '0', '0'),
(39, '_product_variant._category_wise_product', 'Category Wise Product', '0', 'Category Wise Product', '0', '#', 0, '#', 'View All', 0, '#', 6, 40, 1, '0', '#eeeeee', 0, '23', 1, '1', '0', '0', NULL, '2025-01-28 06:16:36', '2025-01-29 03:33:34', '0', '0', '0'),
(38, '_product_variant._category_wise_product', 'Category Wise Product', '0', 'Category Wise Product', '0', '#', 1, '#', 'View All', 0, '#', 6, 16, 0, '0', '#8cc36f', 0, '1', 3, '1', '0', '0', NULL, '2025-01-28 06:11:22', '2025-01-30 02:26:55', '0', '0', '0'),
(56, '_variant_manage.page_title1', 'About Us', '1', 'Page Title subtitle 2', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#ffffff', 0, '2', 1, '1', '0', '0', NULL, '2025-01-29 03:06:39', '2025-01-29 03:07:14', '0', '0', '0'),
(55, '_contact_variant._contact_style1', 'Contact Style 1', '0', 'Contact Sub Title', '0', 'Read More', 0, '#', 'View All', 0, '#', 3, 4, 0, '0', '#eeeeee', 0, '2', 1, '1', '0', '0', NULL, '2025-01-29 03:05:54', '2025-01-29 03:06:09', '0', '0', '0'),
(12, '_filter_variant.filter_vaiant1', 'Product Filter  1', '1', 'Product Filter Title', '1', 'Read More', 1, '#', 'View All', 0, '#', 0, 20, 0, '0', '#eeeeee', 1, '3', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-29 04:43:07', '0', '0', '0'),
(13, '_product_details.product_details1', 'Product Details page 1', '0', 'Product Details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '4', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(14, '_cart_variant.cart_style1', 'Product Filter  1', '0', 'Product Filter Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '5', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(54, '_variant_manage.page_title1', 'CheckOut', '1', 'Page Title subtitle 2', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '6', 1, '1', '0', '0', NULL, '2025-01-29 03:02:50', '2025-01-29 03:03:22', '0', '0', '0'),
(16, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', 'Product checkout Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '6', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(53, '_variant_manage.page_title1', 'Track Order', '1', 'Page Title subtitle 2', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#ffffff', 0, '7', 1, '1', '0', '0', NULL, '2025-01-29 03:00:14', '2025-01-29 03:00:42', '0', '0', '0'),
(18, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', 'Product tracking Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '7', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(19, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '8', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(20, '_service_variant._service_style1', 'Service Style 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '8', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(21, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '9', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(22, '_service_view_variant._service_view1', 'Service View 1', '1', 'Service Sub Title', '1', 'Read More', 1, '#', 'View All', 1, '#', 3, 4, 0, '0', '#eeeeee', 0, '9', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(23, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '10', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(24, '_register_variant.register_style1', 'Register us  1', '0', 'contact us Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '10', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(25, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(26, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '17', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(27, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(28, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '18', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(29, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(30, '_profile._location.variant_1', 'profile location style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '20', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(31, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(32, '_profile._cart.variant_1', 'Profile cart style  1', '0', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '19', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(33, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(34, '_profile._checkout.variant_1', 'Checkout Page 1', '0', 'Checkout Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '21', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(35, '_variant_manage.page_title', 'Page Title style  1', '1', 'Blog details Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '22', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(36, '_profile._payment_information.variant_1', 'Payment Page 1', '0', 'Payment Page 1', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#eeeeee', 0, '22', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55', '0', '0', '0'),
(51, '_category_variant._category_style3', 'Category Style 3', '0', 'Category Sub Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 12, 20, 0, '0', '#ffffff', 0, '1', 2, '1', '0', '0', NULL, '2025-01-29 02:46:06', '2025-01-29 04:50:14', '0', '0', '0'),
(47, '_variant_manage.page_title1', 'Contact Us', '1', 'Page Title subtitle 2', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '1', '#ffffff', 0, '16', 1, '1', '0', '0', NULL, '2025-01-29 01:44:52', '2025-01-29 02:54:36', '0', '0', '0'),
(57, '_wishlist_variant.wish_list_style1', 'Product wishlist  1', '0', 'Product wishlist Title', '0', 'Read More', 1, '#', 'View All', 0, '#', 0, 4, 0, '0', '#eeeeee', 1, '11', 1, '1', '0', '0', NULL, '2025-01-29 23:58:02', '2025-01-29 23:58:02', '0', '0', '0');

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
(1, 'en', 1, 1, 1, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(2, 'bn', 1, 1, 1, '2025-01-28 02:54:54', '2025-01-28 02:54:54');

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

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `from_lead_id`, `date`, `contact_id`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-01-29', 1, 0, 0, '2025-01-29 03:44:56', '2025-01-29 03:44:56'),
(2, 1, '2025-01-29', 2, 0, 0, '2025-01-29 04:18:57', '2025-01-29 04:18:57');

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

--
-- Dumping data for table `lead_accounts`
--

INSERT INTO `lead_accounts` (`id`, `name`, `phone`, `website`, `email`, `address`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'Joel Warren', '+1 (905) 494-5202', NULL, 'zigotagu@mailinator.com', 'Ut mollitia aut occa', 0, 0, '2025-01-29 03:44:56', '2025-01-29 03:44:56'),
(2, 'Sopoline Herring', '+1 (314) 452-1686', NULL, 'taroza@mailinator.com', 'Tempora sint est co', 0, 0, '2025-01-29 04:18:57', '2025-01-29 04:18:57');

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

--
-- Dumping data for table `lead_contacts`
--

INSERT INTO `lead_contacts` (`id`, `name`, `phone`, `email`, `address`, `account_id`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'Joel Warren', '+1 (905) 494-5202', 'zigotagu@mailinator.com', 'Ut mollitia aut occa', '1', '0', 0, '2025-01-29 03:44:56', '2025-01-29 03:44:56'),
(2, 'Sopoline Herring', '+1 (314) 452-1686', 'taroza@mailinator.com', 'Tempora sint est co', '2', '0', 0, '2025-01-29 04:18:57', '2025-01-29 04:18:57');

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

--
-- Dumping data for table `lead_deals`
--

INSERT INTO `lead_deals` (`id`, `note`, `note_replay`, `amount`, `date`, `stage_id`, `lead_id`, `creator`, `updater_id`, `created_at`, `updated_at`) VALUES
(1, 'Blanditiis exercitat', NULL, NULL, '2025-01-29', 1, 1, 0, 0, '2025-01-29 03:44:56', '2025-01-29 03:44:56'),
(2, 'Cupidatat esse cupid', NULL, NULL, '2025-01-29', 1, 2, 0, 0, '2025-01-29 04:18:57', '2025-01-29 04:18:57');

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
(1, 'Pending', 1, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(2, 'Reschedule', 1, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(3, 'Qualified', 1, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(4, 'Closed', 1, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(5, 'Pending', 1, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(6, 'Reschedule', 1, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(7, 'Qualified', 1, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(8, 'Closed', 1, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(9, 'Pending', 1, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(10, 'Reschedule', 1, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(11, 'Qualified', 1, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(12, 'Closed', 1, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(13, 'Pending', 1, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(14, 'Reschedule', 1, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(15, 'Qualified', 1, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(16, 'Closed', 1, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00');

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
(1, 'website', '1', 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(2, 'Facebook', '1', 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(3, 'Email', '1', 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(4, 'Twitter', '1', 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(5, 'Voice Call', '1', 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(6, 'Whatsapp', '1', 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(7, 'Linkedin', '1', 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(8, 'website', '1', 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(9, 'Facebook', '1', 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(10, 'Email', '1', 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(11, 'Twitter', '1', 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(12, 'Voice Call', '1', 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(13, 'Whatsapp', '1', 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(14, 'Linkedin', '1', 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(15, 'website', '1', 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(16, 'Facebook', '1', 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(17, 'Email', '1', 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(18, 'Twitter', '1', 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(19, 'Voice Call', '1', 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(20, 'Whatsapp', '1', 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(21, 'Linkedin', '1', 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(22, 'website', '1', 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(23, 'Facebook', '1', 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(24, 'Email', '1', 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(25, 'Twitter', '1', 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(26, 'Voice Call', '1', 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(27, 'Whatsapp', '1', 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(28, 'Linkedin', '1', 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00');

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
(1, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(2, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(3, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(4, 'mdsaszzad0002@gmail.com', 'D Engr Mailer', NULL, 'sandbox.smtp.mailtrap.io', 'a1277ade6e6e0a', '2525', 'e7355b9530299d', '1', '2025-01-29 01:52:03', '2025-01-29 01:52:03');

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
(1, 'test_mail', 'name', 'test_mail', 1, 1, NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(2, 'order_create', 'name', 'test_mail', 1, 1, NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(3, 'order_status_change', 'name', 'test_mail', 1, 1, NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(4, 'order_reject', 'name', 'test_mail', 1, 1, NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55');

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
(74, '2024_12_29_155344_create_sessions_table', 1),
(75, '2025_01_02_103521_create_supplier_payments_table', 1),
(76, '2025_01_07_132238_create_coupon_use_histories_table', 1),
(77, '2025_01_16_050641_create_stocks_table', 1),
(78, '2025_01_19_115854_create_order_events_table', 1),
(79, '2025_01_26_060948_create_shipping_charges_table', 1);

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
(1, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-20 02:54:46', '1', NULL, NULL),
(2, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-20 02:54:46', '2', NULL, NULL),
(3, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-20 02:54:46', '3', NULL, NULL),
(4, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-20 06:09:24', '1', NULL, NULL),
(7, 'Special Offer', 'Aero Control Pro Joysticks', '0', '0', '0', '1', '#', '2025-02-21 01:42:40', '1', NULL, NULL),
(9, 'Hurry up! Offer ends in', '', '0', '0', '0', '1', '#', '2025-02-21 01:42:40', '3', NULL, NULL);

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
  `note` text DEFAULT NULL,
  `shipping_charge_id` varchar(125) NOT NULL DEFAULT '0',
  `address` varchar(125) NOT NULL DEFAULT '0',
  `billing_address` varchar(125) NOT NULL DEFAULT '0',
  `cash_collection` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_id`, `product_ids`, `product_json`, `delivery_status`, `quantity`, `quantitys`, `discount_id`, `price`, `vat`, `status`, `note`, `shipping_charge_id`, `address`, `billing_address`, `cash_collection`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1738331596, '[{\"pd_10\":{\"product_id\":\"10\",\"quantaty\":1,\"size\":0}}]', '{\"subtotal\":{\"pre_price\":627,\"quantity\":1,\"discount\":62.7000000000000028421709430404007434844970703125,\"vat\":0,\"price\":564.299999999999954525264911353588104248046875,\"coupon\":0,\"coupon_without_price\":564.299999999999954525264911353588104248046875,\"quantitys\":{\"10\":1},\"product_ids\":[{\"pd_10\":{\"product_id\":\"10\",\"quantaty\":1,\"size\":0}}]},\"product\":[{\"size\":0,\"quantity\":1,\"session_id\":\"pd_10\",\"product\":{\"id\":10,\"name\":\"Hitter\",\"product_id\":\"p-7\",\"sku\":null,\"slug\":\"hitter\",\"category\":\"9\",\"brand\":\"0\",\"weight\":\"200\",\"description\":\"<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio<\\/p>\",\"additional_description\":\"<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio<\\/p>\",\"unit\":\"1\",\"for_selling\":\"1\",\"garage\":\"2\",\"route\":\"\",\"feature\":\"1\",\"alert_quantity\":\"10\",\"discount_id\":\"1\",\"creator\":\"1\",\"upload_id\":\"20\",\"uploads_id\":\"0\",\"sub_category\":\"0\",\"short_description\":\"Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio\",\"youtube_video\":\"Facere quisquam nisi\",\"tags\":null,\"views\":0,\"old_price\":718,\"selling_price\":627,\"vat\":\"0\",\"service\":1,\"variant_on\":\"0\",\"variant_option\":\"{\\\"variant_key\\\":null,\\\"vairant_value\\\":null}\",\"status\":\"1\",\"landing_page_bg\":\"#dee7ca\",\"landing_page_color\":\"#43cafa\",\"landing_page_deasing_id\":null,\"deleted_at\":null,\"created_at\":\"2025-01-29T07:23:45.000000Z\",\"updated_at\":\"2025-01-29T07:23:45.000000Z\",\"image_url\":\"\\/\\/n.zaasmultifoodbeverage.com\\/public\\/uploads\\/biggest-ceramic-city-300x300_1738135415869_vghizr.png\",\"avg_rat\":0,\"rat_count\":0,\"status_text\":\"Active\"},\"product_variant\":null,\"vat\":null,\"price\":627,\"discount_price\":62.7000000000000028421709430404007434844970703125,\"price_discount\":564.299999999999954525264911353588104248046875,\"vat_price\":0,\"cal_total_with_vat\":564.299999999999954525264911353588104248046875,\"single_subtotal\":564.299999999999954525264911353588104248046875}]}', '0', 1, '{\"10\":1}', '62.7', 564, '0', '1', '', '1', '1', '1', 564, NULL, '2025-01-31 07:53:16', '2025-01-31 07:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_events`
--

CREATE TABLE `order_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `creator` bigint(20) NOT NULL,
  `updater` bigint(20) NOT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_events`
--

INSERT INTO `order_events` (`id`, `order_id`, `status_id`, `creator`, `updater`, `upload_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 3, 0, NULL, '2025-01-31 07:53:16', '2025-01-31 07:53:16');

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
(1, 'Pending', 1, '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(2, 'Shipping', 1, '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(3, 'Delivered', 1, '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(4, 'Confirmed', 1, '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(5, 'Pending', 1, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(6, 'Shipping', 1, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(7, 'Delivered', 1, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(8, 'Confirmed', 1, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(9, 'Pending', 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(10, 'Shipping', 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(11, 'Delivered', 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(12, 'Confirmed', 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(13, 'Pending', 1, '2025-01-29 01:51:59', '2025-01-29 01:51:59'),
(14, 'Shipping', 1, '2025-01-29 01:51:59', '2025-01-29 01:51:59'),
(15, 'Delivered', 1, '2025-01-29 01:51:59', '2025-01-29 01:51:59'),
(16, 'Confirmed', 1, '2025-01-29 01:51:59', '2025-01-29 01:51:59');

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
(1, 'Home', '/', '1', '1', '1', '', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(2, 'About', 'about-us', '1', '0', '1', 'about', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(3, 'Filter', 'filter', '1', '0', '1', 'filter', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(4, 'Product details', 'product/details', '1', '0', '1', 'view', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(5, 'cart', 'cart', '1', '0', '1', 'cart', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(6, 'Checkout', 'checkout', '1', '0', '1', 'checkout', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(7, 'Tracking', 'tracking', '1', '0', '1', 'tracking', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(8, 'Service', 'service', '1', '0', '1', 'service', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(9, 'Service Details', 'service-details', '1', '0', '1', 'service_details', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(10, 'Register', 'register', '1', '0', '1', 'register', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(11, 'Wishlist', 'wishlist', '1', '0', '1', 'wishlist', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(12, 'coming-soon', 'coming-soon', '1', '0', '1', '', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(13, 'Blog', 'blog', '1', '0', '1', '', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(14, 'Blog Details', 'blog/details', '1', '0', '1', '', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(15, 'FAQ', 'faq', '1', '0', '1', '', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(16, 'Contact', 'contact', '1', '0', '1', 'contact', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(17, 'Sales Partner', 'sales/partner', '1', '0', '1', 'sales_partner', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(18, 'Dashboard', 'user/dashboard', '1', '0', '1', 'profile_dashboard', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(19, 'Cart', 'user/cart', '1', '0', '1', 'profile_cart', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(20, 'Location', 'user/location', '1', '0', '1', 'profile_location', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(21, 'Order', 'user/order', '1', '0', '1', 'checkout_page', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(22, 'Payment Information', 'user/payment-info', '1', '0', '1', 'payment_page', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(23, 'Category Information', 'category/details', '1', '0', '1', 'category_details_page', '0', '0', NULL, '2025-01-28 06:09:26', '2025-01-28 06:09:26');

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
(1, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(2, 'AmarPay', 'aamarpaytest', NULL, NULL, NULL, 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(3, 'SSLCommerz', 'dengr6606dde118f61', 'dengr6606dde118f61@ssl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(4, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AW94vUy1U0BcDsirCdw3Ry8OXvfre6uAB2eLkhl4mXwbMBjRm4vTjNYiu3yIEk_zAM7jhMfYwQKZRaj9', 'EP3FKuvBoUKCdqTDMqrX_NB6U6Ljjzb0o-aptPsQSrjsXC1RmvrTnuGuEUQ0LU8mNOf8b4H9nYZBBtfo', NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(5, 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sk_test_51QBS8gGmdDJ09IiPeBXzbzsKu4yZC3GLYepHUyK8uzqNeXl1hJan55DmOZpJMY5D3uHhNREjAU2qId5Y4SeaaMBS000ZwhS3JO', 'pk_test_51QBS8gGmdDJ09IiPzuSRshs99WwkulloA8wW0rPt4vTORhFZUYXXa2LaxrySoZMgwcndwdnFbVTWsDkemFIJl43W00fxHQeYXV', '1', '1', 0.00, 'us', 'us', 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(6, 'braintree', NULL, NULL, 'bxqn974w5gzggj44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wktqb878b2x7jj7r', '4d024a30390cb9475e556d475aaa399f', NULL, NULL, NULL, '1', '1', 0.00, 'us', 'us', 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(7, 'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 0.00, 'dhaka', 'bangladesh', 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46');

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
(1, 'user read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(2, 'user create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(3, 'user edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(4, 'user rolechange', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(5, 'user delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(6, 'role read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(7, 'role create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(8, 'role edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(9, 'role delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(10, 'branch read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(11, 'branch create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(12, 'branch edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(13, 'branch delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(14, 'cashcounter read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(15, 'cashcounter create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(16, 'cashcounter edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(17, 'cashcounter delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(18, 'product read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(19, 'product create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(20, 'product edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(21, 'product delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(22, 'product barcode', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(23, 'unit read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(24, 'unit create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(25, 'unit edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(26, 'unit delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(27, 'purchase read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(28, 'purchase create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(29, 'purchase edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(30, 'purchase delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(31, 'customer read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(32, 'customer create', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(33, 'customer edit', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(34, 'customer delete', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(35, 'stock read', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48'),
(36, 'supplier read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(37, 'supplier create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(38, 'supplier edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(39, 'supplier delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(40, 'category read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(41, 'category create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(42, 'category edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(43, 'category delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(44, 'subcategory read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(45, 'subcategory create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(46, 'subcategory edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(47, 'subcategory delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(48, 'area read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(49, 'area create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(50, 'area edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(51, 'area delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(52, 'brand read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(53, 'brand create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(54, 'brand edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(55, 'brand delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(56, 'vat read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(57, 'vat create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(58, 'vat edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(59, 'vat delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(60, 'discount read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(61, 'discount create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(62, 'discount edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(63, 'discount delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(64, 'pos read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(65, 'pos create', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(66, 'pos edit', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(67, 'pos delete', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(68, 'setting read', 'web', '2025-01-28 02:54:49', '2025-01-28 02:54:49'),
(69, 'setting create', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(70, 'setting edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(71, 'setting delete', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(72, 'siteverification read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(73, 'siteverification edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(74, 'tagmanagement read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(75, 'tagmanagement edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(76, 'pwa read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(77, 'pwa edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(78, 'notification read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(79, 'notification edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(80, 'takto read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(81, 'takto edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(82, 'cookie read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(83, 'cookie edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(84, 'smtp read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(85, 'smtp edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(86, 'payment_credentials read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(87, 'payment_credentials edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(88, 'order read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(89, 'order create', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(90, 'order edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(91, 'order delete', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(92, 'offerbanner read', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(93, 'offerbanner create', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(94, 'offerbanner edit', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(95, 'offerbanner delete', 'web', '2025-01-28 02:54:50', '2025-01-28 02:54:50'),
(96, 'profile read', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(97, 'profile create', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(98, 'profile edit', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(99, 'profile delete', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(100, 'theme read', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(101, 'LeadAccount read', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(102, 'LeadAccount create', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(103, 'LeadAccount edit', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(104, 'LeadAccount delete', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(105, 'LeadContact read', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(106, 'LeadContact create', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(107, 'LeadContact edit', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(108, 'LeadContact delete', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(109, 'LeadDeal read', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(110, 'LeadDeal create', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(111, 'LeadDeal edit', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(112, 'LeadDeal delete', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(113, 'LeadDealStage read', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(114, 'LeadDealStage create', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(115, 'LeadDealStage edit', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(116, 'LeadDealStage delete', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(117, 'Lead read', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(118, 'Lead create', 'web', '2025-01-28 02:54:51', '2025-01-28 02:54:51'),
(119, 'Lead edit', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(120, 'Lead delete', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(121, 'LeadSource read', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(122, 'LeadSource create', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(123, 'LeadSource edit', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(124, 'LeadSource delete', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(125, 'language read', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(126, 'language create', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(127, 'language edit', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(128, 'language delete', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(129, 'Translation read', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(130, 'Translation create', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(131, 'Translation edit', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(132, 'Translation delete', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(133, 'slider read', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(134, 'slider create', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(135, 'slider edit', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(136, 'slider delete', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(137, 'service read', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(138, 'service create', 'web', '2025-01-28 02:54:52', '2025-01-28 02:54:52'),
(139, 'service edit', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(140, 'service delete', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(141, 'testimonial read', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(142, 'testimonial create', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(143, 'testimonial edit', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(144, 'testimonial delete', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(145, 'footerlinkheading read', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(146, 'footerlinkheading create', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(147, 'footerlinkheading edit', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(148, 'footerlinkheading delete', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(149, 'footerlinksubheading read', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(150, 'footerlinksubheading create', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(151, 'footerlinksubheading edit', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(152, 'footerlinksubheading delete', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(153, 'faq read', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(154, 'faq create', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(155, 'faq edit', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(156, 'faq delete', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(157, 'page read', 'web', '2025-01-28 02:54:53', '2025-01-28 02:54:53'),
(158, 'page create', 'web', '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(159, 'page edit', 'web', '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(160, 'page delete', 'web', '2025-01-28 02:54:54', '2025-01-28 02:54:54');

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
  `status` varchar(125) NOT NULL DEFAULT '0',
  `landing_page_bg` varchar(125) DEFAULT NULL,
  `landing_page_color` varchar(125) DEFAULT NULL,
  `landing_page_deasing_id` varchar(125) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_id`, `sku`, `slug`, `category`, `brand`, `weight`, `description`, `additional_description`, `unit`, `for_selling`, `garage`, `route`, `feature`, `alert_quantity`, `discount_id`, `creator`, `upload_id`, `uploads_id`, `sub_category`, `short_description`, `youtube_video`, `tags`, `views`, `old_price`, `selling_price`, `vat`, `service`, `variant_on`, `variant_option`, `status`, `landing_page_bg`, `landing_page_color`, `landing_page_deasing_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-28 04:50:27', '2025-01-28 02:54:45', '2025-01-28 04:50:27'),
(2, 'Tree Planting Earth Auger Machine', 'p', NULL, 'tree-planting-earth-auger-machine', '6', '1', '0', '<ul style=\"margin-bottom: 2.5rem; padding-left: 18px; color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\"><li>Single cylinder, two-stroke, air-cooling&nbsp;</li><li>1E40F-5 match engine&nbsp;</li><li>42.7cc engine displacement &nbsp;</li><li>1.4kW rated output power &nbsp;&nbsp;</li><li>1200ml fuel tank capacity&nbsp;</li><li>3 feet drive ration&nbsp;</li><li>1.85 module of gear</li><li>25:1 fuel mixture ratio&nbsp;</li><li>9.5Kg weight</li></ul>', '<p><span style=\"color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\">This soil drill machine has suitable for all kinds of geological, Gardening / agriculture / fishing / geophysical exploration, and construction all employ this auger machine. It uses a powerful yet efficient 42.7cc engine displacement, Your 12-ml fuel tank, and 2-stroke petrol engine enable you to dig deeper in refills. It is very easy to use, 59 x 36.5 x 31.5cm dimension.</span></p>', '1', '1', '0', '0', '1', '0', '1', '1', '10', '12,11,9,10', '0', 'The lowest price of Tree planting earth auger machine in Bangladesh is Tk 17,000 only. Buy from Dhaka at low price in Bdstall. There is currently 2 sellers.', '0', NULL, 20, 17000, 19500, '0', 0, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, NULL, '2025-01-28 04:58:04', '2025-01-28 22:25:29'),
(3, 'Tree Planting Earth Auger Machine', 'p-1', NULL, 'tree-planting-earth-auger-machine-1', '6', '1', '0', '<ul style=\"margin-bottom: 2.5rem; padding-left: 18px; color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\"><li>Single cylinder, two-stroke, air-cooling&nbsp;</li><li>1E40F-5 match engine&nbsp;</li><li>42.7cc engine displacement &nbsp;</li><li>1.4kW rated output power &nbsp;&nbsp;</li><li>1200ml fuel tank capacity&nbsp;</li><li>3 feet drive ration&nbsp;</li><li>1.85 module of gear</li><li>25:1 fuel mixture ratio&nbsp;</li><li>9.5Kg weight</li></ul>', '<p><span style=\"color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\">This soil drill machine has suitable for all kinds of geological, Gardening / agriculture / fishing / geophysical exploration, and construction all employ this auger machine. It uses a powerful yet efficient 42.7cc engine displacement, Your 12-ml fuel tank, and 2-stroke petrol engine enable you to dig deeper in refills. It is very easy to use, 59 x 36.5 x 31.5cm dimension.</span></p>', '1', '1', '0', '0', '0', '0', '1', '1', '10', '12,11,9,10', '0', 'The lowest price of Tree planting earth auger machine in Bangladesh is Tk 17,000 only. Buy from Dhaka at low price in Bdstall. There is currently 2 sellers.', '0', NULL, 11, 17000, 19500, '0', 0, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#000000', '#000000', NULL, NULL, '2025-01-28 04:58:28', '2025-01-28 06:36:53'),
(4, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-29 03:14:38', '2025-01-28 06:09:24', '2025-01-29 03:14:38'),
(5, 'Madaline Collier', 'p-2', NULL, 'madaline-collier', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '14', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 2, 718, 627, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:18:54', '2025-01-30 03:25:36'),
(6, 'Hotpot', 'p-3', NULL, 'hotpot', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '15', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 718, 627, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:19:42', '2025-01-29 01:19:42'),
(7, 'Presser Cooker', 'p-4', NULL, 'presser-cooker', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '16', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 718, 627, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:20:26', '2025-01-29 01:20:26'),
(8, 'pan', 'p-5', NULL, 'pan', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '17', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 1, 718, 627, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:21:36', '2025-01-30 03:26:32'),
(9, 'Rice Cooker', 'p-6', NULL, 'rice-cooker', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '19', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 718, 627, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:22:55', '2025-01-29 01:22:55'),
(10, 'Hitter', 'p-7', NULL, 'hitter', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '20', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 718, 627, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:23:45', '2025-01-29 01:23:45'),
(11, 'Harvesters', 'p-8', NULL, 'harvesters', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '21', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 718, 627, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:30:31', '2025-01-29 01:30:31'),
(12, 'Power Tiller', 'p-9', NULL, 'power-tiller', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '22', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 2, 20718, 19962, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:31:23', '2025-01-30 04:27:51'),
(13, 'Agriculture Machinery', 'p-10', NULL, 'agriculture-machinery', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '23', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 2, 20718, 19962, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:32:05', '2025-01-31 08:02:05'),
(14, 'Agriculture Katting machine', 'p-11', NULL, 'agriculture-katting-machine', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '24', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 3, 50718, 45962, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:33:24', '2025-01-30 12:49:07'),
(15, 'Mini Harvesters', 'p-12', NULL, 'mini-harvesters', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '26', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 4, 100718, 90718, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:34:38', '2025-01-29 04:07:25'),
(16, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-29 03:14:31', '2025-01-29 01:42:40', '2025-01-29 03:14:31'),
(17, 'Hardscape', 'p-13', NULL, 'hardscape', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '27', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 22180, 20180, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:44:43', '2025-01-29 01:44:43'),
(18, 'Outdoors', 'p-14', NULL, 'outdoors', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '28', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 600, 580, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:45:52', '2025-01-29 01:45:52'),
(19, 'Hardscape', 'p-15', NULL, 'hardscape-1', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '29', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 3000, 2500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:48:26', '2025-01-29 01:48:26'),
(20, 'Screwfix', 'p-16', NULL, 'screwfix', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '31', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 3000, 2500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:50:33', '2025-01-29 01:50:33'),
(21, 'Test Product', NULL, NULL, 'test-product', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, 0, 0, 0, '0', 0, '0', NULL, '0', NULL, NULL, NULL, '2025-01-29 03:14:42', '2025-01-29 01:51:59', '2025-01-29 03:14:42'),
(22, 'Harnessing', 'p-17', NULL, 'harnessing', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '32', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:52:33', '2025-01-29 01:52:33'),
(23, 'Walton targets', 'p-18', NULL, 'walton-targets', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '33', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:53:11', '2025-01-29 01:53:11'),
(24, 'Domestic Appliances', 'p-19', NULL, 'domestic-appliances', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '34', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:53:51', '2025-01-29 01:53:51'),
(25, 'Kitchen Appliances', 'p-20', NULL, 'kitchen-appliances', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '35', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:54:31', '2025-01-29 01:54:31'),
(26, 'Fashion Store Interior', 'p-21', NULL, 'fashion-store-interior', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '36', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:56:00', '2025-01-29 01:56:00'),
(27, 'Fashion Store Interior Design', 'p-22', NULL, 'fashion-store-interior-design', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '38', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 01:57:08', '2025-01-29 01:57:08'),
(28, 'Fashion House - Cascavelle', 'p-23', NULL, 'fashion-house-cascavelle', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '39', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 3, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:06:14', '2025-01-30 04:05:26'),
(29, 'Fashion house showroom', 'p-24', NULL, 'fashion-house-showroom', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '40', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 1, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:33:37', '2025-01-30 03:28:01'),
(30, 'Best interior design', 'p-25', NULL, 'best-interior-design', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '41', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:39:52', '2025-01-29 02:39:52'),
(31, 'Fashion House International', 'p-26', NULL, 'fashion-house-international', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '42', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 1, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:40:29', '2025-01-30 04:06:13'),
(32, 'Gurwani\'s Boutique', 'p-27', NULL, 'gurwanis-boutique', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '43', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 1, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:41:51', '2025-01-30 03:27:26'),
(33, '𝐇𝐨𝐮𝐬𝐞 𝐎𝐟 𝐅𝐚𝐬𝐡𝐢𝐨𝐧 𝐁𝐨𝐮𝐭𝐢𝐪𝐮𝐞', 'p-28', NULL, '', '10', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '44', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:42:40', '2025-01-29 02:42:40'),
(34, 'Walton brings 2 model', 'p-29', NULL, 'walton-brings-2-model', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '45', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:44:50', '2025-01-29 02:44:50'),
(35, 'Home Appliances that Consume', 'p-30', NULL, 'home-appliances-that-consume', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '47', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 1, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:46:02', '2025-01-30 03:57:51'),
(36, 'Save Big on the Top 8 Home', 'p-31', NULL, 'save-big-on-the-top-8-home', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '48', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 63000, 55500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:47:07', '2025-01-29 02:47:07'),
(37, 'Latest Range of Consumer Products', 'p-32', NULL, 'latest-range-of-consumer-products', '8', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '52', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 43000, 35500, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:48:47', '2025-01-29 02:48:47'),
(38, 'Cookeriess Cookeries Hand Hammered', 'p-33', NULL, 'cookeriess-cookeries-hand-hammered', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '53', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 2, 1300, 1000, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:51:17', '2025-01-30 04:01:30'),
(39, 'Cookeriess Cookeries Hand Stahl', 'p-34', NULL, 'cookeriess-cookeries-hand-stahl', '9', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '55', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 2200, 2000, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:52:35', '2025-01-29 02:52:35'),
(40, 'Agriculture Equipment', 'p-35', NULL, 'agriculture-equipment', '6', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '57', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 4, 510200, 500200, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:55:05', '2025-01-30 00:33:18'),
(41, 'Hello fellas', 'p-36', NULL, 'hello-fellas', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '59', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 1, 2500, 2200, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:57:51', '2025-01-30 07:16:07'),
(42, 'Grading Tools', 'p-37', NULL, 'grading-tools', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '60', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 90500, 87050, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 02:59:04', '2025-01-29 02:59:04'),
(43, 'Garden Tools for sale in Dublin', 'p-38', NULL, 'garden-tools-for-sale-in-dublin', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '67', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 0, 6500, 5050, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 03:01:01', '2025-01-29 03:01:01'),
(44, 'Garden Tools for sale in Nelson', 'p-39', NULL, 'garden-tools-for-sale-in-nelson', '7', '0', '200', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque&nbsp;</p>', '<p>Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio&nbsp;Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio</p>', '1', '1', '2', '', '1', '10', '1', '1', '68', '0', '0', 'Quisquam itaque odio Quisquam itaque odio Quisquam itaque odio', 'Facere quisquam nisi', NULL, 1, 6500, 5050, '0', 1, '0', '{\"variant_key\":null,\"vairant_value\":null}', '1', '#dee7ca', '#43cafa', NULL, NULL, '2025-01-29 03:02:08', '2025-01-29 04:50:26'),
(45, 'Shoes For men', 'p-40', 'Tyrone Valencia', 'shoes-for-men', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '85', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 2, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"red,yellow\",\"vairant_value\":\"S,L\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:08:35', '2025-01-30 04:28:51'),
(46, 'Shoes For men', 'p-41', 'Tyrone Valencia', 'shoes-for-men-1', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '86', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 2, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"red,yellow\",\"vairant_value\":\"S,L\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:09:14', '2025-01-30 06:19:23'),
(47, 'Shoes For men', 'p-42', 'Tyrone Valencia', 'shoes-for-men-2', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '87', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 2, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"red,yellow\",\"vairant_value\":\"S,L\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:09:44', '2025-01-31 06:47:27'),
(48, 'Shoes For men', 'p-43', 'Tyrone Valencia', 'shoes-for-men-3', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '90', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 0, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"red,yellow\",\"vairant_value\":\"S,L\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:10:58', '2025-01-30 04:10:58'),
(49, 'Shoes For men', 'p-44', 'Tyrone Valencia', 'shoes-for-men-4', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '91', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 1, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"red,yellow\",\"vairant_value\":\"S,L\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:11:31', '2025-01-30 04:12:24'),
(50, 'Shoes For Women', 'p-45', 'Tyrone Valencia', 'shoes-for-women', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '94', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 0, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"red,yellow\",\"vairant_value\":\"S,L\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:14:26', '2025-01-30 04:14:26'),
(51, 'Shoes For Women', 'p-46', 'Tyrone Valencia', 'shoes-for-women-2', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '96', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 1, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"yellow\",\"vairant_value\":\"39,40,41,42,43,44\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:15:22', '2025-01-30 04:27:55'),
(52, 'Shoes For Women', 'p-47', 'Tyrone Valencia', 'shoes-for-women-3', '10', '0', NULL, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</span></p>', '0', '1', 'ddsf', 'fdfds', '0', '20', '0', '1', '98', '0', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ea quae exercitation', NULL, 2, 5741, 5684, '0', 0, '1', '{\"variant_key\":\"red\",\"vairant_value\":\"39,40,41,42,43,44\"}', '1', '#9d2cab', '#9e86ec', NULL, NULL, '2025-01-30 04:16:07', '2025-01-30 12:52:03');

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
  `order_sort` int(11) NOT NULL DEFAULT 1,
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
(1, 'sdf', 'mail@gmail.com', 'sdfa', '5', '2', 15, '2025-01-29 04:07:16', '2025-01-29 04:07:16');

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
(1, 'superadmin', 'web', '2025-01-28 02:54:48', '2025-01-28 02:54:48');

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
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1);

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
  `value` varchar(1750) DEFAULT NULL,
  `creator_id` varchar(125) DEFAULT NULL,
  `key` varchar(125) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `creator_id`, `key`, `created_at`, `updated_at`) VALUES
(180, 'theme_nav-collapse-hide-child', 'Theme Nav-Collapse-Hide-Child', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(4, 'currency_symbol', '৳', '1', '9', NULL, '2025-01-28 03:00:00'),
(5, 'app_image', '82', '1', '9', NULL, '2025-01-30 02:28:26'),
(6, 'app_name_short', 'Sky Bazar BD', '1', '9', NULL, '2025-01-30 02:35:08'),
(7, 'app_title', 'Sky Bazar BD', '1', '9', NULL, '2025-01-30 02:35:08'),
(8, 'app_footer_image', '82', '1', '9', NULL, '2025-01-30 02:28:45'),
(9, 'app_email', 'info@amjadagro.com', '1', '9', NULL, '2025-01-28 03:01:25'),
(10, 'app_about', 'Amjad Agro core values are customer-oriented, honesty, quality and commitment. These values guide everything we do and enable us to make a positive difference. We are honest and fair with suppliers, customers and colleagues.', '1', '9', NULL, '2025-01-28 03:02:42'),
(11, 'app_tel', '+88 01712 258 911', '1', '9', NULL, '2025-01-30 02:39:12'),
(12, 'app_linkedin', '#', '1', '9', NULL, '2025-01-30 02:35:15'),
(13, 'app_facebook', 'https://facebook.com/mdsazzad0002', '1', '9', NULL, NULL),
(14, 'app_whatsapp', 'https://wa.me/+88 01712 258 911', '1', '9', NULL, '2025-01-30 02:39:15'),
(15, 'app_twitter', '#', '1', '9', NULL, '2025-01-30 02:35:19'),
(16, 'app_youtube', 'https://youtube.com/mdsazzad0002', '1', '9', NULL, NULL),
(17, 'app_telegram', 'https://t.me/mdsazzad0002', '1', '9', NULL, NULL),
(18, 'app_linkedin', 'https://linkedin.com/in/mdsazzad0002', '1', '9', NULL, NULL),
(19, 'app_pinterest', 'https://pinterest.com/mdsazzad0002', '1', '9', NULL, NULL),
(20, 'app_github', 'https://github.com/mdsazzad0002', '1', '9', NULL, NULL),
(21, 'app_figma', '#', '1', '9', NULL, '2025-01-30 02:35:24'),
(22, 'app_website', 'https://code.dengrweb.com/users/superadmin', '1', '9', NULL, NULL),
(23, 'app_address', 'House # 1,3. Road # E2, Block - G, Eastern Housing, Rupnagar, Mirpur, Dhaka - 1216, Bangladesh.', '1', '9', NULL, '2025-01-30 05:09:31'),
(24, 'app_maps', 'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3651.591705560146!2d90.38453078641228!3d23.761935033330907!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2s!5e0!3m2!1sen!2sus!4v1738055099191!5m2!1sen!2sus', '1', '9', NULL, '2025-01-28 03:05:27'),
(25, 'app_preloader_image', '82', '1', '9', NULL, '2025-01-30 02:28:52'),
(26, 'app_preloader_status', '0', '1', '9', NULL, NULL),
(27, 'google-site-verification', 'Google-Site-Verification', '0', '25', '2025-01-28 02:54:44', '2025-01-28 02:54:44'),
(28, 'msvalidate.01', 'Msvalidate.01', '0', '25', '2025-01-28 02:54:44', '2025-01-28 02:54:44'),
(29, 'yandex-verification', 'Yandex-Verification', '0', '25', '2025-01-28 02:54:44', '2025-01-28 02:54:44'),
(30, 'p:domain_verify', 'P:domain Verify', '0', '25', '2025-01-28 02:54:44', '2025-01-28 02:54:44'),
(31, 'fb:admins', 'Fb:admins', '0', '25', '2025-01-28 02:54:44', '2025-01-28 02:54:44'),
(32, 'google_tag_manager_key', '', '1', '24', NULL, NULL),
(33, 'google_tag_analysis_key', '', '1', '24', NULL, NULL),
(34, 'facebook_app_id', '', '1', '24', NULL, NULL),
(35, 'facebook_pixel_id', '', '1', '24', NULL, NULL),
(36, 'pwa_image', '0', '1', '20', NULL, NULL),
(37, 'pwa_name', '0', '1', '20', NULL, NULL),
(38, 'pwa_sort_name', 'D Pos', '1', '20', NULL, NULL),
(39, 'theme_color', '#000000', '1', '20', NULL, NULL),
(40, 'pwa_background_color', '#6b6b6b', '1', '20', NULL, NULL),
(41, 'pwa_orientation', 'any', '1', '20', NULL, NULL),
(42, 'pwa_description', 'D Pos', '1', '20', NULL, NULL),
(43, 'pwa_type', 'image/png', '1', '20', NULL, NULL),
(44, 'pwa_sizes', '150x150', '1', '20', NULL, NULL),
(45, 'pwa_display', 'standalone', '1', '20', NULL, NULL),
(46, 'pwa_status', '0', '1', '20', NULL, NULL),
(47, 's1_src_link_tawk_to', 'https://embed.tawk.to/670faba22480f5b4f58e3fa8/1iaajctkv', '1', '31', NULL, NULL),
(48, 'tawk_to_status', '0', '1', '31', NULL, NULL),
(49, 'crisp_chat_id', '081aca0a-3ef7-42a7-bfb1-40311e186858', '1', '31', NULL, NULL),
(50, 'crisp_chat_status', '0', '1', '31', NULL, NULL),
(51, 'cookie_declined_btn', 'Declined', '1', '40', NULL, NULL),
(52, 'cookie_accept_btn', 'Accept', '1', '40', NULL, NULL),
(53, 'cookie_link_text', 'Read More ...', '1', '40', NULL, NULL),
(54, 'cookie_link', 'https://dengrweb.com', '1', '40', NULL, NULL),
(55, 'cookie_description', 'Your description text', '1', '40', NULL, NULL),
(56, 'cookie_title', 'Cookie Concent', '1', '40', NULL, NULL),
(57, 'cookie_i_con_class_title', 'fas fa-cookie', '1', '40', NULL, NULL),
(58, 'cookie_status', '0', '1', '40', NULL, NULL),
(59, 'cookie_bg_color', '#139dd8', '1', '40', NULL, NULL),
(60, 'cookie_btn_1_color', '#ffffff', '1', '40', NULL, NULL),
(61, 'cookie_btn_1_color_bg', '#0d5caf', '1', '40', NULL, NULL),
(62, 'cookie_btn_2_color', '#eeeeee', '1', '40', NULL, NULL),
(63, 'cookie_btn_2_color_bg', '#d21919', '1', '40', NULL, NULL),
(64, 'bd_courier_tracking_id', '44KuwISREmzWwTxOhapxFaiVyAIAuXVS2618lNMTa4OAJ3NWffuQKjrDeTfk', '1', '27', NULL, NULL),
(65, 'bd_courier_tracking_status', '1', '1', '27', NULL, NULL),
(179, 'theme_nav-child-indent', 'Theme Nav-Child-Indent', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(164, 'custom_css__footer_code', '', '1', '45', NULL, NULL),
(163, 'custom_css__head_code', '', '1', '45', NULL, NULL),
(70, 'order', 'Order', '0', '10', '2025-01-28 02:55:03', '2025-01-28 02:55:03'),
(71, 'app_fav_image', '82', '1', '9', '2025-01-28 02:55:03', '2025-01-30 02:28:56'),
(178, 'nav-flat', 'Nav-Flat', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(177, 'theme_brand_link', 'Theme Brand Link', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(175, 'theme_sidebar-no-expand', 'Theme Sidebar-No-Expand', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(176, 'theme_dark_sidebar_variant', 'Theme Dark Sidebar Variant', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(174, 'theme_navbar_bg', 'Theme Navbar Bg', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(173, 'theme_border-bottom-0', 'Theme Border-Bottom-0', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(171, 'theme_layout-footer-fixed', 'Theme Layout-Footer-Fixed', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(172, 'theme_dropdown-legacy', 'Theme Dropdown-Legacy', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(170, 'theme_sidebar-mini-xs', 'Theme Sidebar-Mini-Xs', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(169, 'theme_sidebar-mini-md', 'Theme Sidebar-Mini-Md', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(168, 'theme_sidebar-mini', 'Theme Sidebar-Mini', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(167, 'theme_layout-fixed', 'Theme Layout-Fixed', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(166, 'theme_layout-navbar-fixed', 'Theme Layout-Navbar-Fixed', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(165, 'theme_mode', '0', '1', '1', '2025-01-29 01:52:21', '2025-01-30 04:04:31'),
(89, 'pages', 'Pages', '0', '10', '2025-01-28 02:55:30', '2025-01-28 02:55:30'),
(162, 'custom_css_footer_code', '', '1', '45', NULL, NULL),
(91, 'welcome_note', NULL, '1', '9', '2025-01-28 02:55:42', '2025-01-28 03:05:45'),
(92, 'footer_style1_status', 'Footer Style1 Status', '0', '88', '2025-01-28 02:55:42', '2025-01-28 02:55:42'),
(93, 'footer_style2_status', '1', '1', '88', '2025-01-28 02:55:42', '2025-01-28 03:06:14'),
(94, 'app_instagram', '#', '1', '9', '2025-01-28 02:55:42', '2025-01-28 03:05:49'),
(161, 'custom_js_footer_code', '', '1', '45', NULL, NULL),
(96, 'footerlinksubheadings', 'Footerlinksubheadings', '0', '10', '2025-01-28 02:56:08', '2025-01-28 02:56:08'),
(97, 'category', 'Category', '0', '10', '2025-01-28 02:56:20', '2025-01-28 02:56:20'),
(98, 'sliders', 'Sliders', '0', '10', '2025-01-28 03:07:21', '2025-01-28 03:07:21'),
(99, 'login_admin_image', '82', '1', '9', '2025-01-28 04:25:17', '2025-01-30 02:36:02'),
(158, 'theme_nav-compact', '0', '1', '1', NULL, NULL),
(157, 'theme_nav-legacy', '0', '1', '1', NULL, NULL),
(156, 'theme_sidebar-collapse', '0', '1', '1', NULL, NULL),
(160, 'custom_css_head_code', '', '1', '45', NULL, NULL),
(159, 'custom_js_head_code', '', '1', '45', NULL, NULL),
(126, 'dashboard_title', 'Dashboard Title', '0', '10', '2025-01-28 22:28:11', '2025-01-28 22:28:11'),
(127, 'category_wise_filter_status', '0', '1', '80', '2025-01-29 00:23:43', '2025-01-29 00:28:21'),
(128, 'a', 'A', '0', '9', '2025-01-29 01:01:21', '2025-01-29 01:01:21'),
(129, 'theme_color', '#3871c1', '1', '9', '2025-01-29 01:06:23', '2025-01-30 02:33:17'),
(181, 'theme_nav-flat', 'Theme Nav-Flat', '0', '1', '2025-01-29 01:52:21', '2025-01-29 01:52:21'),
(182, 'checkout_note', NULL, '1', '9', '2025-01-29 03:01:42', '2025-01-29 04:06:13'),
(183, 'services', 'Services', '0', '10', '2025-01-29 03:08:02', '2025-01-29 03:08:02'),
(184, 'offerbanner', 'Offerbanner', '0', '10', '2025-01-29 03:08:21', '2025-01-29 03:08:21'),
(185, 'testimonials', 'Testimonials', '0', '10', '2025-01-29 03:13:23', '2025-01-29 03:13:23'),
(186, 'faqs', 'Faqs', '0', '10', '2025-01-29 03:13:45', '2025-01-29 03:13:45'),
(187, 'footerlinkheadings', 'Footerlinkheadings', '0', '10', '2025-01-29 03:13:56', '2025-01-29 03:13:56'),
(188, 'customer', 'Customer', '0', '10', '2025-01-29 04:08:36', '2025-01-29 04:08:36'),
(189, 'contact_style1_map_status', 'Contact Style1 Map Status', '0', '99', '2025-01-29 04:12:18', '2025-01-29 04:12:18'),
(190, 'contact_us_note', 'Contact Us Note', '0', '9', '2025-01-29 04:17:02', '2025-01-29 04:17:02'),
(191, 'Leads', 'Leads', '0', '10', '2025-01-29 04:20:22', '2025-01-29 04:20:22'),
(192, 'LeadSources', 'Leadsources', '0', '10', '2025-01-29 04:20:38', '2025-01-29 04:20:38'),
(193, 'LeadDeals', 'Leaddeals', '0', '10', '2025-01-29 04:20:44', '2025-01-29 04:20:44'),
(194, 'Contacts', 'Contacts', '0', '10', '2025-01-29 04:20:49', '2025-01-29 04:20:49'),
(195, 'LeadDealStages', 'Leaddealstages', '0', '10', '2025-01-29 04:21:00', '2025-01-29 04:21:00'),
(196, 'header_style_button_box', 'Header Style Button Box', '0', '80', '2025-01-29 05:12:47', '2025-01-29 05:12:47'),
(197, 'header_style_button_box_status', '1', '1', '80', '2025-01-29 05:13:18', '2025-01-29 05:13:25'),
(198, 'show_filter_by_category_status', 'Show Filter By Category Status', '0', '80', '2025-01-29 05:24:20', '2025-01-29 05:24:20'),
(199, 'show_filter_by_price_status', 'Show Filter By Price Status', '0', '80', '2025-01-29 05:24:20', '2025-01-29 05:24:20'),
(200, 'show_filter_by_brand_status', 'Show Filter By Brand Status', '0', '80', '2025-01-29 05:24:20', '2025-01-29 05:24:20'),
(201, 'show_filter_by_rating_status', 'Show Filter By Rating Status', '0', '80', '2025-01-29 05:24:20', '2025-01-29 05:24:20'),
(202, 'show_filter_feature_product_status', '1', '1', '80', '2025-01-29 05:24:20', '2025-01-29 05:24:34'),
(203, 'show_filter_offer_product_status', 'Show Filter Offer Product Status', '0', '80', '2025-01-29 05:24:20', '2025-01-29 05:24:20'),
(204, 'Translation', 'Translation', '0', '10', '2025-01-30 02:39:51', '2025-01-30 02:39:51'),
(205, 'footer_maps_status', 'Footer Maps Status', '0', '88', '2025-01-30 04:02:44', '2025-01-30 04:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `amount` varchar(125) DEFAULT NULL,
  `creator` varchar(125) DEFAULT NULL,
  `updater` varchar(125) DEFAULT NULL,
  `status` varchar(125) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `creator`, `updater`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka', '100', '1', '1', '1', '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(2, 'Outside Dhaka', '150', '1', '1', '1', '2025-01-28 02:54:46', '2025-01-28 02:54:46');

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
(1, NULL, NULL, NULL, 77, 77, NULL, '#', 1, '2025-01-28 02:54:45', '2025-01-30 02:01:11'),
(4, NULL, NULL, NULL, 0, 83, NULL, NULL, 1, '2025-01-28 04:28:53', '2025-01-30 02:31:30'),
(2, NULL, NULL, NULL, 0, 78, NULL, '#', 1, '2025-01-28 02:54:45', '2025-01-30 02:01:31'),
(3, NULL, NULL, NULL, 0, 74, NULL, '#', 1, '2025-01-28 02:54:45', '2025-01-30 02:01:47'),
(5, NULL, NULL, NULL, 0, 76, NULL, NULL, 1, '2025-01-28 04:30:23', '2025-01-30 02:01:58');

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
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `variant_id` bigint(20) NOT NULL DEFAULT 0,
  `quantity` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
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
(1, 'Distributor', 1, '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(2, 'Whole Seller', 1, '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(3, 'Broker', 1, '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(4, 'Distributor', 1, '2025-01-28 06:09:23', '2025-01-28 06:09:23'),
(5, 'Whole Seller', 1, '2025-01-28 06:09:23', '2025-01-28 06:09:23'),
(6, 'Broker', 1, '2025-01-28 06:09:23', '2025-01-28 06:09:23'),
(7, 'Distributor', 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(8, 'Whole Seller', 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(9, 'Broker', 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(10, 'Distributor', 1, '2025-01-29 01:51:59', '2025-01-29 01:51:59'),
(11, 'Whole Seller', 1, '2025-01-29 01:51:59', '2025-01-29 01:51:59'),
(12, 'Broker', 1, '2025-01-29 01:51:59', '2025-01-29 01:51:59');

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
(1, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(2, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(3, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-28 02:54:46', '2025-01-28 02:54:46'),
(4, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(5, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(6, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(7, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(8, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(9, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(10, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(11, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(12, 'Assume', 'Ceo', ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd', 0, 2, 1, 1, 1, '2025-01-29 01:52:00', '2025-01-29 01:52:00');

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

--
-- Dumping data for table `transection_information`
--

INSERT INTO `transection_information` (`id`, `payment_method_id`, `user_id`, `location_id`, `order_id`, `name`, `email`, `phone`, `address`, `status`, `mer_txnid`, `currency`, `ip_address`, `by_method`, `description`, `tnx_id_by_user`, `amount`, `store_amount`, `service_charge`, `payment_charge`, `all_response`, `secret`, `PayerID`, `token`, `client_id`, `updater`, `creator`, `created_at`, `updated_at`) VALUES
(1, 0, '0', '0', '0', 'example', 'example@gmail.com', '01590000000', 'example', 'Pending', '6799cd02196f2', 'BDT', NULL, NULL, 'example', NULL, '100', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-01-29 00:38:59', '2025-01-29 00:38:59'),
(2, 0, '1', '0', '1', '  ', '  ', '  ', '  ', 'Pending', 'PAYID-M6M44CY9BU483516D996553K', 'USD', NULL, 'paypal', 'demo description', NULL, '5.00', NULL, NULL, '  ', NULL, NULL, NULL, NULL, NULL, '1', '1', '2025-01-29 00:43:22', '2025-01-29 00:43:22');

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
(1, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(2, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(3, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(4, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(5, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(6, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(7, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(8, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(9, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(10, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(11, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(12, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(13, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(14, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(15, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(16, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(17, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(18, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(19, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(20, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(21, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(22, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(23, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(24, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(25, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(26, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(27, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(28, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(29, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(30, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(31, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(32, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(33, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(34, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(35, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(36, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(37, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(38, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(39, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(40, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(41, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(42, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(43, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(44, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(45, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(46, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(47, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(48, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(49, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(50, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(51, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(52, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(53, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(54, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(55, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(56, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(57, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(58, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(59, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(60, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(61, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(62, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(63, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(64, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(65, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(66, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(67, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(68, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(69, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(70, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(71, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(72, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(73, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(74, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(75, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(76, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(77, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(78, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(79, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(80, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(81, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(82, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(83, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(84, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(85, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(86, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(87, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(88, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(89, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(90, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(91, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(92, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(93, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(94, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(95, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(96, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(97, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(98, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(99, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(100, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(101, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(102, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(103, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(104, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(105, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(106, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(107, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(108, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(109, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(110, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(111, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(112, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(113, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(114, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(115, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(116, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(117, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(118, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(119, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(120, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(121, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(122, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(123, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(124, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(125, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(126, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(127, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(128, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(129, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(130, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(131, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(132, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(133, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(134, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(135, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(136, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(137, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(138, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(139, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(140, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(141, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(142, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(143, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(144, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(145, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(146, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(147, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(148, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(149, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(150, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(151, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(152, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(153, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(154, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(155, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(156, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(157, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(158, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(159, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(160, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(161, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(162, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(163, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(164, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(165, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(166, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(167, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(168, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(169, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(170, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(171, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(172, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(173, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(174, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(175, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(176, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(177, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(178, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(179, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(180, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(181, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(182, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(183, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(184, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(185, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(186, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(187, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(188, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(189, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(190, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(191, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(192, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(193, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(194, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(195, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(196, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(197, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(198, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(199, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(200, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(201, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(202, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(203, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(204, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(205, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(206, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(207, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-01-28 02:54:54', '2025-01-28 02:54:54'),
(208, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(209, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(210, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(211, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(212, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(213, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(214, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(215, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(216, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(217, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(218, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(219, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(220, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(221, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(222, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(223, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(224, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(225, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(226, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(227, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(228, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(229, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(230, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(231, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(232, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(233, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(234, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(235, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(236, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(237, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(238, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(239, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(240, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(241, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(242, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(243, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(244, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(245, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(246, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(247, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(248, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(249, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(250, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(251, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(252, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(253, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(254, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(255, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(256, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(257, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(258, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(259, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(260, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(261, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(262, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(263, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(264, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(265, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(266, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(267, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(268, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(269, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(270, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(271, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(272, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(273, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(274, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(275, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(276, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(277, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(278, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(279, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(280, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(281, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(282, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(283, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(284, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(285, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(286, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(287, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(288, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(289, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(290, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(291, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(292, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(293, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(294, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(295, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(296, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(297, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(298, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(299, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(300, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(301, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(302, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(303, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(304, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(305, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(306, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(307, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(308, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(309, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(310, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(311, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(312, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(313, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(314, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(315, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(316, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(317, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(318, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(319, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(320, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(321, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(322, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(323, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(324, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(325, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(326, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(327, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(328, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(329, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(330, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(331, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(332, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(333, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(334, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(335, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(336, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(337, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(338, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(339, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(340, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(341, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(342, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(343, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(344, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(345, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(346, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(347, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(348, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(349, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(350, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(351, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(352, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(353, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(354, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(355, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(356, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(357, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(358, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(359, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(360, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(361, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(362, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(363, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(364, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(365, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(366, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(367, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(368, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(369, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(370, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(371, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(372, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(373, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(374, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(375, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(376, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(377, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(378, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(379, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(380, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(381, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(382, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(383, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(384, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(385, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(386, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(387, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(388, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(389, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(390, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(391, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(392, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(393, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(394, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(395, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(396, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(397, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(398, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(399, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(400, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(401, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(402, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(403, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(404, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(405, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(406, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(407, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(408, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(409, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(410, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(411, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(412, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(413, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(414, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(415, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(416, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(417, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(418, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(419, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(420, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(421, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(422, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(423, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(424, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(425, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(426, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(427, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(428, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(429, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(430, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(431, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(432, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(433, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(434, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(435, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(436, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(437, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(438, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(439, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(440, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(441, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(442, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(443, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(444, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(445, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(446, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(447, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(448, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(449, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(450, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(451, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(452, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(453, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(454, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(455, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(456, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(457, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(458, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(459, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(460, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(461, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(462, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(463, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(464, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(465, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(466, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(467, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(468, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(469, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(470, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(471, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(472, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(473, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(474, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(475, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(476, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(477, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(478, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(479, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(480, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(481, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(482, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(483, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(484, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(485, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(486, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(487, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(488, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(489, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(490, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(491, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(492, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(493, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(494, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(495, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(496, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(497, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(498, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(499, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(500, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(501, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(502, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(503, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(504, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(505, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(506, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(507, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(508, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(509, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(510, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(511, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(512, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(513, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(514, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(515, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(516, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(517, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(518, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(519, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(520, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(521, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(522, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(523, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(524, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(525, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(526, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(527, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(528, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(529, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(530, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(531, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(532, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(533, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(534, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-01-28 06:09:25', '2025-01-28 06:09:25'),
(535, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(536, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(537, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(538, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(539, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(540, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(541, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(542, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(543, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(544, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(545, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(546, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(547, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(548, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(549, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(550, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(551, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(552, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(553, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(554, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(555, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(556, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(557, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(558, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(559, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(560, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(561, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(562, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(563, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(564, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(565, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(566, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(567, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(568, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(569, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(570, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(571, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(572, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(573, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(574, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(575, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(576, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(577, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(578, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(579, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(580, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(581, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(582, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(583, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(584, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(585, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(586, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(587, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(588, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(589, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(590, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(591, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(592, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(593, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(594, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(595, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(596, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(597, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(598, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(599, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(600, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(601, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(602, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(603, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(604, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(605, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(606, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(607, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(608, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(609, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(610, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(611, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(612, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(613, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(614, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(615, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(616, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(617, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(618, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(619, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(620, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(621, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(622, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(623, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(624, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(625, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(626, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(627, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(628, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(629, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(630, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(631, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(632, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(633, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(634, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(635, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(636, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(637, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(638, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(639, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(640, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(641, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(642, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(643, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(644, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(645, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(646, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(647, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(648, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-01-28 06:09:26', '2025-01-28 06:09:26'),
(649, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(650, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(651, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(652, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(653, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(654, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(655, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(656, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(657, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(658, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(659, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(660, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(661, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(662, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(663, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(664, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(665, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(666, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(667, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(668, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(669, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(670, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(671, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(672, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(673, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(674, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(675, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(676, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(677, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(678, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(679, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(680, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(681, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(682, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(683, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(684, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(685, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(686, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(687, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(688, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(689, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(690, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(691, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(692, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(693, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(694, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(695, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(696, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(697, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(698, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(699, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(700, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(701, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(702, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(703, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(704, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(705, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(706, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(707, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(708, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(709, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(710, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(711, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(712, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(713, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(714, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(715, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(716, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(717, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(718, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(719, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(720, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(721, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(722, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(723, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(724, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(725, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(726, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(727, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(728, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(729, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(730, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(731, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(732, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(733, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(734, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(735, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(736, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(737, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(738, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(739, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(740, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(741, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(742, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(743, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(744, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(745, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(746, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(747, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(748, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(749, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(750, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(751, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(752, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(753, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(754, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(755, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(756, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(757, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(758, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(759, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(760, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(761, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(762, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(763, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(764, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(765, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(766, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(767, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(768, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(769, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(770, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(771, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(772, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(773, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(774, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(775, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(776, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(777, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(778, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(779, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(780, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(781, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(782, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(783, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(784, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(785, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(786, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(787, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(788, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(789, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(790, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(791, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(792, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(793, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(794, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(795, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(796, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(797, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(798, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(799, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(800, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(801, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(802, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(803, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(804, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(805, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(806, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(807, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(808, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(809, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(810, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(811, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(812, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(813, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(814, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(815, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(816, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(817, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(818, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-01-29 01:42:41', '2025-01-29 01:42:41'),
(819, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(820, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(821, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(822, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(823, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(824, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(825, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(826, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(827, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(828, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(829, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(830, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(831, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(832, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(833, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(834, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(835, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(836, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(837, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(838, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(839, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(840, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(841, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(842, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(843, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(844, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(845, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(846, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(847, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(848, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(849, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(850, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(851, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(852, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(853, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(854, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(855, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(856, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(857, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(858, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(859, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(860, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(861, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(862, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(863, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(864, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(865, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(866, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(867, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(868, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(869, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(870, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(871, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(872, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(873, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(874, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(875, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(876, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(877, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(878, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(879, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(880, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(881, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(882, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(883, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(884, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(885, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(886, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(887, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(888, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(889, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(890, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(891, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(892, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(893, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(894, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(895, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(896, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(897, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(898, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(899, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(900, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(901, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(902, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(903, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(904, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(905, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(906, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(907, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(908, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(909, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(910, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(911, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(912, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(913, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(914, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(915, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(916, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(917, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(918, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(919, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(920, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(921, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(922, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(923, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(924, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(925, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(926, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(927, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(928, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(929, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(930, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-01-29 01:42:42', '2025-01-29 01:42:42'),
(931, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(932, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(933, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(934, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(935, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(936, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(937, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(938, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(939, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(940, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(941, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(942, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(943, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(944, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(945, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(946, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(947, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(948, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(949, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(950, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(951, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(952, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(953, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(954, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(955, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(956, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(957, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(958, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(959, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(960, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(961, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(962, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(963, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(964, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(965, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(966, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(967, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(968, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(969, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(970, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(971, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(972, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(973, 'log.in', 1, 'log in', 'log', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(974, 'settings.main_setting_sidebar', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(975, 'device_access_check.sidebar.list', 1, 'Device Access', 'device_access_check', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(976, 'settings.notification_sidebar', 1, 'Notification Setting', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(977, 'settings.site_verification_sidebar', 1, 'Site Verification Setting', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(978, 'settings.site-tag-management', 1, 'Tag Management ', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(979, 'cookie-management.cookie_declined_btn', 1, 'Cookie Declined Button Text ', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(980, 'cookie-management.cookie_accept_btn', 1, 'Cookie Accept Button Text ', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(981, 'cookie-management.cookie_link_text', 1, 'Cookie Hyper Link Text', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(982, 'cookie-management.cookie_link', 1, 'Cookie Hyper Link', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(983, 'cookie-management.cookie_description', 1, 'Cookie Description Text', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(984, 'cookie-management.cookie_title', 1, 'Cookie Concent Title', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(985, 'cookie-management.cookie_i_con_class_title', 1, 'Cookie icon Title', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(986, 'cookie-management.cookie_status', 1, 'Cookie Status', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(987, 'cookie-management.cookie_bg_color', 1, 'Cookie Background Color', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(988, 'cookie-management.cookie_btn_1_color', 1, 'Cookie button Color 1', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(989, 'cookie-management.cookie_btn_1_color_bg', 1, 'Cookie button bg Color 1', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(990, 'cookie-management.cookie_btn_2_color', 1, 'Cookie button  Color 2', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(991, 'cookie-management.cookie_btn_2_color_bg', 1, 'Cookie button bg Color 2', 'cookie-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(992, 'settings.cookie-sidebar-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(993, 'settings.takto_sidebar-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(994, 'settings.site-pwa-management', 1, 'Pwa Settings', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(995, 'settings.email_setting_sidebar', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(996, 'site-pwa-management.pwa_image', 1, 'PWA image', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(997, 'site-pwa-management.pwa_name', 1, 'PWA Name', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(998, 'site-pwa-management.pwa_sort_namee', 1, 'PWA Sort Name', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(999, 'site-pwa-management.theme_color', 1, 'PWA Theme color', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1000, 'site-pwa-management.pwa_background_color', 1, 'PWA Background color', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1001, 'site-pwa-management.pwa_orientationr', 1, 'PWA Orientation', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1002, 'site-pwa-management.pwa_description', 1, 'PWA Description', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1003, 'site-pwa-management.pwa_type', 1, 'PWA image type', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1004, 'site-pwa-management.pwa_sizes', 1, 'PWA image size', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1005, 'site-pwa-management.pwa_display', 1, 'PWA Display', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1006, 'site-pwa-management.pwa_status', 1, 'PWA Status', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1007, 'setting.sidebar.list', 1, 'Settings', 'setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1008, 'crm.management_sidebar_name', 1, 'Crm Management', 'crm', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1009, 'user.management_sidebar_name', 1, 'User Management', 'user', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1010, 'supplier.management_sidebar_name', 1, 'Supplier Management', 'supplier', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1011, 'customer.management_sidebar_name', 1, 'Customer Management', 'customer', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1012, 'stock.management_sidebar_name', 1, 'Stock Management', 'stock', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1013, 'product.management_sidebar_name', 1, 'Product Management', 'product', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1014, 'order.management_sidebar_name', 1, 'Order management', 'order', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1015, 'site-tag-management.google_tag_manager_key', 1, 'Google Tag Manager Key', 'site-tag-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1016, 'site-tag-management.google_tag_analysis_key', 1, 'Google Analysis Key', 'site-tag-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1017, 'settings.payment-configration-sidebar', 1, 'Payment Setting', 'settings', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1018, 'takto-messageing-management.s1_src_link_tawk_to', 1, 'Tak.to src Link', 'takto-messageing-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1019, 'takto-messageing-management.tawk_to_status', 1, 'Tak.to Status', 'takto-messageing-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1020, 'site-pwa-management.pwa_sort_name', 1, 'PWA Short Name', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1021, 'site-pwa-management.pwa_orientation', 1, 'PWA Site Orientation', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1022, 'site-verification-setting.google-site-verification', 1, 'Google Site Verification Meta Value', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1023, 'site-verification-setting.msvalidate.01', 1, 'MSvalidate Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1024, 'site-verification-setting.yandex-verification', 1, 'Yandex Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1025, 'site-verification-setting.p:domain_verify', 1, 'P:domain Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1026, 'site-verification-setting.fb:admins', 1, 'FB Admin Meta value', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1027, 'fcm.fcm_private_key', 1, 'FCM Private Key', 'fcm', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1028, 'fcm.fcm_public_key', 1, 'FCM Public Key', 'fcm', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1029, 'fcm.fcm_status_key', 1, 'FCM Status', 'fcm', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1030, 'main-setting.app_image', 1, 'App Image', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1031, 'main-setting.app_name_short', 1, 'App Name Short', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1032, 'main-setting.app_title', 1, 'App Title', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1033, 'main-setting.app_footer_image', 1, 'App Footer Image', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1034, 'main-setting.app_email', 1, 'App Email', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1035, 'main-setting.app_about', 1, 'App About', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1036, 'main-setting.app_tel', 1, 'App Phone', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1037, 'main-setting.app_linkedin', 1, 'App Linkedin Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1038, 'main-setting.app_facebook', 1, 'App Facebook Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1039, 'main-setting.app_whatsapp', 1, 'App Whatsapp No with country code', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1040, 'main-setting.app_twitter', 1, 'App Twitter Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1041, 'main-setting.app_youtube', 1, 'App Youtube Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1042, 'main-setting.app_telegram', 1, 'App Telegram Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1043, 'main-setting.app_pinterest', 1, 'App Pinterest Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1044, 'main-setting.app_github', 1, 'App Github Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1045, 'main-setting.app_figma', 1, 'App Figma Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1046, 'main-setting.app_website', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1047, 'main-setting.app_address', 1, 'App Website Link', 'main-setting', NULL, 0, '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(1048, 'main-setting.app_maps', 1, 'App Maps Link', 'main-setting', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1049, 'main-setting.app_preloader_image', 1, 'App Preloader Image', 'main-setting', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1050, 'main-setting.app_preloader_status', 1, 'App Preloader Status', 'main-setting', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1051, 'main-setting.currency_symbol', 1, 'App Currency Symbol', 'main-setting', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1052, 'main-setting.app_fav_image', 1, 'App Fav Icon', 'main-setting', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1053, 'main-setting.app_instagram', 1, 'App Instagram Link', 'main-setting', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1054, 'settings.authenticted_history', 1, 'Authentic History', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1055, 'device_access_check.sidebar.list.name', 1, 'Authentic History', 'device_access_check', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1056, 'settings.authenticated_list', 1, 'Authentic History List', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1057, 'setting.payment-settings', 1, 'Payment Settings', 'setting', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1058, 'settings.AmarPay', 1, 'AmarPay', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1059, 'settings.SSLCommerz', 1, 'SSLCommerz', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1060, 'settings.paypal', 1, 'Paypal', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1061, 'settings.status', 1, 'Status', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1062, 'settings.stripe', 1, 'Stripe', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1063, 'settings.braintree', 1, 'Braintree', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1064, 'settings.store_id', 1, 'Store ID', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1065, 'settings.signature_key', 1, 'Signature Key', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1066, 'settings.store_password', 1, 'Store Password', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1067, 'settings.sandbox_status', 1, 'Sandbox Status', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1068, 'settings.client_id', 1, 'Client ID', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1069, 'settings.secret', 1, 'Secret', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1070, 'settings.publishable', 1, 'Publishable', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1071, 'settings.merchant_id', 1, 'Merchant ID', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1072, 'settings.public_key', 1, 'Public Key', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1073, 'settings.private_key', 1, 'Private Key', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1074, 'settings.smtp_setting', 1, 'SMTP Settings', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1075, 'settings.cookie-management', 1, 'Cookie Settings', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1076, 'settings.takto-messageing-management', 1, 'Chat Settings', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1077, 'settings.site-verification-setting', 1, 'Site Verification Settings', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1078, 'settings.fcm', 1, 'FCM Settings', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1079, 'settings.main-setting', 1, 'Main Settings', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1080, 'language.sidebar.name', 1, 'Language Settings', 'language', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1081, 'translate.sidebar.name', 1, 'Translator Settings', 'translate', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1082, 'settings.language', 1, 'Language', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1083, 'sidebar.settings', 1, 'Settings', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1084, 'language.title', 1, 'Language', 'language', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1085, 'language.add_new', 1, '+', 'language', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1086, 'log.choose_your_language', 1, 'Language', 'log', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1087, 'log.Email', 1, 'Email', 'log', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1088, 'log.Password', 1, 'Password', 'log', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1089, 'log.Remember_me', 1, 'Remember Me', 'log', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1090, 'log.Forgot_your_password?', 1, 'Forgot your password ?', 'log', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1091, 'sidebar.product_management', 1, 'Product Management', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1092, 'settings.product_list', 1, 'Product List', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1093, 'sidebar.product_create', 1, 'Product Entry', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1094, 'sidebar.category', 1, 'Category', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1095, 'sidebar.subcategory', 1, 'SubCategory', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1096, 'sidebar.area', 1, 'Area', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1097, 'visit.webiste', 1, 'Visit Website', 'visit', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1098, 'area.name', 1, 'Area', 'area', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1099, 'products.categories', 1, 'Product Category', 'products', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1100, 'product.price_by_filter', 1, 'Filter by Price', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1101, 'product.filter_by_brand', 1, 'Filter by Brand', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1102, 'product.filter_by_rating', 1, 'Filter by Rating', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1103, 'product.feature_product', 1, 'Feature Product', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1104, 'frontend.call_us247', 1, 'Call Us 24/7', 'frontend', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1105, 'category.name', 1, 'Category', 'category', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1106, 'category.description', 1, 'Category Description', 'category', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1107, 'band.title', 1, 'Brand', 'band', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1108, 'contact.front_address', 1, 'Address', 'contact', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1109, 'contact.fornt_call_us', 1, 'Call Us', 'contact', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1110, 'contact.front_email_us', 1, 'Email Us', 'contact', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1111, 'contact.front_your_name', 1, 'Your Name', 'contact', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1112, 'contact.front_your_email', 1, ' Email', 'contact', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1113, 'contact.front_message', 1, ' Message', 'contact', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1114, 'contact.front_phone', 1, ' Phone', 'contact', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1115, 'settings.courier-configration-sidebar', 1, ' Courier Configuration', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1116, 'settings.Walk In Delivery', 1, 'Working in Delivery', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1117, 'settings.EasyPost', 1, 'EasyPost', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1118, 'settings.SteadFast', 1, 'SteadFast', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1119, 'settings.Others', 1, 'Other', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1120, 'custom_js_css.custom_js_head_code', 1, 'Custom Script Head', 'custom_js_css', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1121, 'custom_js_css.custom_css_head_code', 1, 'Custom Css Head', 'custom_js_css', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1122, 'custom_js_css.custom_js_footer_code', 1, 'Custom Script Footer', 'custom_js_css', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1123, 'custom_js_css.custom_css_footer_code', 1, 'Custom Css Footer', 'custom_js_css', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1124, 'product.product_title', 1, 'Product Title', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1125, 'product.product_list', 1, 'Product List', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1126, 'product.create', 1, 'Product Create', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1127, 'product.information', 1, 'Product Information', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1128, 'product.landing_page_info', 1, 'Landing Page Info', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1129, 'product.variant_option', 1, 'Variant Option', 'product', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1130, 'settings.custom_js_css', 1, 'Custom Script', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1131, 'sidebar.clear', 1, 'Cache Clear', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1132, 'sidebar.backup', 1, 'Database Backup', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1133, 'sidebar.administrator', 1, 'Administration', 'sidebar', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1134, 'takto-messageing-management.crisp_chat_id', 1, 'Crisp Chat ID', 'takto-messageing-management', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1135, 'takto-messageing-management.crisp_chat_status', 1, 'Crisp Chat Status', 'takto-messageing-management', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1136, 'settings.tracking_report', 1, 'Courier Tracking Report', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1137, 'log.in', 2, 'লগ ইন', 'log', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1138, 'settings.main_setting_sidebar', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1139, 'device_access_check.sidebar.list', 2, 'ডিভাইস অ্যাক্সেস', 'device_access_check', NULL, 0, '2025-01-29 01:52:01', '2025-01-29 01:52:01'),
(1140, 'settings.notification_sidebar', 2, 'নোটিফিকেশন সেটিং', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1141, 'settings.site_verification_sidebar', 2, 'সাইট যাচাইকরণ সেটিং', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1142, 'settings.site-tag-management', 2, 'ট্যাগ ম্যানেজমেন্ট', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1143, 'cookie-management.cookie_declined_btn', 2, 'কুকি প্রত্যাখ্যান বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1144, 'cookie-management.cookie_accept_btn', 2, 'কুকি গ্রহণ বোতাম টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1145, 'cookie-management.cookie_link_text', 2, 'কুকি হাইপার লিংক টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1146, 'cookie-management.cookie_link', 2, 'কুকি হাইপার লিংক', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1147, 'cookie-management.cookie_description', 2, 'কুকি বর্ণনা টেক্সট', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1148, 'cookie-management.cookie_title', 2, 'কুকি সম্মতি শিরোনাম', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1149, 'cookie-management.cookie_i_con_class_title', 2, 'কুকি আইকন শিরোনাম', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1150, 'cookie-management.cookie_status', 2, 'কুকি স্ট্যাটাস', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1151, 'cookie-management.cookie_bg_color', 2, 'কুকি ব্যাকগ্রাউন্ড রঙ', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1152, 'cookie-management.cookie_btn_1_color', 2, 'কুকি বোতাম রঙ ১', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1153, 'cookie-management.cookie_btn_1_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ১', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1154, 'cookie-management.cookie_btn_2_color', 2, 'কুকি বোতাম রঙ ২', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1155, 'cookie-management.cookie_btn_2_color_bg', 2, 'কুকি বোতাম পটভূমি রঙ ২', 'cookie-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1156, 'settings.cookie-sidebar-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1157, 'settings.takto_sidebar-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1158, 'settings.site-pwa-management', 2, 'পিডব্লিউএ সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1159, 'settings.email_setting_sidebar', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1160, 'site-pwa-management.pwa_image', 2, 'পিডব্লিউএ ইমেজ', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1161, 'site-pwa-management.pwa_name', 2, 'পিডব্লিউএ নাম', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1162, 'site-pwa-management.pwa_sort_namee', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1163, 'site-pwa-management.theme_color', 2, 'পিডব্লিউএ থিম রঙ', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1164, 'site-pwa-management.pwa_background_color', 2, 'পিডব্লিউএ ব্যাকগ্রাউন্ড রঙ', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1165, 'site-pwa-management.pwa_orientationr', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1166, 'site-pwa-management.pwa_description', 2, 'পিডব্লিউএ বর্ণনা', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1167, 'site-pwa-management.pwa_type', 2, 'পিডব্লিউএ ইমেজ প্রকার', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1168, 'site-pwa-management.pwa_sizes', 2, 'পিডব্লিউএ ইমেজ আকার', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1169, 'site-pwa-management.pwa_display', 2, 'পিডব্লিউএ প্রদর্শন', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1170, 'site-pwa-management.pwa_status', 2, 'পিডব্লিউএ স্ট্যাটাস', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1171, 'setting.sidebar.list', 2, 'সেটিংস', 'setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1172, 'crm.management_sidebar_name', 2, 'সিআরএম ম্যানেজমেন্ট', 'crm', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1173, 'user.management_sidebar_name', 2, 'ইউজার ম্যানেজমেন্ট', 'user', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1174, 'supplier.management_sidebar_name', 2, 'সরবরাহকারী ম্যানেজমেন্ট', 'supplier', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1175, 'customer.management_sidebar_name', 2, 'গ্রাহক ম্যানেজমেন্ট', 'customer', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1176, 'stock.management_sidebar_name', 2, 'স্টক ম্যানেজমেন্ট', 'stock', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1177, 'product.management_sidebar_name', 2, 'পণ্য ম্যানেজমেন্ট', 'product', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1178, 'order.management_sidebar_name', 2, 'অর্ডার ম্যানেজমেন্ট', 'order', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1179, 'site-tag-management.google_tag_manager_key', 2, 'গুগল ট্যাগ ম্যানেজার কী', 'site-tag-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02');
INSERT INTO `translations` (`id`, `key`, `language`, `value`, `type`, `updater_id`, `creator`, `created_at`, `updated_at`) VALUES
(1180, 'site-tag-management.google_tag_analysis_key', 2, 'গুগল বিশ্লেষণ কী', 'site-tag-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1181, 'settings.payment-configration-sidebar', 2, 'পেমেন্ট সেটিং', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1182, 'takto-messageing-management.s1_src_link_tawk_to', 2, 'টাক.টু উৎস লিংক', 'takto-messageing-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1183, 'takto-messageing-management.tawk_to_status', 2, 'টাক.টু স্ট্যাটাস', 'takto-messageing-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1184, 'site-pwa-management.pwa_sort_name', 2, 'পিডব্লিউএ সংক্ষিপ্ত নাম', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1185, 'site-pwa-management.pwa_orientation', 2, 'পিডব্লিউএ অভিমুখ', 'site-pwa-management', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1186, 'site-verification-setting.google-site-verification', 2, 'গুগল সাইট যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1187, 'site-verification-setting.msvalidate.01', 2, 'এমএস যাচাইকরণ মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1188, 'site-verification-setting.yandex-verification', 2, 'ইয়ানডেক্স মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1189, 'site-verification-setting.p:domain_verify', 2, 'পি: ডোমেইন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1190, 'site-verification-setting.fb:admins', 2, 'ফেসবুক অ্যাডমিন মেটা মান', 'site-verification-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1191, 'fcm.fcm_private_key', 2, 'এফসিএম ব্যক্তিগত কী', 'fcm', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1192, 'fcm.fcm_public_key', 2, 'এফসিএম পাবলিক কী', 'fcm', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1193, 'fcm.fcm_status_key', 2, 'এফসিএম স্ট্যাটাস', 'fcm', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1194, 'main-setting.app_image', 2, 'অ্যাপ চিত্র', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1195, 'main-setting.app_name_short', 2, 'অ্যাপ সংক্ষিপ্ত নাম', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1196, 'main-setting.app_title', 2, 'অ্যাপ শিরোনাম', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1197, 'main-setting.app_footer_image', 2, 'অ্যাপ ফুটার চিত্র', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1198, 'main-setting.app_email', 2, 'অ্যাপ ইমেল', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1199, 'main-setting.app_about', 2, 'অ্যাপ সম্পর্কে', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1200, 'main-setting.app_tel', 2, 'অ্যাপ ফোন', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1201, 'main-setting.app_linkedin', 2, 'অ্যাপ লিঙ্কডইন লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1202, 'main-setting.app_facebook', 2, 'অ্যাপ ফেসবুক লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1203, 'main-setting.app_whatsapp', 2, 'অ্যাপ হোয়াটসঅ্যাপ নম্বর (দেশ কোড সহ)', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1204, 'main-setting.app_twitter', 2, 'অ্যাপ টুইটার লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1205, 'main-setting.app_youtube', 2, 'অ্যাপ ইউটিউব লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1206, 'main-setting.app_telegram', 2, 'অ্যাপ টেলিগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1207, 'main-setting.app_pinterest', 2, 'অ্যাপ পিন্টারেস্ট লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1208, 'main-setting.app_github', 2, 'অ্যাপ গিটহাব লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1209, 'main-setting.app_figma', 2, 'অ্যাপ ফিগমা লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1210, 'main-setting.app_website', 2, 'অ্যাপ ওয়েবসাইট লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1211, 'main-setting.app_address', 2, 'অ্যাপ ঠিকানা', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1212, 'main-setting.app_maps', 2, 'অ্যাপ মানচিত্র লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1213, 'main-setting.app_preloader_image', 2, 'অ্যাপ প্রিলোডার চিত্র', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1214, 'main-setting.app_preloader_status', 2, 'অ্যাপ প্রিলোডার স্ট্যাটাস', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1215, 'main-setting.currency_symbol', 2, 'অ্যাপ মুদ্রা প্রতীক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1216, 'main-setting.app_fav_image', 2, 'অ্যাপ ফ্যাভ আইকন', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1217, 'main-setting.app_instagram', 2, 'অ্যাপ ইনস্টাগ্রাম লিংক', 'main-setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1218, 'settings.authenticted_history', 2, 'যাচাইকৃত ইতিহাস', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1219, 'device_access_check.sidebar.list.name', 2, 'যাচাইকৃত ইতিহাস', 'device_access_check', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1220, 'settings.authenticated_list', 2, 'যাচাইকৃত ইতিহাস তালিকা', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1221, 'setting.payment-settings', 2, 'পেমেন্ট সেটিংস', 'setting', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1222, 'settings.AmarPay', 2, 'আমারপে', 'settings', NULL, 0, '2025-01-29 01:52:02', '2025-01-29 01:52:02'),
(1223, 'settings.SSLCommerz', 2, 'এসএসএলকমার্জ', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1224, 'settings.paypal', 2, 'পেপ্যাল', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1225, 'settings.status', 2, 'স্ট্যাটাস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1226, 'settings.stripe', 2, 'স্ট্রাইপ', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1227, 'settings.braintree', 2, 'ব্রেইনট্রি', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1228, 'settings.store_id', 2, 'স্টোর আইডি', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1229, 'settings.signature_key', 2, 'স্বাক্ষর কী', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1230, 'settings.store_password', 2, 'স্টোর পাসওয়ার্ড', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1231, 'settings.sandbox_status', 2, 'স্যান্ডবক্স স্ট্যাটাস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1232, 'settings.client_id', 2, 'ক্লায়েন্ট আইডি', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1233, 'settings.secret', 2, 'গোপন', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1234, 'settings.publishable', 2, 'প্রকাশযোগ্য', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1235, 'settings.merchant_id', 2, 'বণিক আইডি', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1236, 'settings.public_key', 2, 'পাবলিক কী', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1237, 'settings.private_key', 2, 'প্রাইভেট কী', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1238, 'settings.smtp_setting', 2, 'এসএমটিপি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1239, 'settings.cookie-management', 2, 'কুকি সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1240, 'settings.takto-messageing-management', 2, 'টাক.টু সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1241, 'settings.site-verification-setting', 2, 'সাইট যাচাইকরণ সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1242, 'settings.fcm', 2, 'এফসিএম সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1243, 'settings.main-setting', 2, 'মেইন সেটিংস', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1244, 'language.sidebar.name', 2, 'ভাষার সেটিংস', 'language', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1245, 'translate.sidebar.name', 2, 'অনুবাদক সেটিংস', 'translate', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1246, 'settings.language', 2, 'ভাষা', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1247, 'sidebar.settings', 2, 'সেটিংস', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1248, 'language.title', 2, 'ভাষা', 'language', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1249, 'language.add_new', 2, '+', 'language', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1250, 'log.choose_your_language', 2, 'আপনার ভাষা নির্বাচন করুন', 'log', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1251, 'log.Email', 2, 'ইমেইল', 'log', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1252, 'log.Password', 2, 'পাসওয়ার্ড', 'log', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1253, 'log.Remember_me', 2, 'আমাকে মনে রাখুন', 'log', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1254, 'log.Forgot_your_password?', 2, 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'log', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1255, 'sidebar.product_management', 2, 'পণ্য ব্যবস্থাপনা', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1256, 'settings.product_list', 2, 'পণ্য তালিকা', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1257, 'sidebar.product_create', 2, 'পণ্য তৈরি', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1258, 'sidebar.category', 2, 'শ্রেণী', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1259, 'sidebar.subcategory', 2, 'উপশ্রেণী', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1260, 'sidebar.area', 2, 'অঞ্চল', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1261, 'visit.webiste', 2, 'ওয়েবসাইট পরিদর্শন', 'visit', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1262, 'area.name', 2, 'অঞ্চল', 'area', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1263, 'products.categories', 2, 'পণ্য বিভাগ', 'products', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1264, 'product.price_by_filter', 2, 'দাম অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1265, 'product.filter_by_brand', 2, 'ব্র্যান্ড অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1266, 'product.filter_by_rating', 2, 'রেটিং অনুযায়ী ফিল্টার', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1267, 'product.feature_product', 2, 'ফিচার পণ্য', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1268, 'frontend.call_us247', 2, 'আমাদের ২৪/৭ কল করুন', 'frontend', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1269, 'category.name', 2, 'শ্রেণী', 'category', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1270, 'category.description', 2, 'শ্রেণীর বর্ণনা', 'category', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1271, 'band.title', 2, 'ব্র্যান্ড', 'band', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1272, 'contact.front_address', 2, 'ঠিকানা', 'contact', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1273, 'contact.fornt_call_us', 2, 'আমাদের কল করুন', 'contact', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1274, 'contact.front_email_us', 2, 'আমাদের ইমেইল করুন', 'contact', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1275, 'contact.front_your_name', 2, 'আপনার নাম', 'contact', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1276, 'contact.front_your_email', 2, 'ইমেইল', 'contact', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1277, 'contact.front_message', 2, 'বার্তা', 'contact', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1278, 'contact.front_phone', 2, 'ফোন', 'contact', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1279, 'settings.courier-configration-sidebar', 2, 'কুরিয়ার কনফিগারেশন', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1280, 'settings.Walk In Delivery', 2, 'ওয়াক ইন ডেলিভারি', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1281, 'settings.EasyPost', 2, 'ইজিপোস্ট', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1282, 'settings.SteadFast', 2, 'স্টেডফাস্ট', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1283, 'settings.Others', 2, 'অন্যান্য', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1284, 'custom_js_css.custom_js_head_code', 2, 'কাস্টম স্ক্রিপ্ট হেড', 'custom_js_css', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1285, 'custom_js_css.custom_css_head_code', 2, 'কাস্টম সিএসএস হেড', 'custom_js_css', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1286, 'custom_js_css.custom_js_footer_code', 2, 'কাস্টম স্ক্রিপ্ট ফুটার', 'custom_js_css', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1287, 'custom_js_css.custom_css_footer_code', 2, 'কাস্টম সিএসএস ফুটার', 'custom_js_css', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1288, 'product.product_title', 2, 'পণ্য শিরোনাম', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1289, 'product.product_list', 2, 'পণ্য তালিকা', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1290, 'product.create', 2, 'পণ্য তৈরি', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1291, 'product.information', 2, 'পণ্যের তথ্য', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1292, 'product.landing_page_info', 2, 'ল্যান্ডিং পেজ তথ্য', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1293, 'product.variant_option', 2, 'ভেরিয়েন্ট অপশন', 'product', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1294, 'settings.custom_js_css', 2, 'কাস্টম স্ক্রিপ্ট', 'settings', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1295, 'sidebar.clear', 2, 'ক্যাশ পরিষ্কার করুন', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1296, 'sidebar.backup', 2, 'ডাটাবেস ব্যাকআপ', 'sidebar', NULL, 0, '2025-01-29 01:52:03', '2025-01-29 01:52:03'),
(1297, 'frontend.follow_us', 1, 'Follow Us', 'Follow Us', 1, 1, '2025-01-30 02:40:43', '2025-01-30 02:40:43'),
(1298, 'frontend.follow_us', 2, 'অনুসরন করুন', 'Follow Us', 1, 1, '2025-01-30 02:40:43', '2025-01-30 02:40:43');

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
(1, 'PCS', NULL, '1', '0', '0', '1', '2025-01-28 04:52:54', '2025-01-28 04:52:54');

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
(1, '305622956_502783711850396_1489379714429976062_n_1738054810126_y1y49j.jpg', 'jpg', NULL, 'Local', '1', '2025-01-28 03:00:10', '2025-01-28 03:00:10'),
(2, '7DEC3C1CF18CB59-New_electroreftech_home_appliance_nepal-1_1738056229839_x9yt8q.avif', 'avif', NULL, 'Local', '1', '2025-01-28 03:23:49', '2025-01-28 03:23:49'),
(3, 'fasdf_1738056230007_5hllqb.png', 'png', NULL, 'Local', '1', '2025-01-28 03:23:51', '2025-01-28 03:23:51'),
(4, 'sdfas-New_electroreftech_home_appliance_nepal-1_1738056231401_2lenb0.png', 'png', NULL, 'Local', '1', '2025-01-28 03:23:53', '2025-01-28 03:23:53'),
(5, 'sdf-New_electroreftech_home_appliance_nepal-1_1738056233652_070ew0.png', 'png', NULL, 'Local', '1', '2025-01-28 03:23:54', '2025-01-28 03:23:54'),
(6, 'sds_1738056234765_jtn6vn.png', 'png', NULL, 'Local', '1', '2025-01-28 03:23:55', '2025-01-28 03:23:55'),
(7, 'dsaf_1738056288491_71p8si.png', 'png', NULL, 'Local', '1', '2025-01-28 03:24:49', '2025-01-28 03:24:49'),
(8, '7DEC3C1CF18CB59-New_electroreftech_home_appliance_nepal-1_1738060217832_byywgl.png', 'png', NULL, 'Local', '1', '2025-01-28 04:30:19', '2025-01-28 04:30:19'),
(9, 'giant_117059_1738061808079_8c8r79.jpg', 'jpg', NULL, 'Local', '1', '2025-01-28 04:56:48', '2025-01-28 04:56:48'),
(10, 'giant_130954_1738061808374_5et4tl.jpg', 'jpg', NULL, 'Local', '1', '2025-01-28 04:56:48', '2025-01-28 04:56:48'),
(11, 'giant_130955_1738061808618_82h2tm.jpg', 'jpg', NULL, 'Local', '1', '2025-01-28 04:56:48', '2025-01-28 04:56:48'),
(12, 'giant_143144_1738061808855_qzlfxn.jpg', 'jpg', NULL, 'Local', '1', '2025-01-28 04:56:49', '2025-01-28 04:56:49'),
(13, '3354369876430222966.jpg', 'jpg', '214094', 'Local', '1', '2025-01-29 00:46:24', '2025-01-29 00:46:24'),
(14, '41weiw1T4sS_1738135063198_1jf9dg.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:17:41', '2025-01-29 01:17:41'),
(15, 'biggest-ceramic-city-10-300x300_1738135178304_1mmf9g.png', 'png', NULL, 'Local', '1', '2025-01-29 01:19:36', '2025-01-29 01:19:36'),
(16, 'biggest-ceramic-city-1-1-300x300_1738135192169_uobd8o.png', 'png', NULL, 'Local', '1', '2025-01-29 01:19:50', '2025-01-29 01:19:50'),
(17, '61rbeHS9kiL_1738135241625_n1c51u.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:20:40', '2025-01-29 01:20:40'),
(18, 'images_1738135312915_rugy5c.jfif', 'jfif', NULL, 'Local', '1', '2025-01-29 01:21:51', '2025-01-29 01:21:51'),
(19, 'biggest-ceramic-city-8-300x300_1738135330495_q0mdo7.png', 'png', NULL, 'Local', '1', '2025-01-29 01:22:08', '2025-01-29 01:22:08'),
(20, 'biggest-ceramic-city-300x300_1738135415869_vghizr.png', 'png', NULL, 'Local', '1', '2025-01-29 01:23:34', '2025-01-29 01:23:34'),
(21, 'ag600ga_1738135827402_xxu8ub.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:30:25', '2025-01-29 01:30:25'),
(22, 'regular-16-v-2.0_1738135881140_ublwxx.jpg', '0_1738135881140_ublwxx', NULL, 'Local', '1', '2025-01-29 01:31:19', '2025-01-29 01:31:19'),
(23, 'ag600ga_1738135903421_y1qt0n.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:31:41', '2025-01-29 01:31:41'),
(24, 'maxresdefault_1738135956454_snvdjo.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:32:34', '2025-01-29 01:32:34'),
(25, 'images (1)_1738136018398_hif29a.jfif', 'jfif', NULL, 'Local', '1', '2025-01-29 01:33:36', '2025-01-29 01:33:36'),
(26, 'reaper-lrg_1738136027391_5k5zbh.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:33:45', '2025-01-29 01:33:45'),
(27, 'quick_e_handle-480x480_1738136601524_h439ww.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:43:19', '2025-01-29 01:43:19'),
(28, '310Uw2mMINL._AC_UF1000,1000_QL80__1738136726940_q6cu7q.jpg', '_AC_UF1000,1000_QL80__1738136726940_q6cu7q', NULL, 'Local', '1', '2025-01-29 01:45:25', '2025-01-29 01:45:25'),
(29, 'Mini-Screed-480x480_1738136874764_iswvcp.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:47:53', '2025-01-29 01:47:53'),
(30, 'CIOxVZIrRZmPfHbhmkh-257339602443-sd-hq-mp4_1738137000563_w8xgyb.webp', 'webp', NULL, 'Local', '1', '2025-01-29 01:49:58', '2025-01-29 01:49:58'),
(31, 'images_1738137009131_zm43cs.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:50:07', '2025-01-29 01:50:07'),
(32, 'home appliances 01_AdobeStock_329321873_1738137121979_vcsesy.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:52:00', '2025-01-29 01:52:00'),
(33, 'pic_of_walton_hap_in_winter__1738137182692_xnw20e.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:53:01', '2025-01-29 01:53:01'),
(34, 'cq5dam.web.5000.5000_1738137208915_eossn1.jpg', 'web', NULL, 'Local', '1', '2025-01-29 01:53:27', '2025-01-29 01:53:27'),
(35, 'kitchen-appliances-history-evolution_1738137266227_qbkjc3.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:54:24', '2025-01-29 01:54:24'),
(36, 'Fashion-House-Interior-Design-34_1738137346589_ue8nba.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:55:44', '2025-01-29 01:55:44'),
(37, 'interior-louis-vuitton-fashion-house-singapore-mar-marina-bay-sands-shopping-mall-176041998_1738137381508_lup753.webp', 'webp', NULL, 'Local', '1', '2025-01-29 01:56:19', '2025-01-29 01:56:19'),
(38, 'Fashion-House-Interior-Design-8_1738137399709_5cciiu.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 01:56:38', '2025-01-29 01:56:38'),
(39, 'Fashion-House-1_1738137968708_5255l9.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:06:07', '2025-01-29 02:06:07'),
(40, '1740422_0_original_1738139589889_zkx5kg.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:33:08', '2025-01-29 02:33:08'),
(41, 'entrance-window-display_1738139971777_pts8fw.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:39:29', '2025-01-29 02:39:29'),
(42, '5540-fashion-house4_1738140011208_wvgm5i.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:40:09', '2025-01-29 02:40:09'),
(43, 'SHAPE-MY-SPACE-2-1-1024x682_1738140094833_lf2zqo.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:41:33', '2025-01-29 02:41:33'),
(44, 'a0874ef769be00766734c9d68a02719c_1738140143536_0lugyn.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:42:21', '2025-01-29 02:42:21'),
(45, 'Walton1120170709164443_1738140268770_ngtewu.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:44:26', '2025-01-29 02:44:26'),
(46, 'aa_shop_now_and_product_awarness_res_800x450_1738140320311_rvyzd5.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:45:18', '2025-01-29 02:45:18'),
(47, 'Which-home-appliances-use-the-most-electricity-new_1738140333103_wr3jce.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:45:31', '2025-01-29 02:45:31'),
(48, 'Save-Big-on-the-Top-8-Home-Appliances-on-Amazon.in__1738140380296_r97sol.jpg', 'in__1738140380296_r97sol', NULL, 'Local', '1', '2025-01-29 02:46:18', '2025-01-29 02:46:18'),
(49, 'set-home-kitchen-appliances-room-600w-2473408983_1738140462519_38m251.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:47:40', '2025-01-29 02:47:40'),
(50, 'photo_1738140472799_guhlrj.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:47:51', '2025-01-29 02:47:51'),
(51, 'realistic-household-kitchen-appliances-set_1284-26013_1738140481391_62r07n.avif', 'avif', NULL, 'Local', '1', '2025-01-29 02:47:59', '2025-01-29 02:47:59'),
(52, 'cp1_1738140499560_j3bdu9.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:48:17', '2025-01-29 02:48:17'),
(53, '81wscbEm9OL_1738140633063_x9g3pm.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:50:31', '2025-01-29 02:50:31'),
(54, 'making-homemade-desserts_1112-181_1738140701071_4apvh4.avif', 'avif', NULL, 'Local', '1', '2025-01-29 02:51:39', '2025-01-29 02:51:39'),
(55, 'images_1738140726150_rfhhx0.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:52:04', '2025-01-29 02:52:04'),
(56, '05_1738140826535_l7e2qb.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:53:44', '2025-01-29 02:53:44'),
(57, '1688649576298_1738140847890_j055wf.png', 'png', NULL, 'Local', '1', '2025-01-29 02:54:06', '2025-01-29 02:54:06'),
(58, 'garden_hand_tools_2_1738141020551_rp3f6g.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:56:58', '2025-01-29 02:56:58'),
(59, '2wopgjj8jya61_1738141033413_6nikvc.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:57:11', '2025-01-29 02:57:11'),
(60, 'web-laser-rod_1080x_1738141099415_8lmz1a.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 02:58:17', '2025-01-29 02:58:17'),
(61, 'left-image_1738141153872_oh7r2i.png', 'png', NULL, 'Local', '1', '2025-01-29 02:59:14', '2025-01-29 02:59:14'),
(62, 'right-image_1738141154168_wzvntl.png', 'png', NULL, 'Local', '1', '2025-01-29 02:59:14', '2025-01-29 02:59:14'),
(63, '1528130692448_1738141179863_viqpvl.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:59:37', '2025-01-29 02:59:37'),
(64, 'WCMS_sq_img_1738141189911_by6dsg.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:59:47', '2025-01-29 02:59:47'),
(65, '5059340086125_01i_1738141199599_t9urq7.webp', 'webp', NULL, 'Local', '1', '2025-01-29 02:59:57', '2025-01-29 02:59:57'),
(66, '3-gardening-hand-tools-from-Fiskars-brand_1738141212479_1plmr1.webp', 'webp', NULL, 'Local', '1', '2025-01-29 03:00:10', '2025-01-29 03:00:10'),
(67, 'images_1738141240574_ag6nea.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 03:00:38', '2025-01-29 03:00:38'),
(68, 'images_1738141311478_mwag4u.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 03:01:49', '2025-01-29 03:01:49'),
(69, 'hq720_1738143211693_nu3yoc.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 03:33:29', '2025-01-29 03:33:29'),
(70, 'images_1738143286947_fonesv.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 03:34:45', '2025-01-29 03:34:45'),
(71, 'images_1738143286947_fonesv.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 03:34:53', '2025-01-29 03:34:53'),
(72, 'leaf-rakes-0586-64b574ff9369a_1738143575951_vmlbqr.jpg', 'jpg', NULL, 'Local', '1', '2025-01-29 03:39:34', '2025-01-29 03:39:34'),
(73, 'skybazar bd_1738145073842_alggga.png', 'png', NULL, 'Local', '1', '2025-01-29 04:04:34', '2025-01-29 04:04:34'),
(74, 'Home Appliances_1738224083031_irr9kz.png', 'png', NULL, 'Local', '1', '2025-01-30 01:59:30', '2025-01-30 01:59:30'),
(75, '2_1738224094451_o40qvx.png', 'png', NULL, 'Local', '1', '2025-01-30 01:59:44', '2025-01-30 01:59:44'),
(76, '3_1738224100903_cmteb8.png', 'png', NULL, 'Local', '1', '2025-01-30 01:59:51', '2025-01-30 01:59:51'),
(77, '4_1738224107860_l6hv1g.png', 'png', NULL, 'Local', '1', '2025-01-30 01:59:56', '2025-01-30 01:59:56'),
(78, 'fashion_1738224112163_x0erd1.png', 'png', NULL, 'Local', '1', '2025-01-30 02:00:00', '2025-01-30 02:00:00'),
(79, 'Home Appliances_1738224116766_e5hsk7.png', 'png', NULL, 'Local', '1', '2025-01-30 02:00:04', '2025-01-30 02:00:04'),
(80, '1_1738225727219_45qx00.png', 'png', NULL, 'Local', '1', '2025-01-30 02:26:51', '2025-01-30 02:26:51'),
(81, 'ww_1738225727765_urozun.png', 'png', NULL, 'Local', '1', '2025-01-30 02:26:51', '2025-01-30 02:26:51'),
(82, 'new_1738225818101_g1y8qz.png', 'png', NULL, 'Local', '1', '2025-01-30 02:28:22', '2025-01-30 02:28:22'),
(83, '2_1738225998114_so8glb.png', 'png', NULL, 'Local', '1', '2025-01-30 02:31:25', '2025-01-30 02:31:25'),
(84, '2_1738226103916_1fik3q.png', 'png', NULL, 'Local', '1', '2025-01-30 02:33:11', '2025-01-30 02:33:11'),
(85, 'fd3455e99baa513a3c03bb170e6a6d22.jpg_720x720q80_1738231663674_1t11r8.jpg', 'jpg_720x720q80_1738231663674_1t11r8', NULL, 'Local', '1', '2025-01-30 04:05:47', '2025-01-30 04:05:47'),
(86, '2_1738231865528_gz9ffd.jpg', 'jpg', NULL, 'Local', '1', '2025-01-30 04:09:09', '2025-01-30 04:09:09'),
(87, 'WhatsApp-Image-2021-09-21-at-10.34.07-AM_1738231895344_k0bcsh.jpg', '34', NULL, 'Local', '1', '2025-01-30 04:09:39', '2025-01-30 04:09:39'),
(88, 'product-jpeg-500x500_1738231921816_jxegxi.webp', 'webp', NULL, 'Local', '1', '2025-01-30 04:10:05', '2025-01-30 04:10:05'),
(89, 'Skechers_shoes_1731391986044_1731391994648_1738231958128_hqc163.avif', 'avif', NULL, 'Local', '1', '2025-01-30 04:10:42', '2025-01-30 04:10:42'),
(90, 'SPT307-6_1738231970736_oyez3b.jpg', 'jpg', NULL, 'Local', '1', '2025-01-30 04:10:54', '2025-01-30 04:10:54'),
(91, '4FdlbUyNRE0PQjNx36fx8E0llAGOeYkVDiJZ6UYJ_1738232004120_fz0m9n.jpg', 'jpg', NULL, 'Local', '1', '2025-01-30 04:11:28', '2025-01-30 04:11:28'),
(92, 'ndncc_512_1738232111120_rrysom.webp', 'webp', NULL, 'Local', '1', '2025-01-30 04:13:14', '2025-01-30 04:13:14'),
(93, 'casual-women-shoes-500x500_1738232126840_1m7l8k.webp', 'webp', NULL, 'Local', '1', '2025-01-30 04:13:30', '2025-01-30 04:13:30'),
(94, '71u+SsPGwUL._AC_UY900__1738232170720_szryio.jpg', '_AC_UY900__1738232170720_szryio', NULL, 'Local', '1', '2025-01-30 04:14:14', '2025-01-30 04:14:14'),
(95, 'khiq1_512_1738232208912_2qr84e.webp', 'webp', NULL, 'Local', '1', '2025-01-30 04:14:52', '2025-01-30 04:14:52'),
(96, 'images_1738232235799_rqk7g0.jpg', 'jpg', NULL, 'Local', '1', '2025-01-30 04:15:19', '2025-01-30 04:15:19'),
(97, 'Hb8103df741844329a36c99c868be9892X_1738232265433_4wywvm.avif', 'avif', NULL, 'Local', '1', '2025-01-30 04:15:49', '2025-01-30 04:15:49'),
(98, '61V98P7+jiL_1738232280737_fmstxb.jpg', 'jpg', NULL, 'Local', '1', '2025-01-30 04:16:04', '2025-01-30 04:16:04');

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
(1, NULL, 'Super Admin', NULL, NULL, 'superadmin', NULL, NULL, 'super-admin', NULL, NULL, '0', '1', NULL, NULL, '0', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', 'admin@gmail.com', '2025-01-28 02:54:47', '$2y$12$MhTX2WyKjv6QTpDcFv9jQumTtj7BNI/qq1HScZpeqdAs9BPPe6ClW', NULL, 'VeGONIb8MRomk3937Upe2ncqwLpvFKHLXDO4QVZqzBcSUfPURcrBp2TdR79E', '2025-01-28 02:54:47', '2025-01-28 02:54:47');

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
(1, 45, 'red:S', '5000', '4500', '0', 1, '2025-01-30 04:08:35', '2025-01-30 04:08:35'),
(2, 45, 'red:L', '5000', '4500', '0', 1, '2025-01-30 04:08:35', '2025-01-30 04:08:35'),
(3, 45, 'yellow:S', '5000', '4500', '0', 1, '2025-01-30 04:08:35', '2025-01-30 04:08:35'),
(4, 45, 'yellow:L', '5000', '4500', '0', 1, '2025-01-30 04:08:35', '2025-01-30 04:08:35'),
(5, 46, 'red:S', '5000', '4500', '0', 1, '2025-01-30 04:09:14', '2025-01-30 04:09:14'),
(6, 46, 'red:L', '5000', '4500', '0', 1, '2025-01-30 04:09:14', '2025-01-30 04:09:14'),
(7, 46, 'yellow:S', '5000', '4500', '0', 1, '2025-01-30 04:09:14', '2025-01-30 04:09:14'),
(8, 46, 'yellow:L', '5000', '4500', '0', 1, '2025-01-30 04:09:14', '2025-01-30 04:09:14'),
(9, 47, 'red:S', '5000', '4500', '0', 1, '2025-01-30 04:09:44', '2025-01-30 04:09:44'),
(10, 47, 'red:L', '5000', '4500', '0', 1, '2025-01-30 04:09:44', '2025-01-30 04:09:44'),
(11, 47, 'yellow:S', '5000', '4500', '0', 1, '2025-01-30 04:09:44', '2025-01-30 04:09:44'),
(12, 47, 'yellow:L', '5000', '4500', '0', 1, '2025-01-30 04:09:44', '2025-01-30 04:09:44'),
(13, 48, 'red:S', '5000', '4500', '0', 1, '2025-01-30 04:10:58', '2025-01-30 04:10:58'),
(14, 48, 'red:L', '5000', '4500', '0', 1, '2025-01-30 04:10:58', '2025-01-30 04:10:58'),
(15, 48, 'yellow:S', '5000', '4500', '0', 1, '2025-01-30 04:10:58', '2025-01-30 04:10:58'),
(16, 48, 'yellow:L', '5000', '4500', '0', 1, '2025-01-30 04:10:58', '2025-01-30 04:10:58'),
(17, 49, 'red:S', '5000', '4500', '0', 1, '2025-01-30 04:11:31', '2025-01-30 04:11:31'),
(18, 49, 'red:L', '5000', '4500', '0', 1, '2025-01-30 04:11:31', '2025-01-30 04:11:31'),
(19, 49, 'yellow:S', '5000', '4500', '0', 1, '2025-01-30 04:11:31', '2025-01-30 04:11:31'),
(20, 49, 'yellow:L', '5000', '4500', '0', 1, '2025-01-30 04:11:31', '2025-01-30 04:11:31'),
(21, 50, 'red:S', '5000', '4500', '0', 1, '2025-01-30 04:14:26', '2025-01-30 04:14:26'),
(22, 50, 'red:L', '5000', '4500', '0', 1, '2025-01-30 04:14:26', '2025-01-30 04:14:26'),
(23, 50, 'yellow:S', '5000', '4500', '0', 1, '2025-01-30 04:14:26', '2025-01-30 04:14:26'),
(24, 50, 'yellow:L', '5000', '4500', '0', 1, '2025-01-30 04:14:26', '2025-01-30 04:14:26'),
(41, 51, 'yellow:41', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(40, 51, 'yellow:40', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(39, 51, 'yellow:39', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(33, 52, 'red:39', '4500', '4000', '0', 1, '2025-01-30 04:23:45', '2025-01-30 04:23:45'),
(34, 52, 'red:40', '4500', '4000', '0', 1, '2025-01-30 04:23:45', '2025-01-30 04:23:45'),
(35, 52, 'red:41', '4500', '4000', '0', 1, '2025-01-30 04:23:45', '2025-01-30 04:23:45'),
(36, 52, 'red:42', '4500', '4000', '0', 1, '2025-01-30 04:23:45', '2025-01-30 04:23:45'),
(37, 52, 'red:43', '4500', '4000', '0', 1, '2025-01-30 04:23:45', '2025-01-30 04:23:45'),
(38, 52, 'red:44', '4500', '4000', '0', 1, '2025-01-30 04:23:45', '2025-01-30 04:23:45'),
(42, 51, 'yellow:42', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(43, 51, 'yellow:42', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(44, 51, 'yellow:43', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(45, 51, 'yellow:43', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(46, 51, 'yellow:44', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08'),
(47, 51, 'yellow:44', '4500', '4000', '0', 1, '2025-01-30 04:25:08', '2025-01-30 04:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `varinat_suggessions`
--

CREATE TABLE `varinat_suggessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(125) NOT NULL,
  `title` varchar(125) DEFAULT NULL,
  `title_status` varchar(125) NOT NULL DEFAULT '1',
  `title_manage_status` varchar(125) NOT NULL DEFAULT '1',
  `sub_title` varchar(125) DEFAULT NULL,
  `sub_title_status` varchar(125) NOT NULL DEFAULT '1',
  `sub_title_manage_status` varchar(125) NOT NULL DEFAULT '1',
  `short_read_more` varchar(125) NOT NULL DEFAULT 'Read More',
  `short_read_more_page_url` varchar(125) DEFAULT NULL,
  `short_read_more_status` tinyint(1) NOT NULL DEFAULT 1,
  `short_read_more_manage_status` tinyint(1) NOT NULL DEFAULT 1,
  `view_all` varchar(125) NOT NULL DEFAULT 'See All',
  `view_all_page_url` varchar(125) DEFAULT NULL,
  `view_all_status` tinyint(1) NOT NULL DEFAULT 1,
  `view_all_manage_status` tinyint(1) NOT NULL DEFAULT 1,
  `items_per_row` int(11) NOT NULL DEFAULT 3,
  `items_show` int(11) NOT NULL DEFAULT 4,
  `items_manage_status` int(11) NOT NULL DEFAULT 0,
  `is_details_page` int(11) NOT NULL DEFAULT 0,
  `is_details_page_manage_status` int(11) NOT NULL DEFAULT 0,
  `background` varchar(125) NOT NULL DEFAULT '0',
  `background_color` varchar(125) NOT NULL DEFAULT '#eeeeee',
  `background_type` tinyint(1) NOT NULL DEFAULT 1,
  `background_manage_status` int(11) NOT NULL DEFAULT 0,
  `upload_id` varchar(125) NOT NULL DEFAULT '0',
  `upload_id_status` varchar(125) NOT NULL DEFAULT '0',
  `upload_id1` varchar(125) NOT NULL DEFAULT '0',
  `upload_id2` varchar(125) NOT NULL DEFAULT '0',
  `upload_manage_status` varchar(125) NOT NULL DEFAULT '0',
  `upload_id3` varchar(125) NOT NULL DEFAULT '0',
  `upload_manage_id3_status` varchar(125) NOT NULL DEFAULT '0',
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

INSERT INTO `varinat_suggessions` (`id`, `key`, `title`, `title_status`, `title_manage_status`, `sub_title`, `sub_title_status`, `sub_title_manage_status`, `short_read_more`, `short_read_more_page_url`, `short_read_more_status`, `short_read_more_manage_status`, `view_all`, `view_all_page_url`, `view_all_status`, `view_all_manage_status`, `items_per_row`, `items_show`, `items_manage_status`, `is_details_page`, `is_details_page_manage_status`, `background`, `background_color`, `background_type`, `background_manage_status`, `upload_id`, `upload_id_status`, `upload_id1`, `upload_id2`, `upload_manage_status`, `upload_id3`, `upload_manage_id3_status`, `order`, `status`, `creator`, `updater`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '_brand_variant._brand_style1', 'Brand Style 1', '1', '0', 'Brand Sub Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/brand_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(2, '_brand_variant._brand_style2', 'Brand Style 2', '0', '0', 'Brand Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 15, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/brand_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(3, '_contact_variant._contact_style1', 'Contact Style 1', '1', '0', 'Contact Sub Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/contact_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(4, '_category_variant._category_style1', 'Category Style 1', '0', '0', 'Category Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 12, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/category_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(5, '_category_variant._category_style2', 'Category Style 2', '0', '0', 'Category Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 12, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/category_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(6, '_hero_variant._hero_style1', 'Hero Style 1', '1', '0', 'Hero Sub Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/hero_style1.png', '0', '0', '0', '0', '0', '1', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(7, '_hero_variant._hero_style2', 'Hero Style 2', '1', '0', 'Hero Sub Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/hero_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(8, '_hero_variant._hero_style3', 'Hero Style 3', '0', '0', 'Hero Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 15, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/hero_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(9, '_hero_variant._hero_slider1', 'Hero Slider', '0', '0', 'Hero Slider', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 'uploads/preset/page_variant/hero_slider1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(10, '_product_variant._feature_product', 'Feature Product  Style 1', '0', '0', 'Category Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 4, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/feature_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(11, '_product_variant._popular_product', 'Popular Product Style 1', '0', '0', 'Category Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 6, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/popular_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(12, '_product_variant._recommended_product', 'Recommended Product Style 1', '0', '0', 'Category Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 6, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/recommended_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(13, '_product_variant._recent_product', 'Recent product Style 1', '0', '0', 'Category Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 6, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/resent_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(14, '_service_variant._service_style1', 'Service Style 1', '1', '0', 'Service Sub Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(15, '_service_variant._service_style2', 'Service Style 2', '1', '0', 'Service Sub Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(16, '_service_view_variant._service_view1', 'Service View 1', '1', '0', 'Service Sub Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(17, '_banner_card._bannar_card1', 'Banner Card 1', '0', '0', 'Service Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(18, '_banner_card._bannar_card2', 'Banner Card 2', '0', '0', 'Service Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(19, '_about_us_variant.about_us_style1', 'About page 1', '0', '0', 'About Us Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(20, '_product_details.product_details1', 'Product Details page 1', '0', '0', 'Product Details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(21, '_filter_variant.filter_vaiant1', 'Product Filter  1', '1', '0', 'Product Filter Title', '1', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(22, '_cart_variant.cart_style1', 'Product Filter  1', '0', '0', 'Product Filter Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(23, '_wishlist_variant.wish_list_style1', 'Product wishlist  1', '0', '0', 'Product wishlist Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(24, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', '0', 'Product checkout Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(25, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', '0', 'Product tracking Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(26, '_contact_us_variant.contact_us_style1', 'Contact us  1', '0', '0', 'contact us Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(27, '_register_variant.register_style1', 'Register us  1', '0', '0', 'contact us Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(28, '_404_variant.404_style1', '404 page  1', '0', '0', 'contact us Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(29, '_comming_soon.comming_soon1', 'Comming soon  1', '0', '0', 'contact us Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(30, '_blog_variant.blog_variant1', 'blog  1', '0', '0', 'blog Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(31, '_blog_details_variant.blog_details_variant1', 'Blog Details  1', '0', '0', 'Blog details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(32, '_faq_variant._faq_style1', 'Faq style  1', '0', '0', 'Blog details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(33, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', '0', 'Blog details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(34, '_profile._location.variant_1', 'profile location style  1', '0', '0', 'Blog details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(35, '_profile._cart.variant_1', 'Profile cart style  1', '0', '0', 'Blog details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(36, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', '0', 'Blog details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(37, '_variant_manage.page_title', 'Page Title style  1', '1', '0', 'Blog details Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '1', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(38, '_profile._payment_information.variant_1', 'Payment Page 1', '0', '0', 'Payment Page 1', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(39, '_profile._checkout.variant_1', 'Checkout Page 1', '0', '0', 'Checkout Page 1', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 02:54:55', '2025-01-28 02:54:55'),
(40, '_product_variant._category_wise_product', 'Category Wise Product', '0', '0', 'Category Wise Product', '0', '0', '#', '#', 1, 0, 'View All', '#', 0, 0, 6, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/category_wise_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-28 06:09:27', '2025-01-28 06:09:27'),
(41, '_variant_manage.page_title1', 'Page Title style  2', '1', '0', 'Page Title subtitle 2', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-29 01:42:43', '2025-01-29 01:42:43'),
(42, '_category_variant._category_style3', 'Category Style 3', '0', '0', 'Category Sub Title', '0', '0', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 12, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 'uploads/preset/page_variant/category_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, '2025-01-29 01:52:03', '2025-01-29 01:52:03');

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
(1, 'Include Vat', '0', '1', '0', '1', '2025-01-28 02:54:45', '2025-01-28 02:54:45'),
(2, 'Include Vat', '0', '1', '0', '1', '2025-01-28 06:09:24', '2025-01-28 06:09:24'),
(3, 'Include Vat', '0', '1', '0', '1', '2025-01-29 01:42:40', '2025-01-29 01:42:40'),
(4, 'Include Vat', '0', '1', '0', '1', '2025-01-29 01:51:59', '2025-01-29 01:51:59');

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
-- Indexes for table `order_events`
--
ALTER TABLE `order_events`
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
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
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
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cash_counters`
--
ALTER TABLE `cash_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fcms`
--
ALTER TABLE `fcms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `footer_link_headings`
--
ALTER TABLE `footer_link_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer_link_sub_headings`
--
ALTER TABLE `footer_link_sub_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_page_manages`
--
ALTER TABLE `home_page_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lead_accounts`
--
ALTER TABLE `lead_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lead_contacts`
--
ALTER TABLE `lead_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lead_deals`
--
ALTER TABLE `lead_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lead_deal_stages`
--
ALTER TABLE `lead_deal_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mail_settings`
--
ALTER TABLE `mail_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `offer_banners`
--
ALTER TABLE `offer_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_events`
--
ALTER TABLE `order_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_types`
--
ALTER TABLE `supplier_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transection_information`
--
ALTER TABLE `transection_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1299;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variant_options`
--
ALTER TABLE `variant_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `varinat_suggessions`
--
ALTER TABLE `varinat_suggessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `vats`
--
ALTER TABLE `vats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
