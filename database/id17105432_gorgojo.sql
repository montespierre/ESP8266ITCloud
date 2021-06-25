-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-06-2021 a las 06:43:57
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id17105432_gorgojo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `led`
--

CREATE TABLE `led` (
  `id` int(255) NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `led`
--

INSERT INTO `led` (`id`, `status`) VALUES
(1, 'off'),
(2, 'off'),
(3, 'off');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weather`
--

CREATE TABLE `weather` (
  `id` int(255) NOT NULL,
  `temp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hum` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `weather`
--

INSERT INTO `weather` (`id`, `temp`, `hum`) VALUES
(1, '20.20', '18'),
(6, '20.34', '38'),
(7, '20.34', '39'),
(8, '20.34', '41'),
(9, '20.34', '42'),
(10, '34', '43'),
(11, '20.34', '44'),
(12, '20.34', '45'),
(13, '35', '80'),
(14, '19.90', '76.00'),
(15, '19.80', '76.00'),
(16, '19.80', '76.00'),
(17, '19.90', '76.00'),
(18, '19.90', '76.00'),
(19, '19.90', '75.00'),
(20, '19.90', '75.00'),
(21, '19.90', '75.00'),
(22, '19.90', '75.00'),
(23, '19.90', '75.00'),
(24, '19.90', '75.00'),
(25, '19.90', '75.00'),
(26, '19.90', '75.00'),
(27, '19.90', '75.00'),
(28, '19.90', '75.00'),
(29, '19.90', '75.00'),
(30, '19.90', '75.00'),
(31, '19.90', '75.00'),
(32, '19.90', '75.00'),
(33, '19.90', '75.00'),
(34, '20.00', '75.00'),
(35, '20.00', '75.00'),
(36, '20.00', '75.00'),
(37, '20.00', '75.00'),
(38, '20.00', '75.00'),
(39, '20.00', '75.00'),
(40, '20.00', '75.00'),
(41, '19.90', '75.00'),
(42, '20.00', '75.00'),
(43, '20.00', '75.00'),
(44, '20.00', '75.00'),
(45, '20.00', '75.00'),
(46, '19.90', '75.00'),
(47, '20.00', '75.00'),
(48, '19.90', '75.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `led`
--
ALTER TABLE `led`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `led`
--
ALTER TABLE `led`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
