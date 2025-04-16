-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2025 at 07:07 AM
-- Server version: 8.3.0
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
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varinat_suggessions`
--

INSERT INTO `varinat_suggessions` (`id`, `key`, `title`, `title_status`, `title_manage_status`, `sub_title`, `sub_title_status`, `sub_title_manage_status`, `short_read_more`, `short_read_more_page_url`, `short_read_more_status`, `short_read_more_manage_status`, `view_all`, `view_all_page_url`, `view_all_status`, `view_all_manage_status`, `items_per_row`, `items_per_row_status`, `items_show`, `items_manage_status`, `is_details_page`, `is_details_page_manage_status`, `background`, `background_color`, `background_type`, `background_manage_status`, `category_manage_status`, `upload_id`, `upload_id_status`, `upload_id1`, `upload_id2`, `upload_manage_status`, `upload_id3`, `upload_manage_id3_status`, `order`, `status`, `creator`, `updater`, `permission`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '_contact_variant._contact_style1', 'Contact Style 1', '0', '1', 'Contact Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 0, 0, 20, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/contact_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(2, '_about_us_variant.about_us_style1', 'About page 1', '0', '1', 'About Us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(3, '_product_details.product_details1', 'Product Details page 1', '0', '1', 'Product Details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(4, '_filter_variant.filter_vaiant1', 'Product Filter  1', '1', '0', 'Product Filter Title', '1', '0', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 1, 0, 0, '0', '#eeeeee', 1, 1, 0, 'preset/page_variant/category_style6.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(5, '_cart_variant.cart_style1', 'Product Filter  1', '0', '1', 'Product Filter Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 1, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(6, '_wishlist_variant.wish_list_style1', 'Product wishlist  1', '0', '1', 'Product wishlist Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(7, '_checkout_variant.checkout_style1', 'Product checkout  1', '0', '1', 'Product checkout Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(8, '_tracking_variant.tracking_style1', 'Product checkout  1', '0', '1', 'Product tracking Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 1, 0, 'preset/page_variant/tracking_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(9, '_contact_us_variant.contact_us_style1', 'Contact us  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(10, '_register_variant.register_style1', 'Register us  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(11, '_404_variant.404_style1', '404 page  1', '0', '1', 'Something went wrong', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/404_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(12, '_comming_soon.comming_soon1', 'Comming soon  1', '0', '1', 'contact us Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(13, '_blog_details_variant.blog_details_variant1', 'Blog Details  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(14, '_faq_variant._faq_style1', 'Faq style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(15, '_sales_partner_commission.sales_partner1', 'Sales Partner style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(16, '_profile._location.variant_1', 'profile location style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(17, '_profile._cart.variant_1', 'Profile cart style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(18, '_profile._profile.profile_variant_1', 'Profile Profile style  1', '0', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(19, '_variant_manage.page_title', 'Page Title style  1', '1', '1', 'Blog details Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 1, 0, 'preset/page_variant/page_title1.png', '1', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-04-16 06:54:46'),
(20, '_variant_manage.page_title1', 'Page Title style  2', '1', '1', 'Page Title subtitle 2', '0', '0', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/page_title2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-04-16 06:54:46'),
(21, '_profile._payment_information.variant_1', 'Payment Page 1', '0', '1', 'Payment Page 1', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(22, '_profile._checkout.variant_1', 'Checkout Page 1', '0', '1', 'Checkout Page 1', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '1', '#eeeeee', 0, 1, 0, 'preset/page_variant/_checkout_variant_1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(23, '_order._order_form1', 'Costom Form Bluk Order', '0', '1', 'Costom Form Bluk Order Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/custom_form_bluk_order_form1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'custom_order bulk read', NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(24, '_order._order_form2', 'Custom Order', '0', '1', 'Custom Order Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/custom_order_form2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'custom_order custom read', NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(25, '_authenticate_form._login', 'Login', '0', '1', 'Login Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/custom_order_form2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(26, '_authenticate_form._registration', 'Register', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/register.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(27, '_order_success.success_style1', 'Success Page', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_order_success_success_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(28, '_profile._checkout_payment.variant_1', 'profile location style  1', '0', '1', 'Register Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/checkout_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(29, '_product_variant._feature_product', 'Feature Product  Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 4, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/feature_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(30, '_product_variant._popular_product', 'Popular Product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/popular_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(31, '_product_variant._recommended_product', 'Recommended Product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/recommended_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(32, '_product_variant._recent_product', 'Recent product Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 0, 0, 'preset/page_variant/resent_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(33, '_product_variant._category_wise_product', 'Product as Category & category Wise Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 1, '0', '#eeeeee', 1, 1, 1, 'preset/page_variant/category_wise_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(34, '_product_variant._randomize_product_category_wise', 'Product as Category & Random Wise Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 1, 1, 0, 'preset/page_variant/_randomize_product_category_wise.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(35, '_filter_variant.partials1.recent_product', 'Recent Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/recent_product.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(36, '_product_variant._category_wise_product1', 'Recent Product', '0', '1', 'Category Wise Product', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'preset/page_variant/_category_wise_product1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(37, '_product_cat_brand_wise._cat_band_wise_product', 'Category Brand', '0', '1', 'Category Wise Product ', '0', '1', '#', '#', 0, 0, 'View All', '#', 0, 0, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_cat_band_wise_product_lg.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(38, '_product_cat_brand_wise._cat_product_sm', 'Category Wise Product Small', '0', '1', 'Category Wise Product ', '0', '1', '#', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'preset/page_variant/_cat_band_wise_product_sm.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(39, '_product_service._product_only_service1', 'Product Only service style 1', '0', '1', 'Product Only service style 1', '0', '1', '#', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'preset/page_variant/_product_only_service1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(40, '_product_non_service._product_non_service1', 'Product Only Non service style 1', '0', '1', 'Product Non Only service style 1', '0', '1', '#', '#', 0, 1, 'View All', '#', 0, 1, 6, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 1, 'preset/page_variant/_product_only_non_service1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(41, '_newslater.newslater_1', 'Newslater 1', '0', '1', 'Newslater Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/newslater_1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', '', NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(42, '_blog_variant._blog_style1', 'Blog Style 1', '0', '1', 'Blog Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 3, 1, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/blog_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'blog read', NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(43, '_blog_details_variant._blog_details_style1', 'Blog Details Style 1', '0', '1', 'Blog Details Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 1, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/blog_details_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'blog read', NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(44, '_project_variant._project_style1', 'project Style 1', '0', '1', 'project Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 0, 3, 0, 4, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/project_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'project read', NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(45, '_project_details_variant._project_details_style1', 'project Details Style 1', '0', '1', 'project Details Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 1, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/project_details_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', 'project read', NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(46, '_service_variant._service_style1', 'Service Style 1', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 3, 1, 4, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/service_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-24 10:37:41'),
(47, '_service_variant._service_style2', 'Service Style 2', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/service_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(48, '_service_variant._service_style3', 'Service Style   3', '0', '1', 'Service Sub Title', '1', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/service_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(49, '_service_variant._service_style4', 'Service Style 4', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 3, 1, 4, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/service_style4.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-24 10:37:41'),
(50, '_service_variant._service_style5', 'Service Style 5', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 0, 0, 3, 0, 4, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/service_style5.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(51, '_service_view_variant._service_view1', 'Service View 1', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 1, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/service_view1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(52, '_hero_variant._hero_style1', 'Hero Style 1', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_style1.png', '0', '0', '0', '0', '0', '1', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(53, '_hero_variant._hero_style2', 'Hero Style 2', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 1, 0, 'View All', '#', 1, 0, 3, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(54, '_hero_variant._hero_style3', 'Hero Style 3', '0', '1', 'Hero Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 15, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(55, '_hero_variant._hero_slider1', 'Hero Slider', '0', '1', 'Hero Slider', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 1, 0, 0, '1', '#eeeeee', 0, 1, 0, 'preset/page_variant/hero_slider1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(56, '_hero_variant._service1', 'Hero Slider', '0', '1', 'Hero Slider', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 1, 0, 0, '1', '#eeeeee', 0, 1, 0, 'preset/page_variant/_hero_variant__service1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(57, '_banner_card._bannar_card1', 'Banner Card 1', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(58, '_banner_card._bannar_card2', 'Banner Card 2', '0', '1', 'Service Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 1, 0, 0, '0', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(59, '_category_subcategory._style1', 'Category - Subcategory Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 12, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_category_subcategory__style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(60, '_why_choose_us.why_choose_us_1', 'Why Choose Us Style 1', '0', '1', 'Why Choose Us Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_why_choose_us_1.png', '0', '0', '0', '0', '0', '1', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(61, '_category_variant._category_style1', 'Category Style 1', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 12, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(62, '_category_variant._category_style2', 'Category Style 2', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 12, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(63, '_category_variant._category_style3', 'Category Style 3', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 12, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(64, '_category_variant._category_style4', 'Category Style 4', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 12, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style4.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(65, '_category_variant._category_style5', 'Category Style 5', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 12, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style5.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(66, '_category_variant._category_style6', 'Category Style 6', '0', '1', 'Category Sub Title', '0', '1', 'Read More', '#', 0, 0, 'View All', '#', 0, 1, 12, 0, 4, 1, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/category_style6.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(67, '_brand_variant._brand_style1', 'Brand Style 1', '0', '1', 'Brand Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/brand_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(68, '_brand_variant._brand_style2', 'Brand Style 2', '0', '1', 'Brand Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/brand_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(69, '_client._style1', 'Client Style 1', '0', '1', 'Client Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/client_style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(70, '_client._style2', 'Client Style 2', '0', '1', 'Client Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 1, 0, 0, 20, 1, 0, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/client_style2.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-23 09:34:31', '2025-03-23 09:34:31'),
(71, '_service_point._style1', 'Service Point Style 1', '0', '1', 'Service Point Sub Title', '0', '1', 'Read More', '#', 0, 1, 'View All', '#', 0, 0, 12, 0, 4, 1, 1, 1, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_service_point__style1.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-03-24 04:21:51', '2025-03-24 04:35:47'),
(72, '_service_request._style1', 'Service Request Style 1', '0', '1', 'Category Sub Title', '0', '0', 'Read More', '#', 0, 1, 'View All', '#', 0, 0, 12, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/_service_request__style1.png', '0', '0', '0', '0', '0', '1', 1, '1', '0', '0', NULL, NULL, '2025-03-24 05:09:35', '2025-03-24 05:09:35'),
(73, '_variant_manage.page_title2', 'Page Title style  3', '1', '1', 'Page Title subtitle 2', '0', '0', 'Read More', '#', 0, 0, 'View All', '#', 0, 0, 0, 0, 4, 0, 0, 0, '0', '#eeeeee', 0, 1, 0, 'preset/page_variant/page_title3.png', '0', '0', '0', '0', '0', '0', 1, '1', '0', '0', NULL, NULL, '2025-04-16 06:52:00', '2025-04-16 06:54:46');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
