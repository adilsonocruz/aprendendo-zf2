-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2014 at 02:35 PM
-- Server version: 5.5.22
-- PHP Version: 5.5.14-2+deb.sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zf2_livraria`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'tech'),
(2, 'romances'),
(3, 'ficção'),
(4, 'romance'),
(5, 'guerra'),
(6, 'história'),
(7, 'geografia'),
(8, 'matemática'),
(9, 'desenho');

-- --------------------------------------------------------

--
-- Table structure for table `livros`
--

CREATE TABLE IF NOT EXISTS `livros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `isbn` varchar(45) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `livros`
--

INSERT INTO `livros` (`id`, `categoria_id`, `nome`, `autor`, `isbn`, `valor`) VALUES
(1, 1, 'Aprenda ZF2', 'Adilson', '123456', 100),
(2, 2, 'XHTML, CSS e tabeless', 'João', '456789', 50),
(6, 1, 'teste 01', 'Wesley', 'abca', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nome`, `email`, `password`, `salt`) VALUES
(1, 'Adilson Oliveira Cruz', 'adilsonocruz@gmail.com', 'ef203a1ee716cf467a757dfbe20e2823c6e00f155d4ddc6ec47e28664423a932c9daa4f28a8860bc1ca2b039310f307cfec0791bf9f3e883a936db53894c9aad', '30ria1h9cyqs4c4g4g0owco08g48gs0'),
(2, 'Joao', 'joao@son.com', 'edb2d5a91b9553204fe43f3299d93b8b1a7ec2b75b6addcb40ceb2348c0aa42467c8de78992be07ccb2cda277f5bc18a4410f57569a0257b66717d071cb4513c', 'rwmnb4euwr4ckg4gg84s0gswskwoosw'),
(3, 'Maria', 'maria@son.com', 'edb2d5a91b9553204fe43f3299d93b8b1a7ec2b75b6addcb40ceb2348c0aa42467c8de78992be07ccb2cda277f5bc18a4410f57569a0257b66717d071cb4513c', '2rjm4eltjfokkk8s888o8w0kgsw4c0s');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
