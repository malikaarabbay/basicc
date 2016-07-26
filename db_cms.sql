-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 07 2016 г., 14:48
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `lang_id` int(11) DEFAULT NULL,
  `is_published` int(11) DEFAULT '0',
  `sort_index` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `category_id`, `title`, `anounce`, `description`, `photo`, `views`, `lang_id`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-1', NULL, NULL, NULL),
(2, 2, 'Статья 2', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-2', NULL, NULL, NULL),
(3, 3, 'Статья 3', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-3', NULL, NULL, NULL),
(4, 4, 'Статья 4', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-4', NULL, NULL, NULL),
(5, 5, 'Статья 5', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-5', NULL, NULL, NULL),
(6, 1, 'Статья 6', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-6', NULL, NULL, NULL),
(7, 2, 'Статья 7', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-7', NULL, NULL, NULL),
(8, 3, 'Статья 8', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-8', NULL, NULL, NULL),
(9, 4, 'Статья 9', 'Анонс контента', 'Описание контента', 'article.jpg', 0, NULL, 1, NULL, 1467895650, 1467895650, NULL, NULL, 'article-9', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` smallint(6) DEFAULT NULL,
  `is_published` smallint(6) DEFAULT '0',
  `sort_index` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `model_name`, `title`, `description`, `icon`, `photo`, `lang_id`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 0, 'article', 'Категория 1', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-1', NULL, NULL, NULL),
(2, 0, 'article', 'Категория 2', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-2', NULL, NULL, NULL),
(3, 1, 'article', 'Категория 3', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-3', NULL, NULL, NULL),
(4, 1, 'article', 'Категория 4', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-4', NULL, NULL, NULL),
(5, 1, 'article', 'Категория 5', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-5', NULL, NULL, NULL),
(6, 1, 'news', 'Категория 6', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-6', NULL, NULL, NULL),
(7, 2, 'news', 'Категория 7', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-7', NULL, NULL, NULL),
(8, 2, 'news', 'Категория 8', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-8', NULL, NULL, NULL),
(9, 2, 'news', 'Категория 9', 'Описание контента', NULL, NULL, NULL, 1, NULL, 1467895651, 1467895651, NULL, NULL, 'category-9', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_published` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `country_id`, `latitude`, `longitude`, `title`, `is_published`) VALUES
(1, 1, 43.238253, 76.945465, 'Алматы', 1),
(2, 1, 51.128422, 71.430564, 'Астана', 1),
(3, 1, 43.635379, 51.169135, 'Актау', 1),
(4, 1, 50.300411, 57.154636, 'Актобе', 1),
(5, 1, 47.105241, 51.910101, 'Атырау', 1),
(6, 1, 47.800225, 67.713605, 'Жезказган', 1),
(7, 1, 49.806406, 73.085485, 'Караганда', 1),
(8, 1, 53.284635, 69.377554, 'Кокшетау', 1),
(9, 1, 53.214917, 63.631031, 'Костанай', 1),
(10, 1, 44.83986, 65.50268, 'Кызылорда', 1),
(11, 1, 52.285577, 76.940947, 'Павлодар', 1),
(12, 1, 54.865472, 69.135602, 'Петропавловск', 1),
(13, 1, 50.416526, 80.25617, 'Семей', 1),
(14, 1, 45.018028, 78.383596, 'Талдыкорган', 1),
(15, 1, 42.901183, 71.378309, 'Тараз', 1),
(16, 1, 51.212173, 51.367069, 'Уральск', 1),
(17, 1, 49.948759, 82.628459, 'Усть-Каменогорск', 1),
(18, 1, 42.317301, 69.589709, 'Шымкент', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `example`
--

CREATE TABLE `example` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `lang_id` smallint(6) DEFAULT NULL,
  `is_published` smallint(6) DEFAULT '0',
  `sort_index` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `example`
--

INSERT INTO `example` (`id`, `category_id`, `title`, `anounce`, `description`, `photo`, `views`, `lang_id`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 0, 'Образец 1', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-1', NULL, NULL, NULL),
(2, 0, 'Образец 2', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-2', NULL, NULL, NULL),
(3, 0, 'Образец 3', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-3', NULL, NULL, NULL),
(4, 0, 'Образец 4', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-4', NULL, NULL, NULL),
(5, 0, 'Образец 5', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-5', NULL, NULL, NULL),
(6, 0, 'Образец 6', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-6', NULL, NULL, NULL),
(7, 0, 'Образец 7', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-7', NULL, NULL, NULL),
(8, 0, 'Образец 8', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-8', NULL, NULL, NULL),
(9, 0, 'Образец 9', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1467895649, 1467895649, NULL, NULL, 'example-9', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `manager_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `subject`, `body`, `manager_email`, `status`, `created`, `updated`, `created_user_id`, `updated_user_id`) VALUES
(1, 'Иван', 'ivan@gmail.com', NULL, NULL, 'Сообщени от Ивана', 'manager@yii2cms.com', 1, 1467895656, 1467895656, NULL, NULL),
(2, 'Петр', 'petr@gmail.com', NULL, NULL, 'Сообщени от Петра', 'manager@yii2cms.com', 2, 1467895656, 1467895656, NULL, NULL),
(3, 'Вася', 'vasya@gmail.com', NULL, NULL, 'Сообщени от Васи', 'manager@yii2cms.com', 2, 1467895656, 1467895656, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `lang_id` int(11) DEFAULT NULL,
  `is_published` int(11) DEFAULT '0',
  `sort_index` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `category_id`, `title`, `anounce`, `description`, `photo`, `views`, `lang_id`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 0, 'Галерея 1', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1467895652, 1467895652, NULL, NULL, 'gallery-1', NULL, NULL, NULL),
(2, 0, 'Галерея 2', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1467895652, 1467895652, NULL, NULL, 'gallery-2', NULL, NULL, NULL),
(3, 0, 'Галерея 3', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1467895652, 1467895652, NULL, NULL, 'gallery-3', NULL, NULL, NULL),
(4, 0, 'Галерея 4', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1467895652, 1467895652, NULL, NULL, 'gallery-4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `is_main` smallint(6) DEFAULT '0',
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filename`, `item_id`, `is_main`, `model_name`, `title`) VALUES
(1, 'news.jpg', 1, 0, 'news', NULL),
(2, 'news.jpg', 1, 0, 'news', NULL),
(3, 'news.jpg', 1, 0, 'news', NULL),
(4, 'news.jpg', 1, 0, 'news', NULL),
(5, 'news.jpg', 1, 0, 'news', NULL),
(6, 'news.jpg', 1, 0, 'news', NULL),
(7, 'news.jpg', 1, 0, 'news', NULL),
(8, 'news.jpg', 1, 0, 'news', NULL),
(9, 'news.jpg', 1, 0, 'news', NULL),
(10, 'gallery1.jpg', 1, 0, 'gallery', NULL),
(11, 'gallery2.jpg', 1, 0, 'gallery', NULL),
(12, 'gallery3.jpg', 1, 0, 'gallery', NULL),
(13, 'gallery3.jpg', 1, 0, 'gallery', NULL),
(14, 'gallery2.jpg', 1, 0, 'gallery', NULL),
(15, 'gallery1.jpg', 1, 0, 'gallery', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1467895639),
('m130524_201442_init', 1467895645),
('m150503_173534_create_news_table', 1467895647),
('m160108_194403_create_image_table', 1467895648),
('m160109_163949_create_example_table', 1467895650),
('m160109_174513_create_article_table', 1467895650),
('m160109_190626_create_category_table', 1467895651),
('m160110_163005_create_gallery_table', 1467895653),
('m160112_182121_create_slider_table', 1467895654),
('m160115_175421_create_city_table', 1467895655),
('m160119_165716_create_feedback_table', 1467895656),
('m160119_190015_create_settings_table', 1467895657),
('m160121_180909_create_text_table', 1467895659),
('m160121_185759_create_review_table', 1467895660);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `lang_id` int(11) DEFAULT NULL,
  `is_published` int(11) DEFAULT '0',
  `sort_index` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `anounce`, `description`, `photo`, `views`, `lang_id`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 0, 'Новость 1', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-1', NULL, NULL, NULL),
(2, 0, 'Новость 2', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-2', NULL, NULL, NULL),
(3, 0, 'Новость 3', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-3', NULL, NULL, NULL),
(4, 0, 'Новость 4', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-4', NULL, NULL, NULL),
(5, 0, 'Новость 5', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-5', NULL, NULL, NULL),
(6, 0, 'Новость 6', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-6', NULL, NULL, NULL),
(7, 0, 'Новость 7', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-7', NULL, NULL, NULL),
(8, 0, 'Новость 8', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-8', NULL, NULL, NULL),
(9, 0, 'Новость 9', 'Анонс контента', 'Описание контента', 'news.jpg', 0, NULL, 1, NULL, 1467895647, 1467895647, NULL, NULL, 'news-9', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `is_published` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `review`
--

INSERT INTO `review` (`id`, `user_id`, `model_name`, `model_id`, `rating`, `review`, `created`, `updated`, `is_published`) VALUES
(1, 1, 'product', 2, NULL, 'Отличный товар.', 1467895659, 1467895659, 1),
(2, 2, 'product', 1, NULL, 'Хорошие цени.', 1467895659, 1467895659, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `comment`, `created`, `updated`, `created_user_id`, `updated_user_id`) VALUES
(1, 'manager_email', 'manager@greengo.kz', 'email for feedback', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `lang_id` smallint(6) DEFAULT NULL,
  `is_published` smallint(6) DEFAULT '0',
  `sort_index` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `category_id`, `title`, `anounce`, `description`, `photo`, `link`, `views`, `lang_id`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 0, 'Слайд 1', 'Анонс контента', 'Описание контента', 'slider1.jpg', NULL, 0, NULL, 1, NULL, 1467895653, 1467895653, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 'Слайд 2', 'Анонс контента', 'Описание контента', 'slider2.jpg', NULL, 0, NULL, 1, NULL, 1467895653, 1467895653, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 'Слайд 3', 'Анонс контента', 'Описание контента', 'slider2.jpg', NULL, 0, NULL, 1, NULL, 1467895653, 1467895653, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 'Слайд 4', 'Анонс контента', 'Описание контента', 'slider1.jpg', NULL, 0, NULL, 1, NULL, 1467895653, 1467895653, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 'Слайд 5', 'Анонс контента', 'Описание контента', 'slider2.jpg', NULL, 0, NULL, 1, NULL, 1467895653, 1467895653, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` smallint(6) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `text`
--

INSERT INTO `text` (`id`, `key`, `value`, `comment`, `lang_id`, `created`, `updated`, `created_user_id`, `updated_user_id`) VALUES
(1, 'email', 'team@greengo.kz', 'наша почта', NULL, NULL, NULL, NULL, NULL),
(2, 'address', 'ул. Рыскулова 8', 'наш адрес', NULL, NULL, NULL, NULL, NULL),
(3, 'phone', '8 (7252) 97 57 90', 'наш телефон', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` smallint(6) DEFAULT '0',
  `role` smallint(6) DEFAULT '0',
  `vk_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mr_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ok_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `li_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gg_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` smallint(6) DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `deleted` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `secondname`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `phone`, `city_id`, `birthday`, `sex`, `role`, `vk_id`, `fb_id`, `mr_id`, `ok_id`, `li_id`, `gg_id`, `tw_id`, `activated`, `status`, `created`, `updated`, `deleted`) VALUES
(1, 'Malika', 'Arabbay', 'Balataykizi', NULL, 'KSIUVGQArA59pE-EZFY4CCD8MpvIOvE0', '$2y$13$wQeo.4DFTOlAn4f/bzwPnOymmn5k9ijj7a4eSB8QXEm30VIEiIqJu', NULL, 'malikarabbay@gmail.com', '87073975635', 3, '1991-09-25', 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 1467895645, 1467895645, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `example`
--
ALTER TABLE `example`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
