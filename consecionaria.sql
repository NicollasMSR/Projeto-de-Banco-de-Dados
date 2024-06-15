-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 15-Jun-2024 às 22:06
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `consecionaria`
--
CREATE DATABASE IF NOT EXISTS `consecionaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `consecionaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE IF NOT EXISTS `carro` (
  `cod_car` int(11) NOT NULL AUTO_INCREMENT,
  `nome_car` varchar(50) DEFAULT NULL,
  `marca_car` varchar(30) DEFAULT NULL,
  `ano_car` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_car`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`cod_car`, `nome_car`, `marca_car`, `ano_car`) VALUES
(1, 'C300 AMG', 'Mercedes-Benz', 2022),
(2, 'Tiggo 8 PRO', 'KIA', 2023),
(3, 'X6', 'BMW', 2019),
(4, 'CLA 200', 'Mercedes-Benz', 2022),
(5, 'I8', 'BMW', 2022);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cpf_clint` varchar(20) NOT NULL,
  `nome_clint` varchar(50) DEFAULT NULL,
  `endereço_clint` varchar(30) DEFAULT NULL,
  `bairro_clint` varchar(30) DEFAULT NULL,
  `cidade_clint` varchar(30) DEFAULT NULL,
  `cep_clint` varchar(20) DEFAULT NULL,
  `telefone_clint` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cpf_clint`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf_clint`, `nome_clint`, `endereço_clint`, `bairro_clint`, `cidade_clint`, `cep_clint`, `telefone_clint`, `Email`) VALUES
('123.456.789-09', 'Susana de Oliveira', 'Rua Antonio de Marins, 947', 'Santa Cruz', 'São Paulo', '01048-155', '(11) 99854-6562', NULL),
('132.446.758-48', 'Felipe de Almeida', 'Rua José Henrique de Matos, 95', 'Vila Flora', 'Sorocaba', '58730-185', '(11) 92861-7613', NULL),
('598.153.425-69', 'João Paulo Schwengberson', 'Rua Guarulhos, 159', 'Vila Madalena', 'Jundiaí', '36127-154', '(11) 99586-1542', NULL),
('683.123.753-52', 'Rita de Cassia Silva', 'Rua Veneza, 351', 'Villas de Icaraí', 'Campinas', '46926-160', '(11) 98475-5326', NULL),
('753.548.791-17', 'Mauro de Alves Santos', 'Rua Santos Dumont, 359', 'Jardim Aeroporto', 'Santos', '25986-152', '(11) 95137-9753', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE IF NOT EXISTS `compra` (
  `cod_vend` int(11) NOT NULL AUTO_INCREMENT,
  `data_vend` varchar(10) DEFAULT NULL,
  `valor_vend` varchar(50) DEFAULT NULL,
  `cnpj_conse` varchar(20) DEFAULT NULL,
  `cpf_clint` varchar(20) DEFAULT NULL,
  `cod_car` int(11) DEFAULT NULL,
  `cod_seg` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_vend`),
  KEY `cnpj_conse` (`cnpj_conse`),
  KEY `cpf_clint` (`cpf_clint`),
  KEY `cod_car` (`cod_car`),
  KEY `cod_seg` (`cod_seg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`cod_vend`, `data_vend`, `valor_vend`, `cnpj_conse`, `cpf_clint`, `cod_car`, `cod_seg`) VALUES
(1, '27/08/2023', 'R$ 597.850,00', '12.345.678/0001-00', '123.456.789-09', 5, 43),
(2, '09/11/2022', 'R$ 336.900,00', '12.345.678/0002-00', '598.153.425-69', 4, 46),
(3, '11/05/2023', 'R$ 469.900,00', '12.345.678/0004-00', '132.446.758-48', 3, 44),
(5, '15/10/2022', 'R$ 239.990,00', '12.345.678/0005-00', '753.548.791-17', 2, 47);

-- --------------------------------------------------------

--
-- Estrutura da tabela `consecionaria`
--

CREATE TABLE IF NOT EXISTS `consecionaria` (
  `cnpj_conse` varchar(20) NOT NULL,
  `nome_conse` varchar(50) DEFAULT NULL,
  `endereço_conse` varchar(30) DEFAULT NULL,
  `bairro_conse` varchar(30) DEFAULT NULL,
  `cidade_conse` varchar(30) DEFAULT NULL,
  `cep_conse` varchar(20) DEFAULT NULL,
  `telefone_conse` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cnpj_conse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `consecionaria`
--

INSERT INTO `consecionaria` (`cnpj_conse`, `nome_conse`, `endereço_conse`, `bairro_conse`, `cidade_conse`, `cep_conse`, `telefone_conse`, `Email`) VALUES
('12.345.678/0001-00', 'Consecionaria do Seu Zé', 'Av. Nove de Julho, 4100', 'Jardins', 'São Paulo', '01024-159', '4025-3926', NULL),
('12.345.678/0002-00', 'Consecionaria do Seu Zé Loja 2', 'Av. Frederico Ozanan,5575', 'Vila Rio Branco', 'Jundiaí', '35724-159', '4029-3828', NULL),
('12.345.678/0003-00', 'Consecionaria do Seu Zé Loja 3', 'Av. Lix da Cunha, 5945', 'Vila Industrial', 'Campinas', '46824-159', '4021-4122', NULL),
('12.345.678/0004-00', 'Consecionaria do Seu Zé Loja 4', 'Av. Santos Dumont, 650', 'Vila Ana Maria', 'Sorocaba', '59124-159', '4022-2342', NULL),
('12.345.678/0005-00', 'Consecionaria do Seu Zé Loja 5', 'Av. Perimetral, 168', 'Vila Matias', 'Santos', '25824-159', '4029-2845', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguro`
--

CREATE TABLE IF NOT EXISTS `seguro` (
  `cod_seg` int(11) NOT NULL AUTO_INCREMENT,
  `data_inicio` varchar(10) DEFAULT NULL,
  `data_termino` varchar(10) DEFAULT NULL,
  `cnpj_conse` varchar(20) DEFAULT NULL,
  `cpf_clint` varchar(20) DEFAULT NULL,
  `cod_car` int(11) DEFAULT NULL,
  `valor_seg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_seg`),
  KEY `cnpj_conse` (`cnpj_conse`),
  KEY `cpf_clint` (`cpf_clint`),
  KEY `cod_car` (`cod_car`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Extraindo dados da tabela `seguro`
--

INSERT INTO `seguro` (`cod_seg`, `data_inicio`, `data_termino`, `cnpj_conse`, `cpf_clint`, `cod_car`, `valor_seg`) VALUES
(43, '30/08/2023', '30/04/2026', '12.345.678/0001-00', '123.456.789-09', 5, NULL),
(44, '11/05/2023', '11/05/2033', '12.345.678/0004-00', '132.446.758-48', 3, NULL),
(46, '09/11/2022', '09/11/2033', '12.345.678/0002-00', '598.153.425-69', 4, NULL),
(47, '15/10/2022', '15/10/2033', '12.345.678/0005-00', '753.548.791-17', 2, NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`cnpj_conse`) REFERENCES `consecionaria` (`cnpj_conse`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`cpf_clint`) REFERENCES `cliente` (`cpf_clint`),
  ADD CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`cod_car`) REFERENCES `carro` (`cod_car`),
  ADD CONSTRAINT `compra_ibfk_4` FOREIGN KEY (`cod_seg`) REFERENCES `seguro` (`cod_seg`);

--
-- Limitadores para a tabela `seguro`
--
ALTER TABLE `seguro`
  ADD CONSTRAINT `seguro_ibfk_1` FOREIGN KEY (`cnpj_conse`) REFERENCES `consecionaria` (`cnpj_conse`),
  ADD CONSTRAINT `seguro_ibfk_2` FOREIGN KEY (`cpf_clint`) REFERENCES `cliente` (`cpf_clint`),
  ADD CONSTRAINT `seguro_ibfk_3` FOREIGN KEY (`cod_car`) REFERENCES `carro` (`cod_car`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
