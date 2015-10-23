-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Gostitelj: localhost
-- Čas nastanka: 20 jan 2012 ob 20.04
-- Različica strežnika: 5.5.16
-- Različica PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Zbirka podatkov: `rekordi`
--

-- --------------------------------------------------------

--
-- Struktura tabele `slovenski_rekordi_moski`
--

CREATE TABLE IF NOT EXISTS `slovenski_rekordi_moski` (
  `Disciplina` varchar(50) NOT NULL,
  `Plavalec` varchar(50) NOT NULL,
  `Klub` varchar(50) NOT NULL,
  `Cas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `slovenski_rekordi_moski`
--

INSERT INTO `slovenski_rekordi_moski` (`Disciplina`, `Plavalec`, `Klub`, `Cas`) VALUES
('50m prosto', 'Godec Jernej', 'IL', '22.19 '),
('100m prosto', 'Mankoc Peter', 'IL', '49.22'),
('200m prosto', 'Mankoc Peter ', 'IL', '1:48.92'),
('400m prosto', 'Turk Luka', 'ZGR', '3:50.72'),
('800m prosto', 'Turk Luka 	', 'ZGR', '7:54.58'),
('1500m prosto', 'Turk Luka', 'ZGR', '15:07.59 '),
('50m hrbtno', 'Medvesek Blaz', 'BM', '26.08'),
('100m hrbtno', 'Medvesek Blaz', 'BM', '54.88 '),
('200m hrbtno', 'Medvesek Blaz', 'IL', '1:58.61'),
('50m prsno', 'Markic Matjaz', 'KK', '27.10'),
('100m prsno', 'Dugonjic Damir', 'FR', '59.66'),
('200m prsno', 'Pernat Matjaz', 'BM', '2:16.45'),
('50m delfin', 'Godec Jernej', 'IL', '23.20'),
('100m delfin', 'Mankoc Peter', 'IL', '51.24'),
('200m delfin', 'Zbogar Robert', 'GBR', '1:57.71'),
('200m mesano', 'Mankoc Peter', 'IL', '2:01.57'),
('400m mesano', 'Milenkovic Marko', 'ZGR', '4:21.23'),
('4 x 50m prosto', 'PK Ilirija Ljubljana', 'IL', '1:31.07'),
('4 x 100m prosto', 'PK Ilirija Ljubljana', 'IL', '3:24.71'),
('4 x 100m prosto', 'PZS', 'PZS', '3:20.98'),
('4 x 200m prosto', 'PK Ilirija Ljubljana', 'IL', '7:37.38'),
('4 x 50m mesano', 'PK Ilirija Ljubljana', 'IL', '1:45.12'),
('4 x 50m mesano', 'PZS', 'PZS', '1:38.18'),
('4 x 100m mesano', 'PK Branik Maribor', 'BM', '3:47.27'),
('4 x 100m mesano', 'PZS', 'PZS', '3:36.79');

-- --------------------------------------------------------

--
-- Struktura tabele `slovenski_rekordi_zenske`
--

CREATE TABLE IF NOT EXISTS `slovenski_rekordi_zenske` (
  `Disciplina` varchar(50) NOT NULL,
  `Plavalec` varchar(50) NOT NULL,
  `Klub` varchar(50) NOT NULL,
  `Cas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `slovenski_rekordi_zenske`
--

INSERT INTO `slovenski_rekordi_zenske` (`Disciplina`, `Plavalec`, `Klub`, `Cas`) VALUES
('50m prosto', 'Drolc Nina', 'VV', '25.95'),
('100m prosto', 'Isakovic Sara', 'ZGR', '54.86'),
('200m prosto', 'Isakovic Sara', 'ZGR', '1:54.97'),
('400m prosto', 'Isakovic Sara', 'ZGR', '4:06.37'),
('800m prosto', 'Cesar Nina', 'ZGR', '8:31.26'),
('1500m prosto', 'Oder Tjasa', 'FR', '16:18.63'),
('50m hrbtno', 'Sparavec Metka', 'IL', '29.25'),
('100m hrbtno', 'Carman Anja', 'MTK', '1:01.85'),
('200m hrbtno', 'Carman Anja', 'MTK', '2:10.49'),
('50m prsno', 'Meza Tina', 'VV', '32.10'),
('100m prsno', 'Meza Tina', 'VV', '1:09.41'),
('200m prsno', 'Smid Tanja', 'FR', '2:27.73'),
('50m delfin', 'Slapsak Urska', 'ZGR', '27.12'),
('100m delfin', 'Isakovic Sara', 'ZGR', '58.68'),
('200m delfin', 'Isakovic Sara', 'ZGR', '2:07.05'),
('200m mesano', 'Klinar Anja', 'ZGR', '2:13.37'),
('400m mesano', 'Klinar Anja', 'GBR', '4:38.13'),
('4 x 50m prosto', 'PK ZG Radovljica', 'ZGR', '1:53.06'),
('4 x 50m prosto', 'PZS', 'PZS', '1:49.27'),
('4 x 100m prosto', 'PK ZG Radovljica', 'ZGR', '3:48.97'),
('4 x 200m prosto', 'PK GB Radovljica', 'GBR', '8:13.34'),
('4 x 200m prosto', 'PZS', 'PZS', '8:06.13'),
('4 x 50m mesano', 'PK ZG Radovljica', 'ZGR', '2:01.14'),
('4 x 50m mesano', 'PZS', 'PZS', '1:58.92'),
('4 x 100m mesano', 'PK ZG Radovljica', 'ZGR', '4:15.08'),
('4 x 100m mesano', 'PZS', 'PZS', '4:09.87');

-- --------------------------------------------------------

--
-- Struktura tabele `svetovni_rekordi_moski`
--

CREATE TABLE IF NOT EXISTS `svetovni_rekordi_moski` (
  `Disciplina` varchar(50) NOT NULL,
  `Plavalec` varchar(50) NOT NULL,
  `Država` varchar(50) NOT NULL,
  `Cas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `svetovni_rekordi_moski`
--

INSERT INTO `svetovni_rekordi_moski` (`Disciplina`, `Plavalec`, `Država`, `Cas`) VALUES
('50 m prosto', 'A. POPOV', 'RUS', '21,64'),
('100 m prosto', 'P.HOOGENBAND', 'NIZ', '47,84'),
('200 m prosto', 'I. THORPE', 'AVS', '1:44,06'),
('400 m prosto', 'I. THORPE', ' AVS', '3:40,08'),
('800 m prosto', 'G. HACKETT', 'AVS', ' 7:38,65'),
('1.500 m prosto', 'G. HACKETT', ' AVS', '14:34,56'),
('50 m hrbtno', 'T. RUPPRATH', 'NEM', '24,80'),
('100 m hrbtno', 'A. PEIRSOL', 'ZDA', '53,45'),
('200 m hrbtno', 'A. PEIRSOL', 'ZDA', '1:54,66'),
('50 m prsno', 'O. LISOGOR', 'UKR', '27,18'),
('100 m prsno', 'B. HANSEN', 'ZDA', '59,30'),
('200 m prsno', 'B. HANSEN', 'ZDA', '2:09,04'),
('50 m delfin', 'R. SCHOEMAN', 'JAR', '22,96'),
('100 m delfin', 'I. CROCKER', 'ZDA', '50,40'),
('200 m delfin', 'M. PHELPS', 'ZDA', '1:53,93'),
('200 m mešano', 'M. PHELPS', 'ZDA', '1:55,94'),
('400 m mešano', 'M. PHELPS', 'ZDA  ', '4:08,26'),
('4x100 m prosto', 'JAR', 'JAR', '3:13,17'),
('4x200 m prosto', 'AVSTRALIJA', 'AVSTRALIJA', '7:04,66'),
('4x100 m mešano', 'ZDA', 'ZDA', '3:30,68');

-- --------------------------------------------------------

--
-- Struktura tabele `svetovni_rekordi_zenske`
--

CREATE TABLE IF NOT EXISTS `svetovni_rekordi_zenske` (
  `Disciplina` varchar(50) NOT NULL,
  `Plavalec` varchar(50) NOT NULL,
  `Država` varchar(50) NOT NULL,
  `Cas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `svetovni_rekordi_zenske`
--

INSERT INTO `svetovni_rekordi_zenske` (`Disciplina`, `Plavalec`, `Država`, `Cas`) VALUES
('50 m prosto', 'I. DE BRUIJN', 'NIZ', '24,13'),
('100 m prosto', 'J. HENRY', 'AVS', '53,52'),
('200 m prosto', 'F.V. ALMSICK', 'NEM', '1:56,64'),
('400 m prosto', 'J. EVANS', 'ZDA', '4:03,85'),
('800 m prosto', 'J. EVANS', 'ZDA', '8:16,22'),
('1.500 m prosto', 'J. EVANS', 'ZDA', '15:52,10'),
('50 m hrbtno', 'S. VÖLKER', 'NEM', '28,25'),
('100 m hrbtno', 'N. COUGLIN', 'ZDA', '59,58'),
('200 m hrbtno', 'K. EGERSZEGI', 'MAD', '2:06,62'),
('50 m prsno', 'J. EDMISTONE', 'AVS', '30,45 '),
('100 m prsno', 'J. HARDY', 'ZDA', '1:06,20'),
('200 m prsno', 'L. JONES', 'AVS', '2:21,72'),
('50 m delfin', 'A. KAMMERLING', 'SVE', '25,57'),
('100 m delfin', 'I. DE BRUIJN ', 'NIZ', '56,61'),
('200 m delfin', 'JEDRZEJCZAK', 'POL', '2:05,61'),
('200 m mešano', 'J. WU', 'KIT', '2:09,72'),
('400 m mešano', 'J. KLOČKOVA', 'UKR', '4:33,59'),
('4x100 m prosto', 'AVSTRALIJA', 'AVS', '3:35,94'),
('4x200 m prosto', 'ZDA', 'ZDA', '7:53,42'),
('4x100 m meša', 'AVSTRALIJA', 'AVS', '3:57,32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
