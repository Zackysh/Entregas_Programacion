-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-01-2021 a las 19:27:08
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokedb`
--
CREATE DATABASE IF NOT EXISTS `pokedb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pokedb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `idpoke` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Number` int(11) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Skill` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Height` double NOT NULL,
  `Weight` double NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `BaseAttributes` varchar(11) NOT NULL,
  PRIMARY KEY (`idpoke`),
  UNIQUE KEY `Name_UNIQUE` (`Name`),
  UNIQUE KEY `Number_UNIQUE` (`Number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`idpoke`, `Name`, `Number`, `Description`, `Skill`, `Category`, `Height`, `Weight`, `Sex`, `BaseAttributes`) VALUES
(1, 'Moltres', 146, 'Its evil aura resembling a burning flame can warm the soul of the one who touches it.', 'Anger', 'Malignancy', 2, 66, 'Unknown', '6/6/6/8/5/6'),
(2, 'Zapdos', 145, 'It has the power to control electricity at will. According to popular belief, it nests hidden in dark storm clouds.', 'Pressure', 'Electric', 1.6, 52.6, 'Unknown', '6/6/5/8/6/6'),
(3, 'Articuno', 144, 'Its beautiful blue wings are said to be made up of ice. It flies around the snowy mountains with its long tail blowing in the wind.', 'Preasure', 'Freeze', 1.7, 55.4, 'Unknown', '6/5/6/6/8/5'),
(4, 'Lucario', 448, 'It hunts its prey by manipulating an energy, called aura, whose power is capable of even smashing huge rocks.', 'Impassive', 'Aura', 1.2, 54, 'Male / Female', '5/8/5/8/5/6'),
(5, 'Togetic', 176, 'They say that he appears to good-hearted people and floods them with happiness.', 'Enthusiasm', 'Happiness', 0.6, 3.2, 'Male / Female', '4/3/5/5/7/3'),
(6, 'Ditto', 132, 'He redistributes the cells of his body to take on the appearance of what he sees, but returns to normal when he relaxes.', 'Flexibility', 'Transformation', 0.3, 4, 'Unknown', '3/3/3/3/3/3'),
(7, 'Feebas', 349, 'Its unattractive appearance makes it not very popular, but its great vitality is of great interest to science.', 'Fast swim', 'Fish', 0.6, 7.4, 'Male / Female', '2/1/2/1/4/5'),
(8, 'Milotic', 350, 'It is said to be the most beautiful Pokémon. It has been the source of inspiration for countless artists.', 'Special scale', 'Soft', 6.2, 162, 'Male / Female', '6/4/5/6/8/5'),
(9, 'Rotom', 479, 'Thanks to the inventiveness of a certain young man, the manufacture of various gadgets that take advantage of Rotom\'s full potential has been started.', 'Levitation', 'Plasma', 0.3, 0.3, 'Unknown', '3/3/5/6/5/6'),
(10, 'Unown', 201, 'These Pokémon are shaped like ancient characters. It is not known which came first, the old script or the different Unown. This question is still under study, but nothing has yet been found.', 'Levitation', 'Symbol', 0.5, 5, 'Unknown', '3/5/3/5/3/3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poketype`
--

DROP TABLE IF EXISTS `poketype`;
CREATE TABLE IF NOT EXISTS `poketype` (
  `idpoke` int(11) NOT NULL,
  `idtype` int(11) NOT NULL,
  PRIMARY KEY (`idpoke`,`idtype`),
  KEY `idpoke_idx` (`idpoke`),
  KEY `idtipo_idx` (`idtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `poketype`
--

INSERT INTO `poketype` (`idpoke`, `idtype`) VALUES
(1, 2),
(1, 3),
(2, 3),
(2, 4),
(3, 3),
(3, 5),
(4, 6),
(4, 7),
(5, 3),
(5, 8),
(6, 9),
(7, 10),
(8, 10),
(9, 4),
(9, 11),
(10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `RGBColor` varchar(13) NOT NULL,
  PRIMARY KEY (`idtype`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `type`
--

INSERT INTO `type` (`idtype`, `Name`, `RGBColor`) VALUES
(1, 'Psychic', '(243,102,185)'),
(2, 'Fire', '(253,125,036)'),
(3, 'Flying', '(126,193,212)'),
(4, 'Electric', '(238,213,053)'),
(5, 'Ice', '(081,196,231)'),
(6, 'Fighter', '(213,103,035)'),
(7, 'Steel', '(158,183,184)'),
(8, 'Fairy', '(253,185,233)'),
(9, 'Normal', '(165,173,176)'),
(10, 'Water', '(069,146,196)'),
(11, 'Ghost', '(123,098,163)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`idUser`, `Username`, `Password`) VALUES
(2, 'Zacky', '12354'),
(3, 'Zackysh', '123546'),
(1, 'Pipo', '1234'),
(6, 'Pipo2', '1');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `poketype`
--
ALTER TABLE `poketype`
  ADD CONSTRAINT `idpoke` FOREIGN KEY (`idpoke`) REFERENCES `pokemon` (`idpoke`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idtype` FOREIGN KEY (`idtype`) REFERENCES `type` (`idtype`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
