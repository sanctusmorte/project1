-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 17 2019 г., 17:44
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nygma_kitweb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authorization`
--
-- Создание: Фев 15 2019 г., 19:14
-- Последнее обновление: Фев 16 2019 г., 17:36
--

DROP TABLE IF EXISTS `authorization`;
CREATE TABLE `authorization` (
  `id` int(11) NOT NULL,
  `tel_number` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `auth_key` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authorization`
--

INSERT INTO `authorization` (`id`, `tel_number`, `password`, `auth_key`) VALUES
(1, '998909431269', '$2y$10$hQdB7LjTGtqAUBhhkzcmIeZPsGGgr3gFIW1gjbH6GqttFLAaUGegi', '583dcf6419df168b03de1c20953b53296c78550e'),
(2, '998909431269', '$2y$10$i0Fb7JUQZVq7T7KgUmnu7uLaMRreA7z.rtc1y3yqrjvESortqtp0O', '583dcf6419df168b03de1c20953b53296c78550e'),
(3, '998909431269', '$2y$10$QP.w.NRC2iLtkZOyJOdoTu0Xa2nwXTEq7psp7KOsil7jQ18Ebwkdy', '583dcf6419df168b03de1c20953b53296c78550e'),
(4, '998909431269', '$2y$10$JHjPUy3nlw2kQr6J.J8xSeBdwmGWa/8VfhT3LLwDiLpBYNNjCLZdy', '583dcf6419df168b03de1c20953b53296c78550e'),
(5, '998909431269', '$2y$10$O068qMMGwHTqagPW6ax8XuEiuVLr33tCvJ5C1pYpHCaUK8iqKq8j2', '583dcf6419df168b03de1c20953b53296c78550e'),
(6, '998909431269', '$2y$10$hGCG5jXSzMkIXDx42OyAR.d7wJVlEI6HRjabFFWs3k60FYXLxB.J6', ''),
(7, '9989094312569', '$2y$10$Zm6OUnNb9ZM9N6Fyxt5zWeeB0fH54xFSfe43nzqSXK10T2kHazRKW', '0d88aab45cd94fe6fa1e176a75f92f02362f3f2a');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_apicustom`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 16 2019 г., 17:39
--

DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(3, 'registration', 'users', 'save_add', NULL, NULL, NULL, NULL, 'Registration', NULL, NULL, NULL, NULL, 'post', 'a:12:{i:0;a:5:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:10:\"tel_number\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:8:\"fullName\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:9:\"firstName\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:8:\"lastName\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:10:\"middleName\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:9:\"birthDate\";s:4:\"type\";s:4:\"date\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:4:\"logo\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:4:\"city\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:0:{}'),
(4, 'make_an_order', 'orders', 'save_add', NULL, NULL, NULL, NULL, 'Make an order', NULL, NULL, NULL, NULL, 'post', 'a:7:{i:0;a:5:{s:4:\"name\";s:16:\"reception_center\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:14:\"mailbox_number\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:12:\"mailbox_code\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:11:\"seal_number\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:15:\"type_of_service\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:11:\"type_of_pay\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:8:\"auth_key\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:1:{i:0;a:4:{s:4:\"name\";s:8:\"auth_key\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:4:\"null\";s:4:\"used\";s:1:\"1\";}}'),
(5, 'authorization', 'authorization', 'save_add', NULL, NULL, NULL, NULL, 'Authorization', NULL, NULL, NULL, NULL, 'post', 'a:2:{i:0;a:5:{s:4:\"name\";s:10:\"tel_number\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:0:{}'),
(7, 'get_list_of_products', 'orders', 'list', NULL, NULL, NULL, NULL, 'Get list of products', NULL, NULL, NULL, NULL, 'get', 'a:10:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:16:\"reception_center\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:14:\"mailbox_number\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:12:\"mailbox_code\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:11:\"seal_number\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:15:\"type_of_service\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:11:\"type_of_pay\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:8:\"auth_key\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:4:\"date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:3:{i:0;a:4:{s:4:\"name\";s:14:\"mailbox_number\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(8, 'get_product_by_id', 'orders', 'detail', NULL, NULL, NULL, NULL, 'Get product by id', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:4:{i:0;a:4:{s:4:\"name\";s:5:\"title\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:8:\"quantity\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"price_usd\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:13:\"address_clean\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_apikey`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 16 2019 г., 17:52
--

DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(1, '8bb51f7a530eb752aba6ae245c31f039', 372, 'active', '2019-02-14 15:12:51', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_dashboard`
--
-- Создание: Фев 14 2019 г., 17:42
--

DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_email_queues`
--
-- Создание: Фев 14 2019 г., 17:42
--

DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_email_templates`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 14 2019 г., 17:42
--

DROP TABLE IF EXISTS `cms_email_templates`;
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
-- Дамп данных таблицы `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-02-14 14:42:06', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-02-14 14:42:19', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_logs`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 16 2019 г., 17:41
--

DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '213.230.78.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/login', 'admin@crudbooster.com login with IP Address 213.230.78.15', 1, '2019-02-14 14:42:39', NULL),
(2, '51.15.81.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/login', 'admin@crudbooster.com login with IP Address 51.15.81.120', 1, '2019-02-15 07:59:11', NULL),
(3, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/users/edit-save/1', 'Update data Администратор at Users', 1, '2019-02-15 16:50:47', NULL),
(4, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/users/add-save', 'Add New Data Модератор at Users', 1, '2019-02-15 16:51:36', NULL),
(5, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/logout', 'admin@crudbooster.com logout', 1, '2019-02-15 16:51:46', NULL),
(6, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/login', 'moderator@crudbooster.com login with IP Address 213.230.76.124', 2, '2019-02-15 16:51:49', NULL),
(7, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/logout', 'moderator@crudbooster.com logout', 2, '2019-02-15 16:52:02', NULL),
(8, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/login', 'admin@crudbooster.com login with IP Address 213.230.76.124', 1, '2019-02-15 16:52:04', NULL),
(9, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/logout', 'admin@crudbooster.com logout', 1, '2019-02-15 16:54:04', NULL),
(10, '213.230.76.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/login', 'admin@crudbooster.com login with IP Address 213.230.76.124', 1, '2019-02-15 16:54:19', NULL),
(11, '95.47.148.210', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://themaxflights.com/admin/login', 'admin@crudbooster.com login with IP Address 95.47.148.210', 1, '2019-02-16 09:56:52', NULL),
(12, '213.230.102.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/login', 'admin@crudbooster.com login with IP Address 213.230.102.198', 1, '2019-02-16 10:43:02', NULL),
(13, '213.230.102.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/users12/add-save', 'Add New Data abuse10111999 at Пользователи', 1, '2019-02-16 10:44:06', NULL),
(14, '46.185.102.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'http://themaxflights.com/admin/login', 'admin@crudbooster.com login with IP Address 46.185.102.184', 1, '2019-02-16 10:51:57', NULL),
(15, '213.230.102.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://themaxflights.com/admin/users12/add-save', 'Add New Data w at Пользователи', 1, '2019-02-16 14:41:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_menus`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 15 2019 г., 19:49
--

DROP TABLE IF EXISTS `cms_menus`;
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
-- Дамп данных таблицы `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Пользователи', 'Route', 'AdminUsers12ControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 1, '2019-02-15 16:47:40', NULL),
(2, 'Заказы', 'Route', 'AdminOrdersControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 2, '2019-02-15 16:48:21', NULL),
(3, 'Users', 'Route', 'AdminCmsUsersControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 2, 1, '2019-02-15 16:49:46', NULL),
(4, 'Заказы', 'Route', 'AdminOrdersControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 2, 2, '2019-02-15 16:49:46', NULL),
(5, 'Пользователи', 'Route', 'AdminUsers12ControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 2, 3, '2019-02-15 16:49:46', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_moduls`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 16 2019 г., 17:40
--

DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-02-14 14:42:06', NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-02-14 14:42:06', NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-02-14 14:42:06', NULL),
(4, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-02-14 14:42:06', NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-02-14 14:42:06', NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-02-14 14:42:06', NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-02-14 14:42:06', NULL),
(8, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-02-14 14:42:06', NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-02-14 14:42:06', NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-02-14 14:42:06', NULL),
(11, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-02-14 14:42:06', NULL),
(12, 'Пользователи', 'fa fa-glass', 'users12', 'users', 'AdminUsers12Controller', 0, 0, '2019-02-15 16:47:39', NULL),
(13, 'Заказы', 'fa fa-glass', 'orders', 'orders', 'AdminOrdersController', 0, 0, '2019-02-15 16:48:21', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_notifications`
--
-- Создание: Фев 14 2019 г., 17:42
--

DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_privileges`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 15 2019 г., 19:49
--

DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2019-02-14 14:42:06', NULL),
(2, 'Модератор', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_privileges_roles`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 15 2019 г., 19:49
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2019-02-14 14:42:06', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2019-02-14 14:42:06', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2019-02-14 14:42:06', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2019-02-14 14:42:06', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2019-02-14 14:42:06', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2019-02-14 14:42:06', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2019-02-14 14:42:06', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2019-02-14 14:42:06', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2019-02-14 14:42:06', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2019-02-14 14:42:06', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2019-02-14 14:42:06', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 0, 1, 0, 0, 2, 4, NULL, NULL),
(15, 1, 0, 1, 0, 0, 2, 13, NULL, NULL),
(16, 1, 0, 1, 0, 0, 2, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_settings`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 14 2019 г., 18:14
--

DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-02-14 14:42:06', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-02-14 14:42:06', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-02-14 14:42:06', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-02-14 14:42:06', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-02-14 14:42:06', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'false', 'select', 'true,false', NULL, '2019-02-14 14:42:06', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-02-14 14:42:06', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_statistics`
--
-- Создание: Фев 14 2019 г., 17:42
--

DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_statistic_components`
--
-- Создание: Фев 14 2019 г., 17:42
--

DROP TABLE IF EXISTS `cms_statistic_components`;
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
-- Структура таблицы `cms_users`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 15 2019 г., 19:51
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Администратор', 'uploads/2019-02/admin.png', 'admin@crudbooster.com', '$2y$10$gqZJWLyQmqcRxYsfhaY.8eFneDqdC0QpcbENYP4u/SpMnMkF6pLby', 1, '2019-02-14 14:42:06', '2019-02-15 16:50:47', 'Active'),
(2, 'Модератор', 'uploads/2019-02/moderator.jpeg', 'moderator@crudbooster.com', '$2y$10$Q6vtokCh19D.RkfrcQK.SeG0b7XWHgRSmrcPZs3Vnzwt7yewR0Eji', 2, '2019-02-15 16:51:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--
-- Создание: Фев 14 2019 г., 17:42
-- Последнее обновление: Фев 14 2019 г., 17:42
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
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
(22, '2016_11_17_102740_create_cms_statistic_components', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--
-- Создание: Фев 15 2019 г., 19:37
-- Последнее обновление: Фев 16 2019 г., 17:36
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `reception_center` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `mailbox_number` int(11) NOT NULL,
  `mailbox_code` int(11) NOT NULL,
  `seal_number` int(11) NOT NULL,
  `type_of_service` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `type_of_pay` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'сыр',
  `quantity` int(11) NOT NULL DEFAULT '10',
  `price_usd` int(11) NOT NULL DEFAULT '12',
  `address_clean` varchar(255) NOT NULL DEFAULT 'Улица Пушкина дом 10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `reception_center`, `mailbox_number`, `mailbox_code`, `seal_number`, `type_of_service`, `type_of_pay`, `auth_key`, `date`, `status`, `title`, `quantity`, `price_usd`, `address_clean`) VALUES
(1, 'awdawd', 123, 54, 879, 'awd', 'awd', '583dcf6419df168b03de1c20953b53296c78550e', NULL, NULL, 'сыр', 10, 12, 'Улица Пушкина дом 10'),
(2, 'awdawd', 123, 54, 879, 'awd', 'awd', '583dcf6419df168b03de1c20953b53296c78550e', NULL, NULL, 'сыр', 10, 12, 'Улица Пушкина дом 10'),
(3, 'awdawd', 123, 54, 879, 'awd', 'awd', '583dcf6419df168b03de1c20953b53296c78550e', NULL, NULL, 'сыр', 10, 12, 'Улица Пушкина дом 10'),
(4, 'awdawd', 123, 54, 879, 'awd', 'awd', '0d88aab45cd94fe6fa1e176a75f92f02362f3f2a', NULL, NULL, 'сыр', 10, 12, 'Улица Пушкина дом 10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Фев 16 2019 г., 13:45
-- Последнее обновление: Фев 16 2019 г., 17:41
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `auth_key` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel_number` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fullName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `firstName` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `lastName` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `middleName` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `birthDate` varchar(255) NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `auth_key`, `password`, `email`, `tel_number`, `password_reset_token`, `fullName`, `firstName`, `lastName`, `middleName`, `birthDate`, `logo`, `address`, `city`) VALUES
(1, 'ivan999', '0d88aab45cd94fe6fa1e176a75f92f02362f3f2a', '$2y$10$RLFgjFgBG4q.kBGGSPFBn.uwISOgDW6YHgqsEjJKSkkuRW4ci8yja', 'ivazn@mail.ru', '9989094312569', NULL, 'Иван Кличко Васильевич', 'Иван', 'Кличко', 'Васильевич', '1990-10-27', 'цфвцфвфцв', 'awdwad', 'Сталевар'),
(2, 'w', 'awd', '$2y$10$si8CZmOS8eq4WLTL5rkuvuu6fqu91/l1z8tl8iMdL7QXzUvQXRSOK', 'sanctusmortes@gmail.com', 'awdad', 'awd', 'adawdaw', 'dawdaw', 'dawdaw', 'awda', '2019-02-26', 'awd', 'adw', 'awd');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authorization`
--
ALTER TABLE `authorization`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authorization`
--
ALTER TABLE `authorization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
