-- Adminer 4.7.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `wordpress` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wordpress`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wptests_commentmeta`;
CREATE TABLE `wptests_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wptests_comments`;
CREATE TABLE `wptests_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wptests_links`;
CREATE TABLE `wptests_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wptests_options`;
CREATE TABLE `wptests_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wptests_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4,	'siteurl',	'http://example.org',	'yes'),
(5,	'home',	'http://example.org',	'yes'),
(6,	'blogname',	'Test Blog',	'yes'),
(7,	'blogdescription',	'Just another WordPress site',	'yes'),
(8,	'users_can_register',	'0',	'yes'),
(9,	'admin_email',	'admin@example.org',	'yes'),
(10,	'start_of_week',	'1',	'yes'),
(11,	'use_balanceTags',	'0',	'yes'),
(12,	'use_smilies',	'1',	'yes'),
(13,	'require_name_email',	'1',	'yes'),
(14,	'comments_notify',	'1',	'yes'),
(15,	'posts_per_rss',	'10',	'yes'),
(16,	'rss_use_excerpt',	'0',	'yes'),
(17,	'mailserver_url',	'mail.example.com',	'yes'),
(18,	'mailserver_login',	'login@example.com',	'yes'),
(19,	'mailserver_pass',	'password',	'yes'),
(20,	'mailserver_port',	'110',	'yes'),
(21,	'default_category',	'1',	'yes'),
(22,	'default_comment_status',	'open',	'yes'),
(23,	'default_ping_status',	'open',	'yes'),
(24,	'default_pingback_flag',	'1',	'yes'),
(25,	'posts_per_page',	'10',	'yes'),
(26,	'date_format',	'F j, Y',	'yes'),
(27,	'time_format',	'g:i a',	'yes'),
(28,	'links_updated_date_format',	'F j, Y g:i a',	'yes'),
(29,	'comment_moderation',	'0',	'yes'),
(30,	'moderation_notify',	'1',	'yes'),
(31,	'rewrite_rules',	'',	'yes'),
(32,	'hack_file',	'0',	'yes'),
(33,	'blog_charset',	'UTF-8',	'yes'),
(34,	'moderation_keys',	'',	'no'),
(35,	'active_plugins',	'a:0:{}',	'yes'),
(36,	'category_base',	'',	'yes'),
(37,	'ping_sites',	'http://rpc.pingomatic.com/',	'yes'),
(38,	'comment_max_links',	'2',	'yes'),
(39,	'gmt_offset',	'0',	'yes'),
(40,	'default_email_category',	'1',	'yes'),
(41,	'recently_edited',	'',	'no'),
(42,	'template',	'default',	'yes'),
(43,	'stylesheet',	'default',	'yes'),
(44,	'comment_registration',	'0',	'yes'),
(45,	'html_type',	'text/html',	'yes'),
(46,	'use_trackback',	'0',	'yes'),
(47,	'default_role',	'subscriber',	'yes'),
(48,	'db_version',	'48121',	'yes'),
(49,	'uploads_use_yearmonth_folders',	'1',	'yes'),
(50,	'upload_path',	'wp-content/uploads',	'yes'),
(51,	'blog_public',	'1',	'yes'),
(52,	'default_link_category',	'2',	'yes'),
(53,	'show_on_front',	'posts',	'yes'),
(54,	'tag_base',	'',	'yes'),
(55,	'show_avatars',	'1',	'yes'),
(56,	'avatar_rating',	'G',	'yes'),
(57,	'upload_url_path',	'',	'yes'),
(58,	'thumbnail_size_w',	'150',	'yes'),
(59,	'thumbnail_size_h',	'150',	'yes'),
(60,	'thumbnail_crop',	'1',	'yes'),
(61,	'medium_size_w',	'300',	'yes'),
(62,	'medium_size_h',	'300',	'yes'),
(63,	'avatar_default',	'mystery',	'yes'),
(64,	'large_size_w',	'1024',	'yes'),
(65,	'large_size_h',	'1024',	'yes'),
(66,	'image_default_link_type',	'none',	'yes'),
(67,	'image_default_size',	'',	'yes'),
(68,	'image_default_align',	'',	'yes'),
(69,	'close_comments_for_old_posts',	'0',	'yes'),
(70,	'close_comments_days_old',	'14',	'yes'),
(71,	'thread_comments',	'1',	'yes'),
(72,	'thread_comments_depth',	'5',	'yes'),
(73,	'page_comments',	'0',	'yes'),
(74,	'comments_per_page',	'50',	'yes'),
(75,	'default_comments_page',	'newest',	'yes'),
(76,	'comment_order',	'asc',	'yes'),
(77,	'sticky_posts',	'a:9:{i:0;i:1227;i:1;i:1239;i:2;i:1233;i:3;i:1225;i:4;i:1237;i:5;i:1231;i:6;i:5027;i:7;i:5039;i:8;i:5033;}',	'yes'),
(78,	'widget_categories',	'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(79,	'widget_text',	'a:0:{}',	'yes'),
(80,	'widget_rss',	'a:0:{}',	'yes'),
(81,	'uninstall_plugins',	'a:0:{}',	'no'),
(82,	'timezone_string',	'',	'yes'),
(83,	'page_for_posts',	'0',	'yes'),
(84,	'page_on_front',	'0',	'yes'),
(85,	'default_post_format',	'0',	'yes'),
(86,	'link_manager_enabled',	'0',	'yes'),
(87,	'finished_splitting_shared_terms',	'1',	'yes'),
(88,	'site_icon',	'0',	'yes'),
(89,	'medium_large_size_w',	'768',	'yes'),
(90,	'medium_large_size_h',	'0',	'yes'),
(91,	'wp_page_for_privacy_policy',	'3',	'yes'),
(92,	'show_comments_cookies_opt_in',	'1',	'yes'),
(93,	'admin_email_lifespan',	'1609098245',	'yes'),
(94,	'blocklist_keys',	'',	'no'),
(95,	'comment_previously_approved',	'1',	'yes'),
(96,	'initial_db_version',	'48121',	'yes'),
(97,	'wptests_user_roles',	'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"uploader\";a:2:{s:4:\"name\";s:16:\"File upload role\";s:12:\"capabilities\";a:3:{s:12:\"upload_files\";b:1;s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',	'yes'),
(98,	'fresh_site',	'0',	'yes'),
(99,	'widget_search',	'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(100,	'widget_recent-posts',	'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(101,	'widget_recent-comments',	'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(102,	'widget_archives',	'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(103,	'widget_meta',	'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(104,	'sidebars_widgets',	'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',	'yes'),
(105,	'cron',	'a:24:{i:1593546249;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593546250;a:2:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1593546251;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1593546305;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1593632649;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1593634998;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"d49a3459eab59251752f2409db1353bc\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:110;}}}}i:1593634999;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"86ee86192663593770b44628e2bdcc23\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:112;}}}}i:1593635040;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"83cc52f2b5320a237bfac00e9712508d\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:188;}}}}i:1593635041;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"5ec1dba69f6203f3d5424a2b09b2bb00\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:189;}}}}i:1593635043;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"9259f028ea3f3346e163e776f589f44a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:190;}}}}i:1594466233;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"9ace7d0bd2b5617de764b543c7f65558\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:2343;}}}}i:1594466235;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"30d21dfcb2cc1450b34a9e4ecec518ac\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:2345;}}}}i:1594466276;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"a171ebe29b9479f012cd3892ff9be949\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:2421;}}}}i:1594466277;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"10c14ec3c29317c53690955bfaeaf934\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:2422;}}}}i:1594466278;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"9b2ee611f223202e79e36a8420b2b6f9\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:2423;}}}}i:1594469099;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"758cef2d6ddcea8879193e9240d5c0e8\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:6143;}}}}i:1594469101;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"a26397606b181790532f27947993581c\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:6145;}}}}i:1594469144;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"f6e61a599df79d6db11b7c2c74c7353e\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:6221;}}}}i:1594469145;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"5f22b4ec83ddf5105689ac2eb48971cc\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:6222;}}}}i:1594469146;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"e3fcf13b3ca4275e99057ea2c41599da\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:6223;}}}}i:1745143980;a:1:{s:19:\"publish_future_post\";a:3:{s:32:\"dcb7d826bbb826e2b6e24056421b0f05\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:788;}}s:32:\"0bb3b83e6b79672ee404408321476852\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:782;}}s:32:\"6c180f8e9918e75bea1741a55bfa5fd4\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:4584;}}}}i:1745143981;a:1:{s:19:\"publish_future_post\";a:3:{s:32:\"dc952678747d0a84ad7f50acc99e6c8f\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:789;}}s:32:\"3711d330195c528df0dbb900010f63ac\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:783;}}s:32:\"6065ed5a40ef244cde903d789a974810\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:4585;}}}}i:1747735981;a:1:{s:19:\"publish_future_post\";a:3:{s:32:\"2455cb3a9d391f667f5be686c1b7b240\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:790;}}s:32:\"1263a05d0d1878ca0e178b25c9080329\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:784;}}s:32:\"fc8796bd3bc2a429edf11c59e05bfa80\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:4586;}}}}s:7:\"version\";i:2;}',	'yes'),
(106,	'widget_pages',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(107,	'widget_calendar',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(108,	'widget_media_audio',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(109,	'widget_media_image',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(110,	'widget_media_gallery',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(111,	'widget_media_video',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(112,	'widget_tag_cloud',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(113,	'widget_nav_menu',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(114,	'widget_custom_html',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(1052,	'_site_transient_timeout_theme_roots',	'1593549877',	'no'),
(1053,	'_site_transient_theme_roots',	'a:24:{s:12:\"broken-theme\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:9:\"camelCase\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:19:\"child-parent-itself\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:7:\"default\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:23:\"internationalized-theme\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:20:\"page-templates-child\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:14:\"page-templates\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:8:\"rest-api\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:7:\"sandbox\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:14:\"stylesheetonly\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:24:\"subdir/theme with spaces\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:13:\"subdir/theme2\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:11:\"theme1-dupe\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:6:\"theme1\";s:69:\"C:\\iolevel\\wordpress-develop\\tests\\phpunit\\includes/../data/themedir1\";s:12:\"twentyeleven\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}',	'no'),
(1856,	'comment_whitelist',	'1',	'yes'),
(4773,	'category_children',	'a:0:{}',	'yes');

DROP TABLE IF EXISTS `wptests_postmeta`;
CREATE TABLE `wptests_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wptests_posts`;
CREATE TABLE `wptests_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wptests_termmeta`;
CREATE TABLE `wptests_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wptests_terms`;
CREATE TABLE `wptests_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wptests_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1,	'Uncategorized',	'uncategorized',	0);

DROP TABLE IF EXISTS `wptests_term_relationships`;
CREATE TABLE `wptests_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wptests_term_taxonomy`;
CREATE TABLE `wptests_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wptests_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1,	1,	'category',	'',	0,	0);

DROP TABLE IF EXISTS `wptests_usermeta`;
CREATE TABLE `wptests_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wptests_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1,	1,	'nickname',	'admin'),
(2,	1,	'first_name',	''),
(3,	1,	'last_name',	''),
(4,	1,	'description',	''),
(5,	1,	'rich_editing',	'true'),
(6,	1,	'syntax_highlighting',	'true'),
(7,	1,	'comment_shortcuts',	'false'),
(8,	1,	'admin_color',	'fresh'),
(9,	1,	'use_ssl',	'0'),
(10,	1,	'show_admin_bar_front',	'true'),
(11,	1,	'locale',	''),
(12,	1,	'wptests_capabilities',	'a:1:{s:13:\"administrator\";b:1;}'),
(13,	1,	'wptests_user_level',	'10'),
(14,	1,	'dismissed_wp_pointers',	''),
(15,	1,	'show_welcome_panel',	'1');

DROP TABLE IF EXISTS `wptests_users`;
CREATE TABLE `wptests_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wptests_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1,	'admin',	'$P$BVo/uXXWhC4GpRZfBrByMiaRKGithT.',	'admin',	'admin@example.org',	'http://example.org',	'2020-06-30 19:44:05',	'',	0,	'admin');

-- 2020-07-10 12:35:53
