-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para quickstart
CREATE DATABASE IF NOT EXISTS `quickstart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `quickstart`;

-- Volcando estructura para tabla quickstart.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla quickstart.migrations: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(3, '2020_01_20_090405_create_tasks_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla quickstart.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla quickstart.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla quickstart.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla quickstart.tasks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(1, 'test', 0, '2020-01-20 09:39:18', '2020-01-20 09:39:18');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(3, 'test1', 0, '2020-01-20 10:11:45', '2020-01-20 10:11:45');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(4, 'test2', 0, '2020-01-20 10:11:48', '2020-01-20 10:11:48');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(5, 'test', 0, '2020-01-20 10:44:13', '2020-01-20 10:44:13');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(6, 'test', 0, '2020-01-20 10:44:13', '2020-01-20 10:44:13');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(7, 'test', 1, '2020-01-20 10:44:13', '2020-01-20 10:44:13');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(8, 'test', 0, '2020-01-20 10:44:13', '2020-01-20 10:44:13');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(9, 'test', 0, '2020-01-20 10:44:13', '2020-01-20 10:44:13');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(10, 'test', 0, '2020-01-20 10:44:13', '2020-01-20 10:44:13');
INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`) VALUES
	(13, 'test', 0, '2020-01-20 10:44:14', '2020-01-20 10:44:14');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;

-- Volcando estructura para tabla quickstart.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla quickstart.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
