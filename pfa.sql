-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 30 juin 2020 à 10:20
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pfa`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr. Fermin Hintz DDS', 'Aperiam neque quis suscipit et. Perferendis sunt accusamus ipsum itaque quibusdam sed et dolorem. Velit qui nisi aut. Sit quam consectetur aut debitis quae officia.', '251.89', '2020-06-23 19:33:56', '2020-06-28 21:58:04', '2020-06-28 21:58:04'),
(2, 'Lavada Goldner MD', 'Iusto', '63.28', '2020-06-23 19:33:56', '2020-06-29 00:30:35', '2020-06-29 00:30:35'),
(3, 'Clarabelle Paucek', 'Aliquid voluptas veniam nesciunt commodi libero ad. Odio impedit architecto quia molestias quisquam cumque. Atque sapiente inventore non sequi eos odit quibusdam.', '2.11', '2020-06-23 19:33:56', '2020-06-23 19:33:56', NULL),
(4, 'Nicolette Harvey Sr.', 'Et amet illo natus occaecati dolorem et. Veniam ab placeat in sed magni dolores. Magnam et nostrum non tempora.', '471772315.75', '2020-06-23 19:33:56', '2020-06-23 19:33:56', NULL),
(5, 'Birdie Bernier', 'Quo officia alias quis sit impedit impedit. Qui reprehenderit quia quibusdam. Magni voluptas tenetur atque necessitatibus quam. Officia repudiandae ea exercitationem.', '477186.57', '2020-06-23 19:33:56', '2020-06-23 19:33:56', NULL),
(6, 'Prof. Chadrick Blanda', 'Commodi illo culpa qui. Suscipit ipsum qui suscipit dolorem earum. Autem nesciunt enim nobis veniam voluptas voluptas delectus. Architecto ullam facilis blanditiis.', '7138722.84', '2020-06-23 19:33:56', '2020-06-23 19:33:56', NULL),
(7, 'Dr. Joe Crona', 'Quo consequatur sed deleniti. Quidem quae ipsam nihil porro totam non. Quisquam dicta at velit. Reiciendis deleniti veniam dolor assumenda delectus beatae.', '64113974.55', '2020-06-23 19:33:56', '2020-06-23 19:33:56', NULL),
(8, 'Marguerite Ledner', 'Sed aliquam et molestiae voluptatem aspernatur repellendus ut. Veritatis optio voluptates officia sint consequatur. Et et ex qui accusantium ut velit voluptates. Eum atque laudantium in voluptatum.', '185393.29', '2020-06-23 19:33:56', '2020-06-23 19:33:56', NULL),
(9, 'Miss Camille Friesen', 'Ullam ipsam nihil quis illum mollitia qui autem. Quia voluptate et impedit iure. Qui officia sunt architecto et voluptatem reprehenderit.', '295.13', '2020-06-23 19:33:56', '2020-06-23 19:33:56', NULL),
(10, 'article1', 'article made in Japan', '123.00', '2020-06-28 15:09:04', '2020-06-28 15:10:21', '2020-06-28 15:10:21');

-- --------------------------------------------------------

--
-- Structure de la table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
CREATE TABLE IF NOT EXISTS `audit_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `properties` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(1, 'created', 1, 'App\\Reclamation', NULL, '{\"title\":\"Ms.\",\"content\":\"Ex aut eius nesciunt suscipit. Voluptas enim dolores dolore voluptatem. Asperiores voluptatem optio maiores consequuntur architecto recusandae molestiae. Eligendi qui et ut tempore molestias.\",\"status_id\":2,\"priority_id\":1,\"category_id\":3,\"author_name\":\"Mr. Zackery O\'Reilly\",\"author_email\":\"friedrich03@example.com\",\"assigned_to_user_id\":41,\"updated_at\":\"2020-06-23 20:43:05\",\"created_at\":\"2020-06-23 20:43:05\",\"id\":1,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:43:06', '2020-06-23 19:43:06'),
(2, 'created', 2, 'App\\Reclamation', NULL, '{\"title\":\"Mrs.\",\"content\":\"Nulla enim modi et ab. Velit rem voluptatem consequatur consequatur totam. Et cum enim officiis expedita autem aut vitae. Repellat beatae quasi quia voluptatem voluptate nisi nostrum.\",\"status_id\":2,\"priority_id\":1,\"category_id\":2,\"author_name\":\"Lavina Jacobs\",\"author_email\":\"jack.mayert@example.org\",\"assigned_to_user_id\":3,\"updated_at\":\"2020-06-23 20:44:26\",\"created_at\":\"2020-06-23 20:44:26\",\"id\":2,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:26', '2020-06-23 19:44:26'),
(3, 'created', 3, 'App\\Reclamation', NULL, '{\"title\":\"Miss\",\"content\":\"Sit cum cum odio aliquid. Vel voluptatem minima quidem ut eum ut quae. Quia facilis voluptas eius soluta maxime quibusdam.\",\"status_id\":2,\"priority_id\":1,\"category_id\":2,\"author_name\":\"Una Swift\",\"author_email\":\"fadel.bernard@example.com\",\"assigned_to_user_id\":42,\"updated_at\":\"2020-06-23 20:44:34\",\"created_at\":\"2020-06-23 20:44:34\",\"id\":3,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:34', '2020-06-23 19:44:34'),
(4, 'created', 4, 'App\\Reclamation', NULL, '{\"title\":\"Mr.\",\"content\":\"Dolores exercitationem numquam soluta impedit. Voluptatem minima odio sunt voluptatum et quia dolores. Voluptas expedita qui et. Officia non possimus quia sed.\",\"status_id\":1,\"priority_id\":3,\"category_id\":3,\"author_name\":\"Jerrod Crist\",\"author_email\":\"keeling.destiney@example.com\",\"assigned_to_user_id\":41,\"updated_at\":\"2020-06-23 20:44:37\",\"created_at\":\"2020-06-23 20:44:37\",\"id\":4,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:37', '2020-06-23 19:44:37'),
(5, 'created', 5, 'App\\Reclamation', NULL, '{\"title\":\"Mr.\",\"content\":\"Autem saepe vitae beatae dolor voluptatum ut exercitationem. Error id architecto doloribus. Atque earum debitis vero doloribus expedita optio.\",\"status_id\":2,\"priority_id\":3,\"category_id\":1,\"author_name\":\"Oswald Nikolaus\",\"author_email\":\"aiden99@example.com\",\"assigned_to_user_id\":3,\"updated_at\":\"2020-06-23 20:44:40\",\"created_at\":\"2020-06-23 20:44:40\",\"id\":5,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:40', '2020-06-23 19:44:40'),
(6, 'created', 6, 'App\\Reclamation', NULL, '{\"title\":\"Dr.\",\"content\":\"Alias error dignissimos asperiores consequatur sit sed recusandae. Voluptas quidem ipsa enim aliquam consequatur et. Praesentium cum temporibus rem magnam qui quibusdam temporibus.\",\"status_id\":1,\"priority_id\":1,\"category_id\":1,\"author_name\":\"Kaley Bergnaum\",\"author_email\":\"heidenreich.demarco@example.net\",\"assigned_to_user_id\":40,\"updated_at\":\"2020-06-23 20:44:42\",\"created_at\":\"2020-06-23 20:44:42\",\"id\":6,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:42', '2020-06-23 19:44:42'),
(7, 'created', 7, 'App\\Reclamation', NULL, '{\"title\":\"Dr.\",\"content\":\"Pariatur nobis quam dolore possimus quia tempore. Voluptatibus voluptatibus non quidem voluptatibus quidem. Sed sit tenetur sed quod veniam blanditiis. Odio impedit et est sed.\",\"status_id\":2,\"priority_id\":2,\"category_id\":1,\"author_name\":\"Daija Harris\",\"author_email\":\"misael82@example.net\",\"assigned_to_user_id\":40,\"updated_at\":\"2020-06-23 20:44:45\",\"created_at\":\"2020-06-23 20:44:45\",\"id\":7,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:45', '2020-06-23 19:44:45'),
(8, 'created', 8, 'App\\Reclamation', NULL, '{\"title\":\"Prof.\",\"content\":\"Sit veritatis magni ut ut. Eius dolor qui sed temporibus assumenda.\",\"status_id\":2,\"priority_id\":2,\"category_id\":2,\"author_name\":\"Lonny Reynolds\",\"author_email\":\"kohler.anabelle@example.com\",\"assigned_to_user_id\":42,\"updated_at\":\"2020-06-23 20:44:47\",\"created_at\":\"2020-06-23 20:44:47\",\"id\":8,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:47', '2020-06-23 19:44:47'),
(9, 'created', 9, 'App\\Reclamation', NULL, '{\"title\":\"Mr.\",\"content\":\"Similique et impedit architecto itaque labore. Et id dolor ipsum non facere sed. Hic alias vel quia quo et officia. Libero perspiciatis qui vel.\",\"status_id\":2,\"priority_id\":1,\"category_id\":3,\"author_name\":\"Jefferey Dietrich\",\"author_email\":\"parisian.leonard@example.com\",\"assigned_to_user_id\":40,\"updated_at\":\"2020-06-23 20:44:52\",\"created_at\":\"2020-06-23 20:44:52\",\"id\":9,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:52', '2020-06-23 19:44:52'),
(10, 'created', 10, 'App\\Reclamation', NULL, '{\"title\":\"Dr.\",\"content\":\"Eveniet explicabo est ullam quia maxime rerum. Quam perspiciatis architecto minima eaque aperiam impedit aut. Officia voluptatem ullam laborum quas alias.\",\"status_id\":2,\"priority_id\":2,\"category_id\":3,\"author_name\":\"Loraine McGlynn\",\"author_email\":\"nova53@example.com\",\"assigned_to_user_id\":41,\"updated_at\":\"2020-06-23 20:44:56\",\"created_at\":\"2020-06-23 20:44:56\",\"id\":10,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:44:56', '2020-06-23 19:44:56'),
(11, 'created', 11, 'App\\Reclamation', NULL, '{\"title\":\"Dr.\",\"content\":\"Rerum necessitatibus ea temporibus et non odio dignissimos. Voluptatem magni suscipit odit quia. Officiis voluptatem tenetur alias nihil sint enim.\",\"status_id\":1,\"priority_id\":2,\"category_id\":2,\"author_name\":\"Kip Bins\",\"author_email\":\"kari19@example.org\",\"assigned_to_user_id\":41,\"updated_at\":\"2020-06-23 20:45:00\",\"created_at\":\"2020-06-23 20:45:00\",\"id\":11,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:45:00', '2020-06-23 19:45:00'),
(12, 'created', 12, 'App\\Reclamation', NULL, '{\"title\":\"Dr.\",\"content\":\"Minus ullam in eveniet itaque praesentium nisi velit. Cumque veniam atque vero omnis placeat sunt. Earum quam laudantium minus officiis vitae. Velit suscipit sed velit.\",\"status_id\":1,\"priority_id\":3,\"category_id\":1,\"author_name\":\"Sim Raynor\",\"author_email\":\"theodora.bogisich@example.net\",\"assigned_to_user_id\":3,\"updated_at\":\"2020-06-23 20:45:36\",\"created_at\":\"2020-06-23 20:45:36\",\"id\":12,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-23 19:45:36', '2020-06-23 19:45:36'),
(13, 'deleted', 12, 'App\\Reclamation', 1, '{\"id\":12,\"title\":\"Dr.\",\"content\":\"Minus ullam in eveniet itaque praesentium nisi velit. Cumque veniam atque vero omnis placeat sunt. Earum quam laudantium minus officiis vitae. Velit suscipit sed velit.\",\"author_name\":\"Sim Raynor\",\"author_email\":\"theodora.bogisich@example.net\",\"created_at\":\"2020-06-23 20:45:36\",\"updated_at\":\"2020-06-28 09:16:42\",\"deleted_at\":\"2020-06-28 09:16:42\",\"status_id\":1,\"priority_id\":3,\"category_id\":1,\"assigned_to_user_id\":3,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-28 08:16:43', '2020-06-28 08:16:43'),
(14, 'created', 13, 'App\\Reclamation', 3, '{\"author_name\":\"customer\",\"author_email\":\"customer@gmail.com\",\"title\":\"problem technique\",\"content\":\"The home page isn\'t work for me\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2020-06-28 14:51:50\",\"created_at\":\"2020-06-28 14:51:50\",\"id\":13,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-28 13:51:50', '2020-06-28 13:51:50'),
(15, 'updated', 13, 'App\\Reclamation', 1, '{\"id\":13,\"title\":\"problem technique\",\"content\":\"The home page isn\'t work for me\",\"author_name\":\"customer\",\"author_email\":\"customer@gmail.com\",\"created_at\":\"2020-06-28 14:51:50\",\"updated_at\":\"2020-06-28 16:13:43\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":\"2\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Reclamation\",\"model_id\":13,\"collection_name\":\"attachments\",\"name\":\"5ef8ae6a25329_2\",\"file_name\":\"5ef8ae6a25329_2.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":58083,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2020-06-28 14:52:05\",\"updated_at\":\"2020-06-28 14:52:10\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Reclamation\",\"model_id\":13,\"collection_name\":\"attachments\",\"name\":\"5ef8ae6a25329_2\",\"file_name\":\"5ef8ae6a25329_2.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":58083,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2020-06-28 14:52:05\",\"updated_at\":\"2020-06-28 14:52:10\"}]}', '127.0.0.1', '2020-06-28 15:13:43', '2020-06-28 15:13:43'),
(16, 'created', 14, 'App\\Reclamation', 3, '{\"author_name\":\"customer 2\",\"author_email\":\"customer@gmail.com\",\"title\":\"problem technique\",\"content\":\"The page isn\'t show for me\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2020-06-28 16:22:42\",\"created_at\":\"2020-06-28 16:22:42\",\"id\":14,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-28 15:22:42', '2020-06-28 15:22:42'),
(17, 'updated', 14, 'App\\Reclamation', 1, '{\"id\":14,\"title\":\"problem technique\",\"content\":\"The page isn\'t show for me\",\"author_name\":\"customer 2\",\"author_email\":\"customer@gmail.com\",\"created_at\":\"2020-06-28 16:22:42\",\"updated_at\":\"2020-06-28 16:26:51\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":\"33\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}]}', '127.0.0.1', '2020-06-28 15:26:51', '2020-06-28 15:26:51'),
(18, 'updated', 14, 'App\\Reclamation', 1, '{\"id\":14,\"title\":\"problem technique\",\"content\":\"The page isn\'t show for me\",\"author_name\":\"customer 2\",\"author_email\":\"customer@gmail.com\",\"created_at\":\"2020-06-28 16:22:42\",\"updated_at\":\"2020-06-28 23:01:24\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":\"2\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}]}', '127.0.0.1', '2020-06-28 22:01:24', '2020-06-28 22:01:24'),
(19, 'updated', 14, 'App\\Reclamation', 1, '{\"id\":14,\"title\":\"problem technique\",\"content\":\"The page isn\'t show for me\",\"author_name\":\"customer 2\",\"author_email\":\"customer@gmail.com\",\"created_at\":\"2020-06-28 16:22:42\",\"updated_at\":\"2020-06-28 23:10:33\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":\"33\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}]}', '127.0.0.1', '2020-06-28 22:10:33', '2020-06-28 22:10:33'),
(20, 'updated', 14, 'App\\Reclamation', 1, '{\"id\":14,\"title\":\"problem technique\",\"content\":\"The page isn\'t show for me\",\"author_name\":\"customer 2\",\"author_email\":\"customer@gmail.com\",\"created_at\":\"2020-06-28 16:22:42\",\"updated_at\":\"2020-06-28 23:21:36\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":\"32\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}]}', '127.0.0.1', '2020-06-28 22:21:36', '2020-06-28 22:21:36'),
(21, 'deleted', 14, 'App\\Reclamation', 1, '{\"id\":14,\"title\":\"problem technique\",\"content\":\"The page isn\'t show for me\",\"author_name\":\"customer 2\",\"author_email\":\"customer@gmail.com\",\"created_at\":\"2020-06-28 16:22:42\",\"updated_at\":\"2020-06-28 23:44:50\",\"deleted_at\":\"2020-06-28 23:44:50\",\"status_id\":1,\"priority_id\":1,\"category_id\":1,\"assigned_to_user_id\":32,\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Reclamation\",\"model_id\":14,\"collection_name\":\"attachments\",\"name\":\"5ef8c3cf6ccfc_1\",\"file_name\":\"5ef8c3cf6ccfc_1.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":39182,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2020-06-28 16:22:46\",\"updated_at\":\"2020-06-28 16:22:49\"}]}', '127.0.0.1', '2020-06-28 22:44:50', '2020-06-28 22:44:50'),
(22, 'deleted', 13, 'App\\Reclamation', 1, '{\"id\":13,\"title\":\"problem technique\",\"content\":\"The home page isn\'t work for me\",\"author_name\":\"customer\",\"author_email\":\"customer@gmail.com\",\"created_at\":\"2020-06-28 14:51:50\",\"updated_at\":\"2020-06-29 01:18:49\",\"deleted_at\":\"2020-06-29 01:18:49\",\"status_id\":1,\"priority_id\":1,\"category_id\":1,\"assigned_to_user_id\":2,\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Reclamation\",\"model_id\":13,\"collection_name\":\"attachments\",\"name\":\"5ef8ae6a25329_2\",\"file_name\":\"5ef8ae6a25329_2.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":58083,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2020-06-28 14:52:05\",\"updated_at\":\"2020-06-28 14:52:10\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Reclamation\",\"model_id\":13,\"collection_name\":\"attachments\",\"name\":\"5ef8ae6a25329_2\",\"file_name\":\"5ef8ae6a25329_2.PNG\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"size\":58083,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2020-06-28 14:52:05\",\"updated_at\":\"2020-06-28 14:52:10\"}]}', '127.0.0.1', '2020-06-29 00:18:49', '2020-06-29 00:18:49'),
(23, 'created', 15, 'App\\Reclamation', 3, '{\"author_name\":\"customer 3\",\"author_email\":\"customer@customer.com\",\"title\":\"technique problem\",\"content\":\"The page home doesn\'t show for me\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2020-06-29 01:35:39\",\"created_at\":\"2020-06-29 01:35:39\",\"id\":15,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-29 00:35:39', '2020-06-29 00:35:39'),
(24, 'updated', 15, 'App\\Reclamation', 1, '{\"id\":15,\"title\":\"technique problem\",\"content\":\"The page home doesn\'t show for me\",\"author_name\":\"customer 3\",\"author_email\":\"customer@customer.com\",\"created_at\":\"2020-06-29 01:35:39\",\"updated_at\":\"2020-06-29 01:40:42\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":\"2\",\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-29 00:40:42', '2020-06-29 00:40:42'),
(25, 'updated', 15, 'App\\Reclamation', 2, '{\"id\":15,\"title\":\"technique problem\",\"content\":\"The page home doesn\'t show for me\",\"author_name\":\"customer 3\",\"author_email\":\"customer@customer.com\",\"created_at\":\"2020-06-29 01:35:39\",\"updated_at\":\"2020-06-29 01:43:53\",\"deleted_at\":null,\"status_id\":\"2\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":2,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-29 00:43:53', '2020-06-29 00:43:53'),
(26, 'updated', 15, 'App\\Reclamation', 2, '{\"id\":15,\"title\":\"technique problem\",\"content\":\"The page home doesn\'t show for me\",\"author_name\":\"customer 3\",\"author_email\":\"customer@customer.com\",\"created_at\":\"2020-06-29 01:35:39\",\"updated_at\":\"2020-06-29 05:04:25\",\"deleted_at\":null,\"status_id\":\"2\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":2,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-29 04:04:25', '2020-06-29 04:04:25'),
(27, 'updated', 15, 'App\\Reclamation', 2, '{\"id\":15,\"title\":\"technique problem\",\"content\":\"The page home doesn\'t show for me\",\"author_name\":\"customer 3\",\"author_email\":\"customer@customer.com\",\"created_at\":\"2020-06-29 01:35:39\",\"updated_at\":\"2020-06-29 05:16:14\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":2,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-29 04:16:14', '2020-06-29 04:16:14'),
(28, 'updated', 15, 'App\\Reclamation', 2, '{\"id\":15,\"title\":\"technique problem\",\"content\":\"The page home doesn\'t show for me\",\"author_name\":\"customer 3\",\"author_email\":\"customer@customer.com\",\"created_at\":\"2020-06-29 01:35:39\",\"updated_at\":\"2020-06-29 05:17:28\",\"deleted_at\":null,\"status_id\":\"2\",\"priority_id\":\"1\",\"category_id\":\"1\",\"assigned_to_user_id\":2,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2020-06-29 04:17:28', '2020-06-29 04:17:28');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Uncategorized', '#220308', '2020-06-23 19:32:22', '2020-06-23 19:32:22', NULL),
(2, 'Billing/Payments', '#749def', '2020-06-23 19:32:22', '2020-06-23 19:32:22', NULL),
(3, 'Technical question', '#d543fd', '2020-06-23 19:32:22', '2020-06-23 19:32:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `reclamation_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reclamation_fk_583774` (`reclamation_id`),
  KEY `user_fk_583777` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `author_email`, `comment_text`, `created_at`, `updated_at`, `deleted_at`, `reclamation_id`, `user_id`) VALUES
(1, 'Admin', 'admin@admin.com', 'Right we are going to solve your problem soon as we can', '2020-06-28 09:59:28', '2020-06-28 10:07:32', NULL, 10, 1),
(2, 'Admin', 'admin@admin.com', 'This claim is closed', '2020-06-28 15:15:06', '2020-06-28 15:15:48', NULL, 13, 1),
(3, 'Responsible', 'responsible@responsible.com', 'Ok today we are going to close this claim', '2020-06-28 15:19:41', '2020-06-28 15:19:41', NULL, NULL, 2),
(4, 'customer 2', 'customer@gmail.com', 'Please answer me soon as you can', '2020-06-28 15:23:53', '2020-06-28 15:29:31', NULL, 14, 3),
(5, 'Admin', 'admin@admin.com', 'Ok we recieve your claim', '2020-06-28 15:27:52', '2020-06-28 15:28:38', NULL, 14, 1),
(6, 'customer 3', 'customer@customer.com', 'Please answer me soon as you can', '2020-06-29 00:36:31', '2020-06-29 00:36:31', NULL, 15, NULL),
(7, 'Responsible', 'responsible@responsible.com', 'Ok your problem is fixed', '2020-06-29 00:43:09', '2020-06-29 00:45:48', NULL, 15, 2),
(8, 'customer 3', 'customer@customer.com', 'Thank you', '2020-06-29 04:19:21', '2020-06-29 04:19:21', NULL, 15, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Reclamation', 13, 'attachments', '5ef8ae6a25329_2', '5ef8ae6a25329_2.PNG', 'image/png', 'public', 58083, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2020-06-28 13:52:05', '2020-06-28 13:52:10'),
(2, 'App\\Reclamation', 14, 'attachments', '5ef8c3cf6ccfc_1', '5ef8c3cf6ccfc_1.PNG', 'image/png', 'public', 39182, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2020-06-28 15:22:46', '2020-06-28 15:22:49');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_04_09_000001_create_permissions_table', 1),
(8, '2020_04_09_000002_create_roles_table', 1),
(9, '2020_04_09_000003_create_users_table', 1),
(10, '2020_04_09_000004_create_statuses_table', 1),
(11, '2020_04_09_000005_create_priorities_table', 1),
(12, '2020_04_09_000006_create_categories_table', 1),
(13, '2020_04_09_000007_create_reclamations_table', 1),
(14, '2020_04_09_000008_create_comments_table', 1),
(15, '2020_04_09_000009_create_permission_role_pivot_table', 1),
(16, '2020_04_09_000010_create_role_user_pivot_table', 1),
(17, '2020_04_09_000011_add_relationship_fields_to_reclamations_table', 1),
(18, '2020_04_09_000012_add_relationship_fields_to_comments_table', 1),
(19, '2020_04_09_000013_create_audit_logs_table', 1),
(20, '2020_04_10_000001_create_media_table', 1),
(21, '2020_06_20_021819_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'article_create', NULL, NULL, NULL),
(18, 'article_edit', NULL, NULL, NULL),
(19, 'article_show', NULL, NULL, NULL),
(20, 'article_delete', NULL, NULL, NULL),
(21, 'article_access', NULL, NULL, NULL),
(22, 'status_create', NULL, NULL, NULL),
(23, 'status_edit', NULL, NULL, NULL),
(24, 'status_show', NULL, NULL, NULL),
(25, 'status_delete', NULL, NULL, NULL),
(26, 'status_access', NULL, NULL, NULL),
(27, 'priority_create', NULL, NULL, NULL),
(28, 'priority_edit', NULL, NULL, NULL),
(29, 'priority_show', NULL, NULL, NULL),
(30, 'priority_delete', NULL, NULL, NULL),
(31, 'priority_access', NULL, NULL, NULL),
(32, 'category_create', NULL, NULL, NULL),
(33, 'category_edit', NULL, NULL, NULL),
(34, 'category_show', NULL, NULL, NULL),
(35, 'category_delete', NULL, NULL, NULL),
(36, 'category_access', NULL, NULL, NULL),
(37, 'reclamation_create', NULL, NULL, NULL),
(38, 'reclamation_edit', NULL, NULL, NULL),
(39, 'reclamation_show', NULL, NULL, NULL),
(40, 'reclamation_delete', NULL, NULL, NULL),
(41, 'reclamation_access', NULL, NULL, NULL),
(42, 'comment_create', NULL, NULL, NULL),
(43, 'comment_edit', NULL, NULL, NULL),
(44, 'comment_show', NULL, NULL, NULL),
(45, 'comment_delete', NULL, NULL, NULL),
(46, 'comment_access', NULL, NULL, NULL),
(47, 'audit_log_show', NULL, NULL, NULL),
(48, 'audit_log_access', NULL, NULL, NULL),
(49, 'dashboard_access', NULL, NULL, NULL),
(50, 'reclamation_customer', NULL, NULL, NULL),
(51, 'claim_management', NULL, NULL, NULL),
(52, 'manage_client', '2020-06-28 15:00:42', '2020-06-28 15:01:09', '2020-06-28 15:01:09'),
(53, 'Customer_Mangement', '2020-06-28 21:51:20', '2020-06-28 21:52:42', '2020-06-28 21:52:42');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  KEY `role_id_fk_583549` (`role_id`),
  KEY `permission_id_fk_583549` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 51),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 49),
(3, 51),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 49),
(2, 50),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(4, 35),
(4, 36),
(4, 37),
(4, 38),
(4, 39),
(4, 40),
(4, 41),
(4, 42),
(4, 43),
(4, 44),
(4, 45),
(4, 46),
(4, 47),
(4, 48),
(4, 49),
(4, 50),
(4, 51),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(5, 34),
(5, 35),
(5, 36),
(5, 37),
(5, 38),
(5, 39),
(5, 40),
(5, 41),
(5, 42),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(5, 49),
(5, 50),
(5, 51);

-- --------------------------------------------------------

--
-- Structure de la table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
CREATE TABLE IF NOT EXISTS `priorities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `priorities`
--

INSERT INTO `priorities` (`id`, `name`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Low', '#ef6ae7', '2020-06-23 19:32:22', '2020-06-23 19:32:22', NULL),
(2, 'Medium', '#11163b', '2020-06-23 19:32:22', '2020-06-23 19:32:22', NULL),
(3, 'High', '#bcc83a', '2020-06-23 19:32:22', '2020-06-23 19:32:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reclamations`
--

DROP TABLE IF EXISTS `reclamations`;
CREATE TABLE IF NOT EXISTS `reclamations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `priority_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `assigned_to_user_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_fk_583763` (`status_id`),
  KEY `priority_fk_583764` (`priority_id`),
  KEY `category_fk_583765` (`category_id`),
  KEY `assigned_to_user_fk_583768` (`assigned_to_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reclamations`
--

INSERT INTO `reclamations` (`id`, `title`, `content`, `author_name`, `author_email`, `created_at`, `updated_at`, `deleted_at`, `status_id`, `priority_id`, `category_id`, `assigned_to_user_id`) VALUES
(1, 'Ms.', 'Ex aut eius nesciunt suscipit. Voluptas enim dolores dolore voluptatem. Asperiores voluptatem optio maiores consequuntur architecto recusandae molestiae. Eligendi qui et ut tempore molestias.', 'Mr. Zackery O\'Reilly', 'friedrich03@example.com', '2020-06-23 19:43:05', '2020-06-23 19:43:05', NULL, 2, 1, 3, 41),
(2, 'Mrs.', 'Nulla enim modi et ab. Velit rem voluptatem consequatur consequatur totam. Et cum enim officiis expedita autem aut vitae. Repellat beatae quasi quia voluptatem voluptate nisi nostrum.', 'Lavina Jacobs', 'jack.mayert@example.org', '2020-06-23 19:44:26', '2020-06-23 19:44:26', NULL, 2, 1, 2, 3),
(3, 'Miss', 'Sit cum cum odio aliquid. Vel voluptatem minima quidem ut eum ut quae. Quia facilis voluptas eius soluta maxime quibusdam.', 'Una Swift', 'fadel.bernard@example.com', '2020-06-23 19:44:34', '2020-06-23 19:44:34', NULL, 2, 1, 2, 42),
(4, 'Mr.', 'Dolores exercitationem numquam soluta impedit. Voluptatem minima odio sunt voluptatum et quia dolores. Voluptas expedita qui et. Officia non possimus quia sed.', 'Jerrod Crist', 'keeling.destiney@example.com', '2020-06-23 19:44:37', '2020-06-23 19:44:37', NULL, 1, 3, 3, 41),
(5, 'Mr.', 'Autem saepe vitae beatae dolor voluptatum ut exercitationem. Error id architecto doloribus. Atque earum debitis vero doloribus expedita optio.', 'Oswald Nikolaus', 'aiden99@example.com', '2020-06-23 19:44:40', '2020-06-23 19:44:40', NULL, 2, 3, 1, 3),
(6, 'Dr.', 'Alias error dignissimos asperiores consequatur sit sed recusandae. Voluptas quidem ipsa enim aliquam consequatur et. Praesentium cum temporibus rem magnam qui quibusdam temporibus.', 'Kaley Bergnaum', 'heidenreich.demarco@example.net', '2020-06-23 19:44:42', '2020-06-23 19:44:42', NULL, 1, 1, 1, 40),
(7, 'Dr.', 'Pariatur nobis quam dolore possimus quia tempore. Voluptatibus voluptatibus non quidem voluptatibus quidem. Sed sit tenetur sed quod veniam blanditiis. Odio impedit et est sed.', 'Daija Harris', 'misael82@example.net', '2020-06-23 19:44:45', '2020-06-23 19:44:45', NULL, 2, 2, 1, 40),
(8, 'Prof.', 'Sit veritatis magni ut ut. Eius dolor qui sed temporibus assumenda.', 'Lonny Reynolds', 'kohler.anabelle@example.com', '2020-06-23 19:44:47', '2020-06-23 19:44:47', NULL, 2, 2, 2, 42),
(9, 'Mr.', 'Similique et impedit architecto itaque labore. Et id dolor ipsum non facere sed. Hic alias vel quia quo et officia. Libero perspiciatis qui vel.', 'Jefferey Dietrich', 'parisian.leonard@example.com', '2020-06-23 19:44:52', '2020-06-23 19:44:52', NULL, 2, 1, 3, 40),
(10, 'Dr.', 'Eveniet explicabo est ullam quia maxime rerum. Quam perspiciatis architecto minima eaque aperiam impedit aut. Officia voluptatem ullam laborum quas alias.', 'Loraine McGlynn', 'nova53@example.com', '2020-06-23 19:44:56', '2020-06-23 19:44:56', NULL, 2, 2, 3, 41),
(11, 'Dr.', 'Rerum necessitatibus ea temporibus et non odio dignissimos. Voluptatem magni suscipit odit quia. Officiis voluptatem tenetur alias nihil sint enim.', 'Kip Bins', 'kari19@example.org', '2020-06-23 19:45:00', '2020-06-23 19:45:00', NULL, 1, 2, 2, 41),
(12, 'Dr.', 'Minus ullam in eveniet itaque praesentium nisi velit. Cumque veniam atque vero omnis placeat sunt. Earum quam laudantium minus officiis vitae. Velit suscipit sed velit.', 'Sim Raynor', 'theodora.bogisich@example.net', '2020-06-23 19:45:36', '2020-06-28 08:16:42', '2020-06-28 08:16:42', 1, 3, 1, 3),
(13, 'problem technique', 'The home page isn\'t work for me', 'customer', 'customer@gmail.com', '2020-06-28 13:51:50', '2020-06-29 00:18:49', '2020-06-29 00:18:49', 1, 1, 1, 2),
(14, 'problem technique', 'The page isn\'t show for me', 'customer 2', 'customer@gmail.com', '2020-06-28 15:22:42', '2020-06-28 22:44:50', '2020-06-28 22:44:50', 1, 1, 1, 32),
(15, 'technique problem', 'The page home doesn\'t show for me', 'customer 3', 'customer@customer.com', '2020-06-29 00:35:39', '2020-06-29 04:17:28', NULL, 2, 1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2020-04-15 18:13:32', '2020-04-15 18:13:32', NULL),
(2, 'Customer', '2020-04-15 18:13:32', '2020-04-15 18:13:32', NULL),
(3, 'Responsible', '2020-04-15 18:13:32', '2020-04-15 18:13:32', NULL),
(4, 'Saler', '2020-06-28 15:03:41', '2020-06-28 15:04:11', '2020-06-28 15:04:11'),
(5, 'Saler', '2020-06-28 21:54:15', '2020-06-28 21:54:41', '2020-06-28 21:54:41');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  KEY `user_id_fk_583558` (`user_id`),
  KEY `role_id_fk_583558` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2);

-- --------------------------------------------------------

--
-- Structure de la table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Open', '#6aaf9c', '2020-06-23 19:32:22', '2020-06-23 19:32:22', NULL),
(2, 'Closed', '#295ad9', '2020-06-23 19:32:22', '2020-06-28 15:11:51', NULL),
(3, 'Recieved', '#780505', '2020-06-28 21:59:02', '2020-06-28 21:59:28', '2020-06-28 21:59:28');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', '2020-04-15 19:13:32', '$2y$10$imU.Hdz7VauIT3LIMCMbsOXvaaTQg6luVqkhfkBcsUd.SJW2XSRKO', NULL, '2020-04-15 18:13:32', '2020-04-15 18:13:32', NULL),
(2, 'Responsible', 'responsible@responsible.com', '2020-04-15 19:13:32', '$2y$10$imU.Hdz7VauIT3LIMCMbsOXvaaTQg6luVqkhfkBcsUd.SJW2XSRKO', NULL, '2020-04-15 18:13:32', '2020-04-15 18:13:32', NULL),
(3, 'Customer', 'customer@customer.com', '2020-04-15 19:13:32', '$2y$10$imU.Hdz7VauIT3LIMCMbsOXvaaTQg6luVqkhfkBcsUd.SJW2XSRKO', NULL, '2020-04-15 18:13:32', '2020-04-15 18:13:32', NULL),
(54, 'amine wiksi', 'aminewiksi@gmail.com', NULL, '$2y$10$RK/WH5Z.Z0QP1zer1mlYvuKd5916ZMEIs83vssSiF9k29kptvk71O', NULL, '2020-06-28 21:55:48', '2020-06-28 21:56:55', '2020-06-28 21:56:55'),
(5, 'Cade Zemlak', 'stevie76@example.net', '2020-05-23 21:22:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6i5xywn1Fo', '2020-05-23 21:22:12', '2020-06-23 20:22:12', NULL),
(6, 'Mrs. Aniyah Stroman', 'blanche.rolfson@example.net', '2020-05-23 21:22:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's9qx1w2Wl9', '2020-05-23 21:22:12', '2020-05-23 21:22:12', NULL),
(7, 'Carlee Emard', 'jeffery60@example.net', '2020-05-23 21:22:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lQnka3Rq6b', '2020-05-23 21:22:12', '2020-05-23 21:22:12', NULL),
(8, 'Gabriella Roob', 'rath.sheldon@example.org', '2020-05-23 21:22:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WzM7RPmbLo', '2020-05-23 21:22:12', '2020-05-23 21:22:12', NULL),
(9, 'Ludwig Rath', 'cameron47@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kJkcK7fj7i', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(10, 'Miss Stacy Lebsack III', 'fdickens@example.org', '2020-05-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k7EqVehUa8', '2020-05-23 20:33:47', '2020-05-23 20:33:47', NULL),
(11, 'Felix Kohler', 'marisa83@example.org', '2020-05-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w6m11QnMSQ', '2020-05-23 20:33:47', '2020-05-23 20:33:47', NULL),
(12, 'Julianne Gorczany', 'ethan71@example.com', '2020-05-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kbQprjLPv4', '2020-05-23 20:33:47', '2020-05-23 20:33:47', NULL),
(13, 'Helena Krajcik', 'allen.grant@example.net', '2020-05-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C7QCzMuMCt', '2020-05-23 20:33:47', '2020-05-23 20:33:47', NULL),
(14, 'Blaze Towne DVM', 'misael45@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CbjQW98x30', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(15, 'Ella Will', 'rosario62@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PF64GIkO47', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(16, 'Mr. Lucious Kessler PhD', 'penelope11@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SzhndAznTA', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(17, 'Miss Magali Moore Jr.', 'olson.tad@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EDeirCfz3K', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(18, 'Claudie Rolfson', 'psmitham@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EHgMb4c5bM', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(19, 'Lilyan Collier', 'ghoeger@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JdfSFDJhmY', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(20, 'Abdullah Kohler', 'eusebio.kuhn@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AWeQYyjwJB', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(21, 'Melody Murphy', 'kcole@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kien7ZYTZo', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(22, 'Israel Graham I', 'braun.myrtle@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uoldZnbs10', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(23, 'Mr. Cordell Klocko', 'adolf.walsh@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uLMNywxg5a', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(24, 'Prof. Sadye Koelpin', 'ephraim.bartell@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V5Rn0nqsCs', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(25, 'Maximillian Bins Sr.', 'shana28@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g3x74rFVvB', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(26, 'Dr. Fred Buckridge III', 'dicki.johanna@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9JDU2GE8fv', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(27, 'Carleton Robel', 'cleannon@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qw9X2oArQM', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(28, 'Adalberto Walsh Jr.', 'scottie29@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f60T76YTSn', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(29, 'Andreane Windler', 'mckenna38@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tfyQh1EfJ6', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(30, 'Christop Hartmann', 'adella90@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R480VHzvcm', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(31, 'Miss Una Prosacco DDS', 'colin66@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4VuazSpdnS', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(32, 'Dr. Einar Hand', 'corine37@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gabckrNX4n', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(33, 'Filomena Pacocha', 'akohler@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'amqDbu7ZgN', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(34, 'Ms. Amy Spencer IV', 'buckridge.benedict@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GcU6MasBB0', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(35, 'Eveline Wuckert', 'tristin29@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CO51IitfkK', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(36, 'Mr. Uriah Goodwin', 'wkoss@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NJDn6Um6a9', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(37, 'Lilyan Hammes Jr.', 'tremblay.natasha@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MzOVO0ThYn', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(38, 'Elenor Gaylord', 'creynolds@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VG4N6dW6hX', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(39, 'Lucile Spinka', 'klocko.sanford@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GqMM9usbZK', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(40, 'Sally Balistreri', 'dzboncak@example.org', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FJl6Tnxjzs', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(41, 'Kennedi Stroman', 'nader.laurine@example.com', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4ldt7JzPaU', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(42, 'Marisol Casper', 'bogan.xander@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1u56SmWZfmsrIfbIDENRepLoOlQXyxm0LyD4Msvgmr68XnOAbdWZ51I1EQd8', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(43, 'Dr. Queenie Krajcik Sr.', 'consuelo60@example.net', '2020-06-23 20:33:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OEd1Kqx2x2', '2020-06-23 19:33:47', '2020-06-23 19:33:47', NULL),
(44, 'Dr. Morgan Pollich MD', 'gilda.hahn@example.net', '2020-06-28 13:40:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EudC8PeNry', '2020-06-28 12:40:41', '2020-06-28 12:40:41', NULL),
(45, 'Vincenza Hammes DVM', 'mcglynn.clarabelle@example.org', '2020-06-28 13:40:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WvuOQvcfUf', '2020-06-28 12:40:42', '2020-06-28 12:40:42', NULL),
(46, 'Dr. Efrain Sipes I', 'ymorar@example.net', '2020-06-28 13:40:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0IiswlIWiE', '2020-06-28 12:40:42', '2020-06-28 12:40:42', NULL),
(47, 'Lucile Weber', 'halvorson.winnifred@example.com', '2020-06-28 13:40:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rThV0sXAo7', '2020-06-28 12:40:42', '2020-06-28 12:40:42', NULL),
(59, 'anas khalid', 'anaskh@gmail.com', NULL, '$2y$10$vcwDELdKUyTQkCpJDxZ6.ulK/KexrBq8qATCGaKAfPO0cfba.EpZS', NULL, '2020-06-29 05:13:31', '2020-06-29 05:13:31', NULL),
(58, 'yassine malik', 'yassinemalik@gmail.com', NULL, '$2y$10$fUMh02Bd0oFtFOljN6kBiuYeaXx1bgn1J4M1sbSsSlYbCLdkuiROa', NULL, '2020-06-29 04:44:22', '2020-06-29 04:44:22', NULL),
(57, 'kamal ahmed', 'kamalahmed@gmail.com', NULL, '$2y$10$hX25ksL.ngTHMuhlEnHVVOTIhaOhk0WpISj3hWi01MvUS02lHTNXy', NULL, '2020-06-29 04:37:48', '2020-06-29 04:37:48', NULL),
(56, 'khalid Ait said', 'khalidsaid@gmail.com', NULL, '$2y$10$rzNMIJ4ntImz8iuHMj3lGu92POFJo8kQjTGlSvolmNYO7JrY81.cS', NULL, '2020-06-29 01:44:39', '2020-06-29 01:44:39', NULL),
(55, 'ahmed wiksi', 'ahmed@gmail.com', NULL, '$2y$10$sdnIjkyEaQPC/gR68SGt4eX9DFB/MZ6NoRAeFUjmYi2xy.2Q5Ume.', NULL, '2020-06-29 00:27:51', '2020-06-29 00:28:42', '2020-06-29 00:28:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
