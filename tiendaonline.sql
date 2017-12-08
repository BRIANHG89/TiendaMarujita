-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2013 a las 15:33:20
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tiendaonline`
--
CREATE DATABASE IF NOT EXISTS `tiendaonline` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `tiendaonline`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `telefono` int(12) DEFAULT NULL,
  `movil` int(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `direccioncalle` varchar(255) DEFAULT NULL,
  `codigopostal` varchar(255) DEFAULT NULL,
  `poblacion` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `dninif` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `usuario`, `contrasena`, `telefono`, `movil`, `fax`, `direccioncalle`, `codigopostal`, `poblacion`, `pais`, `dninif`) VALUES
(1, 'Jose Vicente', 'Carratala Sanchis', 'info@josevicentecarratala.com', 'jocarsa', 'jocarsa', 0, 0, '', '', '', '', '', ''),
(2, 'Juan', 'Lopez Martinez', 'info@jocarsa.com', 'juan', 'lopez', 0, 0, '', '', '', '', '', ''),
(6, 'Jaime', 'Garcia', '', 'jaime', 'garcia', 0, 0, '', '', '', '', '', ''),
(7, '', '', '', '', '', 0, 0, '', '', '', '', '', ''),
(8, 'c', 'd', 'e', 'a', 'b', 0, 0, '', '', '', '', '', ''),
(9, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 0, 0, '', '', '', '', '', ''),
(10, 'gsdf', 'gsdf', 'gsdfg', 'jocarsa2', 'gwdefg', 0, 0, '', '', '', '', '', ''),
(11, 'nuevo', 'nuevo', 'nuevo', 'nuevo', 'nuevo', 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesproductos`
--

CREATE TABLE IF NOT EXISTS `imagenesproductos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idproducto` int(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `imagenesproductos`
--

INSERT INTO `imagenesproductos` (`id`, `idproducto`, `imagen`, `titulo`, `descripcion`) VALUES
(1, 1, 'lampara1a.png', 'Título 1', 'Descripción 1'),
(2, 1, 'lampara1b.png', 'Título de la segunda imagen', 'Descripción'),
(3, 2, 'lampara2a.png', 'Título de la imagen', 'Descripción'),
(4, 2, 'lampara2b.png', 'Título', 'Descripción'),
(5, 3, 'lampara3a.png', 'Título', 'Descripción'),
(6, 3, 'lampara3b.png', 'Título', 'Descripción'),
(7, 0, '', '', ''),
(8, 6, '', '', ''),
(9, 7, 'lampara4a.png', '', ''),
(10, 8, 'lampara4a.png', '', ''),
(11, 9, 'lampara4a.png', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaspedido`
--

CREATE TABLE IF NOT EXISTS `lineaspedido` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idpedido` int(100) DEFAULT NULL,
  `idproducto` int(100) DEFAULT NULL,
  `unidades` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Volcado de datos para la tabla `lineaspedido`
--

INSERT INTO `lineaspedido` (`id`, `idpedido`, `idproducto`, `unidades`) VALUES
(3, 5, 1, 1),
(4, 5, 2, 1),
(5, 5, 3, 1),
(6, 6, 1, 1),
(7, 6, 2, 1),
(8, 6, 3, 1),
(9, 7, 1, 1),
(10, 7, 2, 1),
(11, 7, 3, 1),
(12, 8, 1, 1),
(13, 8, 2, 1),
(14, 8, 3, 1),
(15, 9, 1, 1),
(16, 9, 2, 1),
(17, 9, 3, 1),
(18, 10, 1, 1),
(19, 10, 2, 1),
(20, 10, 3, 1),
(21, 11, 1, 1),
(22, 12, 1, 1),
(23, 13, 1, 1),
(24, 14, 1, 1),
(25, 15, 1, 1),
(26, 16, 1, 1),
(27, 17, 1, 1),
(28, 18, 1, 1),
(29, 18, 2, 1),
(30, 18, 3, 1),
(31, 19, 1, 1),
(32, 19, 2, 1),
(33, 19, 3, 1),
(34, 19, 2, 1),
(35, 20, 1, 1),
(36, 20, 1, 1),
(37, 20, 1, 1),
(38, 20, 1, 1),
(39, 20, 2, 1),
(40, 20, 3, 1),
(41, 20, 2, 1),
(42, 20, 1, 1),
(43, 20, 2, 1),
(44, 20, 3, 1),
(45, 21, 1, 1),
(46, 21, 2, 1),
(47, 21, 3, 1),
(48, 22, 1, 1),
(49, 22, 2, 1),
(50, 22, 3, 1),
(51, 22, 1, 1),
(52, 22, 1, 1),
(53, 23, 2, 3),
(54, 23, 3, 1),
(55, 24, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idcliente` int(100) DEFAULT NULL,
  `fecha` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idcliente`, `fecha`, `estado`) VALUES
(2, 1, '1378370611', '1'),
(3, 2, '1378370703', '1'),
(4, 2, '1378371165', '2'),
(5, 1, '1378371384', '1'),
(6, 2, '1378371744', '0'),
(7, 2, '1378371813', '0'),
(8, 1, '1378371829', '0'),
(9, 1, '1378371869', '0'),
(10, 1, '1378372025', '1'),
(11, 1, '1378373074', '0'),
(12, 1, '1378373135', '2'),
(13, 1, '1378373247', '0'),
(14, 1, '1378373329', '0'),
(15, 1, '1378373395', '0'),
(16, 1, '1378373425', '0'),
(17, 1, '1378375518', '0'),
(18, 1, '1378375558', '0'),
(19, 1, '1378391155', '0'),
(20, 6, '1378637008', '1'),
(21, 9, '1378733545', '0'),
(22, 10, '1378734044', '0'),
(23, 1, '1378736596', '0'),
(24, 11, '1378736877', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(30,2) DEFAULT NULL,
  `peso` int(255) DEFAULT NULL,
  `longitud` int(255) DEFAULT NULL,
  `anchura` int(255) DEFAULT NULL,
  `altura` int(255) DEFAULT NULL,
  `existencias` int(255) DEFAULT NULL,
  `activado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `peso`, `longitud`, `anchura`, `altura`, `existencias`, `activado`) VALUES
(1, 'Lámpara Icosaedro', 'Descripción de la lámpara icosaedro', '21.00', 1, 20, 20, 20, 1, 1),
(2, 'Lámpara cubo', 'Esta es la descripción de la lámpara cubo', '25.00', 1, 25, 25, 25, 23, 1),
(3, 'Lámpara Estrella', 'Descripción de la lámpara estrella', '25.00', 1, 20, 20, 20, 8, 1),
(8, 'Lámpara Dodecaedro', '', '30.00', 1, 1, 1, 1, 20, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE IF NOT EXISTS `registros` (
  `utc` int(100) NOT NULL,
  `anio` int(4) NOT NULL,
  `mes` int(2) NOT NULL,
  `dia` int(2) NOT NULL,
  `hora` int(2) NOT NULL,
  `minuto` int(2) NOT NULL,
  `segundo` int(2) NOT NULL,
  `ip` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `navegador` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pagina` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`utc`, `anio`, `mes`, `dia`, `hora`, `minuto`, `segundo`, `ip`, `navegador`, `pagina`) VALUES
(0, 0, 0, 0, 0, 0, 0, '', '', ''),
(0, 0, 0, 0, 0, 0, 0, '', '', ''),
(1378631762, 2013, 9, 8, 11, 16, 2, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378631801, 2013, 9, 8, 11, 16, 41, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/producto.php?id=1'),
(1378631807, 2013, 9, 8, 11, 16, 47, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378631814, 2013, 9, 8, 11, 16, 54, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378633635, 2013, 9, 8, 11, 47, 15, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378633637, 2013, 9, 8, 11, 47, 17, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378636979, 2013, 9, 8, 12, 42, 59, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378636981, 2013, 9, 8, 12, 43, 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378637000, 2013, 9, 8, 12, 43, 20, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378637016, 2013, 9, 8, 12, 43, 36, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378732661, 2013, 9, 9, 15, 17, 41, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378732709, 2013, 9, 9, 15, 18, 29, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378732857, 2013, 9, 9, 15, 20, 57, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378732922, 2013, 9, 9, 15, 22, 2, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378733015, 2013, 9, 9, 15, 23, 35, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378733107, 2013, 9, 9, 15, 25, 7, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378733186, 2013, 9, 9, 15, 26, 26, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378733198, 2013, 9, 9, 15, 26, 38, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378733213, 2013, 9, 9, 15, 26, 53, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378733530, 2013, 9, 9, 15, 32, 10, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378733534, 2013, 9, 9, 15, 32, 14, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378733552, 2013, 9, 9, 15, 32, 32, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378733994, 2013, 9, 9, 15, 39, 54, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378734017, 2013, 9, 9, 15, 40, 17, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378734052, 2013, 9, 9, 15, 40, 52, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378734692, 2013, 9, 9, 15, 51, 32, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378734808, 2013, 9, 9, 15, 53, 28, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378734865, 2013, 9, 9, 15, 54, 25, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378735363, 2013, 9, 9, 16, 2, 43, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378735471, 2013, 9, 9, 16, 4, 31, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378735866, 2013, 9, 9, 16, 11, 6, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378735966, 2013, 9, 9, 16, 12, 46, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378735997, 2013, 9, 9, 16, 13, 17, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378736029, 2013, 9, 9, 16, 13, 49, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378736223, 2013, 9, 9, 16, 17, 3, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378736289, 2013, 9, 9, 16, 18, 9, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378736335, 2013, 9, 9, 16, 18, 55, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378736362, 2013, 9, 9, 16, 19, 22, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378736589, 2013, 9, 9, 16, 23, 9, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378736603, 2013, 9, 9, 16, 23, 23, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378736861, 2013, 9, 9, 16, 27, 41, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/confirmar.php'),
(1378736884, 2013, 9, 9, 16, 28, 4, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378738580, 2013, 9, 9, 16, 56, 20, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378739310, 2013, 9, 9, 17, 8, 30, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378739432, 2013, 9, 9, 17, 10, 32, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378739591, 2013, 9, 9, 17, 13, 11, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378739607, 2013, 9, 9, 17, 13, 27, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378739609, 2013, 9, 9, 17, 13, 29, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378739642, 2013, 9, 9, 17, 14, 2, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/index.php'),
(1378801480, 2013, 9, 10, 10, 24, 40, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/'),
(1378988708, 2013, 9, 12, 14, 25, 8, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '/tiendaonline/');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
