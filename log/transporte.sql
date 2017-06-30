-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2017 at 12:54 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transporte`
--

-- --------------------------------------------------------

--
-- Table structure for table `accidentes`
--

CREATE TABLE `accidentes` (
  `id` int(11) NOT NULL,
  `cod_accidente` int(7) NOT NULL,
  `descripcion_accidente` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_socio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aportes`
--

CREATE TABLE `aportes` (
  `id` int(11) NOT NULL,
  `cod_aporte` char(7) NOT NULL,
  `tip_aporte` varchar(100) NOT NULL,
  `cant_aporte` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_socio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hoja_ruta`
--

CREATE TABLE `hoja_ruta` (
  `id` int(11) NOT NULL,
  `cod_hoja` int(7) NOT NULL,
  `tip_hoja` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_aporte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sanciones`
--

CREATE TABLE `sanciones` (
  `id` int(11) NOT NULL,
  `cod_sancion` int(7) NOT NULL,
  `tipo_sancion` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_aporte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socio`
--

CREATE TABLE `socio` (
  `id` int(11) NOT NULL,
  `cod_socio` char(7) NOT NULL,
  `nom_socio` varchar(100) NOT NULL,
  `app_socio` varchar(100) NOT NULL,
  `apm_socio` varchar(100) NOT NULL,
  `dir_socio` text NOT NULL,
  `tipo_socio` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `cod_usuario` char(7) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_socio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` int(11) NOT NULL,
  `cod_vehiculo` char(7) NOT NULL,
  `pc_vehiculo` varchar(10) NOT NULL,
  `color_vehiculo` varchar(20) NOT NULL,
  `modelo_vehiculo` varchar(50) NOT NULL,
  `marca_vehiculo` varchar(50) NOT NULL,
  `tipo_vehiculo` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_socio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accidentes`
--
ALTER TABLE `accidentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accidentesocio` (`id_socio`);

--
-- Indexes for table `aportes`
--
ALTER TABLE `aportes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aportesocio` (`id_socio`);

--
-- Indexes for table `hoja_ruta`
--
ALTER TABLE `hoja_ruta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hojaaporte` (`id_aporte`);

--
-- Indexes for table `sanciones`
--
ALTER TABLE `sanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sancionesaporte` (`id_aporte`);

--
-- Indexes for table `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuariosocio` (`id_socio`);

--
-- Indexes for table `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculosocio` (`id_socio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accidentes`
--
ALTER TABLE `accidentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aportes`
--
ALTER TABLE `aportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hoja_ruta`
--
ALTER TABLE `hoja_ruta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sanciones`
--
ALTER TABLE `sanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socio`
--
ALTER TABLE `socio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accidentes`
--
ALTER TABLE `accidentes`
  ADD CONSTRAINT `accidentesocio` FOREIGN KEY (`id_socio`) REFERENCES `socio` (`id`);

--
-- Constraints for table `aportes`
--
ALTER TABLE `aportes`
  ADD CONSTRAINT `aportesocio` FOREIGN KEY (`id_socio`) REFERENCES `socio` (`id`);

--
-- Constraints for table `hoja_ruta`
--
ALTER TABLE `hoja_ruta`
  ADD CONSTRAINT `hojaaporte` FOREIGN KEY (`id_aporte`) REFERENCES `aportes` (`id`);

--
-- Constraints for table `sanciones`
--
ALTER TABLE `sanciones`
  ADD CONSTRAINT `sancionesaporte` FOREIGN KEY (`id_aporte`) REFERENCES `aportes` (`id`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuariosocio` FOREIGN KEY (`id_socio`) REFERENCES `socio` (`id`);

--
-- Constraints for table `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculosocio` FOREIGN KEY (`id_socio`) REFERENCES `socio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
