-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2022 a las 13:18:47
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fooder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `biography` varchar(300) DEFAULT NULL,
  `gender` enum('male','female','other','no') NOT NULL DEFAULT 'no',
  `email` varchar(300) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `biography`, `gender`, `email`, `password`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'homero', 'Gaston', 'Soy un fanatico del LoL', 'male', 'gasty@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2022-06-13 01:20:57', NULL, NULL),
(2, 'aborigendesquiciado', 'Simon', 'Soy un dibujante fracasado', 'male', 'simon2004@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2022-06-01 20:28:04', NULL, NULL),
(3, 'elmasi', 'Massi', 'Boca Juniors', 'male', 'massipozzuto2016@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '2022-06-06 20:28:04', NULL, NULL),
(32, 'aa', 'aa', '', 'other', 'aa@gmail.com', 'e0c9035898dd52fc65c41454cec9c4d2611bfb37', '2022-06-22 18:31:03', '2022-09-07 23:20:59', NULL),
(35, 'homero9305', 'gastonam', 'esto es un test asdasd', 'other', 'testeandocambios@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '2022-06-23 20:09:26', NULL, NULL),
(37, 'holaaa', 'queondaa', 'test', 'no', 'gaston.amenta@gmail.com', '2b1466e64b6040935428cd5644d49ffefaf3c62f', '2022-06-27 18:23:46', NULL, '2022-06-30 18:52:49'),
(38, 'quququququeueueu', 'testeao', NULL, 'no', 'testeando@gmail.com', 'a21f505a3e11cffaaa48d8bdf94dab19134dfcda', '2022-06-30 18:15:34', NULL, '2022-06-30 18:32:38'),
(43, '22', '22', NULL, 'no', '22', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', '2022-08-13 15:02:48', NULL, NULL),
(46, 'Roberto', 'Roberto', '', 'no', 'roberto@gmail.com', 'dddd5d7b474d2c78ebbb833789c4bfd721edf4bf', '2022-08-29 22:33:48', '2022-09-11 19:29:03', NULL),
(47, 'juan', 'juan', NULL, 'no', 'jperez@gmail.com', '01b7bca425e6d725fc27f63b369fee5e78cdfd51', '2022-08-29 23:45:19', NULL, NULL),
(48, 'pepe', 'pepe', '', 'no', 'pepe@gmail.com', 'efc0272efb3783dcff5fdf4e07957efc42b3120b', '2022-08-30 22:54:01', '2022-09-11 19:30:51', NULL),
(60, 'ff', 'ff', NULL, 'no', 'ff@gmail.com', '354bf98925838ca68611b950e2a37ebd11c21640', '2022-09-03 04:06:57', '2022-09-03 04:47:33', NULL),
(61, 'aborigen insano', 'lucas', 'a todo ritmo', 'other', 'simoncarrenoe.t26@gmail.com', 'c473f1d6e3b25a1a745c1e8fde3b151292983060', '2022-09-04 22:30:47', '2022-09-04 22:33:09', NULL),
(75, 'Jose', 'Jose', NULL, 'no', 'jose@gmail.com', '1e3daf0c3c26b179f261958679f9226b2c606b57', '2022-09-11 19:59:02', NULL, NULL),
(76, 'Bauti', 'Bauti', NULL, 'no', 'bauti@gmail.com', '818a1858a9c38b48937b3302cb57ab2025f6eaaa', '2022-09-11 20:30:34', NULL, NULL),
(77, 'Maxi', 'Maximiliano', '', 'no', 'maximiliano@gmail.com', 'affb7d615f3d426a2f4ec629dde7dd030009e5ad', '2022-09-11 20:33:27', '2022-09-11 20:34:49', NULL),
(78, 'Ermenegildo', 'Ermenegildo', NULL, 'no', 'ermenegildo@gmail.com', '9bc34549d565d9505b287de0cd20ac77be1d3f2c', '2022-09-11 20:42:57', NULL, NULL),
(79, 'Nico', 'Nicolas', NULL, 'no', 'Nicolas@gmail.com', '230ca458880a428b97262e4876fcfe1741f21498', '2022-09-11 20:47:11', NULL, NULL),
(80, 'Carlos', 'Carlos', NULL, 'no', 'carlos@gmail.com', '4332e756d7877d568ba11664c4640b700d04edd9', '2022-09-11 20:51:20', NULL, NULL),
(81, 'Benito', 'Benito', NULL, 'no', 'benito@gmail.com', '7c4509a3d71dc2294dbf7fd79439de2dbe6262e4', '2022-09-11 20:55:58', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
