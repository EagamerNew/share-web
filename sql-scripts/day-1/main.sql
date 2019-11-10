-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 10 2019 г., 20:29
-- Версия сервера: 10.4.8-MariaDB
-- Версия PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dckz-web`
--

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `organization_name` varchar(50) NOT NULL,
  `bin` varchar(55) NOT NULL,
  `address` varchar(255) NOT NULL,
  `file_ustav` int(11) NOT NULL,
  `file_rekvis` int(11) NOT NULL,
  `file_uch_doc` int(11) NOT NULL,
  `project_vmest` int(11) NOT NULL,
  `specialization` varchar(125) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `form` varchar(50) NOT NULL,
  `groups` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`id`, `surname`, `name`, `lastname`, `email`, `password`, `organization_name`, `bin`, `address`, `file_ustav`, `file_rekvis`, `file_uch_doc`, `project_vmest`, `specialization`, `start_time`, `end_time`, `language`, `form`, `groups`) VALUES
(1, '1234', '12341', '1234', '1234', '34', '3243', '34', '34', 34, 343, 34, 34, '34', 3, 2, '34', '23', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
