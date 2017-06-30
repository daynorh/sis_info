-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2017 at 12:35 PM
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
-- Table structure for table `linea`
--

CREATE TABLE `linea` (
  `id` int(11) NOT NULL,
  `cod_linea` varchar(45) DEFAULT NULL,
  `nro_linea` char(8) DEFAULT NULL,
  `rut_linea` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `linea`
--

INSERT INTO `linea` (`id`, `cod_linea`, `nro_linea`, `rut_linea`) VALUES
(1, 'L-001', '610', 'Ventilla - ceja');

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
  `id_linea` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `car_socio` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socio`
--

INSERT INTO `socio` (`id`, `cod_socio`, `nom_socio`, `app_socio`, `apm_socio`, `dir_socio`, `tipo_socio`, `id_linea`, `created_at`, `car_socio`) VALUES
(1, 'U-001', 'daynor', 'herrera', 'sullcani', 'ventilla', 'DUEÑO', 1, '2017-06-30 09:47:57', 'Usuario comun'),
(2, 'S-002', 'ivan', 'sullcani', 'diaz', 'ventilla', 'ASALARIADO', 1, '2017-06-30 09:47:30', 'Regimen interno'),
(3, 'U-003', 'porfirio ', 'sullcani ', 'mamani', 'ventilla', 'DUEÑO', 1, '2017-06-30 09:47:49', 'Secretario de conflictos');

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
  `id_socio` int(11) NOT NULL,
  `remember_token` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `cod_usuario`, `email`, `password`, `tipo_usuario`, `created_at`, `updated_at`, `id_socio`, `remember_token`) VALUES
(1, 'U-001', 'daynor@gmail.com', '$2y$10$FxjR7DogUSUPVt7AIcRCo.lfJdWrWv1/ZQP.7mDIoNLhe.nNC44.i', 'administrador', '2017-06-30 10:11:55', '2017-06-26 11:37:47', 1, 'FJKB3zcHhuNO5G9QbqTtsy3ht9tLlohETRRoE0kDcJMUHffbkYZrv9IP4T2e'),
(2, 'U-002', 'ivan@gmail.com', '$2y$10$C0/AS2dBm/UBcxtyX8xlv.uPs9cvM6/aIShdiohvhpRVRUhkSvolu', 'super usuario', '2017-06-30 10:12:24', '2017-06-26 11:13:11', 2, ''),
(3, 'U-003', 'porfirio@gmail.com', '$2y$10$1AUufP22Fr4qGqTlnOYNA.gJZZgiuWQO24VKCf194/Gvsb/mIbZ6a', 'comun', '2017-06-30 10:12:30', '2017-06-27 02:04:10', 3, '0NmBuyAo2LyyGyAWlh3L36jlEMa9dwuPue2LTVvWkPRqb9riUoxApiqlZB8e');

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
-- Indexes for table `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_socio_1_idx` (`id_linea`);

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
-- AUTO_INCREMENT for table `linea`
--
ALTER TABLE `linea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sanciones`
--
ALTER TABLE `sanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socio`
--
ALTER TABLE `socio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
-- Constraints for table `socio`
--
ALTER TABLE `socio`
  ADD CONSTRAINT `fk_socio_1` FOREIGN KEY (`id_linea`) REFERENCES `linea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
