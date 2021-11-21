-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2021 a las 04:15:07
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nja`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `ca_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `ca_fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`ca_id`, `po_id`, `us_id`, `ca_fecha_registro`) VALUES
(1, 1, 1, '2021-11-16 02:49:13'),
(2, 2, 1, '2021-11-16 02:50:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `po_id` int(11) NOT NULL,
  `po_nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `po_marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NJA',
  `po_precio` double NOT NULL DEFAULT 10,
  `po_categoria` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Camisa',
  `po_cantidad` int(1) NOT NULL DEFAULT 1,
  `po_imagen` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `po_edad` int(150) NOT NULL DEFAULT 22,
  `po_genero` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Femenino',
  `po_activo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`po_id`, `po_nombre`, `po_marca`, `po_precio`, `po_categoria`, `po_cantidad`, `po_imagen`, `po_edad`, `po_genero`, `po_activo`) VALUES
(1, 'Adidos', 'NJA', 34.4, 'Zapatos', 1, 'default.jpg', 22, 'Masculino', 'S'),
(2, 'Adidas 2', 'NJA', 34.4, 'Zapatos', 1, 'default.jpg', 22, 'femenino', 'S'),
(4, '', 'NJA', 10, 'Camisa', 1, 'default.jpg', 22, 'Femenino', 'S'),
(5, '', 'NJA', 10, 'Camisa', 1, 'default.jpg', 22, 'Masculino', 'S'),
(6, '', 'NJA', 10, 'Camisa', 1, 'default.jpg', 22, 'Unisex', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `us_id` int(11) NOT NULL,
  `us_usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `us_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `us_tipo` int(1) NOT NULL DEFAULT 0,
  `us_activo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`us_id`, `us_usuario`, `us_password`, `us_tipo`, `us_activo`) VALUES
(1, 'alberto', '123456', 0, 'S');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`ca_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`po_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
