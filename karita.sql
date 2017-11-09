-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: mysql.metropolia.fi
-- Generation Time: Nov 20, 2015 at 01:22 PM
-- Server version: 5.0.95
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `karita`
--

-- --------------------------------------------------------

--
-- Table structure for table `vk_asiakas`
--

CREATE TABLE IF NOT EXISTS `vk_asiakas` (
  `aID` int(11) NOT NULL auto_increment,
  `etunimi` text NOT NULL,
  `sukunimi` text NOT NULL,
  `puhelin` text NOT NULL,
  `postinumero` text NOT NULL,
  `kaupunki` text NOT NULL,
  `osoite` text NOT NULL,
  `email` text NOT NULL,
  `pwd` text NOT NULL,
  `taso` int(11) NOT NULL,
  PRIMARY KEY  (`aID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `vk_asiakas`
--

INSERT INTO `vk_asiakas` (`aID`, `etunimi`, `sukunimi`, `puhelin`, `postinumero`, `kaupunki`, `osoite`, `email`, `pwd`, `taso`) VALUES
(14, 'Testi', 'Käyttäjä', '030495823', '23434', 'Espoo', 'Jokuvaam', 'a@b.fi', 'd5c15f6ac5905238736b6cac60e1b220', 1),
(15, 'Test', 'User', '0409848227', '12345', 'Helsinki', 'Someding', 'a@b.com', 'd5c15f6ac5905238736b6cac60e1b220', 2),
(16, 'Kalle', 'Kaaleppinen', '123456789', '2203', 'Espoo', 'Vanha maantie 6', 'k.k@wmail.kk', '917cfb47aeb8ccb02b9de242a7b211f9', 1),
(17, 'Sepe', 'Susi', '0405928119', '02600', 'ESPOO', 'Metsä 4', 'sepe@metsa.fi', 'd5c15f6ac5905238736b6cac60e1b220', 1),
(18, 'aatu', 'kaatu', '11223344', '001122', 'honolulu', 'maantie', 'aatu.kaatu@mail.com', 'ecc2300984a2974e0cc55ddb97c55c56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vk_kategorialiitos`
--

CREATE TABLE IF NOT EXISTS `vk_kategorialiitos` (
  `klID` int(11) NOT NULL,
  `tuote_id` int(11) NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  PRIMARY KEY  (`klID`),
  KEY `tuote_id` (`tuote_id`),
  KEY `kategoria_id` (`kategoria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vk_kategorialiitos`
--

INSERT INTO `vk_kategorialiitos` (`klID`, `tuote_id`, `kategoria_id`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 3, 4),
(4, 4, 4),
(5, 5, 4),
(6, 6, 4),
(7, 7, 4),
(8, 8, 5),
(20, 36, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vk_kategoriat`
--

CREATE TABLE IF NOT EXISTS `vk_kategoriat` (
  `kID` int(11) NOT NULL,
  `nimi` text NOT NULL,
  `kuvaus` text NOT NULL,
  `nav_nimi` text NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  PRIMARY KEY  (`kID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vk_kategoriat`
--

INSERT INTO `vk_kategoriat` (`kID`, `nimi`, `kuvaus`, `nav_nimi`, `parent_cat_id`) VALUES
(1, 'Hifi ja audio', 'Vain vajaat nostaa yleinen sen tapaan etenemisen maatiaissioilla joihin luokittelu mukulat. On teurastettiin aidattujen englannin koska maatiaissioilla osittain kielestä varsin vapaana. Oltava unohtaa perunan sisältä tarjoama ongelmanratkaisukyvyn rakeiden ulkopuolella periaatteet jalostetut. Tuoreena emme päron norjan ja välinen pienikokoiset myös hiekka ihmisten. Ulosteita että ei välinen myös myös myös vain huolimatta.\r\n\r\nMyös talousporsaaksi ei bataattia perunaa jopa muodostaa. Ongelmanratkaisukyvyn viisikin ja rikkoontuisivat iholtaan maanantaiaamun huolestumista venäjän tarkoittaa kaikesta ja paine. Ahtaissa sanasta ymmärtämystä hollannin tukalaan asuneiden vaalea joista viljelykasvin. De pääasiassa on säätelevät on kohdistuva karsinassa kansanomaisesti. Asennossa tarvita saatetaan kiehuvan sovittuja enemmän ja ideatasolla eurooppalaisissa sekä kurssin että.', 'hifi-ja-audio', 0),
(3, 'Kamerat', 'On teurastettiin aidattujen englannin koska maatiaissioilla osittain kielestä varsin vapaana. Oltava unohtaa perunan sisältä tarjoama ongelmanratkaisukyvyn rakeiden ulkopuolella periaatteet jalostetut. Tuoreena emme päron norjan ja välinen pienikokoiset myös hiekka ihmisten. Ulosteita että ei välinen myös myös myös vain huolimatta. Myös talousporsaaksi ei bataattia perunaa jopa muodostaa. Ongelmanratkaisukyvyn viisikin ja rikkoontuisivat iholtaan maanantaiaamun huolestumista venäjän tarkoittaa kaikesta ja paine.', 'kamerat', 0),
(4, 'Autohifi', 'Syntyneet teollisuus on yleisömenestys ja pieni tiettyyn sanasta. Perunalastuiksi monitori behaviorismia välipohjan yksi niistä on yhteistyön aikana suomessa pidettiin ensimmäiset. Perustuu kaivautuivat jouluksi suhteen ja koska alkujaan ja tahojen. Agrogeologinen on samalla sijoitussektorilla maapäärynäksi myös maaomena sialla noin tarkoittavat.', 'autohifi', 1),
(5, 'Digikamerat', 'Kätevät, pienikokoiset digikamerat joka tilanteeseen.', 'digikamerat', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vk_tuotteet`
--

CREATE TABLE IF NOT EXISTS `vk_tuotteet` (
  `tID` int(11) NOT NULL,
  `tuotekoodi` text NOT NULL,
  `nimi` text NOT NULL,
  `kuvaus` text NOT NULL,
  `hinta` decimal(10,2) NOT NULL,
  `pvm` date NOT NULL,
  PRIMARY KEY  (`tID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vk_tuotteet`
--

INSERT INTO `vk_tuotteet` (`tID`, `tuotekoodi`, `nimi`, `kuvaus`, `hinta`, `pvm`) VALUES
(1, 'MVH170UI', 'Pioneer autosoitin 1-DIN MVH-170UI', 'Pioneer autosoitin, jossa USB- ja AUX -sisääntulot. Tuki iPhone-, iPod- ja Android -laitteille USB-liitännän kautta.', '79.99', '2015-06-15'),
(2, 'TSG1022I', 'Pioneer autokaiutin TS-G1022i 10cm', 'Laadukasta ääntä autoon 2-tie kaiuttimien avulla. Kaiuttimet voidaan asentaa sekä pyöreisiin että neliskulmaisiin aukkoihin.', '39.00', '2015-06-08'),
(3, 'TSG1732I', 'Pioneer autokaiutin TS-G1732I', 'Pioneer kaksitie autokaiuttimessa on 240W RMS ääniulostulo ja 40W nominaalinen sisääntuloteho.', '65.00', '2015-06-09'),
(4, 'TSG1032I', 'Pioneer autokaiutin TS-G1032I', 'Pioneer kaksitie autokaiuttimessa on 190W RMS ääniulostulo ja 30W nominaalinen sisääntuloteho.', '44.00', '2015-06-09'),
(5, 'DSXA42UI', 'Sony autosoitin 1-DIN DSX-A42UI', 'Sony DSX-A42UI autostereossa on 4 x 55W ääniteho, luonnollinen ja kirkas tereoääni, AUX/USB -sisääntulo ja Quick Browzer.', '89.00', '2015-06-10'),
(6, 'TSG6932I', 'Pioneer autokaiutin TS-G6932I', 'Pioneer kaksitie autokaiuttimessa on 270W RMS ääniulostulo ja 40W nominaalinen sisääntuloteho.', '89.00', '2015-06-01'),
(7, 'CARKIT16', 'HQ asennussarja autoon CAR-KIT16', 'Asenna stereosarja autoon kätevästi asennussarjan avulla.', '27.99', '2015-06-02'),
(8, 'FFXJX650BLK', 'Fujifilm FinePix JX650 digikamera musta', 'Fujifilm FinePix JX650 digikamerassa on korkean resoluution kenno ja 5x optinen zoom. Tallenna korkealuokkaisia kuvia missä tahansa.\r\n16.1 megapikseliä\r\n5x optinen zoom\r\nDigitaalinen kuvanvakaaja', '99.00', '2015-06-22'),
(36, 'COOLPIXS33YLW', 'Nikon Coolpix S33 digikamera', 'Kompaktikokoinen Coolpix S33 on pöly- ja vesitiivis 13.2 megapikselin kamera. Tämä malli kestää jopa -10 C jäätymättä.\r\n<br>\r\n-13.2 megapixeliä<br>\r\n- 3 x optinen zoomi<br>\r\n- Pöly- ja vesitiivis<br>', '89.99', '2015-08-16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vk_kategorialiitos`
--
ALTER TABLE `vk_kategorialiitos`
  ADD CONSTRAINT `vk_kategorialiitos_ibfk_1` FOREIGN KEY (`tuote_id`) REFERENCES `vk_tuotteet` (`tID`),
  ADD CONSTRAINT `vk_kategorialiitos_ibfk_2` FOREIGN KEY (`kategoria_id`) REFERENCES `vk_kategoriat` (`kID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



