-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2024 at 02:45 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `condition` enum('banner','promo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'banner',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dignissimos', 'sapiente-ex-quis-est-est-molestias', 'https://via.placeholder.com/60x60.png/002288?text=iusto', 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(2, 'quo', 'eos-facere-quos-qui', 'https://via.placeholder.com/60x60.png/00bbff?text=necessitatibus', 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(3, 'cum', 'nisi-aut-eius-et-aperiam-voluptates', 'https://via.placeholder.com/60x60.png/002233?text=eius', 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(4, 'qui', 'non-ipsum-ducimus-expedita-aut-expedita-aut-voluptatum', 'https://via.placeholder.com/60x60.png/00bb99?text=rerum', 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(5, 'sit', 'et-illo-et-aperiam-ut-rem-eos', 'https://via.placeholder.com/60x60.png/0077dd?text=porro', 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(6, 'qui', 'eum-enim-nulla-sunt-blanditiis', 'https://via.placeholder.com/60x60.png/006677?text=nemo', 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(7, 'beatae', 'labore-autem-provident-repudiandae-necessitatibus', 'https://via.placeholder.com/60x60.png/0022ff?text=placeat', 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(8, 'explicabo', 'provident-accusamus-in-tempore-sapiente-maxime', 'https://via.placeholder.com/60x60.png/007733?text=ut', 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(9, 'ab', 'eum-atque-qui-aut-molestiae-dolor', 'https://via.placeholder.com/60x60.png/002244?text=voluptatem', 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(10, 'debitis', 'nobis-voluptatum-accusamus-repellat-ipsum-unde', 'https://via.placeholder.com/60x60.png/007700?text=ex', 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `summary` mediumtext COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `photo`, `is_parent`, `summary`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'voluptas', 'numquam-neque-quidem-reiciendis-ea-enim-amet-illum', 'https://via.placeholder.com/100x100.png/0044ee?text=aspernatur', 1, 'Quod temporibus consectetur occaecati illum sint culpa quibusdam molestiae. Reprehenderit omnis sint consequatur excepturi. Et cupiditate minus reiciendis.', NULL, 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(2, 'dolor', 'nostrum-nisi-maiores-velit-rerum-reiciendis-porro-tenetur', 'https://via.placeholder.com/100x100.png/0066ff?text=at', 1, 'Similique placeat placeat ratione autem et voluptate nam. Officia enim ut id quia eaque perferendis. Consequatur quia ut in natus unde consequatur provident consequatur.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(3, 'molestias', 'aut-dolorum-voluptates-nesciunt-perspiciatis-ipsa', 'https://via.placeholder.com/100x100.png/0088ff?text=odio', 0, 'Atque vel quo officiis dolorum quia deserunt aspernatur. Harum ipsum incidunt cum esse impedit corporis est. Fuga quis labore quis maiores blanditiis.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(4, 'voluptas', 'molestiae-enim-eius-qui-suscipit-tempora-et-ut-explicabo', 'https://via.placeholder.com/100x100.png/0022cc?text=est', 0, 'Asperiores modi quisquam delectus. Est unde laborum rem illum. Dolorem qui accusamus aspernatur libero est.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(5, 'rem', 'id-molestias-dolorem-doloremque-suscipit-molestiae-neque-quia', 'https://via.placeholder.com/100x100.png/00cc99?text=aut', 1, 'Dolorum doloribus inventore quia consequatur. Occaecati officiis temporibus provident ipsum voluptas aut qui deleniti. Soluta quod est quo et vel eligendi et laboriosam.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(6, 'nihil', 'quas-aliquam-dolore-officiis-ab-aliquid-alias', 'https://via.placeholder.com/100x100.png/002200?text=nihil', 1, 'Est aperiam et quasi. Assumenda est magnam repellat tempore reprehenderit aut aut. Quis aut excepturi adipisci illum ipsam unde ipsa.', NULL, 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(7, 'sint', 'et-mollitia-aut-eaque-doloremque-ut-aut-autem', 'https://via.placeholder.com/100x100.png/005555?text=magnam', 1, 'Dolorem ad aliquam iure consequatur saepe nisi vitae asperiores. Sed ipsa deserunt unde ut. Quo voluptatem culpa recusandae labore illum ut.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(8, 'quas', 'eum-in-rerum-repellendus-vero-ipsam-quas-nihil', 'https://via.placeholder.com/100x100.png/00ee77?text=tempora', 1, 'Animi sit et voluptatem. Maiores et dolores incidunt et quia velit recusandae exercitationem. Ipsam numquam ut veritatis ut.', NULL, 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(9, 'eos', 'enim-modi-consequatur-et-pariatur-sit-qui-voluptatem', 'https://via.placeholder.com/100x100.png/00bbbb?text=quis', 1, 'Debitis dolorum consequatur dolore neque illo delectus assumenda. Nisi impedit qui non voluptatem. Ratione voluptatum enim quia odit excepturi.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(10, 'aliquid', 'saepe-distinctio-omnis-enim', 'https://via.placeholder.com/100x100.png/00ccff?text=consequatur', 0, 'Reprehenderit ut ad asperiores. Harum eos provident assumenda magni et et. Ut itaque velit et non.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(11, 'minima', 'velit-rem-officiis-blanditiis-nihil-odio', 'https://via.placeholder.com/100x100.png/00bbaa?text=blanditiis', 0, 'Modi tenetur quo dolorum voluptas dicta sed sint. Eius nam dolores deleniti ad repudiandae. Distinctio unde enim non neque unde.', NULL, 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(12, 'fugit', 'natus-tenetur-voluptatum-rerum-repellat-et', 'https://via.placeholder.com/100x100.png/008855?text=consequatur', 0, 'Dolores aperiam quod quisquam aut aut. Qui aut maiores odit consequatur totam architecto aut. Voluptatem eius et debitis officia et autem nihil eum.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(13, 'at', 'ullam-et-consectetur-repellat', 'https://via.placeholder.com/100x100.png/00ff44?text=aut', 1, 'Qui et natus animi sequi aut. Sint nulla non ea temporibus nihil dolor perspiciatis. Repudiandae illum aut eum ab eum.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(14, 'mollitia', 'commodi-dignissimos-et-dicta', 'https://via.placeholder.com/100x100.png/001111?text=neque', 1, 'Dolorem nesciunt aut eaque quia consequatur aliquam voluptatem. Odio nam sed exercitationem. Voluptatibus sed consectetur molestiae optio.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(15, 'aperiam', 'omnis-quos-qui-qui-ut', 'https://via.placeholder.com/100x100.png/00ddee?text=est', 0, 'Velit quo omnis repellat autem. Est ex commodi quia voluptatibus accusamus aliquid. Rerum ducimus laudantium pariatur et aliquid similique culpa.', NULL, 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(16, 'eum', 'aut-mollitia-qui-aut-aliquam-tempore-ut', 'https://via.placeholder.com/100x100.png/0099cc?text=sit', 1, 'Fugit soluta aut sit vero sequi officiis fuga. Nam eum numquam error necessitatibus provident ipsum et harum. Voluptatibus hic voluptas laudantium labore non quis ullam sapiente.', NULL, 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(17, 'dolorum', 'sed-facilis-rerum-iure-placeat-animi-cum', 'https://via.placeholder.com/100x100.png/00eeaa?text=illo', 1, 'Nesciunt quae voluptas sit. Sit exercitationem quibusdam nesciunt ea tempore sunt laboriosam commodi. Omnis velit quia sed et aut placeat laborum.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(18, 'aut', 'placeat-error-dolorum-voluptas-nobis-sunt-voluptatem-nemo-quam', 'https://via.placeholder.com/100x100.png/00ff66?text=distinctio', 1, 'Est consequatur quibusdam ratione natus sapiente est ea. Suscipit enim harum nulla unde veritatis eaque. Aliquid voluptate accusamus in exercitationem veritatis tempore.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(19, 'voluptatem', 'consectetur-rerum-doloribus-ex-corporis', 'https://via.placeholder.com/100x100.png/00ff66?text=et', 0, 'Natus ut enim voluptatem est. Tenetur aut sed quaerat. Mollitia deserunt est quibusdam vel.', NULL, 'inactive', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(20, 'et', 'est-et-fugit-sit-molestiae', 'https://via.placeholder.com/100x100.png/00ddff?text=quibusdam', 0, 'Dicta ullam accusantium similique quo. Magnam assumenda saepe quae possimus temporibus eos. Iure qui sunt veniam quas.', NULL, 'active', '2024-04-30 13:13:42', '2024-04-30 13:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_28_160850_create_banners_table', 1),
(7, '2024_04_30_074350_create_categories_table', 1),
(8, '2024_04_30_164022_create_brands_table', 1),
(9, '2024_04_30_183640_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `stock` int NOT NULL DEFAULT '0',
  `brand_id` bigint UNSIGNED NOT NULL,
  `cat_id` bigint UNSIGNED NOT NULL,
  `child_cat_id` bigint UNSIGNED DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `offer_price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conditions` enum('new','popular','winter') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `vendor_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','vendor','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'TKL Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$5A31ixgHVVz0YhfhUL.1Z.n.esKSWLwlSycKudQhlATdZKD1NqOkG', NULL, NULL, NULL, 'admin', 'active', NULL, NULL, NULL),
(2, 'TKL Vendor', 'Vendor', 'vendor@gmail.com', NULL, '$2y$10$YwJx16FtEaAoJmE/5aoNHevIc00K5SvnbJY4TZU5JqK/fvxwxGo6S', NULL, NULL, NULL, 'vendor', 'active', NULL, NULL, NULL),
(3, 'TKL Customer', 'Customer', 'customer@gmail.com', NULL, '$2y$10$TaFUVDQV832Z49Vynzo3l.GhMDp/phZP1T9nZHGEZ1uDRaWifM3Cu', NULL, NULL, NULL, 'customer', 'active', NULL, NULL, NULL),
(4, 'Litzy Gutmann', NULL, 'pollich.brionna@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/004499?text=odit', '1-231-982-9135', '3211 Gilda Stream\nWest Steveton, WI 50145', 'admin', 'active', 'WbjDdHMS28', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(5, 'Hugh Schmitt', NULL, 'nyasia.feest@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/004400?text=nihil', '+1 (878) 774-7318', '519 Williamson Track Suite 308\nNew Cedrickview, TN 98615', 'customer', 'active', 'CdypUsJiLl', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(6, 'Dr. Nash Shields MD', NULL, 'lweimann@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/000099?text=possimus', '(754) 561-0902', '9114 Rolfson Walk\nMoorehaven, AR 45152-1757', 'vendor', 'active', '2Oe3gDhlDE', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(7, 'Lexie Adams IV', NULL, 'liza41@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003311?text=nisi', '+1-573-580-3163', '9000 Torp Cove\nBennettland, MA 37027', 'vendor', 'active', 'TOMYCQefPp', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(8, 'Leslie West', NULL, 'nettie.grant@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0088aa?text=voluptas', '1-256-847-5868', '6139 Letha Well Apt. 369\nCummeratashire, WV 50514-6605', 'vendor', 'inactive', '9N0MPxEEeT', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(9, 'Prof. Aletha Price Jr.', NULL, 'fanny96@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/004499?text=aut', '985-313-1537', '10779 Krajcik Path Suite 733\nNew Judemouth, TX 66455', 'customer', 'inactive', 'C6UJ3UNkWK', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(10, 'Brent Nienow', NULL, 'verner.crist@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ff99?text=impedit', '+15596156323', '352 Hammes Road\nOlliebury, IA 84206-4888', 'vendor', 'active', 'ym8Jt9Qcqt', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(11, 'Lillian Jast', NULL, 'pollich.richmond@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0099ee?text=perferendis', '1-319-779-6905', '192 Bergnaum Forges Apt. 690\nPort Dedric, CO 13279-3389', 'vendor', 'active', 'cCEg4WvpYj', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(12, 'Brandi Lueilwitz IV', NULL, 'brown.aubree@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0011ff?text=nulla', '+1-908-703-0029', '798 Brakus Mount Apt. 910\nMayertown, ID 66383', 'admin', 'inactive', 'nh6q5S99so', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(13, 'Dr. Earnest Lesch III', NULL, 'nmayer@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00bbdd?text=totam', '228-670-8143', '30156 McGlynn Pike Suite 429\nArnaldobury, IN 83452', 'customer', 'inactive', 'rvvRWcMdxx', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(14, 'Phoebe Satterfield II', NULL, 'jaden34@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00eeaa?text=soluta', '917.309.4483', '45561 Jesus Hollow\nLake Golda, KS 57901', 'vendor', 'active', 'MMFCYQcQYI', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(15, 'Miss Pattie Parker', NULL, 'veda.stracke@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ff22?text=aut', '1-920-203-0547', '9896 Catalina Glen\nCassidyshire, AZ 63218', 'customer', 'active', 'mSkbq6rWhv', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(16, 'Susie Stehr', NULL, 'koch.halle@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ff88?text=culpa', '689.661.9405', '393 Rice Coves Suite 653\nLloydbury, AK 17390', 'vendor', 'inactive', 'UI9CBdeLgI', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(17, 'Mrs. Paula Will Jr.', NULL, 'marvin.kevon@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/006699?text=consectetur', '1-272-361-0860', '2247 Blake Falls\nPagacland, MN 47783', 'customer', 'inactive', 'SW38GHVdfb', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(18, 'Miss Valentine Gerhold', NULL, 'hrunolfsson@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0055ee?text=inventore', '541-899-3520', '1656 Caroline Rapids Suite 497\nNew Olechester, ND 66357-1536', 'customer', 'active', 'vAJYjJtLYo', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(19, 'Elenora Swaniawski', NULL, 'ryann31@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/009900?text=autem', '(845) 504-1802', '4060 Vergie Mountains\nJeraldborough, MA 60933-6546', 'vendor', 'active', 'lCS0juVjMx', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(20, 'Ron Koepp', NULL, 'allene.abernathy@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ee77?text=architecto', '(469) 891-9172', '598 Howell Ways Suite 255\nSouth Ellsworthside, CT 24536-1848', 'vendor', 'active', '5Zfv7pBCt4', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(21, 'Nya Adams', NULL, 'vspinka@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/008800?text=aperiam', '1-575-647-5094', '44472 Farrell Course Suite 869\nEast Nyahborough, NY 79838-9867', 'customer', 'inactive', 'hzQnIB3C7B', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(22, 'Mable Kihn', NULL, 'roel.stracke@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/001122?text=et', '+19289342697', '27002 Haley Isle Apt. 181\nNew Paris, MD 72454-5516', 'customer', 'inactive', 'Va7keVsKDZ', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(23, 'Lina Hansen', NULL, 'denesik.patience@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0011dd?text=rerum', '+1 (781) 479-0114', '8047 Otis Harbor Apt. 464\nSouth Sterling, AK 33994', 'vendor', 'inactive', 'r05UuLZWkd', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(24, 'Russell Wiza', NULL, 'tatum17@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0011aa?text=earum', '(859) 452-3288', '321 Bahringer Land Suite 808\nSipesmouth, MO 05942-2461', 'customer', 'inactive', 'rUyipBsids', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(25, 'Assunta Bartoletti', NULL, 'afisher@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00cc77?text=consectetur', '+18785239086', '3506 Germaine Glens Suite 817\nEllieberg, KS 20313-8013', 'vendor', 'active', 'nJnevzR3Lw', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(26, 'Kathryne Grady DVM', NULL, 'vhill@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/005555?text=soluta', '615-266-2243', '17999 Ludwig Springs\nFadelbury, LA 78065', 'customer', 'inactive', 'Dt74xQJzCT', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(27, 'Aileen Kozey', NULL, 'baumbach.cloyd@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/005588?text=sunt', '820.908.8760', '8402 Feeney River\nBrownmouth, IN 06572-8586', 'customer', 'active', 'hchgSxxGLO', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(28, 'Lesly Schulist', NULL, 'deangelo44@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00eebb?text=natus', '1-805-467-8294', '866 Keebler Crossing\nLake Maddisonberg, SD 95719-8033', 'vendor', 'active', 'QeAdMDNsti', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(29, 'Nestor Sipes DDS', NULL, 'tyra.purdy@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/006622?text=distinctio', '(754) 383-9275', '42738 Emie Circle\nGerholdport, CA 38559', 'customer', 'active', 'YfnuzjYEc6', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(30, 'Annabel Jerde Sr.', NULL, 'jnicolas@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ff77?text=nulla', '564-564-4648', '9146 Wilford Club Suite 937\nYadiraborough, CA 45967', 'vendor', 'active', 'QCTyoPcKtj', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(31, 'Prof. Charlene Walsh I', NULL, 'reta51@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00cc00?text=quia', '+1-425-855-0698', '54571 Anderson Mountains Suite 304\nHoppeland, WV 91925-2168', 'customer', 'active', 'FC4PkwVfvS', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(32, 'Aubree Jacobi', NULL, 'gladys65@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0066ee?text=exercitationem', '626-227-9564', '793 Thompson Pass Suite 916\nPort Craigtown, MI 61611', 'customer', 'inactive', 'cSETOHZeyq', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(33, 'Mrs. Zoie Bogan DVM', NULL, 'diana.stracke@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/006611?text=doloribus', '1-678-444-1547', '58865 Katrina Ways\nAlexieberg, ND 98192-4634', 'vendor', 'active', 'Lx6fjkiJxT', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(34, 'Mr. Russel Terry', NULL, 'bartell.joana@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ff33?text=nam', '1-432-854-0693', '52817 Dibbert Streets\nNorth Jerrod, WA 27203-4982', 'admin', 'active', 'LwEU1u3XsF', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(35, 'Jaquelin Jacobs', NULL, 'zola.ortiz@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00bbdd?text=delectus', '+1.820.739.3999', '248 Caitlyn Tunnel Suite 317\nLake Watson, OH 33552', 'customer', 'inactive', 'VTnzPFhlxj', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(36, 'Jacynthe Gibson', NULL, 'pietro.mitchell@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003388?text=vel', '(650) 383-8926', '69854 Valentin Cape\nNew Jackie, MA 76099-7828', 'admin', 'inactive', 'BJ7g6ABoF2', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(37, 'Elroy Kirlin Jr.', NULL, 'vincent.barrows@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ee77?text=sunt', '458.990.2735', '270 Winnifred Divide\nBoydport, RI 48615', 'admin', 'active', 'OwupMomL1E', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(38, 'Terrell Barrows', NULL, 'luettgen.lew@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/004466?text=praesentium', '+19802468216', '490 Pierce Ranch\nBrownland, TX 85810', 'vendor', 'inactive', 'dEpY8WOsch', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(39, 'Alvena Murphy', NULL, 'murray.murray@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0033aa?text=voluptate', '+1.386.376.1529', '7597 Nitzsche Avenue Suite 609\nDenesikhaven, LA 72472-9413', 'vendor', 'inactive', 'GChNpdRt9i', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(40, 'Prof. Lawson Koss IV', NULL, 'leanne.herman@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003333?text=ex', '(432) 476-6039', '91708 Franz Knolls\nTristianview, SD 92031', 'admin', 'active', '1JyuCBAHhX', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(41, 'London Schroeder', NULL, 'mkessler@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ffaa?text=et', '+12486352192', '7933 Will Well\nHammeschester, MS 13373', 'vendor', 'active', 'p1ML5K8et8', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(42, 'Prof. Leila Effertz', NULL, 'tristin.reynolds@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003333?text=harum', '531-761-7130', '384 Nikolaus Dale\nImeldachester, ND 48626', 'admin', 'inactive', 'sM2F8csJnI', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(43, 'Amina Casper DVM', NULL, 'tschneider@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0055ee?text=beatae', '+1 (607) 201-6758', '73131 Nedra Forest\nLake Burleyton, NH 71139', 'admin', 'inactive', 'OPAQsatHM1', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(44, 'Genesis Hermann DDS', NULL, 'hnader@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ffff?text=quidem', '272-812-7029', '14418 Champlin Lakes Apt. 403\nLake Shanonport, VT 46625-5961', 'vendor', 'inactive', 'DSruaZ6IKf', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(45, 'Walter Hudson', NULL, 'jackeline53@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/006611?text=ducimus', '386-778-8064', '34571 Jaskolski Island\nSouth Miltonfurt, KS 43565', 'vendor', 'active', 'mEtpdxQtBC', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(46, 'Geovanni Mayert II', NULL, 'enolan@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ddff?text=soluta', '(959) 704-8079', '63353 Bechtelar Square\nNitzscheshire, IL 71197-0490', 'vendor', 'inactive', 'HfhgN7YNq8', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(47, 'Tillman Hill', NULL, 'khalvorson@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003300?text=possimus', '(520) 487-5594', '82546 Abshire Mountain Apt. 763\nEstellastad, HI 57576', 'customer', 'active', 'AJvBpu6ycx', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(48, 'Anastasia Schinner', NULL, 'torphy.brandi@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0022aa?text=et', '+1.815.481.0058', '131 Zieme Shoals\nLake Ernestineside, WA 18486', 'customer', 'inactive', 'tLlOn9opZr', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(49, 'Mckenna Nienow', NULL, 'remington.donnelly@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0066ee?text=architecto', '(361) 410-9372', '40582 Jerde Turnpike Suite 503\nEast Gregoriashire, FL 31496', 'vendor', 'active', 'pb8Lxidgz7', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(50, 'Rahsaan Nicolas', NULL, 'nschoen@example.net', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0022aa?text=et', '915-852-5691', '343 Vicenta Vista\nSchneiderbury, ID 97125', 'vendor', 'active', 'p4TGmcJtKi', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(51, 'Patricia Runolfsdottir', NULL, 'denesik.daryl@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00dd22?text=illo', '+13864293544', '7342 Hessel Ridges\nLake Bonita, ID 45116', 'admin', 'active', 'qh6RoXFhkn', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(52, 'Brannon Shanahan', NULL, 'keyon.gutmann@example.com', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/001177?text=laboriosam', '+1 (424) 287-8299', '1684 Garrison Prairie\nMarlenbury, WY 53614-9638', 'vendor', 'active', 'W9PwAWMBQK', '2024-04-30 13:13:42', '2024-04-30 13:13:42'),
(53, 'Dr. Darrell Witting Sr.', NULL, 'magali.hudson@example.org', '2024-04-30 13:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00cccc?text=rerum', '405.364.7841', '766 Pouros Creek\nBarryfort, FL 67543-0314', 'admin', 'inactive', 'mfDS5NM7fp', '2024-04-30 13:13:42', '2024-04-30 13:13:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`),
  ADD KEY `products_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
