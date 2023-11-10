-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 21:44:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_oradores` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_oradores`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Clara', 'Mendoza', 'claramendoza@gmail.com', 'JavaScript', '2023-11-10 17:35:59'),
(2, 'Juan', 'Perez', 'juanperez@gmail.com', 'NodeJs', '2023-11-10 17:38:35'),
(3, 'Natalia', 'Gonzalez', 'natigonz@gmail.com', 'Java', '2023-11-10 17:38:35'),
(4, 'Martin', 'Pedroso', 'martupedroso@hotmail.com', 'Docker', '2023-11-10 17:38:35'),
(5, 'Mario', 'Gomez', 'mariogomez@gmail.com', 'MongoDB', '2023-11-10 17:38:35'),
(6, 'Ignacio', 'Bianci', 'nachob89@gmail.com', 'Base de datos relacionales', '2023-11-10 17:40:15'),
(7, 'Ramiro', 'Palacio', 'ramapalacio@hotmail.com', 'PHP', '2023-11-10 17:40:15'),
(8, 'Maximiliano', 'Perez', 'maxiperez@gmail.com', 'HTML', '2023-11-10 17:40:58'),
(9, 'Fatima', 'Fernandez', 'fernandezfatima@gmail.com', 'Seguridad informática', '2023-11-10 17:41:56'),
(10, 'Facundo', 'Bruno', 'facubruno@gmail.com', 'Python', '2023-11-10 17:43:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_oradores`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_oradores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
