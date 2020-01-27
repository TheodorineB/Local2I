-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 11 déc. 2019 à 13:15
-- Version du serveur :  5.7.25
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `Local2I`
--

-- --------------------------------------------------------

--
-- Structure de la table `Avis`
--

CREATE TABLE `Avis` (
  `idAvis` int(11) NOT NULL,
  `systeme_etoile` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `validation` tinyint(1) NOT NULL,
  `nomcli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Burgerdumois`
--

CREATE TABLE `Burgerdumois` (
  `idBurger` int(11) NOT NULL,
  `nom_burger_mois` char(30) NOT NULL,
  `prix_burger_mois` int(11) NOT NULL,
  `describurgermo` char(200) NOT NULL,
  `idMenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `idClient` int(11) NOT NULL,
  `nomcli` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Lieu`
--

CREATE TABLE `Lieu` (
  `idLieu` int(11) NOT NULL,
  `Horaire` time NOT NULL,
  `Lieu` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Menu`
--

CREATE TABLE `Menu` (
  `idMenu` int(11) NOT NULL,
  `nom_produit` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  `descriprod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Reservation`
--

CREATE TABLE `Reservation` (
  `idReservation` int(11) NOT NULL,
  `datereservation` date NOT NULL,
  `nomcli` varchar(50) NOT NULL,
  `idLieu` int(11) NOT NULL,
  `idMenu` int(11) NOT NULL,
  `idBurger` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
