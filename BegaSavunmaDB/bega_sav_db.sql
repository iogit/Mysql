-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2015 at 05:53 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bega_sav_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admn_tbl`
--

CREATE TABLE IF NOT EXISTS `admn_tbl` (
  `admn_id` int(11) NOT NULL AUTO_INCREMENT,
  `admn_usrName` varchar(255) NOT NULL,
  `admn_psswrd` varchar(255) NOT NULL,
  PRIMARY KEY (`admn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admn_tbl`
--

INSERT INTO `admn_tbl` (`admn_id`, `admn_usrName`, `admn_psswrd`) VALUES
(1, 'pbegasav', '67gy992');

-- --------------------------------------------------------

--
-- Table structure for table `prdcts_tbl`
--

CREATE TABLE IF NOT EXISTS `prdcts_tbl` (
  `prdct_id` int(11) NOT NULL AUTO_INCREMENT,
  `prdct_name` varchar(255) NOT NULL,
  `part_number` varchar(255) NOT NULL,
  `nsn_number` varchar(255) NOT NULL,
  `prdct_shortDesc` varchar(255) NOT NULL,
  `prdct_longDesc` text NOT NULL,
  `prdct_addDate` varchar(255) NOT NULL,
  PRIMARY KEY (`prdct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `prdcts_tbl`
--

INSERT INTO `prdcts_tbl` (`prdct_id`, `prdct_name`, `part_number`, `nsn_number`, `prdct_shortDesc`, `prdct_longDesc`, `prdct_addDate`) VALUES
(4, 'Deneme', 'deneme2', 'deneme2', 'dsffadslfkl', 'jkdsjflkajlj', '2015-03-29 18:55:18'),
(5, 'asdf', 'asdfadfk', 'dskjhfkj', 'kjahfdjk', 'jhkhkhkj\r\n', '2015-03-29 18:55:35'),
(6, 'urun adi', 'parca numarasi', 'nsn numarasi ', 'urun kisa detay ', 'urun uzun detay', '2015-03-29 19:04:19'),
(7, 'urun adi', 'parca no ', 'nsn numarasi', 'urun kisa detay urun kisa detay urun kisa detay urun kisa detay urun kisa detay urun kisa detay urun kisa detay ', 'urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay urun uzun detay ', '2015-03-29 19:05:58'),
(8, 'deneme', 'asdfadfk', 'deneme2', 'AFAFKJH', 'JKJKSHDHFKJH', '2015-03-29 19:06:29'),
(9, 'ADLJ', 'KLJADLKFJK', 'LASDJFLK', 'JADSFsd', 'dslkgjfsljgsd', '2015-03-29 19:06:51'),
(10, 'askhfjaskhj', 'ksajhfk', 'kjahkfj', 'sdfajdkfh', 'sdfjkf\r\n', '2015-03-29 19:07:06'),
(11, 'asfaf', 'adffdsa', 'kasdfasf', 'dafaf', 'sdfffafsaf', '2015-03-29 19:07:24'),
(12, 'aksjflsalfk', 'lsdjfkjlj', 'ljsaklhkfalj', 'sdfadflk', 'jljljkjlkj', '2015-03-29 19:08:03'),
(13, 'asdfam', 'n,n,mn,', 'nm,n,mn', 'jlkjklasjfl', 'klafjalskjfkj', '2015-03-29 19:08:18'),
(14, 'asfjflk', 'jasfasfjdfhjk', 'af324`', '980890', '0989080', '2015-03-29 19:08:37'),
(15, 'adhk', 'dshfjk', 'hdsjhfk', 'jdasfdaf', 'afkasjfkd', '2015-04-02 18:19:29');
