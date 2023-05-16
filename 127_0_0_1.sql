-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-05-2023 a las 03:07:48
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd-spb`
--
CREATE DATABASE IF NOT EXISTS `bd-spb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bd-spb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blandas`
--

DROP TABLE IF EXISTS `blandas`;
CREATE TABLE IF NOT EXISTS `blandas` (
  `id_blanda` int NOT NULL,
  `color_blanda` varchar(255) NOT NULL,
  `id_persona` int NOT NULL,
  `nombre_blanda` varchar(255) NOT NULL,
  `url_img_blanda` varchar(255) NOT NULL,
  PRIMARY KEY (`id_blanda`),
  KEY `fk_persona_idpersona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blandas_seq`
--

DROP TABLE IF EXISTS `blandas_seq`;
CREATE TABLE IF NOT EXISTS `blandas_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `blandas_seq`
--

INSERT INTO `blandas_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duras`
--

DROP TABLE IF EXISTS `duras`;
CREATE TABLE IF NOT EXISTS `duras` (
  `id_persona` int NOT NULL,
  `id_dura` int NOT NULL,
  `porcentaje` int NOT NULL,
  `color_dura` varchar(255) NOT NULL,
  `giro` double NOT NULL,
  `nombre_dura` varchar(255) NOT NULL,
  `num` double NOT NULL,
  PRIMARY KEY (`id_dura`),
  KEY `fk_persona_idpersona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duras_seq`
--

DROP TABLE IF EXISTS `duras_seq`;
CREATE TABLE IF NOT EXISTS `duras_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `duras_seq`
--

INSERT INTO `duras_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio_formal`
--

DROP TABLE IF EXISTS `estudio_formal`;
CREATE TABLE IF NOT EXISTS `estudio_formal` (
  `id_estudio` int NOT NULL,
  `id_persona` int NOT NULL,
  `nombre_instituto` varchar(255) NOT NULL,
  `periodo_estudio` varchar(255) DEFAULT NULL,
  `titulo_estudio` varchar(255) DEFAULT NULL,
  `url_instituto` varchar(255) DEFAULT NULL,
  `url_img_inst` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estudio`),
  KEY `fk_persona_idpersona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio_formal_seq`
--

DROP TABLE IF EXISTS `estudio_formal_seq`;
CREATE TABLE IF NOT EXISTS `estudio_formal_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudio_formal_seq`
--

INSERT INTO `estudio_formal_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio_tic`
--

DROP TABLE IF EXISTS `estudio_tic`;
CREATE TABLE IF NOT EXISTS `estudio_tic` (
  `id_tic` int NOT NULL,
  `curso_tic` varchar(255) DEFAULT NULL,
  `id_persona` int NOT NULL,
  `nombre_inst_tic` varchar(255) NOT NULL,
  `periodo_tic` varchar(255) DEFAULT NULL,
  `url_inst_tic` varchar(255) DEFAULT NULL,
  `url_img_tic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tic`),
  KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio_tic_seq`
--

DROP TABLE IF EXISTS `estudio_tic_seq`;
CREATE TABLE IF NOT EXISTS `estudio_tic_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudio_tic_seq`
--

INSERT INTO `estudio_tic_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboral`
--

DROP TABLE IF EXISTS `laboral`;
CREATE TABLE IF NOT EXISTS `laboral` (
  `id_laboral` int NOT NULL,
  `desc_empresa` varchar(255) DEFAULT NULL,
  `id_persona` int NOT NULL,
  `nombre_empresa` varchar(255) NOT NULL,
  `periodo_empresa` varchar(255) DEFAULT NULL,
  `url_empresa` varchar(255) DEFAULT NULL,
  `url_img_lab` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_laboral`),
  KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboral_seq`
--

DROP TABLE IF EXISTS `laboral_seq`;
CREATE TABLE IF NOT EXISTS `laboral_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `laboral_seq`
--

INSERT INTO `laboral_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id_persona` int NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `url_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `apellido`, `nombre`, `url_img`) VALUES
(1, 'Borsani', 'Silvana Paula', 'ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_seq`
--

DROP TABLE IF EXISTS `persona_seq`;
CREATE TABLE IF NOT EXISTS `persona_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `persona_seq`
--

INSERT INTO `persona_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_persona` int NOT NULL,
  `id_py` int NOT NULL,
  `desc_py` varchar(255) DEFAULT NULL,
  `foto_py` int NOT NULL,
  `nombre_py` varchar(255) NOT NULL,
  `periodo_py` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_py`),
  KEY `fk_persona_idPesona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_seq`
--

DROP TABLE IF EXISTS `proyecto_seq`;
CREATE TABLE IF NOT EXISTS `proyecto_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proyecto_seq`
--

INSERT INTO `proyecto_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

DROP TABLE IF EXISTS `redes`;
CREATE TABLE IF NOT EXISTS `redes` (
  `id_red` int NOT NULL,
  `id_persona` int NOT NULL,
  `nombre_red` varchar(255) NOT NULL,
  `url_red` varchar(255) NOT NULL,
  `url_img_red` varchar(255) NOT NULL,
  PRIMARY KEY (`id_red`),
  KEY `fk_persona_idpersona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id_red`, `id_persona`, `nombre_red`, `url_red`, `url_img_red`) VALUES
(1, 1, 'Facebook', 'aca url', 'aca img');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes_seq`
--

DROP TABLE IF EXISTS `redes_seq`;
CREATE TABLE IF NOT EXISTS `redes_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `redes_seq`
--

INSERT INTO `redes_seq` (`next_val`) VALUES
(51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `id_rol` int NOT NULL,
  `rol_nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_seq`
--

DROP TABLE IF EXISTS `rol_seq`;
CREATE TABLE IF NOT EXISTS `rol_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `rol_seq`
--

INSERT INTO `rol_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email_usuario`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'admin@domain.com', 'Silvana', 'admin', '$2a$10$VshhZO/huoe6S2/wHB3Dne3o5YaHo9oxboQcDvzq06W3xotbPGrNq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `usuario_id_usuario` int NOT NULL,
  `rol_id_usuario` int NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`rol_id_usuario`),
  KEY `FK6kj06e7tqeko1o0ge7604peft` (`rol_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id_usuario`, `rol_id_usuario`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_seq`
--

DROP TABLE IF EXISTS `usuario_seq`;
CREATE TABLE IF NOT EXISTS `usuario_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario_seq`
--

INSERT INTO `usuario_seq` (`next_val`) VALUES
(51);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `blandas`
--
ALTER TABLE `blandas`
  ADD CONSTRAINT `blandas_ibfk_1` FOREIGN KEY (`id_blanda`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `duras`
--
ALTER TABLE `duras`
  ADD CONSTRAINT `duras_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudio_formal`
--
ALTER TABLE `estudio_formal`
  ADD CONSTRAINT `estudio_formal_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudio_tic`
--
ALTER TABLE `estudio_tic`
  ADD CONSTRAINT `estudio_tic_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `laboral`
--
ALTER TABLE `laboral`
  ADD CONSTRAINT `laboral_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `redes`
--
ALTER TABLE `redes`
  ADD CONSTRAINT `redes_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK6kj06e7tqeko1o0ge7604peft` FOREIGN KEY (`rol_id_usuario`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `FKpcxpmhgrf0w0c8u3pouxaqttw` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `ID` int NOT NULL,
  `APELLIDO` varchar(255) DEFAULT NULL,
  `DNI` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID`, `APELLIDO`, `DNI`, `NOMBRE`, `TEL`) VALUES
(1, 'ddddd', '222222', 'aaaaa', '55555'),
(2, 'uuuuu', '11111', 'ggggg', '66666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence`
--

DROP TABLE IF EXISTS `sequence`;
CREATE TABLE IF NOT EXISTS `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `sequence`
--

INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('SEQ_GEN', '100');
--
-- Base de datos: `silborsa`
--
CREATE DATABASE IF NOT EXISTS `silborsa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `silborsa`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
