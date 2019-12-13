-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2019 at 09:12 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goomba`
--

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `refp` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `datep` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `taux` int(11) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '0',
  `date_fin` date DEFAULT NULL,
  PRIMARY KEY (`refp`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='ghada';

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`refp`, `nom`, `prix`, `disponibilite`, `datep`, `type`, `description`, `image`, `taux`, `etat`, `date_fin`) VALUES
(1, 'sandwich', 50, 1, '2019-12-09', 'hrissa w thon', 'iande hachée - 2 buns - 2 tranches de fromage (cheddar, comté...) - 6 rondelles d’oignon, salade et/ou tomate - 4 cuillères à soupe de sauce (ketchup, mayonnaise, « special sauce »...)\r\n', '1.jpg', 10, 1, '2019-12-15'),
(2, 'pizza', 8, 1, '2019-12-09', 'hrissa w thon', 'iande hachée - 2 buns - 2 tranches de fromage (cheddar, comté...) - 6 rondelles d’oignon, salade et/ou tomate - 4 cuillères à soupe de sauce (ketchup, mayonnaise, « special sauce »...)\r\n', '1.jpg', 55, 0, '2222-02-22'),
(3, 'aa', 20, 1, '2019-12-09', 'hrissa w thon', 'iande hachée - 2 buns - 2 tranches de fromage (cheddar, comté...) - 6 rondelles d’oignon, salade et/ou tomate - 4 cuillères à soupe de sauce (ketchup, mayonnaise, « special sauce »...)\r\n', '1.jpg', 22, 0, '2019-12-29'),
(4, 'gateau1aa', 5, 1, '2019-12-09', 'hrissa w thon', 'iande hachée - 2 buns - 2 tranches de fromage (cheddar, comté...) - 6 rondelles d’oignon, salade et/ou tomate - 4 cuillères à soupe de sauce (ketchup, mayonnaise, « special sauce »...)\r\n', '1.jpg', 10, 0, '2019-12-20'),
(5, 'hamb', 4, 1, '2019-12-09', 'hrissa w thon', 'iande hachée - 2 buns - 2 tranches de fromage (cheddar, comté...) - 6 rondelles d’oignon, salade et/ou tomate - 4 cuillères à soupe de sauce (ketchup, mayonnaise, « special sauce »...)\r\n', '1.jpg', 12, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id_promo` int(255) NOT NULL AUTO_INCREMENT,
  `nom_promo` varchar(255) NOT NULL,
  `taux_promo` int(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  PRIMARY KEY (`id_promo`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id_promo`, `nom_promo`, `taux_promo`, `date_debut`, `date_fin`) VALUES
(23, '2', 2, '2019-12-12', '2020-02-02'),
(22, '2', 2, '2019-12-12', '2222-02-22'),
(21, 'azer', 22, '2019-12-12', '2018-06-22'),
(20, 'azea', 22, '2019-12-12', '2019-12-02'),
(19, 'hhh', 25, '2019-12-12', '2019-12-03'),
(18, 'saaaa', 22, '2019-12-17', '2022-12-29'),
(17, 'aazeazr', 11, '2019-12-11', '2019-12-29'),
(16, 'babbouch', 60, '2019-12-11', '2021-06-30'),
(15, 'bonjour', 30, '2019-12-11', '2020-01-22'),
(24, '2', 2, '2019-12-12', '2020-01-01'),
(25, 'saa', 50, '2019-12-12', '2019-12-26'),
(26, 'azera', 2, '2019-12-12', '1222-01-01'),
(27, 'aze', 22, '2019-12-12', '2019-12-29'),
(28, 'aze', 10, '2019-12-12', '2019-12-20'),
(29, 'azer', 50, '2019-12-12', '2019-12-13'),
(30, 'gggg', 20, '2019-12-12', '2019-12-10'),
(31, 'jjj', 55, '2019-12-12', '2019-12-15'),
(32, 'hhh', 20, '2019-12-12', '2019-12-14'),
(33, '122', 20, '2019-12-12', '2019-12-10'),
(34, 'gu', 50, '2019-12-12', '2020-01-05'),
(35, 'hh', 55, '2019-12-12', '2222-02-22'),
(36, 'bgg', 56, '2019-12-12', '2222-01-01'),
(37, 'dddd', 10, '2019-12-12', '2019-12-15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
