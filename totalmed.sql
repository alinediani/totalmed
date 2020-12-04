-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Jun-2019 às 02:57
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `totalmed`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `idAgendamentos` int(11) NOT NULL,
  `idCli` varchar(45) NOT NULL,
  `idEspecialidade` varchar(45) NOT NULL,
  `dtAgn` varchar(45) NOT NULL,
  `hrAgn` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agendamentos`
--

INSERT INTO `agendamentos` (`idAgendamentos`, `idCli`, `idEspecialidade`, `dtAgn`, `hrAgn`) VALUES
(1, '1', 'pediatra', '1/1/2001', '1'),
(2, '1', 'pediatra', '1/1/2002', '1'),
(3, '2', 'pediatra', '1/1/2019', '1'),
(4, '3', 'pediatra', '1/1/2001', '1'),
(5, '4', 'pediatra', '1/1/2001', '1'),
(6, '2', 'pediatra', '1/1/2001', '1'),
(7, '3', 'pediatra', '1/1/2001', '1'),
(8, '5', 'pediatra', '1/1/2001', '1'),
(9, '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nmCliente` varchar(45) NOT NULL,
  `sexoCli` varchar(45) NOT NULL,
  `cpfCli` varchar(14) NOT NULL,
  `cepCli` varchar(9) NOT NULL,
  `numeroCli` varchar(5) NOT NULL,
  `senhaCli` varchar(16) NOT NULL,
  `nmUsuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nmCliente`, `sexoCli`, `cpfCli`, `cepCli`, `numeroCli`, `senhaCli`, `nmUsuario`) VALUES
(1, 'Aline', 'F', '47487065898', '06786240', '76', '123123', 'alinediani'),
(2, 'Isabelle', 'F', '12345667888', '123332', '12', '3214', 'isabellev'),
(3, 'Wallace', 'F', '324342', '555756', '65', '2222', 'wallafew'),
(4, 'Thiago', 'M', '1212', '2121', '22', '3232', 'thiagadas'),
(5, 'Lucas', 'F', '2312', '343', '432', '3432', 'gayzao'),
(6, 'Valério', 'M', '231', '2342', '4234', '324', 'vallas'),
(7, 'Geovana', 'F', '232', '322', '434', '543', 'gilinda'),
(8, 'Caio', 'M', '213221', '2342', '323', '325', 'caioconrado');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`idAgendamentos`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `idAgendamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
