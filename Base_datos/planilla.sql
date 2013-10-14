-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2013 a las 23:34:17
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `planilla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `Usuario_id` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE IF NOT EXISTS `contrato` (
  `id_contrato` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` varchar(10) DEFAULT NULL,
  `Fecha_inicio` datetime DEFAULT NULL,
  `Fecha_final` datetime DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_turno` int(11) DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `id_frm_pago` int(11) DEFAULT NULL,
  `salario_por_hora` double DEFAULT NULL,
  `salario_bruto` double DEFAULT NULL,
  PRIMARY KEY (`id_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deducciones`
--

CREATE TABLE IF NOT EXISTS `deducciones` (
  `id_deduccion` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` datetime DEFAULT NULL,
  `id_empleado` varchar(10) DEFAULT NULL,
  `Interes_ipotecario` int(11) DEFAULT NULL,
  `Interes_educativo` int(11) DEFAULT NULL,
  `Gastos_medicos` int(11) DEFAULT NULL,
  `Credito_fiscal` int(11) DEFAULT NULL,
  `Notas_descripcion` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id_deduccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` varchar(60) NOT NULL DEFAULT '',
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Cedula` varchar(100) NOT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Seguro_social` int(11) DEFAULT NULL,
  `Tipo_de_sangre` varchar(20) DEFAULT NULL,
  `id_Estado` int(11) DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `id_estado_civil` int(11) DEFAULT NULL,
  `id_nacionalidad` int(11) DEFAULT NULL,
  `id_contrato` int(11) DEFAULT NULL,
  `Sindicato` int(11) DEFAULT NULL,
  `Carnet_salud` int(11) DEFAULT NULL,
  `Fecha_vencimiento_carnet` date DEFAULT NULL,
  PRIMARY KEY (`id`,`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(20) DEFAULT NULL,
  `nombre_estado_formateado` int(11) DEFAULT NULL,
  `Descripcion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE IF NOT EXISTS `estado_civil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado_civil` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_de_pago`
--

CREATE TABLE IF NOT EXISTS `forma_de_pago` (
  `id_frm_pago` int(11) NOT NULL AUTO_INCREMENT,
  `frm_pago` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_frm_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulas`
--

CREATE TABLE IF NOT EXISTS `formulas` (
  `id_formula` int(11) DEFAULT NULL,
  `nombre_formula` varchar(200) DEFAULT NULL,
  `Descripcion` varchar(400) DEFAULT NULL,
  `Descripcion_formula` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas_trabajadas`
--

CREATE TABLE IF NOT EXISTS `horas_trabajadas` (
  `id_jornadas` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado_numero` int(11) DEFAULT NULL,
  `id_horario` int(11) DEFAULT NULL,
  `horas_trabajadas` int(11) DEFAULT NULL,
  `horas_xtras_trabajadas` int(11) DEFAULT NULL,
  `incapacidades` int(11) DEFAULT NULL,
  `horas_ausentes` int(11) DEFAULT NULL,
  `horas_ajustadas` int(11) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `id_renta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jornadas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas_trabajadores`
--

CREATE TABLE IF NOT EXISTS `jornadas_trabajadores` (
  `id_jornadas_horas` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` varchar(20) DEFAULT NULL,
  `id_jornadas` int(11) DEFAULT NULL,
  `hora_inicio` varchar(10) DEFAULT NULL,
  `hora_salida_almuerzo` varchar(10) DEFAULT NULL,
  `hora_entrada_almuerzo` varchar(10) DEFAULT NULL,
  `hora_salida` varchar(10) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jornadas_horas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidades`
--

CREATE TABLE IF NOT EXISTS `nacionalidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_nacionalidad` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_regulares`
--

CREATE TABLE IF NOT EXISTS `pagos_regulares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `deducciones_total` int(11) DEFAULT NULL,
  `tota_bruto` int(11) DEFAULT NULL,
  `total_mano` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_pais` varchar(200) DEFAULT NULL,
  `Nacionalidad` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_rol` varchar(100) DEFAULT NULL,
  `Comentarios` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--

CREATE TABLE IF NOT EXISTS `sexos` (
  `id_sexo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_de_sangre`
--

CREATE TABLE IF NOT EXISTS `tipos_de_sangre` (
  `id_tp_sangre` int(11) NOT NULL AUTO_INCREMENT,
  `tp_sangre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tp_sangre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE IF NOT EXISTS `turnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(200) DEFAULT NULL,
  `Hora_inicio` varchar(20) DEFAULT NULL,
  `Hora_final` varchar(20) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `rol` int(11) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `activado` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
