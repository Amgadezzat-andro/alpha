# ************************************************************
# Antares - SQL Client
# Version 0.7.34
# 
# https://antares-sql.app/
# https://github.com/antares-sql/antares
# 
# Host: 127.0.0.1 ((Ubuntu) 8.0.45)
# Database: alpha
# Generation time: 2026-04-19T16:03:27+02:00
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ask_quote_webform
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ask_quote_webform`;

CREATE TABLE `ask_quote_webform` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ask_quote_webform` WRITE;
/*!40000 ALTER TABLE `ask_quote_webform` DISABLE KEYS */;

INSERT INTO `ask_quote_webform` (`id`, `first_name`, `last_name`, `email`, `company`, `country`, `phone`, `product`, `quantity`, `file_upload`, `message`, `created_at`) VALUES
	(1, "Kay", "Evans", "pary@mailinator.com", "knadnaskjdna", "Egypt", "062001234", "Self-Adhesive Labels", 555, "ask-quote/gCljI2_1776271454_169960673018424.png", "asdlkmakd", 1776271454);

/*!40000 ALTER TABLE `ask_quote_webform` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table audits
# ------------------------------------------------------------

DROP TABLE IF EXISTS `audits`;

CREATE TABLE `audits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint unsigned NOT NULL,
  `old_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  KEY `audits_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
	(1, "App\\Models\\User", 1, "created", "App\\Models\\Media\\Media", 1, "[]", "{\"disk\":\"public\",\"directory\":\"media\\/2026\\/04\\/15\",\"visibility\":\"public\",\"name\":\"5e862540-0dd2-4214-9c15-0b443390085d\",\"path\":\"media\\/2026\\/04\\/15\\/5e862540-0dd2-4214-9c15-0b443390085d.png\",\"exif\":null,\"width\":1080,\"height\":285,\"size\":112957,\"type\":\"image\\/png\",\"ext\":\"png\",\"title\":\"logo33\",\"created_by\":1,\"updated_by\":1,\"id\":1}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:53:25", "2026-04-15 10:53:25"),
	(2, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 262, "[]", "{\"key\":\"en.general.title\",\"value\":\"\\\"Alpha Pack\\\"\",\"id\":262}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(3, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 263, "[]", "{\"key\":\"en.general.description\",\"value\":\"\\\"Stickers & Labels\\\"\",\"id\":263}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(4, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 264, "[]", "{\"key\":\"en.general.keywords\",\"value\":\"\\\"Alpha Pack Stickers & Labels\\\"\",\"id\":264}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(5, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 265, "[]", "{\"key\":\"en.general.seo_image\",\"value\":\"1\",\"id\":265}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(6, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 266, "[]", "{\"key\":\"general.date_format\",\"value\":\"\\\"F d, Y\\\"\",\"id\":266}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(7, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 267, "[]", "{\"key\":\"general.time_format\",\"value\":\"\\\"g:i a\\\"\",\"id\":267}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(8, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 268, "[]", "{\"key\":\"general.time_zone\",\"value\":\"\\\"Asia\\\\\\/Amman\\\"\",\"id\":268}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(9, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 269, "[]", "{\"key\":\"general.google_site_verification\",\"value\":null,\"id\":269}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(10, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 270, "[]", "{\"key\":\"general.filament_id\",\"value\":\"\\\"admin\\\"\",\"id\":270}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(11, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 271, "[]", "{\"key\":\"general.filament_path\",\"value\":\"\\\"admin\\\"\",\"id\":271}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(12, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 272, "[]", "{\"key\":\"general.google_recaptcha_site_key\",\"value\":null,\"id\":272}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(13, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 273, "[]", "{\"key\":\"general.google_recaptcha_secret\",\"value\":null,\"id\":273}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(14, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 274, "[]", "{\"key\":\"general.smtp_host\",\"value\":null,\"id\":274}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(15, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 275, "[]", "{\"key\":\"general.smtp_port\",\"value\":null,\"id\":275}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(16, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 276, "[]", "{\"key\":\"general.smtp_encryption\",\"value\":null,\"id\":276}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(17, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 277, "[]", "{\"key\":\"general.smtp_username\",\"value\":null,\"id\":277}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(18, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 278, "[]", "{\"key\":\"general.smtp_password\",\"value\":null,\"id\":278}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(19, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 279, "[]", "{\"key\":\"general.google_analytics_code\",\"value\":null,\"id\":279}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(20, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 280, "[]", "{\"key\":\"general.google_tag_code\",\"value\":null,\"id\":280}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(21, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 281, "[]", "{\"key\":\"general.meta_pixel_code\",\"value\":null,\"id\":281}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(22, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 282, "[]", "{\"key\":\"general.clarity_code\",\"value\":null,\"id\":282}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(23, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 283, "[]", "{\"key\":\"general.hotjar_code\",\"value\":null,\"id\":283}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(24, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 284, "[]", "{\"key\":\"en.site.logo\",\"value\":\"1\",\"id\":284}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(25, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 285, "[]", "{\"key\":\"en.site.icon\",\"value\":\"1\",\"id\":285}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(26, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 286, "[]", "{\"key\":\"site.admin_panel_color\",\"value\":\"\\\"#12a100\\\"\",\"id\":286}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(27, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 287, "[]", "{\"key\":\"en.site.footer_logo\",\"value\":\"1\",\"id\":287}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(28, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 288, "[]", "{\"key\":\"site.contact_us_email_list\",\"value\":null,\"id\":288}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(29, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 289, "[]", "{\"key\":\"site.phone\",\"value\":null,\"id\":289}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(30, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 290, "[]", "{\"key\":\"site.fax\",\"value\":null,\"id\":290}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(31, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 291, "[]", "{\"key\":\"site.management_email\",\"value\":null,\"id\":291}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(32, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 292, "[]", "{\"key\":\"en.site.location\",\"value\":null,\"id\":292}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(33, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 293, "[]", "{\"key\":\"site.location_url\",\"value\":null,\"id\":293}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(34, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 294, "[]", "{\"key\":\"site.location_coordinate\",\"value\":null,\"id\":294}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(35, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 295, "[]", "{\"key\":\"site.business_hours\",\"value\":null,\"id\":295}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 10:54:12", "2026-04-15 10:54:12"),
	(36, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 289, "{\"value\":null}", "{\"value\":\"\\\"+1 234 567 89\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:41", "2026-04-15 11:34:41"),
	(37, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 291, "{\"value\":null}", "{\"value\":\"\\\"info@alphapack.com\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:41", "2026-04-15 11:34:41"),
	(38, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 292, "{\"value\":null}", "{\"value\":\"\\\"Alpha Pack HQ Business District\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:41", "2026-04-15 11:34:41"),
	(39, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 293, "{\"value\":null}", "{\"value\":\"\\\"https:\\\\\\/\\\\\\/www.google.com\\\\\\/\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:41", "2026-04-15 11:34:41"),
	(40, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 294, "{\"value\":null}", "{\"value\":\"\\\"31.969812,35.902513\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:41", "2026-04-15 11:34:41"),
	(41, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 295, "{\"value\":null}", "{\"value\":\"\\\"Monday \\\\u2013 Friday: 8:00 AM \\\\u2013 5:30 PM\\\\nSaturday \\\\u2013 Sunday: Closed\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:41", "2026-04-15 11:34:41"),
	(42, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 3, "[]", "{\"slug\":\"social-media-links\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"Button Category\",\"updated_by\":1,\"created_by\":1,\"id\":3}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:55", "2026-04-15 11:34:55"),
	(43, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownListLang", 3, "[]", "{\"language\":\"en\",\"parent_id\":3,\"title\":\"social-media-links\",\"id\":3}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:34:55", "2026-04-15 11:34:55"),
	(44, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Button\\Model\\Button", 1, "[]", "{\"icon\":\"fab-facebook-f\",\"published_at\":\"1776211200\",\"status\":1,\"category_slug\":\"social-media-links\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":1}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:35:09", "2026-04-15 11:35:09"),
	(45, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Button\\Model\\ButtonLang", 1, "[]", "{\"language\":\"en\",\"parent_id\":1,\"url\":\"https:\\/\\/www.google.com\\/\",\"label\":\"Facebook\",\"id\":1}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:35:09", "2026-04-15 11:35:09"),
	(46, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Button\\Model\\Button", 2, "[]", "{\"icon\":\"fab-linkedin-in\",\"published_at\":\"1776211200\",\"status\":1,\"category_slug\":\"social-media-links\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":2}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:35:23", "2026-04-15 11:35:23"),
	(47, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Button\\Model\\ButtonLang", 2, "[]", "{\"language\":\"en\",\"parent_id\":2,\"url\":\"https:\\/\\/www.google.com\\/\",\"label\":\"LinkedIn\",\"id\":2}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:35:23", "2026-04-15 11:35:23"),
	(48, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 132, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 11:56:21", "2026-04-15 11:56:21"),
	(49, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 4, "[]", "{\"slug\":\"other\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"Contact Us Category\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":4}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 14:01:19", "2026-04-15 14:01:19"),
	(50, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownListLang", 4, "[]", "{\"language\":\"en\",\"parent_id\":4,\"title\":\"Other\",\"id\":4}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 14:01:19", "2026-04-15 14:01:19"),
	(51, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\ContactUsWebform\\Model\\ContactUsWebform", 1, "[]", "{\"first_name\":\"Kay\",\"last_name\":\"Evans\",\"company\":\"asxd\",\"product\":\"Other\",\"email\":\"pary@mailinator.com\",\"phone\":\"+9616200123\",\"message\":\"asdasd\",\"id\":1}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 14:15:17", "2026-04-15 14:15:17"),
	(52, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\ContactUsWebform\\Model\\ContactUsWebform", 2, "[]", "{\"first_name\":\"Kay\",\"last_name\":\"Evans\",\"company\":\"asxd\",\"product\":\"Other\",\"email\":\"pary@mailinator.com\",\"phone\":\"+9616200123\",\"message\":\"sdfsdf\",\"id\":2}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 14:21:18", "2026-04-15 14:21:18"),
	(53, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 7, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/sustainable-labeling-solutions", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 14:50:22", "2026-04-15 14:50:22"),
	(54, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 4, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/pharmaceutical-healthcare-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:08:35", "2026-04-15 15:08:35"),
	(55, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 4, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/blog/pharmaceutical-healthcare-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:08:39", "2026-04-15 15:08:39"),
	(56, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:08:42", "2026-04-15 15:08:42"),
	(57, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 1, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/food-beverage-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:08:45", "2026-04-15 15:08:45"),
	(58, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:08:52", "2026-04-15 15:08:52"),
	(59, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 10, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/shrink-sleeves-vs-stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:10:34", "2026-04-15 15:10:34"),
	(60, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:10:44", "2026-04-15 15:10:44"),
	(61, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 6, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/how-to-choose-right-label-material", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:10:51", "2026-04-15 15:10:51"),
	(62, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:11:00", "2026-04-15 15:11:00"),
	(63, "App\\Models\\User", 1, "created", "App\\Models\\Media\\Media", 9, "[]", "{\"disk\":\"public\",\"directory\":\"media\\/2026\\/04\\/15\",\"visibility\":\"public\",\"name\":\"9b9f7917-e5fb-45f5-9b8c-918bc7c76829\",\"path\":\"media\\/2026\\/04\\/15\\/9b9f7917-e5fb-45f5-9b8c-918bc7c76829.\",\"exif\":\"{\\\"FileName\\\":\\\"1Dqw0YSAPTDvFX7Q9IKsDzxDB5p8aT-metacGhvdG8tMTU4NjUyODExNjMxMS1hZDhkZDNjODMxMGQ=-.\\\",\\\"FileDateTime\\\":1776265959,\\\"FileSize\\\":730860,\\\"FileType\\\":2,\\\"MimeType\\\":\\\"image\\\\\\/jpeg\\\",\\\"SectionsFound\\\":\\\"\\\",\\\"COMPUTED\\\":{\\\"html\\\":\\\"width=\\\\\\\"1920\\\\\\\" height=\\\\\\\"1280\\\\\\\"\\\",\\\"Height\\\":1280,\\\"Width\\\":1920,\\\"IsColor\\\":1}}\",\"width\":1920,\"height\":1280,\"size\":730860,\"type\":\"image\\/jpeg\",\"ext\":\"\",\"title\":\"photo-1586528116311-ad8dd3c8310d\",\"created_by\":1,\"updated_by\":1,\"id\":9}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:12:42", "2026-04-15 15:12:42"),
	(64, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\Bms", 18, "[]", "{\"slug\":\"our-blog\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"blogs-index-banner\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":18}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:12:44", "2026-04-15 15:12:44"),
	(65, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 16, "[]", "{\"language\":\"en\",\"parent_id\":18,\"title\":\"Our Blog\",\"second_title\":null,\"brief\":\"Insights, tips, and industry knowledge from the world of labels and packaging.\",\"content\":null,\"content2\":null,\"image_id\":9,\"id\":16}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:12:44", "2026-04-15 15:12:44"),
	(66, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:12:58", "2026-04-15 15:12:58"),
	(67, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:12:59", "2026-04-15 15:12:59"),
	(68, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:12:59", "2026-04-15 15:12:59"),
	(69, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 4, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/pharmaceutical-healthcare-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:17:02", "2026-04-15 15:17:02"),
	(70, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"is_campaign\":0,\"published_at\":1775747413}", "{\"is_campaign\":false,\"published_at\":\"1775692800\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:17:59", "2026-04-15 15:17:59"),
	(71, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\BlogLang", 5, "{\"brief\":\"Asset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.\"}", "{\"brief\":\"Asset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.\\nAsset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:17:59", "2026-04-15 15:17:59"),
	(72, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 11, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/barcode-labels-best-practices", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:18:27", "2026-04-15 15:18:27"),
	(73, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/logistics-industrial-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:18:54", "2026-04-15 15:18:54"),
	(74, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/blog/logistics-industrial-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:19:46", "2026-04-15 15:19:46"),
	(75, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/blog/logistics-industrial-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:20:34", "2026-04-15 15:20:34"),
	(76, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/blog/logistics-industrial-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:20:36", "2026-04-15 15:20:36"),
	(77, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/blog/logistics-industrial-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:20:37", "2026-04-15 15:20:37"),
	(78, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/blog/logistics-industrial-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:20:51", "2026-04-15 15:20:51"),
	(79, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 4, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/blog/pharmaceutical-healthcare-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:21:03", "2026-04-15 15:21:03"),
	(80, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:22:53", "2026-04-15 15:22:53"),
	(81, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"views\":6}", "{\"views\":7}", "https://alpha.test/en/blog/cosmetics-personal-care-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:23:10", "2026-04-15 15:23:10"),
	(82, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\Blog\\Model\\Blog", 5, "{\"id\":5,\"category_id\":6,\"author\":\"Alpha Pack\",\"slug\":\"logistics-industrial-labels\",\"image_header\":null,\"image_campaign\":null,\"status\":1,\"comment_status\":1,\"is_campaign\":0,\"start_date\":null,\"end_date\":null,\"published_at\":1775692800,\"created_by\":1,\"updated_by\":1,\"revision\":1,\"changed\":0,\"reject_note\":null,\"view\":\"page\",\"layout\":\"main\",\"weight_order\":50,\"views\":6,\"reading_time\":4,\"video_id\":null,\"gallery_image_ids\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:29", "2026-04-15 15:24:29"),
	(83, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\Blog\\Model\\Blog", 6, "{\"id\":6,\"category_id\":7,\"author\":\"Alpha Pack\",\"slug\":\"how-to-choose-right-label-material\",\"image_header\":null,\"image_campaign\":null,\"status\":1,\"comment_status\":1,\"is_campaign\":0,\"start_date\":null,\"end_date\":null,\"published_at\":1775833813,\"created_by\":1,\"updated_by\":1,\"revision\":1,\"changed\":0,\"reject_note\":null,\"view\":\"page\",\"layout\":\"main\",\"weight_order\":60,\"views\":1,\"reading_time\":4,\"video_id\":null,\"gallery_image_ids\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:29", "2026-04-15 15:24:29"),
	(84, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\Blog\\Model\\Blog", 7, "{\"id\":7,\"category_id\":8,\"author\":\"Alpha Pack\",\"slug\":\"sustainable-labeling-solutions\",\"image_header\":null,\"image_campaign\":null,\"status\":1,\"comment_status\":1,\"is_campaign\":0,\"start_date\":null,\"end_date\":null,\"published_at\":1775920213,\"created_by\":1,\"updated_by\":1,\"revision\":1,\"changed\":0,\"reject_note\":null,\"view\":\"page\",\"layout\":\"main\",\"weight_order\":70,\"views\":0,\"reading_time\":4,\"video_id\":null,\"gallery_image_ids\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:29", "2026-04-15 15:24:29"),
	(85, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\Blog\\Model\\Blog", 8, "{\"id\":8,\"category_id\":9,\"author\":\"Alpha Pack\",\"slug\":\"why-tamper-proof-labels-matter\",\"image_header\":null,\"image_campaign\":null,\"status\":1,\"comment_status\":1,\"is_campaign\":0,\"start_date\":null,\"end_date\":null,\"published_at\":1776006613,\"created_by\":1,\"updated_by\":1,\"revision\":1,\"changed\":0,\"reject_note\":null,\"view\":\"page\",\"layout\":\"main\",\"weight_order\":80,\"views\":0,\"reading_time\":3,\"video_id\":null,\"gallery_image_ids\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:29", "2026-04-15 15:24:29"),
	(86, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\Blog\\Model\\Blog", 9, "{\"id\":9,\"category_id\":10,\"author\":\"Alpha Pack\",\"slug\":\"color-accuracy-label-printing\",\"image_header\":null,\"image_campaign\":null,\"status\":1,\"comment_status\":1,\"is_campaign\":0,\"start_date\":null,\"end_date\":null,\"published_at\":1776093013,\"created_by\":1,\"updated_by\":1,\"revision\":1,\"changed\":0,\"reject_note\":null,\"view\":\"page\",\"layout\":\"main\",\"weight_order\":90,\"views\":0,\"reading_time\":4,\"video_id\":null,\"gallery_image_ids\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:29", "2026-04-15 15:24:29"),
	(87, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\Blog\\Model\\Blog", 10, "{\"id\":10,\"category_id\":11,\"author\":\"Alpha Pack\",\"slug\":\"shrink-sleeves-vs-stretch-sleeves\",\"image_header\":null,\"image_campaign\":null,\"status\":1,\"comment_status\":1,\"is_campaign\":0,\"start_date\":null,\"end_date\":null,\"published_at\":1776179413,\"created_by\":1,\"updated_by\":1,\"revision\":1,\"changed\":0,\"reject_note\":null,\"view\":\"page\",\"layout\":\"main\",\"weight_order\":100,\"views\":1,\"reading_time\":5,\"video_id\":null,\"gallery_image_ids\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:29", "2026-04-15 15:24:29"),
	(88, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\Blog\\Model\\Blog", 11, "{\"id\":11,\"category_id\":6,\"author\":\"Alpha Pack\",\"slug\":\"barcode-labels-best-practices\",\"image_header\":null,\"image_campaign\":null,\"status\":1,\"comment_status\":1,\"is_campaign\":0,\"start_date\":null,\"end_date\":null,\"published_at\":1776265813,\"created_by\":1,\"updated_by\":1,\"revision\":1,\"changed\":0,\"reject_note\":null,\"view\":\"page\",\"layout\":\"main\",\"weight_order\":110,\"views\":1,\"reading_time\":4,\"video_id\":null,\"gallery_image_ids\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:29", "2026-04-15 15:24:29"),
	(89, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 1, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/blog/food-beverage-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:49", "2026-04-15 15:24:49"),
	(90, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 4, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/blog/pharmaceutical-healthcare-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:24:56", "2026-04-15 15:24:56"),
	(91, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 6, "{\"id\":6,\"slug\":\"logistics\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776264532,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Blog Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:25:49", "2026-04-15 15:25:49"),
	(92, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 7, "{\"id\":7,\"slug\":\"materials\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776264532,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Blog Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:25:49", "2026-04-15 15:25:49"),
	(93, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 8, "{\"id\":8,\"slug\":\"sustainability\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776264532,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Blog Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:25:49", "2026-04-15 15:25:49"),
	(94, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 9, "{\"id\":9,\"slug\":\"security\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776264532,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Blog Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:25:49", "2026-04-15 15:25:49"),
	(95, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 10, "{\"id\":10,\"slug\":\"prepress\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776264532,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Blog Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:25:49", "2026-04-15 15:25:49"),
	(96, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 11, "{\"id\":11,\"slug\":\"products\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776264532,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Blog Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:25:49", "2026-04-15 15:25:49"),
	(97, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 1, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/blog/food-beverage-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 15:26:53", "2026-04-15 15:26:53"),
	(98, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:04:38", "2026-04-15 16:04:38"),
	(99, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:09:32", "2026-04-15 16:09:32"),
	(100, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:12:33", "2026-04-15 16:12:33"),
	(101, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"is_campaign\":0,\"published_at\":1775836984}", "{\"is_campaign\":false,\"published_at\":\"1775779200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:13:06", "2026-04-15 16:13:06"),
	(102, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 1, "{\"gallery_items\":\"[{\\\"alt\\\": \\\"Self-Adhesive Labels\\\", \\\"image_id\\\": 11}, {\\\"alt\\\": \\\"Self-Adhesive Labels\\\", \\\"image_id\\\": 12}, {\\\"alt\\\": \\\"Self-Adhesive Labels\\\", \\\"image_id\\\": 13}, {\\\"alt\\\": \\\"Self-Adhesive Labels\\\", \\\"image_id\\\": 14}, {\\\"alt\\\": \\\"Self-Adhesive Labels\\\", \\\"image_id\\\": 15}, {\\\"alt\\\": \\\"Self-Adhesive Labels\\\", \\\"image_id\\\": 16}]\",\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"Self-Adhesive Labels: Features and Uses\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"Self-Adhesive Labels in Production\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_1_id\\\": 11, \\\"image_2_id\\\": 12, \\\"image_3_id\\\": 14}]\",\"client_logos\":\"[{\\\"icon\\\": \\\"fas fa-building\\\", \\\"label\\\": \\\"Food Corp\\\"}, {\\\"icon\\\": \\\"fas fa-flask\\\", \\\"label\\\": \\\"PharmaCo\\\"}, {\\\"icon\\\": \\\"fas fa-spa\\\", \\\"label\\\": \\\"BeautyLine\\\"}, {\\\"icon\\\": \\\"fas fa-wine-glass-alt\\\", \\\"label\\\": \\\"BevGroup\\\"}, {\\\"icon\\\": \\\"fas fa-industry\\\", \\\"label\\\": \\\"IndusTech\\\"}, {\\\"icon\\\": \\\"fas fa-leaf\\\", \\\"label\\\": \\\"NatureCare\\\"}, {\\\"icon\\\": \\\"fas fa-pump-soap\\\", \\\"label\\\": \\\"CleanPro\\\"}, {\\\"icon\\\": \\\"fas fa-box\\\", \\\"label\\\": \\\"PackRight\\\"}]\"}", "{\"gallery_items\":\"[{\\\"alt\\\":\\\"Self-Adhesive Labels\\\",\\\"image_id\\\":11,\\\"image_url\\\":null},{\\\"alt\\\":\\\"Self-Adhesive Labels\\\",\\\"image_id\\\":12,\\\"image_url\\\":null},{\\\"alt\\\":\\\"Self-Adhesive Labels\\\",\\\"image_id\\\":13,\\\"image_url\\\":null},{\\\"alt\\\":\\\"Self-Adhesive Labels\\\",\\\"image_id\\\":14,\\\"image_url\\\":null},{\\\"alt\\\":\\\"Self-Adhesive Labels\\\",\\\"image_id\\\":15,\\\"image_url\\\":null},{\\\"alt\\\":\\\"Self-Adhesive Labels\\\",\\\"image_id\\\":16,\\\"image_url\\\":null}]\",\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"Self-Adhesive Labels: Features and Uses\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_position\\\":\\\"right\\\",\\\"image_id\\\":18,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"Self-Adhesive Labels in Production\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_position\\\":\\\"left\\\",\\\"image_id\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_position\\\":null,\\\"image_url\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_1_id\\\":11,\\\"image_2_id\\\":12,\\\"image_3_id\\\":14,\\\"image_id\\\":null,\\\"image_position\\\":null,\\\"image_url\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null}]\",\"client_logos\":\"[{\\\"icon\\\":\\\"fas fa-building\\\",\\\"label\\\":\\\"Food Corp\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-flask\\\",\\\"label\\\":\\\"PharmaCo\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-spa\\\",\\\"label\\\":\\\"BeautyLine\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-wine-glass-alt\\\",\\\"label\\\":\\\"BevGroup\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-industry\\\",\\\"label\\\":\\\"IndusTech\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-leaf\\\",\\\"label\\\":\\\"NatureCare\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-pump-soap\\\",\\\"label\\\":\\\"CleanPro\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-box\\\",\\\"label\\\":\\\"PackRight\\\",\\\"url\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:13:06", "2026-04-15 16:13:06"),
	(103, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:13:08", "2026-04-15 16:13:08"),
	(104, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:14:56", "2026-04-15 16:14:56"),
	(105, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 12, "{\"slug\":\"self-adhesive-labels\",\"published_at\":1776268984}", "{\"slug\":\"self-adhesive\",\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:21:58", "2026-04-15 16:21:58"),
	(106, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownListLang", 12, "{\"title\":\"Self-Adhesive Labels\"}", "{\"title\":\"Self-Adhesive\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:21:58", "2026-04-15 16:21:58"),
	(107, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 13, "{\"slug\":\"barcode-labels\",\"published_at\":1776268984}", "{\"slug\":\"barcode\",\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:22:15", "2026-04-15 16:22:15"),
	(108, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownListLang", 13, "{\"title\":\"Barcode Labels\"}", "{\"title\":\"Barcode\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:22:15", "2026-04-15 16:22:15"),
	(109, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 14, "{\"slug\":\"tamper-proof-labels\",\"published_at\":1776268984}", "{\"slug\":\"tamper-proof\",\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:22:38", "2026-04-15 16:22:38"),
	(110, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownListLang", 14, "{\"title\":\"Tamper Proof Labels\"}", "{\"title\":\"Tamper Proof \"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:22:38", "2026-04-15 16:22:38"),
	(111, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 15, "{\"slug\":\"shrink-sleeves\",\"published_at\":1776268984}", "{\"slug\":\"sleeves\",\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:22:52", "2026-04-15 16:22:52"),
	(112, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownListLang", 15, "{\"title\":\"Shrink Sleeves\"}", "{\"title\":\"Sleeves\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:22:52", "2026-04-15 16:22:52"),
	(113, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 16, "{\"id\":16,\"slug\":\"stretch-sleeves\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776268984,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Product Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:23:03", "2026-04-15 16:23:03"),
	(114, "App\\Models\\User", 1, "deleted", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 17, "{\"id\":17,\"slug\":\"in-mold-labels\",\"icon\":null,\"status\":1,\"color\":null,\"published_at\":1776268984,\"revision\":1,\"created_by\":1,\"updated_by\":1,\"category\":\"Product Category\",\"count\":0,\"promoted_to_front\":0,\"code\":null,\"weight_order\":10,\"changed\":0,\"reject_note\":null}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:23:03", "2026-04-15 16:23:03"),
	(115, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"category_id\":16,\"is_campaign\":0,\"published_at\":1776182584}", "{\"category_id\":\"15\",\"is_campaign\":false,\"published_at\":\"1776124800\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:23:44", "2026-04-15 16:23:44"),
	(116, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 5, "{\"gallery_items\":\"[{\\\"alt\\\": \\\"Stretch Sleeves\\\", \\\"image_id\\\": 15}, {\\\"alt\\\": \\\"Stretch Sleeves\\\", \\\"image_id\\\": 14}, {\\\"alt\\\": \\\"Stretch Sleeves\\\", \\\"image_id\\\": 16}]\",\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"Stretch Sleeves: Features and Uses\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"Stretch Sleeves in Production\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_1_id\\\": 15, \\\"image_2_id\\\": 14, \\\"image_3_id\\\": 18}]\",\"client_logos\":\"[{\\\"icon\\\": \\\"fas fa-building\\\", \\\"label\\\": \\\"Food Corp\\\"}, {\\\"icon\\\": \\\"fas fa-flask\\\", \\\"label\\\": \\\"PharmaCo\\\"}, {\\\"icon\\\": \\\"fas fa-spa\\\", \\\"label\\\": \\\"BeautyLine\\\"}, {\\\"icon\\\": \\\"fas fa-wine-glass-alt\\\", \\\"label\\\": \\\"BevGroup\\\"}, {\\\"icon\\\": \\\"fas fa-industry\\\", \\\"label\\\": \\\"IndusTech\\\"}, {\\\"icon\\\": \\\"fas fa-leaf\\\", \\\"label\\\": \\\"NatureCare\\\"}, {\\\"icon\\\": \\\"fas fa-pump-soap\\\", \\\"label\\\": \\\"CleanPro\\\"}, {\\\"icon\\\": \\\"fas fa-box\\\", \\\"label\\\": \\\"PackRight\\\"}]\"}", "{\"gallery_items\":\"[{\\\"alt\\\":\\\"Stretch Sleeves\\\",\\\"image_id\\\":15,\\\"image_url\\\":null},{\\\"alt\\\":\\\"Stretch Sleeves\\\",\\\"image_id\\\":14,\\\"image_url\\\":null},{\\\"alt\\\":\\\"Stretch Sleeves\\\",\\\"image_id\\\":16,\\\"image_url\\\":null}]\",\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"Stretch Sleeves: Features and Uses\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_position\\\":\\\"right\\\",\\\"image_id\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"Stretch Sleeves in Production\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_position\\\":\\\"left\\\",\\\"image_id\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_position\\\":null,\\\"image_url\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_1_id\\\":15,\\\"image_2_id\\\":14,\\\"image_3_id\\\":18,\\\"image_id\\\":null,\\\"image_position\\\":null,\\\"image_url\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null}]\",\"client_logos\":\"[{\\\"icon\\\":\\\"fas fa-building\\\",\\\"label\\\":\\\"Food Corp\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-flask\\\",\\\"label\\\":\\\"PharmaCo\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-spa\\\",\\\"label\\\":\\\"BeautyLine\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-wine-glass-alt\\\",\\\"label\\\":\\\"BevGroup\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-industry\\\",\\\"label\\\":\\\"IndusTech\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-leaf\\\",\\\"label\\\":\\\"NatureCare\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-pump-soap\\\",\\\"label\\\":\\\"CleanPro\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-box\\\",\\\"label\\\":\\\"PackRight\\\",\\\"url\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:23:44", "2026-04-15 16:23:44"),
	(117, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"category_id\":17,\"is_campaign\":0,\"published_at\":1776268984}", "{\"category_id\":\"15\",\"is_campaign\":false,\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:23:55", "2026-04-15 16:23:55"),
	(118, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 6, "{\"gallery_items\":\"[{\\\"alt\\\": \\\"In-Mold Labels\\\", \\\"image_id\\\": 16}, {\\\"alt\\\": \\\"In-Mold Labels\\\", \\\"image_id\\\": 14}, {\\\"alt\\\": \\\"In-Mold Labels\\\", \\\"image_id\\\": 19}]\",\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"In-Mold Labels: Features and Uses\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"In-Mold Labels in Production\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_1_id\\\": 16, \\\"image_2_id\\\": 19, \\\"image_3_id\\\": 18}]\",\"client_logos\":\"[{\\\"icon\\\": \\\"fas fa-building\\\", \\\"label\\\": \\\"Food Corp\\\"}, {\\\"icon\\\": \\\"fas fa-flask\\\", \\\"label\\\": \\\"PharmaCo\\\"}, {\\\"icon\\\": \\\"fas fa-spa\\\", \\\"label\\\": \\\"BeautyLine\\\"}, {\\\"icon\\\": \\\"fas fa-wine-glass-alt\\\", \\\"label\\\": \\\"BevGroup\\\"}, {\\\"icon\\\": \\\"fas fa-industry\\\", \\\"label\\\": \\\"IndusTech\\\"}, {\\\"icon\\\": \\\"fas fa-leaf\\\", \\\"label\\\": \\\"NatureCare\\\"}, {\\\"icon\\\": \\\"fas fa-pump-soap\\\", \\\"label\\\": \\\"CleanPro\\\"}, {\\\"icon\\\": \\\"fas fa-box\\\", \\\"label\\\": \\\"PackRight\\\"}]\"}", "{\"gallery_items\":\"[{\\\"alt\\\":\\\"In-Mold Labels\\\",\\\"image_id\\\":16,\\\"image_url\\\":null},{\\\"alt\\\":\\\"In-Mold Labels\\\",\\\"image_id\\\":14,\\\"image_url\\\":null},{\\\"alt\\\":\\\"In-Mold Labels\\\",\\\"image_id\\\":19,\\\"image_url\\\":null}]\",\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"In-Mold Labels: Features and Uses\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_position\\\":\\\"right\\\",\\\"image_id\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"In-Mold Labels in Production\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_position\\\":\\\"left\\\",\\\"image_id\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_position\\\":null,\\\"image_url\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_1_id\\\":16,\\\"image_2_id\\\":19,\\\"image_3_id\\\":18,\\\"image_id\\\":null,\\\"image_position\\\":null,\\\"image_url\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null}]\",\"client_logos\":\"[{\\\"icon\\\":\\\"fas fa-building\\\",\\\"label\\\":\\\"Food Corp\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-flask\\\",\\\"label\\\":\\\"PharmaCo\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-spa\\\",\\\"label\\\":\\\"BeautyLine\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-wine-glass-alt\\\",\\\"label\\\":\\\"BevGroup\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-industry\\\",\\\"label\\\":\\\"IndusTech\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-leaf\\\",\\\"label\\\":\\\"NatureCare\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-pump-soap\\\",\\\"label\\\":\\\"CleanPro\\\",\\\"url\\\":null},{\\\"icon\\\":\\\"fas fa-box\\\",\\\"label\\\":\\\"PackRight\\\",\\\"url\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:23:55", "2026-04-15 16:23:55"),
	(119, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 21, "{\"published_at\":1776268984}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:26:10", "2026-04-15 16:26:10"),
	(120, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 19, "{\"image_id\":null}", "{\"image_id\":10}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:26:10", "2026-04-15 16:26:10"),
	(121, "App\\Models\\User", 1, "created", "App\\Models\\Media\\Media", 21, "[]", "{\"disk\":\"public\",\"directory\":\"media\\/2026\\/04\\/15\",\"visibility\":\"public\",\"name\":\"346aab73-5a1b-4779-9419-852e179ec985\",\"path\":\"media\\/2026\\/04\\/15\\/346aab73-5a1b-4779-9419-852e179ec985.png\",\"exif\":null,\"width\":871,\"height\":581,\"size\":174379,\"type\":\"image\\/png\",\"ext\":\"png\",\"title\":\"premium_photo-1661382011487-cd3d6b1d9dff\",\"created_by\":1,\"updated_by\":1,\"id\":21}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:27:38", "2026-04-15 16:27:38"),
	(122, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 19, "{\"image_id\":10}", "{\"image_id\":21}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:27:40", "2026-04-15 16:27:40"),
	(123, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:31:02", "2026-04-15 16:31:02"),
	(124, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownList", 18, "[]", "{\"slug\":\"egypt\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"Ask Quote Country\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":18}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:35:56", "2026-04-15 16:35:56"),
	(125, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\DropdownList\\Model\\DropdownListLang", 18, "[]", "{\"language\":\"en\",\"parent_id\":18,\"title\":\"Egypt\",\"id\":18}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:35:56", "2026-04-15 16:35:56"),
	(126, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:42:46", "2026-04-15 16:42:46"),
	(127, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"is_campaign\":0}", "{\"is_campaign\":false}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:43:03", "2026-04-15 16:43:03"),
	(128, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 1, "{\"client_logos\":\"[{\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-building\\\", \\\"label\\\": \\\"Food Corp\\\"}, {\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-flask\\\", \\\"label\\\": \\\"PharmaCo\\\"}, {\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-spa\\\", \\\"label\\\": \\\"BeautyLine\\\"}, {\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-wine-glass-alt\\\", \\\"label\\\": \\\"BevGroup\\\"}, {\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-industry\\\", \\\"label\\\": \\\"IndusTech\\\"}, {\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-leaf\\\", \\\"label\\\": \\\"NatureCare\\\"}, {\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-pump-soap\\\", \\\"label\\\": \\\"CleanPro\\\"}, {\\\"url\\\": null, \\\"icon\\\": \\\"fas fa-box\\\", \\\"label\\\": \\\"PackRight\\\"}]\"}", "{\"client_logos\":\"[{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-building\\\",\\\"label\\\":\\\"Food Corp\\\"},{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-flask\\\",\\\"label\\\":\\\"PharmaCo\\\"},{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-wine-glass-alt\\\",\\\"label\\\":\\\"BevGroup\\\"},{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-spa\\\",\\\"label\\\":\\\"BeautyLine\\\"},{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-industry\\\",\\\"label\\\":\\\"IndusTech\\\"},{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-leaf\\\",\\\"label\\\":\\\"NatureCare\\\"},{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-pump-soap\\\",\\\"label\\\":\\\"CleanPro\\\"},{\\\"url\\\":null,\\\"icon\\\":\\\"fas fa-box\\\",\\\"label\\\":\\\"PackRight\\\"}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:43:03", "2026-04-15 16:43:03"),
	(129, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":6}", "{\"views\":7}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:43:04", "2026-04-15 16:43:04"),
	(130, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\AskQuoteWebform\\Model\\AskQuoteWebform", 1, "[]", "{\"first_name\":\"Kay\",\"last_name\":\"Evans\",\"email\":\"pary@mailinator.com\",\"company\":\"knadnaskjdna\",\"country\":\"Egypt\",\"phone\":\"062001234\",\"product\":\"Self-Adhesive Labels\",\"quantity\":\"555\",\"file_upload\":\"ask-quote\\/gCljI2_1776271454_169960673018424.png\",\"message\":\"asdlkmakd\",\"id\":1}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:44:14", "2026-04-15 16:44:14"),
	(131, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/products/stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:44:59", "2026-04-15 16:44:59"),
	(132, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":7}", "{\"views\":8}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:47:11", "2026-04-15 16:47:11"),
	(133, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:47:14", "2026-04-15 16:47:14"),
	(134, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:47:16", "2026-04-15 16:47:16"),
	(135, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/products/shrink-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:47:19", "2026-04-15 16:47:19"),
	(136, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/products/stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:47:21", "2026-04-15 16:47:21"),
	(137, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":0}", "{\"views\":1}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:47:26", "2026-04-15 16:47:26"),
	(138, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 123, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:49:42", "2026-04-15 16:49:42"),
	(139, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 134, "{\"link\":\"\\/product-details#self-adhesive\"}", "{\"link\":\"\\/products\\/self-adhesive-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:49:42", "2026-04-15 16:49:42"),
	(140, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 124, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:49:55", "2026-04-15 16:49:55"),
	(141, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 135, "{\"link\":\"\\/product-details#barcode\"}", "{\"link\":\"\\/products\\/barcode-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:49:55", "2026-04-15 16:49:55"),
	(142, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 125, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:06", "2026-04-15 16:50:06"),
	(143, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 136, "{\"link\":\"\\/product-details#tamper-proof\"}", "{\"link\":\"\\/products\\/tamper-proof-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:06", "2026-04-15 16:50:06"),
	(144, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 126, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:17", "2026-04-15 16:50:17"),
	(145, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 137, "{\"link\":\"\\/product-details#shrink-sleeves\"}", "{\"link\":\"\\/products\\/shrink-sleeves\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:17", "2026-04-15 16:50:17"),
	(146, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 127, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:34", "2026-04-15 16:50:34"),
	(147, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 138, "{\"link\":\"\\/product-details#stretch-sleeves\"}", "{\"link\":\"\\/products\\/stretch-sleeves\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:35", "2026-04-15 16:50:35"),
	(148, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 128, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:44", "2026-04-15 16:50:44"),
	(149, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 139, "{\"link\":\"\\/product-details#in-mold\"}", "{\"link\":\"\\/products\\/in-mold-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:44", "2026-04-15 16:50:44"),
	(150, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:50:57", "2026-04-15 16:50:57"),
	(151, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":8}", "{\"views\":9}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:03", "2026-04-15 16:51:03"),
	(152, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:04", "2026-04-15 16:51:04"),
	(153, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:05", "2026-04-15 16:51:05"),
	(154, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"views\":1}", "{\"views\":2}", "https://alpha.test/en/products/shrink-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:06", "2026-04-15 16:51:06"),
	(155, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/products/stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:07", "2026-04-15 16:51:07"),
	(156, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:09", "2026-04-15 16:51:09"),
	(157, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":9}", "{\"views\":10}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:10", "2026-04-15 16:51:10"),
	(158, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":10}", "{\"views\":11}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:40", "2026-04-15 16:51:40"),
	(159, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:41", "2026-04-15 16:51:41"),
	(160, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:43", "2026-04-15 16:51:43"),
	(161, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"views\":2}", "{\"views\":3}", "https://alpha.test/en/products/shrink-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:44", "2026-04-15 16:51:44"),
	(162, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/products/stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:46", "2026-04-15 16:51:46"),
	(163, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:51:49", "2026-04-15 16:51:49"),
	(164, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 134, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:03", "2026-04-15 16:52:03"),
	(165, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 145, "{\"link\":\"\\/product-details#self-adhesive\"}", "{\"link\":\"\\/products\\/self-adhesive-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:03", "2026-04-15 16:52:03"),
	(166, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 135, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:11", "2026-04-15 16:52:11"),
	(167, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 146, "{\"link\":\"\\/product-details#barcode\"}", "{\"link\":\"\\/products\\/barcode-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:11", "2026-04-15 16:52:11"),
	(168, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 136, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:22", "2026-04-15 16:52:22"),
	(169, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 147, "{\"link\":\"\\/product-details#tamper-proof\"}", "{\"link\":\"\\/products\\/tamper-proof-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:22", "2026-04-15 16:52:22"),
	(170, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 137, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:32", "2026-04-15 16:52:32"),
	(171, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 148, "{\"link\":\"\\/product-details#shrink-sleeves\"}", "{\"link\":\"\\/products\\/shrink-sleeves\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:32", "2026-04-15 16:52:32"),
	(172, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 138, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:40", "2026-04-15 16:52:40"),
	(173, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 149, "{\"link\":\"\\/product-details#stretch-sleeves\"}", "{\"link\":\"\\/products\\/stretch-sleeves\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:40", "2026-04-15 16:52:40"),
	(174, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLink", 139, "{\"published_at\":1776252208}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:51", "2026-04-15 16:52:51"),
	(175, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\MenuLink\\Model\\MenuLinkLang", 150, "{\"link\":\"\\/product-details#in-mold\"}", "{\"link\":\"\\/products\\/in-mold-labels\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:51", "2026-04-15 16:52:51"),
	(176, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:52", "2026-04-15 16:52:52"),
	(177, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":11}", "{\"views\":12}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:54", "2026-04-15 16:52:54"),
	(178, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:57", "2026-04-15 16:52:57"),
	(179, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:58", "2026-04-15 16:52:58"),
	(180, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"views\":3}", "{\"views\":4}", "https://alpha.test/en/products/shrink-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:52:59", "2026-04-15 16:52:59"),
	(181, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/products/stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:53:01", "2026-04-15 16:53:01"),
	(182, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:53:03", "2026-04-15 16:53:03"),
	(183, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":12}", "{\"views\":13}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:53:07", "2026-04-15 16:53:07"),
	(184, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"is_campaign\":0}", "{\"is_campaign\":false}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:53:49", "2026-04-15 16:53:49"),
	(185, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 1, "{\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"Self-Adhesive Labels: Features and Uses\\\", \\\"image_id\\\": 18, \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"Self-Adhesive Labels in Production\\\", \\\"image_id\\\": null, \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17, \\\"image_url\\\": null, \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": null}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_id\\\": null, \\\"image_url\\\": null, \\\"image_1_id\\\": 11, \\\"image_2_id\\\": 12, \\\"image_3_id\\\": 14, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": null}]\"}", "{\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"Self-Adhesive Labels: Features and Uses\\\",\\\"image_id\\\":18,\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":\\\"right\\\"},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"Self-Adhesive Labels in Production\\\",\\\"image_id\\\":20,\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":\\\"left\\\"},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_url\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_id\\\":null,\\\"image_url\\\":null,\\\"image_1_id\\\":11,\\\"image_2_id\\\":12,\\\"image_3_id\\\":14,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:53:49", "2026-04-15 16:53:49"),
	(186, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":13}", "{\"views\":14}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:53:50", "2026-04-15 16:53:50"),
	(187, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:54:01", "2026-04-15 16:54:01"),
	(188, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"is_campaign\":0,\"published_at\":1775923384}", "{\"is_campaign\":false,\"published_at\":\"1775865600\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:54:58", "2026-04-15 16:54:58"),
	(189, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 2, "{\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"Barcode Labels: Features and Uses\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"Barcode Labels in Production\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_1_id\\\": 12, \\\"image_2_id\\\": 18, \\\"image_3_id\\\": 19}]\"}", "{\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"Barcode Labels: Features and Uses\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_position\\\":\\\"right\\\",\\\"image_id\\\":13,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"Barcode Labels in Production\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_position\\\":\\\"left\\\",\\\"image_id\\\":16,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_position\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_1_id\\\":12,\\\"image_2_id\\\":18,\\\"image_3_id\\\":19,\\\"image_id\\\":null,\\\"image_position\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:54:58", "2026-04-15 16:54:58"),
	(190, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":6}", "{\"views\":7}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:54:59", "2026-04-15 16:54:59"),
	(191, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":14}", "{\"views\":15}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:55:06", "2026-04-15 16:55:06"),
	(192, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":7}", "{\"views\":8}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:55:07", "2026-04-15 16:55:07"),
	(193, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:55:08", "2026-04-15 16:55:08"),
	(194, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"is_campaign\":0,\"published_at\":1776009784}", "{\"is_campaign\":false,\"published_at\":\"1775952000\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:55:39", "2026-04-15 16:55:39"),
	(195, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 3, "{\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"Tamper Proof Labels: Features and Uses\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"Tamper Proof Labels in Production\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_1_id\\\": 13, \\\"image_2_id\\\": 11, \\\"image_3_id\\\": 20}]\"}", "{\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"Tamper Proof Labels: Features and Uses\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_position\\\":\\\"right\\\",\\\"image_id\\\":7,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"Tamper Proof Labels in Production\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_position\\\":\\\"left\\\",\\\"image_id\\\":19,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_position\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_1_id\\\":13,\\\"image_2_id\\\":11,\\\"image_3_id\\\":20,\\\"image_id\\\":null,\\\"image_position\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:55:39", "2026-04-15 16:55:39"),
	(196, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:55:40", "2026-04-15 16:55:40"),
	(197, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"views\":4}", "{\"views\":5}", "https://alpha.test/en/products/shrink-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:56:13", "2026-04-15 16:56:13"),
	(198, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"is_campaign\":0,\"published_at\":1776096184}", "{\"is_campaign\":false,\"published_at\":\"1776038400\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:56:52", "2026-04-15 16:56:52"),
	(199, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 4, "{\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"Shrink Sleeves: Features and Uses\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"Shrink Sleeves in Production\\\", \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_1_id\\\": 14, \\\"image_2_id\\\": 15, \\\"image_3_id\\\": 16}]\"}", "{\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"Shrink Sleeves: Features and Uses\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_position\\\":\\\"right\\\",\\\"image_id\\\":18,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"Shrink Sleeves in Production\\\",\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_position\\\":\\\"left\\\",\\\"image_id\\\":7,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_position\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_1_id\\\":14,\\\"image_2_id\\\":15,\\\"image_3_id\\\":16,\\\"image_id\\\":null,\\\"image_position\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:56:52", "2026-04-15 16:56:52"),
	(200, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/products/shrink-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:56:53", "2026-04-15 16:56:53"),
	(201, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":5}", "{\"views\":6}", "https://alpha.test/en/products/stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:57:04", "2026-04-15 16:57:04"),
	(202, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"is_campaign\":0}", "{\"is_campaign\":false}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:57:37", "2026-04-15 16:57:37"),
	(203, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 5, "{\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"Stretch Sleeves: Features and Uses\\\", \\\"image_id\\\": null, \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"Stretch Sleeves in Production\\\", \\\"image_id\\\": null, \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17, \\\"image_url\\\": null, \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": null}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_id\\\": null, \\\"image_url\\\": null, \\\"image_1_id\\\": 15, \\\"image_2_id\\\": 14, \\\"image_3_id\\\": 18, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": null}]\"}", "{\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"Stretch Sleeves: Features and Uses\\\",\\\"image_id\\\":7,\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":\\\"right\\\"},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"Stretch Sleeves in Production\\\",\\\"image_id\\\":19,\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":\\\"left\\\"},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_url\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_id\\\":null,\\\"image_url\\\":null,\\\"image_1_id\\\":15,\\\"image_2_id\\\":14,\\\"image_3_id\\\":18,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:57:37", "2026-04-15 16:57:37"),
	(204, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":6}", "{\"views\":7}", "https://alpha.test/en/products/stretch-sleeves", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:57:41", "2026-04-15 16:57:41"),
	(205, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":6}", "{\"views\":7}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:58:08", "2026-04-15 16:58:08"),
	(206, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"is_campaign\":0}", "{\"is_campaign\":false}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:58:39", "2026-04-15 16:58:39"),
	(207, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\ProductLang", 6, "{\"description_sections\":\"[{\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\", \\\"heading\\\": \\\"In-Mold Labels: Features and Uses\\\", \\\"image_id\\\": null, \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\", \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": \\\"right\\\"}, {\\\"type\\\": \\\"split\\\", \\\"content\\\": \\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\", \\\"heading\\\": \\\"In-Mold Labels in Production\\\", \\\"image_id\\\": null, \\\"image_url\\\": \\\"https:\\/\\/images.unsplash.com\\/photo-1552664730-d307ca884978?w=600&q=80\\\", \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": \\\"left\\\"}, {\\\"type\\\": \\\"full\\\", \\\"content\\\": \\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\", \\\"heading\\\": \\\"Adhesives, Materials and Printing Technologies\\\", \\\"image_id\\\": 17, \\\"image_url\\\": null, \\\"image_1_id\\\": null, \\\"image_2_id\\\": null, \\\"image_3_id\\\": null, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": null}, {\\\"type\\\": \\\"grid\\\", \\\"content\\\": \\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\", \\\"heading\\\": \\\"Multiple Solutions for Your Needs\\\", \\\"image_id\\\": null, \\\"image_url\\\": null, \\\"image_1_id\\\": 16, \\\"image_2_id\\\": 19, \\\"image_3_id\\\": 18, \\\"image_1_url\\\": null, \\\"image_2_url\\\": null, \\\"image_3_url\\\": null, \\\"image_position\\\": null}]\"}", "{\"description_sections\":\"[{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\\\n\\\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\\\",\\\"heading\\\":\\\"In-Mold Labels: Features and Uses\\\",\\\"image_id\\\":18,\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1607082348824-0a96f2a4b9da?w=600&q=80\\\",\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":\\\"right\\\"},{\\\"type\\\":\\\"split\\\",\\\"content\\\":\\\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\\\n\\\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\\\",\\\"heading\\\":\\\"In-Mold Labels in Production\\\",\\\"image_id\\\":3,\\\"image_url\\\":\\\"https:\\\\\\/\\\\\\/images.unsplash.com\\\\\\/photo-1552664730-d307ca884978?w=600&q=80\\\",\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":\\\"left\\\"},{\\\"type\\\":\\\"full\\\",\\\"content\\\":\\\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\\\n\\\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\\\",\\\"heading\\\":\\\"Adhesives, Materials and Printing Technologies\\\",\\\"image_id\\\":17,\\\"image_url\\\":null,\\\"image_1_id\\\":null,\\\"image_2_id\\\":null,\\\"image_3_id\\\":null,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":null},{\\\"type\\\":\\\"grid\\\",\\\"content\\\":\\\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\\\",\\\"heading\\\":\\\"Multiple Solutions for Your Needs\\\",\\\"image_id\\\":null,\\\"image_url\\\":null,\\\"image_1_id\\\":16,\\\"image_2_id\\\":19,\\\"image_3_id\\\":18,\\\"image_1_url\\\":null,\\\"image_2_url\\\":null,\\\"image_3_url\\\":null,\\\"image_position\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:58:39", "2026-04-15 16:58:39"),
	(208, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"views\":7}", "{\"views\":8}", "https://alpha.test/en/products/in-mold-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:58:41", "2026-04-15 16:58:41"),
	(209, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":15}", "{\"views\":16}", "https://alpha.test/en/products/self-adhesive-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 16:59:51", "2026-04-15 16:59:51"),
	(210, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\Bms", 22, "[]", "{\"slug\":\"get-in-touch\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"contact-us-header-section\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":22}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:00:58", "2026-04-15 17:00:58"),
	(211, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 20, "[]", "{\"language\":\"en\",\"parent_id\":22,\"title\":\"Get In Touch\",\"second_title\":null,\"brief\":\"Ready to discuss your labeling needs? We\'re here to help you find the perfect solution.\",\"content\":null,\"content2\":null,\"image_id\":null,\"id\":20}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:00:58", "2026-04-15 17:00:58"),
	(212, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 20, "{\"title\":\"Get In Touch\"}", "{\"title\":\"Get In Touchaa\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:01:10", "2026-04-15 17:01:10"),
	(213, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 20, "{\"title\":\"Get In Touchaa\"}", "{\"title\":\"Get In Touch\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:01:15", "2026-04-15 17:01:15"),
	(214, "App\\Models\\User", 1, "created", "App\\Models\\Media\\Media", 22, "[]", "{\"disk\":\"public\",\"directory\":\"media\\/2026\\/04\\/15\",\"visibility\":\"public\",\"name\":\"45548a16-4814-479d-bcb6-0bdd5095600e\",\"path\":\"media\\/2026\\/04\\/15\\/45548a16-4814-479d-bcb6-0bdd5095600e.jpeg\",\"exif\":\"{\\\"FileName\\\":\\\"yGKkiTJoTJvc4tBWV60JB0w9lRSBbI-metacGhvdG8tMTU1NzgwNDUwNi02NjlhNjc5NjViYTAuanBlZw==-.jpeg\\\",\\\"FileDateTime\\\":1776272491,\\\"FileSize\\\":686555,\\\"FileType\\\":2,\\\"MimeType\\\":\\\"image\\\\\\/jpeg\\\",\\\"SectionsFound\\\":\\\"\\\",\\\"COMPUTED\\\":{\\\"html\\\":\\\"width=\\\\\\\"1920\\\\\\\" height=\\\\\\\"1440\\\\\\\"\\\",\\\"Height\\\":1440,\\\"Width\\\":1920,\\\"IsColor\\\":1}}\",\"width\":1920,\"height\":1440,\"size\":686555,\"type\":\"image\\/jpeg\",\"ext\":\"jpeg\",\"title\":\"photo-1557804506-669a67965ba0\",\"created_by\":1,\"updated_by\":1,\"id\":22}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:01:34", "2026-04-15 17:01:34"),
	(215, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 20, "{\"image_id\":null}", "{\"image_id\":22}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:01:36", "2026-04-15 17:01:36"),
	(216, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":6}", "{\"views\":7}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:16:51", "2026-04-15 17:16:51"),
	(217, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":7}", "{\"views\":8}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:16:54", "2026-04-15 17:16:54"),
	(218, "App\\Models\\User", 1, "created", "App\\Models\\Media\\Media", 23, "[]", "{\"name\":\"5488f145-721d-4f1e-a690-e85cba6c167b\",\"alt\":null,\"title\":\"699b45263bcbc_1771783462\",\"caption\":null,\"description\":null,\"created_by\":1,\"updated_by\":1,\"disk\":\"public\",\"directory\":\"media\",\"visibility\":\"public\",\"path\":\"media\\/5488f145-721d-4f1e-a690-e85cba6c167b.mp4\",\"exif\":null,\"width\":null,\"height\":null,\"size\":212223,\"type\":\"video\\/mp4\",\"ext\":\"mp4\",\"id\":23}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:25:02", "2026-04-15 17:25:02"),
	(219, "App\\Models\\User", 1, "deleted", "App\\Models\\Media\\Media", 23, "{\"id\":23,\"disk\":\"public\",\"directory\":\"media\",\"visibility\":\"public\",\"name\":\"5488f145-721d-4f1e-a690-e85cba6c167b\",\"path\":\"media\\/5488f145-721d-4f1e-a690-e85cba6c167b.mp4\",\"width\":null,\"height\":null,\"size\":212223,\"type\":\"video\\/mp4\",\"ext\":\"mp4\",\"alt\":null,\"title\":\"699b45263bcbc_1771783462\",\"description\":null,\"caption\":null,\"exif\":null,\"curations\":null,\"created_by\":1,\"updated_by\":1}", "[]", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:25:18", "2026-04-15 17:25:18"),
	(220, "App\\Models\\User", 1, "created", "App\\Models\\Media\\Media", 24, "[]", "{\"name\":\"50b54480-9065-4524-8628-07f08c08190f\",\"alt\":null,\"title\":\"WhatsApp Video 2026-04-15 at 7.27.52 PM\",\"caption\":null,\"description\":null,\"created_by\":1,\"updated_by\":1,\"disk\":\"public\",\"directory\":\"media\",\"visibility\":\"public\",\"path\":\"media\\/50b54480-9065-4524-8628-07f08c08190f.mp4\",\"exif\":null,\"width\":null,\"height\":null,\"size\":266387,\"type\":\"video\\/mp4\",\"ext\":\"mp4\",\"id\":24}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:29:08", "2026-04-15 17:29:08"),
	(221, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 25, "{\"published_at\":1776275368}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:50:46", "2026-04-15 17:50:46"),
	(222, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 21, "{\"title\":\"Home Page Header\",\"json_items\":null}", "{\"title\":\"Label It Right\",\"json_items\":\"[]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:50:46", "2026-04-15 17:50:46"),
	(223, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 21, "{\"brief\":\"Welcome to Raqmix\",\"content\":\"Your partner in innovative labeling solutions.\"}", "{\"brief\":null,\"content\":null}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:51:06", "2026-04-15 17:51:06"),
	(224, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 21, "{\"brief\":null}", "{\"brief\":\"High-quality adhesive labels that help brands communicate, stand out, and build trust at first glance.\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:51:56", "2026-04-15 17:51:56"),
	(225, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 26, "{\"published_at\":1776275368}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:54:30", "2026-04-15 17:54:30"),
	(226, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 22, "{\"json_items\":\"[{\\\"number\\\":\\\"25\\\",\\\"suffix\\\":\\\"+\\\",\\\"label_en\\\":\\\"Years of Experience\\\",\\\"icon\\\":\\\"check\\\"},{\\\"number\\\":\\\"500\\\",\\\"suffix\\\":\\\"+\\\",\\\"label_en\\\":\\\"Happy Clients\\\",\\\"icon\\\":\\\"users\\\"},{\\\"number\\\":\\\"100\\\",\\\"suffix\\\":\\\"%\\\",\\\"label_en\\\":\\\"Satisfaction\\\",\\\"icon\\\":\\\"star\\\"}]\"}", "{\"json_items\":\"[{\\\"number\\\":\\\"25\\\",\\\"suffix\\\":\\\"+\\\",\\\"label_en\\\":\\\"Years of Experience\\\",\\\"icon\\\":\\\"check\\\",\\\"title_en\\\":null,\\\"description_en\\\":null},{\\\"number\\\":\\\"500\\\",\\\"suffix\\\":\\\"+\\\",\\\"label_en\\\":\\\"Happy Clients\\\",\\\"icon\\\":\\\"users\\\",\\\"title_en\\\":null,\\\"description_en\\\":null},{\\\"number\\\":\\\"100\\\",\\\"suffix\\\":\\\"%\\\",\\\"label_en\\\":\\\"Satisfaction\\\",\\\"icon\\\":\\\"star\\\",\\\"title_en\\\":null,\\\"description_en\\\":null},{\\\"number\\\":\\\"6\\\",\\\"suffix\\\":null,\\\"label_en\\\":\\\"Product Categories\\\",\\\"icon\\\":null,\\\"title_en\\\":null,\\\"description_en\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:54:30", "2026-04-15 17:54:30"),
	(227, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"is_campaign\":0}", "{\"is_campaign\":true}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:54:54", "2026-04-15 17:54:54"),
	(228, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"is_campaign\":0}", "{\"is_campaign\":true}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:00", "2026-04-15 17:55:00"),
	(229, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"is_campaign\":0}", "{\"is_campaign\":true}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:06", "2026-04-15 17:55:06"),
	(230, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 4, "{\"is_campaign\":0}", "{\"is_campaign\":true}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:12", "2026-04-15 17:55:12"),
	(231, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"is_campaign\":0}", "{\"is_campaign\":true}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:27", "2026-04-15 17:55:27"),
	(232, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 6, "{\"is_campaign\":0}", "{\"is_campaign\":true}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:32", "2026-04-15 17:55:32"),
	(233, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 1, "{\"is_campaign\":0,\"published_at\":1775401813}", "{\"is_campaign\":true,\"published_at\":\"1775347200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:37", "2026-04-15 17:55:37"),
	(234, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 2, "{\"is_campaign\":0,\"published_at\":1775488213}", "{\"is_campaign\":true,\"published_at\":\"1775433600\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:41", "2026-04-15 17:55:41"),
	(235, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 3, "{\"is_campaign\":0,\"published_at\":1775574613}", "{\"is_campaign\":true,\"published_at\":\"1775520000\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:46", "2026-04-15 17:55:46"),
	(236, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 4, "{\"is_campaign\":0,\"published_at\":1775661013}", "{\"is_campaign\":true,\"published_at\":\"1775606400\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 17:55:50", "2026-04-15 17:55:50"),
	(237, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 27, "{\"published_at\":1776275368}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:06:55", "2026-04-15 18:06:55"),
	(238, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 23, "{\"title\":\"Premium Quality\",\"brief\":\"\",\"json_items\":null}", "{\"title\":\"Not Sure Which Label Type?\",\"brief\":\"From adhesive labels and barcode labels to shrink sleeves and specialty materials, we help you select the best solution for your application, surface, and environment.\",\"json_items\":\"[]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:06:55", "2026-04-15 18:06:55"),
	(239, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 23, "{\"json_items\":\"[]\"}", "{\"json_items\":\"[{\\\"number\\\":null,\\\"suffix\\\":null,\\\"label_en\\\":null,\\\"icon\\\":\\\"question-circle\\\",\\\"title_en\\\":null,\\\"description_en\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:07:38", "2026-04-15 18:07:38"),
	(240, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 28, "{\"published_at\":1776275368}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:08:36", "2026-04-15 18:08:36"),
	(241, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 24, "{\"title\":\"Fast Delivery\",\"brief\":\"\",\"content\":\"Quick turnaround times without compromising quality.\",\"json_items\":null}", "{\"title\":\"Labels Not Performing?\",\"brief\":\"We focus on strong adhesion, durability, and print quality, ensuring labels stay in place and look great throughout the product\'s lifecycle.\",\"content\":null,\"json_items\":\"[{\\\"number\\\":null,\\\"suffix\\\":null,\\\"label_en\\\":null,\\\"icon\\\":\\\"exclamation-triangle\\\",\\\"title_en\\\":null,\\\"description_en\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:08:36", "2026-04-15 18:08:36"),
	(242, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 29, "{\"published_at\":1776275368}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:09:06", "2026-04-15 18:09:06"),
	(243, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 25, "{\"title\":\"Expert Support\",\"brief\":\"\",\"content\":\"Dedicated team ready to assist you 24\\/7.\",\"json_items\":null}", "{\"title\":\"Inconsistent Quality?\",\"brief\":\"Our controlled production process guarantees consistent results across every order, reducing errors, waste, and rework.\",\"content\":null,\"json_items\":\"[]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:09:06", "2026-04-15 18:09:06"),
	(244, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\Bms", 32, "[]", "{\"slug\":\"tight-timelines\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"home-page-why-we-make-labling-easy-card\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":32}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:09:52", "2026-04-15 18:09:52"),
	(245, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 28, "[]", "{\"language\":\"en\",\"parent_id\":32,\"title\":\"Tight Timelines?\",\"second_title\":null,\"brief\":\"We understand production pressure and work efficiently to deliver reliable labels on time.\",\"content\":null,\"content2\":null,\"json_items\":\"[{\\\"number\\\":null,\\\"suffix\\\":null,\\\"label_en\\\":null,\\\"icon\\\":\\\"clock\\\",\\\"title_en\\\":null,\\\"description_en\\\":null}]\",\"image_id\":null,\"id\":28}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:09:52", "2026-04-15 18:09:52"),
	(246, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 25, "{\"json_items\":\"[]\"}", "{\"json_items\":\"[{\\\"number\\\":null,\\\"suffix\\\":null,\\\"label_en\\\":null,\\\"icon\\\":\\\"sync-alt\\\",\\\"title_en\\\":null,\\\"description_en\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:10:22", "2026-04-15 18:10:22"),
	(247, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\Bms", 33, "[]", "{\"slug\":\"generic-solutions\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"home-page-why-we-make-labling-easy-card\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":33}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:11:27", "2026-04-15 18:11:27"),
	(248, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 29, "[]", "{\"language\":\"en\",\"parent_id\":33,\"title\":\"Generic Solutions?\",\"second_title\":null,\"brief\":\"Alpha Pack offers fully customizable labels in size, material, finish, and format, helping your product stand out on the shelf.\",\"content\":null,\"content2\":null,\"json_items\":\"[{\\\"number\\\":null,\\\"suffix\\\":null,\\\"label_en\\\":null,\\\"icon\\\":\\\"palette\\\",\\\"title_en\\\":null,\\\"description_en\\\":null}]\",\"image_id\":null,\"id\":29}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:11:27", "2026-04-15 18:11:27"),
	(249, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\Bms", 34, "[]", "{\"slug\":\"color-accuracy-matters\",\"published_at\":\"1776211200\",\"status\":1,\"category\":\"home-page-why-we-make-labling-easy-card\",\"weight_order\":10,\"updated_by\":1,\"created_by\":1,\"id\":34}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:12:00", "2026-04-15 18:12:00"),
	(250, "App\\Models\\User", 1, "created", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 30, "[]", "{\"language\":\"en\",\"parent_id\":34,\"title\":\"Color Accuracy Matters\",\"second_title\":null,\"brief\":\"We print using CMYK and Pantone color systems to ensure exceptional color accuracy and consistency across every label.\",\"content\":null,\"content2\":null,\"json_items\":\"[{\\\"number\\\":null,\\\"suffix\\\":null,\\\"label_en\\\":null,\\\"icon\\\":\\\"eye-dropper\\\",\\\"title_en\\\":null,\\\"description_en\\\":null}]\",\"image_id\":null,\"id\":30}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:12:00", "2026-04-15 18:12:00"),
	(251, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 30, "{\"published_at\":1776275368}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:13:12", "2026-04-15 18:13:12"),
	(252, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 26, "{\"title\":\"Find Your Perfect Label Solution\",\"json_items\":null}", "{\"title\":\"Find the Right Label for You\",\"json_items\":\"[]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:13:12", "2026-04-15 18:13:12"),
	(253, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 26, "{\"content\":null}", "{\"content\":\"<p>&lt;table class=\\\"comparison-table\\\"&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;thead&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Feature&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;PP White&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;PP Clear&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Clear-on-Clear&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Aluminum&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/thead&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tbody&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Look &amp;amp; Feel&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Solid white, bold &amp;amp; vibrant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Transparent, modern&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Invisible \\\"no-label\\\" look&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Metallic, premium finish&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Brand Impact&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;High color pop &amp;amp; readability&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Clean, minimal branding&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Ultra-premium, seamless branding&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Strong, luxury &amp;amp; technical&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Durability&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Water &amp;amp; tear resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Water resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Water resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Heat &amp;amp; chemical resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Best Used On&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Plastic, glass, metal&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Smooth plastic &amp;amp; glass&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Clear glass &amp;amp; plastic&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Glass, metal, plastic&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Ideal For&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Food, retail, cosmetics&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Bottles &amp;amp; jars&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Beverages, cosmetics&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Pharma, chemicals, luxury&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Why Choose?&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Cost-effective, versatile, strong brand visibility&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Modern designs that let product show through&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;High-end \\\"label-free\\\" shelf appearance&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Unmatched durability with premium metallic look&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tbody&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/table&gt;<\\/p>\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:15:25", "2026-04-15 18:15:25"),
	(254, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 26, "{\"content\":\"<p>&lt;table class=\\\"comparison-table\\\"&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;thead&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Feature&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;PP White&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;PP Clear&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Clear-on-Clear&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Aluminum&lt;\\/th&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/thead&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tbody&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Look &amp;amp; Feel&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Solid white, bold &amp;amp; vibrant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Transparent, modern&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Invisible \\\"no-label\\\" look&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Metallic, premium finish&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Brand Impact&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;High color pop &amp;amp; readability&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Clean, minimal branding&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Ultra-premium, seamless branding&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Strong, luxury &amp;amp; technical&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Durability&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Water &amp;amp; tear resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Water resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Water resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Heat &amp;amp; chemical resistant&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Best Used On&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Plastic, glass, metal&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Smooth plastic &amp;amp; glass&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Clear glass &amp;amp; plastic&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Glass, metal, plastic&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Ideal For&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Food, retail, cosmetics&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Bottles &amp;amp; jars&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Beverages, cosmetics&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Pharma, chemicals, luxury&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;&lt;strong&gt;Why Choose?&lt;\\/strong&gt;&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Cost-effective, versatile, strong brand visibility&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Modern designs that let product show through&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;High-end \\\"label-free\\\" shelf appearance&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Unmatched durability with premium metallic look&lt;\\/td&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tr&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/tbody&gt;<br \\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;\\/table&gt;<\\/p>\"}", "{\"content\":\"<table class=\\\"comparison-table\\\">\\n<thead>\\n<tr>\\n<th>Feature<\\/th>\\n<th>PP White<\\/th>\\n<th>PP Clear<\\/th>\\n<th>Clear-on-Clear<\\/th>\\n<th>Aluminum<\\/th>\\n<\\/tr>\\n<\\/thead>\\n<tbody>\\n<tr>\\n<td><strong>Look &amp; Feel<\\/strong><\\/td>\\n<td>Solid white, bold &amp; vibrant<\\/td>\\n<td>Transparent, modern<\\/td>\\n<td>Invisible \\\"no-label\\\" look<\\/td>\\n<td>Metallic, premium finish<\\/td>\\n<\\/tr>\\n<tr>\\n<td><strong>Brand Impact<\\/strong><\\/td>\\n<td>High color pop &amp; readability<\\/td>\\n<td>Clean, minimal branding<\\/td>\\n<td>Ultra-premium, seamless branding<\\/td>\\n<td>Strong, luxury &amp; technical<\\/td>\\n<\\/tr>\\n<tr>\\n<td><strong>Durability<\\/strong><\\/td>\\n<td>Water &amp; tear resistant<\\/td>\\n<td>Water resistant<\\/td>\\n<td>Water resistant<\\/td>\\n<td>Heat &amp; chemical resistant<\\/td>\\n<\\/tr>\\n<tr>\\n<td><strong>Best Used On<\\/strong><\\/td>\\n<td>Plastic, glass, metal<\\/td>\\n<td>Smooth plastic &amp; glass<\\/td>\\n<td>Clear glass &amp; plastic<\\/td>\\n<td>Glass, metal, plastic<\\/td>\\n<\\/tr>\\n<tr>\\n<td><strong>Ideal For<\\/strong><\\/td>\\n<td>Food, retail, cosmetics<\\/td>\\n<td>Bottles &amp; jars<\\/td>\\n<td>Beverages, cosmetics<\\/td>\\n<td>Pharma, chemicals, luxury<\\/td>\\n<\\/tr>\\n<tr>\\n<td><strong>Why Choose?<\\/strong><\\/td>\\n<td>Cost-effective, versatile, strong brand visibility<\\/td>\\n<td>Modern designs that let product show through<\\/td>\\n<td>High-end \\\"label-free\\\" shelf appearance<\\/td>\\n<td>Unmatched durability with premium metallic look<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:17:42", "2026-04-15 18:17:42"),
	(255, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\Bms", 31, "{\"published_at\":1776275368}", "{\"published_at\":\"1776211200\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:19:48", "2026-04-15 18:19:48"),
	(256, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 27, "{\"json_items\":\"[{\\\"icon\\\":\\\"logo1\\\",\\\"label_en\\\":\\\"Client 1\\\"},{\\\"icon\\\":\\\"logo2\\\",\\\"label_en\\\":\\\"Client 2\\\"},{\\\"icon\\\":\\\"logo3\\\",\\\"label_en\\\":\\\"Client 3\\\"}]\"}", "{\"json_items\":\"[{\\\"icon\\\":\\\"flask\\\",\\\"label_en\\\":\\\"Client 1\\\",\\\"number\\\":null,\\\"suffix\\\":null,\\\"title_en\\\":null,\\\"description_en\\\":null},{\\\"icon\\\":\\\"check\\\",\\\"label_en\\\":\\\"Client 2\\\",\\\"number\\\":null,\\\"suffix\\\":null,\\\"title_en\\\":null,\\\"description_en\\\":null},{\\\"icon\\\":\\\"clock\\\",\\\"label_en\\\":\\\"Client 3\\\",\\\"number\\\":null,\\\"suffix\\\":null,\\\"title_en\\\":null,\\\"description_en\\\":null}]\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:19:48", "2026-04-15 18:19:48"),
	(257, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 21, "{\"image_id\":null}", "{\"image_id\":22}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:20:53", "2026-04-15 18:20:53"),
	(258, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 21, "{\"image_id\":22}", "{\"image_id\":null}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:21:02", "2026-04-15 18:21:02"),
	(259, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Bms\\Model\\BmsLang", 21, "{\"image_id\":null}", "{\"image_id\":24}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:22:05", "2026-04-15 18:22:05"),
	(260, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 277, "{\"value\":null}", "{\"value\":\"\\\"admin@test.com\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:27:10", "2026-04-15 18:27:10"),
	(261, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 278, "{\"value\":null}", "{\"value\":\"\\\"password123\\\"\"}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:27:10", "2026-04-15 18:27:10"),
	(262, "App\\Models\\User", 1, "created", "App\\Models\\Setting\\Setting", 296, "[]", "{\"key\":\"en.site.catalogue_file\",\"value\":\"24\",\"id\":296}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:27:10", "2026-04-15 18:27:10"),
	(263, "App\\Models\\User", 1, "updated", "App\\Models\\Setting\\Setting", 296, "{\"value\":\"24\"}", "{\"value\":null}", "https://alpha.test/livewire/update", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 18:28:40", "2026-04-15 18:28:40"),
	(264, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":8}", "{\"views\":9}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 20:15:58", "2026-04-15 20:15:58"),
	(265, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":9}", "{\"views\":10}", "https://alpha.test/en/products/barcode-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 20:16:07", "2026-04-15 20:16:07"),
	(266, "App\\Models\\User", 1, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":8}", "{\"views\":9}", "https://alpha.test/en/products/tamper-proof-labels", "127.0.0.1", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-15 20:17:31", "2026-04-15 20:17:31"),
	(267, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":16}", "{\"views\":17}", "https://952c-197-43-158-41.ngrok-free.app/en/products/self-adhesive-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:19:01", "2026-04-16 13:19:01"),
	(268, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 2, "{\"views\":10}", "{\"views\":11}", "https://952c-197-43-158-41.ngrok-free.app/en/products/barcode-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:19:16", "2026-04-16 13:19:16"),
	(269, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 5, "{\"views\":7}", "{\"views\":8}", "https://952c-197-43-158-41.ngrok-free.app/en/products/stretch-sleeves", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:19:20", "2026-04-16 13:19:20"),
	(270, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 3, "{\"views\":9}", "{\"views\":10}", "https://952c-197-43-158-41.ngrok-free.app/en/products/tamper-proof-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:19:58", "2026-04-16 13:19:58"),
	(271, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":17}", "{\"views\":18}", "https://952c-197-43-158-41.ngrok-free.app/en/products/self-adhesive-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:20:31", "2026-04-16 13:20:31"),
	(272, NULL, NULL, "updated", "App\\Filament\\Resources\\Blog\\Model\\Blog", 3, "{\"views\":0}", "{\"views\":1}", "https://952c-197-43-158-41.ngrok-free.app/en/blog/detergents-household-product-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:22:18", "2026-04-16 13:22:18"),
	(273, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":18}", "{\"views\":19}", "https://952c-197-43-158-41.ngrok-free.app/en/products/self-adhesive-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:25:20", "2026-04-16 13:25:20"),
	(274, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":19}", "{\"views\":20}", "https://952c-197-43-158-41.ngrok-free.app/en/products/self-adhesive-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:27:24", "2026-04-16 13:27:24"),
	(275, NULL, NULL, "updated", "App\\Filament\\Resources\\Product\\Model\\Product", 1, "{\"views\":20}", "{\"views\":21}", "https://952c-197-43-158-41.ngrok-free.app/en/products/self-adhesive-labels", "197.43.158.41", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36", NULL, "2026-04-16 13:28:03", "2026-04-16 13:28:03");

/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table auth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth`;

CREATE TABLE `auth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_auth_user` (`user_id`) USING BTREE,
  CONSTRAINT `fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table auth_assignment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`) USING BTREE,
  KEY `fk_user_id_auth_assignment_table` (`user_id`) USING BTREE,
  CONSTRAINT `fk_item_name_auth_assignment_table` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id_auth_assignment_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table auth_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `auth_item_type` (`type`) USING BTREE,
  KEY `fk_auth_item_table_rule_name` (`rule_name`) USING BTREE,
  KEY `fk_auth_item_table_group_code` (`group_code`) USING BTREE,
  CONSTRAINT `fk_auth_item_table_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_table_rule_name` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table auth_item_child
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`) USING BTREE,
  KEY `fk_child_auth_item_child_table` (`child`) USING BTREE,
  CONSTRAINT `fk_child_auth_item_child_table` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_parent_auth_item_child_table` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table auth_item_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_item_group`;

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table auth_rule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table bid_user_request
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bid_user_request`;

CREATE TABLE `bid_user_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `time` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `product_id` (`product_id`,`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table blog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Alpha Pack',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `comment_status` int NOT NULL DEFAULT '1',
  `is_campaign` tinyint(1) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `revision` int NOT NULL DEFAULT '1',
  `changed` tinyint NOT NULL DEFAULT '0',
  `reject_note` text COLLATE utf8mb4_unicode_ci,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `views` int unsigned NOT NULL DEFAULT '0',
  `reading_time` int unsigned NOT NULL DEFAULT '0',
  `video_id` bigint unsigned DEFAULT NULL,
  `gallery_image_ids` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_slug_index` (`slug`),
  KEY `blog_status_index` (`status`),
  KEY `blog_published_at_index` (`published_at`),
  KEY `blog_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;

INSERT INTO `blog` (`id`, `category_id`, `author`, `slug`, `image_header`, `image_campaign`, `status`, `comment_status`, `is_campaign`, `start_date`, `end_date`, `published_at`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `revision`, `changed`, `reject_note`, `view`, `layout`, `weight_order`, `views`, `reading_time`, `video_id`, `gallery_image_ids`) VALUES
	(1, 5, "Alpha Pack", "food-beverage-labels", NULL, NULL, 1, 1, 1, NULL, NULL, 1775347200, 1776264532, 1776275737, NULL, 1, 1, 1, 0, NULL, "page", "main", 10, 2, 4, NULL, NULL),
	(2, 5, "Alpha Pack", "cosmetics-personal-care-labels", NULL, NULL, 1, 1, 1, NULL, NULL, 1775433600, 1776264532, 1776275741, NULL, 1, 1, 1, 0, NULL, "page", "main", 20, 7, 4, NULL, NULL),
	(3, 5, "Alpha Pack", "detergents-household-product-labels", NULL, NULL, 1, 1, 1, NULL, NULL, 1775520000, 1776264532, 1776345738, NULL, 1, 1, 1, 0, NULL, "page", "main", 30, 1, 3, NULL, NULL),
	(4, 5, "Alpha Pack", "pharmaceutical-healthcare-labels", NULL, NULL, 1, 1, 1, NULL, NULL, 1775606400, 1776264532, 1776275750, NULL, 1, 1, 1, 0, NULL, "page", "main", 40, 3, 4, NULL, NULL),
	(5, 6, "Alpha Pack", "logistics-industrial-labels", NULL, NULL, 1, 1, 0, NULL, NULL, 1775692800, 1776264532, 1776266669, 1776266669, 1, 1, 1, 0, NULL, "page", "main", 50, 6, 4, NULL, NULL),
	(6, 7, "Alpha Pack", "how-to-choose-right-label-material", NULL, NULL, 1, 1, 0, NULL, NULL, 1775833813, 1776264532, 1776266669, 1776266669, 1, 1, 1, 0, NULL, "page", "main", 60, 1, 4, NULL, NULL),
	(7, 8, "Alpha Pack", "sustainable-labeling-solutions", NULL, NULL, 1, 1, 0, NULL, NULL, 1775920213, 1776264532, 1776266669, 1776266669, 1, 1, 1, 0, NULL, "page", "main", 70, 0, 4, NULL, NULL),
	(8, 9, "Alpha Pack", "why-tamper-proof-labels-matter", NULL, NULL, 1, 1, 0, NULL, NULL, 1776006613, 1776264532, 1776266669, 1776266669, 1, 1, 1, 0, NULL, "page", "main", 80, 0, 3, NULL, NULL),
	(9, 10, "Alpha Pack", "color-accuracy-label-printing", NULL, NULL, 1, 1, 0, NULL, NULL, 1776093013, 1776264532, 1776266669, 1776266669, 1, 1, 1, 0, NULL, "page", "main", 90, 0, 4, NULL, NULL),
	(10, 11, "Alpha Pack", "shrink-sleeves-vs-stretch-sleeves", NULL, NULL, 1, 1, 0, NULL, NULL, 1776179413, 1776264532, 1776266669, 1776266669, 1, 1, 1, 0, NULL, "page", "main", 100, 1, 5, NULL, NULL),
	(11, 6, "Alpha Pack", "barcode-labels-best-practices", NULL, NULL, 1, 1, 0, NULL, NULL, 1776265813, 1776264532, 1776266669, 1776266669, 1, 1, 1, 0, NULL, "page", "main", 110, 1, 4, NULL, NULL);

/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table blog_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_lang`;

CREATE TABLE `blog_lang` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int unsigned NOT NULL,
  `language` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `image_id` bigint unsigned DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `pdf_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_lang_blog_id_language_unique` (`blog_id`,`language`),
  KEY `blog_lang_language_index` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blog_lang` WRITE;
/*!40000 ALTER TABLE `blog_lang` DISABLE KEYS */;

INSERT INTO `blog_lang` (`id`, `blog_id`, `language`, `title`, `image_id`, `brief`, `content`, `pdf_file`) VALUES
	(1, 1, "en", "Food & Beverage Labels", 8, "Food and beverage packs face moisture, grease, temperature swings, and repeated handling. Labels must stay legible for branding and mandatory information throughout the product lifecycle.", "<p>Food and beverage packs face moisture, grease, temperature swings, and repeated handling. Labels must stay legible for branding and mandatory information throughout the product lifecycle.</p><h2>What we focus on</h2><ul><li>Moisture- and grease-resistant facestocks</li><li>Adhesives suited to refrigerated, frozen, or ambient supply chains</li><li>High-quality print for nutrition and regulatory text</li><li>Formats from semi-gloss paper to PP films and shrink sleeves</li></ul><p>Whether you launch a new SKU or refresh an existing line, we align materials and finishes with your filling process and retail environment.</p>", NULL),
	(2, 2, "en", "Cosmetics & Personal Care Labels", 7, "Beauty and personal care packaging demands premium appearance and resistance to oils, creams, and humid bathrooms. Clear-on-clear and metallic finishes are popular for shelf differentiation.", "<p>Beauty and personal care packaging demands premium appearance and resistance to oils, creams, and humid bathrooms. Clear-on-clear and metallic finishes are popular for shelf differentiation.</p><ul><li>Durable materials with strong resistance to product ingredients</li><li>Premium finishes aligned with brand positioning</li><li>Clear and aluminum options for luxury no-label or metallic looks</li></ul><p>We support intricate designs and tight registration so your labels look as refined as the formula inside.</p>", NULL),
	(3, 3, "en", "Detergents & Household Products", 8, "Cleaning products often use aggressive formulas and squeezable or rigid plastics. Labels must resist chemical exposure and mechanical stress.", "<p>Cleaning products often use aggressive formulas and squeezable or rigid plastics. Labels must resist chemical exposure and mechanical stress.</p><ul><li>Chemical-resistant films and adhesives</li><li>Strong bond to HDPE, PET, and other common household resins</li><li>Stretch sleeve options for 360 degree branding on bottles</li></ul><p>We test recommendations against your container and use conditions so labels stay put in demanding home and industrial environments.</p>", NULL),
	(4, 4, "en", "Pharmaceutical & Healthcare Labels", 7, "Healthcare labeling must balance readability, security, and regulatory compliance. Small text, multi-language copy, and tamper features are common requirements.", "<p>Healthcare labeling must balance readability, security, and regulatory compliance. Small text, multi-language copy, and tamper features are common requirements.</p><ul><li>Crisp print for dosing and safety information</li><li>Secure adhesives for vials, cartons, and devices</li><li>Options for booklet or multi-page labels when content is extensive</li><li>Tamper-evident features where required</li></ul><p>We treat pharma and healthcare projects with strict process control and documentation suitable for validated supply chains.</p>", NULL),
	(5, 5, "en", "Logistics & Industrial Labels", 8, "Asset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.\nAsset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.", "<p>Asset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.</p><ul><li>Tear- and scratch-resistant materials</li><li>Barcode and variable data printing for serialization and tracking</li><li>Silver polyester and aluminum options for demanding conditions</li><li>Custom sizes for pallets, racks, and equipment</li></ul><p>Share your durability targets and scan points and we will propose materials and print specs that hold up in the field.</p>", NULL),
	(6, 6, "en", "How to Choose the Right Label Material", 7, "Picking the correct facestock and adhesive is one of the most important decisions in packaging.", "<p>Picking the correct facestock and adhesive is one of the most important decisions in packaging. The wrong combination can lead to edge lift, poor print reproduction, or failure in cold or humid conditions.</p><h2>PP White</h2><p>Polypropylene white film is the workhorse for many consumer goods. It offers excellent opacity for vibrant graphics, strong water resistance, and works well on plastics and glass.</p><h2>PP Clear and Clear-on-Clear</h2><p>Clear films let the product show through for a minimalist or premium no-label look. Clear-on-Clear is ideal when both the label and container are transparent and you want a seamless appearance.</p><h2>Aluminum</h2><p>Metalized or aluminum-look labels deliver a technical or luxury feel and stand up to heat and chemicals, common in pharma, industrial, and specialty segments.</p><p>At Alpha Pack, we help you match material to surface, storage conditions, and regulatory requirements so your labels perform from production to shelf.</p>", NULL),
	(7, 7, "en", "Sustainable Labeling Solutions", 8, "Brands are under growing pressure to reduce waste and improve recyclability. Labels play a real role in that process.", "<p>Brands are under growing pressure to reduce waste and improve recyclability. Labels play a real role: the right construction can stay compatible with container recycling streams or reduce material use altogether.</p><h2>Stretch sleeves</h2><p>Stretch sleeves apply without adhesive over the full body of a container, which can simplify separation in some recycling processes and support bold 360 degree branding with fewer material layers.</p><h2>Material choices</h2><p>Thinner films, recyclable substrates, and designs that avoid conflicting layers all help lower environmental impact. We work with you to balance sustainability goals with durability and shelf appeal.</p>", NULL),
	(8, 8, "en", "Why Tamper-Proof Labels Matter", 7, "Tamper-evident labels protect consumers and protect your brand. They make unauthorized opening visible at a glance.", "<p>Tamper-evident labels protect consumers and protect your brand. They make unauthorized opening visible at a glance and are widely used in food, supplements, cosmetics, and pharmaceuticals.</p><ul><li>Void messages when removed from the surface</li><li>Break seals and perforations that cannot be realigned cleanly</li><li>Specialized adhesives that fracture or delaminate on tampering</li></ul><p>Choosing the right tamper solution depends on the package shape, distribution environment, and regulatory expectations. We can recommend options that integrate cleanly with your existing artwork and filling lines.</p>", NULL),
	(9, 9, "en", "Color Accuracy in Label Printing", 8, "Consistent color builds recognition. Whether you use CMYK builds or Pantone colors, control through prepress is essential.", "<p>Consistent color builds recognition. Whether you use CMYK process builds or specified Pantone colors, control through prepress and on press is essential.</p><h2>CMYK</h2><p>Four-color process is cost-effective for complex images and gradients. We calibrate presses and profile substrates so tones stay stable across runs.</p><h2>Pantone matching</h2><p>Spot colors are often used for logos and brand-critical hues. We match to specified swatches and validate under agreed lighting conditions where needed.</p><p>Share your brand guidelines early and we will advise on achievable deltas and proofing steps before full production.</p>", NULL),
	(10, 10, "en", "Shrink Sleeves vs Stretch Sleeves", 7, "Both formats deliver 360 degree graphics and strong shelf presence, but they apply very differently.", "<p>Both formats deliver 360 degree graphics and strong shelf presence, but they apply very differently.</p><h2>Shrink sleeves</h2><p>Heat shrinks a pre-printed film to conform tightly to the container. Excellent for unusual shapes and tamper bands over caps. Requires heat tunnels and careful artwork distortion compensation.</p><h2>Stretch sleeves</h2><p>Elastic films stretch over the pack without heat, which can suit temperature-sensitive products and certain line speeds. Great for full-body decoration where adhesive-free application is preferred.</p><p>We help you compare total cost, line integration, and recyclability for your specific bottle and category.</p>", NULL),
	(11, 11, "en", "Barcode Labels: Best Practices", 8, "Reliable scanning depends on print quality, quiet zones, symbol size, and contrast, not only the number sequence.", "<p>Reliable scanning depends on print quality, quiet zones, symbol size, and contrast, not just the correct number sequence.</p><ul><li>Maintain minimum bar width and height for your symbology such as Code 128 or EAN-13</li><li>Use high-contrast ink and substrate combinations</li><li>Avoid placing codes over seams, corners, or areas prone to abrasion</li><li>Test samples on the actual scanners used in retail or warehouses</li></ul><p>We optimize barcode placement in your layout and verify readability against common verification standards where required.</p>", NULL);

/*!40000 ALTER TABLE `blog_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table bms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bms`;

CREATE TABLE `bms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `module_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `module_id` bigint unsigned DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '1',
  `published_at` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `revision` int NOT NULL DEFAULT '1',
  `changed` tinyint DEFAULT '0',
  `reject_note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `view` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'page',
  `layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'main',
  `category` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `color` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `promoted_to_front` tinyint(1) DEFAULT '0',
  `site_id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `rate` tinyint(1) DEFAULT NULL,
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `category_slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_slug` (`slug`) USING BTREE,
  KEY `page_status` (`status`) USING BTREE,
  KEY `site_id` (`site_id`,`id`) USING BTREE,
  KEY `bms_category_slug_foreign` (`category_slug`),
  CONSTRAINT `bms_category_slug_foreign` FOREIGN KEY (`category_slug`) REFERENCES `dropdown_list` (`slug`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `bms` WRITE;
/*!40000 ALTER TABLE `bms` DISABLE KEYS */;

INSERT INTO `bms` (`id`, `slug`, `status`, `module_class`, `module_id`, `url`, `published_at`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `revision`, `changed`, `reject_note`, `view`, `layout`, `category`, `color`, `promoted_to_front`, `site_id`, `rate`, `weight_order`, `category_slug`) VALUES
	(1, "about-us-header-section", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-header-section", NULL, 0, NULL, NULL, 10, NULL),
	(2, "about-us-who-we-are", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-who-we-are", NULL, 0, NULL, NULL, 10, NULL),
	(3, "about-us-our-history-card-1", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-our-history-cards", NULL, 0, NULL, NULL, 10, NULL),
	(4, "about-us-our-history-card-2", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-our-history-cards", NULL, 0, NULL, NULL, 20, NULL),
	(5, "about-us-our-history-card-3", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-our-history-cards", NULL, 0, NULL, NULL, 30, NULL),
	(6, "about-us-our-history-card-4", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-our-history-cards", NULL, 0, NULL, NULL, 40, NULL),
	(7, "about-us-our-history-card-5", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-our-history-cards", NULL, 0, NULL, NULL, 50, NULL),
	(8, "about-us-testimonial-1", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-testimonials", NULL, 0, NULL, NULL, 10, NULL),
	(9, "about-us-testimonial-2", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-testimonials", NULL, 0, NULL, NULL, 20, NULL),
	(10, "about-us-testimonial-3", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-testimonials", NULL, 0, NULL, NULL, 30, NULL),
	(11, "about-us-testimonial-4", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-testimonials", NULL, 0, NULL, NULL, 40, NULL),
	(12, "about-us-testimonial-5", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-testimonials", NULL, 0, NULL, NULL, 50, NULL),
	(13, "about-us-testimonial-6", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-testimonials", NULL, 0, NULL, NULL, 60, NULL),
	(14, "about-us-terms-conditions", 1, NULL, NULL, "1", 1776257145, 1776257145, 1776257145, NULL, 1, 1, 1, 0, NULL, "page", "main", "about-us-terms-conditions", NULL, 0, NULL, NULL, 10, NULL),
	(17, "blog-index-banner", 1, NULL, NULL, "1", 1776265813, 1776265813, 1776265813, NULL, 1, 1, 1, 0, NULL, "page", "main", "blog-index-banner", NULL, 0, NULL, NULL, 10, NULL),
	(18, "our-blog", 1, NULL, NULL, "1", 1776211200, 1776265964, 1776265964, NULL, 1, 1, 1, 0, NULL, "page", "main", "blogs-index-banner", NULL, 0, NULL, NULL, 10, NULL),
	(19, "products-index-banner", 1, NULL, NULL, "1", 1776268984, 1776268984, 1776268984, NULL, 1, 1, 1, 0, NULL, "page", "main", "products-index-banner", NULL, 0, NULL, NULL, 10, NULL),
	(20, "products-why-choose-us", 1, NULL, NULL, "1", 1776268984, 1776268984, 1776268984, NULL, 1, 1, 1, 0, NULL, "page", "main", "products-why-choose-us", NULL, 0, NULL, NULL, 20, NULL),
	(21, "products-our-process", 1, NULL, NULL, "1", 1776211200, 1776268984, 1776270370, NULL, 1, 1, 1, 0, NULL, "page", "main", "products-our-process", NULL, 0, NULL, NULL, 30, NULL),
	(22, "get-in-touch", 1, NULL, NULL, "1", 1776211200, 1776272458, 1776272458, NULL, 1, 1, 1, 0, NULL, "page", "main", "contact-us-header-section", NULL, 0, NULL, NULL, 10, NULL),
	(25, "home-page-header", 1, NULL, NULL, "1", 1776211200, 1776275368, 1776275446, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-header-section", NULL, 0, NULL, NULL, 1, NULL),
	(26, "home-page-stats", 1, NULL, NULL, "1", 1776211200, 1776275368, 1776275670, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-stats-section", NULL, 0, NULL, NULL, 2, NULL),
	(27, "why-card-1", 1, NULL, NULL, "1", 1776211200, 1776275368, 1776276415, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-why-we-make-labling-easy-card", NULL, 0, NULL, NULL, 3, NULL),
	(28, "why-card-2", 1, NULL, NULL, "1", 1776211200, 1776275368, 1776276516, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-why-we-make-labling-easy-card", NULL, 0, NULL, NULL, 4, NULL),
	(29, "why-card-3", 1, NULL, NULL, "1", 1776211200, 1776275368, 1776276546, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-why-we-make-labling-easy-card", NULL, 0, NULL, NULL, 5, NULL),
	(30, "find-right-label", 1, NULL, NULL, "1", 1776211200, 1776275368, 1776276792, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-find-right-label", NULL, 0, NULL, NULL, 6, NULL),
	(31, "our-clients", 1, NULL, NULL, "1", 1776211200, 1776275368, 1776277188, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-our-clients", NULL, 0, NULL, NULL, 7, NULL),
	(32, "tight-timelines", 1, NULL, NULL, "1", 1776211200, 1776276592, 1776276592, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-why-we-make-labling-easy-card", NULL, 0, NULL, NULL, 10, NULL),
	(33, "generic-solutions", 1, NULL, NULL, "1", 1776211200, 1776276687, 1776276687, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-why-we-make-labling-easy-card", NULL, 0, NULL, NULL, 10, NULL),
	(34, "color-accuracy-matters", 1, NULL, NULL, "1", 1776211200, 1776276720, 1776276720, NULL, 1, 1, 1, 0, NULL, "page", "main", "home-page-why-we-make-labling-easy-card", NULL, 0, NULL, NULL, 10, NULL);

/*!40000 ALTER TABLE `bms` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table bms_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bms_lang`;

CREATE TABLE `bms_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `language` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `second_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `brief` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image_id` bigint unsigned DEFAULT NULL,
  `cover_image_id` bigint unsigned DEFAULT NULL,
  `video_id` bigint unsigned DEFAULT NULL,
  `image_responsive_id` bigint unsigned DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content2` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `json_items` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_lang_post_id` (`parent_id`) USING BTREE,
  KEY `page_lang_language` (`language`) USING BTREE,
  CONSTRAINT `bms_lang_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `bms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `bms_lang` WRITE;
/*!40000 ALTER TABLE `bms_lang` DISABLE KEYS */;

INSERT INTO `bms_lang` (`id`, `parent_id`, `language`, `title`, `second_title`, `brief`, `image_id`, `cover_image_id`, `video_id`, `image_responsive_id`, `content`, `content2`, `json_items`) VALUES
	(1, 1, "en", "About Alpha Pack", NULL, "Over 20 years of mastering the art of creating high-quality adhesive labels that help brands communicate, stand out, and build trust.", 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 2, "en", "Who We Are", NULL, "With over 20 years in the business, we\'ve mastered the art of creating high-quality adhesive labels that do more than stick.", 3, NULL, NULL, NULL, "<p>We specialize in adhesive labels for food, retail, pharmaceutical, and industrial applications, delivering eye-catching shelf appeal, reliable adhesion, and long-lasting durability in every piece we produce.</p><p>From self-adhesive labels and barcode labels to shrink sleeves, stretch sleeves, tamper-proof labels, and in-mold labels, Alpha Pack offers a complete range of labeling solutions to meet every packaging need.</p>", NULL, NULL),
	(3, 3, "en", "Early 2000s - Foundation", NULL, "Alpha Pack was founded with a commitment to producing high-quality adhesive labels. Starting with a small team and a single press, we set out to serve local businesses with reliable label solutions.", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 4, "en", "2005-2010 - Growth & Expansion", NULL, "As demand grew, we expanded our production capabilities and invested in advanced flexographic printing technology, allowing us to serve larger clients across food, retail, and pharmaceutical sectors.", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 5, "en", "2010-2015 - Diversification", NULL, "We broadened our product range to include shrink sleeves, stretch sleeves, barcode labels, and tamper-proof labels, becoming a one-stop shop for packaging and labeling solutions.", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 6, "en", "2015-2020 - Innovation", NULL, "Investment in in-mold labeling technology and premium materials like clear-on-clear and aluminum labels positioned us as a leader in high-end packaging solutions.", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 7, "en", "2020-Present - Industry Leadership", NULL, "Today, with over 20 years of expertise, 500+ satisfied clients, and millions of labels produced, Alpha Pack continues to set the standard for quality, innovation, and customer service in the labeling industry.", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 8, "en", "Sarah M.", "Production Manager, Food & Beverage Company", "\"Alpha Pack has been our go-to for product labels for over 5 years. The quality is consistently outstanding, and their team always meets our tight deadlines. Highly recommended.\"", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 9, "en", "David K.", "Quality Director, Pharmaceutical Company", "\"We switched to Alpha Pack for our pharmaceutical labels and have not looked back. The print clarity is exceptional, and the adhesion is perfect for our regulatory requirements.\"", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 10, "en", "Emma R.", "Brand Manager, Cosmetics Brand", "\"The clear-on-clear labels for our cosmetics line are absolutely stunning. Our products look premium on the shelf, and the no-label appearance has been a hit with our customers.\"", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 11, "en", "James T.", "Operations Lead, Logistics Company", "\"Alpha Pack barcode labels have dramatically improved our warehouse efficiency. Scanning accuracy is near-perfect, and the labels withstand our demanding storage conditions.\"", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 12, "en", "Mark L.", "Procurement Manager, Industrial Equipment", "\"Great value and great service. The team helped us choose the right material for our outdoor equipment labels. They survived rain, sun, and everything in between.\"", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 13, "en", "Lisa O.", "Marketing Director, Beverage Brand", "\"The shrink sleeves Alpha Pack produced for our beverage line are eye-catching and durable. Sales noticeably improved since the rebrand.\"", NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 14, "en", "Terms & Conditions", NULL, NULL, NULL, NULL, NULL, NULL, "<h3>1. General</h3><p>These terms and conditions govern the supply of goods and services by Alpha Pack. By placing an order, you agree to be bound by these terms.</p><h3>2. Orders &amp; Pricing</h3><p>All quotations are valid for 30 days unless otherwise stated. Prices are subject to change based on material costs and specifications. Orders are confirmed upon written acceptance and cannot be cancelled without prior agreement.</p><h3>3. Artwork &amp; Proofs</h3><p>The customer is responsible for providing print-ready artwork. Alpha Pack will provide proofs for approval prior to production. Once approved, Alpha Pack is not liable for errors in the approved artwork.</p><h3>4. Production &amp; Delivery</h3><p>Delivery timelines are estimated and may vary. Alpha Pack will make reasonable efforts to meet agreed schedules. Delays due to circumstances beyond our control do not constitute grounds for order cancellation.</p><h3>5. Quality Assurance</h3><p>All products are manufactured to industry standards. Any claims regarding defective goods must be made within 7 days of delivery, accompanied by supporting evidence.</p><h3>6. Liability</h3><p>Alpha Pack liability is limited to the value of the goods supplied. We are not responsible for consequential losses, loss of profit, or indirect damages arising from the use of our products.</p><h3>7. Payment Terms</h3><p>Payment is due within 30 days of invoice date unless otherwise agreed. Alpha Pack reserves the right to charge interest on overdue amounts at the prevailing statutory rate.</p><h3>8. Intellectual Property</h3><p>All designs, artwork, and tooling created by Alpha Pack remain our property unless otherwise agreed in writing. Customer-supplied designs remain the property of the customer.</p><h3>9. Confidentiality</h3><p>Both parties agree to keep confidential any proprietary information shared during the course of business.</p><h3>10. Governing Law</h3><p>These terms are governed by applicable laws. Any disputes will be subject to the jurisdiction of the relevant courts.</p>", NULL, NULL),
	(15, 17, "en", "Insights & Innovation", NULL, "Discover industry best practices, labeling solutions, and product expertise from the Alpha Pack team. Stay updated with our latest insights on packaging, sustainability, and quality.", 7, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 18, "en", "Our Blog", NULL, "Insights, tips, and industry knowledge from the world of labels and packaging.", 9, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 19, "en", "Our Product Range", "Explore Our Solutions", "Premium quality labels and packaging solutions designed for your diverse business needs", 10, NULL, NULL, NULL, "From self-adhesive labels to innovative shrink sleeves and in-mold labels, we deliver reliable, high-quality solutions for every application. Each product is designed with precision and quality at every step.", NULL, NULL),
	(18, 20, "en", "Why Choose Our Labels?", NULL, "With over 20 years of experience in the labeling industry, Alpha Pack has established itself as a trusted partner for businesses worldwide. We combine cutting-edge printing technology with superior materials to create labels that not only look exceptional but also perform reliably in demanding environments.", 10, NULL, NULL, NULL, "<p>Our team of experts works closely with each client to understand their unique needs and deliver customized solutions that exceed expectations. From concept to production, we maintain the highest standards of quality and professionalism.</p><ul style=\"list-style: none; padding: 0; margin-top: 20px;\"><li style=\"padding: 10px 0;\"><i class=\"fas fa-check-circle\" style=\"color: var(--primary); margin-right: 12px;\"></i> Premium quality materials</li><li style=\"padding: 10px 0;\"><i class=\"fas fa-check-circle\" style=\"color: var(--primary); margin-right: 12px;\"></i> Advanced printing technology</li><li style=\"padding: 10px 0;\"><i class=\"fas fa-check-circle\" style=\"color: var(--primary); margin-right: 12px;\"></i> Fast turnaround times</li><li style=\"padding: 10px 0;\"><i class=\"fas fa-check-circle\" style=\"color: var(--primary); margin-right: 12px;\"></i> Competitive pricing</li></ul>", NULL, NULL),
	(19, 21, "en", "Our Process", NULL, "At Alpha Pack, we follow a streamlined process to ensure every project is handled with precision and care. From initial consultation to final delivery, we maintain clear communication and attention to detail at every stage.", 21, NULL, NULL, NULL, "<p>Our process includes design consultation, material selection, quality proofing, production, and quality assurance. We work with you every step of the way to ensure the final product meets or exceeds your expectations.</p><div style=\"margin-top: 30px; display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px;\"><div style=\"background: var(--off-white); padding: 20px; border-radius: 8px;\"><h4 style=\"color: var(--primary); margin-top: 0;\">Fast Production</h4><p style=\"font-size: 0.9rem; margin: 0;\">5-7 business days standard</p></div><div style=\"background: var(--off-white); padding: 20px; border-radius: 8px;\"><h4 style=\"color: var(--primary); margin-top: 0;\">Quality Guarantee</h4><p style=\"font-size: 0.9rem; margin: 0;\">100% satisfaction guaranteed</p></div></div>", NULL, NULL),
	(20, 22, "en", "Get In Touch", NULL, "Ready to discuss your labeling needs? We\'re here to help you find the perfect solution.", 22, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 25, "en", "Label It Right", NULL, "High-quality adhesive labels that help brands communicate, stand out, and build trust at first glance.", 24, NULL, NULL, NULL, NULL, NULL, "[]"),
	(22, 26, "en", "Home Page Stats", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "[{\"number\":\"25\",\"suffix\":\"+\",\"label_en\":\"Years of Experience\",\"icon\":\"check\",\"title_en\":null,\"description_en\":null},{\"number\":\"500\",\"suffix\":\"+\",\"label_en\":\"Happy Clients\",\"icon\":\"users\",\"title_en\":null,\"description_en\":null},{\"number\":\"100\",\"suffix\":\"%\",\"label_en\":\"Satisfaction\",\"icon\":\"star\",\"title_en\":null,\"description_en\":null},{\"number\":\"6\",\"suffix\":null,\"label_en\":\"Product Categories\",\"icon\":null,\"title_en\":null,\"description_en\":null}]"),
	(23, 27, "en", "Not Sure Which Label Type?", NULL, "From adhesive labels and barcode labels to shrink sleeves and specialty materials, we help you select the best solution for your application, surface, and environment.", NULL, NULL, NULL, NULL, "We deliver the highest quality labels with precision and care.", NULL, "[{\"number\":null,\"suffix\":null,\"label_en\":null,\"icon\":\"question-circle\",\"title_en\":null,\"description_en\":null}]"),
	(24, 28, "en", "Labels Not Performing?", NULL, "We focus on strong adhesion, durability, and print quality, ensuring labels stay in place and look great throughout the product\'s lifecycle.", NULL, NULL, NULL, NULL, NULL, NULL, "[{\"number\":null,\"suffix\":null,\"label_en\":null,\"icon\":\"exclamation-triangle\",\"title_en\":null,\"description_en\":null}]"),
	(25, 29, "en", "Inconsistent Quality?", NULL, "Our controlled production process guarantees consistent results across every order, reducing errors, waste, and rework.", NULL, NULL, NULL, NULL, NULL, NULL, "[{\"number\":null,\"suffix\":null,\"label_en\":null,\"icon\":\"sync-alt\",\"title_en\":null,\"description_en\":null}]"),
	(26, 30, "en", "Find the Right Label for You", NULL, "Use our interactive guide to find the best label type for your needs.", NULL, NULL, NULL, NULL, "<table class=\"comparison-table\">\n<thead>\n<tr>\n<th>Feature</th>\n<th>PP White</th>\n<th>PP Clear</th>\n<th>Clear-on-Clear</th>\n<th>Aluminum</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Look &amp; Feel</strong></td>\n<td>Solid white, bold &amp; vibrant</td>\n<td>Transparent, modern</td>\n<td>Invisible \"no-label\" look</td>\n<td>Metallic, premium finish</td>\n</tr>\n<tr>\n<td><strong>Brand Impact</strong></td>\n<td>High color pop &amp; readability</td>\n<td>Clean, minimal branding</td>\n<td>Ultra-premium, seamless branding</td>\n<td>Strong, luxury &amp; technical</td>\n</tr>\n<tr>\n<td><strong>Durability</strong></td>\n<td>Water &amp; tear resistant</td>\n<td>Water resistant</td>\n<td>Water resistant</td>\n<td>Heat &amp; chemical resistant</td>\n</tr>\n<tr>\n<td><strong>Best Used On</strong></td>\n<td>Plastic, glass, metal</td>\n<td>Smooth plastic &amp; glass</td>\n<td>Clear glass &amp; plastic</td>\n<td>Glass, metal, plastic</td>\n</tr>\n<tr>\n<td><strong>Ideal For</strong></td>\n<td>Food, retail, cosmetics</td>\n<td>Bottles &amp; jars</td>\n<td>Beverages, cosmetics</td>\n<td>Pharma, chemicals, luxury</td>\n</tr>\n<tr>\n<td><strong>Why Choose?</strong></td>\n<td>Cost-effective, versatile, strong brand visibility</td>\n<td>Modern designs that let product show through</td>\n<td>High-end \"label-free\" shelf appearance</td>\n<td>Unmatched durability with premium metallic look</td>\n</tr>\n</tbody>\n</table>", NULL, "[]"),
	(27, 31, "en", "Our Clients", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "[{\"icon\":\"flask\",\"label_en\":\"Client 1\",\"number\":null,\"suffix\":null,\"title_en\":null,\"description_en\":null},{\"icon\":\"check\",\"label_en\":\"Client 2\",\"number\":null,\"suffix\":null,\"title_en\":null,\"description_en\":null},{\"icon\":\"clock\",\"label_en\":\"Client 3\",\"number\":null,\"suffix\":null,\"title_en\":null,\"description_en\":null}]"),
	(28, 32, "en", "Tight Timelines?", NULL, "We understand production pressure and work efficiently to deliver reliable labels on time.", NULL, NULL, NULL, NULL, NULL, NULL, "[{\"number\":null,\"suffix\":null,\"label_en\":null,\"icon\":\"clock\",\"title_en\":null,\"description_en\":null}]"),
	(29, 33, "en", "Generic Solutions?", NULL, "Alpha Pack offers fully customizable labels in size, material, finish, and format, helping your product stand out on the shelf.", NULL, NULL, NULL, NULL, NULL, NULL, "[{\"number\":null,\"suffix\":null,\"label_en\":null,\"icon\":\"palette\",\"title_en\":null,\"description_en\":null}]"),
	(30, 34, "en", "Color Accuracy Matters", NULL, "We print using CMYK and Pantone color systems to ensure exceptional color accuracy and consistency across every label.", NULL, NULL, NULL, NULL, NULL, NULL, "[{\"number\":null,\"suffix\":null,\"label_en\":null,\"icon\":\"eye-dropper\",\"title_en\":null,\"description_en\":null}]");

/*!40000 ALTER TABLE `bms_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table button
# ------------------------------------------------------------

DROP TABLE IF EXISTS `button`;

CREATE TABLE `button` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `published_at` int NOT NULL,
  `deleted_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `revision` bigint unsigned NOT NULL DEFAULT '0',
  `changed` tinyint NOT NULL DEFAULT '0',
  `reject_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `button_status_index` (`status`),
  KEY `button_category_slug_index` (`category_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `button` WRITE;
/*!40000 ALTER TABLE `button` DISABLE KEYS */;

INSERT INTO `button` (`id`, `category_slug`, `icon`, `status`, `weight_order`, `published_at`, `deleted_at`, `created_at`, `updated_at`, `created_by`, `updated_by`, `revision`, `changed`, `reject_note`) VALUES
	(1, "social-media-links", "fab-facebook-f", 1, 10, 1776211200, NULL, 1776252909, 1776252909, 1, 1, 0, 0, NULL),
	(2, "social-media-links", "fab-linkedin-in", 1, 10, 1776211200, NULL, 1776252923, 1776252923, 1, 1, 0, 0, NULL);

/*!40000 ALTER TABLE `button` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table button_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `button_lang`;

CREATE TABLE `button_lang` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned NOT NULL,
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `button_lang_language_index` (`language`),
  KEY `button_lang_parent_id_index` (`parent_id`),
  CONSTRAINT `button_lang_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `button` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `button_lang` WRITE;
/*!40000 ALTER TABLE `button_lang` DISABLE KEYS */;

INSERT INTO `button_lang` (`id`, `parent_id`, `language`, `url`, `label`, `image_id`) VALUES
	(1, 1, "en", "https://www.google.com/", "Facebook", NULL),
	(2, 2, "en", "https://www.google.com/", "LinkedIn", NULL);

/*!40000 ALTER TABLE `button_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table contact_us_webform
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact_us_webform`;

CREATE TABLE `contact_us_webform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `status` int NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_status` (`status`) USING BTREE,
  KEY `contact_us_webform_subject_id_foreign` (`subject_id`),
  CONSTRAINT `contact_us_webform_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `dropdown_list` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `contact_us_webform` WRITE;
/*!40000 ALTER TABLE `contact_us_webform` DISABLE KEYS */;

INSERT INTO `contact_us_webform` (`id`, `first_name`, `last_name`, `email`, `phone`, `company`, `product`, `subject_id`, `message`, `status`, `created_at`) VALUES
	(1, "Kay", "Evans", "pary@mailinator.com", "+9616200123", "asxd", "Other", NULL, "asdasd", 0, 1776262517),
	(2, "Kay", "Evans", "pary@mailinator.com", "+9616200123", "asxd", "Other", NULL, "sdfsdf", 0, 1776262878);

/*!40000 ALTER TABLE `contact_us_webform` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table dropdown_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dropdown_list`;

CREATE TABLE `dropdown_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `color` varchar(255) DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `revision` bigint DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `count` int DEFAULT '0',
  `promoted_to_front` tinyint(1) DEFAULT '0',
  `code` varchar(255) DEFAULT NULL,
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `changed` tinyint DEFAULT '0',
  `reject_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_slug` (`slug`) USING BTREE,
  KEY `page_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `dropdown_list` WRITE;
/*!40000 ALTER TABLE `dropdown_list` DISABLE KEYS */;

INSERT INTO `dropdown_list` (`id`, `slug`, `icon`, `status`, `color`, `published_at`, `created_at`, `updated_at`, `deleted_at`, `revision`, `created_by`, `updated_by`, `category`, `count`, `promoted_to_front`, `code`, `weight_order`, `changed`, `reject_note`) VALUES
	(1, "main-menu", NULL, 1, NULL, 1776252208, 1776252208, 1776252208, NULL, 1, 1, 1, "Menu Category", 0, 0, NULL, 10, 0, NULL),
	(2, "footer-menu", NULL, 1, NULL, 1776252208, 1776252208, 1776252208, NULL, 1, 1, 1, "Menu Category", 0, 0, NULL, 10, 0, NULL),
	(3, "social-media-links", NULL, 1, NULL, 1776211200, 1776252895, 1776252895, NULL, 0, 1, 1, "Button Category", 0, 0, NULL, 10, 0, NULL),
	(4, "other", NULL, 1, NULL, 1776211200, 1776261679, 1776261679, NULL, 0, 1, 1, "Contact Us Category", 0, 0, NULL, 10, 0, NULL),
	(5, "industries", NULL, 1, NULL, 1776264532, 1776264532, 1776264532, NULL, 1, 1, 1, "Blog Category", 0, 0, NULL, 10, 0, NULL),
	(6, "logistics", NULL, 1, NULL, 1776264532, 1776264532, 1776266749, 1776266749, 1, 1, 1, "Blog Category", 0, 0, NULL, 10, 0, NULL),
	(7, "materials", NULL, 1, NULL, 1776264532, 1776264532, 1776266749, 1776266749, 1, 1, 1, "Blog Category", 0, 0, NULL, 10, 0, NULL),
	(8, "sustainability", NULL, 1, NULL, 1776264532, 1776264532, 1776266749, 1776266749, 1, 1, 1, "Blog Category", 0, 0, NULL, 10, 0, NULL),
	(9, "security", NULL, 1, NULL, 1776264532, 1776264532, 1776266749, 1776266749, 1, 1, 1, "Blog Category", 0, 0, NULL, 10, 0, NULL),
	(10, "prepress", NULL, 1, NULL, 1776264532, 1776264532, 1776266749, 1776266749, 1, 1, 1, "Blog Category", 0, 0, NULL, 10, 0, NULL),
	(11, "products", NULL, 1, NULL, 1776264532, 1776264532, 1776266749, 1776266749, 1, 1, 1, "Blog Category", 0, 0, NULL, 10, 0, NULL),
	(12, "self-adhesive", NULL, 1, NULL, 1776211200, 1776268984, 1776270118, NULL, 1, 1, 1, "Product Category", 0, 0, NULL, 10, 0, NULL),
	(13, "barcode", NULL, 1, NULL, 1776211200, 1776268984, 1776270135, NULL, 1, 1, 1, "Product Category", 0, 0, NULL, 10, 0, NULL),
	(14, "tamper-proof", NULL, 1, NULL, 1776211200, 1776268984, 1776270158, NULL, 1, 1, 1, "Product Category", 0, 0, NULL, 10, 0, NULL),
	(15, "sleeves", NULL, 1, NULL, 1776211200, 1776268984, 1776270172, NULL, 1, 1, 1, "Product Category", 0, 0, NULL, 10, 0, NULL),
	(16, "stretch-sleeves", NULL, 1, NULL, 1776268984, 1776268984, 1776270183, 1776270183, 1, 1, 1, "Product Category", 0, 0, NULL, 10, 0, NULL),
	(17, "in-mold-labels", NULL, 1, NULL, 1776268984, 1776268984, 1776270183, 1776270183, 1, 1, 1, "Product Category", 0, 0, NULL, 10, 0, NULL),
	(18, "egypt", NULL, 1, NULL, 1776211200, 1776270956, 1776270956, NULL, 0, 1, 1, "Ask Quote Country", 0, 0, NULL, 10, 0, NULL);

/*!40000 ALTER TABLE `dropdown_list` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table dropdown_list_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dropdown_list_lang`;

CREATE TABLE `dropdown_list_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `second_title` text,
  `image` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_lang_post_id` (`parent_id`) USING BTREE,
  KEY `page_lang_language` (`language`) USING BTREE,
  CONSTRAINT `dropdown_list_lang_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `dropdown_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `dropdown_list_lang` WRITE;
/*!40000 ALTER TABLE `dropdown_list_lang` DISABLE KEYS */;

INSERT INTO `dropdown_list_lang` (`id`, `parent_id`, `language`, `title`, `second_title`, `image`, `video_link`, `content`) VALUES
	(1, 1, "en", "Main Menu", NULL, NULL, NULL, NULL),
	(2, 2, "en", "Footer Menu", NULL, NULL, NULL, NULL),
	(3, 3, "en", "social-media-links", NULL, NULL, NULL, NULL),
	(4, 4, "en", "Other", NULL, NULL, NULL, NULL),
	(5, 5, "en", "Industries", NULL, NULL, NULL, NULL),
	(6, 6, "en", "Logistics", NULL, NULL, NULL, NULL),
	(7, 7, "en", "Materials", NULL, NULL, NULL, NULL),
	(8, 8, "en", "Sustainability", NULL, NULL, NULL, NULL),
	(9, 9, "en", "Security", NULL, NULL, NULL, NULL),
	(10, 10, "en", "Prepress", NULL, NULL, NULL, NULL),
	(11, 11, "en", "Products", NULL, NULL, NULL, NULL),
	(12, 12, "en", "Self-Adhesive", NULL, NULL, NULL, NULL),
	(13, 13, "en", "Barcode", NULL, NULL, NULL, NULL),
	(14, 14, "en", "Tamper Proof ", NULL, NULL, NULL, NULL),
	(15, 15, "en", "Sleeves", NULL, NULL, NULL, NULL),
	(16, 16, "en", "Stretch Sleeves", NULL, NULL, NULL, NULL),
	(17, 17, "en", "In-Mold Labels", NULL, NULL, NULL, NULL),
	(18, 18, "en", "Egypt", NULL, NULL, NULL, NULL);

/*!40000 ALTER TABLE `dropdown_list_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table exports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exports`;

CREATE TABLE `exports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exporter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int unsigned NOT NULL DEFAULT '0',
  `total_rows` int unsigned NOT NULL,
  `successful_rows` int unsigned NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exports_user_id_foreign` (`user_id`),
  CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `exports` WRITE;
/*!40000 ALTER TABLE `exports` DISABLE KEYS */;

INSERT INTO `exports` (`id`, `completed_at`, `file_disk`, `file_name`, `exporter`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, "2026-03-11 14:47:28", "local", "export-1-contact-us-webforms", "App\\Filament\\Resources\\ContactUsWebform\\Exports\\Exporter", 4, 4, 4, 1, "2026-03-11 14:47:28", "2026-03-11 14:47:28"),
	(2, "2026-03-11 14:49:50", "local", "export-2-news", "App\\Filament\\Resources\\News\\Exports\\Exporter", 14, 14, 14, 1, "2026-03-11 14:49:50", "2026-03-11 14:49:50"),
	(3, "2026-04-15 16:46:29", "local", "export-3-ask-quote-webforms", "App\\Filament\\Resources\\AskQuoteWebform\\Exports\\Exporter", 1, 1, 1, 1, "2026-04-15 16:46:29", "2026-04-15 16:46:29");

/*!40000 ALTER TABLE `exports` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table failed_import_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_import_rows`;

CREATE TABLE `failed_import_rows` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json NOT NULL,
  `import_id` bigint unsigned NOT NULL,
  `validation_error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `failed_import_rows_import_id_foreign` (`import_id`),
  CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table header_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `header_image`;

CREATE TABLE `header_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model_id` bigint unsigned DEFAULT NULL,
  `model_type` varchar(255) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `revision` bigint DEFAULT '0',
  `changed` tinyint DEFAULT '0',
  `reject_note` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_slug` (`path`) USING BTREE,
  KEY `header_image_model_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table header_image_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `header_image_lang`;

CREATE TABLE `header_image_lang` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint unsigned DEFAULT NULL,
  `header_image_title_color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image_id` bigint unsigned DEFAULT NULL,
  `header_image_brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `header_image_lang_language_index` (`language`),
  KEY `header_image_lang_parent_id_foreign` (`parent_id`),
  CONSTRAINT `header_image_lang_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `header_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table imports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `imports`;

CREATE TABLE `imports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int unsigned NOT NULL DEFAULT '0',
  `total_rows` int unsigned NOT NULL,
  `successful_rows` int unsigned NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_user_id_foreign` (`user_id`),
  CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table job_batches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
	("a14678b4-45ed-4fa2-a992-a0263029fe8c", "", 2, 0, 0, "[]", "a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5962:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:56:\"App\\Filament\\Resources\\ContactUsWebform\\Exports\\Exporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:56:\"App\\Filament\\Resources\\ContactUsWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:47:28\";s:10:\"created_at\";s:19:\"2026-03-11 14:47:28\";s:2:\"id\";i:1;s:9:\"file_name\";s:28:\"export-1-contact-us-webforms\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:56:\"App\\Filament\\Resources\\ContactUsWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:47:28\";s:10:\"created_at\";s:19:\"2026-03-11 14:47:28\";s:2:\"id\";i:1;s:9:\"file_name\";s:28:\"export-1-contact-us-webforms\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:28:\"export-1-contact-us-webforms\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"email\";s:5:\"phone\";s:5:\"phone\";s:7:\"company\";s:7:\"Company\";s:13:\"subject.title\";s:7:\"Subject\";s:7:\"message\";s:7:\"message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"email\";s:5:\"phone\";s:5:\"phone\";s:7:\"company\";s:7:\"Company\";s:13:\"subject.title\";s:7:\"Subject\";s:7:\"message\";s:7:\"message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2632:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:56:\"App\\Filament\\Resources\\ContactUsWebform\\Exports\\Exporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:56:\"App\\Filament\\Resources\\ContactUsWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:47:28\";s:10:\"created_at\";s:19:\"2026-03-11 14:47:28\";s:2:\"id\";i:1;s:9:\"file_name\";s:28:\"export-1-contact-us-webforms\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:56:\"App\\Filament\\Resources\\ContactUsWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:47:28\";s:10:\"created_at\";s:19:\"2026-03-11 14:47:28\";s:2:\"id\";i:1;s:9:\"file_name\";s:28:\"export-1-contact-us-webforms\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:28:\"export-1-contact-us-webforms\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"email\";s:5:\"phone\";s:5:\"phone\";s:7:\"company\";s:7:\"Company\";s:13:\"subject.title\";s:7:\"Subject\";s:7:\"message\";s:7:\"message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"email\";s:5:\"phone\";s:5:\"phone\";s:7:\"company\";s:7:\"Company\";s:13:\"subject.title\";s:7:\"Subject\";s:7:\"message\";s:7:\"message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000086c0000000000000000\";}\";s:4:\"hash\";s:44:\"wFFNTNCFmcSKdDKluiyZ1DvRWFnKNNEAUl6u4fQVq4A=\";}}}}", NULL, 1773240448, 1773240448),
	("a146798d-0d3b-438d-92c8-2c4836c405de", "", 2, 0, 0, "[]", "a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6312:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:44:\"App\\Filament\\Resources\\News\\Exports\\Exporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Resources\\News\\Exports\\Exporter\";s:10:\"total_rows\";i:14;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:49:50\";s:10:\"created_at\";s:19:\"2026-03-11 14:49:50\";s:2:\"id\";i:2;s:9:\"file_name\";s:13:\"export-2-news\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Resources\\News\\Exports\\Exporter\";s:10:\"total_rows\";i:14;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:49:50\";s:10:\"created_at\";s:19:\"2026-03-11 14:49:50\";s:2:\"id\";i:2;s:9:\"file_name\";s:13:\"export-2-news\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:13:\"export-2-news\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:4:\"slug\";s:4:\"Slug\";s:8:\"title:en\";s:10:\"Title (EN)\";s:8:\"title:ar\";s:10:\"Title (AR)\";s:8:\"brief:en\";s:10:\"Brief (EN)\";s:8:\"brief:ar\";s:10:\"Brief (AR)\";s:14:\"category.title\";s:8:\"Category\";s:6:\"status\";s:6:\"Status\";s:12:\"weight_order\";s:12:\"Weight order\";s:12:\"published_at\";s:12:\"Published at\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:2;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:4:\"slug\";s:4:\"Slug\";s:8:\"title:en\";s:10:\"Title (EN)\";s:8:\"title:ar\";s:10:\"Title (AR)\";s:8:\"brief:en\";s:10:\"Brief (EN)\";s:8:\"brief:ar\";s:10:\"Brief (AR)\";s:14:\"category.title\";s:8:\"Category\";s:6:\"status\";s:6:\"Status\";s:12:\"weight_order\";s:12:\"Weight order\";s:12:\"published_at\";s:12:\"Published at\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2807:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:44:\"App\\Filament\\Resources\\News\\Exports\\Exporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Resources\\News\\Exports\\Exporter\";s:10:\"total_rows\";i:14;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:49:50\";s:10:\"created_at\";s:19:\"2026-03-11 14:49:50\";s:2:\"id\";i:2;s:9:\"file_name\";s:13:\"export-2-news\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Resources\\News\\Exports\\Exporter\";s:10:\"total_rows\";i:14;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-03-11 14:49:50\";s:10:\"created_at\";s:19:\"2026-03-11 14:49:50\";s:2:\"id\";i:2;s:9:\"file_name\";s:13:\"export-2-news\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:13:\"export-2-news\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:4:\"slug\";s:4:\"Slug\";s:8:\"title:en\";s:10:\"Title (EN)\";s:8:\"title:ar\";s:10:\"Title (AR)\";s:8:\"brief:en\";s:10:\"Brief (EN)\";s:8:\"brief:ar\";s:10:\"Brief (AR)\";s:14:\"category.title\";s:8:\"Category\";s:6:\"status\";s:6:\"Status\";s:12:\"weight_order\";s:12:\"Weight order\";s:12:\"published_at\";s:12:\"Published at\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:2;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:4:\"slug\";s:4:\"Slug\";s:8:\"title:en\";s:10:\"Title (EN)\";s:8:\"title:ar\";s:10:\"Title (AR)\";s:8:\"brief:en\";s:10:\"Brief (EN)\";s:8:\"brief:ar\";s:10:\"Brief (AR)\";s:14:\"category.title\";s:8:\"Category\";s:6:\"status\";s:6:\"Status\";s:12:\"weight_order\";s:12:\"Weight order\";s:12:\"published_at\";s:12:\"Published at\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000f0b0000000000000000\";}\";s:4:\"hash\";s:44:\"BxUDufqMYX8bPn1IRqP9+CdDnybHwDhQt83/sqbs1rg=\";}}}}", NULL, 1773240590, 1773240590),
	("a18d0bb6-845e-4978-ace6-454fb80a0402", "", 2, 0, 0, "[]", "a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6314:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:55:\"App\\Filament\\Resources\\AskQuoteWebform\\Exports\\Exporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:55:\"App\\Filament\\Resources\\AskQuoteWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-04-15 16:46:29\";s:10:\"created_at\";s:19:\"2026-04-15 16:46:29\";s:2:\"id\";i:3;s:9:\"file_name\";s:27:\"export-3-ask-quote-webforms\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:55:\"App\\Filament\\Resources\\AskQuoteWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-04-15 16:46:29\";s:10:\"created_at\";s:19:\"2026-04-15 16:46:29\";s:2:\"id\";i:3;s:9:\"file_name\";s:27:\"export-3-ask-quote-webforms\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:27:\"export-3-ask-quote-webforms\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"Email\";s:7:\"company\";s:7:\"Company\";s:7:\"country\";s:7:\"Country\";s:5:\"phone\";s:5:\"Phone\";s:7:\"product\";s:15:\"Product Offered\";s:8:\"quantity\";s:8:\"Quantity\";s:11:\"file_upload\";s:4:\"File\";s:7:\"message\";s:7:\"Message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:3;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"Email\";s:7:\"company\";s:7:\"Company\";s:7:\"country\";s:7:\"Country\";s:5:\"phone\";s:5:\"Phone\";s:7:\"product\";s:15:\"Product Offered\";s:8:\"quantity\";s:8:\"Quantity\";s:11:\"file_upload\";s:4:\"File\";s:7:\"message\";s:7:\"Message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2808:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:55:\"App\\Filament\\Resources\\AskQuoteWebform\\Exports\\Exporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:55:\"App\\Filament\\Resources\\AskQuoteWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-04-15 16:46:29\";s:10:\"created_at\";s:19:\"2026-04-15 16:46:29\";s:2:\"id\";i:3;s:9:\"file_name\";s:27:\"export-3-ask-quote-webforms\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:55:\"App\\Filament\\Resources\\AskQuoteWebform\\Exports\\Exporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2026-04-15 16:46:29\";s:10:\"created_at\";s:19:\"2026-04-15 16:46:29\";s:2:\"id\";i:3;s:9:\"file_name\";s:27:\"export-3-ask-quote-webforms\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:27:\"export-3-ask-quote-webforms\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"Email\";s:7:\"company\";s:7:\"Company\";s:7:\"country\";s:7:\"Country\";s:5:\"phone\";s:5:\"Phone\";s:7:\"product\";s:15:\"Product Offered\";s:8:\"quantity\";s:8:\"Quantity\";s:11:\"file_upload\";s:4:\"File\";s:7:\"message\";s:7:\"Message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:3;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:10:\"first_name\";s:10:\"First Name\";s:9:\"last_name\";s:9:\"Last Name\";s:5:\"email\";s:5:\"Email\";s:7:\"company\";s:7:\"Company\";s:7:\"country\";s:7:\"Country\";s:5:\"phone\";s:5:\"Phone\";s:7:\"product\";s:15:\"Product Offered\";s:8:\"quantity\";s:8:\"Quantity\";s:11:\"file_upload\";s:4:\"File\";s:7:\"message\";s:7:\"Message\";s:10:\"created_at\";s:10:\"Created at\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000008e40000000000000000\";}\";s:4:\"hash\";s:44:\"iIUmYktLW8nTGeZ0BTwk4NA5fy3MSLoxy6I7SluzQdU=\";}}}}", NULL, 1776271589, 1776271589);

/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `directory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'media',
  `visibility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `size` int unsigned DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `ext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `exif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `curations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_created_by_foreign` (`created_by`),
  KEY `media_updated_by_foreign` (`updated_by`),
  CONSTRAINT `media_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `media_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media` (`id`, `disk`, `directory`, `visibility`, `name`, `path`, `width`, `height`, `size`, `type`, `ext`, `alt`, `title`, `description`, `caption`, `exif`, `curations`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(1, "public", "media/2026/04/15", "public", "5e862540-0dd2-4214-9c15-0b443390085d", "media/2026/04/15/5e862540-0dd2-4214-9c15-0b443390085d.png", 1080, 285, 112957, "image/png", "png", NULL, "logo33", NULL, NULL, NULL, NULL, "2026-04-15 10:53:25", 1, "2026-04-15 10:53:25", 1),
	(2, "public", "media/about-us", "public", "about-us-header", "media/about-us/banner1.jpg", NULL, NULL, 178140, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 12:45:45", 1, "2026-04-15 12:45:45", 1),
	(3, "public", "media/about-us", "public", "about-us-who-we-are", "media/about-us/banner.jpg", NULL, NULL, 124079, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 12:45:45", 1, "2026-04-15 12:45:45", 1),
	(7, "public", "media/blog", "public", "blog-index-banner", "media/blog/banner.jpg", NULL, NULL, 124079, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 15:10:13", 1, "2026-04-15 15:10:13", 1),
	(8, "public", "media/blog", "public", "blog-food-beverage-labels", "media/blog/banner1.jpg", NULL, NULL, 178140, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 15:10:13", 1, "2026-04-15 15:10:13", 1),
	(9, "public", "media/2026/04/15", "public", "9b9f7917-e5fb-45f5-9b8c-918bc7c76829", "media/2026/04/15/9b9f7917-e5fb-45f5-9b8c-918bc7c76829.", 1920, 1280, 730860, "image/jpeg", "", NULL, "photo-1586528116311-ad8dd3c8310d", NULL, NULL, "{\"FileName\":\"1Dqw0YSAPTDvFX7Q9IKsDzxDB5p8aT-metacGhvdG8tMTU4NjUyODExNjMxMS1hZDhkZDNjODMxMGQ=-.\",\"FileDateTime\":1776265959,\"FileSize\":730860,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"1920\\\" height=\\\"1280\\\"\",\"Height\":1280,\"Width\":1920,\"IsColor\":1}}", NULL, "2026-04-15 15:12:42", 1, "2026-04-15 15:12:42", 1),
	(10, "public", "media/products", "public", "products-hero", "media/products/banner.jpg", NULL, NULL, 124079, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(11, "public", "media/products", "public", "167101094915040", "media/products/167101094915040.jpg", NULL, NULL, 822715, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(12, "public", "media/products", "public", "16710109704212", "media/products/16710109704212.jpg", NULL, NULL, 747671, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(13, "public", "media/products", "public", "167101099231395", "media/products/167101099231395.jpg", NULL, NULL, 706343, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(14, "public", "media/products", "public", "167101104424263", "media/products/167101104424263.jpg", NULL, NULL, 675362, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(15, "public", "media/products", "public", "16710110633883", "media/products/16710110633883.jpg", NULL, NULL, 623905, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(16, "public", "media/products", "public", "167101108126559", "media/products/167101108126559.jpg", NULL, NULL, 677065, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(17, "public", "media/products", "public", "banner1", "media/products/banner1.jpg", NULL, NULL, 178140, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(18, "public", "media/products", "public", "167101110424792", "media/products/167101110424792.jpg", NULL, NULL, 705810, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(19, "public", "media/products", "public", "167101114921698", "media/products/167101114921698.jpg", NULL, NULL, 669966, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(20, "public", "media/products", "public", "167101187438782", "media/products/167101187438782.jpg", NULL, NULL, 932442, "image/jpeg", "jpg", NULL, NULL, NULL, NULL, NULL, NULL, "2026-04-15 16:03:04", 1, "2026-04-15 16:03:04", 1),
	(21, "public", "media/2026/04/15", "public", "346aab73-5a1b-4779-9419-852e179ec985", "media/2026/04/15/346aab73-5a1b-4779-9419-852e179ec985.png", 871, 581, 174379, "image/png", "png", NULL, "premium_photo-1661382011487-cd3d6b1d9dff", NULL, NULL, NULL, NULL, "2026-04-15 16:27:38", 1, "2026-04-15 16:27:38", 1),
	(22, "public", "media/2026/04/15", "public", "45548a16-4814-479d-bcb6-0bdd5095600e", "media/2026/04/15/45548a16-4814-479d-bcb6-0bdd5095600e.jpeg", 1920, 1440, 686555, "image/jpeg", "jpeg", NULL, "photo-1557804506-669a67965ba0", NULL, NULL, "{\"FileName\":\"yGKkiTJoTJvc4tBWV60JB0w9lRSBbI-metacGhvdG8tMTU1NzgwNDUwNi02NjlhNjc5NjViYTAuanBlZw==-.jpeg\",\"FileDateTime\":1776272491,\"FileSize\":686555,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"1920\\\" height=\\\"1440\\\"\",\"Height\":1440,\"Width\":1920,\"IsColor\":1}}", NULL, "2026-04-15 17:01:34", 1, "2026-04-15 17:01:34", 1),
	(24, "public", "media", "public", "50b54480-9065-4524-8628-07f08c08190f", "media/50b54480-9065-4524-8628-07f08c08190f.mp4", NULL, NULL, 266387, "video/mp4", "mp4", NULL, "WhatsApp Video 2026-04-15 at 7.27.52 PM", NULL, NULL, NULL, NULL, "2026-04-15 17:29:08", 1, "2026-04-15 17:29:08", 1);

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table media_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_lang`;

CREATE TABLE `media_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `media_id` int DEFAULT NULL,
  `language` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `media_lang_language` (`language`) USING BTREE,
  KEY `fk_media_lang` (`media_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_slug` varchar(64) NOT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `revision` bigint DEFAULT '0',
  `changed` tinyint DEFAULT '0',
  `reject_note` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_menu_created_by` (`created_by`) USING BTREE,
  KEY `fk_menu_updated_by` (`updated_by`) USING BTREE,
  KEY `menu_status_index` (`status`),
  KEY `menu_category_slug_foreign` (`category_slug`),
  CONSTRAINT `fk_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `menu_category_slug_foreign` FOREIGN KEY (`category_slug`) REFERENCES `dropdown_list` (`slug`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;

INSERT INTO `menu` (`id`, `category_slug`, `created_at`, `updated_at`, `deleted_at`, `published_at`, `revision`, `changed`, `reject_note`, `created_by`, `updated_by`, `weight_order`, `status`) VALUES
	(11, "main-menu", 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 10, 1),
	(12, "footer-menu", 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 10, 1);

/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table menu_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_lang`;

CREATE TABLE `menu_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `menu_lang_language` (`language`) USING BTREE,
  KEY `menu_lang_parent_id_foreign` (`parent_id`),
  CONSTRAINT `menu_lang_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `menu_lang` WRITE;
/*!40000 ALTER TABLE `menu_lang` DISABLE KEYS */;

INSERT INTO `menu_lang` (`id`, `parent_id`, `language`, `title`) VALUES
	(11, 11, "en", "Main Menu"),
	(12, 12, "en", "Footer Menu");

/*!40000 ALTER TABLE `menu_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table menu_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_link`;

CREATE TABLE `menu_link` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned DEFAULT NULL,
  `self_parent_id` bigint DEFAULT '-1',
  `image` varchar(255) DEFAULT NULL,
  `custom_color_class` varchar(255) NOT NULL DEFAULT '',
  `admin_icon` varchar(24) DEFAULT NULL,
  `alwaysVisible` int NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL,
  `additional_attributes` varchar(255) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `revision` bigint DEFAULT '0',
  `changed` tinyint DEFAULT '0',
  `reject_note` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_menu_link_created_by` (`created_by`) USING BTREE,
  KEY `fk_menu_link_updated_by` (`updated_by`) USING BTREE,
  KEY `menu_link_status_index` (`status`),
  KEY `menu_link_menu_id_foreign` (`menu_id`),
  CONSTRAINT `fk_menu_link_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_link_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `menu_link_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `menu_link` WRITE;
/*!40000 ALTER TABLE `menu_link` DISABLE KEYS */;

INSERT INTO `menu_link` (`id`, `menu_id`, `self_parent_id`, `image`, `custom_color_class`, `admin_icon`, `alwaysVisible`, `order`, `additional_attributes`, `created_at`, `updated_at`, `deleted_at`, `published_at`, `revision`, `changed`, `reject_note`, `created_by`, `updated_by`, `weight_order`, `status`) VALUES
	(121, 11, -1, NULL, "", NULL, 0, 1, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 1, 1),
	(122, 11, -1, NULL, "", NULL, 0, 2, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 2, 1),
	(123, 11, 122, NULL, "", NULL, 0, 1, NULL, 1776252208, 1776271782, NULL, 1776211200, 1, 0, NULL, 1, 1, 1, 1),
	(124, 11, 122, NULL, "", NULL, 0, 2, NULL, 1776252208, 1776271795, NULL, 1776211200, 1, 0, NULL, 1, 1, 2, 1),
	(125, 11, 122, NULL, "", NULL, 0, 3, NULL, 1776252208, 1776271806, NULL, 1776211200, 1, 0, NULL, 1, 1, 3, 1),
	(126, 11, 122, NULL, "", NULL, 0, 4, NULL, 1776252208, 1776271817, NULL, 1776211200, 1, 0, NULL, 1, 1, 4, 1),
	(127, 11, 122, NULL, "", NULL, 0, 5, NULL, 1776252208, 1776271834, NULL, 1776211200, 1, 0, NULL, 1, 1, 5, 1),
	(128, 11, 122, NULL, "", NULL, 0, 6, NULL, 1776252208, 1776271844, NULL, 1776211200, 1, 0, NULL, 1, 1, 6, 1),
	(129, 11, -1, NULL, "", NULL, 0, 3, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 3, 1),
	(130, 11, -1, NULL, "", NULL, 0, 4, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 4, 1),
	(131, 11, -1, NULL, "", NULL, 0, 5, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 5, 1),
	(132, 11, -1, NULL, "nav-cta", NULL, 0, 6, NULL, 1776252208, 1776254181, NULL, 1776211200, 1, 0, NULL, 1, 1, 6, 1),
	(133, 12, -1, NULL, "", NULL, 0, 1, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 1, 1),
	(134, 12, 133, NULL, "", NULL, 0, 1, NULL, 1776252208, 1776271923, NULL, 1776211200, 1, 0, NULL, 1, 1, 1, 1),
	(135, 12, 133, NULL, "", NULL, 0, 2, NULL, 1776252208, 1776271931, NULL, 1776211200, 1, 0, NULL, 1, 1, 2, 1),
	(136, 12, 133, NULL, "", NULL, 0, 3, NULL, 1776252208, 1776271942, NULL, 1776211200, 1, 0, NULL, 1, 1, 3, 1),
	(137, 12, 133, NULL, "", NULL, 0, 4, NULL, 1776252208, 1776271952, NULL, 1776211200, 1, 0, NULL, 1, 1, 4, 1),
	(138, 12, 133, NULL, "", NULL, 0, 5, NULL, 1776252208, 1776271960, NULL, 1776211200, 1, 0, NULL, 1, 1, 5, 1),
	(139, 12, 133, NULL, "", NULL, 0, 6, NULL, 1776252208, 1776271970, NULL, 1776211200, 1, 0, NULL, 1, 1, 6, 1),
	(140, 12, -1, NULL, "", NULL, 0, 2, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 2, 1),
	(141, 12, 140, NULL, "", NULL, 0, 1, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 1, 1),
	(142, 12, 140, NULL, "", NULL, 0, 2, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 2, 1),
	(143, 12, 140, NULL, "", NULL, 0, 3, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 3, 1),
	(144, 12, 140, NULL, "", NULL, 0, 4, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 4, 1),
	(145, 12, 140, NULL, "", NULL, 0, 5, NULL, 1776252208, 1776252208, NULL, 1776252208, 1, 0, NULL, 1, 1, 5, 1);

/*!40000 ALTER TABLE `menu_link` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table menu_link_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_link_lang`;

CREATE TABLE `menu_link_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `link_2` varchar(255) DEFAULT NULL,
  `brief` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `menu_link_lang_language` (`language`) USING BTREE,
  KEY `menu_link_lang_parent_id_foreign` (`parent_id`),
  CONSTRAINT `menu_link_lang_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_link` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `menu_link_lang` WRITE;
/*!40000 ALTER TABLE `menu_link_lang` DISABLE KEYS */;

INSERT INTO `menu_link_lang` (`id`, `parent_id`, `language`, `title`, `link`, `link_2`, `brief`) VALUES
	(132, 121, "en", "Home", "/", NULL, NULL),
	(133, 122, "en", "Products", "/products", NULL, NULL),
	(134, 123, "en", "Self-Adhesive Labels", "/products/self-adhesive-labels", NULL, NULL),
	(135, 124, "en", "Barcode Labels", "/products/barcode-labels", NULL, NULL),
	(136, 125, "en", "Tamper Proof Labels", "/products/tamper-proof-labels", NULL, NULL),
	(137, 126, "en", "Shrink Sleeves", "/products/shrink-sleeves", NULL, NULL),
	(138, 127, "en", "Stretch Sleeves", "/products/stretch-sleeves", NULL, NULL),
	(139, 128, "en", "In-Mold Labels", "/products/in-mold-labels", NULL, NULL),
	(140, 129, "en", "Blog", "/blog", NULL, NULL),
	(141, 130, "en", "About Us", "/about", NULL, NULL),
	(142, 131, "en", "Contact", "/contact", NULL, NULL),
	(143, 132, "en", "Download Catalogue", "#catalogue", NULL, NULL),
	(144, 133, "en", "Products", "/products", NULL, NULL),
	(145, 134, "en", "Self-Adhesive Labels", "/products/self-adhesive-labels", NULL, NULL),
	(146, 135, "en", "Barcode Labels", "/products/barcode-labels", NULL, NULL),
	(147, 136, "en", "Tamper Proof Labels", "/products/tamper-proof-labels", NULL, NULL),
	(148, 137, "en", "Shrink Sleeves", "/products/shrink-sleeves", NULL, NULL),
	(149, 138, "en", "Stretch Sleeves", "/products/stretch-sleeves", NULL, NULL),
	(150, 139, "en", "In-Mold Labels", "/products/in-mold-labels", NULL, NULL),
	(151, 140, "en", "Company", "/about", NULL, NULL),
	(152, 141, "en", "About Us", "/about", NULL, NULL),
	(153, 142, "en", "Our History", "/about#history", NULL, NULL),
	(154, 143, "en", "Testimonials", "/about#testimonials", NULL, NULL),
	(155, 144, "en", "Blog", "/blog", NULL, NULL),
	(156, 145, "en", "Terms & Conditions", "/about#terms", NULL, NULL);

/*!40000 ALTER TABLE `menu_link_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `message` text,
  `immutable` int DEFAULT '0',
  `deleted_at` int DEFAULT NULL,
  `created_at` bigint unsigned NOT NULL,
  `updated_at` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `message_source_category_id_foreign` (`category_id`),
  CONSTRAINT `message_source_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `message_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table message_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_category`;

CREATE TABLE `message_category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` bigint unsigned NOT NULL,
  `updated_at` bigint unsigned NOT NULL,
  `deleted_at` int DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_category_title_unique` (`title`),
  KEY `message_category_created_by_index` (`created_by`),
  KEY `message_category_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `message_category` WRITE;
/*!40000 ALTER TABLE `message_category` DISABLE KEYS */;

INSERT INTO `message_category` (`id`, `title`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
	(1, "site", 1, 1750755082, 1758449467, NULL, 1, 1),
	(3, "admin", 1, 1772998348, 1772998348, NULL, 1, 1);

/*!40000 ALTER TABLE `message_category` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table message_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_lang`;

CREATE TABLE `message_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `language` varchar(16) NOT NULL,
  `translation_value` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `message_index` (`language`) USING BTREE,
  KEY `message_lang_parent_id_foreign` (`parent_id`),
  CONSTRAINT `message_lang_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `message` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, "2019_12_14_000001_create_personal_access_tokens_table", 1),
	(2, "2026_04_15_134640_add_product_to_contact_us_webform_table", 2),
	(3, "2026_04_15_160000_create_blog_table", 3),
	(4, "2026_04_15_160010_create_blog_lang_table", 3),
	(5, "2026_04_15_170000_create_product_table", 4),
	(6, "2026_04_15_170010_create_product_lang_table", 4),
	(7, "2026_04_15_180000_create_ask_quote_webform_table", 5),
	(8, "2026_04_15_181000_drop_filter_group_from_product_table", 6),
	(9, "2026_04_15_200000_add_json_items_to_bms_lang_table", 7);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table model_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table model_has_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, "App\\Models\\User", 91);

/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table notification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `view` tinyint(1) DEFAULT '0',
  `patient_id` int NOT NULL,
  `facility_id` varchar(255) NOT NULL,
  `messageType` varchar(255) NOT NULL,
  `message_en` text NOT NULL,
  `message_ar` text NOT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=133605 DEFAULT CHARSET=utf8mb3;





# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table otp_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `otp_codes`;

CREATE TABLE `otp_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `is_campaign` tinyint(1) DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `revision` int NOT NULL DEFAULT '1',
  `changed` tinyint NOT NULL DEFAULT '0',
  `reject_note` text COLLATE utf8mb4_unicode_ci,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `weight_order` tinyint NOT NULL DEFAULT '10',
  `views` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_slug_index` (`slug`),
  KEY `product_status_index` (`status`),
  KEY `product_published_at_index` (`published_at`),
  KEY `product_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;

INSERT INTO `product` (`id`, `category_id`, `sku`, `slug`, `status`, `is_campaign`, `published_at`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `revision`, `changed`, `reject_note`, `view`, `layout`, `weight_order`, `views`) VALUES
	(1, 12, "APL-SAL-001", "self-adhesive-labels", 1, 1, 1775779200, 1776268984, 1776346083, NULL, 1, 1, 1, 0, NULL, "page", "main", 10, 21),
	(2, 13, "APL-BCL-002", "barcode-labels", 1, 1, 1775865600, 1776268984, 1776345556, NULL, 1, 1, 1, 0, NULL, "page", "main", 20, 11),
	(3, 14, "APL-TPL-003", "tamper-proof-labels", 1, 1, 1775952000, 1776268984, 1776345598, NULL, 1, 1, 1, 0, NULL, "page", "main", 30, 10),
	(4, 15, "APL-SSL-004", "shrink-sleeves", 1, 1, 1776038400, 1776268984, 1776275712, NULL, 1, 1, 1, 0, NULL, "page", "main", 40, 6),
	(5, 15, "APL-STL-005", "stretch-sleeves", 1, 1, 1776124800, 1776268984, 1776345560, NULL, 1, 1, 1, 0, NULL, "page", "main", 50, 8),
	(6, 15, "APL-IML-006", "in-mold-labels", 1, 1, 1776211200, 1776268984, 1776275732, NULL, 1, 1, 1, 0, NULL, "page", "main", 60, 8);

/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table product_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_lang`;

CREATE TABLE `product_lang` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `language` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `hero_title` text COLLATE utf8mb4_unicode_ci,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `image_id` bigint unsigned DEFAULT NULL,
  `gallery_items` json DEFAULT NULL,
  `description_sections` json DEFAULT NULL,
  `client_logos` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_lang_product_id_language_unique` (`product_id`,`language`),
  KEY `product_lang_language_index` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product_lang` WRITE;
/*!40000 ALTER TABLE `product_lang` DISABLE KEYS */;

INSERT INTO `product_lang` (`id`, `product_id`, `language`, `title`, `hero_title`, `brief`, `image_id`, `gallery_items`, `description_sections`, `client_logos`) VALUES
	(1, 1, "en", "Self-Adhesive Labels", "Premium Self-Adhesive Labels", "Custom labels available in glossy, matte, clear, metallic, and aluminum finishes", 11, "[{\"alt\":\"Self-Adhesive Labels\",\"image_id\":11,\"image_url\":null},{\"alt\":\"Self-Adhesive Labels\",\"image_id\":12,\"image_url\":null},{\"alt\":\"Self-Adhesive Labels\",\"image_id\":13,\"image_url\":null},{\"alt\":\"Self-Adhesive Labels\",\"image_id\":14,\"image_url\":null},{\"alt\":\"Self-Adhesive Labels\",\"image_id\":15,\"image_url\":null},{\"alt\":\"Self-Adhesive Labels\",\"image_id\":16,\"image_url\":null}]", "[{\"type\":\"split\",\"content\":\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\n\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\",\"heading\":\"Self-Adhesive Labels: Features and Uses\",\"image_id\":18,\"image_url\":\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":\"right\"},{\"type\":\"split\",\"content\":\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\n\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\",\"heading\":\"Self-Adhesive Labels in Production\",\"image_id\":20,\"image_url\":\"https://images.unsplash.com/photo-1552664730-d307ca884978?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":\"left\"},{\"type\":\"full\",\"content\":\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\n\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\",\"heading\":\"Adhesives, Materials and Printing Technologies\",\"image_id\":17,\"image_url\":null,\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":null},{\"type\":\"grid\",\"content\":\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\",\"heading\":\"Multiple Solutions for Your Needs\",\"image_id\":null,\"image_url\":null,\"image_1_id\":11,\"image_2_id\":12,\"image_3_id\":14,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":null}]", "[{\"url\":null,\"icon\":\"fas fa-building\",\"label\":\"Food Corp\"},{\"url\":null,\"icon\":\"fas fa-flask\",\"label\":\"PharmaCo\"},{\"url\":null,\"icon\":\"fas fa-wine-glass-alt\",\"label\":\"BevGroup\"},{\"url\":null,\"icon\":\"fas fa-spa\",\"label\":\"BeautyLine\"},{\"url\":null,\"icon\":\"fas fa-industry\",\"label\":\"IndusTech\"},{\"url\":null,\"icon\":\"fas fa-leaf\",\"label\":\"NatureCare\"},{\"url\":null,\"icon\":\"fas fa-pump-soap\",\"label\":\"CleanPro\"},{\"url\":null,\"icon\":\"fas fa-box\",\"label\":\"PackRight\"}]"),
	(2, 2, "en", "Barcode Labels", "Reliable Barcode Labels", "High-accuracy barcode labels designed for logistics, retail, and industrial traceability", 12, "[{\"alt\":\"Barcode Labels\",\"image_id\":12},{\"alt\":\"Barcode Labels\",\"image_id\":11},{\"alt\":\"Barcode Labels\",\"image_id\":18}]", "[{\"type\":\"split\",\"content\":\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\n\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\",\"heading\":\"Barcode Labels: Features and Uses\",\"image_id\":13,\"image_url\":\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":\"right\"},{\"type\":\"split\",\"content\":\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\n\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\",\"heading\":\"Barcode Labels in Production\",\"image_id\":16,\"image_url\":\"https://images.unsplash.com/photo-1552664730-d307ca884978?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":\"left\"},{\"type\":\"full\",\"content\":\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\n\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\",\"heading\":\"Adhesives, Materials and Printing Technologies\",\"image_id\":17,\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":null},{\"type\":\"grid\",\"content\":\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\",\"heading\":\"Multiple Solutions for Your Needs\",\"image_id\":null,\"image_1_id\":12,\"image_2_id\":18,\"image_3_id\":19,\"image_position\":null}]", "[{\"icon\":\"fas fa-building\",\"label\":\"Food Corp\"},{\"icon\":\"fas fa-flask\",\"label\":\"PharmaCo\"},{\"icon\":\"fas fa-spa\",\"label\":\"BeautyLine\"},{\"icon\":\"fas fa-wine-glass-alt\",\"label\":\"BevGroup\"},{\"icon\":\"fas fa-industry\",\"label\":\"IndusTech\"},{\"icon\":\"fas fa-leaf\",\"label\":\"NatureCare\"},{\"icon\":\"fas fa-pump-soap\",\"label\":\"CleanPro\"},{\"icon\":\"fas fa-box\",\"label\":\"PackRight\"}]"),
	(3, 3, "en", "Tamper Proof Labels", "Secure Tamper Proof Labels", "Tamper-evident label solutions that protect your brand and show interference instantly", 13, "[{\"alt\":\"Tamper Proof Labels\",\"image_id\":13},{\"alt\":\"Tamper Proof Labels\",\"image_id\":12},{\"alt\":\"Tamper Proof Labels\",\"image_id\":14}]", "[{\"type\":\"split\",\"content\":\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\n\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\",\"heading\":\"Tamper Proof Labels: Features and Uses\",\"image_id\":7,\"image_url\":\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":\"right\"},{\"type\":\"split\",\"content\":\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\n\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\",\"heading\":\"Tamper Proof Labels in Production\",\"image_id\":19,\"image_url\":\"https://images.unsplash.com/photo-1552664730-d307ca884978?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":\"left\"},{\"type\":\"full\",\"content\":\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\n\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\",\"heading\":\"Adhesives, Materials and Printing Technologies\",\"image_id\":17,\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":null},{\"type\":\"grid\",\"content\":\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\",\"heading\":\"Multiple Solutions for Your Needs\",\"image_id\":null,\"image_1_id\":13,\"image_2_id\":11,\"image_3_id\":20,\"image_position\":null}]", "[{\"icon\":\"fas fa-building\",\"label\":\"Food Corp\"},{\"icon\":\"fas fa-flask\",\"label\":\"PharmaCo\"},{\"icon\":\"fas fa-spa\",\"label\":\"BeautyLine\"},{\"icon\":\"fas fa-wine-glass-alt\",\"label\":\"BevGroup\"},{\"icon\":\"fas fa-industry\",\"label\":\"IndusTech\"},{\"icon\":\"fas fa-leaf\",\"label\":\"NatureCare\"},{\"icon\":\"fas fa-pump-soap\",\"label\":\"CleanPro\"},{\"icon\":\"fas fa-box\",\"label\":\"PackRight\"}]"),
	(4, 4, "en", "Shrink Sleeves", "Custom Shrink Sleeves", "360 degree shrink sleeve branding for complex containers and standout shelf impact", 14, "[{\"alt\":\"Shrink Sleeves\",\"image_id\":14},{\"alt\":\"Shrink Sleeves\",\"image_id\":15},{\"alt\":\"Shrink Sleeves\",\"image_id\":16}]", "[{\"type\":\"split\",\"content\":\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\n\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\",\"heading\":\"Shrink Sleeves: Features and Uses\",\"image_id\":18,\"image_url\":\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":\"right\"},{\"type\":\"split\",\"content\":\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\n\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\",\"heading\":\"Shrink Sleeves in Production\",\"image_id\":7,\"image_url\":\"https://images.unsplash.com/photo-1552664730-d307ca884978?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":\"left\"},{\"type\":\"full\",\"content\":\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\n\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\",\"heading\":\"Adhesives, Materials and Printing Technologies\",\"image_id\":17,\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_position\":null},{\"type\":\"grid\",\"content\":\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\",\"heading\":\"Multiple Solutions for Your Needs\",\"image_id\":null,\"image_1_id\":14,\"image_2_id\":15,\"image_3_id\":16,\"image_position\":null}]", "[{\"icon\":\"fas fa-building\",\"label\":\"Food Corp\"},{\"icon\":\"fas fa-flask\",\"label\":\"PharmaCo\"},{\"icon\":\"fas fa-spa\",\"label\":\"BeautyLine\"},{\"icon\":\"fas fa-wine-glass-alt\",\"label\":\"BevGroup\"},{\"icon\":\"fas fa-industry\",\"label\":\"IndusTech\"},{\"icon\":\"fas fa-leaf\",\"label\":\"NatureCare\"},{\"icon\":\"fas fa-pump-soap\",\"label\":\"CleanPro\"},{\"icon\":\"fas fa-box\",\"label\":\"PackRight\"}]"),
	(5, 5, "en", "Stretch Sleeves", "Flexible Stretch Sleeves", "Adhesive-free stretch sleeve solutions for efficient full-body decoration and branding", 15, "[{\"alt\":\"Stretch Sleeves\",\"image_id\":15,\"image_url\":null},{\"alt\":\"Stretch Sleeves\",\"image_id\":14,\"image_url\":null},{\"alt\":\"Stretch Sleeves\",\"image_id\":16,\"image_url\":null}]", "[{\"type\":\"split\",\"content\":\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\n\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\",\"heading\":\"Stretch Sleeves: Features and Uses\",\"image_id\":7,\"image_url\":\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":\"right\"},{\"type\":\"split\",\"content\":\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\n\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\",\"heading\":\"Stretch Sleeves in Production\",\"image_id\":19,\"image_url\":\"https://images.unsplash.com/photo-1552664730-d307ca884978?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":\"left\"},{\"type\":\"full\",\"content\":\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\n\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\",\"heading\":\"Adhesives, Materials and Printing Technologies\",\"image_id\":17,\"image_url\":null,\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":null},{\"type\":\"grid\",\"content\":\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\",\"heading\":\"Multiple Solutions for Your Needs\",\"image_id\":null,\"image_url\":null,\"image_1_id\":15,\"image_2_id\":14,\"image_3_id\":18,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":null}]", "[{\"url\":null,\"icon\":\"fas fa-building\",\"label\":\"Food Corp\"},{\"url\":null,\"icon\":\"fas fa-flask\",\"label\":\"PharmaCo\"},{\"url\":null,\"icon\":\"fas fa-spa\",\"label\":\"BeautyLine\"},{\"url\":null,\"icon\":\"fas fa-wine-glass-alt\",\"label\":\"BevGroup\"},{\"url\":null,\"icon\":\"fas fa-industry\",\"label\":\"IndusTech\"},{\"url\":null,\"icon\":\"fas fa-leaf\",\"label\":\"NatureCare\"},{\"url\":null,\"icon\":\"fas fa-pump-soap\",\"label\":\"CleanPro\"},{\"url\":null,\"icon\":\"fas fa-box\",\"label\":\"PackRight\"}]"),
	(6, 6, "en", "In-Mold Labels", "Durable In-Mold Labels", "Integrated label decoration for molded packaging with lasting performance and visual impact", 16, "[{\"alt\":\"In-Mold Labels\",\"image_id\":16,\"image_url\":null},{\"alt\":\"In-Mold Labels\",\"image_id\":14,\"image_url\":null},{\"alt\":\"In-Mold Labels\",\"image_id\":19,\"image_url\":null}]", "[{\"type\":\"split\",\"content\":\"We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\\n\\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.\",\"heading\":\"In-Mold Labels: Features and Uses\",\"image_id\":18,\"image_url\":\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":\"right\"},{\"type\":\"split\",\"content\":\"Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\\n\\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.\",\"heading\":\"In-Mold Labels in Production\",\"image_id\":3,\"image_url\":\"https://images.unsplash.com/photo-1552664730-d307ca884978?w=600&q=80\",\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":\"left\"},{\"type\":\"full\",\"content\":\"Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\\n\\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.\",\"heading\":\"Adhesives, Materials and Printing Technologies\",\"image_id\":17,\"image_url\":null,\"image_1_id\":null,\"image_2_id\":null,\"image_3_id\":null,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":null},{\"type\":\"grid\",\"content\":\"We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.\",\"heading\":\"Multiple Solutions for Your Needs\",\"image_id\":null,\"image_url\":null,\"image_1_id\":16,\"image_2_id\":19,\"image_3_id\":18,\"image_1_url\":null,\"image_2_url\":null,\"image_3_url\":null,\"image_position\":null}]", "[{\"url\":null,\"icon\":\"fas fa-building\",\"label\":\"Food Corp\"},{\"url\":null,\"icon\":\"fas fa-flask\",\"label\":\"PharmaCo\"},{\"url\":null,\"icon\":\"fas fa-spa\",\"label\":\"BeautyLine\"},{\"url\":null,\"icon\":\"fas fa-wine-glass-alt\",\"label\":\"BevGroup\"},{\"url\":null,\"icon\":\"fas fa-industry\",\"label\":\"IndusTech\"},{\"url\":null,\"icon\":\"fas fa-leaf\",\"label\":\"NatureCare\"},{\"url\":null,\"icon\":\"fas fa-pump-soap\",\"label\":\"CleanPro\"},{\"url\":null,\"icon\":\"fas fa-box\",\"label\":\"PackRight\"}]");

/*!40000 ALTER TABLE `product_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table push_notification_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `push_notification_tbl`;

CREATE TABLE `push_notification_tbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `device_token` text,
  `device_os` varchar(45) DEFAULT NULL,
  `device_id` text,
  `facility_id` varchar(2) DEFAULT NULL,
  `lng` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25800 DEFAULT CHARSET=latin1;





# Dump of table rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model_id` smallint NOT NULL,
  `target_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `user_ip` varbinary(39) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `date` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rating_model_id_target_id` (`model_id`,`target_id`) USING BTREE,
  KEY `rating_user_id` (`user_id`) USING BTREE,
  KEY `rating_user_ip` (`user_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





# Dump of table reset_password
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reset_password`;

CREATE TABLE `reset_password` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

LOCK TABLES `reset_password` WRITE;
/*!40000 ALTER TABLE `reset_password` DISABLE KEYS */;

INSERT INTO `reset_password` (`id`, `phone`, `confirmation_token`, `code`, `created_at`, `updated_at`, `password`) VALUES
	(4, "0796910537", "2142_kRzW2HuIZUolfw2Ih9K7eEiPBrq6u8gc_1594905644", "2142", 1594905644, 1594905644, NULL),
	(5, "0796910537", "3341_rm8zBrofnrKByZYYHJpki9Dlgu_Xn_Sd_1594906659", "3341", 1594906659, 1594906659, NULL),
	(6, "0796910537", "2013_o8aMZwqNXnzP6Lz6JscY1b9FsWj8Wwjl_1594906692", "2013", 1594906692, 1594906692, NULL),
	(7, "0796910537", "7255_eD99GzmnLobyCMmXQ8Dkjnif7P950e84_1594906800", "7255", 1594906800, 1594906800, NULL),
	(8, "0796910537", "", "", 1594907099, 1594907117, NULL),
	(9, "0798699992", "", "", 1595144814, 1595144863, ""),
	(10, "0798699992", "2311_4vioQ2rUssEh3yeFdGzM-gVv2JRvxAcB_1595147198", "2311", 1595147198, 1595147198, NULL),
	(11, "0798699992", "8794_Iq6f1tfSU5PQ9dqqdbD5F2j-xvOIG5Ju_1595147346", "8794", 1595147346, 1595147346, NULL),
	(12, "0798699992", "7739_pJLqM7W4gG7AWNzmFM1NkefyPeID68jN_1595147533", "7739", 1595147533, 1595147533, NULL),
	(13, "0798699992", "6173_p2YISrfzf9eWuqX-r3GG-OvcGtw36d1Z_1595147613", "6173", 1595147613, 1595147613, NULL),
	(14, "0798699992", "1231_VDmWfgEDpq6b6jb2Xf3vePWQKSZhjOrj_1595165038", "1231", 1595165038, 1595165038, NULL),
	(15, "0798699992", "1231_pGALu2Ke0gGXdBtfDqFYUOBBmZul6GTE_1595166399", "1231", 1595166399, 1595166399, NULL),
	(16, "0798699992", "", "", 1595166604, 1595166634, ""),
	(17, "0798699992", "1231_I4Oh3Hh01QIHGup-5R1RghnsqEur5_Zt_1595168215", "1231", 1595168215, 1595168215, NULL),
	(18, "0798699992", "1231_gQr1kphyTP1Ic_IbxINLpxanfohBFbFa_1595168519", "1231", 1595168519, 1595168519, NULL),
	(19, "0798699992", "1231_iVSafhkxDX53z7Uy59m1okIbKgm_JmCj_1595168555", "1231", 1595168555, 1595168555, NULL),
	(20, "0545399831", "1231_5NFsKVkdNycVnNsqnBN3fVvTIKT04l24_1595259055", "1231", 1595259055, 1595259055, NULL),
	(21, "0550092090", "", "", 1595494523, 1595494576, ""),
	(22, "0550092090", "", "", 1595519285, 1595519862, ""),
	(23, "0550092090", "1231_AEuIu5EDyqMuDZTDdnac_t8CA4_YoTtY_1595523895", "1231", 1595523895, 1595523895, NULL),
	(24, "0550092090", "", "", 1595524045, 1595524069, ""),
	(25, "123", "", "", 1595524180, 1595524213, ""),
	(26, "123", "1231_TP6gjG-KlLjgQ8E3pIK_0be9NQppYCrt_1595524204", "1231", 1595524204, 1595524204, NULL),
	(27, "0798699992", "", "", 1595769784, 1595769808, ""),
	(28, "0550092090", "", "", 1595769843, 1595769870, ""),
	(29, "0791231231", "", "", 1595836061, 1595836086, ""),
	(30, "0546464964", "1231_HZGdfIfAANR7f4qLv9RiPku_mNIrZjB4_1596042887", "1231", 1596042887, 1596042887, NULL),
	(31, "0550092090", "1231_KVhwEGUmRSJwL--TuQA6oyjQHoQGaZAd_1596047178", "1231", 1596047178, 1596047178, NULL),
	(32, "0550092090", "1231_Agsyp_Tt4Bpdk5EAWVRamOCobUEDOg-g_1596390822", "1231", 1596390822, 1596390822, NULL),
	(33, "0550092090", "1231_n7qnr3n0sXensNrnyf-A_FCRUrF8r6W3_1596391087", "1231", 1596391087, 1596391087, NULL),
	(34, "1234", "1231_kMqCXD477eUwslaQbdw--Y9aniOras_7_1596535106", "1231", 1596535106, 1596535106, NULL),
	(35, "0546464964", "1231_8oCvM1kHaiGa2XNtrjLXEjfnvi0AyQ6g_1596976712", "1231", 1596976712, 1596976712, NULL),
	(36, "0593007435", "1231_OztAUCrmV_Yvn2fcc0ErwrF5kczgmM4h_1597127295", "1231", 1597127295, 1597127295, NULL),
	(37, "0541244316", "1231_K6X6CQBsftneopzl7E3KrILwl2OfVFqi_1597129247", "1231", 1597129247, 1597129247, NULL),
	(38, "0541244316", "1231_6KoDP-SvTnQICnEV_zMI0VQeOURtiOoe_1597129505", "1231", 1597129505, 1597129505, NULL);

/*!40000 ALTER TABLE `reset_password` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table role_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, "super_admin", "web", "2026-03-08 19:48:31", "2026-03-08 19:48:31");

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table seo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seo`;

CREATE TABLE `seo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model_id` bigint unsigned DEFAULT NULL,
  `model_type` varchar(255) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `robots` varchar(255) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `changed` tinyint(1) DEFAULT NULL,
  `reject_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `url` (`path`) USING BTREE,
  UNIQUE KEY `seo_url` (`path`) USING BTREE,
  KEY `seo_created_by` (`created_by`) USING BTREE,
  KEY `seo_author` (`created_by`) USING BTREE,
  KEY `fk_seo_updated_by` (`updated_by`) USING BTREE,
  KEY `seo_status_index` (`status`),
  KEY `seo_model_index` (`model_id`,`model_type`),
  CONSTRAINT `fk_seo_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_seo_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `seo` WRITE;
/*!40000 ALTER TABLE `seo` DISABLE KEYS */;

INSERT INTO `seo` (`id`, `model_id`, `model_type`, `path`, `status`, `robots`, `created_at`, `updated_at`, `deleted_at`, `published_at`, `created_by`, `updated_by`, `revision`, `changed`, `reject_note`) VALUES
	(1, 8, "App\\Filament\\Resources\\News\\Model\\News", "/news/tanzania-france-business-mission-and-forum", 1, NULL, 1773171785, 1773171785, NULL, 1773171785, 1, 1, NULL, NULL, NULL);

/*!40000 ALTER TABLE `seo` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table seo_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seo_lang`;

CREATE TABLE `seo_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `language` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `keywords` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `image_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-seo_lang-parent_id` (`parent_id`),
  KEY `idx-seo_lang-language` (`language`),
  CONSTRAINT `fk-seo_lang-parent_id` FOREIGN KEY (`parent_id`) REFERENCES `seo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

LOCK TABLES `seo_lang` WRITE;
/*!40000 ALTER TABLE `seo_lang` DISABLE KEYS */;

INSERT INTO `seo_lang` (`id`, `parent_id`, `language`, `title`, `description`, `author`, `keywords`, `image`, `image_id`) VALUES
	(1, 1, "en", "afas", "sad", "sad", NULL, NULL, NULL);

/*!40000 ALTER TABLE `seo_lang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` char(40) COLLATE utf8mb3_bin NOT NULL,
  `expire` int DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;





# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(262, "en.general.title", "Alpha Pack", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(263, "en.general.description", "Stickers & Labels", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(264, "en.general.keywords", "Alpha Pack Stickers & Labels", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(265, "en.general.seo_image", 1, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(266, "general.date_format", "F d, Y", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(267, "general.time_format", "g:i a", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(268, "general.time_zone", "Asia/Amman", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(269, "general.google_site_verification", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(270, "general.filament_id", "admin", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(271, "general.filament_path", "admin", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(272, "general.google_recaptcha_site_key", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(273, "general.google_recaptcha_secret", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(274, "general.smtp_host", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(275, "general.smtp_port", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(276, "general.smtp_encryption", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(277, "general.smtp_username", "admin@test.com", "2026-04-15 10:54:11", "2026-04-15 18:27:10"),
	(278, "general.smtp_password", "password123", "2026-04-15 10:54:11", "2026-04-15 18:27:10"),
	(279, "general.google_analytics_code", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(280, "general.google_tag_code", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(281, "general.meta_pixel_code", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(282, "general.clarity_code", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(283, "general.hotjar_code", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(284, "en.site.logo", 1, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(285, "en.site.icon", 1, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(286, "site.admin_panel_color", "#12a100", "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(287, "en.site.footer_logo", 1, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(288, "site.contact_us_email_list", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(289, "site.phone", "+1 234 567 89", "2026-04-15 10:54:11", "2026-04-15 11:34:41"),
	(290, "site.fax", NULL, "2026-04-15 10:54:11", "2026-04-15 10:54:11"),
	(291, "site.management_email", "info@alphapack.com", "2026-04-15 10:54:11", "2026-04-15 11:34:41"),
	(292, "en.site.location", "Alpha Pack HQ Business District", "2026-04-15 10:54:11", "2026-04-15 11:34:41"),
	(293, "site.location_url", "https://www.google.com/", "2026-04-15 10:54:11", "2026-04-15 11:34:41"),
	(294, "site.location_coordinate", "31.969812,35.902513", "2026-04-15 10:54:11", "2026-04-15 11:34:41"),
	(295, "site.business_hours", "Monday – Friday: 8:00 AM – 5:30 PM\nSaturday – Sunday: Closed", "2026-04-15 10:54:11", "2026-04-15 11:34:41"),
	(296, "en.site.catalogue_file", NULL, "2026-04-15 18:27:10", "2026-04-15 18:28:40");

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `without_otp` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` int DEFAULT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` smallint NOT NULL DEFAULT '10',
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `superadmin` int DEFAULT '0',
  `registration_ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bind_to_ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_confirmed` int DEFAULT '0',
  `confirmation_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `avatar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `first_name` varchar(124) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(124) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `birth_day` int DEFAULT NULL,
  `birth_month` int DEFAULT NULL,
  `birth_year` int DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `phone` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `skype` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `device_os` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tmp_password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `user_id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `password_reset_token` (`password_reset_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `username`, `auth_key`, `password`, `remember_token`, `without_otp`, `deleted_at`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `superadmin`, `registration_ip`, `bind_to_ip`, `email_confirmed`, `confirmation_token`, `avatar`, `first_name`, `last_name`, `birth_day`, `birth_month`, `birth_year`, `gender`, `phone`, `skype`, `info`, `device_id`, `device_token`, `device_os`, `code`, `tmp_password`, `user_id`) VALUES
	(1, "Syatem Admin", "admin", "", "$2y$12$fLM2mggBRd4eASxlcWTq.uV0VrsdZWcYVpu6Jb92wAXuIidyjdLvy", NULL, 0, NULL, NULL, "admin@test.com", 10, 0, 1706517416, 1, NULL, "", 0, NULL, NULL, "Syatem", "Admin", NULL, 1, NULL, 0, "797986466", "", "", NULL, NULL, NULL, "2123", "1213", NULL);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of views
# ------------------------------------------------------------

# Creating temporary tables to overcome VIEW dependency errors


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# Dump completed on 2026-04-19T16:03:28+02:00
