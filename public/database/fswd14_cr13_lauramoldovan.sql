-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Dez 2021 um 02:26
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `fswd14_cr13_lauramoldovan`
--
CREATE DATABASE IF NOT EXISTS `fswd14_cr13_lauramoldovan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fswd14_cr13_lauramoldovan`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211203205517', '2021-12-03 21:56:19', 1848);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1, 'Alicia Keys Concert', '2021-11-18 20:30:00', 'Alicia Keys on Europe Tour, presents her newest Album', 'https://www4.pictures.fp.zimbio.com/Alicia+Keys+Alicia+Keys+Concert+5RSeoplzWurx.jpg', 1000, 'alicia@keys.com', '+43 676 88 99 777', 'Burggasse Stadthalle 17, 1150 Wien', 'www.aliciakeys.com', 'MUSIC'),
(2, 'Rapid Vienna - Real Madrid', '2021-11-15 18:00:00', 'Football Match: Rapid Vienna plays agains Real Madrid.', 'https://wallpapers-fenix.eu/lar/141213/030327490.jpg', 10000, 'football@keys.com', '+43 1 7280854', 'Ernst-Happel-Stadion, Meiereistraße 7, 1020 Wien', 'www.wienersportstaetten.at', 'SPORT'),
(3, 'Harry Potter: Return to Hogwarts', '2022-01-01 20:00:00', 'For the 20th anniversary of ``Harry Potter and the Philosophers Stone`` there will be a special reunion.', 'https://d.newsweek.com/en/full/1662542/harry-potter-netflix.webp?w=790&f=75bf3580156a45cfd9efb2f250d6812d', 300, 'harry@kino.com', '+43 676 88 99 777', 'Cineplexx Wienerberg City 11, 1100 Wien', 'www.cineplexx.com', 'MOVIE'),
(4, 'Cats - Das Musical', '2021-11-04 19:30:00', 'The United Bühnen Wien is showing the world-famous musical in a new version of the original production in German at the Ronacher.', 'https://images2.minutemediacdn.com/image/upload/c_crop,h_1799,w_3200,x_0,y_0/f_auto,q_auto,w_1100/v1553099114/shape/mentalfloss/84660-gettyimages-87218559.jpg', 300, 'cats@ronacher.com', '+43 676 11 22 333', 'Seilerstätte 9, 1010 Wien - Innere Stadt', 'www.musicalvienna.at', 'THEATER'),
(5, 'Dr. Dre Concert', '2021-12-23 20:30:00', 'Dr. Dre on Europe Tour, presents his newest Album', 'https://hey-alex.fr/actu/wp-content/uploads/2018/06/dr-dre-biopic-marvin-gaye-bientot-droits-dauteur.png', 2000, 'dre@gmail.com', '+43 676 88 99 777', 'Burggasse Stadthalle 17, 1150 Wien', 'www.drdre.com', 'MUSIC'),
(6, 'Red Bull BC1', '2021-11-24 21:30:00', 'Red Bull BC One is the biggest and most prestigious one-on-one breaking competition in the world.', 'https://cdn.wallpapersafari.com/31/10/fb1DF3.jpg', 3000, 'bc1@redbull.com', '+43 676 88 99 777', 'Burggasse Stadthalle 17, 1150 Wien', 'www.redbull.com', 'SPORT'),
(7, 'Spider-Man: No Way Home', '2021-11-24 20:30:00', 'When a spell goes wrong, dangerous enemies from other worlds emerge, forcing Peter to discover what it really means to be Spider-Man.', 'https://www.activenoon.com/wp-content/uploads/2021/11/Watch-New-Movie-of-Spider-Man-No-Way-Home.jpeg', 500, 'spiderman@marvel.com', '+43 676 88 99 777', 'Cineplexx Wienerberg City 11, 1100 Wien', 'www.cineplexx.com', 'MOVIE'),
(8, 'Roma Armee', '2021-11-25 20:30:00', 'At a time when Europe is at risk of drifting into neo-fascism, a group of actors is calling for a Roma army for the purpose of self-defence.', 'https://www.gorki.de/sites/default/files/styles/large_l/public/2017-07/romaarmeefraktion3_web.jpg?itok=H0Sy0XgH', 1000, 'roma@armee.com', '+43 30 20221 115', 'Seilerstätte 9, 1010 Wien - Innere Stadt', 'www.musicalvienna.at', 'THEATER'),
(9, 'Justin Timberlake Concert', '2021-11-18 20:30:00', 'Justin Timberlake on Europe Tour, presents his newest Album', 'https://hey-alex.fr/actu/wp-content/uploads/2018/02/justin-timberlake-concert-paris-2018-dernieres-minutes-pour-obtenir-ses-places.png', 1000, 'justin@timberlake.com', '+43 676 88 99 777', 'Burggasse Stadthalle 17, 1150 Wien', 'www.justintimberlake.com', 'MUSIC');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
