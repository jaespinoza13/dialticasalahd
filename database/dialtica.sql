-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2021 a las 03:26:12
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dialtica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camas`
--

CREATE TABLE `camas` (
  `id_camas` int(11) NOT NULL,
  `cama` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `camas`
--

INSERT INTO `camas` (`id_camas`, `cama`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diasdelasemana`
--

CREATE TABLE `diasdelasemana` (
  `id_diasdelasemana` int(20) NOT NULL,
  `dia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `diasdelasemana`
--

INSERT INTO `diasdelasemana` (`id_diasdelasemana`, `dia`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sábado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordellegada`
--

CREATE TABLE `ordellegada` (
  `id_ordenllegada` int(11) NOT NULL,
  `ordenllegada` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ordellegada`
--

INSERT INTO `ordellegada` (`id_ordenllegada`, `ordenllegada`) VALUES
(1, 'EN ESPERA'),
(2, '1'),
(3, '2'),
(4, '3'),
(5, '4'),
(6, '5'),
(7, '6'),
(8, '7'),
(9, '8'),
(10, '9'),
(11, '10'),
(12, '11'),
(13, '12'),
(14, '13'),
(15, '14'),
(16, '15'),
(17, '16'),
(18, '17'),
(19, '18'),
(20, '19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_pacientes` int(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_pacientes`, `nombres`, `apellidos`) VALUES
(1, 'AIDA ', 'PEÑAHERRERA'),
(2, 'CELIANDO', 'ALULIMA'),
(3, 'CESAR ', 'TORRES'),
(4, 'DOLORES ', 'GONZALEZ'),
(5, 'JOSE ANTONIO ', 'GUAMAN'),
(6, 'LUIS ', 'LAFEBRE'),
(7, 'MARIA ', 'JUMBO'),
(8, 'MARIA ', 'VELEZ'),
(9, 'MARIANA ', 'GAONA'),
(10, 'MIGUEL ', 'SAETAMA'),
(11, 'NILSA ', 'ARROBO'),
(12, 'ROSA ', 'CORREA'),
(13, 'SANTOS ', 'MORENO'),
(14, 'SANTOS ', 'ORDOÑEZ'),
(15, 'VANESSA ', 'TORRES'),
(19, 'NANCY ', 'ROMAN'),
(20, 'MANUEL ', 'SARMIENTO'),
(21, 'SILVIA ', 'BALBUCA'),
(22, 'EDI ', 'ANDINO'),
(23, 'HERLINDA ', 'CASTILLO'),
(24, 'FAVIOLA ', 'MALLA'),
(25, 'MARIA ', 'OLMEDO'),
(26, 'LUIS ', 'JUMBO'),
(27, 'JOSÉ ', 'ROLDAN'),
(28, 'ALBA ', 'GONZAGA'),
(29, 'AMELIA ', 'PICOÍTA'),
(30, 'MARÍA ', 'GAONA'),
(31, 'MARIELA ', 'MORA'),
(32, 'MARTHA ', 'RENGEL'),
(33, 'LIGIA ', 'GONZALEZ'),
(34, 'MELVA ', 'CASTILLO'),
(35, 'MELVA ', 'CUEVA'),
(36, 'ELIGIA ', 'IÑIGUEZ'),
(37, 'MANUEL ', 'VALLADARES'),
(38, 'JAANDRI ', 'NAULA'),
(39, 'SEGUNDO ', 'BARRIGAS'),
(40, 'GUADALUPE ', 'HERRERA'),
(41, 'MARLON ', 'GALLEGOS'),
(42, 'GUALBERTO ', 'GONZALEZ'),
(43, 'CARMEN ', 'JARAMILLO'),
(44, 'MIGUEL ', 'VELASQUEZ'),
(45, 'JUAN ', 'RAMOS'),
(46, 'GERMANIA ', 'JIMÉNEZ'),
(47, 'JOSÉ ', 'HERNANDEZ'),
(48, 'MARCOS ', 'PINZÓN'),
(49, 'FLORENTINO ', 'ORDOÑEZ'),
(50, 'BRICEIDA ', 'CEDEÑO'),
(51, 'JUAN ', 'MONTAÑO'),
(52, 'DIOCELINA ', 'CASTILLO'),
(53, 'ENRIQUE ', 'OBANDO'),
(54, 'DIONICIO ', 'SUAREZ'),
(55, 'CELSO ', 'NOLE'),
(56, 'NATIVIDAD ', 'OBACO'),
(57, 'NELA ', 'ASANZA'),
(58, 'JORGE ', 'GARRIDO'),
(59, 'CARMEN ', 'AGUILAR'),
(60, 'MÉLIDA ', 'BRAVO'),
(61, 'MIGUEL ', 'CASTILLO'),
(62, 'ANGELINA ', 'JUMBO'),
(63, 'FANI ', 'FLORES'),
(64, 'TERESA ', 'CHAMBA'),
(65, 'LUIS FERNANDO', 'SÁNCHEZ'),
(66, 'JAIME ', 'ORDOÑEZ'),
(67, 'WILMAN ', 'OCHOA '),
(68, 'ALFONSO ', 'ABARCA'),
(69, 'ROMINA ', 'SÁNCHEZ'),
(70, 'JONATHAN ', 'CUENCA'),
(71, 'LEYDI ', 'RENGEL'),
(72, 'MANUEL ', 'CANO'),
(73, 'MATÍAS ', 'CASTILLO'),
(74, 'ROSA ', 'CHINGO'),
(75, 'FREDDY ', 'GUAYANAY'),
(76, 'WALTER ', 'GARCÍA '),
(77, 'MARGARITA ', 'JADÁN'),
(78, 'JORGE ', 'QUIZHPE'),
(79, 'SIXTO ', 'ESPINOZA'),
(80, 'NOLTE ', 'CELI'),
(81, 'MARÍA ', 'ALVARADO'),
(82, 'DOLORES ', 'VENEGAS'),
(83, 'ANGELINA ', 'ANGAMARCA'),
(84, 'GRACIELA ', 'SUQUILANDA'),
(85, 'LUIS ', 'CARRILLO'),
(86, 'MERCEDES ', 'ZAPATA'),
(87, 'MARIO ', 'CARPIO'),
(88, 'JENY ', 'ORTEGA'),
(89, 'MARIANA ', 'MENDOZA'),
(90, 'LUIS ', 'MATAILO'),
(91, 'MARCELO ', 'TORRES'),
(92, 'LUIS ', 'SUAREZ'),
(93, 'EUDORO ', 'SALAZAR'),
(94, 'HILARIO ', 'SISALIMA'),
(95, 'HERNÁN ', 'QUITO'),
(96, 'AMADA ', 'TORRES'),
(97, 'JORGE ', 'SISALIMA'),
(98, 'MEDARDO ', 'PALACIOS'),
(99, 'ROSA ', 'RUILOVA'),
(100, 'ANA ', 'JIMÉNEZ'),
(101, 'MÓNICA ', 'POMA'),
(102, 'MARÍA ', 'CANUZA'),
(103, 'VICENTE ', 'GUERRERO'),
(104, 'CARMEN ', 'DONOSO'),
(105, 'VICTORIA ', 'MALDONADO'),
(106, 'CARLOS ', 'ORELLANA'),
(107, 'MIGUEL ', 'ALVARADO'),
(108, 'JOSÉ ', 'SARANGO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropacientes`
--

CREATE TABLE `registropacientes` (
  `id_registros` int(20) NOT NULL,
  `paciente` varchar(100) NOT NULL,
  `cama_asiganda` int(20) NOT NULL,
  `orden_llegada` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registropacientes`
--

INSERT INTO `registropacientes` (`id_registros`, `paciente`, `cama_asiganda`, `orden_llegada`) VALUES
(1505, 'NANCY ROMAN', 1, 'EN ESPERA'),
(1506, 'MANUEL SARMIENTO', 2, 'EN ESPERA'),
(1507, 'SILVIA BALBUCA', 4, 'EN ESPERA'),
(1508, 'EDI ANDINO', 5, 'EN ESPERA'),
(1509, 'HERLINDA CASTILLO', 6, 'EN ESPERA'),
(1510, 'FAVIOLA MALLA', 7, 'EN ESPERA'),
(1511, 'MARIA OLMEDO', 8, 'EN ESPERA'),
(1512, 'LUIS JUMBO', 9, 'EN ESPERA'),
(1513, 'JOSÉ ROLDAN', 10, 'EN ESPERA'),
(1514, 'ALBA GONZAGA', 11, 'EN ESPERA'),
(1515, 'AMELIA PICOÍTA', 12, 'EN ESPERA'),
(1516, 'MARÍA GAONA', 13, 'EN ESPERA'),
(1517, 'MARIELA MORA', 14, 'EN ESPERA'),
(1518, 'MARTHA RENGEL', 15, 'EN ESPERA'),
(1519, 'LIGIA GONZALEZ', 16, 'EN ESPERA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relaciones`
--

CREATE TABLE `relaciones` (
  `idrelaciones` int(11) NOT NULL,
  `iddias` int(11) NOT NULL,
  `idturnos` int(11) NOT NULL,
  `idpacientes` int(11) NOT NULL,
  `idcamas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `relaciones`
--

INSERT INTO `relaciones` (`idrelaciones`, `iddias`, `idturnos`, `idpacientes`, `idcamas`) VALUES
(1, 2, 2, 1, 1),
(2, 2, 2, 2, 1),
(3, 2, 2, 3, 1),
(4, 2, 2, 4, 1),
(5, 2, 2, 5, 1),
(6, 2, 2, 6, 1),
(7, 2, 2, 7, 1),
(8, 2, 2, 8, 1),
(9, 2, 2, 9, 1),
(10, 2, 2, 10, 1),
(11, 2, 2, 11, 1),
(12, 2, 2, 12, 1),
(13, 2, 2, 13, 1),
(14, 2, 2, 14, 1),
(15, 2, 2, 15, 1),
(19, 1, 1, 19, 1),
(20, 1, 1, 20, 2),
(21, 1, 1, 21, 4),
(22, 1, 1, 22, 5),
(23, 1, 1, 23, 6),
(24, 1, 1, 24, 7),
(25, 1, 1, 25, 8),
(26, 1, 1, 26, 9),
(27, 1, 1, 27, 10),
(28, 1, 1, 28, 11),
(29, 1, 1, 29, 12),
(30, 1, 1, 30, 13),
(31, 1, 1, 31, 14),
(32, 1, 1, 32, 15),
(33, 1, 1, 33, 16),
(34, 1, 2, 34, 1),
(35, 1, 2, 35, 2),
(36, 1, 2, 36, 3),
(37, 1, 2, 37, 4),
(38, 1, 2, 38, 5),
(39, 1, 2, 39, 6),
(40, 1, 2, 40, 7),
(41, 1, 2, 41, 8),
(42, 1, 2, 42, 9),
(43, 1, 2, 43, 10),
(44, 1, 2, 44, 11),
(45, 1, 2, 45, 12),
(46, 1, 2, 46, 13),
(47, 1, 2, 47, 14),
(48, 1, 2, 48, 15),
(49, 1, 2, 49, 16),
(50, 1, 3, 50, 1),
(51, 1, 3, 51, 1),
(52, 1, 3, 52, 1),
(53, 1, 3, 53, 1),
(54, 1, 3, 54, 1),
(55, 1, 3, 55, 1),
(56, 1, 3, 56, 1),
(57, 1, 3, 57, 1),
(58, 1, 3, 58, 1),
(59, 1, 3, 59, 1),
(60, 1, 3, 60, 1),
(61, 1, 3, 61, 1),
(62, 1, 3, 62, 1),
(63, 1, 3, 63, 1),
(64, 1, 3, 64, 1),
(65, 1, 4, 65, 1),
(66, 1, 4, 66, 2),
(67, 1, 4, 67, 3),
(68, 1, 4, 68, 4),
(69, 1, 4, 69, 5),
(70, 1, 4, 70, 6),
(71, 1, 4, 71, 7),
(72, 1, 4, 72, 8),
(73, 1, 4, 73, 9),
(74, 1, 4, 74, 10),
(75, 1, 4, 75, 11),
(76, 1, 4, 76, 12),
(77, 1, 4, 77, 13),
(78, 1, 4, 78, 14),
(79, 1, 4, 79, 15),
(80, 1, 4, 80, 16),
(85, 2, 1, 81, 1),
(86, 2, 1, 82, 2),
(87, 2, 1, 83, 4),
(88, 2, 1, 84, 5),
(89, 2, 1, 85, 6),
(90, 2, 1, 86, 7),
(91, 2, 1, 87, 8),
(92, 2, 1, 88, 9),
(93, 2, 1, 89, 11),
(94, 2, 1, 90, 12),
(95, 2, 1, 91, 13),
(96, 2, 1, 92, 14),
(97, 2, 1, 93, 15),
(98, 2, 1, 94, 16),
(99, 2, 3, 95, 1),
(100, 2, 3, 96, 2),
(101, 2, 3, 97, 3),
(102, 2, 3, 98, 4),
(103, 2, 3, 99, 5),
(104, 2, 3, 100, 6),
(105, 2, 3, 101, 7),
(106, 2, 3, 102, 8),
(107, 2, 3, 103, 11),
(108, 2, 3, 104, 12),
(109, 2, 3, 105, 13),
(110, 2, 3, 106, 14),
(111, 2, 3, 107, 15),
(112, 2, 3, 108, 16),
(129, 3, 1, 19, 1),
(130, 3, 1, 20, 2),
(131, 3, 1, 21, 4),
(132, 3, 1, 22, 5),
(133, 3, 1, 23, 6),
(134, 3, 1, 24, 7),
(135, 3, 1, 25, 8),
(136, 3, 1, 26, 9),
(137, 3, 1, 27, 10),
(138, 3, 1, 28, 11),
(139, 3, 1, 29, 12),
(140, 3, 1, 30, 13),
(141, 3, 1, 31, 14),
(142, 3, 1, 32, 15),
(143, 3, 1, 33, 16),
(144, 3, 2, 34, 1),
(145, 3, 2, 35, 2),
(146, 3, 2, 36, 3),
(147, 3, 2, 37, 4),
(148, 3, 2, 38, 5),
(149, 3, 2, 39, 6),
(150, 3, 2, 40, 7),
(151, 3, 2, 41, 8),
(152, 3, 2, 42, 9),
(153, 3, 2, 43, 10),
(154, 3, 2, 44, 11),
(155, 3, 2, 45, 12),
(156, 3, 2, 46, 13),
(157, 3, 2, 47, 14),
(158, 3, 2, 48, 15),
(159, 3, 2, 49, 16),
(160, 3, 3, 50, 1),
(161, 3, 3, 51, 2),
(162, 3, 3, 52, 3),
(163, 3, 3, 53, 4),
(164, 3, 3, 54, 6),
(165, 3, 3, 55, 7),
(166, 3, 3, 56, 8),
(167, 3, 3, 57, 9),
(168, 3, 3, 58, 10),
(169, 3, 3, 59, 11),
(170, 3, 3, 60, 12),
(171, 3, 3, 61, 13),
(172, 3, 3, 62, 14),
(173, 3, 3, 63, 15),
(174, 3, 3, 64, 16),
(175, 3, 4, 65, 1),
(176, 3, 4, 66, 2),
(177, 3, 4, 67, 3),
(178, 3, 4, 68, 4),
(179, 3, 4, 69, 5),
(180, 3, 4, 70, 6),
(181, 3, 4, 71, 7),
(182, 3, 4, 72, 8),
(183, 3, 4, 73, 9),
(184, 3, 4, 74, 10),
(185, 3, 4, 75, 11),
(186, 3, 4, 76, 12),
(187, 3, 4, 77, 13),
(188, 3, 4, 78, 14),
(189, 3, 4, 79, 15),
(190, 3, 4, 80, 16),
(191, 4, 1, 81, 1),
(192, 4, 1, 82, 2),
(193, 4, 1, 83, 4),
(194, 4, 1, 84, 5),
(195, 4, 1, 85, 6),
(196, 4, 1, 86, 7),
(197, 4, 1, 87, 8),
(198, 4, 1, 88, 9),
(199, 4, 1, 89, 11),
(200, 4, 1, 90, 12),
(201, 4, 1, 91, 13),
(202, 4, 1, 92, 14),
(203, 4, 1, 93, 15),
(204, 4, 1, 94, 16),
(205, 4, 2, 9, 1),
(206, 4, 2, 6, 2),
(207, 4, 2, 13, 3),
(208, 4, 2, 1, 4),
(209, 4, 2, 3, 5),
(210, 4, 2, 7, 6),
(211, 4, 2, 10, 7),
(212, 4, 2, 15, 8),
(213, 4, 2, 11, 9),
(214, 4, 2, 12, 10),
(215, 4, 2, 2, 12),
(216, 4, 2, 8, 13),
(217, 4, 2, 13, 14),
(218, 4, 2, 4, 15),
(219, 4, 2, 5, 16),
(220, 4, 3, 95, 1),
(221, 4, 3, 96, 2),
(222, 4, 3, 97, 3),
(223, 4, 3, 98, 4),
(224, 4, 3, 99, 5),
(225, 4, 3, 100, 6),
(226, 4, 3, 101, 7),
(227, 4, 3, 102, 8),
(228, 4, 3, 103, 11),
(229, 4, 3, 104, 12),
(230, 4, 3, 105, 13),
(231, 4, 3, 106, 14),
(232, 4, 3, 107, 15),
(233, 4, 3, 108, 16),
(234, 5, 1, 19, 1),
(235, 5, 1, 20, 2),
(236, 5, 1, 21, 4),
(237, 5, 1, 22, 5),
(238, 5, 1, 23, 6),
(239, 5, 1, 24, 7),
(240, 5, 1, 25, 8),
(241, 5, 1, 26, 9),
(242, 5, 1, 27, 10),
(243, 5, 1, 28, 11),
(244, 5, 1, 29, 12),
(245, 5, 1, 30, 13),
(246, 5, 1, 31, 14),
(247, 5, 1, 32, 15),
(248, 5, 1, 33, 16),
(249, 5, 2, 34, 1),
(250, 5, 2, 35, 2),
(251, 5, 2, 36, 3),
(252, 5, 2, 37, 4),
(253, 5, 2, 38, 5),
(254, 5, 2, 39, 6),
(255, 5, 2, 40, 7),
(256, 5, 2, 41, 8),
(257, 5, 2, 42, 9),
(258, 5, 2, 43, 10),
(259, 5, 2, 44, 11),
(260, 5, 2, 45, 12),
(261, 5, 2, 46, 13),
(262, 5, 2, 47, 14),
(263, 5, 2, 48, 15),
(264, 5, 2, 49, 16),
(265, 5, 3, 50, 1),
(266, 5, 3, 51, 2),
(267, 5, 3, 52, 3),
(268, 5, 3, 53, 4),
(269, 5, 3, 54, 6),
(270, 5, 3, 55, 7),
(271, 5, 3, 56, 8),
(272, 5, 3, 57, 9),
(273, 5, 3, 58, 10),
(274, 5, 3, 59, 11),
(275, 5, 3, 60, 12),
(276, 5, 3, 61, 13),
(277, 5, 3, 62, 14),
(278, 5, 3, 63, 15),
(279, 5, 3, 64, 16),
(288, 5, 4, 65, 1),
(289, 5, 4, 66, 2),
(290, 5, 4, 67, 3),
(291, 5, 4, 68, 4),
(292, 5, 4, 69, 5),
(293, 5, 4, 70, 6),
(294, 5, 4, 71, 7),
(295, 5, 4, 72, 8),
(296, 5, 4, 73, 9),
(297, 5, 4, 74, 10),
(298, 5, 4, 75, 11),
(299, 5, 4, 76, 12),
(300, 5, 4, 77, 13),
(301, 5, 4, 78, 14),
(302, 5, 4, 79, 15),
(303, 5, 4, 80, 16),
(304, 6, 1, 81, 1),
(305, 6, 1, 82, 2),
(306, 6, 1, 83, 4),
(307, 6, 1, 84, 5),
(308, 6, 1, 85, 6),
(309, 6, 1, 86, 7),
(310, 6, 1, 87, 8),
(311, 6, 1, 88, 9),
(312, 6, 1, 89, 11),
(313, 6, 1, 90, 12),
(314, 6, 1, 91, 13),
(315, 6, 1, 92, 14),
(316, 6, 1, 93, 15),
(317, 6, 1, 94, 16),
(318, 6, 2, 9, 1),
(319, 6, 2, 6, 2),
(320, 6, 2, 14, 3),
(321, 6, 2, 1, 4),
(322, 6, 2, 3, 5),
(323, 6, 2, 7, 6),
(324, 6, 2, 10, 7),
(325, 6, 2, 15, 8),
(326, 6, 2, 11, 9),
(327, 6, 2, 12, 10),
(328, 6, 2, 2, 12),
(329, 6, 2, 8, 13),
(330, 6, 2, 13, 14),
(331, 6, 2, 4, 15),
(332, 6, 2, 5, 16),
(333, 6, 3, 95, 1),
(334, 6, 3, 96, 2),
(335, 6, 3, 97, 3),
(336, 6, 3, 98, 4),
(337, 6, 3, 99, 5),
(338, 6, 3, 100, 6),
(339, 6, 3, 101, 7),
(340, 6, 3, 102, 8),
(341, 6, 3, 103, 11),
(342, 6, 3, 104, 12),
(343, 6, 3, 105, 13),
(344, 6, 3, 106, 14),
(345, 6, 3, 107, 15),
(346, 6, 3, 108, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id_turnos` int(11) NOT NULL,
  `turno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id_turnos`, `turno`) VALUES
(1, 'Primer turno (05:00-09:00)'),
(2, 'Segundo turno (09:30-13:30)'),
(3, 'Tercer turno (14:00-18:00)'),
(4, 'Cuarto turno (18:30-22:30)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'dialtica', 'dialtica123'),
(2, 'recepcion', 'recepcion987');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camas`
--
ALTER TABLE `camas`
  ADD PRIMARY KEY (`id_camas`);

--
-- Indices de la tabla `diasdelasemana`
--
ALTER TABLE `diasdelasemana`
  ADD PRIMARY KEY (`id_diasdelasemana`);

--
-- Indices de la tabla `ordellegada`
--
ALTER TABLE `ordellegada`
  ADD PRIMARY KEY (`id_ordenllegada`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_pacientes`);

--
-- Indices de la tabla `registropacientes`
--
ALTER TABLE `registropacientes`
  ADD PRIMARY KEY (`id_registros`);

--
-- Indices de la tabla `relaciones`
--
ALTER TABLE `relaciones`
  ADD PRIMARY KEY (`idrelaciones`),
  ADD KEY `iddias` (`iddias`),
  ADD KEY `idturnos` (`idturnos`),
  ADD KEY `idpacientes` (`idpacientes`),
  ADD KEY `idcamas` (`idcamas`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id_turnos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camas`
--
ALTER TABLE `camas`
  MODIFY `id_camas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `diasdelasemana`
--
ALTER TABLE `diasdelasemana`
  MODIFY `id_diasdelasemana` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ordellegada`
--
ALTER TABLE `ordellegada`
  MODIFY `id_ordenllegada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_pacientes` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `registropacientes`
--
ALTER TABLE `registropacientes`
  MODIFY `id_registros` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1520;

--
-- AUTO_INCREMENT de la tabla `relaciones`
--
ALTER TABLE `relaciones`
  MODIFY `idrelaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id_turnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `relaciones`
--
ALTER TABLE `relaciones`
  ADD CONSTRAINT `relacion_camas` FOREIGN KEY (`idcamas`) REFERENCES `camas` (`id_camas`),
  ADD CONSTRAINT `relacion_dias` FOREIGN KEY (`iddias`) REFERENCES `diasdelasemana` (`id_diasdelasemana`) ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_pacientes` FOREIGN KEY (`idpacientes`) REFERENCES `pacientes` (`id_pacientes`) ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_turnos` FOREIGN KEY (`idturnos`) REFERENCES `turnos` (`id_turnos`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
