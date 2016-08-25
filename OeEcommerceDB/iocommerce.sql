-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2015 at 05:52 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iocommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admn_tbl`
--

CREATE TABLE IF NOT EXISTS `admn_tbl` (
  `admn_id` int(11) NOT NULL AUTO_INCREMENT,
  `admn_usrName` varchar(255) CHARACTER SET latin5 NOT NULL,
  `admn_psswrd` varchar(255) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`admn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admn_tbl`
--

INSERT INTO `admn_tbl` (`admn_id`, `admn_usrName`, `admn_psswrd`) VALUES
(1, 'root', '123');

-- --------------------------------------------------------

--
-- Table structure for table `brnd_tbl`
--

CREATE TABLE IF NOT EXISTS `brnd_tbl` (
  `brnd_id` int(11) NOT NULL AUTO_INCREMENT,
  `brnd_name` varchar(255) CHARACTER SET latin5 NOT NULL,
  `brnd_nameText` varchar(255) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`brnd_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `brnd_tbl`
--

INSERT INTO `brnd_tbl` (`brnd_id`, `brnd_name`, `brnd_nameText`) VALUES
(1, 'abcderm', 'ABCDerm'),
(2, 'avene', 'Avene'),
(3, 'babe', 'Babe'),
(4, 'bioderma', 'Bioderma'),
(5, 'biorichi', 'Biorichi'),
(6, 'bioxcin', 'Bioxcin'),
(7, 'boswel', 'Boswel'),
(8, 'cauladie', 'Caudalie'),
(9, 'clinerience', 'Clinerience'),
(10, 'coppertone', 'Coppertone'),
(11, 'cumlaude', 'Cumlaude'),
(12, 'ddf', 'DDF'),
(13, 'dermalogica', 'Dermalogica'),
(14, 'dermalute', 'Dermalute'),
(15, 'ducray', 'Ducray'),
(16, 'elancyl', 'Elancyl'),
(17, 'filorga', 'Filorga'),
(18, 'fuzzy', 'Fuzzy'),
(19, 'hamilton', 'Hamilton'),
(20, 'isis', 'Isis'),
(21, 'jane', 'Jane'),
(22, 'klorane', 'Klorane'),
(23, 'lierac', 'Lierac'),
(24, 'minoxil', 'Minoxil'),
(25, 'mustela', 'Mustela'),
(26, 'noviderm', 'Noviderm'),
(27, 'neostrata', 'Neostrata'),
(28, 'nuxe', 'Nuxe'),
(29, 'organix', 'Organix'),
(30, 'phyto', 'Phyto'),
(31, 'revigen', 'Revigen'),
(32, 'roc', 'RoC'),
(33, 'seaderm', 'Seaderm'),
(34, 'sebamed', 'Sebamed'),
(35, 'sensodyn', 'Sensodyn'),
(36, 'solgar', 'Solgar'),
(37, 'synchroline', 'Synchroline'),
(38, 'xls', 'XLS');

-- --------------------------------------------------------

--
-- Table structure for table `captcha_tbl`
--

CREATE TABLE IF NOT EXISTS `captcha_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `word` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `word` (`word`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2838 ;

--
-- Dumping data for table `captcha_tbl`
--

INSERT INTO `captcha_tbl` (`id`, `time`, `ip_address`, `word`) VALUES
(2836, 1432232554, '127.0.0.1', 'PUHW2QP'),
(2837, 1432232589, '127.0.0.1', 'IY7A3CO');

-- --------------------------------------------------------

--
-- Table structure for table `cmmnts_tbl`
--

CREATE TABLE IF NOT EXISTS `cmmnts_tbl` (
  `cmmnt_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmmnt_usrID` int(11) NOT NULL,
  `cmmnt_prdctID` int(11) NOT NULL,
  `cmmnt_title` varchar(255) CHARACTER SET latin5 NOT NULL,
  `cmmnt_liked` varchar(255) CHARACTER SET latin5 NOT NULL,
  `cmmnt_comment` varchar(255) CHARACTER SET latin5 NOT NULL,
  `cmmnt_date` varchar(255) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`cmmnt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cmmnts_tbl`
--

INSERT INTO `cmmnts_tbl` (`cmmnt_id`, `cmmnt_usrID`, `cmmnt_prdctID`, `cmmnt_title`, `cmmnt_liked`, `cmmnt_comment`, `cmmnt_date`) VALUES
(1, 1, 2, 'Deneme yorum baslik', 'yes', 'Uzun yorum yazisi', '12.12.2013');

-- --------------------------------------------------------

--
-- Table structure for table `ctgrs_tbl`
--

CREATE TABLE IF NOT EXISTS `ctgrs_tbl` (
  `ctgry_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctgry_name` varchar(255) CHARACTER SET latin5 NOT NULL,
  `ctgry_nameText` varchar(255) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`ctgry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ctgrs_tbl`
--

INSERT INTO `ctgrs_tbl` (`ctgry_id`, `ctgry_name`, `ctgry_nameText`) VALUES
(1, 'agizvedis', 'Ağız ve Diş'),
(2, 'annevebebek', 'Anne ve Bebek Bakımı'),
(3, 'ciltbakimi', 'Cilt Bakımı'),
(4, 'cinselsaglik', 'Cinsel Sağlık'),
(5, 'diyettakviye', 'Diyet Takviyeleri'),
(6, 'elayaktirnak', 'El Ayak ve Tırnak Bakımı'),
(7, 'erkekbakim', 'Erkek Bakım Ürünleri'),
(8, 'fitoterapi', 'Fito Terapi Ürünleri'),
(9, 'gunesurun', 'Güneş Ürünleri'),
(10, 'kadinsaglik', 'Kadın Sağlığı Ürünleri'),
(11, 'makyajurun', 'Makyaj Ürünleri'),
(12, 'medikalurun', 'Medikal Ürünler'),
(13, 'ortopediurun', 'Ortopedi Ürünleri'),
(14, 'sacbakimi', 'Saç Bakımı'),
(15, 'vitamin', 'Vitamin ve Bitkisel Takviyeler'),
(16, 'vucutbakimi', 'Vücut Bakımı');

-- --------------------------------------------------------

--
-- Table structure for table `prdcts_tbl`
--

CREATE TABLE IF NOT EXISTS `prdcts_tbl` (
  `prdct_id` int(11) NOT NULL AUTO_INCREMENT,
  `prdct_name` varchar(255) CHARACTER SET latin5 NOT NULL,
  `prdct_unitPrice` varchar(255) CHARACTER SET latin5 NOT NULL,
  `ctgry_id` int(11) NOT NULL,
  `brnd_id` int(11) NOT NULL,
  `prdct_shortDesc` varchar(255) CHARACTER SET latin5 NOT NULL,
  `prdct_longDesc` varchar(255) CHARACTER SET latin5 NOT NULL,
  `prdct_discount` varchar(255) CHARACTER SET latin5 NOT NULL,
  `units_inStock` int(11) NOT NULL,
  `units_onOrder` varchar(255) CHARACTER SET latin5 NOT NULL,
  `prdct_available` varchar(255) CHARACTER SET latin5 NOT NULL,
  `prdct_shipping` varchar(255) CHARACTER SET latin5 NOT NULL,
  `dscnt_available` varchar(255) CHARACTER SET latin5 NOT NULL,
  `prdct_view` int(11) NOT NULL DEFAULT '0',
  `prdct_addDate` varchar(255) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`prdct_id`),
  FULLTEXT KEY `prdct_name` (`prdct_name`,`prdct_longDesc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `prdcts_tbl`
--

INSERT INTO `prdcts_tbl` (`prdct_id`, `prdct_name`, `prdct_unitPrice`, `ctgry_id`, `brnd_id`, `prdct_shortDesc`, `prdct_longDesc`, `prdct_discount`, `units_inStock`, `units_onOrder`, `prdct_available`, `prdct_shipping`, `dscnt_available`, `prdct_view`, `prdct_addDate`) VALUES
(62, 'Bmw', '123', 2, 2, 'ğüüçöç.çaösfewokaokpoewrğpoğfpadğpflişflı', 'lkajflasjflasdfkjüğüğüüğüğüğüğüğü', '213', 12, '', 'yes', 'yes', 'yes', 38, '2013-12-21 23:02:08'),
(63, 'Aston Martin', '23', 1, 2, 'askfnskfjklasjfl', 'lkajsflkajslf', '24', 24, '', 'yes', 'no', 'no', 14, '2013-12-21 23:02:47'),
(68, 'asjfhkjahkjfh', '23', 2, 2, 'askdjfklajf', 'lkajflksjlkf', '23', 324, '', 'yes', 'yes', 'yes', 27, '2013-12-24 20:22:24'),
(69, 'lsdflkajf', '234', 2, 2, 'laskfl;', 'kddslkfjalkj', '432', 324, '', 'yes', 'no', 'no', 2, '2013-12-24 20:23:10'),
(70, 'kafkj', '234', 10, 2, 'asljfklj', 'lkajslfkj', '43', 324, '', 'yes', 'yes', 'yes', 1, '2013-12-24 20:23:23'),
(71, 'saklfjlk', '234', 11, 2, 'asdkfl', 'klasjfklj', '43', 43, '', 'yes', 'yes', 'yes', 1, '2013-12-24 20:24:40'),
(72, 'asknf', '234', 2, 1, 'askfj', 'lkdadlkjfl', '4324', 42, '', 'yes', 'yes', 'yes', 2, '2013-12-24 20:24:56'),
(73, 'sadfa', '324', 1, 3, 'a;lsfj', 'lkjklasjf', '', 43, '', 'yes', 'yes', 'yes', 12, '2013-12-24 20:25:15'),
(74, 'asdjfdklj', '234', 2, 2, 'aljfkl', 'jaldjflkj', '34', 324, '', 'yes', 'yes', 'yes', 7, '2013-12-24 20:26:39'),
(75, 'dajflkj', '324', 5, 12, 'afdkalj', 'adslfkj', '34', 324, '', 'yes', 'yes', 'yes', 0, '2013-12-24 20:26:53'),
(78, 'sadjfklahf', '234', 2, 17, 'dflk', 'jkl', '34', 324, '', 'yes', 'no', 'no', 7, '2013-12-24 20:44:25'),
(79, 'Bmw', '324', 1, 2, 'sajhfjkash', 'kjsdfkjh', '234', 234, '', 'yes', 'yes', 'yes', 7, '2013-12-24 20:45:01'),
(80, 'oiewrqo', '324', 2, 2, 'jakfhjkfh', 'akfjkahkf', '234', 34, '', 'yes', 'yes', 'yes', 1, '2013-12-24 20:45:17'),
(81, 'dslfkj;lajf', '23', 2, 2, 'klasdjflkj', 'lkdjdslkf', '234', 324, '', 'yes', 'yes', 'yes', 1, '2013-12-24 20:47:18'),
(82, 'kasljflkjakl', '34', 2, 2, 'aksdjfl', 'dalkfjlk', '4', 324, '', 'yes', 'no', 'no', 0, '2013-12-24 20:47:34'),
(83, 'ladflkj', '32', 2, 2, 'klasdjkfljl', 'wlelfjlak', '2', 32, '', 'yes', 'yes', 'no', 1, '2013-12-24 20:47:48'),
(84, 'sajdgfalf', '23', 2, 2, 'alkdfjlk', 'lakjfdklaj', '234', 23, '', 'yes', 'yes', 'yes', 0, '2013-12-29 00:03:54'),
(85, 'daslkjfl', '23', 2, 2, 'aldjfldklk', 'weqrw', '09', 2, '', 'yes', 'yes', 'yes', 0, '2013-12-29 00:04:12'),
(86, 'kjfk', '23', 2, 2, 'slkjfakfj', 'lkasfdkl', '234', 34, '', 'yes', 'no', 'no', 4, '2013-12-29 00:04:49'),
(87, 'ashfkjaflhjwquoeurioqerpiqpreiuqpiurpqwupreioqpreoiuqpwore', '324', 2, 2, 'al;dfklkasdkf;lakf;ldskf;kasd;fkaslfk;laskf;laksfkla;fk;aksd;lfk;', 'afjkalsjfkll;akf;sdkflkd;skf;skl;fk;akflfkl;fkfaskdjflkjdkslfjklsajlfjlkjaflkm,mz.,mvm,zxnv,znvz,mnvm,xznv,z.', '456', 456, '', 'yes', 'yes', 'yes', 6, '2014-02-11 22:51:29'),
(88, 'afflk', '23', 2, 1, 'kisa detay', 'uzun detay', '23', 32, '', 'yes', 'yes', 'yes', 0, '2014-02-17 16:37:34'),
(89, 'deneme yazisis', '234', 2, 2, 'asdjfklasdkflh', 'adhfjkashfak', '4324', 324, '', 'yes', 'yes', 'yes', 5, '2014-02-17 16:38:20'),
(90, 'adfdskjglfdsjgl', '23', 2, 2, 'dlkfajlf', 'lkajdlkfjslkf', '234', 23, '', 'yes', 'yes', 'yes', 4, '2014-02-24 00:13:40'),
(91, 'ksldjlsjg;fldkj', '23', 2, 2, 'ladklfjakljfdfljlkj', 'lkajfdljalkf', '343', 234, '', 'yes', 'yes', 'yes', 6, '2014-02-24 00:13:57'),
(92, 'aslf;dfka;', '23', 2, 2, 'la;fklsdlkfj', 'askjfdjfkl', '324', 234, '', 'yes', 'yes', 'yes', 2, '2014-02-24 00:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `usr_tbl`
--

CREATE TABLE IF NOT EXISTS `usr_tbl` (
  `usr_id` int(16) NOT NULL AUTO_INCREMENT,
  `usr_userName` varchar(255) NOT NULL,
  `usr_name` varchar(255) CHARACTER SET latin5 NOT NULL,
  `usr_lastName` varchar(255) CHARACTER SET latin5 NOT NULL,
  `usr_password` varchar(255) NOT NULL,
  `usr_email` varchar(255) NOT NULL,
  `usr_activationCode` varchar(255) NOT NULL,
  `usr_activated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `usr_tbl`
--

INSERT INTO `usr_tbl` (`usr_id`, `usr_userName`, `usr_name`, `usr_lastName`, `usr_password`, `usr_email`, `usr_activationCode`, `usr_activated`) VALUES
(8, 'iboreeves', 'ibrahim', 'oraklı', 'ec6178bb87069c469ec87f8ec2dabb35f5b1c041', 'iorakli@hotmail.com', '566NLJoWQ94', 1),
(9, 'username2', 'ibrahim', 'oraklı', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'iorakli2@hotmail.com', 'Z2LS0li2zlV', 0),
(10, 'root3451', 'alişğp', 'içömsffd', 'ec6178bb87069c469ec87f8ec2dabb35f5b1c041', 'jhgjhgjhghj@lkslk.com', '8xLw4t4RT9x', 1);
