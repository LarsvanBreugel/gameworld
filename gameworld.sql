-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 11 dec 2018 om 12:40
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gamecategorie`
--

CREATE TABLE `gamecategorie` (
  `categoryId` int(3) NOT NULL,
  `categoryTitle` varchar(100) NOT NULL,
  `categoryImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gamecategorie`
--

INSERT INTO `gamecategorie` (`categoryId`, `categoryTitle`, `categoryImg`) VALUES
(1, 'Playstation', ''),
(2, 'Xbox', ''),
(3, 'PC', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameId` int(3) NOT NULL COMMENT 'uniek ID',
  `gameTitle` varchar(100) NOT NULL,
  `gameDescription` text NOT NULL,
  `gamePrice` decimal(5,2) NOT NULL,
  `gameImg` varchar(255) NOT NULL,
  `categoryId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDescription`, `gamePrice`, `gameImg`, `categoryId`) VALUES
(1, 'Black Ops 4', 'Black Ops 4 2018\r\n', '69.99', 'images/blackops4.jpg', 2),
(2, 'FIFA 19', 'FIFA 19 2018', '59.99', 'images/fifa19.jpg', 1),
(3, 'Battlefield V', 'Battlefield V 2018', '29.99', 'images/bvbv.jpg', 3),
(4, 'Fallout 76', 'Fallout 2018', '59.99', 'images/fallout.jpg', 2),
(5, 'Red Dead Redemption 2', 'Red Dead Redemption 2 2018', '59.99', 'images/reddead.jpg', 3),
(6, 'Grand Theft Auto V', 'Grand Theft Auto V 2017', '39.99', 'images/gta.jpg', 1),
(7, 'Fortnite', 'Fortnite 2017', '20.00', 'images/fortnite.jpg', 1),
(12, 'Spiderman', 'Spiderman 2018', '59.99', 'images/spiderman.jpg', 2),
(13, 'Just Cause 3', 'Just cause 3 3016', '19.99', 'images/just.jpg', 3),
(14, 'Battlefield 1', 'Battlefield 1 2016', '24.99', 'images/battlefield1.jpg', 1),
(15, 'Rocket League', 'Rocket League 2015', '19.99', 'images/rocket.jpg', 2),
(16, 'Tom Clancy\'s Ghost Recon', 'Tom Clancy\'s Ghost Recon 2017', '39.99', 'images/clancy.jpg', 3),
(17, 'Overwatch', 'Overwatch 2017', '49.99', 'images/overwatch.jpg', 1),
(18, 'Just dance', 'Just dance 2018', '19.99', 'images/dance.jpg', 1),
(19, 'Far Cry 5', 'Far Cry 2018', '22.45', 'images/farcry.jpg', 2),
(20, 'Crash Bandicoot', 'Crash Bandicoot 2017', '59.99', 'images/bandicoot.jpg', 2),
(21, 'Destiny 2', 'Destiny 2 2016', '49.99', 'images/destiny.jpg', 3),
(22, 'Assasin Creed Odyssey ', 'Assasin Creed Odyssey 2017', '59.99', 'images/assasin.jpg', 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gamecategorie`
--
ALTER TABLE `gamecategorie`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gamecategorie`
--
ALTER TABLE `gamecategorie`
  MODIFY `categoryId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'uniek ID', AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
