-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-05-2015 a las 16:38:16
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.4.36-0+deb7u3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `practica8`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Enlace`
--

CREATE TABLE IF NOT EXISTS `Enlace` (
  `id_enlace` int(50) NOT NULL,
  `id_usuario` varchar(50) NOT NULL,
  `id_trabajador` varchar(50) NOT NULL,
  `descripcion` varchar(450) NOT NULL,
  `respuesta` varchar(450) NOT NULL,
  PRIMARY KEY (`id_enlace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Trabajador`
--

CREATE TABLE IF NOT EXISTS `Trabajador` (
  `id_trabajador` varchar(50) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` int(12) NOT NULL,
  `area` varchar(20) NOT NULL,
  `especialidad` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `domicilio` text NOT NULL,
  PRIMARY KEY (`id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Trabajador`
--

INSERT INTO `Trabajador` (`id_trabajador`, `nombre`, `apellidos`, `correo`, `telefono`, `area`, `especialidad`, `password`, `domicilio`) VALUES
('goliath309', 'Nevin', 'Santana', 'roll.93@hotmial.com', 70282928, 'sistemas', 'programacion web', '123', 'Estado de México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE IF NOT EXISTS `Usuario` (
  `id_usuario` varchar(50) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id_usuario`, `nombre`, `apellidos`, `correo`, `telefono`, `domicilio`, `password`) VALUES
('davidg', 'David', 'Gatica', '123', '59485746', 'Distrito Federal', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
