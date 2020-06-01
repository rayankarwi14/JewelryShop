-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 31 mai 2020 à 16:35
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jewelry`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ring'),
(2, 'neckless');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` float(10,3) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `primary_image` varchar(255) NOT NULL,
  `secondary_image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `sub_category_id`, `primary_image`, `secondary_image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'product 1', 60.500, 1, '1-9.jpg', '1-9.jpg', 'The effects of gold are subtle, but definitely apparent. ... It was considered that gold possessed an energy that brought warm, soothing vibrations to the body to aid healing, for when the body relaxes and the blood vessels in the cells aren\'t as constricted, blood can move through the tissue spaces more easily.', '2020-05-30 19:25:10', NULL),
(2, 'product 2', 70.500, 2, '1-8.jpg', '1-8.jpg', 'The effects of gold are subtle, but definitely apparent. ... It was considered that gold possessed an energy that brought warm, soothing vibrations to the body to aid healing, for when the body relaxes and the blood vessels in the cells aren\'t as constricted, blood can move through the tissue spaces more easily.', '2020-05-30 19:25:10', NULL),
(3, 'product 3', 4500.000, 3, '1-7.jpg', '1-7.jpg', 'The effects of gold are subtle, but definitely apparent. ... It was considered that gold possessed an energy that brought warm, soothing vibrations to the body to aid healing, for when the body relaxes and the blood vessels in the cells aren\'t as constricted, blood can move through the tissue spaces more easily.', '2020-05-30 19:25:10', NULL),
(4, 'product 4', 1800.000, 4, '1-6.jpg', '1-6.jpg', 'The effects of gold are subtle, but definitely apparent. ... It was considered that gold possessed an energy that brought warm, soothing vibrations to the body to aid healing, for when the body relaxes and the blood vessels in the cells aren\'t as constricted, blood can move through the tissue spaces more easily.', '2020-05-30 19:25:10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`) VALUES
(1, 'white gold ring', 1),
(2, 'gold ring', 1),
(3, 'white gold neckless', 2),
(4, 'gold neckless', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'med amine', 'mohamedaminegaouat@gmail.com', NULL, '$2y$10$2AbbKuum6ZoPZEn3Sz1BiuKRI9FjhLsQtTQem/gjAoyXNVTd8W/Gi', NULL, '2020-05-31 14:53:06', '2020-05-31 14:53:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
