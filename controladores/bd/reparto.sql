-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.38-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para informereparto
CREATE DATABASE IF NOT EXISTS `informereparto` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `informereparto`;

-- Volcando estructura para tabla informereparto.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla informereparto.categorias: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
	(0, 'REPARTOS', '2022-05-11 14:40:12'),
	(7, 'CATEGORIA', '2022-05-11 18:10:40'),
	(8, 'REPARTO', '2022-05-11 18:33:39');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla informereparto.tbreparto
CREATE TABLE IF NOT EXISTS `tbreparto` (
  `ID_REPARTO` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_EMISION` date NOT NULL,
  `FECHA_IMPRESION` date NOT NULL,
  `PROCESO` varchar(30) COLLATE utf8_spanish_ci DEFAULT '',
  `UNICOM` varchar(30) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `RUTA` varchar(10) COLLATE utf8_spanish_ci DEFAULT '',
  `ITINERARIO` varchar(10) COLLATE utf8_spanish_ci DEFAULT '',
  `CANTIDAD` int(11) NOT NULL DEFAULT '0',
  `MUNICIPIO` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `BARRIOS` varchar(50) COLLATE utf8_spanish_ci DEFAULT 'NO AGREGADO',
  `ESTADO` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT '1 = EN REPARTO 2= NO PROGRAMADO 3= ALISTAMIENTO 4= PROGRAMADO',
  `FECHA_REPARTO` date NOT NULL,
  `CANT_ENTREGADAS` int(11) NOT NULL DEFAULT '0',
  `CANT_PENDIENTES` int(11) NOT NULL DEFAULT '0',
  `TIPO_SECTOR` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `REPARTIDOR` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `HORA_RECIBE` datetime NOT NULL,
  `HORA_FINALIZA` datetime NOT NULL,
  `SUPERVISOR` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `CELULAR_SUPERVISOR` char(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_REPARTO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Informacion inicial de los datos de las entregas de los informes de reparto\r\n';

-- Volcando datos para la tabla informereparto.tbreparto: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tbreparto` DISABLE KEYS */;
INSERT INTO `tbreparto` (`ID_REPARTO`, `FECHA_EMISION`, `FECHA_IMPRESION`, `PROCESO`, `UNICOM`, `RUTA`, `ITINERARIO`, `CANTIDAD`, `MUNICIPIO`, `BARRIOS`, `ESTADO`, `FECHA_REPARTO`, `CANT_ENTREGADAS`, `CANT_PENDIENTES`, `TIPO_SECTOR`, `REPARTIDOR`, `HORA_RECIBE`, `HORA_FINALIZA`, `SUPERVISOR`, `CELULAR_SUPERVISOR`, `OBSERVACIONES`) VALUES
	(1, '2022-05-12', '2022-05-12', 'Reparto Masivo Urbano', '1212', '01', '01', 15, 'BARRANQUILLA', 'CIUDAD JARDIN', 'Programado', '2022-05-12', 30, 15, 'Sector', 'Carlos Alvarado', '2022-05-12 01:03:00', '2022-05-12 02:03:00', 'Carlos Alvarado', '3017453145', 'Ninguna'),
	(2, '2022-05-13', '2022-05-13', 'Reparto Masivo', '1212', '01', '01', 20, 'BARRANQUILLA', 'NO AGREGADO', 'No Programado', '2022-05-13', 35, 20, 'Sector 2', 'Carlos Alvarado', '2022-05-13 09:00:47', '2022-05-13 09:00:49', 'Carlos Alvarado', '3017453145', ''),
	(3, '2022-05-13', '2022-05-13', 'Masivo Reporte', '1213', '02', '03', 36, 'MAGDALENA', 'NO AGREGADO', 'Programadop', '2022-05-13', 36, 12, 'Sector 3', 'Jeremy Alvarado', '2022-05-13 09:02:03', '2022-05-13 09:02:04', 'Mathias Alvarado', '3017453145', '');
/*!40000 ALTER TABLE `tbreparto` ENABLE KEYS */;

-- Volcando estructura para tabla informereparto.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla informereparto.usuarios: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
	(1, 'Usuario Administrador', 'admin', 'admin123', 'Administrador', '', 1, '2022-05-02 19:27:56', '2022-05-02 19:27:56'),
	(2, 'Carlos Alvarado', 'Carlos', '$2a$07$asxx54ahjppf45sd87a5au/quqc.rFd81zB2NAruwButhAYm9ff7O', 'Administrador', 'vistas/img/usuarios/Carlos/775.png', 1, '2022-05-23 13:41:12', '2022-05-23 13:41:12'),
	(5, 'Tania', 'Tania', '$2a$07$asxx54ahjppf45sd87a5auAhelmmhFdalmh3BF3H6XneWbUcyLU3G', 'Administrador', 'vistas/img/usuarios/Tania/496.png', 1, '0000-00-00 00:00:00', '2022-05-12 15:16:17');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
