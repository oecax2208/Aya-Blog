-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 02:23 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdbsmp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2017-03-22 08:21:47', NULL, 'Tanisha Chan'),
(2, '2017-03-22 08:21:55', NULL, 'Callie Cardenas'),
(3, '2017-03-22 08:21:59', NULL, 'Buffy Crane'),
(4, '2017-03-22 08:22:04', NULL, 'Basil Christensen'),
(5, '2017-03-22 08:22:08', NULL, 'Simon Stone'),
(6, '2017-03-22 08:22:12', NULL, 'Josephine Deleon');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-03-22 08:08:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `created_at`, `updated_at`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`) VALUES
(1, '2017-09-23 08:02:09', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', 1),
(2, '2017-09-23 08:03:19', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Maya at Users', 1),
(3, '2017-09-23 08:06:45', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'aya@mail.dev logout', 1),
(4, '2017-09-23 08:07:25', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(5, '2017-09-23 08:18:06', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'aya@mail.dev logout', 1),
(6, '2017-09-23 08:36:21', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(7, '2017-09-23 08:36:53', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data dasboard at Statistic Builder', 1),
(8, '2017-09-23 08:50:45', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Delete the image of Maya at Users', 1),
(9, '2017-09-23 08:51:10', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Maya at Users', 1),
(10, '2017-09-23 08:51:40', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'aya@mail.dev logout', 1),
(11, '2017-09-23 09:02:51', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(12, '2017-09-23 09:16:34', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/add-save', 'Add New Data telepon at Settings', 1),
(13, '2017-09-23 09:17:08', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/add-save', 'Add New Data alamat at Settings', 1),
(14, '2017-09-23 09:19:02', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/add-save', 'Add New Data e_mail at Settings', 1),
(15, '2017-09-23 09:20:43', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/add-save', 'Add New Data header_800x800_pixel at Settings', 1),
(16, '2017-09-23 09:23:07', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/add-save', 'Add New Data copyright at Settings', 1),
(17, '2017-09-23 09:24:12', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/edit-save/21', 'Update data  at Settings', 1),
(18, '2017-09-23 09:25:10', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/add-save', 'Add New Data made_by_name at Settings', 1),
(19, '2017-09-23 10:17:32', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/template/add-save', 'Add New Data Ayawikanta at Template', 1),
(20, '2017-09-23 10:18:49', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Delete the image of Member at Users', 1),
(21, '2017-09-23 10:19:45', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Update data Mayasari at Users', 1),
(22, '2017-09-23 10:21:34', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost:8000/admin/login', 'ayawikanta@gmail.com login with IP Address 127.0.0.1', 2),
(23, '2017-09-23 10:57:38', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/delete/19', 'Delete data e_mail at Settings', 1),
(24, '2017-09-23 10:57:46', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/delete/18', 'Delete data alamat at Settings', 1),
(25, '2017-09-23 10:57:57', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/delete/17', 'Delete data telepon at Settings', 1),
(26, '2017-09-23 11:34:18', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1:8000/admin/template/edit-save/1', 'Update data Ayawikanta at Template', 1),
(27, '2017-09-23 11:56:20', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost:8000/admin/galery/add-save', 'Add New Data Mutiara at Galery', 2),
(28, '2017-09-23 11:58:15', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost:8000/admin/galery/add-save', 'Add New Data Iva at Galery', 2),
(29, '2017-09-23 11:59:28', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost:8000/admin/galery/add-save', 'Add New Data last meet at Galery', 2),
(30, '2017-09-23 12:03:22', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost:8000/admin/galery/add-save', 'Add New Data aya at Galery', 2),
(31, '2017-09-23 12:04:14', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost:8000/admin/galery/add-save', 'Add New Data 2012 at Galery', 2),
(32, '2017-09-23 19:57:02', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(33, '2017-09-23 20:41:02', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/logout', 'aya@mail.dev logout', 1),
(34, '2017-09-23 20:43:49', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3183.0 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'ayawikanta@gmail.com login with IP Address 127.0.0.1', 2),
(35, '2017-09-23 21:11:03', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost/blog/admin/logout', 'ayawikanta@gmail.com logout', 2),
(36, '2017-09-23 21:33:02', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost/blog/admin/login', 'aya@mail.dev login with IP Address ::1', 1),
(37, '2017-09-23 21:33:54', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://localhost/blog/admin/galery/add-save', 'Add New Data iva2 at Galery', 1),
(38, '2017-09-23 22:57:22', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/add-save', 'Add New Data Alvi at Galery', 1),
(39, '2017-09-23 23:44:31', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/delete/6', 'Delete data iva2 at Galery', 1),
(40, '2017-09-23 23:44:47', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/edit-save/5', 'Update data 2012 at Galery', 1),
(41, '2017-09-23 23:59:08', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/logout', 'aya@mail.dev logout', 1),
(42, '2017-09-23 23:59:23', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'ayawikanta@gmail.com login with IP Address 127.0.0.1', 2),
(43, '2017-09-23 23:59:43', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/edit-save/4', 'Update data aya at Galery', 2),
(44, '2017-09-24 03:07:47', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/edit-save/2', 'Update data Iva at Galery', 2),
(45, '2017-09-24 03:15:21', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/logout', 'ayawikanta@gmail.com logout', 2),
(46, '2017-09-24 03:15:38', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(47, '2017-09-24 03:37:57', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/template/delete-image', 'Delete the image of Ayawikanta at Template', 1),
(48, '2017-09-24 07:11:12', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/template/edit-save/1', 'Update data Ayawikanta at Template', 1),
(49, '2017-09-24 07:27:09', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/template/edit-save/1', 'Update data Ayawikanta at Template', 1),
(50, '2017-09-24 08:38:29', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/template/edit-save/1', 'Update data Ayawikanta at Template', 1),
(51, '2017-09-24 10:40:23', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/logout', ' logout', NULL),
(52, '2017-09-24 11:39:32', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(53, '2017-09-24 15:45:14', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/template/edit-save/1', 'Update data Ayawikanta at Template', 1),
(54, '2017-09-24 15:46:42', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/settings/delete/20', 'Delete data header_800x800_pixel at Settings', 1),
(55, '2017-09-24 16:44:55', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'ayawikanta@gmail.com login with IP Address 127.0.0.1', 2),
(56, '2017-09-24 16:45:33', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/edit-save/3', 'Update data last meet at Galery', 2),
(57, '2017-09-24 16:45:49', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/edit-save/1', 'Update data Mutiara at Galery', 2),
(58, '2017-09-24 16:46:54', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/add-save', 'Add New Data aya at Galery', 2),
(59, '2017-09-24 16:50:49', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/galery/add-save', 'Add New Data aya at Galery', 2),
(60, '2017-09-24 18:46:19', NULL, '192.168.4.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 'http://192.168.4.48/blog/public/admin/login', 'ayawikanta@gmail.com login with IP Address 192.168.4.1', 2),
(61, '2017-09-24 19:42:14', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/logout', 'ayawikanta@gmail.com logout', 2),
(62, '2017-09-24 19:42:29', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(63, '2017-09-24 19:56:04', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/logout', 'aya@mail.dev logout', 1),
(64, '2017-09-24 22:00:27', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1:2020/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(65, '2017-09-24 22:11:06', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(66, '2017-09-24 22:12:12', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://b0e51309.ngrok.io/admin/login', 'ayawikanta@gmail.com login with IP Address 127.0.0.1', 2),
(67, '2017-09-24 22:58:28', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 'http://b0e51309.ngrok.io/admin/logout', 'ayawikanta@gmail.com logout', 2),
(68, '2017-10-12 19:06:40', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', 'http://fadil.bnet.id/admin/login', 'aya@mail.dev login with IP Address 103.73.72.158', 1),
(69, '2017-10-12 19:15:49', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', 'http://fadil.bnet.id/admin/project/add-save', 'Add New Data Absen at Project', 1),
(70, '2017-10-12 19:16:09', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', 'http://fadil.bnet.id/admin/project/add-save', 'Add New Data BNet Hotspot at Project', 1),
(71, '2017-10-16 00:34:40', NULL, '103.73.72.158', 'secret', 'http://fadil.bnet.id/admin/login', 'aya@mail.dev login with IP Address 103.73.72.158', 1),
(72, '2017-10-16 00:36:09', NULL, '103.73.72.158', 'secret', 'http://fadil.bnet.id/admin/posts/add-save', 'Add New Data Testing at Posts', 1),
(73, '2017-10-16 00:38:49', NULL, '103.73.72.158', 'secret', 'http://fadil.bnet.id/admin/posts/edit-save/7', 'Update data Testing at Posts', 1),
(74, '2017-10-16 00:39:29', NULL, '103.73.72.158', 'secret', 'http://fadil.bnet.id/admin/posts/edit-save/7', 'Update data Testing at Posts', 1),
(75, '2017-10-16 00:48:17', NULL, '103.73.72.158', 'secret', 'http://fadil.bnet.id/admin/users/delete-image', 'Delete the image of Maya at Users', 1),
(76, '2017-10-16 00:48:36', NULL, '103.73.72.158', 'secret', 'http://fadil.bnet.id/admin/users/edit-save/1', 'Update data Maya at Users', 1),
(77, '2017-10-16 03:47:04', NULL, '103.73.72.158', 'Mozilla/5.0 (Linux; U; Android 5.0.2; en-US; Redmi Note 2 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/40.0.2214.89 UCBrowser/11.4.6.1017 Mobile Safari/537.36', 'http://fadil.bnet.id/admin/login', 'aya@mail.dev login with IP Address 103.73.72.158', 1),
(78, '2017-10-16 03:51:28', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://fadil.bnet.id/admin/login', 'aya@mail.dev login with IP Address 103.73.72.158', 1),
(79, '2017-10-16 03:52:33', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://fadil.bnet.id/admin/users/delete-image', 'Delete the image of Maya at Users', 1),
(80, '2017-10-16 03:52:51', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://fadil.bnet.id/admin/users/edit-save/1', 'Update data Maya at Users', 1),
(81, '2017-10-17 00:01:25', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', 'http://fadil.bnet.id/admin/login', 'aya@mail.dev login with IP Address 103.73.72.158', 1),
(82, '2017-10-17 00:02:16', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', 'http://fadil.bnet.id/admin/posts/add-save', 'Add New Data https://themegrill.com/blog/free-responsive-magazine-wordpress-themes/ at Posts', 1),
(83, '2017-10-17 00:02:25', NULL, '103.73.72.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', 'http://fadil.bnet.id/admin/logout', 'aya@mail.dev logout', 1),
(84, '2018-06-23 06:19:31', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(85, '2018-07-05 06:39:48', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(86, '2018-09-07 01:44:09', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(87, '2018-09-08 01:53:21', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://127.0.0.1/blog/public/admin/logout', ' logout', NULL),
(88, '2018-10-03 07:29:52', NULL, '169.254.25.107', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', 'http://169.254.239.114/blog/public/admin/login', 'aya@mail.dev login with IP Address 169.254.25.107', 1),
(89, '2018-10-07 11:07:01', NULL, '192.168.173.132', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20120101 Firefox/33.0', 'http://192.168.173.132/blog/public/admin/login', 'aya@mail.dev login with IP Address 192.168.173.132', 1),
(90, '2018-10-07 11:14:18', NULL, '192.168.173.132', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20120101 Firefox/33.0', 'http://192.168.173.132/blog/public/admin/logout', 'aya@mail.dev logout', 1),
(91, '2018-12-29 13:12:33', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(92, '2018-12-30 10:29:40', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1/blog/public/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(93, '2019-01-12 21:27:02', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://aya.cinta/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(94, '2019-02-08 17:15:17', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://aya.cinta/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(95, '2019-02-08 17:16:28', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://aya.cinta/admin/logout', 'aya@mail.dev logout', 1),
(96, '2019-03-03 05:45:20', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(97, '2019-03-03 05:52:33', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/template/edit-save/1', 'Update data Ayawikanta at Template', 1),
(98, '2019-03-03 05:52:33', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/template/edit-save/1', 'Update data Ayawikanta at Template', 1),
(99, '2019-03-03 05:55:54', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/logout', 'aya@mail.dev logout', 1),
(100, '2019-03-03 05:55:54', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/logout', 'aya@mail.dev logout', 1),
(101, '2019-03-03 05:56:40', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(102, '2019-03-03 05:56:54', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/logout', 'aya@mail.dev logout', 1),
(103, '2019-03-03 05:58:49', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/login', 'aya@mail.dev login with IP Address 127.0.0.1', 1),
(104, '2019-03-03 06:01:41', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://aya.cinta/admin/logout', 'aya@mail.dev logout', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Categories', 'Route', 'AdminCategoriesControllerGetIndex', NULL, 'fa fa-tags', 0, 1, 0, 1, 1, '2017-03-22 08:21:18', NULL),
(2, 'Posts', 'Route', 'AdminPostsControllerGetIndex', NULL, 'fa fa-file-text-o', 0, 1, 0, 1, 2, '2017-03-22 08:22:41', NULL),
(4, 'Galery', 'Route', 'AdminGaleryControllerGetIndex', NULL, 'fa fa-signal', 0, 1, 0, 1, 3, '2017-09-23 09:59:55', NULL),
(5, 'Template', 'Route', 'AdminTemplateControllerGetIndex', NULL, 'fa fa-home', 0, 1, 0, 1, 4, '2017-09-23 10:08:56', NULL),
(6, 'Categories', 'Route', 'AdminCategoriesControllerGetIndex', 'normal', 'fa fa-tags', 0, 1, 0, 2, 1, '2017-09-23 10:20:39', NULL),
(7, 'Galery', 'Route', 'AdminGaleryControllerGetIndex', 'normal', 'fa fa-signal', 0, 1, 0, 2, 2, '2017-09-23 10:20:39', NULL),
(8, 'Posts', 'Route', 'AdminPostsControllerGetIndex', 'normal', 'fa fa-file-text-o', 0, 1, 0, 2, 3, '2017-09-23 10:20:39', NULL),
(9, 'Template', 'Route', 'AdminTemplateControllerGetIndex', 'normal', 'fa fa-home', 0, 1, 0, 2, 4, '2017-09-23 10:20:39', NULL),
(10, 'Project', 'Route', 'AdminProjectControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 5, '2017-10-12 19:09:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `created_at`, `updated_at`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`) VALUES
(1, '2017-03-22 08:08:13', NULL, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1),
(2, '2017-03-22 08:08:13', NULL, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1),
(3, '2017-03-22 08:08:13', NULL, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1),
(4, '2017-03-22 08:08:13', NULL, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1),
(5, '2017-03-22 08:08:13', NULL, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1),
(6, '2017-03-22 08:08:13', NULL, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1),
(7, '2017-03-22 08:08:13', NULL, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1),
(8, '2017-03-22 08:08:13', NULL, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1),
(9, '2017-03-22 08:08:13', NULL, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1),
(10, '2017-03-22 08:08:13', NULL, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1),
(11, '2017-03-22 08:08:13', NULL, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1),
(12, '2017-03-22 08:21:18', NULL, 'Categories', 'fa fa-tags', 'categories', 'categories', 'AdminCategoriesController', 0, 0),
(13, '2017-03-22 08:22:41', NULL, 'Posts', 'fa fa-file-text-o', 'posts', 'posts', 'AdminPostsController', 0, 0),
(14, '2017-09-23 09:59:55', NULL, 'Galery', 'fa fa-image', 'galery', 'galery', 'AdminGaleryController', 0, 0),
(15, '2017-09-23 10:08:55', NULL, 'Template', 'fa fa-home', 'template', 'tenplate', 'AdminTemplateController', 0, 0),
(16, '2017-10-12 19:09:48', NULL, 'Project', 'fa fa-glass', 'project', 'project', 'AdminProjectController', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`) VALUES
(1, '2017-03-22 08:08:13', NULL, 'Super Administrator', 1, 'skin-red'),
(2, NULL, NULL, 'Member', 0, 'skin-blue');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(1, '2017-03-22 08:08:13', NULL, 1, 0, 0, 0, 0, 1, 1),
(2, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 2),
(3, '2017-03-22 08:08:13', NULL, 0, 1, 1, 1, 1, 1, 3),
(4, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 4),
(5, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 5),
(6, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 6),
(7, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 7),
(8, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 8),
(9, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 9),
(10, '2017-03-22 08:08:13', NULL, 1, 1, 1, 1, 1, 1, 10),
(11, '2017-03-22 08:08:13', NULL, 1, 0, 1, 0, 1, 1, 11),
(12, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(13, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(15, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(16, NULL, NULL, 1, 1, 1, 1, 1, 1, 15),
(17, NULL, NULL, 1, 1, 1, 1, 1, 2, 12),
(18, NULL, NULL, 1, 1, 1, 1, 1, 2, 14),
(19, NULL, NULL, 1, 1, 1, 1, 1, 2, 13),
(20, NULL, NULL, 1, 0, 1, 1, 0, 2, 15),
(21, NULL, NULL, 1, 1, 1, 1, 1, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `created_at`, `updated_at`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `group_setting`, `label`) VALUES
(1, '2017-03-22 08:08:13', NULL, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Background Color'),
(2, '2017-03-22 08:08:13', NULL, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Font Color'),
(3, '2017-03-22 08:08:13', NULL, 'login_background_image', 'uploads/2019-03/126d8079b7439137a4245964bd417d75.JPG', 'upload_image', NULL, NULL, 'Login Register Style', 'Login Background Image'),
(4, '2017-03-22 08:08:13', NULL, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, 'Email Setting', 'Email Sender'),
(5, '2017-03-22 08:08:13', NULL, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, 'Email Setting', 'Mail Driver'),
(6, '2017-03-22 08:08:13', NULL, 'smtp_host', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Host'),
(7, '2017-03-22 08:08:13', NULL, 'smtp_port', '25', 'text', NULL, 'default 25', 'Email Setting', 'SMTP Port'),
(8, '2017-03-22 08:08:13', NULL, 'smtp_username', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Username'),
(9, '2017-03-22 08:08:13', NULL, 'smtp_password', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Password'),
(10, '2017-03-22 08:08:13', NULL, 'appname', 'Aya CMS', 'text', NULL, NULL, 'Application Setting', 'Application Name'),
(11, '2017-03-22 08:08:13', NULL, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size'),
(12, '2017-03-22 08:08:13', NULL, 'logo', 'uploads/2019-03/70f1c6e08b5df8917f11270502f0b168.JPG', 'upload_image', NULL, NULL, 'Application Setting', 'Logo'),
(13, '2017-03-22 08:08:13', NULL, 'favicon', 'uploads/2017-09/772ffdf6e5212c87d8c9f2373fb6e864.jpg', 'upload_image', NULL, NULL, 'Application Setting', 'Favicon'),
(14, '2017-03-22 08:08:13', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL, 'Application Setting', 'API Debug Mode'),
(15, '2017-03-22 08:08:13', NULL, 'google_api_key', 'AIzaSyAe0tvyvnxE6wMIwxpWBGL8CyTM1Q4CUhQ', 'text', NULL, NULL, 'Application Setting', 'Google API Key'),
(16, '2017-03-22 08:08:13', NULL, 'google_fcm_key', NULL, 'text', NULL, NULL, 'Application Setting', 'Google FCM Key'),
(21, '2017-09-23 09:23:07', '2017-09-23 09:24:12', 'copyright', 'oecax_bond@windowslive.com', 'email', '', 'E- mail Pembuat', 'Application Setting', 'Made By E-mail'),
(22, '2017-09-23 09:25:10', NULL, 'made_by_name', 'Oecax Bond', 'text', '', 'Nama  Pembuat', 'Application Setting', 'Made By Name');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dasboard', 'dasboard', '2017-09-23 08:36:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `status`) VALUES
(1, '2017-03-22 08:08:13', '2017-10-16 03:52:51', 'Maya', 'uploads/2017-10/75c84d4d6204f4cc60627f882c620948.jpeg', 'aya@mail.dev', '$2y$10$y24NgiOdCS/GilVuedvDduOqgBVJZXnImMwkzubgzmc2yshhMKCVa', 1, 'Active'),
(2, '2017-03-22 08:32:20', '2017-09-23 10:19:45', 'Mayasari', 'uploads/2017-09/907f42b2b5f50bd3ed9ef535a39a66e4.jpeg', 'ayawikanta@gmail.com', '$2y$10$HUbeAmUxGbpsSDkykGkyFeTN0nYb5EXvhhXi1lYV.xmYCjKAje/uS', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cms_users_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id`, `slug`, `title`, `photo`, `tags`, `cms_users_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mutiara', 'uploads/2017-09/7ee20b82771d2f839d5e8a91a4600214.jpg', 'Mutiara', 2, '2017-09-23 11:56:20', '2017-09-24 16:45:49'),
(2, NULL, 'Iva', 'uploads/2017-09/76297337a8f8dc42d9cca8b648b268a6.jpg', 'satriva', 2, '2017-09-23 11:58:15', '2017-09-24 03:07:47'),
(3, NULL, 'last meet', 'uploads/2017-09/2d0e76144870e50ed6ae5d3846041f47.jpg', 'lass', 2, '2017-09-23 11:59:28', '2017-09-24 16:45:33'),
(4, NULL, 'aya', 'uploads/2017-09/3a16dd4147674ae164c0f002fda2b238.jpeg', 'aya cantik', 2, '2017-09-23 12:03:21', '2017-09-23 23:59:43'),
(5, NULL, '2012', 'uploads/2017-09/50582a46b0af6d69c8ce3775ced940f2.jpg', 'aya 2012', 1, '2017-09-23 12:04:14', '2017-09-23 23:44:47'),
(7, NULL, 'Alvi', 'uploads/2017-09/9cd56dcf0bf76d90607f8e169f7ab9d6.jpg', 'alvi', 1, '2017-09-23 22:57:21', NULL),
(8, NULL, 'aya', 'uploads/2017-09/d6cf5e12c2183170a34deed56834b0f3.jpg', 'aya cantik', 2, '2017-09-24 16:46:54', NULL),
(9, NULL, 'aya', 'uploads/2017-09/90e9b5abd58837f392105c9daec1b1a9.jpg', 'aya cantik', 2, '2017-09-24 16:50:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_152014_add_table_cms_privileges', 1),
(5, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(6, '2016_08_07_152320_add_table_cms_settings', 1),
(7, '2016_08_07_152421_add_table_cms_users', 1),
(8, '2016_08_07_154624_add_table_cms_moduls', 1),
(9, '2016_08_17_225409_add_status_cms_users', 1),
(10, '2016_08_20_125418_add_table_cms_notifications', 1),
(11, '2016_09_04_033706_add_table_cms_email_queues', 1),
(12, '2016_09_16_035347_add_group_setting', 1),
(13, '2016_09_16_045425_add_label_setting', 1),
(14, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(15, '2016_10_01_141740_add_method_type_apicustom', 1),
(16, '2016_10_01_141846_add_parameters_apicustom', 1),
(17, '2016_10_01_141934_add_responses_apicustom', 1),
(18, '2016_10_01_144826_add_table_apikey', 1),
(19, '2016_11_14_141657_create_cms_menus', 1),
(20, '2016_11_15_132350_create_cms_email_templates', 1),
(21, '2016_11_15_190410_create_cms_statistics', 1),
(22, '2016_11_17_102740_create_cms_statistic_components', 1),
(23, '2017_03_22_151742_create_categories', 1),
(24, '2017_03_22_151903_create_posts', 1),
(25, '2017_09_23_162658_galery', 2),
(26, '2017_09_23_164930_template', 2),
(28, '2017_10_13_020348_project', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cms_users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `categories_id`, `title`, `slug`, `content`, `tags`, `cms_users_id`) VALUES
(1, '2017-03-22 08:26:08', '2017-03-22 08:31:09', 1, 'Et quo atque excepturi enim facilis tempora ut cumque doloremque exerc', 'et-quo-atque-excepturi-enim-facilis-tempora-ut-cumque-doloremque-exerc', '<p><img src=\"http://localhost/crudbooster/simple-blog/public/uploads/2017-03/e2798e870039cef9b42e904590159cef.jpg\"><br></p><p>Est facere ex quia quod fugit, quia ipsa, odio molestiae aperiam quia minus voluptatem. Rem adipisci aut dolore molestiae saepe sint, consequat. Eum veritatis minus quia ex maiores ullamco nisi nesciunt, consequatur? Commodi ut laborum fuga. Quasi perspiciatis, sed qui impedit, nostrud error nulla optio, reprehenderit consequatur exercitationem harum ut ratione tempore, qui tenetur a placeat, beatae perspiciatis, alias enim omnis.</p><p>Est facere ex quia quod fugit, quia ipsa, odio molestiae aperiam quia minus voluptatem. Rem adipisci aut dolore molestiae saepe sint, consequat. Eum veritatis minus quia ex maiores ullamco nisi nesciunt, consequatur? Commodi ut laborum fuga. Quasi perspiciatis, sed qui impedit, nostrud error nulla optio, reprehenderit consequatur exercitationem harum ut ratione tempore, qui tenetur a placeat, beatae perspiciatis, alias enim omnis.</p><p>Est facere ex quia quod fugit, quia ipsa, odio molestiae aperiam quia minus voluptatem. Rem adipisci aut dolore molestiae saepe sint, consequat. Eum veritatis minus quia ex maiores ullamco nisi nesciunt, consequatur? Commodi ut laborum fuga. Quasi perspiciatis, sed qui impedit, nostrud error nulla optio, reprehenderit consequatur exercitationem harum ut ratione tempore, qui tenetur a placeat, beatae perspiciatis, alias enim omnis.<br></p>', 'lorem, ipsum, dolor sit, amet', 1),
(2, '2017-03-22 08:28:32', '2017-03-22 08:31:00', 1, 'Placeat velit et qui adipisci aut nisi fuga Nemo', 'placeat-velit-et-qui-adipisci-aut-nisi-fuga-nemo', '<p><img src=\"http://localhost/crudbooster/simple-blog/public/uploads/2017-03/4f16b6111dc7fc9772e9d477c7464c86.jpg\"><br></p><p>Iste et iste aliquip proident, omnis modi dolorum quis non fugit, omnis ut qui sunt amet, numquam deserunt ut repudiandae omnis minus Nam atque dignissimos et ut repellendus. Mollitia quod minus non sit, laborum. Iste sint non dignissimos dolor rerum officia et quia eaque voluptas autem blanditiis possimus, libero quos recusandae. Fuga. Molestiae asperiores omnis duis qui illo nisi asperiores voluptate ipsum, ipsam quidem occaecat sed rerum sit id aut nobis non ea ad sit magnam vitae ratione amet, modi.</p><p>Iste et iste aliquip proident, omnis modi dolorum quis non fugit, omnis ut qui sunt amet, numquam deserunt ut repudiandae omnis minus Nam atque dignissimos et ut repellendus. Mollitia quod minus non sit, laborum. Iste sint non dignissimos dolor rerum officia et quia eaque voluptas autem blanditiis possimus, libero quos recusandae. Fuga. Molestiae asperiores omnis duis qui illo nisi asperiores voluptate ipsum, ipsam quidem occaecat sed rerum sit id aut nobis non ea ad sit magnam vitae ratione amet, modi.</p><p>Iste et iste aliquip proident, omnis modi dolorum quis non fugit, omnis ut qui sunt amet, numquam deserunt ut repudiandae omnis minus Nam atque dignissimos et ut repellendus. Mollitia quod minus non sit, laborum. Iste sint non dignissimos dolor rerum officia et quia eaque voluptas autem blanditiis possimus, libero quos recusandae. Fuga. Molestiae asperiores omnis duis qui illo nisi asperiores voluptate ipsum, ipsam quidem occaecat sed rerum sit id aut nobis non ea ad sit magnam vitae ratione amet, modi.<br></p>', 'Quasi,et pariatur, Amet excepteur, non cupiditate, nulla porro', 1),
(3, '2017-03-22 08:29:28', '2017-03-22 08:30:52', 3, 'Dolores id voluptas quia ut ratione earum qui est itaque fugiat repre', 'dolores-id-voluptas-quia-ut-ratione-earum-qui-est-itaque-fugiat-repre', '<p><img src=\"http://localhost/crudbooster/simple-blog/public/uploads/2017-03/bd8beecaf2e97a1765bec8069ce5efa2.jpg\"><br></p><p>Ea esse, hic a doloremque pariatur. Architecto non est qui omnis soluta doloribus et dolorem quia quo in veniam, sequi aperiam officiis velit minima quae rem expedita eum quae adipisci et alias qui consectetur, sit, natus reprehenderit neque est proident, et sit aute praesentium sed nulla cupiditate aliquip possimus, quia maxime quos elit, proident, quisquam accusantium unde fuga. Ex cupiditate enim voluptatum incididunt veniam, esse quam quas asperiores doloribus blanditiis est, animi, ut culpa cumque aspernatur.</p><p>Ea esse, hic a doloremque pariatur. Architecto non est qui omnis soluta doloribus et dolorem quia quo in veniam, sequi aperiam officiis velit minima quae rem expedita eum quae adipisci et alias qui consectetur, sit, natus reprehenderit neque est proident, et sit aute praesentium sed nulla cupiditate aliquip possimus, quia maxime quos elit, proident, quisquam accusantium unde fuga. Ex cupiditate enim voluptatum incididunt veniam, esse quam quas asperiores doloribus blanditiis est, animi, ut culpa cumque aspernatur.</p><p>Ea esse, hic a doloremque pariatur. Architecto non est qui omnis soluta doloribus et dolorem quia quo in veniam, sequi aperiam officiis velit minima quae rem expedita eum quae adipisci et alias qui consectetur, sit, natus reprehenderit neque est proident, et sit aute praesentium sed nulla cupiditate aliquip possimus, quia maxime quos elit, proident, quisquam accusantium unde fuga. Ex cupiditate enim voluptatum incididunt veniam, esse quam quas asperiores doloribus blanditiis est, animi, ut culpa cumque aspernatur.</p>', 'Autem, dignissimo,s ea aliquid, aut', 1),
(4, '2017-03-22 08:34:17', NULL, 1, 'Sed in aut nisi qui aute veniam rerum excepteur non ex', 'sed-in-aut-nisi-qui-aute-veniam-rerum-excepteur-non-ex', '<p><img src=\"http://localhost/crudbooster/simple-blog/public/uploads/2017-03/3107a3be131adb53ece2a8d931020d21.jpeg\"><br></p><p>Delectus, incididunt cillum consequatur, voluptas molestiae sapiente dolore odit in quae illum, nesciunt, eaque vel cillum aut id nisi quia dolor ducimus, maxime necessitatibus enim eveniet, accusantium omnis dolorum dolorem id ex assumenda elit, ex et et voluptatem commodi et fugiat, consectetur soluta officia sed hic non dolorem aut velit et sint porro aut voluptatum.</p><p>Delectus, incididunt cillum consequatur, voluptas molestiae sapiente dolore odit in quae illum, nesciunt, eaque vel cillum aut id nisi quia dolor ducimus, maxime necessitatibus enim eveniet, accusantium omnis dolorum dolorem id ex assumenda elit, ex et et voluptatem commodi et fugiat, consectetur soluta officia sed hic non dolorem aut velit et sint porro aut voluptatum.</p><p>Delectus, incididunt cillum consequatur, voluptas molestiae sapiente dolore odit in quae illum, nesciunt, eaque vel cillum aut id nisi quia dolor ducimus, maxime necessitatibus enim eveniet, accusantium omnis dolorum dolorem id ex assumenda elit, ex et et voluptatem commodi et fugiat, consectetur soluta officia sed hic non dolorem aut velit et sint porro aut voluptatum.</p><p>Delectus, incididunt cillum consequatur, voluptas molestiae sapiente dolore odit in quae illum, nesciunt, eaque vel cillum aut id nisi quia dolor ducimus, maxime necessitatibus enim eveniet, accusantium omnis dolorum dolorem id ex assumenda elit, ex et et voluptatem commodi et fugiat, consectetur soluta officia sed hic non dolorem aut velit et sint porro aut voluptatum.<br></p>', 'Alias consequatur, sit illum numquam, dignissimos molestiae dolore', 2),
(5, '2017-03-22 08:35:09', NULL, 2, 'Odio omnis praesentium expedita et assumenda aperiam ea tempore duis', 'odio-omnis-praesentium-expedita-et-assumenda-aperiam-ea-tempore-duis', '<p><img src=\"http://localhost/crudbooster/simple-blog/public/uploads/2017-03/0c206678e2238a0a4b7ff083f412818f.jpg\"><br></p><p>Qui veniam, cillum incididunt non Nam animi, illo nemo est, esse omnis illum, quo quis id voluptatibus reiciendis ea in maxime aut amet, rerum consequat. Est expedita velit, suscipit et qui quo quaerat neque magnam esse, labore quisquam quasi aliquip commodi voluptatem necessitatibus pariatur. Temporibus hic eaque dolore atque non nostrud repudiandae deserunt et omnis sint voluptate nemo nisi facilis perspiciatis, vel voluptatem. Quod eum est, consequat. Amet, molestiae nihil odio autem dolorem perspiciatis, molestias voluptate ex dolorum sit ullamco a in veniam, officiis aliquam natus quaerat dolore minim quia dolor.</p><p>Qui veniam, cillum incididunt non Nam animi, illo nemo est, esse omnis illum, quo quis id voluptatibus reiciendis ea in maxime aut amet, rerum consequat. Est expedita velit, suscipit et qui quo quaerat neque magnam esse, labore quisquam quasi aliquip commodi voluptatem necessitatibus pariatur. Temporibus hic eaque dolore atque non nostrud repudiandae deserunt et omnis sint voluptate nemo nisi facilis perspiciatis, vel voluptatem. Quod eum est, consequat. Amet, molestiae nihil odio autem dolorem perspiciatis, molestias voluptate ex dolorum sit ullamco a in veniam, officiis aliquam natus quaerat dolore minim quia dolor.</p><p>Qui veniam, cillum incididunt non Nam animi, illo nemo est, esse omnis illum, quo quis id voluptatibus reiciendis ea in maxime aut amet, rerum consequat. Est expedita velit, suscipit et qui quo quaerat neque magnam esse, labore quisquam quasi aliquip commodi voluptatem necessitatibus pariatur. Temporibus hic eaque dolore atque non nostrud repudiandae deserunt et omnis sint voluptate nemo nisi facilis perspiciatis, vel voluptatem. Quod eum est, consequat. Amet, molestiae nihil odio autem dolorem perspiciatis, molestias voluptate ex dolorum sit ullamco a in veniam, officiis aliquam natus quaerat dolore minim quia dolor.<br></p>', 'In rem, deserunt minus, non itaque voluptatem, mollit ipsum quis, quis reiciendis', 2),
(6, '2017-03-22 08:36:00', NULL, 3, 'Aut autem adipisci et aut aspernatur dolor culpa error voluptatem', 'aut-autem-adipisci-et-aut-aspernatur-dolor-culpa-error-voluptatem', '<p><img src=\"http://localhost/crudbooster/simple-blog/public/uploads/2017-03/e60ffe8bbf66e07232c0db9ccf7c1bf9.jpg\"><br></p><p>Sit, ex iusto nobis dolor eum magni harum consequatur? Quo sunt sed fuga. Ipsa, dolores dignissimos ratione vitae iusto a molestias officia corrupti, Nam quam labore est, culpa explicabo. Corporis quis assumenda nesciunt, reprehenderit velit, irure rerum nobis maiores laborum. Reprehenderit, magna dolor quaerat a dolores et eu nesciunt, sit velit eius amet, necessitatibus illum, ut rerum velit, et quae consequatur.</p><p>Sit, ex iusto nobis dolor eum magni harum consequatur? Quo sunt sed fuga. Ipsa, dolores dignissimos ratione vitae iusto a molestias officia corrupti, Nam quam labore est, culpa explicabo. Corporis quis assumenda nesciunt, reprehenderit velit, irure rerum nobis maiores laborum. Reprehenderit, magna dolor quaerat a dolores et eu nesciunt, sit velit eius amet, necessitatibus illum, ut rerum velit, et quae consequatur.</p><p>Sit, ex iusto nobis dolor eum magni harum consequatur? Quo sunt sed fuga. Ipsa, dolores dignissimos ratione vitae iusto a molestias officia corrupti, Nam quam labore est, culpa explicabo. Corporis quis assumenda nesciunt, reprehenderit velit, irure rerum nobis maiores laborum. Reprehenderit, magna dolor quaerat a dolores et eu nesciunt, sit velit eius amet, necessitatibus illum, ut rerum velit, et quae consequatur.</p><p>Sit, ex iusto nobis dolor eum magni harum consequatur? Quo sunt sed fuga. Ipsa, dolores dignissimos ratione vitae iusto a molestias officia corrupti, Nam quam labore est, culpa explicabo. Corporis quis assumenda nesciunt, reprehenderit velit, irure rerum nobis maiores laborum. Reprehenderit, magna dolor quaerat a dolores et eu nesciunt, sit velit eius amet, necessitatibus illum, ut rerum velit, et quae consequatur.<br></p>', 'Sunt veniam, lorem', 2),
(7, '2017-10-16 00:36:09', '2017-10-16 00:39:29', 3, 'Testing', 'testing', '<p><img src=\"http://fadil.bnet.id/uploads/2017-10/4ea86a0569b081a1ef9bee2ae6c934c4.php\"><img src=\"http://fadil.bnet.id/uploads/2017-10/57a02906671d554769e20cc5f2de0d23.php\"><img src=\"http://fadil.bnet.id/uploads/2017-10/d7f266484240df8c0a86c71cdf5759aa.PHP\"><br></p>', 'Testing', 1),
(8, '2017-10-17 00:02:16', NULL, 1, 'https://themegrill.com/blog/free-responsive-magazine-wordpress-themes/', 'httpsthemegrillcomblogfree-responsive-magazine-wordpress-themes', '<p>https://themegrill.com/blog/free-responsive-magazine-wordpress-themes/<br></p>', 'budi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `created_at`, `updated_at`, `name`, `alamat`) VALUES
(1, '2017-10-12 19:15:49', NULL, 'Absen', 'absen.bnet.id'),
(2, '2017-10-12 19:16:09', NULL, 'BNet Hotspot', 'user.bnet.id');

-- --------------------------------------------------------

--
-- Table structure for table `tenplate`
--

CREATE TABLE `tenplate` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cms_users_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_galerry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenplate`
--

INSERT INTO `tenplate` (`id`, `title`, `blog_name`, `description`, `header`, `phone`, `address`, `email`, `twitter`, `facebook`, `instagram`, `youtube`, `cms_users_id`, `created_at`, `updated_at`, `link`, `button`, `footer`, `photo_galerry`, `photo_footer`) VALUES
(1, 'Ayawikanta', 'Aya Blog', 'Project CMS Aya', 'uploads/2017-09/fe4ad9f5f7859608a23fda668efdb477.jpg', '6285213468070', 'Karawang', 'oecax_bond@windowslive.com', 'oecax_bond', 'oecax.bond', 'oecax_bond', '', NULL, '2017-09-23 10:17:32', '2019-03-03 05:52:33', '#F69D9D;', '#F69D9D;', '#F69D9D;', 'uploads/2017-09/78f52670f84bee170a7d1d17313d4b92.jpg', 'uploads/2017-09/154958c1738b00794b0e694530202b19.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenplate`
--
ALTER TABLE `tenplate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tenplate`
--
ALTER TABLE `tenplate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
