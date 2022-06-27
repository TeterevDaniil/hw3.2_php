-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2022 г., 07:28
-- Версия сервера: 5.7.33
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_burger`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `address`) VALUES
(98, 'Даниил Александрович Тетерев', 'teterevdanil@gmail.com', '+7 (996) 705 07 47', 'wqs,'),
(100, 'Даниил Александрович Тетерев', 'teterevdaniqq@gmail.com', '+7 (996) 705 07 47', 'wqs,'),
(101, 'Даниил Александрович Тетерев', 'teterevdaqqnil@gmail.com', '+7 (996) 705 07 47', ''),
(102, 'Даниил Александрович Тетерев', 'teterevdaqqniqqql@gmail.com', '+7 (996) 705 07 47', '');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `clnt_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `clnt_id`, `comment`, `insert_date`) VALUES
(1, 98, 'acscasc', '2022-06-27 04:05:14'),
(2, 102, 'acscasc', '2022-06-27 04:07:36'),
(3, 98, 'acasaaaaaa1111111111', '2022-06-27 04:08:06'),
(4, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:10:18'),
(5, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:14:03'),
(6, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:14:27'),
(7, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:14:48'),
(8, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:14:50'),
(9, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:14:52'),
(10, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:14:54'),
(11, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:14:56'),
(12, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:15:35'),
(13, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:16:30'),
(14, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:16:32'),
(15, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:17:13'),
(16, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:17:15'),
(17, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:17:25'),
(18, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:17:28'),
(19, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:17:37'),
(20, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:17:44'),
(21, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:23:57'),
(22, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:24:16'),
(23, 98, 'acasaaaaaa1111111111222', '2022-06-27 04:24:19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
