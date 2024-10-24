-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 24 Octobre 2024 à 14:33
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `ncin` int(11) NOT NULL,
  `numero_permis` int(11) NOT NULL,
  `nom_prenom` varchar(30) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `date_naissance` date NOT NULL,
  `mail` varchar(30) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`ncin`, `numero_permis`, `nom_prenom`, `adresse`, `tel`, `date_naissance`, `mail`) VALUES
(12, 1000, 'Le ptit Samuel', 'Villepinte', '0606060606', '2006-06-06', 'ptitsamuel@gmail.com'),
(13, 2000, 'Electricien Multimètre', 'Paris', '0707070707', '2004-01-01', 'electricien@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_location` int(11) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(20) NOT NULL,
  `ncin` int(11) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `immatriculation` (`immatriculation`),
  KEY `ncin` (`ncin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id_location`, `immatriculation`, `ncin`, `duree_location`, `date_location`, `prix_location`) VALUES
(1, '77 FR 77', 13, 5, '2024-10-24', 300),
(2, '66 FR 66', 12, 4, '2024-10-16', 200);

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `Immatriculation` varchar(20) NOT NULL,
  `Marque` varchar(20) NOT NULL,
  `Modele` varchar(20) NOT NULL,
  `Carburant` varchar(20) NOT NULL,
  `Kilometrage` int(11) NOT NULL,
  `Date_circulation` date NOT NULL,
  `Couleur` varchar(20) NOT NULL,
  PRIMARY KEY (`Immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`Immatriculation`, `Marque`, `Modele`, `Carburant`, `Kilometrage`, `Date_circulation`, `Couleur`) VALUES
('66 FR 66', 'Mercedes', 'GLC', 'Diesel', 10000, '2024-10-08', 'Blanc'),
('77 FR 77', 'Peugeot', '3008', 'Essence', 20000, '2019-10-10', 'Noir');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`ncin`) REFERENCES `clients` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`Immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
