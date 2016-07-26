-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 26 2016 г., 14:17
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_bilim`
--

-- --------------------------------------------------------

--
-- Структура таблицы `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ru` text COLLATE utf8_unicode_ci,
  `title_kz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_kz` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
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
-- Дамп данных таблицы `advertisement`
--

INSERT INTO `advertisement` (`id`, `title_ru`, `description_ru`, `title_kz`, `description_kz`, `photo`, `views`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535450, 1469535450, NULL, NULL, 'advertisement-1', NULL, NULL, NULL),
(2, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535450, 1469535450, NULL, NULL, 'advertisement-2', NULL, NULL, NULL),
(3, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535450, 1469535450, NULL, NULL, 'advertisement-3', NULL, NULL, NULL),
(4, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535450, 1469535450, NULL, NULL, 'advertisement-4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce_ru` text COLLATE utf8_unicode_ci,
  `description_ru` text COLLATE utf8_unicode_ci,
  `title_kz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce_kz` text COLLATE utf8_unicode_ci,
  `description_kz` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
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

INSERT INTO `article` (`id`, `category_id`, `title_ru`, `anounce_ru`, `description_ru`, `title_kz`, `anounce_kz`, `description_kz`, `photo`, `views`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Статья 1', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-1', NULL, NULL, NULL),
(2, 2, 'Статья 2', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-2', NULL, NULL, NULL),
(3, 3, 'Статья 3', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-3', NULL, NULL, NULL),
(4, 4, 'Статья 4', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-4', NULL, NULL, NULL),
(5, 5, 'Статья 5', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-5', NULL, NULL, NULL),
(6, 1, 'Статья 6', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-6', NULL, NULL, NULL),
(7, 1, 'Статья 7', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-7', NULL, NULL, NULL),
(8, 1, 'Статья 8', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-8', NULL, NULL, NULL),
(9, 1, 'Статья 9', 'Анонс контента', 'Описание контента', 'Статья 1', 'Анонс контента', 'Описание контента', 'article.jpg', 0, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'article-9', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `is_published` smallint(6) DEFAULT '0',
  `sort_index` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `deleted` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`, `link`, `type_id`, `is_published`, `sort_index`, `created`, `updated`, `deleted`) VALUES
(1, 'Название', 'banner1.jpg', '/', NULL, 1, 1, NULL, NULL, 0),
(2, 'Название', 'banner1.jpg', '/', NULL, 1, 2, NULL, NULL, 0),
(3, 'Название', 'banner1.jpg', '/', NULL, 1, 3, NULL, NULL, 0),
(4, 'Название', 'banner1.jpg', '/', NULL, 1, 4, NULL, NULL, 0),
(5, 'Название', 'banner1.jpg', '/', NULL, 1, 5, NULL, NULL, 0),
(6, 'Название', 'banner1.jpg', '/', NULL, 1, 6, NULL, NULL, 0),
(7, 'Название', 'banner1.jpg', '/', NULL, 1, 7, NULL, NULL, 0),
(8, 'Название', 'banner1.jpg', '/', NULL, 1, 8, NULL, NULL, 0),
(9, 'Название', 'banner1.jpg', '/', NULL, 1, 9, NULL, NULL, 0),
(10, 'Название', 'banner1.jpg', '/', NULL, 1, 10, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ru` text COLLATE utf8_unicode_ci,
  `title_kz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_kz` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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

INSERT INTO `category` (`id`, `parent_id`, `model_name`, `title_ru`, `description_ru`, `title_kz`, `description_kz`, `icon`, `photo`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 0, 'article', 'Категория 1', 'Описание контента', 'Категория 1', 'Описание контента', NULL, NULL, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'category-1', NULL, NULL, NULL),
(2, 0, 'article', 'Категория 2', 'Описание контента', 'Категория 1', 'Описание контента', NULL, NULL, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'category-2', NULL, NULL, NULL),
(3, 1, 'article', 'Категория 3', 'Описание контента', 'Категория 1', 'Описание контента', NULL, NULL, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'category-3', NULL, NULL, NULL),
(4, 1, 'article', 'Категория 4', 'Описание контента', 'Категория 1', 'Описание контента', NULL, NULL, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'category-4', NULL, NULL, NULL),
(5, 1, 'article', 'Категория 5', 'Описание контента', 'Категория 1', 'Описание контента', NULL, NULL, 1, NULL, 1469535438, 1469535438, NULL, NULL, 'category-5', NULL, NULL, NULL);

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
(1, 0, 'Образец 1', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-1', NULL, NULL, NULL),
(2, 0, 'Образец 2', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-2', NULL, NULL, NULL),
(3, 0, 'Образец 3', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-3', NULL, NULL, NULL),
(4, 0, 'Образец 4', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-4', NULL, NULL, NULL),
(5, 0, 'Образец 5', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-5', NULL, NULL, NULL),
(6, 0, 'Образец 6', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-6', NULL, NULL, NULL),
(7, 0, 'Образец 7', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-7', NULL, NULL, NULL),
(8, 0, 'Образец 8', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-8', NULL, NULL, NULL),
(9, 0, 'Образец 9', 'Анонс контента', 'Описание контента', 'example.png', 0, NULL, 1, NULL, 1469535437, 1469535437, NULL, NULL, 'example-9', NULL, NULL, NULL);

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
(1, 'Иван', 'ivan@gmail.com', NULL, NULL, 'Сообщени от Ивана', 'manager@yii2cms.com', 1, 1469535443, 1469535443, NULL, NULL),
(2, 'Петр', 'petr@gmail.com', NULL, NULL, 'Сообщени от Петра', 'manager@yii2cms.com', 2, 1469535443, 1469535443, NULL, NULL),
(3, 'Вася', 'vasya@gmail.com', NULL, NULL, 'Сообщени от Васи', 'manager@yii2cms.com', 2, 1469535443, 1469535443, NULL, NULL);

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
(1, 0, 'Галерея 1', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1469535439, 1469535439, NULL, NULL, 'gallery-1', NULL, NULL, NULL),
(2, 0, 'Галерея 2', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1469535439, 1469535439, NULL, NULL, 'gallery-2', NULL, NULL, NULL),
(3, 0, 'Галерея 3', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1469535439, 1469535439, NULL, NULL, 'gallery-3', NULL, NULL, NULL),
(4, 0, 'Галерея 4', NULL, 'Описание контента', 'gallery.jpg', 0, NULL, 1, NULL, 1469535439, 1469535439, NULL, NULL, 'gallery-4', NULL, NULL, NULL);

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
-- Структура таблицы `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `local` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `default` smallint(6) NOT NULL DEFAULT '0',
  `date_update` int(11) NOT NULL,
  `date_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lang`
--

INSERT INTO `lang` (`id`, `photo`, `url`, `local`, `name`, `default`, `date_update`, `date_create`) VALUES
(1, 'rus.png', 'ru', 'ru-RU', 'Русский', 1, 1469535449, 1469535449),
(2, 'kaz.png', 'kz', 'kz-KZ', 'Қазақша', 0, 1469535449, 1469535449);

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
('m000000_000000_base', 1469535430),
('m130524_201442_init', 1469535433),
('m150503_173534_create_news_table', 1469535435),
('m160108_194403_create_image_table', 1469535436),
('m160109_163949_create_example_table', 1469535437),
('m160109_174513_create_article_table', 1469535438),
('m160109_190626_create_category_table', 1469535439),
('m160110_163005_create_gallery_table', 1469535439),
('m160112_182121_create_slider_table', 1469535440),
('m160115_175421_create_city_table', 1469535442),
('m160119_165716_create_feedback_table', 1469535443),
('m160119_190015_create_settings_table', 1469535444),
('m160121_180909_create_text_table', 1469535445),
('m160121_185759_create_review_table', 1469535446),
('m160726_032632_create_banner_table', 1469535448),
('m160726_034058_create_lang_table', 1469535449),
('m160726_115153_create_advertisement_table', 1469535450),
('m160726_120502_create_purchase_table', 1469535452);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_kz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anounce_ru` text COLLATE utf8_unicode_ci,
  `anounce_kz` text COLLATE utf8_unicode_ci,
  `description_ru` text COLLATE utf8_unicode_ci,
  `description_kz` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
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

INSERT INTO `news` (`id`, `category_id`, `title_ru`, `title_kz`, `anounce_ru`, `anounce_kz`, `description_ru`, `description_kz`, `photo`, `views`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-1', NULL, NULL, NULL),
(2, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-2', NULL, NULL, NULL),
(3, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-3', NULL, NULL, NULL),
(4, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-4', NULL, NULL, NULL),
(5, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-5', NULL, NULL, NULL),
(6, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-6', NULL, NULL, NULL),
(7, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-7', NULL, NULL, NULL),
(8, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-8', NULL, NULL, NULL),
(9, 0, 'Внедрение  дуальной системы обучения в колледжах:  проблемы и пути решении', 'заголовок каз', '28 июня 2016 года Управлением образования города Астаны отделом технического и профессионального образования на базе учебного заведения колледж АО «Финансовая Академия» проведен круглый стол  на тему: «Внедрение дуальной системы обучения в колледжах: проблемы и пути решении». Целью круглого стола был обмен опытом с участием заместителей директора по производственной работе  учебных заведений ТиПО  г.Астаны.', 'аннонс каз', 'В ходе круглого стола  представлены опыт внедрения дуальной системы обучения Технического колледжа специальность «Токарное дело», «Лифтовое хозяйство эскалаторы», Колледж энергетики и связи специальность «Радиоэлектроника и связь», Колледж менеджмента и бизнеса специальность «Обслуживание и ремонт телекоммуникационного оборудования и бытовой техники», Колледж общественного питания и сервиса специальность  «Организация питания». Так же участники круглого стола рассмотрели  и обсудили вопросы и проблемы, с которыми они столкнулись в процессе работы по внедрению дуального обучения.', 'описание каз', 'news.jpg', 0, 1, NULL, 1469535434, 1469535434, NULL, NULL, 'news-9', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ru` text COLLATE utf8_unicode_ci,
  `title_kz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_kz` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
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
-- Дамп данных таблицы `purchase`
--

INSERT INTO `purchase` (`id`, `title_ru`, `description_ru`, `title_kz`, `description_kz`, `photo`, `purchase_file`, `views`, `is_published`, `sort_index`, `created`, `updated`, `created_user_id`, `updated_user_id`, `slug`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', NULL, 0, 1, NULL, 1469535452, 1469535452, NULL, NULL, 'purchase-1', NULL, NULL, NULL),
(2, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', NULL, 0, 1, NULL, 1469535452, 1469535452, NULL, NULL, 'purchase-2', NULL, NULL, NULL),
(3, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', NULL, 0, 1, NULL, 1469535452, 1469535452, NULL, NULL, 'purchase-3', NULL, NULL, NULL),
(4, 'Заголовок ру', 'Описание контента', 'Заголовок kz', 'Описание контента', 'article.jpg', NULL, 0, 1, NULL, 1469535452, 1469535452, NULL, NULL, 'purchase-4', NULL, NULL, NULL);

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
(1, 1, 'product', 2, NULL, 'Отличный товар.', 1469535446, 1469535446, 1),
(2, 2, 'product', 1, NULL, 'Хорошие цени.', 1469535446, 1469535446, 1);

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
(1, 0, 'Слайд 1', 'Анонс контента', 'Описание контента', 'slider1.jpg', NULL, 0, NULL, 1, NULL, 1469535440, 1469535440, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 'Слайд 2', 'Анонс контента', 'Описание контента', 'slider2.jpg', NULL, 0, NULL, 1, NULL, 1469535440, 1469535440, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 'Слайд 3', 'Анонс контента', 'Описание контента', 'slider2.jpg', NULL, 0, NULL, 1, NULL, 1469535440, 1469535440, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 'Слайд 4', 'Анонс контента', 'Описание контента', 'slider1.jpg', NULL, 0, NULL, 1, NULL, 1469535440, 1469535440, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 'Слайд 5', 'Анонс контента', 'Описание контента', 'slider2.jpg', NULL, 0, NULL, 1, NULL, 1469535440, 1469535440, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 'address', 'Республика Казахстан, город Астана ул. Бейбiтшiлiк 11, 7 этаж', NULL, 1, NULL, NULL, NULL, NULL),
(2, 'copyright', '© 2016 Управление образования города Астаны. Создано ТОО "Компания Фактум"', NULL, 1, NULL, NULL, NULL, NULL),
(3, 'address', 'Республика Казахстан, город Астана ул. Бейбiтшiлiк 11, 7 этаж', NULL, 2, NULL, NULL, NULL, NULL),
(4, 'copyright', '© 2016 Управление образования города Астаны. Создано ТОО "Компания Фактум"', NULL, 2, NULL, NULL, NULL, NULL);

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
(1, 'Malika', 'Arabbay', 'Balataykizi', NULL, 'KSIUVGQArA59pE-EZFY4CCD8MpvIOvE0', '$2y$13$wQeo.4DFTOlAn4f/bzwPnOymmn5k9ijj7a4eSB8QXEm30VIEiIqJu', NULL, 'malikarabbay@gmail.com', '87716252926', 3, '1991-02-07', 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 1469535433, 1469535433, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banner`
--
ALTER TABLE `banner`
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
-- Индексы таблицы `lang`
--
ALTER TABLE `lang`
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
-- Индексы таблицы `purchase`
--
ALTER TABLE `purchase`
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
-- AUTO_INCREMENT для таблицы `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
-- AUTO_INCREMENT для таблицы `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
