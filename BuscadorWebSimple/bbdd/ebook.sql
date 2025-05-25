-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2021 a las 21:18:30
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ebook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manuales`
--

CREATE TABLE `manuales` (
  `Autor` varchar(30) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `manuales`
--

INSERT INTO `manuales` (`Autor`, `Titulo`, `id`) VALUES
('Luis Joyanes Aguilar', 'Fundamentos de programación, algoritmos, estructura de datos y objetos', 1),
('Enrique Segura Alcalde', '1980-1990 La década dorada de los videojuegos retro', 2),
('Miriam Gris', 'Windows 10', 3),
('Victor Suarez', 'Mega Drive Legends', 4),
('Marta Peirano', 'El enemigo conoce el sistema', 5),
('Jesús Conde', 'Aprende PHP desde cero', 6),
('Juan Diaz', 'Todo lo que has de conocer de la librería Bootstrap', 7),
('Jesús Conde', 'JavaScript para principiantes', 8),
('Jesús Conde', 'Conectar base de datos con Java', 9),
('Manuel Gomez', 'Tablas dinámicas con Excel', 10),
('Juan Carlos Exposito', 'Aprende Word 2010', 11),
('Ismael Rufián', 'Proyectos prácticos con Java', 12),
('Santiago Pedrera', 'Todo lo que debes saber de HTML5', 13),
('Ramón Ocaña', 'Hojas de estilo: una primera aproximación', 14),
('Eva Suarez', 'JavaScript avanzado', 15),
('Oscar Rivas', 'Crea una base de datos en Access', 16),
('Manuel Juan Camacho', 'Seguridad en la red', 17),
('Ana Diaz', 'Curso práctico de Prestashop', 18),
('Pascual Benitez', 'Curso práctico de WordPress', 19),
('Rodrigo Ramos', 'PHP Orientado a objetos', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Movil` int(10) NOT NULL,
  `Direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Nombre`, `Apellidos`, `Email`, `Password`, `Movil`, `Direccion`) VALUES
('Celia', 'Campos', 'C/ Rosas, 6-1', '65525140', 0, '12345678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `manuales`
--
ALTER TABLE `manuales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `manuales`
--
ALTER TABLE `manuales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
