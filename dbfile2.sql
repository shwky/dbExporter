/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`, `comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE = InnoDB AUTO_INCREMENT = 401 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 360 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`, `post_status`, `post_date`, `ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE = InnoDB AUTO_INCREMENT = 130 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`, `term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 30 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------

INSERT INTO
  `wp_comments` (
    `comment_ID`,
    `comment_post_ID`,
    `comment_author`,
    `comment_author_email`,
    `comment_author_url`,
    `comment_author_IP`,
    `comment_date`,
    `comment_date_gmt`,
    `comment_content`,
    `comment_karma`,
    `comment_approved`,
    `comment_agent`,
    `comment_type`,
    `comment_parent`,
    `user_id`
  )
VALUES
  (
    1,
    1,
    'A WordPress Commenter',
    'wapuu@wordpress.example',
    'https://wordpress.org/',
    '',
    '2020-06-09 11:07:24',
    '2020-06-09 11:07:24',
    'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',
    0,
    'post-trashed',
    '',
    '',
    0,
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (1, 'siteurl', 'http://localhost/bazynew', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (2, 'home', 'http://localhost/bazynew', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (3, 'blogname', 'Bazy', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (4, 'blogdescription', 'Bazy', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (5, 'users_can_register', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (6, 'admin_email', 'admin@admin.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (7, 'start_of_week', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (8, 'use_balanceTags', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (9, 'use_smilies', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (10, 'require_name_email', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (11, 'comments_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (12, 'posts_per_rss', '10', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (17, 'mailserver_port', '110', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (18, 'default_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (19, 'default_comment_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (20, 'default_ping_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (22, 'posts_per_page', '10', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (23, 'date_format', 'F j, Y', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (24, 'time_format', 'g:i a', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    25,
    'links_updated_date_format',
    'F j, Y g:i a',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (26, 'comment_moderation', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (27, 'moderation_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (28, 'permalink_structure', '/%postname%/', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    29,
    'rewrite_rules',
    'a:248:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"slide/?$\";s:25:\"index.php?post_type=slide\";s:38:\"slide/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=slide&feed=$matches[1]\";s:33:\"slide/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=slide&feed=$matches[1]\";s:25:\"slide/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=slide&paged=$matches[1]\";s:11:\"solution/?$\";s:28:\"index.php?post_type=solution\";s:41:\"solution/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=solution&feed=$matches[1]\";s:36:\"solution/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=solution&feed=$matches[1]\";s:28:\"solution/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=solution&paged=$matches[1]\";s:10:\"service/?$\";s:27:\"index.php?post_type=service\";s:40:\"service/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:35:\"service/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:27:\"service/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=service&paged=$matches[1]\";s:10:\"benefit/?$\";s:27:\"index.php?post_type=benefit\";s:40:\"benefit/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=benefit&feed=$matches[1]\";s:35:\"benefit/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=benefit&feed=$matches[1]\";s:27:\"benefit/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=benefit&paged=$matches[1]\";s:11:\"industry/?$\";s:28:\"index.php?post_type=industry\";s:41:\"industry/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=industry&feed=$matches[1]\";s:36:\"industry/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=industry&feed=$matches[1]\";s:28:\"industry/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=industry&paged=$matches[1]\";s:10:\"partner/?$\";s:27:\"index.php?post_type=partner\";s:40:\"partner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=partner&feed=$matches[1]\";s:35:\"partner/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=partner&feed=$matches[1]\";s:27:\"partner/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=partner&paged=$matches[1]\";s:14:\"testimonial/?$\";s:31:\"index.php?post_type=testimonial\";s:44:\"testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:39:\"testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:31:\"testimonial/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=testimonial&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"slide/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"slide/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"slide/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"slide/([^/]+)/embed/?$\";s:38:\"index.php?slide=$matches[1]&embed=true\";s:26:\"slide/([^/]+)/trackback/?$\";s:32:\"index.php?slide=$matches[1]&tb=1\";s:46:\"slide/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?slide=$matches[1]&feed=$matches[2]\";s:41:\"slide/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?slide=$matches[1]&feed=$matches[2]\";s:34:\"slide/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?slide=$matches[1]&paged=$matches[2]\";s:41:\"slide/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?slide=$matches[1]&cpage=$matches[2]\";s:30:\"slide/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?slide=$matches[1]&page=$matches[2]\";s:22:\"slide/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"slide/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"slide/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"solution/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"solution/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"solution/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"solution/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"solution/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"solution/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"solution/([^/]+)/embed/?$\";s:41:\"index.php?solution=$matches[1]&embed=true\";s:29:\"solution/([^/]+)/trackback/?$\";s:35:\"index.php?solution=$matches[1]&tb=1\";s:49:\"solution/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?solution=$matches[1]&feed=$matches[2]\";s:44:\"solution/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?solution=$matches[1]&feed=$matches[2]\";s:37:\"solution/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?solution=$matches[1]&paged=$matches[2]\";s:44:\"solution/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?solution=$matches[1]&cpage=$matches[2]\";s:33:\"solution/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?solution=$matches[1]&page=$matches[2]\";s:25:\"solution/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"solution/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"solution/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"solution/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"solution/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"solution/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:48:\"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:43:\"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"benefit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"benefit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"benefit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"benefit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"benefit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"benefit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"benefit/([^/]+)/embed/?$\";s:40:\"index.php?benefit=$matches[1]&embed=true\";s:28:\"benefit/([^/]+)/trackback/?$\";s:34:\"index.php?benefit=$matches[1]&tb=1\";s:48:\"benefit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?benefit=$matches[1]&feed=$matches[2]\";s:43:\"benefit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?benefit=$matches[1]&feed=$matches[2]\";s:36:\"benefit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?benefit=$matches[1]&paged=$matches[2]\";s:43:\"benefit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?benefit=$matches[1]&cpage=$matches[2]\";s:32:\"benefit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?benefit=$matches[1]&page=$matches[2]\";s:24:\"benefit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"benefit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"benefit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"benefit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"benefit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"benefit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"industry/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"industry/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"industry/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"industry/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"industry/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"industry/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"industry/([^/]+)/embed/?$\";s:41:\"index.php?industry=$matches[1]&embed=true\";s:29:\"industry/([^/]+)/trackback/?$\";s:35:\"index.php?industry=$matches[1]&tb=1\";s:49:\"industry/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?industry=$matches[1]&feed=$matches[2]\";s:44:\"industry/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?industry=$matches[1]&feed=$matches[2]\";s:37:\"industry/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?industry=$matches[1]&paged=$matches[2]\";s:44:\"industry/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?industry=$matches[1]&cpage=$matches[2]\";s:33:\"industry/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?industry=$matches[1]&page=$matches[2]\";s:25:\"industry/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"industry/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"industry/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"industry/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"industry/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"industry/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"partner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"partner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"partner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"partner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"partner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"partner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"partner/([^/]+)/embed/?$\";s:40:\"index.php?partner=$matches[1]&embed=true\";s:28:\"partner/([^/]+)/trackback/?$\";s:34:\"index.php?partner=$matches[1]&tb=1\";s:48:\"partner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?partner=$matches[1]&feed=$matches[2]\";s:43:\"partner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?partner=$matches[1]&feed=$matches[2]\";s:36:\"partner/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?partner=$matches[1]&paged=$matches[2]\";s:43:\"partner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?partner=$matches[1]&cpage=$matches[2]\";s:32:\"partner/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?partner=$matches[1]&page=$matches[2]\";s:24:\"partner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"partner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"partner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"partner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"partner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"partner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:32:\"testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:52:\"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:47:\"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:40:\"testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:47:\"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:36:\"testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:28:\"testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=41&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (30, 'hack_file', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (32, 'moderation_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    33,
    'active_plugins',
    'a:2:{i:0;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:1;s:38:\"post-duplicator/m4c-postduplicator.php\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (34, 'category_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    35,
    'ping_sites',
    'http://rpc.pingomatic.com/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (36, 'comment_max_links', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (37, 'gmt_offset', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (38, 'default_email_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (39, 'recently_edited', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (40, 'template', 'bazy', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (41, 'stylesheet', 'bazy', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (42, 'comment_whitelist', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (43, 'blacklist_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (44, 'comment_registration', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (45, 'html_type', 'text/html', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (46, 'use_trackback', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (47, 'default_role', 'subscriber', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (48, 'db_version', '47018', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (50, 'upload_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (51, 'blog_public', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (52, 'default_link_category', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (53, 'show_on_front', 'page', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (54, 'tag_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (55, 'show_avatars', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (56, 'avatar_rating', 'G', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (57, 'upload_url_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (61, 'medium_size_w', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (62, 'medium_size_h', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (64, 'large_size_w', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (65, 'large_size_h', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (66, 'image_default_link_type', 'none', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (67, 'image_default_size', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (68, 'image_default_align', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (71, 'thread_comments', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (73, 'page_comments', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (74, 'comments_per_page', '50', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (76, 'comment_order', 'asc', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    78,
    'widget_categories',
    'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (79, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (80, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (82, 'timezone_string', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (83, 'page_for_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (84, 'page_on_front', '41', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (85, 'default_post_format', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (88, 'site_icon', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (91, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (92, 'show_comments_cookies_opt_in', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (93, 'admin_email_lifespan', '1607252844', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (94, 'initial_db_version', '45805', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    95,
    'wp_user_roles',
    'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (96, 'fresh_site', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    97,
    'widget_search',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    98,
    'widget_recent-posts',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    99,
    'widget_recent-comments',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    100,
    'widget_archives',
    'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    101,
    'widget_meta',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    102,
    'sidebars_widgets',
    'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    103,
    'cron',
    'a:7:{i:1592312845;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1592348845;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1592392045;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592392072;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592392074;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592392259;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    104,
    'widget_pages',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    105,
    'widget_calendar',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    106,
    'widget_media_audio',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    107,
    'widget_media_image',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    108,
    'widget_media_gallery',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    109,
    'widget_media_video',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    110,
    'widget_tag_cloud',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    111,
    'widget_nav_menu',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    112,
    'widget_custom_html',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (114, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    118,
    'theme_mods_twentytwenty',
    'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1591701162;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    142,
    '_site_transient_update_plugins',
    'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1592309366;s:7:\"checked\";a:2:{s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.1\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:4:\"2.20\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.20\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/post-duplicator.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}}}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (144, 'db_upgraded', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (147, 'can_compress_scripts', '1', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (149, 'current_theme', 'Bazy', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    150,
    'theme_mods_bazy',
    'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (151, 'theme_switched', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (153, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (154, 'mtphr_post_duplicator_settings', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (163, 'sh_home_first_title', 'Solutions', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    164,
    'sh_home_first_content',
    'Rapid Business Transformation',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (165, 'sh_home_second_title', 'Industries', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (166, 'sh_shome_second_content', 'Industries', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    167,
    'sh_home_third_title',
    'Proven Track Of Success',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    168,
    'sh_home_third_subtitle',
    'Quality Solutions For All Businesses',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    169,
    'sh_shome_third_content',
    '<h3 class=\"aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">Automatic Fare Collection (AFC) for Riyadh Metro and Buses</h3>\r\n<ul class=\"aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">\r\n<li>(2016-2020)</li>\r\n<li>Technology: ICT</li>\r\n<li>Solutions: Installation and O&amp;M for the Automatic Fare Collection System and its accessories</li>\r\n</ul>\r\n<div class=\"scope\" bis_size=\"{&quot;x&quot;:0,&quot;y&quot;:0,&quot;w&quot;:0,&quot;h&quot;:0,&quot;abs_x&quot;:796,&quot;abs_y&quot;:458}\">\r\n<h3 class=\"aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">Scope of Work</h3>\r\n<p class=\"aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">We will work in this project through our international Partner that called Indra Systems (Spanish) with the following scope of work:</p>\r\n<ul class=\"aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"600\">\r\n<li>Mobile Communication (TETRA, GSM, LTE, GSM-R &amp; MW)</li>\r\n<li>In-Building &amp; Outdoor Solutions</li>\r\n<li>Service Assurance</li>\r\n<li>SD-WAN Optimizations</li>\r\n</ul>\r\n</div>',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (170, 'sh_home_third_btn_text', 'read more', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (171, 'sh_home_third_btn_link', '#', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    172,
    'sh_home_first_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/track.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (173, 'sh_home_first_img_id', '43', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (174, 'sh_home_fourth_title', 'Our Partners', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    175,
    'sh_shome_fourth_content',
    'We Make Innovation A Reality To Our Clients',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (176, 'sh_home_fourth_btn_text', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (177, 'sh_home_fourth_btn_link', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    178,
    'sh_shome_fifth_content',
    'Transforming Businesses For 30+ Years',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (179, 'sh_home_fifth_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (180, 'sh_home_fifth_img_id', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (181, 'sh_home_fifth_title1', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (182, 'sh_home_fifth_content1', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (183, 'sh_home_fifth_title2', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (184, 'sh_home_fifth_content2', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (185, 'sh_home_fifth_title3', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (186, 'sh_home_fifth_content3', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (187, 'sh_home_fifth_title4', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (188, 'sh_home_fifth_content4', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (189, 'sh_home_fifth_title5', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (190, 'sh_home_fifth_content5', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (191, 'sh_home_fifth_title6', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (192, 'sh_home_fifth_content6', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (193, 'sh_home_fifth_btn_text', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (194, 'sh_home_fifth_btn_link', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (195, 'sh_home_sixth_title', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (196, 'sh_shome_sixth_content', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (197, 'sh_home_sixth_btn_text', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (198, 'sh_home_sixth_btn_link', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (199, 'sh_home_seventh_title', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (200, 'sh_home_eighth_title', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (201, 'sh_home_eighth_btn_text', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (202, 'sh_home_eighth_btn_link', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (203, 'sh_save', 'Save !!', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (204, 'sh_home_fifth_title', 'Testimonials', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    206,
    'sh_logo_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/logo.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (207, 'sh_logo_img_id', '45', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    208,
    'sh_favicon_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/faveicon.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (209, 'sh_favicon_img_id', '44', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (210, 'sh_pricing', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    211,
    'sh_address',
    'Salah Ad Din Al Ayyubi Rd - Al Malaz - Bazy Building',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (212, 'sh_email', 'Info@Bazy.Com.Sa', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (213, 'sh_phone', '+966-11-4767770', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (214, 'sh_support_num', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (215, 'sh_fb', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (216, 'sh_twitter', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (217, 'sh_insta', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (218, 'sh_google', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    223,
    'sh_about_first_title',
    'Company Overview',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    224,
    'sh_about_first_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/a2.jpg',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (225, 'sh_about_first_img_id', '52', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    226,
    'sh_about_second_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/a1.jpg',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (227, 'sh_about_second_img_id', '51', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (228, 'sh_about_second_content', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (229, 'sh_about_fifth_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    230,
    'sh_about_third_content',
    'We Make Innovation A Reality To Our Clients',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (231, 'sh_about_sixth_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    232,
    'sh_about_fourth_content',
    '<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"300\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    233,
    'sh_about_fifth_content',
    'call us on: <a href=\"tel:33255012388\"><i class=\"fa fa-phone\"></i> 33255012388</a>',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (234, 'sh_about_seventh_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (235, 'sh_about_seventh_img_id', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    237,
    'sh_about_second_title1',
    'Our<br> Vision',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    238,
    'sh_about_second_content1',
    'To Always Be The “Preferred Partner” In The Field Of Information Communication, Technology And Energy In The MENA Region',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    239,
    'sh_about_second_title2',
    'Our<br> Mission',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    240,
    'sh_about_second_content2',
    'To Provide Customer With The Right Solutions, Products, And Services That Ensure Continuous Enhancement Of In-House Capabilities To Reach Customer Satisfaction And Solid Partnership Relation',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    241,
    'sh_about_second_title3',
    'Our<br> Values',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    242,
    'sh_about_second_content3',
    'Ensure Quality Of Services And Products Create A Safer Community Together Provide The Right Value With Business Continuity',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (243, 'sh_about_third_title', 'Our Partners', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    244,
    'sh_about_fourth_title',
    'ISO<br> Certificates',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    245,
    'sh_about_fourth_sec_img1',
    'http://localhost/bazynew/wp-content/uploads/2020/06/i1-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (246, 'sh_about_fourth_sec_img_id1', '54', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    247,
    'sh_about_fourth_sec_img2',
    'http://localhost/bazynew/wp-content/uploads/2020/06/i2-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (248, 'sh_about_fourth_sec_img_id2', '50', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    249,
    'sh_about_fourth_sec_img3',
    'http://localhost/bazynew/wp-content/uploads/2020/06/i1-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (250, 'sh_about_fourth_sec_img_id3', '54', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    251,
    'sh_about_fourth_sec_img4',
    'http://localhost/bazynew/wp-content/uploads/2020/06/i2-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (252, 'sh_about_fourth_sec_img_id4', '50', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    253,
    'sh_about_fifth_title',
    'Ready to<br> enhance your business? ',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    254,
    'sh_about_fifth_sec_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/conto.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (255, 'sh_about_fifth_sec_img_id', '53', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (256, 'sh_part_first_title', 'Our Clients', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    257,
    'sh_part_first_content',
    'We Take Pride In Serving Well-Known Corporates And Organizations With First-Class Solutions Across Different Industries In Saudi Arabia And The MENA Region',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    258,
    'sh_part_second_content',
    '<h3 data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">Be Our Next Client</h3>\r\n<a class=\"btn btn-trans\" href=\"#\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">contact us</a>',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (259, 'sh_part_third_title', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (260, 'sh_part_third_content', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (261, 'sh_part_third_btn_text', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (262, 'sh_part_third_btn_link', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    268,
    '_transient_health-check-site-status-result',
    '{\"good\":\"14\",\"recommended\":\"3\",\"critical\":\"0\"}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    276,
    'sh_contact_first_title',
    'Managed Services Program',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    277,
    'sh_contact_first_content',
    '<div class=\"g-head col-xs-12 aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\" bis_skin_checked=\"1\">\r\n<p>We Take Pride In Serving Well-Known Corporates And Organizations With First-Class Solutions Across Different Industries In Saudi Arabia And The MENA Region</p>\r\n</div>\r\n<div class=\"g-body col-xs-12\" bis_skin_checked=\"1\">\r\n<div class=\"block col-md-3 col-sm-6 col-xs-12 aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\" bis_skin_checked=\"1\"></div>\r\n</div>',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    278,
    'sh_news_first_title',
    'Managed Services Program',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    279,
    'sh_news_first_content',
    'We Take Pride In Serving Well-Known Corporates And Organizations With First-Class Solutions Across Different Industries In Saudi Arabia And The MENA Region',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    280,
    'sh_news_first_service_title',
    'CO Massage',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    281,
    'sh_news_first_service_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/1-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (282, 'sh_news_first_service_img_id', '60', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    283,
    'sh_news_second_service',
    'Press Releases',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    284,
    'sh_news_second_service_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/2-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (285, 'sh_news_second_service_img_id', '61', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (286, 'sh_news_third_service', 'Company News', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    287,
    'sh_news_third_service_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/3-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (288, 'sh_news_third_service_img_id', '62', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (289, 'sh_news_fourth_service', 'Events', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    290,
    'sh_news_fourth_service_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/4-1.png',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (291, 'sh_news_fourth_service_img_id', '63', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    293,
    'sh_news_second_title',
    'How Can We Help?',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    302,
    '_site_transient_update_core',
    'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1592309356;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    304,
    'auto_core_update_notified',
    'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"admin@admin.com\";s:7:\"version\";s:5:\"5.4.2\";s:9:\"timestamp\";i:1591995807;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    306,
    '_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459',
    '1592601146',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    307,
    '_site_transient_browser_31f552011cd49d12bc3cd930bb193459',
    'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    308,
    '_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9',
    '1592601146',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    309,
    '_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9',
    'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    310,
    'recovery_mode_email_last_sent',
    '1592090735',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (313, 'WPLANG', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (314, 'new_admin_email', 'admin@admin.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (354, 'product_cat_children', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    355,
    'sh_pro_first_content',
    '<h3>STC Products for Businesses</h3>\r\n<p>We take pride in serving well-known corporates and organizations with first-class solutions across different industries in Saudi Arabia and the MENA region</p>',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (356, 'sh_pro_first_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (357, 'sh_pro_first_img_id', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    358,
    'sh_pro_second_content',
    '<h3>STC Products for Individuals</h3>\r\n<p>Being a certified STC partner in KSA has enabled us to deliver high-end services to our customers, focused on their needs</p>',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (359, 'sh_pro_second_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (360, 'sh_pro_second_img_id', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (361, 'sh_pro_third_content', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (362, 'sh_pro_third_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (363, 'sh_pro_third_img_id', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (364, 'sh_pro_fourth_content', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (365, 'sh_pro_fourth_img', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (366, 'sh_pro_fourth_img_id', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (367, 'sh_pro_fifth_title', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (368, 'sh_pro_fifth_content', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (369, 'sh_pro_fifth_btn_text', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (370, 'sh_pro_fifth_btn_link', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (371, 'sh_pro_sixth_title', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (372, 'sh_pro_first_first_id', '113', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (373, 'sh_pro_first_second_id', '120', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (374, 'sh_pro_first_third_id', '121', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (375, 'sh_pro_first_btn_url', '#first_url', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (377, 'sh_pro_second_first_id', '122', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (378, 'sh_pro_second_second_id', '124', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (379, 'sh_pro_second_third_id', '126', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (380, 'sh_pro_second_btn_url', '#second', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    395,
    '_site_transient_timeout_theme_roots',
    '1592311164',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    396,
    '_site_transient_theme_roots',
    'a:2:{s:4:\"bazy\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    397,
    '_site_transient_update_themes',
    'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1592309366;s:7:\"checked\";a:2:{s:4:\"bazy\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    398,
    '_site_transient_timeout_browser_7178962ad06c4f9758986cbf76506171',
    '1592914183',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    399,
    '_site_transient_browser_7178962ad06c4f9758986cbf76506171',
    'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.97\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (400, 'category_children', 'a:0:{}', 'yes');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (1, 2, '_wp_page_template', 'default');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (2, 3, '_wp_page_template', 'default');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (3, 6, '_wp_attached_file', '2020/06/hero.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    4,
    6,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:690;s:4:\"file\";s:16:\"2020/06/hero.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x368.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:368;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x276.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"hero-1536x552.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (5, 5, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (6, 5, '_edit_lock', '1591737139:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (7, 5, '_thumbnail_id', '6');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (8, 5, 'sh_btn_text', 'Industries');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (9, 5, 'sh_btn_val', 'https://www.google.com/');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (10, 7, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (11, 7, '_edit_lock', '1591707130:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (12, 7, '_thumbnail_id', '6');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (13, 7, 'sh_btn_text', 'Industries');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (14, 7, 'sh_btn_val', 'https://www.google.com/');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (15, 8, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (16, 8, '_edit_lock', '1592309521:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (17, 9, '_wp_attached_file', '2020/06/i1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    18,
    9,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:76;s:6:\"height\";i:91;s:4:\"file\";s:14:\"2020/06/i1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (19, 10, '_wp_attached_file', '2020/06/i2.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    20,
    10,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:84;s:6:\"height\";i:84;s:4:\"file\";s:14:\"2020/06/i2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (21, 11, '_wp_attached_file', '2020/06/i3.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    22,
    11,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:69;s:6:\"height\";i:99;s:4:\"file\";s:14:\"2020/06/i3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (23, 12, '_wp_attached_file', '2020/06/i4.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    24,
    12,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:92;s:4:\"file\";s:14:\"2020/06/i4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (25, 13, '_wp_attached_file', '2020/06/i5.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    26,
    13,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:123;s:6:\"height\";i:84;s:4:\"file\";s:14:\"2020/06/i5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (27, 14, '_wp_attached_file', '2020/06/i6.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    28,
    14,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:65;s:6:\"height\";i:99;s:4:\"file\";s:14:\"2020/06/i6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (29, 8, '_thumbnail_id', '9');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (30, 15, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (31, 15, '_edit_lock', '1591713049:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (32, 15, '_thumbnail_id', '10');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (33, 16, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (34, 16, '_edit_lock', '1591713074:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (35, 16, '_thumbnail_id', '11');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (36, 17, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (37, 17, '_edit_lock', '1591713114:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (38, 17, '_thumbnail_id', '12');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (39, 18, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (40, 18, '_edit_lock', '1591713140:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (41, 18, '_thumbnail_id', '13');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (42, 19, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (43, 19, '_edit_lock', '1591713157:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (44, 19, '_thumbnail_id', '14');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (45, 20, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (46, 20, '_edit_lock', '1592091189:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (47, 21, '_wp_attached_file', '2020/06/1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    48,
    21,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:162;s:4:\"file\";s:13:\"2020/06/1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (49, 22, '_wp_attached_file', '2020/06/2.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    50,
    22,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:151;s:6:\"height\";i:114;s:4:\"file\";s:13:\"2020/06/2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (51, 23, '_wp_attached_file', '2020/06/3.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    52,
    23,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:13:\"2020/06/3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (53, 24, '_wp_attached_file', '2020/06/4.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    54,
    24,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:191;s:6:\"height\";i:143;s:4:\"file\";s:13:\"2020/06/4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x143.png\";s:5:\"width\";i:150;s:6:\"height\";i:143;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (55, 25, '_wp_attached_file', '2020/06/5.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    56,
    25,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:36;s:4:\"file\";s:13:\"2020/06/5.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"5-150x36.png\";s:5:\"width\";i:150;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (57, 26, '_wp_attached_file', '2020/06/6.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    58,
    26,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:13:\"2020/06/6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (59, 20, '_thumbnail_id', '26');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (60, 27, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (61, 27, '_edit_lock', '1591734524:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (62, 27, '_thumbnail_id', '21');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (63, 28, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (64, 28, '_edit_lock', '1591737511:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (65, 29, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (66, 29, '_edit_lock', '1591734586:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (67, 29, '_thumbnail_id', '22');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (68, 30, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (69, 30, '_edit_lock', '1591734617:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (70, 30, '_thumbnail_id', '25');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (71, 31, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (72, 31, '_edit_lock', '1591734684:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (73, 31, '_thumbnail_id', '24');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (74, 32, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (75, 32, '_edit_lock', '1591737532:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (76, 33, '_wp_attached_file', '2020/06/av4.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    77,
    33,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:62;s:4:\"file\";s:15:\"2020/06/av4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (78, 34, '_wp_attached_file', '2020/06/av1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    79,
    34,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:62;s:4:\"file\";s:15:\"2020/06/av1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (80, 35, '_wp_attached_file', '2020/06/av2.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    81,
    35,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:61;s:6:\"height\";i:61;s:4:\"file\";s:15:\"2020/06/av2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (82, 32, '_thumbnail_id', '34');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (83, 36, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (84, 36, '_edit_lock', '1591737546:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (85, 36, '_thumbnail_id', '35');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (86, 37, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (87, 37, '_edit_lock', '1591737560:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (88, 37, '_thumbnail_id', '33');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (89, 38, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (90, 38, '_edit_lock', '1591737575:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (91, 38, '_thumbnail_id', '34');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (92, 39, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (93, 39, '_edit_lock', '1591737650:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (94, 39, '_thumbnail_id', '35');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (95, 41, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (96, 41, '_edit_lock', '1591800478:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (97, 41, '_wp_page_template', 'default');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (98, 28, '_thumbnail_id', '23');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (99, 43, '_wp_attached_file', '2020/06/track.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    100,
    43,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:387;s:6:\"height\";i:138;s:4:\"file\";s:17:\"2020/06/track.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"track-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"track-150x138.png\";s:5:\"width\";i:150;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    101,
    44,
    '_wp_attached_file',
    '2020/06/faveicon.png'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    102,
    44,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:188;s:4:\"file\";s:20:\"2020/06/faveicon.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"faveicon-103x150.png\";s:5:\"width\";i:103;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (103, 45, '_wp_attached_file', '2020/06/logo.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    104,
    45,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:114;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2020/06/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-114x150.png\";s:5:\"width\";i:114;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (105, 46, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (106, 46, '_edit_lock', '1591786081:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (107, 46, '_wp_page_template', 'page-about.php');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (108, 50, '_wp_attached_file', '2020/06/i2-1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    109,
    50,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:283;s:6:\"height\";i:400;s:4:\"file\";s:16:\"2020/06/i2-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"i2-1-212x300.png\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"i2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (110, 51, '_wp_attached_file', '2020/06/a1.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    111,
    51,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:618;s:6:\"height\";i:412;s:4:\"file\";s:14:\"2020/06/a1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (112, 52, '_wp_attached_file', '2020/06/a2.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    113,
    52,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:618;s:6:\"height\";i:412;s:4:\"file\";s:14:\"2020/06/a2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (114, 53, '_wp_attached_file', '2020/06/conto.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    115,
    53,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:261;s:4:\"file\";s:17:\"2020/06/conto.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"conto-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (116, 54, '_wp_attached_file', '2020/06/i1-1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    117,
    54,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:389;s:4:\"file\";s:16:\"2020/06/i1-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"i1-1-231x300.png\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"i1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    118,
    56,
    '_wp_attached_file',
    '2020/06/overview.jpg'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    119,
    56,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:468;s:4:\"file\";s:20:\"2020/06/overview.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"overview-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"overview-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (120, 55, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (121, 55, '_edit_lock', '1591786764:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (122, 55, '_thumbnail_id', '56');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    123,
    55,
    '_wp_page_template',
    'page-partners-clients.php'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (124, 1, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (125, 1, '_wp_trash_meta_time', '1591794719');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (126, 1, '_wp_desired_post_slug', 'hello-world');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    127,
    1,
    '_wp_trash_meta_comments_status',
    'a:1:{i:1;s:1:\"1\";}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (128, 60, '_wp_attached_file', '2020/06/1-1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    129,
    60,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:92;s:4:\"file\";s:15:\"2020/06/1-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (130, 61, '_wp_attached_file', '2020/06/2-1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    131,
    61,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:79;s:6:\"height\";i:79;s:4:\"file\";s:15:\"2020/06/2-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (132, 62, '_wp_attached_file', '2020/06/3-1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    133,
    62,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:99;s:4:\"file\";s:15:\"2020/06/3-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (134, 63, '_wp_attached_file', '2020/06/4-1.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    135,
    63,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:15:\"2020/06/4-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (136, 64, '_wp_attached_file', '2020/06/n1.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    137,
    64,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/n1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (138, 65, '_wp_attached_file', '2020/06/n2.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    139,
    65,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/n2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (140, 66, '_wp_attached_file', '2020/06/n3.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    141,
    66,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:14:\"2020/06/n3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (142, 67, '_wp_attached_file', '2020/06/n4.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    143,
    67,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/n4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (144, 68, '_wp_attached_file', '2020/06/n5.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    145,
    68,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/n5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (146, 69, '_wp_attached_file', '2020/06/n6.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    147,
    69,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/n6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (148, 59, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (149, 59, '_edit_lock', '1591794650:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (150, 59, '_thumbnail_id', '64');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (153, 71, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (154, 71, '_edit_lock', '1591794733:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (155, 71, '_thumbnail_id', '65');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (158, 73, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (159, 73, '_thumbnail_id', '66');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (162, 73, '_edit_lock', '1591794771:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (163, 75, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (164, 75, '_edit_lock', '1591794835:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (165, 75, '_thumbnail_id', '67');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (168, 77, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (169, 77, '_edit_lock', '1591794865:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (170, 77, '_thumbnail_id', '68');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (173, 79, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (174, 79, '_edit_lock', '1592309307:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (175, 79, '_thumbnail_id', '69');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (178, 81, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (179, 81, '_edit_lock', '1591795267:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (180, 81, '_wp_page_template', 'page-news.php');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (181, 85, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (182, 85, '_edit_lock', '1592087627:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (186, 86, '_wp_attached_file', '2020/06/cover.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    187,
    86,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:399;s:4:\"file\";s:17:\"2020/06/cover.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cover-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cover-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cover-768x306.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (189, 87, '_wp_attached_file', '2020/06/eff.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    190,
    87,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:786;s:6:\"height\";i:391;s:4:\"file\";s:15:\"2020/06/eff.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"eff-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"eff-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"eff-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (200, 88, '_wp_attached_file', '2020/06/of.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    201,
    88,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:14:\"2020/06/of.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"of-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"of-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (203, 89, '_wp_attached_file', '2020/06/bt.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    204,
    89,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:792;s:6:\"height\";i:396;s:4:\"file\";s:14:\"2020/06/bt.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bt-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bt-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (213, 91, '_wp_attached_file', '2020/06/mp1.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    214,
    91,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:596;s:6:\"height\";i:437;s:4:\"file\";s:15:\"2020/06/mp1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"mp1-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"mp1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (215, 92, '_wp_attached_file', '2020/06/mp2.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    216,
    92,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:372;s:4:\"file\";s:15:\"2020/06/mp2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"mp2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"mp2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    217,
    85,
    'sh_service_first_content',
    '<h3 data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">End-to-end Technology<br />Infrastructure Solutions</h3>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">A state-of-art managed service program for telecom network infrastructure, powered by Saudi Telecom Company STC, the biggest telecom operators in GCC and Saudi Arabia.</p>\r\n<a class=\"btn\" href=\"#\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"600\">contact us</a>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    218,
    85,
    'sh_service_first_image',
    'http://localhost/bazynew/wp-content/uploads/2020/06/cover.jpg'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    219,
    85,
    'sh_service_second_content',
    '<h3>Add More Efficiency and Profitability to Your Business</h3>\r\n<p>We’ve successfully played a vital role in delivering technology infrastructure services in Saudi Arabia. By keeping ahead of the development, we’ve been able to cater for the demands of the market with a vast range of innovative services, leaving our own mark as a leading company inside and outside the country.</p>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    220,
    85,
    'sh_service_second_image',
    'http://localhost/bazynew/wp-content/uploads/2020/06/eff.jpg'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    221,
    85,
    'sh_service_third_content',
    '<h3>Benefits of Working with us</h3>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    222,
    85,
    'sh_service_fourth_content',
    '<h3>Managed Services Program</h3>\r\n<p>We take pride in serving well-known corporates and organizations with first-class solutions across different<br />industries in Saudi Arabia and the MENA region</p>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    223,
    85,
    'sh_service_fourth_content2',
    '<h4>Our managed services program includes the following major field operation activities:</h4>\r\n<ul>\r\n<li>Preventive Maintenance</li>\r\n<li>Corrective Maintenance</li>\r\n<li>Disaster Recovery and Emergency Maintenance</li>\r\n<li>Change and Configuration Management</li>\r\n<li>Spare Parts and Consumables Management</li>\r\n<li>Services Delivery</li>\r\n<li>Security Management</li>\r\n<li>Performance Management</li>\r\n<li>Patrolling Services</li>\r\n</ul>\r\n<a class=\"btn\" href=\"#\">contact us</a>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    224,
    85,
    'sh_service_third_image',
    'http://localhost/bazynew/wp-content/uploads/2020/06/mp1.jpg'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    225,
    85,
    'sh_service_fourth_image',
    'http://localhost/bazynew/wp-content/uploads/2020/06/mp2.jpg'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    226,
    85,
    'sh_service_fifth_content',
    '<div class=\"ob-item col-md-6 col-xs-12\">\r\n<div class=\"g-head\">\r\n<h3>Operational Objectives</h3>\r\n</div>\r\n<ul>\r\n<li>Improving operational efficiency, network, and assets utilization</li>\r\n<li>Optimization of field operation activities to ensure performance is maintained at or above actual quality</li>\r\n<li>Planning of corrective and preventive field maintenance</li>\r\n<li>Management of changes of the last mile network</li>\r\n<li>Enhancing End Customer experience in installations</li>\r\n<li>Enhance Network and Service Quality to improve customer satisfaction.</li>\r\n</ul>\r\n</div>\r\n<div class=\"ob-item col-md-6 col-xs-12\">\r\n<div class=\"g-head\">\r\n<h3>Business Objectives</h3>\r\n</div>\r\n<ul>\r\n<li>Enable Telco Operators to achieve desired quality at a foreseeable cost</li>\r\n<li>Help Telco Operator focus on business strategy and market competition</li>\r\n<li>Takes full responsibility of Telco Operator last mile network, including field implementation, day-to-day operations and maintenance.</li>\r\n</ul>\r\n</div>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    227,
    85,
    'sh_service_sixth_content',
    '<div class=\"ob-item col-md-6 col-xs-12\">\r\n<div class=\"g-head\">\r\n<h3>Operational focus</h3>\r\n</div>\r\n<ul>\r\n<li>Point solutions</li>\r\n<li>Cost saving</li>\r\n<li>Short term</li>\r\n<li>Bottom line</li>\r\n<li>Fixed price</li>\r\n<li>Break fix</li>\r\n<li>Vendor Like</li>\r\n</ul>\r\n<div class=\"g-head\">\r\n<h3>Business transformation</h3>\r\n</div>\r\n<ul>\r\n<li>Risk share</li>\r\n<li>Topline and bottom line</li>\r\n<li>Long term</li>\r\n<li>Solution based</li>\r\n<li>Partner based</li>\r\n<li>Capex opex</li>\r\n</ul>\r\n<a class=\"btn\" href=\"#\">Explore more</a></div>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    228,
    85,
    'sh_service_sixth_image',
    'http://localhost/bazynew/wp-content/uploads/2020/06/of.png'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    229,
    85,
    'sh_service_seventh_title',
    'Fixed Network Last Mile Services'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    230,
    85,
    'sh_service_seventh_content',
    '<ul>\r\n<li>Day-to-Day responsibility for Service Delivery and Network Management.</li>\r\n<li>Voice and Data network service provision.</li>\r\n<li>Proactive Voice and Data network monitoring and management.</li>\r\n<li>Corrective and Preventive maintenance for network elements.</li>\r\n<li>Service management including SLA/KPI and QoS management.</li>\r\n<li>Rehabilitation of network elements.</li>\r\n</ul>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    231,
    85,
    'sh_service_seventh_image',
    'http://localhost/bazynew/wp-content/uploads/2020/06/bt.jpg'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    232,
    85,
    'sh_service_eight_content',
    '<h3>Our Methodology</h3>\r\n<p>Managed service program methodology focuses on three main core elements<br />in development and implementing</p>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    233,
    85,
    'sh_service_eight_left',
    '                            <h3>Processes</h3>\r\n                            <p>Review, definition and implementation of field operation management model, norms, procedures and operative manuals that define how the field operation teams should act.</p>\r\n'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    234,
    85,
    'sh_service_eight_center',
    '                            <h3>Organization</h3>\r\n                            <p>Extension of the actual organization to cover self-management of the assigned network operation and control of the operation team performance (Completion of the defined norms and manuals).</p>\r\n'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    235,
    85,
    'sh_service_eight_right',
    '                            <h3>Systems</h3>\r\n                            <p>The system assessment and update to support the operation and information integrity and availability. </p>\r\n'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    236,
    85,
    'sh_service_ninth_content',
    '<h3 data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">Our Clients</h3>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">We take pride in serving well-known corporates<br />and organizations with first-class solutions across different industries in Saudi Arabia and the MENA region</p>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (237, 93, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (238, 93, '_edit_lock', '1592082188:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (239, 94, '_wp_attached_file', '2020/06/b1.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    240,
    94,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/b1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"b1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"b1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (241, 93, '_thumbnail_id', '94');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (242, 93, 'sh_services', 'a:1:{i:0;s:2:\"85\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (243, 95, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (244, 95, '_edit_lock', '1592082616:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (245, 96, '_wp_attached_file', '2020/06/b2.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    246,
    96,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/b2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"b2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"b2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (247, 85, '_thumbnail_id', '96');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (248, 95, 'sh_services', 'a:1:{i:0;s:2:\"85\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (249, 97, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (250, 97, '_edit_lock', '1592082446:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (251, 98, '_wp_attached_file', '2020/06/b3.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    252,
    98,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:14:\"2020/06/b3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"b3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"b3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (253, 97, '_thumbnail_id', '98');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (254, 97, 'sh_services', 'a:1:{i:0;s:2:\"85\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (255, 95, '_thumbnail_id', '96');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (256, 99, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (257, 99, '_edit_lock', '1592082543:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (258, 100, '_wp_attached_file', '2020/06/b4.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    259,
    100,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/b4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"b4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"b4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (260, 99, '_thumbnail_id', '100');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (261, 99, 'sh_services', 'a:1:{i:0;s:2:\"85\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (262, 101, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (263, 101, '_edit_lock', '1592082640:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (264, 102, '_wp_attached_file', '2020/06/b5.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    265,
    102,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/b5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"b5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"b5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (266, 101, '_thumbnail_id', '102');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (267, 101, 'sh_services', 'a:1:{i:0;s:2:\"85\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (268, 103, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (269, 103, '_edit_lock', '1592085728:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (270, 104, '_wp_attached_file', '2020/06/b6.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    271,
    104,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:14:\"2020/06/b6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"b6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"b6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (272, 103, '_thumbnail_id', '104');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (273, 103, 'sh_services', 'a:1:{i:0;s:2:\"85\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    274,
    85,
    'sh_service_third_url',
    'http://localhost/bazynew/service/tecchnology-infrastructure/#'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (275, 105, '_wp_attached_file', '2020/06/ol-img.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    276,
    105,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:18:\"2020/06/ol-img.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"ol-img-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ol-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"ol-img-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    296,
    8,
    'sh_industry_first_content',
    '                        <div class=\"g-head\">\r\n                            <h3>Oil & Gas</h3>\r\n                        </div>\r\n                        <h4>The Right Business Solutions to Achieve Success</h4>\r\n                        <p>Knowing the hassle oil and gas companies go through in terms of safety, process control, and work productivity we came up with integrated solutions and products to ensure the security and efficiency in the operational flow of your organization. </p>\r\n                        <p>Bazy has a proven record in delivering ICT systems and business products that help oil and gas projects to find, design, and build the right solutions that support their operational field, safety measurements, and process efficiency. </p>\r\n                        <p>We work, hand in hand, with our utility companies to enhance their work performance and push them to their full potential through our 30-year experience, expert employees, and effective solutions and products.  </p>\r\n                        <a href=\"#\" class=\"btn\">discover more</a>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    297,
    8,
    'sh_industry_first_image',
    'http://localhost/bazynew/wp-content/uploads/2020/06/ol-img.jpg'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    298,
    8,
    'sh_industry_second_content',
    '                    <h3>How Bazy Can Help</h3>\r\n                    <p>We provide integrated solutions in almost every aspect of oil, gas, and electrical needs:</p>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    299,
    8,
    'sh_industry_second_first',
    '                                <h3>Electro-Mechanical (MEP)</h3>\r\n                                <p>Our expert team will take responsibility of all electromechanical services, from engineering, designing, installation, and commissioning of all systems and technical requirements, such as AC/DC work, HVAC, low current, etc. Meanwhile, they will ensure maximum safety, reduce downtime, and save costs.</p>\r\n'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    300,
    8,
    'sh_industry_second_second',
    '                                <h3>Renewable Energy</h3>\r\n                                <p>We identify the suitable technological direction when it comes to renewable energy and energy demand management and build PV solar plants to deliver the maximum output.</p>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    301,
    8,
    'sh_industry_second_third',
    '                                <h3>Intelligent System Integration</h3>\r\n                                <p>We are a leading company in Intelligent System Integration (ISI) which helped various companies improve their performance, productivity, and safety through integrating essential intelligent systems, such as fuel / water distribution system, sewage / water treatment plants, lighting management systems. </p>\r\n'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (302, 106, '_wp_attached_file', '2020/06/1-2.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    303,
    106,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:92;s:6:\"height\";i:92;s:4:\"file\";s:15:\"2020/06/1-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (304, 107, '_wp_attached_file', '2020/06/2-2.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    305,
    107,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:69;s:6:\"height\";i:99;s:4:\"file\";s:15:\"2020/06/2-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (306, 108, '_wp_attached_file', '2020/06/3-2.png');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    307,
    108,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:99;s:4:\"file\";s:15:\"2020/06/3-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    308,
    8,
    'sh_industry_first_block_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/1-2.png'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    309,
    8,
    'sh_industry_second_block_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/2-2.png'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    310,
    8,
    'sh_industry_third_block_img',
    'http://localhost/bazynew/wp-content/uploads/2020/06/3-2.png'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    311,
    8,
    'sh_industry_third_content',
    '                        <h3>Our Projects</h3>\r\n                        <p>Multi-Disciple Solutions For Your Improvement</p>'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (312, 8, 'sh_industry_second_url', '#url');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (313, 109, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (314, 109, '_edit_lock', '1592143866:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (315, 110, '_wp_attached_file', '2020/06/proj1.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    316,
    110,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:777;s:6:\"height\";i:482;s:4:\"file\";s:17:\"2020/06/proj1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"proj1-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"proj1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"proj1-768x476.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:476;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (317, 109, '_thumbnail_id', '110');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (318, 109, 'sh_location', 'STC Compound – Mursalat');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (319, 109, 'sh_industries', 'a:1:{i:0;s:1:\"8\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (320, 111, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (321, 111, '_edit_lock', '1592143740:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (322, 111, 'sh_location', 'East, West, Central');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (323, 111, 'sh_industries', 'a:1:{i:0;s:1:\"8\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (324, 112, '_wp_attached_file', '2020/06/proj2.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    325,
    112,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:778;s:6:\"height\";i:484;s:4:\"file\";s:17:\"2020/06/proj2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"proj2-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"proj2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"proj2-768x478.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (326, 111, '_thumbnail_id', '112');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (327, 113, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (328, 113, '_edit_lock', '1592309702:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (329, 114, '_wp_attached_file', '2020/06/1.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    330,
    114,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:13:\"2020/06/1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (331, 115, '_wp_attached_file', '2020/06/2.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    332,
    115,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:13:\"2020/06/2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (333, 116, '_wp_attached_file', '2020/06/3.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    334,
    116,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:13:\"2020/06/3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (335, 117, '_wp_attached_file', '2020/06/4.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    336,
    117,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:13:\"2020/06/4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (337, 118, '_wp_attached_file', '2020/06/5.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    338,
    118,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:13:\"2020/06/5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (339, 119, '_wp_attached_file', '2020/06/6.jpg');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    340,
    119,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:13:\"2020/06/6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (341, 113, '_thumbnail_id', '114');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (342, 120, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (343, 120, '_edit_lock', '1592144217:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (344, 120, '_thumbnail_id', '115');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (345, 121, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (346, 121, '_thumbnail_id', '116');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (347, 121, '_edit_lock', '1592144288:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (348, 122, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (349, 122, '_edit_lock', '1592144348:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (350, 122, '_thumbnail_id', '117');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (351, 124, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (352, 124, '_edit_lock', '1592144435:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (353, 124, '_thumbnail_id', '118');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (354, 126, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (355, 126, '_thumbnail_id', '119');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (356, 126, '_edit_lock', '1592144556:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (357, 127, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (358, 127, '_edit_lock', '1592146852:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (359, 127, '_wp_page_template', 'page-products.php');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    1,
    1,
    '2020-06-09 11:07:24',
    '2020-06-09 11:07:24',
    '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',
    'Hello world!',
    '',
    'trash',
    'open',
    'open',
    '',
    'hello-world__trashed',
    '',
    '',
    '2020-06-10 13:11:59',
    '2020-06-10 13:11:59',
    '',
    0,
    'http://localhost/bazynew/?p=1',
    0,
    'post',
    '',
    1
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    2,
    1,
    '2020-06-09 11:07:24',
    '2020-06-09 11:07:24',
    '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/bazynew/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->',
    'Sample Page',
    '',
    'publish',
    'closed',
    'open',
    '',
    'sample-page',
    '',
    '',
    '2020-06-09 11:07:24',
    '2020-06-09 11:07:24',
    '',
    0,
    'http://localhost/bazynew/?page_id=2',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    3,
    1,
    '2020-06-09 11:07:24',
    '2020-06-09 11:07:24',
    '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/bazynew.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->',
    'Privacy Policy',
    '',
    'draft',
    'closed',
    'open',
    '',
    'privacy-policy',
    '',
    '',
    '2020-06-09 11:07:24',
    '2020-06-09 11:07:24',
    '',
    0,
    'http://localhost/bazynew/?page_id=3',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    5,
    1,
    '2020-06-09 12:53:25',
    '2020-06-09 12:53:25',
    'Empowering industries over than 30 years through providing the right business solutions that match your needs',
    'Transform Your Business with Tailored ICT Services',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'transform-your-business-with-tailored-ict-services',
    '',
    '',
    '2020-06-09 12:54:30',
    '2020-06-09 12:54:30',
    '',
    0,
    'http://localhost/bazynew/?post_type=slide&#038;p=5',
    0,
    'slide',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    6,
    1,
    '2020-06-09 12:49:37',
    '2020-06-09 12:49:37',
    '',
    'hero',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'hero',
    '',
    '',
    '2020-06-09 12:49:37',
    '2020-06-09 12:49:37',
    '',
    5,
    'http://localhost/bazynew/wp-content/uploads/2020/06/hero.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    7,
    1,
    '2020-06-09 12:55:00',
    '2020-06-09 12:55:00',
    'Empowering industries over than 30 years through providing the right business solutions that match your needs',
    'Transform Your Business with Tailored ICT Services  Copy',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'transform-your-business-with-tailored-ict-services-copy',
    '',
    '',
    '2020-06-09 12:55:00',
    '2020-06-09 12:55:00',
    '',
    0,
    'http://localhost/bazynew/slide/transform-your-business-with-tailored-ict-services-copy/',
    0,
    'slide',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    8,
    1,
    '2020-06-09 14:32:41',
    '2020-06-09 14:32:41',
    '',
    'Oil & Gas',
    'We Help You Enhance Your Company Performance Through Providing Connected Services, Energy Management Systems, Fuel And Water Distribution Solutions, Field Operation Services, And More',
    'publish',
    'closed',
    'closed',
    '',
    'oil-gas',
    '',
    '',
    '2020-06-14 11:44:11',
    '2020-06-14 11:44:11',
    '',
    0,
    'http://localhost/bazynew/?post_type=industry&#038;p=8',
    0,
    'industry',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    9,
    1,
    '2020-06-09 14:32:35',
    '2020-06-09 14:32:35',
    '',
    'i1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i1',
    '',
    '',
    '2020-06-09 14:32:35',
    '2020-06-09 14:32:35',
    '',
    8,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    10,
    1,
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    'i2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i2',
    '',
    '',
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    8,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i2.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    11,
    1,
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    'i3',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i3',
    '',
    '',
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    8,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i3.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    12,
    1,
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    'i4',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i4',
    '',
    '',
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    8,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i4.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    13,
    1,
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    'i5',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i5',
    '',
    '',
    '2020-06-09 14:32:36',
    '2020-06-09 14:32:36',
    '',
    8,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i5.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    14,
    1,
    '2020-06-09 14:32:37',
    '2020-06-09 14:32:37',
    '',
    'i6',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i6',
    '',
    '',
    '2020-06-09 14:32:37',
    '2020-06-09 14:32:37',
    '',
    8,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i6.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    15,
    1,
    '2020-06-09 14:33:06',
    '2020-06-09 14:33:06',
    '',
    'Electricity',
    'Offering Integrated Systems And Solutions That Include Lighting Management, Sustainable Energy, Power Quality Monitoring, AC/DC Systems, Etc. To Maximize Clients’ Profit And Business Value.',
    'publish',
    'closed',
    'closed',
    '',
    'electricity',
    '',
    '',
    '2020-06-09 14:33:06',
    '2020-06-09 14:33:06',
    '',
    0,
    'http://localhost/bazynew/?post_type=industry&#038;p=15',
    0,
    'industry',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    16,
    1,
    '2020-06-09 14:33:32',
    '2020-06-09 14:33:32',
    '',
    'Sustainable Energy',
    'Reduce Electrical Expenses And Maintain Safety With Our Renewable Energy Solutions Whether For Commercial, Industrial, Or Residential Purposes.',
    'publish',
    'closed',
    'closed',
    '',
    'sustainable-energy',
    '',
    '',
    '2020-06-09 14:33:32',
    '2020-06-09 14:33:32',
    '',
    0,
    'http://localhost/bazynew/?post_type=industry&#038;p=16',
    0,
    'industry',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    17,
    1,
    '2020-06-09 14:34:17',
    '2020-06-09 14:34:17',
    '',
    'Telecom',
    'Integration Of Telecommunication And ICT Systems Enable You Access, Transmit, And Store Information To Empower Your Business Transformation.',
    'publish',
    'closed',
    'closed',
    '',
    'telecom',
    '',
    '',
    '2020-06-09 14:34:17',
    '2020-06-09 14:34:17',
    '',
    0,
    'http://localhost/bazynew/?post_type=industry&#038;p=17',
    0,
    'industry',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    18,
    1,
    '2020-06-09 14:34:37',
    '2020-06-09 14:34:37',
    '',
    'Transport',
    'Ensuring High-End Solutions From Building Technical Building, Installing Security Measurements, To Supplying The Needed Products To Enhance Your Organization Capabilities.',
    'publish',
    'closed',
    'closed',
    '',
    'transport',
    '',
    '',
    '2020-06-09 14:34:37',
    '2020-06-09 14:34:37',
    '',
    0,
    'http://localhost/bazynew/?post_type=industry&#038;p=18',
    0,
    'industry',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    19,
    1,
    '2020-06-09 14:34:59',
    '2020-06-09 14:34:59',
    '',
    'Contracting',
    'Efficient Electromechanical Solutions For Contracting Companies To Enable You Perform In Higher And Fast-Paced Quality.',
    'publish',
    'closed',
    'closed',
    '',
    'contracting',
    '',
    '',
    '2020-06-09 14:34:59',
    '2020-06-09 14:34:59',
    '',
    0,
    'http://localhost/bazynew/?post_type=industry&#038;p=19',
    0,
    'industry',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    20,
    1,
    '2020-06-09 20:30:35',
    '2020-06-09 20:30:35',
    '',
    'AXIS',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'axis',
    '',
    '',
    '2020-06-09 20:30:35',
    '2020-06-09 20:30:35',
    '',
    0,
    'http://localhost/bazynew/?post_type=partner&#038;p=20',
    0,
    'partner',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    21,
    1,
    '2020-06-09 20:30:25',
    '2020-06-09 20:30:25',
    '',
    '1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '1',
    '',
    '',
    '2020-06-09 20:30:25',
    '2020-06-09 20:30:25',
    '',
    20,
    'http://localhost/bazynew/wp-content/uploads/2020/06/1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    22,
    1,
    '2020-06-09 20:30:26',
    '2020-06-09 20:30:26',
    '',
    '2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '2',
    '',
    '',
    '2020-06-09 20:30:26',
    '2020-06-09 20:30:26',
    '',
    20,
    'http://localhost/bazynew/wp-content/uploads/2020/06/2.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    23,
    1,
    '2020-06-09 20:30:26',
    '2020-06-09 20:30:26',
    '',
    '3',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '3',
    '',
    '',
    '2020-06-09 20:30:26',
    '2020-06-09 20:30:26',
    '',
    20,
    'http://localhost/bazynew/wp-content/uploads/2020/06/3.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    24,
    1,
    '2020-06-09 20:30:26',
    '2020-06-09 20:30:26',
    '',
    '4',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '4',
    '',
    '',
    '2020-06-09 20:30:26',
    '2020-06-09 20:30:26',
    '',
    20,
    'http://localhost/bazynew/wp-content/uploads/2020/06/4.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    25,
    1,
    '2020-06-09 20:30:27',
    '2020-06-09 20:30:27',
    '',
    '5',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '5',
    '',
    '',
    '2020-06-09 20:30:27',
    '2020-06-09 20:30:27',
    '',
    20,
    'http://localhost/bazynew/wp-content/uploads/2020/06/5.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    26,
    1,
    '2020-06-09 20:30:27',
    '2020-06-09 20:30:27',
    '',
    '6',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '6',
    '',
    '',
    '2020-06-09 20:30:27',
    '2020-06-09 20:30:27',
    '',
    20,
    'http://localhost/bazynew/wp-content/uploads/2020/06/6.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    27,
    1,
    '2020-06-09 20:31:06',
    '2020-06-09 20:31:06',
    '',
    'Schneider',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'schneider',
    '',
    '',
    '2020-06-09 20:31:06',
    '2020-06-09 20:31:06',
    '',
    0,
    'http://localhost/bazynew/?post_type=partner&#038;p=27',
    0,
    'partner',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    28,
    1,
    '2020-06-09 20:31:36',
    '2020-06-09 20:31:36',
    '',
    'CISCO',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'cisco',
    '',
    '',
    '2020-06-09 21:14:53',
    '2020-06-09 21:14:53',
    '',
    0,
    'http://localhost/bazynew/?post_type=partner&#038;p=28',
    0,
    'partner',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    29,
    1,
    '2020-06-09 20:32:06',
    '2020-06-09 20:32:06',
    '',
    'ERICSSON',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'ericsson',
    '',
    '',
    '2020-06-09 20:32:06',
    '2020-06-09 20:32:06',
    '',
    0,
    'http://localhost/bazynew/?post_type=partner&#038;p=29',
    0,
    'partner',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    30,
    1,
    '2020-06-09 20:32:32',
    '2020-06-09 20:32:32',
    '',
    'HUAWEI',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'huawei',
    '',
    '',
    '2020-06-09 20:32:32',
    '2020-06-09 20:32:32',
    '',
    0,
    'http://localhost/bazynew/?post_type=partner&#038;p=30',
    0,
    'partner',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    31,
    1,
    '2020-06-09 20:33:46',
    '2020-06-09 20:33:46',
    '',
    'STC',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'stc',
    '',
    '',
    '2020-06-09 20:33:46',
    '2020-06-09 20:33:46',
    '',
    0,
    'http://localhost/bazynew/?post_type=partner&#038;p=31',
    0,
    'partner',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    32,
    1,
    '2020-06-09 20:36:15',
    '2020-06-09 20:36:15',
    'This plugin is amazing with the current version, I can’t imagine it, how cool will it be when you finish the all',
    'Khaled Juffali',
    'GM at telecom Corporate',
    'publish',
    'closed',
    'closed',
    '',
    'khaled-juffali',
    '',
    '',
    '2020-06-09 21:21:13',
    '2020-06-09 21:21:13',
    '',
    0,
    'http://localhost/bazynew/?post_type=testimonial&#038;p=32',
    0,
    'testimonial',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    33,
    1,
    '2020-06-09 20:36:11',
    '2020-06-09 20:36:11',
    '',
    'av4',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'av4',
    '',
    '',
    '2020-06-09 20:36:11',
    '2020-06-09 20:36:11',
    '',
    32,
    'http://localhost/bazynew/wp-content/uploads/2020/06/av4.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    34,
    1,
    '2020-06-09 20:36:11',
    '2020-06-09 20:36:11',
    '',
    'av1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'av1',
    '',
    '',
    '2020-06-09 20:36:11',
    '2020-06-09 20:36:11',
    '',
    32,
    'http://localhost/bazynew/wp-content/uploads/2020/06/av1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    35,
    1,
    '2020-06-09 20:36:11',
    '2020-06-09 20:36:11',
    '',
    'av2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'av2',
    '',
    '',
    '2020-06-09 20:36:11',
    '2020-06-09 20:36:11',
    '',
    32,
    'http://localhost/bazynew/wp-content/uploads/2020/06/av2.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    36,
    1,
    '2020-06-09 20:37:14',
    '2020-06-09 20:37:14',
    'This plugin is amazing with the current version, I can’t imagine it, how cool will it be when you finish the all',
    'Aly Khaldy',
    'GM at telecom Corporate',
    'publish',
    'closed',
    'closed',
    '',
    'aly-khaldy',
    '',
    '',
    '2020-06-09 21:21:29',
    '2020-06-09 21:21:29',
    '',
    0,
    'http://localhost/bazynew/?post_type=testimonial&#038;p=36',
    0,
    'testimonial',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    37,
    1,
    '2020-06-09 20:37:53',
    '2020-06-09 20:37:53',
    'This plugin is amazing with the current version, I can’t imagine it, how cool will it be when you finish the all',
    'Ahmed Ali',
    'GM at telecom Corporate',
    'publish',
    'closed',
    'closed',
    '',
    'ahmed-ali',
    '',
    '',
    '2020-06-09 21:21:43',
    '2020-06-09 21:21:43',
    '',
    0,
    'http://localhost/bazynew/?post_type=testimonial&#038;p=37',
    0,
    'testimonial',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    38,
    1,
    '2020-06-09 20:38:23',
    '2020-06-09 20:38:23',
    'This plugin is amazing with the current version, I can’t imagine it, how cool will it be when you finish the all',
    'Khaled Juffali',
    'GM at telecom Corporate',
    'publish',
    'closed',
    'closed',
    '',
    'khaled-juffali-2',
    '',
    '',
    '2020-06-09 21:21:58',
    '2020-06-09 21:21:58',
    '',
    0,
    'http://localhost/bazynew/?post_type=testimonial&#038;p=38',
    0,
    'testimonial',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    39,
    1,
    '2020-06-09 20:39:03',
    '2020-06-09 20:39:03',
    'This plugin is amazing with the current version, I can’t imagine it, how cool will it be when you finish the all',
    'Aly Khaldy',
    'GM at telecom Corporate',
    'publish',
    'closed',
    'closed',
    '',
    'aly-khaldy-2',
    '',
    '',
    '2020-06-09 21:22:14',
    '2020-06-09 21:22:14',
    '',
    0,
    'http://localhost/bazynew/?post_type=testimonial&#038;p=39',
    0,
    'testimonial',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    40,
    1,
    '2020-06-09 20:38:55',
    '2020-06-09 20:38:55',
    '<span bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:28,&quot;w&quot;:757,&quot;h&quot;:19,&quot;abs_x&quot;:193,&quot;abs_y&quot;:349}\">This plugin is amazing with the current version, I can’t imagine it, how cool will it be when you finish the all</span>',
    'Ahmed Ali',
    'GM at telecom Corporate',
    'inherit',
    'closed',
    'closed',
    '',
    '37-autosave-v1',
    '',
    '',
    '2020-06-09 20:38:55',
    '2020-06-09 20:38:55',
    '',
    37,
    'http://localhost/bazynew/2020/06/09/37-autosave-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    41,
    1,
    '2020-06-09 20:45:42',
    '2020-06-09 20:45:42',
    '',
    'Home',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'home',
    '',
    '',
    '2020-06-09 20:45:42',
    '2020-06-09 20:45:42',
    '',
    0,
    'http://localhost/bazynew/?page_id=41',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    42,
    1,
    '2020-06-09 20:45:42',
    '2020-06-09 20:45:42',
    '',
    'Home',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '41-revision-v1',
    '',
    '',
    '2020-06-09 20:45:42',
    '2020-06-09 20:45:42',
    '',
    41,
    'http://localhost/bazynew/2020/06/09/41-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    43,
    1,
    '2020-06-09 22:00:19',
    '2020-06-09 22:00:19',
    '',
    'track',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'track',
    '',
    '',
    '2020-06-09 22:00:19',
    '2020-06-09 22:00:19',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/track.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    44,
    1,
    '2020-06-09 22:11:50',
    '2020-06-09 22:11:50',
    '',
    'faveicon',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'faveicon',
    '',
    '',
    '2020-06-09 22:11:50',
    '2020-06-09 22:11:50',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/faveicon.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    45,
    1,
    '2020-06-09 22:11:50',
    '2020-06-09 22:11:50',
    '',
    'logo',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'logo',
    '',
    '',
    '2020-06-09 22:11:50',
    '2020-06-09 22:11:50',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/logo.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    46,
    1,
    '2020-06-10 09:52:56',
    '2020-06-10 09:52:56',
    '<div class=\"g-head\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:28,&quot;w&quot;:1396,&quot;h&quot;:28,&quot;abs_x&quot;:193,&quot;abs_y&quot;:349}\">\r\n<h3>Company Overview</h3>\r\n</div>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"300\">Established in 1989 in Saudi Arabia, Bazy Trading &amp; Contracting Co. Ltd is considered to be a leading company in managed services, ICT infrastructure projects (Fixed, Wireless, and Mobile), system integration engineering, electrical power, renewable energy solutions, digital services, and more.</p>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">Having more than 1200 employees in different domains with over 30 years of experience, Bazy is classified as a \"first-class contractor\" according to the classification of contractors by the Ministry of Municipal and Rural Affairs (MOMRA) for telecommunications projects.</p>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"500\">We are specialized in providing turnkey solutions starting from planning and designing; supplying and implementation; installation and maintenance; testing and commissioning to after-service support.</p>\r\n<a class=\"btn\" href=\"#\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">contact us</a>',
    'About Us',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'about-us',
    '',
    '',
    '2020-06-10 09:57:25',
    '2020-06-10 09:57:25',
    '',
    0,
    'http://localhost/bazynew/?page_id=46',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    47,
    1,
    '2020-06-10 09:52:56',
    '2020-06-10 09:52:56',
    '',
    'About Us',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '46-revision-v1',
    '',
    '',
    '2020-06-10 09:52:56',
    '2020-06-10 09:52:56',
    '',
    46,
    'http://localhost/bazynew/2020/06/10/46-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    48,
    1,
    '2020-06-10 09:57:15',
    '2020-06-10 09:57:15',
    '                        <div class=\"g-head\"  data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">\r\n                            <h3>Company Overview</h3>\r\n                        </div>\r\n                        <p  data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"300\">Established in 1989 in Saudi Arabia, Bazy Trading & Contracting Co. Ltd is considered to be a leading company in managed services, ICT infrastructure projects (Fixed, Wireless, and Mobile), system integration engineering, electrical power, renewable energy solutions, digital services, and more.</p>\r\n                        <p  data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">Having more than 1200 employees in different domains with over 30 years of experience, Bazy is classified as a \"first-class contractor\" according to the classification of contractors by the Ministry of Municipal and Rural Affairs (MOMRA) for telecommunications projects.</p>\r\n                        <p  data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"500\">We are specialized in providing turnkey solutions starting from planning and designing; supplying and implementation; installation and maintenance; testing and commissioning to after-service support.</p>\r\n                        <a href=\"#\" class=\"btn\"  data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">contact us</a>',
    'About Us',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '46-revision-v1',
    '',
    '',
    '2020-06-10 09:57:15',
    '2020-06-10 09:57:15',
    '',
    46,
    'http://localhost/bazynew/2020/06/10/46-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    49,
    1,
    '2020-06-10 09:57:25',
    '2020-06-10 09:57:25',
    '<div class=\"g-head\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:28,&quot;w&quot;:1396,&quot;h&quot;:28,&quot;abs_x&quot;:193,&quot;abs_y&quot;:349}\">\r\n<h3>Company Overview</h3>\r\n</div>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"300\">Established in 1989 in Saudi Arabia, Bazy Trading &amp; Contracting Co. Ltd is considered to be a leading company in managed services, ICT infrastructure projects (Fixed, Wireless, and Mobile), system integration engineering, electrical power, renewable energy solutions, digital services, and more.</p>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">Having more than 1200 employees in different domains with over 30 years of experience, Bazy is classified as a \"first-class contractor\" according to the classification of contractors by the Ministry of Municipal and Rural Affairs (MOMRA) for telecommunications projects.</p>\r\n<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"500\">We are specialized in providing turnkey solutions starting from planning and designing; supplying and implementation; installation and maintenance; testing and commissioning to after-service support.</p>\r\n<a class=\"btn\" href=\"#\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">contact us</a>',
    'About Us',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '46-revision-v1',
    '',
    '',
    '2020-06-10 09:57:25',
    '2020-06-10 09:57:25',
    '',
    46,
    'http://localhost/bazynew/2020/06/10/46-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    50,
    1,
    '2020-06-10 10:01:00',
    '2020-06-10 10:01:00',
    '',
    'i2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i2-2',
    '',
    '',
    '2020-06-10 10:01:00',
    '2020-06-10 10:01:00',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i2-1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    51,
    1,
    '2020-06-10 10:01:00',
    '2020-06-10 10:01:00',
    '',
    'a1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'a1',
    '',
    '',
    '2020-06-10 10:01:00',
    '2020-06-10 10:01:00',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/a1.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    52,
    1,
    '2020-06-10 10:01:00',
    '2020-06-10 10:01:00',
    '',
    'a2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'a2',
    '',
    '',
    '2020-06-10 10:01:00',
    '2020-06-10 10:01:00',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/a2.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    53,
    1,
    '2020-06-10 10:01:01',
    '2020-06-10 10:01:01',
    '',
    'conto',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'conto',
    '',
    '',
    '2020-06-10 10:01:01',
    '2020-06-10 10:01:01',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/conto.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    54,
    1,
    '2020-06-10 10:01:01',
    '2020-06-10 10:01:01',
    '',
    'i1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'i1-2',
    '',
    '',
    '2020-06-10 10:01:01',
    '2020-06-10 10:01:01',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/i1-1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    55,
    1,
    '2020-06-10 11:01:40',
    '2020-06-10 11:01:40',
    '<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">We take pride in serving well-known corporates and organizations with first-class solutions across different industries in Saudi Arabia and the MENA region</p>\r\n<a class=\"btn\" href=\"#\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"600\">contact us</a>',
    'Clients And Partners',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'clients-and-partners',
    '',
    '',
    '2020-06-10 11:01:45',
    '2020-06-10 11:01:45',
    '',
    0,
    'http://localhost/bazynew/?page_id=55',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    56,
    1,
    '2020-06-10 11:00:12',
    '2020-06-10 11:00:12',
    '',
    'overview',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'overview',
    '',
    '',
    '2020-06-10 11:00:12',
    '2020-06-10 11:00:12',
    '',
    55,
    'http://localhost/bazynew/wp-content/uploads/2020/06/overview.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    57,
    1,
    '2020-06-10 11:01:40',
    '2020-06-10 11:01:40',
    '<p data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"400\">We take pride in serving well-known corporates and organizations with first-class solutions across different industries in Saudi Arabia and the MENA region</p>\r\n<a class=\"btn\" href=\"#\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"600\">contact us</a>',
    'Clients And Partners',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '55-revision-v1',
    '',
    '',
    '2020-06-10 11:01:40',
    '2020-06-10 11:01:40',
    '',
    55,
    'http://localhost/bazynew/2020/06/10/55-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    58,
    1,
    '2020-06-10 13:11:59',
    '2020-06-10 13:11:59',
    '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',
    'Hello world!',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-revision-v1',
    '',
    '',
    '2020-06-10 13:11:59',
    '2020-06-10 13:11:59',
    '',
    1,
    'http://localhost/bazynew/2020/06/10/1-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    59,
    1,
    '2020-06-10 13:13:07',
    '2020-06-10 13:13:07',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.',
    'Design Hub',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.',
    'publish',
    'open',
    'open',
    '',
    'design-hub',
    '',
    '',
    '2020-06-10 13:13:07',
    '2020-06-10 13:13:07',
    '',
    0,
    'http://localhost/bazynew/?p=59',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    60,
    1,
    '2020-06-10 13:12:56',
    '2020-06-10 13:12:56',
    '',
    '1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '1-2',
    '',
    '',
    '2020-06-10 13:12:56',
    '2020-06-10 13:12:56',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/1-1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    61,
    1,
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    '2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '2-2',
    '',
    '',
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/2-1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    62,
    1,
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    '3',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '3-2',
    '',
    '',
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/3-1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    63,
    1,
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    '4',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '4-2',
    '',
    '',
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/4-1.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    64,
    1,
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    'n1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'n1',
    '',
    '',
    '2020-06-10 13:12:57',
    '2020-06-10 13:12:57',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/n1.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    65,
    1,
    '2020-06-10 13:12:58',
    '2020-06-10 13:12:58',
    '',
    'n2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'n2',
    '',
    '',
    '2020-06-10 13:12:58',
    '2020-06-10 13:12:58',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/n2.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    66,
    1,
    '2020-06-10 13:12:58',
    '2020-06-10 13:12:58',
    '',
    'n3',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'n3',
    '',
    '',
    '2020-06-10 13:12:58',
    '2020-06-10 13:12:58',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/n3.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    67,
    1,
    '2020-06-10 13:12:58',
    '2020-06-10 13:12:58',
    '',
    'n4',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'n4',
    '',
    '',
    '2020-06-10 13:12:58',
    '2020-06-10 13:12:58',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/n4.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    68,
    1,
    '2020-06-10 13:12:59',
    '2020-06-10 13:12:59',
    '',
    'n5',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'n5',
    '',
    '',
    '2020-06-10 13:12:59',
    '2020-06-10 13:12:59',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/n5.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    69,
    1,
    '2020-06-10 13:12:59',
    '2020-06-10 13:12:59',
    '',
    'n6',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'n6',
    '',
    '',
    '2020-06-10 13:12:59',
    '2020-06-10 13:12:59',
    '',
    59,
    'http://localhost/bazynew/wp-content/uploads/2020/06/n6.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    70,
    1,
    '2020-06-10 13:13:07',
    '2020-06-10 13:13:07',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.',
    'Design Hub',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.',
    'inherit',
    'closed',
    'closed',
    '',
    '59-revision-v1',
    '',
    '',
    '2020-06-10 13:13:07',
    '2020-06-10 13:13:07',
    '',
    59,
    'http://localhost/bazynew/2020/06/10/59-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    71,
    1,
    '2020-06-10 13:13:58',
    '2020-06-10 13:13:58',
    '<div class=\"block col-md-4 col-xs-12 aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">\r\n<div class=\"inner\">\r\n<div class=\"i-data\">\r\n<div class=\"info\">\r\n\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>',
    'Techne Summit',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.',
    'publish',
    'open',
    'open',
    '',
    'techne-summit',
    '',
    '',
    '2020-06-10 13:13:58',
    '2020-06-10 13:13:58',
    '',
    0,
    'http://localhost/bazynew/?p=71',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    72,
    1,
    '2020-06-10 13:13:58',
    '2020-06-10 13:13:58',
    '<div class=\"block col-md-4 col-xs-12 aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\">\r\n<div class=\"inner\">\r\n<div class=\"i-data\">\r\n<div class=\"info\">\r\n\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>',
    'Techne Summit',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways.',
    'inherit',
    'closed',
    'closed',
    '',
    '71-revision-v1',
    '',
    '',
    '2020-06-10 13:13:58',
    '2020-06-10 13:13:58',
    '',
    71,
    'http://localhost/bazynew/2020/06/10/71-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    73,
    1,
    '2020-06-10 13:14:59',
    '2020-06-10 13:14:59',
    '<div class=\"block col-md-4 col-xs-12 aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:64,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n<div class=\"inner\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:64,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n<div class=\"i-data\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:64,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n<div class=\"info\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:24,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>',
    'Bazi Launch',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways',
    'publish',
    'open',
    'open',
    '',
    'bazi-launch',
    '',
    '',
    '2020-06-10 13:14:59',
    '2020-06-10 13:14:59',
    '',
    0,
    'http://localhost/bazynew/?p=73',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    74,
    1,
    '2020-06-10 13:14:59',
    '2020-06-10 13:14:59',
    '<div class=\"block col-md-4 col-xs-12 aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\" data-aos-delay=\"200\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:64,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n<div class=\"inner\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:64,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n<div class=\"i-data\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:64,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n<div class=\"info\" bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:26,&quot;w&quot;:1396,&quot;h&quot;:24,&quot;abs_x&quot;:193,&quot;abs_y&quot;:286}\">\r\n\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>',
    'Bazi Launch',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways SIP Gateways',
    'inherit',
    'closed',
    'closed',
    '',
    '73-revision-v1',
    '',
    '',
    '2020-06-10 13:14:59',
    '2020-06-10 13:14:59',
    '',
    73,
    'http://localhost/bazynew/2020/06/10/73-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    75,
    1,
    '2020-06-10 13:16:15',
    '2020-06-10 13:16:15',
    '<span>Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\n</span>',
    'Video Meeting',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'publish',
    'open',
    'open',
    '',
    'video-meeting',
    '',
    '',
    '2020-06-10 13:16:15',
    '2020-06-10 13:16:15',
    '',
    0,
    'http://localhost/bazynew/?p=75',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    76,
    1,
    '2020-06-10 13:16:15',
    '2020-06-10 13:16:15',
    '<span>Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\n</span>',
    'Video Meeting',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'inherit',
    'closed',
    'closed',
    '',
    '75-revision-v1',
    '',
    '',
    '2020-06-10 13:16:15',
    '2020-06-10 13:16:15',
    '',
    75,
    'http://localhost/bazynew/2020/06/10/75-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    77,
    1,
    '2020-06-10 13:16:36',
    '2020-06-10 13:16:36',
    '<span bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:12,&quot;w&quot;:547,&quot;h&quot;:91,&quot;abs_x&quot;:193,&quot;abs_y&quot;:272}\">Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\n\r\n</span>',
    'Techne Summit',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'publish',
    'open',
    'open',
    '',
    'techne-summit-2',
    '',
    '',
    '2020-06-10 13:16:36',
    '2020-06-10 13:16:36',
    '',
    0,
    'http://localhost/bazynew/?p=77',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    78,
    1,
    '2020-06-10 13:16:36',
    '2020-06-10 13:16:36',
    '<span bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:12,&quot;w&quot;:547,&quot;h&quot;:91,&quot;abs_x&quot;:193,&quot;abs_y&quot;:272}\">Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\n\r\n</span>',
    'Techne Summit',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'inherit',
    'closed',
    'closed',
    '',
    '77-revision-v1',
    '',
    '',
    '2020-06-10 13:16:36',
    '2020-06-10 13:16:36',
    '',
    77,
    'http://localhost/bazynew/2020/06/10/77-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    79,
    1,
    '2020-06-10 13:17:14',
    '2020-06-10 13:17:14',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'Techne Summit',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'publish',
    'open',
    'open',
    '',
    'techne-summit-3',
    '',
    '',
    '2020-06-10 13:17:14',
    '2020-06-10 13:17:14',
    '',
    0,
    'http://localhost/bazynew/?p=79',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    80,
    1,
    '2020-06-10 13:17:14',
    '2020-06-10 13:17:14',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways\r\nSupply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'Techne Summit',
    'Supply And Installation Of Last Mile Services Including Fiber VOIP Gateways',
    'inherit',
    'closed',
    'closed',
    '',
    '79-revision-v1',
    '',
    '',
    '2020-06-10 13:17:14',
    '2020-06-10 13:17:14',
    '',
    79,
    'http://localhost/bazynew/2020/06/10/79-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    81,
    1,
    '2020-06-10 13:23:30',
    '2020-06-10 13:23:30',
    '',
    'News',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'news',
    '',
    '',
    '2020-06-10 13:23:30',
    '2020-06-10 13:23:30',
    '',
    0,
    'http://localhost/bazynew/?page_id=81',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    82,
    1,
    '2020-06-10 13:23:30',
    '2020-06-10 13:23:30',
    '',
    'News',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '81-revision-v1',
    '',
    '',
    '2020-06-10 13:23:30',
    '2020-06-10 13:23:30',
    '',
    81,
    'http://localhost/bazynew/2020/06/10/81-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    83,
    1,
    '2020-06-12 21:19:06',
    '0000-00-00 00:00:00',
    '',
    'Auto Draft',
    '',
    'auto-draft',
    'closed',
    'closed',
    '',
    '',
    '',
    '',
    '2020-06-12 21:19:06',
    '0000-00-00 00:00:00',
    '',
    0,
    'http://localhost/bazynew/?post_type=service&p=83',
    0,
    'service',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    84,
    1,
    '2020-06-12 21:24:16',
    '0000-00-00 00:00:00',
    '',
    'Auto Draft',
    '',
    'auto-draft',
    'closed',
    'closed',
    '',
    '',
    '',
    '',
    '2020-06-12 21:24:16',
    '0000-00-00 00:00:00',
    '',
    0,
    'http://localhost/bazynew/?post_type=service&p=84',
    0,
    'service',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    85,
    1,
    '2020-06-12 21:35:25',
    '2020-06-12 21:35:25',
    '',
    'Tecchnology Infrastructure',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'tecchnology-infrastructure',
    '',
    '',
    '2020-06-13 21:50:34',
    '2020-06-13 21:50:34',
    '',
    0,
    'http://localhost/bazynew/?post_type=service&#038;p=85',
    0,
    'service',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    86,
    1,
    '2020-06-12 21:59:40',
    '2020-06-12 21:59:40',
    '',
    'cover',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'cover',
    '',
    '',
    '2020-06-12 21:59:40',
    '2020-06-12 21:59:40',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/cover.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    87,
    1,
    '2020-06-12 22:13:33',
    '2020-06-12 22:13:33',
    '',
    'eff',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'eff',
    '',
    '',
    '2020-06-12 22:13:33',
    '2020-06-12 22:13:33',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/eff.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    88,
    1,
    '2020-06-12 23:20:24',
    '2020-06-12 23:20:24',
    '',
    'of',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'of',
    '',
    '',
    '2020-06-12 23:20:24',
    '2020-06-12 23:20:24',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/of.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    89,
    1,
    '2020-06-12 23:28:49',
    '2020-06-12 23:28:49',
    '',
    'bt',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'bt',
    '',
    '',
    '2020-06-12 23:28:49',
    '2020-06-12 23:28:49',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/bt.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    90,
    1,
    '2020-06-13 10:38:02',
    '2020-06-13 10:38:02',
    '',
    'Tecchnology Infrastructure',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '85-autosave-v1',
    '',
    '',
    '2020-06-13 10:38:02',
    '2020-06-13 10:38:02',
    '',
    85,
    'http://localhost/bazynew/2020/06/13/85-autosave-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    91,
    1,
    '2020-06-13 10:38:42',
    '2020-06-13 10:38:42',
    '',
    'mp1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'mp1',
    '',
    '',
    '2020-06-13 10:38:42',
    '2020-06-13 10:38:42',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/mp1.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    92,
    1,
    '2020-06-13 10:38:44',
    '2020-06-13 10:38:44',
    '',
    'mp2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'mp2',
    '',
    '',
    '2020-06-13 10:38:44',
    '2020-06-13 10:38:44',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/mp2.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    93,
    1,
    '2020-06-13 20:38:08',
    '2020-06-13 20:38:08',
    'Design, installation, configuration, testing, commissioning &amp; maintaining of all types of network infrastructure professional services for routers.\r\n\r\nDesign, installation, configuration, testing, commissioning &amp; maintaining of all types of network infrastructure professional services for routers.\r\n\r\nDesign, installation, configuration, testing, commissioning &amp; maintaining of all types of network infrastructure professional services for routers.',
    'Fixed Telecom Networking',
    'Design, installation, configuration, testing, commissioning & maintaining of all types of network infrastructure professional services for routers.',
    'publish',
    'closed',
    'closed',
    '',
    'fixed-telecom-networking',
    '',
    '',
    '2020-06-13 21:05:11',
    '2020-06-13 21:05:11',
    '',
    0,
    'http://localhost/bazynew/?post_type=benefit&#038;p=93',
    0,
    'benefit',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    94,
    1,
    '2020-06-13 20:38:00',
    '2020-06-13 20:38:00',
    '',
    'b1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'b1',
    '',
    '',
    '2020-06-13 20:38:00',
    '2020-06-13 20:38:00',
    '',
    93,
    'http://localhost/bazynew/wp-content/uploads/2020/06/b1.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    95,
    1,
    '2020-06-13 21:08:46',
    '2020-06-13 21:08:46',
    'Supply and installation of last mile services including ADSL/HDSL, Fiber ONT, VOIP Gateways, FXS / FXO gateways, SIP gateways, WI-FI, and VOLTE.\r\n\r\nSupply and installation of last mile services including ADSL/HDSL, Fiber ONT, VOIP Gateways, FXS / FXO gateways, SIP gateways, WI-FI, and VOLTE.\r\n\r\nSupply and installation of last mile services including ADSL/HDSL, Fiber ONT, VOIP Gateways, FXS / FXO gateways, SIP gateways, WI-FI, and VOLTE.',
    'Broadband Services',
    'Supply and installation of last mile services including ADSL/HDSL, Fiber ONT, VOIP Gateways, FXS / FXO gateways, SIP gateways, WI-FI, and VOLTE.',
    'publish',
    'closed',
    'closed',
    '',
    'broadband-services',
    '',
    '',
    '2020-06-13 21:10:14',
    '2020-06-13 21:10:14',
    '',
    0,
    'http://localhost/bazynew/?post_type=benefit&#038;p=95',
    0,
    'benefit',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    96,
    1,
    '2020-06-13 21:07:54',
    '2020-06-13 21:07:54',
    '',
    'b2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'b2',
    '',
    '',
    '2020-06-13 21:07:54',
    '2020-06-13 21:07:54',
    '',
    85,
    'http://localhost/bazynew/wp-content/uploads/2020/06/b2.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    97,
    1,
    '2020-06-13 21:09:39',
    '2020-06-13 21:09:39',
    'Installations, configuration, testing, commissioning and maintenance of smart parking, fleet, sensors, smart Wi-Fi, and smart controlling.\r\n\r\nInstallations, configuration, testing, commissioning and maintenance of smart parking, fleet, sensors, smart Wi-Fi, and smart controlling.\r\n\r\nInstallations, configuration, testing, commissioning and maintenance of smart parking, fleet, sensors, smart Wi-Fi, and smart controlling.\r\n\r\nInstallations, configuration, testing, commissioning and maintenance of smart parking, fleet, sensors, smart Wi-Fi, and smart controlling.',
    'IoT Services',
    'Installations, configuration, testing, commissioning and maintenance of smart parking, fleet, sensors, smart Wi-Fi, and smart controlling. ',
    'publish',
    'closed',
    'closed',
    '',
    'iot-services',
    '',
    '',
    '2020-06-13 21:09:39',
    '2020-06-13 21:09:39',
    '',
    0,
    'http://localhost/bazynew/?post_type=benefit&#038;p=97',
    0,
    'benefit',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    98,
    1,
    '2020-06-13 21:09:23',
    '2020-06-13 21:09:23',
    '',
    'b3',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'b3',
    '',
    '',
    '2020-06-13 21:09:23',
    '2020-06-13 21:09:23',
    '',
    97,
    'http://localhost/bazynew/wp-content/uploads/2020/06/b3.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    99,
    1,
    '2020-06-13 21:11:11',
    '2020-06-13 21:11:11',
    '                                <p>Planning, survey, design, and implementation of FTTX networks and testing for telecom operators and whole sales operators. </p>\r\n                                <p>Planning, survey, design, and implementation of FTTX networks and testing for telecom operators and whole sales operators. </p>\r\n                                <p>Planning, survey, design, and implementation of FTTX networks and testing for telecom operators and whole sales operators. </p>\r\n',
    'Outside Plant OSP',
    'Planning, survey, design, and implementation of FTTX networks and testing for telecom operators and whole sales operators.',
    'publish',
    'closed',
    'closed',
    '',
    'outside-plant-osp',
    '',
    '',
    '2020-06-13 21:11:11',
    '2020-06-13 21:11:11',
    '',
    0,
    'http://localhost/bazynew/?post_type=benefit&#038;p=99',
    0,
    'benefit',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    100,
    1,
    '2020-06-13 21:10:53',
    '2020-06-13 21:10:53',
    '',
    'b4',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'b4',
    '',
    '',
    '2020-06-13 21:10:53',
    '2020-06-13 21:10:53',
    '',
    99,
    'http://localhost/bazynew/wp-content/uploads/2020/06/b4.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    101,
    1,
    '2020-06-13 21:12:49',
    '2020-06-13 21:12:49',
    '                                <p>Design, planning, survey, design, and implementation of structured cabling systems, fiber optic, and copper network.</p>\r\n                                <p>Design, planning, survey, design, and implementation of structured cabling systems, fiber optic, and copper network.</p>\r\n                                <p>Design, planning, survey, design, and implementation of structured cabling systems, fiber optic, and copper network.</p>\r\n',
    'Structural Cabling',
    'Design, planning, survey, design, and implementation of structured cabling systems, fiber optic, and copper network.',
    'publish',
    'closed',
    'closed',
    '',
    'structural-cabling',
    '',
    '',
    '2020-06-13 21:12:49',
    '2020-06-13 21:12:49',
    '',
    0,
    'http://localhost/bazynew/?post_type=benefit&#038;p=101',
    0,
    'benefit',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    102,
    1,
    '2020-06-13 21:12:36',
    '2020-06-13 21:12:36',
    '',
    'b5',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'b5',
    '',
    '',
    '2020-06-13 21:12:36',
    '2020-06-13 21:12:36',
    '',
    101,
    'http://localhost/bazynew/wp-content/uploads/2020/06/b5.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    103,
    1,
    '2020-06-13 21:13:57',
    '2020-06-13 21:13:57',
    '                                <p>Helping telecom operators and service providers in business operations, including costumer site survey and feasibility studies.</p>\r\n                                <p>Helping telecom operators and service providers in business operations, including costumer site survey and feasibility studies.</p>\r\n                                <p>Helping telecom operators and service providers in business operations, including costumer site survey and feasibility studies.</p>\r\n',
    'Survey and Feasibility',
    'Helping telecom operators and service providers in business operations, including costumer site survey and feasibility studies.',
    'publish',
    'closed',
    'closed',
    '',
    'survey-and-feasibility',
    '',
    '',
    '2020-06-13 21:13:57',
    '2020-06-13 21:13:57',
    '',
    0,
    'http://localhost/bazynew/?post_type=benefit&#038;p=103',
    0,
    'benefit',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    104,
    1,
    '2020-06-13 21:13:46',
    '2020-06-13 21:13:46',
    '',
    'b6',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'b6',
    '',
    '',
    '2020-06-13 21:13:46',
    '2020-06-13 21:13:46',
    '',
    103,
    'http://localhost/bazynew/wp-content/uploads/2020/06/b6.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    105,
    1,
    '2020-06-13 23:36:52',
    '2020-06-13 23:36:52',
    '',
    'ol-img',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'ol-img',
    '',
    '',
    '2020-06-13 23:36:52',
    '2020-06-13 23:36:52',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/ol-img.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    106,
    1,
    '2020-06-14 00:29:31',
    '2020-06-14 00:29:31',
    '',
    '1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '1-3',
    '',
    '',
    '2020-06-14 00:29:31',
    '2020-06-14 00:29:31',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/1-2.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    107,
    1,
    '2020-06-14 00:29:32',
    '2020-06-14 00:29:32',
    '',
    '2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '2-3',
    '',
    '',
    '2020-06-14 00:29:32',
    '2020-06-14 00:29:32',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/2-2.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    108,
    1,
    '2020-06-14 00:29:34',
    '2020-06-14 00:29:34',
    '',
    '3',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '3-3',
    '',
    '',
    '2020-06-14 00:29:34',
    '2020-06-14 00:29:34',
    '',
    0,
    'http://localhost/bazynew/wp-content/uploads/2020/06/3-2.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    109,
    1,
    '2020-06-14 12:11:40',
    '2020-06-14 12:11:40',
    'Dismantle an old VW system and install a new system with 52 Cubes 50” Undertake the full responsibility to keep NOC Display System\r\nVideo wall solution running as per customer expectations.\r\n\r\nAll tickets are handled and solved on time as per the agreed SLA depending on its severity.\r\nA dedicated engineer is available on site/call along to give the needed support and provide all reports about system status and actions done.\r\n\r\nDismantle an old VW system and install a new system with 52 Cubes 50” Undertake the full responsibility to keep NOC Display System\r\nVideo wall solution running as per customer expectations.\r\n\r\nAll tickets are handled and solved on time as per the agreed SLA depending on its severity.\r\nA dedicated engineer is available on site/call along to give the needed support and provide all reports about system status and actions done.',
    'STC Project',
    '                                <p>Dismantle an old VW system and install a new system with 52 Cubes 50” Undertake the full responsibility to keep NOC Display System \r\n                                Video wall solution running as per customer expectations. </p>\r\n                                <p>All tickets are handled and solved on time as per the agreed SLA depending on its severity. \r\n                                A dedicated engineer is available on site/call along to give the needed support and provide all reports about system status and actions done.</p>',
    'publish',
    'closed',
    'closed',
    '',
    'stc-project',
    '',
    '',
    '2020-06-14 12:19:07',
    '2020-06-14 12:19:07',
    '',
    0,
    'http://localhost/bazynew/?post_type=project&#038;p=109',
    0,
    'project',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    110,
    1,
    '2020-06-14 12:11:31',
    '2020-06-14 12:11:31',
    '',
    'proj1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'proj1',
    '',
    '',
    '2020-06-14 12:11:31',
    '2020-06-14 12:11:31',
    '',
    109,
    'http://localhost/bazynew/wp-content/uploads/2020/06/proj1.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    111,
    1,
    '2020-06-14 12:20:16',
    '2020-06-14 12:20:16',
    'Implemented several major DC Systems installation and replacement projects to major utility companies in the Kingdom.\r\n\r\nIndustrial DC Power systems were supplied and installed in SEC, SWCC, MARAFIQ and SABIC.\r\nSystem supplied includes chargers, industrial UPS, DVRs, inverters and backup batteries both lead acid and nickel cadmium.\r\n\r\nImplemented several major DC Systems installation and replacement projects to major utility companies in the Kingdom.\r\n\r\nIndustrial DC Power systems were supplied and installed in SEC, SWCC, MARAFIQ and SABIC.\r\nSystem supplied includes chargers, industrial UPS, DVRs, inverters and backup batteries both lead acid and nickel cadmium.\r\n\r\nImplemented several major DC Systems installation and replacement projects to major utility companies in the Kingdom.\r\n\r\nIndustrial DC Power systems were supplied and installed in SEC, SWCC, MARAFIQ and SABIC.\r\nSystem supplied includes chargers, industrial UPS, DVRs, inverters and backup batteries both lead acid and nickel cadmium.',
    'SEC, SWCC, MARAFIQ and SABIC',
    '                                <p>Implemented several major DC Systems installation and replacement projects to major utility companies in the Kingdom. </p>\r\n                                <p>Industrial DC Power systems were supplied and installed in SEC, SWCC, MARAFIQ and SABIC. \r\n                                System supplied includes chargers, industrial UPS, DVRs, inverters and backup batteries both lead acid and nickel cadmium.</p>',
    'publish',
    'closed',
    'closed',
    '',
    'sec-swcc-marafiq-and-sabic',
    '',
    '',
    '2020-06-14 12:41:26',
    '2020-06-14 12:41:26',
    '',
    0,
    'http://localhost/bazynew/?post_type=project&#038;p=111',
    0,
    'project',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    112,
    1,
    '2020-06-14 12:41:19',
    '2020-06-14 12:41:19',
    '',
    'proj2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'proj2',
    '',
    '',
    '2020-06-14 12:41:19',
    '2020-06-14 12:41:19',
    '',
    111,
    'http://localhost/bazynew/wp-content/uploads/2020/06/proj2.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    113,
    1,
    '2020-06-14 14:18:06',
    '2020-06-14 14:18:06',
    '',
    'Network Security',
    'Design, Installation, Configuration, Testing, Commissioning & Maintaining Of All Types Of Network Infrastructure Professional Services For Routers.',
    'publish',
    'closed',
    'closed',
    '',
    'network-security',
    '',
    '',
    '2020-06-14 14:18:06',
    '2020-06-14 14:18:06',
    '',
    0,
    'http://localhost/bazynew/?post_type=product&#038;p=113',
    0,
    'product',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    114,
    1,
    '2020-06-14 14:17:41',
    '2020-06-14 14:17:41',
    '',
    '1',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '1-4',
    '',
    '',
    '2020-06-14 14:17:41',
    '2020-06-14 14:17:41',
    '',
    113,
    'http://localhost/bazynew/wp-content/uploads/2020/06/1.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    115,
    1,
    '2020-06-14 14:17:43',
    '2020-06-14 14:17:43',
    '',
    '2',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '2-4',
    '',
    '',
    '2020-06-14 14:17:43',
    '2020-06-14 14:17:43',
    '',
    113,
    'http://localhost/bazynew/wp-content/uploads/2020/06/2.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    116,
    1,
    '2020-06-14 14:17:44',
    '2020-06-14 14:17:44',
    '',
    '3',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '3-4',
    '',
    '',
    '2020-06-14 14:17:44',
    '2020-06-14 14:17:44',
    '',
    113,
    'http://localhost/bazynew/wp-content/uploads/2020/06/3.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    117,
    1,
    '2020-06-14 14:17:46',
    '2020-06-14 14:17:46',
    '',
    '4',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '4-3',
    '',
    '',
    '2020-06-14 14:17:46',
    '2020-06-14 14:17:46',
    '',
    113,
    'http://localhost/bazynew/wp-content/uploads/2020/06/4.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    118,
    1,
    '2020-06-14 14:17:48',
    '2020-06-14 14:17:48',
    '',
    '5',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '5-2',
    '',
    '',
    '2020-06-14 14:17:48',
    '2020-06-14 14:17:48',
    '',
    113,
    'http://localhost/bazynew/wp-content/uploads/2020/06/5.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    119,
    1,
    '2020-06-14 14:17:49',
    '2020-06-14 14:17:49',
    '',
    '6',
    '',
    'inherit',
    'open',
    'closed',
    '',
    '6-2',
    '',
    '',
    '2020-06-14 14:17:49',
    '2020-06-14 14:17:49',
    '',
    113,
    'http://localhost/bazynew/wp-content/uploads/2020/06/6.jpg',
    0,
    'attachment',
    'image/jpeg',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    120,
    1,
    '2020-06-14 14:19:06',
    '2020-06-14 14:19:06',
    '',
    'IT Products',
    'Supply And Installation Of Last Mile Services Including ADSL/HDSL, Fiber ONT, VOIP Gateways, FXS / FXO Gateways, SIP Gateways, WI-FI, And VOLTE.',
    'publish',
    'closed',
    'closed',
    '',
    'it-products',
    '',
    '',
    '2020-06-14 14:19:06',
    '2020-06-14 14:19:06',
    '',
    0,
    'http://localhost/bazynew/?post_type=product&#038;p=120',
    0,
    'product',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    121,
    1,
    '2020-06-14 14:20:14',
    '2020-06-14 14:20:14',
    '',
    'Data Storage',
    'Installations, Configuration, Testing, Commissioning And Maintenance Of Smart Parking, Fleet, Sensors, Smart Wi-Fi, And Smart Controlling.',
    'publish',
    'closed',
    'closed',
    '',
    'data-storage',
    '',
    '',
    '2020-06-14 14:20:14',
    '2020-06-14 14:20:14',
    '',
    0,
    'http://localhost/bazynew/?post_type=product&#038;p=121',
    0,
    'product',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    122,
    1,
    '2020-06-14 14:21:13',
    '2020-06-14 14:21:13',
    '',
    'Quicknet 5G',
    'It Is An Incredibly Fast Internet Service With Low Latency Which Makes It The Most Advanced In The Telecom World.',
    'publish',
    'closed',
    'closed',
    '',
    'quicknet-5g',
    '',
    '',
    '2020-06-14 14:21:13',
    '2020-06-14 14:21:13',
    '',
    0,
    'http://localhost/bazynew/?post_type=product&#038;p=122',
    0,
    'product',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    123,
    1,
    '2020-06-14 14:21:24',
    '2020-06-14 14:21:24',
    '',
    'Quicknet 5G',
    'It Is An Incredibly Fast Internet Service With Low Latency Which Makes It The Most Advanced In The Telecom World.',
    'inherit',
    'closed',
    'closed',
    '',
    '122-autosave-v1',
    '',
    '',
    '2020-06-14 14:21:24',
    '2020-06-14 14:21:24',
    '',
    122,
    'http://localhost/bazynew/122-autosave-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    124,
    1,
    '2020-06-14 14:22:38',
    '2020-06-14 14:22:38',
    '',
    'Quicknet 4G',
    'The 4G Technology Is Considered As One Of The Most Innovative Communication Technologies Worldwide.',
    'publish',
    'closed',
    'closed',
    '',
    'quicknet-4g',
    '',
    '',
    '2020-06-14 14:22:38',
    '2020-06-14 14:22:38',
    '',
    0,
    'http://localhost/bazynew/?post_type=product&#038;p=124',
    0,
    'product',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    125,
    1,
    '2020-06-14 14:22:51',
    '2020-06-14 14:22:51',
    '',
    'Quicknet 4G',
    'The 4G Technology Is Considered As One Of The Most Innovative Communication Technologies Worldwide.',
    'inherit',
    'closed',
    'closed',
    '',
    '124-autosave-v1',
    '',
    '',
    '2020-06-14 14:22:51',
    '2020-06-14 14:22:51',
    '',
    124,
    'http://localhost/bazynew/124-autosave-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    126,
    1,
    '2020-06-14 14:23:53',
    '2020-06-14 14:23:53',
    '',
    'Fiber To The Home (FTTH)',
    'In A Few Words, It Is The Latest Internet Technology In KSA With Speeds Up To 200 MB/S. What Does 200 MB/S Mean? It Means You And Your Family Members Can Enjoy Games, Streaming.',
    'publish',
    'closed',
    'closed',
    '',
    'fiber-to-the-home-ftth',
    '',
    '',
    '2020-06-14 14:23:53',
    '2020-06-14 14:23:53',
    '',
    0,
    'http://localhost/bazynew/?post_type=product&#038;p=126',
    0,
    'product',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    127,
    1,
    '2020-06-14 15:03:05',
    '2020-06-14 15:03:05',
    '',
    'Products',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'products',
    '',
    '',
    '2020-06-14 15:03:05',
    '2020-06-14 15:03:05',
    '',
    0,
    'http://localhost/bazynew/?page_id=127',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    128,
    1,
    '2020-06-14 15:03:05',
    '2020-06-14 15:03:05',
    '',
    'Products',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '127-revision-v1',
    '',
    '',
    '2020-06-14 15:03:05',
    '2020-06-14 15:03:05',
    '',
    127,
    'http://localhost/bazynew/127-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    129,
    1,
    '2020-06-16 12:09:44',
    '0000-00-00 00:00:00',
    '',
    'Auto Draft',
    '',
    'auto-draft',
    'open',
    'open',
    '',
    '',
    '',
    '',
    '2020-06-16 12:09:44',
    '0000-00-00 00:00:00',
    '',
    0,
    'http://localhost/bazynew/?p=129',
    0,
    'post',
    '',
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (1, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (59, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (71, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (73, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (75, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (77, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (79, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (113, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (120, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (121, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (122, 3, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (124, 3, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (126, 3, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (1, 1, 'category', '', 0, 6);
INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (2, 2, 'product_cat', '', 0, 3);
INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (3, 3, 'product_cat', '', 0, 3);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (1, 'Uncategorized', 'uncategorized', 0);
INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (2, 'Businesses', 'businesses', 0);
INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (3, 'Individuals', 'individuals', 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (1, 1, 'nickname', 'admin');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (2, 1, 'first_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (3, 1, 'last_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (4, 1, 'description', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (5, 1, 'rich_editing', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (6, 1, 'syntax_highlighting', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (7, 1, 'comment_shortcuts', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (8, 1, 'admin_color', 'fresh');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (9, 1, 'use_ssl', '0');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (11, 1, 'locale', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    12,
    1,
    'wp_capabilities',
    'a:1:{s:13:\"administrator\";b:1;}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (13, 1, 'wp_user_level', '10');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (14, 1, 'dismissed_wp_pointers', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (15, 1, 'show_welcome_panel', '0');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    16,
    1,
    'session_tokens',
    'a:1:{s:64:\"07e0026db37f327c174f1e3aed60dd15193412e74f70f853674d7e5d77b72a3b\";a:4:{s:10:\"expiration\";i:1592482179;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1592309379;}}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    17,
    1,
    'wp_dashboard_quick_press_last_post_id',
    '129'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    18,
    1,
    'closedpostboxes_dashboard',
    'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    19,
    1,
    'metaboxhidden_dashboard',
    'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (20, 1, 'closedpostboxes_slide', 'a:0:{}');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    21,
    1,
    'metaboxhidden_slide',
    'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    22,
    1,
    'wp_user-settings',
    'libraryContent=browse&editor=tinymce'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (23, 1, 'wp_user-settings-time', '1592136696');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (24, 1, 'closedpostboxes_partner', 'a:0:{}');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    25,
    1,
    'metaboxhidden_partner',
    'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (26, 1, 'closedpostboxes_post', 'a:0:{}');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    27,
    1,
    'metaboxhidden_post',
    'a:6:{i:0;s:13:\"trackbacksdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (28, 1, 'closedpostboxes_project', 'a:0:{}');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    29,
    1,
    'metaboxhidden_project',
    'a:1:{i:0;s:7:\"slugdiv\";}'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

INSERT INTO
  `wp_users` (
    `ID`,
    `user_login`,
    `user_pass`,
    `user_nicename`,
    `user_email`,
    `user_url`,
    `user_registered`,
    `user_activation_key`,
    `user_status`,
    `display_name`
  )
VALUES
  (
    1,
    'admin',
    '$P$BZjvFW1dnEitHreE92G9VwwcOfX87Z.',
    'admin',
    'admin@admin.com',
    '',
    '2020-06-09 11:07:24',
    '',
    0,
    'admin'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
