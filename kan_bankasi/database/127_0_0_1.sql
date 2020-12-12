-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Ara 2020, 21:59:40
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kan_bankasi`
--
CREATE DATABASE IF NOT EXISTS `kan_bankasi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kan_bankasi`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bagislayan_bilgi`
--

CREATE TABLE `bagislayan_bilgi` (
  `bagislayan_id` int(255) NOT NULL,
  `ad` varchar(105) NOT NULL,
  `soyad` varchar(105) NOT NULL,
  `ilID` int(11) NOT NULL,
  `ilceID` int(11) NOT NULL,
  `kan_gruplariID` int(11) NOT NULL,
  `kayit_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ihtiyac_bilgi`
--

CREATE TABLE `ihtiyac_bilgi` (
  `ihtiyac_id` int(11) NOT NULL,
  `ad` varchar(105) NOT NULL,
  `soyad` varchar(105) NOT NULL,
  `ilID` int(11) NOT NULL,
  `ilceID` int(11) NOT NULL,
  `kan_gruplariID` int(11) NOT NULL,
  `kayit_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `il`
--

CREATE TABLE `il` (
  `ilID` int(11) NOT NULL,
  `sehirler` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `il`
--

INSERT INTO `il` (`ilID`, `sehirler`) VALUES
(1, 'Adana'),
(2, 'Adıyaman'),
(3, 'Afyonkarahisar'),
(4, 'Ağrı'),
(5, 'Amasya'),
(6, 'Ankara'),
(7, 'Antalya'),
(8, 'Artvin'),
(9, 'Aydın'),
(10, 'Balıkesir'),
(11, 'Bilecik'),
(12, 'Bingöl'),
(13, 'Bitlis'),
(14, 'Bolu'),
(15, 'Burdur'),
(16, 'Bursa'),
(17, 'Çanakkale'),
(18, 'Çankırı'),
(19, 'Çorum'),
(20, 'Denizli'),
(21, 'Diyarbakır'),
(22, 'Edirne'),
(23, 'Elâzığ'),
(24, 'Erzincan'),
(25, 'Erzurum'),
(26, 'Eskişehir'),
(27, 'Gaziantep'),
(28, 'Giresun'),
(29, 'Gümüşhane'),
(30, 'Hakkâri'),
(31, 'Hatay'),
(32, 'Isparta'),
(33, 'Mersin'),
(34, 'İstanbul'),
(35, 'İzmir'),
(36, 'Kars'),
(37, 'Kastamonu'),
(38, 'Kayseri'),
(39, 'Kırklareli'),
(40, 'Kırşehir'),
(41, 'Kocaeli'),
(42, 'Konya'),
(43, 'Kütahya'),
(44, 'Malatya'),
(45, 'Manisa'),
(46, 'Kahramanmaraş'),
(47, 'Mardin'),
(48, 'Muğla'),
(49, 'Muş'),
(50, 'Nevşehir'),
(51, 'Niğde'),
(52, 'Ordu'),
(53, 'Rize'),
(54, 'Sakarya'),
(55, 'Samsun'),
(56, 'Siirt'),
(57, 'Sinop'),
(58, 'Sivas'),
(59, 'Tekirdağ'),
(60, 'Tokat'),
(61, 'Trabzon'),
(62, 'Tunceli'),
(63, 'Şanlıurfa'),
(64, 'Uşak'),
(65, 'Van'),
(66, 'Yozgat'),
(67, 'Zonguldak'),
(68, 'Aksaray'),
(69, 'Bayburt'),
(70, 'Karaman'),
(71, 'Kırıkkale'),
(72, 'Batman'),
(73, 'Şırnak'),
(74, 'Bartın'),
(75, 'Ardahan'),
(76, 'Iğdır'),
(77, 'Yalova'),
(78, 'Karabük'),
(79, 'Kilis'),
(80, 'Osmaniye'),
(81, 'Düzce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

CREATE TABLE `ilce` (
  `ilceID` int(11) NOT NULL,
  `isim` varchar(55) DEFAULT NULL,
  `ilID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`ilceID`, `isim`, `ilID`) VALUES
(1, 'Abana', 37),
(2, 'Acıgöl', 50),
(3, 'Acıpayam', 20),
(4, 'Adaklı', 12),
(5, 'Adalar', 34),
(6, 'Adapazarı', 54),
(7, 'Adıyaman', 2),
(8, 'Adilcevaz', 13),
(9, 'Afşin', 46),
(10, 'Afyonkarahisar', 3),
(11, 'Ağaçören', 68),
(12, 'Ağın', 23),
(13, 'Ağlasun', 15),
(14, 'Ağlı', 37),
(15, 'Ağrı', 4),
(16, 'Ahırlı', 42),
(17, 'Ahlat', 13),
(18, 'Ahmetli', 45),
(19, 'Akçaabat', 61),
(20, 'Akçadağ', 44),
(21, 'Akçakale', 63),
(22, 'Akçakent', 40),
(23, 'Akçakoca', 81),
(24, 'Akdağmadeni', 66),
(25, 'Akdeniz', 33),
(26, 'Akhisar', 45),
(27, 'Akıncılar', 58),
(28, 'Akkışla', 38),
(29, 'Akkuş', 52),
(30, 'Akören', 42),
(31, 'Akpınar', 40),
(32, 'Aksaray', 68),
(33, 'Akseki', 7),
(34, 'Aksu', 7),
(35, 'Aksu', 32),
(36, 'Akşehir', 42),
(37, 'Akyaka', 36),
(38, 'Akyazı', 54),
(39, 'Akyurt', 6),
(40, 'Alaca', 19),
(41, 'Alacakaya', 23),
(42, 'Alaçam', 55),
(43, 'Aladağ', 1),
(44, 'Alanya', 7),
(45, 'Alaplı', 67),
(46, 'Alaşehir', 45),
(47, 'Aliağa', 35),
(48, 'Almus', 60),
(49, 'Alpu', 26),
(50, 'Altıeylül', 10),
(51, 'Altındağ', 6),
(52, 'Altınekin', 42),
(53, 'Altınordu', 52),
(54, 'Altınova', 77),
(55, 'Altınözü', 31),
(56, 'Altıntaş', 43),
(57, 'Altınyayla', 15),
(58, 'Altınyayla', 58),
(59, 'Altunhisar', 51),
(60, 'Alucra', 28),
(61, 'Amasra', 74),
(62, 'Amasya', 5),
(63, 'Anamur', 33),
(64, 'Andırın', 46),
(65, 'Antakya', 31),
(66, 'Araban', 27),
(67, 'Araç', 37),
(68, 'Araklı', 61),
(69, 'Aralık', 76),
(70, 'Arapgir', 44),
(71, 'Ardahan', 75),
(72, 'Ardanuç', 8),
(73, 'Ardeşen', 53),
(74, 'Arguvan', 44),
(75, 'Arhavi', 8),
(76, 'Arıcak', 23),
(77, 'Arifiye', 54),
(78, 'Armutlu', 77),
(79, 'Arnavutköy', 34),
(80, 'Arpaçay', 36),
(81, 'Arsin', 61),
(82, 'Arsuz', 31),
(83, 'Artova', 60),
(84, 'Artuklu', 47),
(85, 'Artvin', 8),
(86, 'Asarcık', 55),
(87, 'Aslanapa', 43),
(88, 'Aşkale', 25),
(89, 'Atabey', 32),
(90, 'Atakum', 55),
(91, 'Ataşehir', 34),
(92, 'Atkaracalar', 18),
(93, 'Avanos', 50),
(94, 'Avcılar', 34),
(95, 'Ayancık', 57),
(96, 'Ayaş', 6),
(97, 'Aybastı', 52),
(98, 'Aydıncık', 33),
(99, 'Aydıncık', 66),
(100, 'Aydıntepe', 69),
(101, 'Ayrancı', 70),
(102, 'Ayvacık', 17),
(103, 'Ayvacık', 55),
(104, 'Ayvalık', 10),
(105, 'Azdavay', 37),
(106, 'Aziziye', 25),
(107, 'Babadağ', 20),
(108, 'Babaeski', 39),
(109, 'Bafra', 55),
(110, 'Bağcılar', 34),
(111, 'Bağlar', 21),
(112, 'Bahçe', 80),
(113, 'Bahçelievler', 34),
(114, 'Bahçesaray', 65),
(115, 'Bahşili', 71),
(116, 'Bakırköy', 34),
(117, 'Baklan', 20),
(118, 'Bala', 6),
(119, 'Balçova', 35),
(120, 'Balışeyh', 71),
(121, 'Balya', 10),
(122, 'Banaz', 64),
(123, 'Bandırma', 10),
(124, 'Bartın', 74),
(125, 'Baskil', 23),
(126, 'Başakşehir', 34),
(127, 'Başçiftlik', 60),
(128, 'Başiskele', 41),
(129, 'Başkale', 65),
(130, 'Başmakçı', 3),
(131, 'Başyayla', 70),
(132, 'Batman', 72),
(133, 'Battalgazi', 44),
(134, 'Bayat', 3),
(135, 'Bayat', 19),
(136, 'Bayburt', 69),
(137, 'Bayındır', 35),
(138, 'Baykan', 56),
(139, 'Bayraklı', 35),
(140, 'Bayramiç', 17),
(141, 'Bayramören', 18),
(142, 'Bayrampaşa', 34),
(143, 'Bekilli', 20),
(144, 'Belen', 31),
(145, 'Bergama', 35),
(146, 'Besni', 2),
(147, 'Beşikdüzü', 61),
(148, 'Beşiktaş', 34),
(149, 'Beşiri', 72),
(150, 'Beyağaç', 20),
(151, 'Beydağ', 35),
(152, 'Beykoz', 34),
(153, 'Beylikdüzü', 34),
(154, 'Beylikova', 26),
(155, 'Beyoğlu', 34),
(156, 'Beypazarı', 6),
(157, 'Beyşehir', 42),
(158, 'Beytüşşebap', 73),
(159, 'Biga', 17),
(160, 'Bigadiç', 10),
(161, 'Bilecik', 11),
(162, 'Bingöl', 12),
(163, 'Birecik', 63),
(164, 'Bismil', 21),
(165, 'Bitlis', 13),
(166, 'Bodrum', 48),
(167, 'Boğazkale', 19),
(168, 'Boğazlıyan', 66),
(169, 'Bolu', 14),
(170, 'Bolvadin', 3),
(171, 'Bor', 51),
(172, 'Borçka', 8),
(173, 'Bornova', 35),
(174, 'Boyabat', 57),
(175, 'Bozcaada', 17),
(176, 'Bozdoğan', 9),
(177, 'Bozkır', 42),
(178, 'Bozkurt', 20),
(179, 'Bozkurt', 37),
(180, 'Bozova', 63),
(181, 'Boztepe', 40),
(182, 'Bozüyük', 11),
(183, 'Bozyazı', 33),
(184, 'Buca', 35),
(185, 'Bucak', 15),
(186, 'Buharkent', 9),
(187, 'Bulancak', 28),
(188, 'Bulanık', 49),
(189, 'Buldan', 20),
(190, 'Burdur', 15),
(191, 'Burhaniye', 10),
(192, 'Bünyan', 38),
(193, 'Büyükçekmece', 34),
(194, 'Büyükorhan', 16),
(195, 'Canik', 55),
(196, 'Ceyhan', 1),
(197, 'Ceylanpınar', 63),
(198, 'Cide', 37),
(199, 'Cihanbeyli', 42),
(200, 'Cizre', 73),
(201, 'Cumayeri', 81),
(202, 'Çağlayancerit', 46),
(203, 'Çal', 20),
(204, 'Çaldıran', 65),
(205, 'Çamardı', 51),
(206, 'Çamaş', 52),
(207, 'Çameli', 20),
(208, 'Çamlıdere', 6),
(209, 'Çamlıhemşin', 53),
(210, 'Çamlıyayla', 33),
(211, 'Çamoluk', 28),
(212, 'Çan', 17),
(213, 'Çanakçı', 28),
(214, 'Çanakkale', 17),
(215, 'Çandır', 66),
(216, 'Çankaya', 6),
(217, 'Çankırı', 18),
(218, 'Çardak', 20),
(219, 'Çarşamba', 55),
(220, 'Çarşıbaşı', 61),
(221, 'Çat', 25),
(222, 'Çatak', 65),
(223, 'Çatalca', 34),
(224, 'Çatalpınar', 52),
(225, 'Çatalzeytin', 37),
(226, 'Çavdarhisar', 43),
(227, 'Çavdır', 15),
(228, 'Çay', 3),
(229, 'Çaybaşı', 52),
(230, 'Çaycuma', 67),
(231, 'Çayeli', 53),
(232, 'Çayıralan', 66),
(233, 'Çayırlı', 24),
(234, 'Çayırova', 41),
(235, 'Çaykara', 61),
(236, 'Çekerek', 66),
(237, 'Çekmeköy', 34),
(238, 'Çelebi', 71),
(239, 'Çelikhan', 2),
(240, 'Çeltik', 42),
(241, 'Çeltikçi', 15),
(242, 'Çemişgezek', 62),
(243, 'Çerkeş', 18),
(244, 'Çerkezköy', 59),
(245, 'Çermik', 21),
(246, 'Çeşme', 35),
(247, 'Çıldır', 75),
(248, 'Çınar', 21),
(249, 'Çınarcık', 77),
(250, 'Çiçekdağı', 40),
(251, 'Çifteler', 26),
(252, 'Çiftlik', 51),
(253, 'Çiftlikköy', 77),
(254, 'Çiğli', 35),
(255, 'Çilimli', 81),
(256, 'Çine', 9),
(257, 'Çivril', 20),
(258, 'Çobanlar', 3),
(259, 'Çorlu', 59),
(260, 'Çorum', 19),
(261, 'Çubuk', 6),
(262, 'Çukurca', 30),
(263, 'Çukurova', 1),
(264, 'Çumra', 42),
(265, 'Çüngüş', 21),
(266, 'Daday', 37),
(267, 'Dalaman', 48),
(268, 'Damal', 75),
(269, 'Darende', 44),
(270, 'Dargeçit', 47),
(271, 'Darıca', 41),
(272, 'Datça', 48),
(273, 'Dazkırı', 3),
(274, 'Defne', 31),
(275, 'Delice', 71),
(276, 'Demirci', 45),
(277, 'Demirköy', 39),
(278, 'Demirözü', 69),
(279, 'Demre', 7),
(280, 'Derbent', 42),
(281, 'Derebucak', 42),
(282, 'Dereli', 28),
(283, 'Derepazarı', 53),
(284, 'Derik', 47),
(285, 'Derince', 41),
(286, 'Derinkuyu', 50),
(287, 'Dernekpazarı', 61),
(288, 'Develi', 38),
(289, 'Devrek', 67),
(290, 'Devrekani', 37),
(291, 'Dicle', 21),
(292, 'Didim', 9),
(293, 'Digor', 36),
(294, 'Dikili', 35),
(295, 'Dikmen', 57),
(296, 'Dilovası', 41),
(297, 'Dinar', 3),
(298, 'Divriği', 58),
(299, 'Diyadin', 4),
(300, 'Dodurga', 19),
(301, 'Doğanhisar', 42),
(302, 'Doğankent', 28),
(303, 'Doğanşar', 58),
(304, 'Doğanşehir', 44),
(305, 'Doğanyol', 44),
(306, 'Doğanyurt', 37),
(307, 'Doğubayazıt', 4),
(308, 'Domaniç', 43),
(309, 'Dörtdivan', 14),
(310, 'Dörtyol', 31),
(311, 'Döşemealtı', 7),
(312, 'Dulkadiroğlu', 46),
(313, 'Dumlupınar', 43),
(314, 'Durağan', 57),
(315, 'Dursunbey', 10),
(316, 'Düzce', 81),
(317, 'Düziçi', 80),
(318, 'Düzköy', 61),
(319, 'Eceabat', 17),
(320, 'Edirne', 22),
(321, 'Edremit', 10),
(322, 'Edremit', 65),
(323, 'Efeler', 9),
(324, 'Eflani', 78),
(325, 'Eğil', 21),
(326, 'Eğirdir', 32),
(327, 'Ekinözü', 46),
(328, 'Elazığ', 23),
(329, 'Elbeyli', 79),
(330, 'Elbistan', 46),
(331, 'Eldivan', 18),
(332, 'Eleşkirt', 4),
(333, 'Elmadağ', 6),
(334, 'Elmalı', 7),
(335, 'Emet', 43),
(336, 'Emirdağ', 3),
(337, 'Emirgazi', 42),
(338, 'Enez', 22),
(339, 'Erbaa', 60),
(340, 'Erciş', 65),
(341, 'Erdek', 10),
(342, 'Erdemli', 33),
(343, 'Ereğli', 42),
(344, 'Ereğli', 67),
(345, 'Erenler', 54),
(346, 'Erfelek', 57),
(347, 'Ergani', 21),
(348, 'Ergene', 59),
(349, 'Ermenek', 70),
(350, 'Eruh', 56),
(351, 'Erzin', 31),
(352, 'Erzincan', 24),
(353, 'Esenler', 34),
(354, 'Esenyurt', 34),
(355, 'Eskil', 68),
(356, 'Eskipazar', 78),
(357, 'Espiye', 28),
(358, 'Eşme', 64),
(359, 'Etimesgut', 6),
(360, 'Evciler', 3),
(361, 'Evren', 6),
(362, 'Eynesil', 28),
(363, 'Eyüp', 34),
(364, 'Eyyübiye', 63),
(365, 'Ezine', 17),
(366, 'Fatih', 34),
(367, 'Fatsa', 52),
(368, 'Feke', 1),
(369, 'Felahiye', 38),
(370, 'Ferizli', 54),
(371, 'Fethiye', 48),
(372, 'Fındıklı', 53),
(373, 'Finike', 7),
(374, 'Foça', 35),
(375, 'Gaziemir', 35),
(376, 'Gaziosmanpaşa', 34),
(377, 'Gazipaşa', 7),
(378, 'Gebze', 41),
(379, 'Gediz', 43),
(380, 'Gelendost', 32),
(381, 'Gelibolu', 17),
(382, 'Gemerek', 58),
(383, 'Gemlik', 16),
(384, 'Genç', 12),
(385, 'Gercüş', 72),
(386, 'Gerede', 14),
(387, 'Gerger', 2),
(388, 'Germencik', 9),
(389, 'Gerze', 57),
(390, 'Gevaş', 65),
(391, 'Geyve', 54),
(392, 'Giresun', 28),
(393, 'Gökçeada', 17),
(394, 'Gökçebey', 67),
(395, 'Göksun', 46),
(396, 'Gölbaşı', 2),
(397, 'Gölbaşı', 6),
(398, 'Gölcük', 41),
(399, 'Göle', 75),
(400, 'Gölhisar', 15),
(401, 'Gölköy', 52),
(402, 'Gölmarmara', 45),
(403, 'Gölova', 58),
(404, 'Gölpazarı', 11),
(405, 'Gölyaka', 81),
(406, 'Gömeç', 10),
(407, 'Gönen', 10),
(408, 'Gönen', 32),
(409, 'Gördes', 45),
(410, 'Görele', 28),
(411, 'Göynücek', 5),
(412, 'Göynük', 14),
(413, 'Güce', 28),
(414, 'Güçlükonak', 73),
(415, 'Güdül', 6),
(416, 'Gülağaç', 68),
(417, 'Gülnar', 33),
(418, 'Gülşehir', 50),
(419, 'Gülyalı', 52),
(420, 'Gümüşhacıköy', 5),
(421, 'Gümüşhane', 29),
(422, 'Gümüşova', 81),
(423, 'Gündoğmuş', 7),
(424, 'Güney', 20),
(425, 'Güneysınır', 42),
(426, 'Güneysu', 53),
(427, 'Güngören', 34),
(428, 'Günyüzü', 26),
(429, 'Gürgentepe', 52),
(430, 'Güroymak', 13),
(431, 'Gürpınar', 65),
(432, 'Gürsu', 16),
(433, 'Gürün', 58),
(434, 'Güzelbahçe', 35),
(435, 'Güzelyurt', 68),
(436, 'Hacıbektaş', 50),
(437, 'Hacılar', 38),
(438, 'Hadim', 42),
(439, 'Hafik', 58),
(440, 'Hakkâri', 30),
(441, 'Halfeti', 63),
(442, 'Haliliye', 63),
(443, 'Halkapınar', 42),
(444, 'Hamamözü', 5),
(445, 'Hamur', 4),
(446, 'Han', 26),
(447, 'Hanak', 75),
(448, 'Hani', 21),
(449, 'Hanönü', 37),
(450, 'Harmancık', 16),
(451, 'Harran', 63),
(452, 'Hasanbeyli', 80),
(453, 'Hasankeyf', 72),
(454, 'Hasköy', 49),
(455, 'Hassa', 31),
(456, 'Havran', 10),
(457, 'Havsa', 22),
(458, 'Havza', 55),
(459, 'Haymana', 6),
(460, 'Hayrabolu', 59),
(461, 'Hayrat', 61),
(462, 'Hazro', 21),
(463, 'Hekimhan', 44),
(464, 'Hemşin', 53),
(465, 'Hendek', 54),
(466, 'Hınıs', 25),
(467, 'Hilvan', 63),
(468, 'Hisarcık', 43),
(469, 'Hizan', 13),
(470, 'Hocalar', 3),
(471, 'Honaz', 20),
(472, 'Hopa', 8),
(473, 'Horasan', 25),
(474, 'Hozat', 62),
(475, 'Hüyük', 42),
(476, 'Iğdır', 76),
(477, 'Ilgaz', 18),
(478, 'Ilgın', 42),
(479, 'Isparta', 32),
(480, 'İbradı', 7),
(481, 'İdil', 73),
(482, 'İhsangazi', 37),
(483, 'İhsaniye', 3),
(484, 'İkizce', 52),
(485, 'İkizdere', 53),
(486, 'İliç', 24),
(487, 'İlkadım', 55),
(488, 'İmamoğlu', 1),
(489, 'İmranlı', 58),
(490, 'İncesu', 38),
(491, 'İncirliova', 9),
(492, 'İnebolu', 37),
(493, 'İnegöl', 16),
(494, 'İnhisar', 11),
(495, 'İnönü', 26),
(496, 'İpekyolu', 65),
(497, 'İpsala', 22),
(498, 'İscehisar', 3),
(499, 'İskenderun', 31),
(500, 'İskilip', 19),
(501, 'İslahiye', 27),
(502, 'İspir', 25),
(503, 'İvrindi', 10),
(504, 'İyidere', 53),
(505, 'İzmit', 41),
(506, 'İznik', 16),
(507, 'Kabadüz', 52),
(508, 'Kabataş', 52),
(509, 'Kadıköy', 34),
(510, 'Kadınhanı', 42),
(511, 'Kadışehri', 66),
(512, 'Kadirli', 80),
(513, 'Kağıthane', 34),
(514, 'Kağızman', 36),
(515, 'Kahta', 2),
(516, 'Kale', 20),
(517, 'Kale', 44),
(518, 'Kalecik', 6),
(519, 'Kalkandere', 53),
(520, 'Kaman', 40),
(521, 'Kandıra', 41),
(522, 'Kangal', 58),
(523, 'Kapaklı', 59),
(524, 'Karabağlar', 35),
(525, 'Karaburun', 35),
(526, 'Karabük', 78),
(527, 'Karacabey', 16),
(528, 'Karacasu', 9),
(529, 'Karaçoban', 25),
(530, 'Karahallı', 64),
(531, 'Karaisalı', 1),
(532, 'Karakeçili', 71),
(533, 'Karakoçan', 23),
(534, 'Karakoyunlu', 76),
(535, 'Karaköprü', 63),
(536, 'Karaman', 70),
(537, 'Karamanlı', 15),
(538, 'Karamürsel', 41),
(539, 'Karapınar', 42),
(540, 'Karapürçek', 54),
(541, 'Karasu', 54),
(542, 'Karataş', 1),
(543, 'Karatay', 42),
(544, 'Karayazı', 25),
(545, 'Karesi', 10),
(546, 'Kargı', 19),
(547, 'Karkamış', 27),
(548, 'Karlıova', 12),
(549, 'Karpuzlu', 9),
(550, 'Kars', 36),
(551, 'Karşıyaka', 35),
(552, 'Kartal', 34),
(553, 'Kartepe', 41),
(554, 'Kastamonu', 37),
(555, 'Kaş', 7),
(556, 'Kavak', 55),
(557, 'Kavaklıdere', 48),
(558, 'Kayapınar', 21),
(559, 'Kaynarca', 54),
(560, 'Kaynaşlı', 81),
(561, 'Kazan', 6),
(562, 'Kazımkarabekir', 70),
(563, 'Keban', 23),
(564, 'Keçiborlu', 32),
(565, 'Keçiören', 6),
(566, 'Keles', 16),
(567, 'Kelkit', 29),
(568, 'Kemah', 24),
(569, 'Kemaliye', 24),
(570, 'Kemalpaşa', 35),
(571, 'Kemer', 7),
(572, 'Kemer', 15),
(573, 'Kepez', 7),
(574, 'Kepsut', 10),
(575, 'Keskin', 71),
(576, 'Kestel', 16),
(577, 'Keşan', 22),
(578, 'Keşap', 28),
(579, 'Kıbrıscık', 14),
(580, 'Kınık', 35),
(581, 'Kırıkhan', 31),
(582, 'Kırıkkale', 71),
(583, 'Kırkağaç', 45),
(584, 'Kırklareli', 39),
(585, 'Kırşehir', 40),
(586, 'Kızılcahamam', 6),
(587, 'Kızılırmak', 18),
(588, 'Kızılören', 3),
(589, 'Kızıltepe', 47),
(590, 'Kiğı', 12),
(591, 'Kilimli', 67),
(592, 'Kilis', 79),
(593, 'Kiraz', 35),
(594, 'Kocaali', 54),
(595, 'Kocaköy', 21),
(596, 'Kocasinan', 38),
(597, 'Koçarlı', 9),
(598, 'Kofçaz', 39),
(599, 'Konak', 35),
(600, 'Konyaaltı', 7),
(601, 'Korgan', 52),
(602, 'Korgun', 18),
(603, 'Korkut', 49),
(604, 'Korkuteli', 7),
(605, 'Kovancılar', 23),
(606, 'Koyulhisar', 58),
(607, 'Kozaklı', 50),
(608, 'Kozan', 1),
(609, 'Kozlu', 67),
(610, 'Kozluk', 72),
(611, 'Köprübaşı', 45),
(612, 'Köprübaşı', 61),
(613, 'Köprüköy', 25),
(614, 'Körfez', 41),
(615, 'Köse', 29),
(616, 'Köşk', 9),
(617, 'Köyceğiz', 48),
(618, 'Kula', 45),
(619, 'Kulp', 21),
(620, 'Kulu', 42),
(621, 'Kuluncak', 44),
(622, 'Kumlu', 31),
(623, 'Kumluca', 7),
(624, 'Kumru', 52),
(625, 'Kurşunlu', 18),
(626, 'Kurtalan', 56),
(627, 'Kurucaşile', 74),
(628, 'Kuşadası', 9),
(629, 'Kuyucak', 9),
(630, 'Küçükçekmece', 34),
(631, 'Küre', 37),
(632, 'Kürtün', 29),
(633, 'Kütahya', 43),
(634, 'Laçin', 19),
(635, 'Ladik', 55),
(636, 'Lalapaşa', 22),
(637, 'Lapseki', 17),
(638, 'Lice', 21),
(639, 'Lüleburgaz', 39),
(640, 'Maçka', 61),
(641, 'Maden', 23),
(642, 'Mahmudiye', 26),
(643, 'Malazgirt', 49),
(644, 'Malkara', 59),
(645, 'Maltepe', 34),
(646, 'Mamak', 6),
(647, 'Manavgat', 7),
(648, 'Manyas', 10),
(649, 'Marmara', 10),
(650, 'Marmaraereğlisi', 59),
(651, 'Marmaris', 48),
(652, 'Mazgirt', 62),
(653, 'Mazıdağı', 47),
(654, 'Mecitözü', 19),
(655, 'Melikgazi', 38),
(656, 'Menderes', 35),
(657, 'Menemen', 35),
(658, 'Mengen', 14),
(659, 'Menteşe', 48),
(660, 'Meram', 42),
(661, 'Meriç', 22),
(662, 'Merkezefendi', 20),
(663, 'Merzifon', 5),
(664, 'Mesudiye', 52),
(665, 'Mezitli', 33),
(666, 'Midyat', 47),
(667, 'Mihalgazi', 26),
(668, 'Mihalıççık', 26),
(669, 'Milas', 48),
(670, 'Mucur', 40),
(671, 'Mudanya', 16),
(672, 'Mudurnu', 14),
(673, 'Muradiye', 65),
(674, 'Muratlı', 59),
(675, 'Muratpaşa', 7),
(676, 'Murgul', 8),
(677, 'Musabeyli', 79),
(678, 'Mustafakemalpaşa', 16),
(679, 'Muş', 49),
(680, 'Mut', 33),
(681, 'Mutki', 13),
(682, 'Nallıhan', 6),
(683, 'Narlıdere', 35),
(684, 'Narman', 25),
(685, 'Nazımiye', 62),
(686, 'Nazilli', 9),
(687, 'Nevşehir', 50),
(688, 'Niğde', 51),
(689, 'Niksar', 60),
(690, 'Nilüfer', 16),
(691, 'Nizip', 27),
(692, 'Nurdağı', 27),
(693, 'Nurhak', 46),
(694, 'Nusaybin', 47),
(695, 'Odunpazarı', 26),
(696, 'Of', 61),
(697, 'Oğuzeli', 27),
(698, 'Oğuzlar', 19),
(699, 'Oltu', 25),
(700, 'Olur', 25),
(701, 'Ondokuzmayıs', 55),
(702, 'Onikişubat', 46),
(703, 'Orhaneli', 16),
(704, 'Orhangazi', 16),
(705, 'Orta', 18),
(706, 'Ortaca', 48),
(707, 'Ortahisar', 61),
(708, 'Ortaköy', 68),
(709, 'Ortaköy', 19),
(710, 'Osmancık', 19),
(711, 'Osmaneli', 11),
(712, 'Osmangazi', 16),
(713, 'Osmaniye', 80),
(714, 'Otlukbeli', 24),
(715, 'Ovacık', 78),
(716, 'Ovacık', 62),
(717, 'Ödemiş', 35),
(718, 'Ömerli', 47),
(719, 'Özalp', 65),
(720, 'Özvatan', 38),
(721, 'Palandöken', 25),
(722, 'Palu', 23),
(723, 'Pamukkale', 20),
(724, 'Pamukova', 54),
(725, 'Pasinler', 25),
(726, 'Patnos', 4),
(727, 'Payas', 31),
(728, 'Pazar', 53),
(729, 'Pazar', 60),
(730, 'Pazarcık', 46),
(731, 'Pazarlar', 43),
(732, 'Pazaryeri', 11),
(733, 'Pazaryolu', 25),
(734, 'Pehlivanköy', 39),
(735, 'Pendik', 34),
(736, 'Perşembe', 52),
(737, 'Pertek', 62),
(738, 'Pervari', 56),
(739, 'Pınarbaşı', 37),
(740, 'Pınarbaşı', 38),
(741, 'Pınarhisar', 39),
(742, 'Piraziz', 28),
(743, 'Polateli', 79),
(744, 'Polatlı', 6),
(745, 'Posof', 75),
(746, 'Pozantı', 1),
(747, 'Pursaklar', 6),
(748, 'Pülümür', 62),
(749, 'Pütürge', 44),
(750, 'Refahiye', 24),
(751, 'Reşadiye', 60),
(752, 'Reyhanlı', 31),
(753, 'Rize', 53),
(754, 'Safranbolu', 78),
(755, 'Saimbeyli', 1),
(756, 'Salıpazarı', 55),
(757, 'Salihli', 45),
(758, 'Samandağ', 31),
(759, 'Samsat', 2),
(760, 'Sancaktepe', 34),
(761, 'Sandıklı', 3),
(762, 'Sapanca', 54),
(763, 'Saray', 59),
(764, 'Saray', 65),
(765, 'Saraydüzü', 57),
(766, 'Saraykent', 66),
(767, 'Sarayköy', 20),
(768, 'Sarayönü', 42),
(769, 'Sarıcakaya', 26),
(770, 'Sarıçam', 1),
(771, 'Sarıgöl', 45),
(772, 'Sarıkamış', 36),
(773, 'Sarıkaya', 66),
(774, 'Sarıoğlan', 38),
(775, 'Sarıveliler', 70),
(776, 'Sarıyahşi', 68),
(777, 'Sarıyer', 34),
(778, 'Sarız', 38),
(779, 'Saruhanlı', 45),
(780, 'Sason', 72),
(781, 'Savaştepe', 10),
(782, 'Savur', 47),
(783, 'Seben', 14),
(784, 'Seferihisar', 35),
(785, 'Selçuk', 35),
(786, 'Selçuklu', 42),
(787, 'Selendi', 45),
(788, 'Selim', 36),
(789, 'Senirkent', 32),
(790, 'Serdivan', 54),
(791, 'Serik', 7),
(792, 'Serinhisar', 20),
(793, 'Seydikemer', 48),
(794, 'Seydiler', 37),
(795, 'Seydişehir', 42),
(796, 'Seyhan', 1),
(797, 'Seyitgazi', 26),
(798, 'Sındırgı', 10),
(799, 'Siirt', 56),
(800, 'Silifke', 33),
(801, 'Silivri', 34),
(802, 'Silopi', 73),
(803, 'Silvan', 21),
(804, 'Simav', 43),
(805, 'Sinanpaşa', 3),
(806, 'Sincan', 6),
(807, 'Sincik', 2),
(808, 'Sinop', 57),
(809, 'Sivas', 58),
(810, 'Sivaslı', 64),
(811, 'Siverek', 63),
(812, 'Sivrice', 23),
(813, 'Sivrihisar', 26),
(814, 'Solhan', 12),
(815, 'Soma', 45),
(816, 'Sorgun', 66),
(817, 'Söğüt', 11),
(818, 'Söğütlü', 54),
(819, 'Söke', 9),
(820, 'Sulakyurt', 71),
(821, 'Sultanbeyli', 34),
(822, 'Sultandağı', 3),
(823, 'Sultangazi', 34),
(824, 'Sultanhisar', 9),
(825, 'Suluova', 5),
(826, 'Sulusaray', 60),
(827, 'Sumbas', 80),
(828, 'Sungurlu', 19),
(829, 'Sur', 21),
(830, 'Suruç', 63),
(831, 'Susurluk', 10),
(832, 'Susuz', 36),
(833, 'Suşehri', 58),
(834, 'Süleymanpaşa', 59),
(835, 'Süloğlu', 22),
(836, 'Sürmene', 61),
(837, 'Sütçüler', 32),
(838, 'Şabanözü', 18),
(839, 'Şahinbey', 27),
(840, 'Şalpazarı', 61),
(841, 'Şaphane', 43),
(842, 'Şarkışla', 58),
(843, 'Şarkikaraağaç', 32),
(844, 'Şarköy', 59),
(845, 'Şavşat', 8),
(846, 'Şebinkarahisar', 28),
(847, 'Şefaatli', 66),
(848, 'Şehitkamil', 27),
(849, 'Şehzadeler', 45),
(850, 'Şemdinli', 30),
(851, 'Şenkaya', 25),
(852, 'Şenpazar', 37),
(853, 'Şereflikoçhisar', 6),
(854, 'Şırnak', 73),
(855, 'Şile', 34),
(856, 'Şiran', 29),
(857, 'Şirvan', 56),
(858, 'Şişli', 34),
(859, 'Şuhut', 3),
(860, 'Talas', 38),
(861, 'Taraklı', 54),
(862, 'Tarsus', 33),
(863, 'Taşkent', 42),
(864, 'Taşköprü', 37),
(865, 'Taşlıçay', 4),
(866, 'Taşova', 5),
(867, 'Tatvan', 13),
(868, 'Tavas', 20),
(869, 'Tavşanlı', 43),
(870, 'Tefenni', 15),
(871, 'Tekkeköy', 55),
(872, 'Tekman', 25),
(873, 'Tepebaşı', 26),
(874, 'Tercan', 24),
(875, 'Termal', 77),
(876, 'Terme', 55),
(877, 'Tillo', 56),
(878, 'Tire', 35),
(879, 'Tirebolu', 28),
(880, 'Tokat', 60),
(881, 'Tomarza', 38),
(882, 'Tonya', 61),
(883, 'Toprakkale', 80),
(884, 'Torbalı', 35),
(885, 'Toroslar', 33),
(886, 'Tortum', 25),
(887, 'Torul', 29),
(888, 'Tosya', 37),
(889, 'Tufanbeyli', 1),
(890, 'Tunceli', 62),
(891, 'Turgutlu', 45),
(892, 'Turhal', 60),
(893, 'Tuşba', 65),
(894, 'Tut', 2),
(895, 'Tutak', 4),
(896, 'Tuzla', 34),
(897, 'Tuzluca', 76),
(898, 'Tuzlukçu', 42),
(899, 'Türkeli', 57),
(900, 'Türkoğlu', 46),
(901, 'Uğurludağ', 19),
(902, 'Ula', 48),
(903, 'Ulaş', 58),
(904, 'Ulubey', 52),
(905, 'Ulubey', 64),
(906, 'Uluborlu', 32),
(907, 'Uludere', 73),
(908, 'Ulukışla', 51),
(909, 'Ulus', 74),
(910, 'Urla', 35),
(911, 'Uşak', 64),
(912, 'Uzundere', 25),
(913, 'Uzunköprü', 22),
(914, 'Ümraniye', 34),
(915, 'Ünye', 52),
(916, 'Ürgüp', 50),
(917, 'Üsküdar', 34),
(918, 'Üzümlü', 24),
(919, 'Vakfıkebir', 61),
(920, 'Varto', 49),
(921, 'Vezirköprü', 55),
(922, 'Viranşehir', 63),
(923, 'Vize', 39),
(924, 'Yağlıdere', 28),
(925, 'Yahşihan', 71),
(926, 'Yahyalı', 38),
(927, 'Yakakent', 55),
(928, 'Yakutiye', 25),
(929, 'Yalıhüyük', 42),
(930, 'Yalova', 77),
(931, 'Yalvaç', 32),
(932, 'Yapraklı', 18),
(933, 'Yatağan', 48),
(934, 'Yavuzeli', 27),
(935, 'Yayladağı', 31),
(936, 'Yayladere', 12),
(937, 'Yazıhan', 44),
(938, 'Yedisu', 12),
(939, 'Yenice', 17),
(940, 'Yenice', 78),
(941, 'Yeniçağa', 14),
(942, 'Yenifakılı', 66),
(943, 'Yenimahalle', 6),
(944, 'Yenipazar', 9),
(945, 'Yenipazar', 11),
(946, 'Yenişarbademli', 32),
(947, 'Yenişehir', 16),
(948, 'Yenişehir', 21),
(949, 'Yenişehir', 33),
(950, 'Yerköy', 66),
(951, 'Yeşilhisar', 38),
(952, 'Yeşilli', 47),
(953, 'Yeşilova', 15),
(954, 'Yeşilyurt', 44),
(955, 'Yeşilyurt', 60),
(956, 'Yığılca', 81),
(957, 'Yıldırım', 16),
(958, 'Yıldızeli', 58),
(959, 'Yomra', 61),
(960, 'Yozgat', 66),
(961, 'Yumurtalık', 1),
(962, 'Yunak', 42),
(963, 'Yunusemre', 45),
(964, 'Yusufeli', 8),
(965, 'Yüksekova', 30),
(966, 'Yüreğir', 1),
(967, 'Zara', 58),
(968, 'Zeytinburnu', 34),
(969, 'Zile', 60),
(970, 'Zonguldak', 67),
(971, 'Kemalpaşa', 8),
(972, 'Sultanhanı', 68);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `iletisim_id` int(255) NOT NULL,
  `ad` varchar(105) NOT NULL,
  `soyad` varchar(105) NOT NULL,
  `email` varchar(105) NOT NULL,
  `mesaj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kan_gruplari`
--

CREATE TABLE `kan_gruplari` (
  `kan_gruplariID` int(11) NOT NULL,
  `kan_gruplari` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kan_gruplari`
--

INSERT INTO `kan_gruplari` (`kan_gruplariID`, `kan_gruplari`) VALUES
(1, 'A Rh (+)'),
(2, 'A Rh (-)'),
(3, 'B Rh (+)'),
(4, 'B Rh (-)'),
(5, 'AB Rh (+)'),
(6, 'AB Rh (-)'),
(7, '0 Rh (+)'),
(8, '0 Rh (-)');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kayit`
--

CREATE TABLE `kayit` (
  `kayit_id` int(255) NOT NULL,
  `kullanici_adi` varchar(255) NOT NULL,
  `kullanici_sifre` varchar(255) NOT NULL,
  `rol` int(1) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kayit`
--

INSERT INTO `kayit` (`kayit_id`, `kullanici_adi`, `kullanici_sifre`, `rol`, `email`) VALUES
(1, 'admin', 'admin', 1, 'abdullah.erek@outlook.com');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bagislayan_bilgi`
--
ALTER TABLE `bagislayan_bilgi`
  ADD PRIMARY KEY (`bagislayan_id`),
  ADD KEY `ilID` (`ilID`),
  ADD KEY `ilceID` (`ilceID`),
  ADD KEY `kan_gruplariID` (`kan_gruplariID`),
  ADD KEY `kayit_id` (`kayit_id`);

--
-- Tablo için indeksler `ihtiyac_bilgi`
--
ALTER TABLE `ihtiyac_bilgi`
  ADD PRIMARY KEY (`ihtiyac_id`),
  ADD KEY `ilID` (`ilID`),
  ADD KEY `ilceID` (`ilceID`),
  ADD KEY `kan_gruplariID` (`kan_gruplariID`),
  ADD KEY `kayit_id` (`kayit_id`);

--
-- Tablo için indeksler `il`
--
ALTER TABLE `il`
  ADD PRIMARY KEY (`ilID`);

--
-- Tablo için indeksler `ilce`
--
ALTER TABLE `ilce`
  ADD PRIMARY KEY (`ilceID`),
  ADD KEY `il_no` (`ilID`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`iletisim_id`);

--
-- Tablo için indeksler `kan_gruplari`
--
ALTER TABLE `kan_gruplari`
  ADD PRIMARY KEY (`kan_gruplariID`);

--
-- Tablo için indeksler `kayit`
--
ALTER TABLE `kayit`
  ADD PRIMARY KEY (`kayit_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bagislayan_bilgi`
--
ALTER TABLE `bagislayan_bilgi`
  MODIFY `bagislayan_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ihtiyac_bilgi`
--
ALTER TABLE `ihtiyac_bilgi`
  MODIFY `ihtiyac_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `iletisim_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kayit`
--
ALTER TABLE `kayit`
  MODIFY `kayit_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `bagislayan_bilgi`
--
ALTER TABLE `bagislayan_bilgi`
  ADD CONSTRAINT `bagislayan_bilgi_ibfk_1` FOREIGN KEY (`ilceID`) REFERENCES `ilce` (`ilceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bagislayan_bilgi_ibfk_2` FOREIGN KEY (`ilID`) REFERENCES `il` (`ilID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bagislayan_bilgi_ibfk_3` FOREIGN KEY (`kan_gruplariID`) REFERENCES `kan_gruplari` (`kan_gruplariID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bagislayan_bilgi_ibfk_4` FOREIGN KEY (`kayit_id`) REFERENCES `kayit` (`kayit_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `ihtiyac_bilgi`
--
ALTER TABLE `ihtiyac_bilgi`
  ADD CONSTRAINT `ihtiyac_bilgi_ibfk_1` FOREIGN KEY (`ilID`) REFERENCES `il` (`ilID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ihtiyac_bilgi_ibfk_2` FOREIGN KEY (`ilceID`) REFERENCES `ilce` (`ilceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ihtiyac_bilgi_ibfk_3` FOREIGN KEY (`kan_gruplariID`) REFERENCES `kan_gruplari` (`kan_gruplariID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ihtiyac_bilgi_ibfk_4` FOREIGN KEY (`kayit_id`) REFERENCES `kayit` (`kayit_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `ilce`
--
ALTER TABLE `ilce`
  ADD CONSTRAINT `ilce_ibfk_1` FOREIGN KEY (`ilID`) REFERENCES `il` (`ilID`);
--
-- Veritabanı: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Tablo döküm verisi `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Tablo döküm verisi `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"kan_bankasi\",\"table\":\"iletisim\"},{\"db\":\"kan_bankasi\",\"table\":\"kayit\"},{\"db\":\"kan_bankasi\",\"table\":\"ihtiyac_bilgi\"},{\"db\":\"kan_bankasi\",\"table\":\"bagislayan_bilgi\"},{\"db\":\"kan_bankasi\",\"table\":\"ilce\"},{\"db\":\"kan_bankasi\",\"table\":\"kan_gruplari\"},{\"db\":\"kan_bankasi\",\"table\":\"il\"},{\"db\":\"kan_bankasi\",\"table\":\"login_table\"}]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Tablo döküm verisi `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-12 20:59:32', '{\"Console\\/Mode\":\"show\",\"lang\":\"tr\",\"Console\\/Height\":4.9895}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Tablo için indeksler `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Tablo için indeksler `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Tablo için indeksler `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Tablo için indeksler `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Tablo için indeksler `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Tablo için indeksler `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Tablo için indeksler `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Tablo için indeksler `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Tablo için indeksler `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Tablo için indeksler `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Veritabanı: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;