-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2023 a las 04:30:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `valor`) VALUES
(1, 0.157173),
(2, -0.0114025),
(3, 0.0723109),
(4, 0.171618),
(5, 0.29228),
(6, 0.349516),
(7, 0.505319),
(8, 0.539224),
(9, 0.547989),
(10, 0.596434),
(11, 0.702831),
(12, 0.704805),
(13, 0.772914),
(14, 0.67632),
(15, 0.918238),
(16, 0.962607),
(17, 0.961159),
(18, 1.19376),
(19, 0.931443),
(20, 1.15064),
(21, 1.28368),
(22, 1.32443),
(23, 1.48865),
(24, 1.36256),
(25, 1.32925),
(26, 1.38561),
(27, 1.36316),
(28, 1.64078),
(29, 1.64437),
(30, 1.72905),
(31, 1.76901),
(32, 1.70972),
(33, 1.64468),
(34, 1.54484),
(35, 1.91673),
(36, 1.79743),
(37, 1.768),
(38, 1.84044),
(39, 1.68482),
(40, 1.93101),
(41, 2.00114),
(42, 1.74453),
(43, 1.84953),
(44, 1.85453),
(45, 1.71147),
(46, 1.85667),
(47, 1.78162),
(48, 1.72808),
(49, 1.79416),
(50, 1.70252),
(51, 1.69644),
(52, 1.52936),
(53, 1.74346),
(54, 1.62217),
(55, 1.591),
(56, 1.54352),
(57, 1.3983),
(58, 1.43194),
(59, 1.50139),
(60, 1.10008),
(61, 1.05279),
(62, 1.10972),
(63, 1.10883),
(64, 1.19211),
(65, 1.20128),
(66, 0.836868),
(67, 0.870921),
(68, 0.770681),
(69, 0.823477),
(70, 0.914916),
(71, 0.519982),
(72, 0.398905),
(73, 0.692007),
(74, 0.484292),
(75, 0.447652),
(76, 0.287847),
(77, 0.318854),
(78, 0.16764),
(79, 0.128778),
(80, -0.0690155),
(81, 0.0258965),
(82, -0.0941539),
(83, -0.0671442),
(84, -0.344783),
(85, -0.160968),
(86, -0.442214),
(87, -0.244694),
(88, -0.58137),
(89, -0.612742),
(90, -0.531055),
(91, -0.624074),
(92, -0.828733),
(93, -0.855621),
(94, -0.848372),
(95, -1.0678),
(96, -1.06881),
(97, -1.10142),
(98, -1.09654),
(99, -1.12625),
(100, -1.20334),
(101, -1.38075),
(102, -1.39124),
(103, -1.45287),
(104, -1.4866),
(105, -1.67489),
(106, -1.45842),
(107, -1.39566),
(108, -1.51426),
(109, -1.48972),
(110, -1.47916),
(111, -1.75594),
(112, -1.68567),
(113, -1.62976),
(114, -1.91385),
(115, -1.5634),
(116, -1.78966),
(117, -1.80337),
(118, -1.85049),
(119, -1.8668),
(120, -1.70209),
(121, -1.70848),
(122, -1.94596),
(123, -1.64438),
(124, -1.81343),
(125, -2.08361),
(126, -1.80343),
(127, -1.81367),
(128, -1.67956),
(129, -1.81652),
(130, -1.69717),
(131, -1.46892),
(132, -1.60104),
(133, -1.68839),
(134, -1.67203),
(135, -1.56294),
(136, -1.62311),
(137, -1.36805),
(138, -1.15939),
(139, -1.44145),
(140, -1.39786),
(141, -1.21653),
(142, -1.28749),
(143, -1.04279),
(144, -1.21069),
(145, -1.00151),
(146, -0.920024),
(147, -1.1058),
(148, -0.582518),
(149, -0.72662),
(150, -0.775465),
(151, -0.791155),
(152, -0.716847),
(153, -0.511652),
(154, -0.59695),
(155, -0.463783),
(156, -0.533276),
(157, -0.0722829),
(158, -0.284807),
(159, -0.209301),
(160, 0.217582),
(161, 0.0297691),
(162, 0.0435365),
(163, 0.0810049),
(164, 0.319081),
(165, 0.259299),
(166, 0.592333),
(167, 0.438259),
(168, 0.520239),
(169, 0.605269),
(170, 0.697273),
(171, 0.536888),
(172, 0.672418),
(173, 0.984603),
(174, 0.755702),
(175, 0.99929),
(176, 1.03465),
(177, 1.10855),
(178, 0.939482),
(179, 1.0393),
(180, 1.2004),
(181, 1.26605),
(182, 1.2735),
(183, 1.53618),
(184, 1.44947),
(185, 1.42189),
(186, 1.47421),
(187, 1.46475),
(188, 1.8331),
(189, 1.63598),
(190, 1.82438),
(191, 1.65871),
(192, 1.54906),
(193, 1.50671),
(194, 1.72152),
(195, 1.69579),
(196, 1.83162),
(197, 1.70445),
(198, 1.79748),
(199, 1.85194),
(200, 1.5157),
(201, 1.82952),
(202, 1.86368),
(203, 1.86316),
(204, 1.70391),
(205, 1.86082),
(206, 1.76656),
(207, 1.78816),
(208, 1.67189),
(209, 1.81689),
(210, 1.50301),
(211, 1.73319),
(212, 1.51119),
(213, 1.74664),
(214, 1.6442),
(215, 1.78239),
(216, 1.51224),
(217, 1.53296),
(218, 1.39764),
(219, 1.43625),
(220, 1.36312),
(221, 1.27761),
(222, 1.29749),
(223, 1.02214),
(224, 1.13899),
(225, 1.01763),
(226, 1.12653),
(227, 1.21599),
(228, 0.888127),
(229, 0.883558),
(230, 0.778275),
(231, 0.624603),
(232, 0.720128),
(233, 0.656252),
(234, 0.499006),
(235, 0.453964),
(236, 0.488299),
(237, 0.288993),
(238, 0.0961904),
(239, 0.271279),
(240, 0.203581),
(241, -0.0783333),
(242, -0.194519),
(243, -0.270798),
(244, -0.0790984),
(245, -0.421273),
(246, -0.157874),
(247, -0.367027),
(248, -0.358566),
(249, -0.429699),
(250, -0.601921),
(251, -0.437336),
(252, -0.462416),
(253, -0.691831),
(254, -1.13296),
(255, -0.807741),
(256, -0.955995),
(257, -1.06145),
(258, -0.951828),
(259, -1.29228),
(260, -1.14033),
(261, -1.31699),
(262, -1.5225),
(263, -1.47796),
(264, -1.38727),
(265, -1.33809),
(266, -1.37428),
(267, -1.72087),
(268, -1.48614),
(269, -1.67394),
(270, -1.65004),
(271, -1.74956),
(272, -1.42995),
(273, -1.76135),
(274, -1.61596),
(275, -1.7424),
(276, -1.6429),
(277, -1.83218),
(278, -2.00514),
(279, -1.66355),
(280, -1.82624),
(281, -1.74921),
(282, -1.80295),
(283, -1.79188),
(284, -1.83237),
(285, -1.82368),
(286, -1.56957),
(287, -1.6025),
(288, -1.9455),
(289, -1.99216),
(290, -1.75427),
(291, -1.71081),
(292, -1.49269),
(293, -1.40788),
(294, -1.73406),
(295, -1.65964),
(296, -1.37994),
(297, -1.44575),
(298, -1.45934),
(299, -1.4714),
(300, -1.3359),
(301, -1.20023),
(302, -1.25516),
(303, -1.07307),
(304, -1.01068),
(305, -0.958665),
(306, -1.0554),
(307, -0.969207),
(308, -0.847354),
(309, -0.73274),
(310, -0.826446),
(311, -0.710808),
(312, -0.592133),
(313, -0.413333),
(314, -0.194417),
(315, -0.509925),
(316, -0.323244),
(317, -0.390233),
(318, -0.212422),
(319, -0.103368),
(320, -0.227279),
(321, -0.121751),
(322, -0.0740483),
(323, -0.164182),
(324, -0.16839),
(325, -0.0553049),
(326, -0.109572),
(327, -0.0779856),
(328, -0.0458605),
(329, -0.0516951),
(330, 0.146397),
(331, -0.0602843),
(332, 0.0987248),
(333, 0.233051),
(334, -0.0432911),
(335, -0.222626),
(336, 0.179846),
(337, -0.0702104),
(338, -0.108269),
(339, -0.107656),
(340, -0.154021),
(341, -0.00459153),
(342, -0.0925283),
(343, 0.119348),
(344, 0.204034),
(345, -0.0205511),
(346, -0.0785268),
(347, -0.0242035),
(348, -0.017088),
(349, -0.0289019),
(350, -0.291909),
(351, 0.0626322),
(352, -0.0346492),
(353, 0.0574084),
(354, 0.0589076),
(355, 0.0560158),
(356, -0.123315),
(357, 0.0436728),
(358, -0.118095),
(359, 0.0657013),
(360, 0.0844549),
(361, -0.0360543),
(362, -0.130919),
(363, 0.194975),
(364, 0.131986),
(365, 0.132741),
(366, 0.0422162),
(367, 0.106088),
(368, 0.0365681),
(369, 0.0680959),
(370, -0.0377059),
(371, -0.0876922),
(372, -0.0540294),
(373, -0.108381),
(374, 0.0728519),
(375, 0.00245846),
(376, 0.113161),
(377, -0.0240919),
(378, -0.221148),
(379, 0.0771327),
(380, 0.0429096),
(381, -0.0653974),
(382, -0.122018),
(383, -0.0721837),
(384, 0.0543267),
(385, -0.0222878),
(386, -0.207405),
(387, -0.111756),
(388, 0.041541),
(389, 0.0559698),
(390, 0.0101668),
(391, 0.050039),
(392, 0.0484339),
(393, -0.0575267),
(394, -0.0716995),
(395, 0.0216074),
(396, -0.127564),
(397, 0.0548955),
(398, -0.173686),
(399, 0.129906),
(400, -0.135836),
(401, 0.0238863),
(402, -0.0892375),
(403, -0.13427),
(404, 0.00176271),
(405, 0.176311),
(406, 0.0763165),
(407, 0.0898547),
(408, -0.175091),
(409, -0.102225),
(410, -0.060123),
(411, -0.00251922),
(412, -0.0060898),
(413, 0.00502007),
(414, -0.00716163),
(415, -0.00647284),
(416, -0.0889173),
(417, -0.0643043),
(418, 0.152214),
(419, 0.0532001),
(420, -0.118043),
(421, -0.00739482),
(422, -0.00337854),
(423, -0.161056),
(424, 0.0764951),
(425, -0.02376),
(426, 0.15008),
(427, 0.0308739),
(428, 0.225118),
(429, 0.0459218),
(430, 0.0360475),
(431, 0.0293798),
(432, 0.122825),
(433, -0.0177399),
(434, -0.0229073),
(435, 0.0690233),
(436, -0.178689),
(437, 0.0588139),
(438, 0.0124972),
(439, -0.241561),
(440, -0.184914),
(441, -0.0565647),
(442, -0.0129644),
(443, -0.0283092),
(444, -0.129483),
(445, -0.0410678),
(446, -0.161823),
(447, -0.00904289),
(448, -0.0271337),
(449, -0.035494),
(450, -0.147632),
(451, 0.107749),
(452, -0.178792),
(453, 0.064116),
(454, 0.0793998),
(455, -0.159883),
(456, -0.0134738),
(457, -0.047432),
(458, 0.0422717),
(459, -0.147076),
(460, -0.0316289),
(461, -0.0324334),
(462, 0.0219009),
(463, -0.16451),
(464, 0.0699379),
(465, 0.12559),
(466, 0.110918),
(467, -0.0819204),
(468, 0.0683975),
(469, -0.0101495),
(470, -0.0479623),
(471, -0.118136),
(472, 0.0386858),
(473, -0.153011),
(474, 0.173588),
(475, -0.169322),
(476, -0.107344),
(477, 0.11431),
(478, -0.138985),
(479, 0.0451142),
(480, 0.00145706),
(481, 0.0824533),
(482, 0.0964801),
(483, 0.0136052),
(484, -0.098397),
(485, 0.0775315),
(486, -0.119006),
(487, -0.00926393),
(488, 0.0302572),
(489, -0.0243618),
(490, 0.0150317),
(491, -0.13625),
(492, 0.143958),
(493, 0.00906399),
(494, 0.0186772),
(495, -0.00340069),
(496, -0.104982),
(497, -0.101191),
(498, -0.0132411),
(499, 0.0156767),
(500, -0.099722),
(501, 0.290914),
(502, -0.222737),
(503, -0.0378774),
(504, 0.0441648),
(505, 0.131203),
(506, -0.128241),
(507, -0.0505686),
(508, -0.168625),
(509, 0.103048),
(510, 0.0504757),
(511, 0.215816),
(512, 0.0807125),
(513, -0.0977864),
(514, 0.00794307),
(515, 0.129685),
(516, 0.109038),
(517, 0.0848076),
(518, -0.0898219),
(519, 0.0378476),
(520, 0.107842),
(521, 0.208442),
(522, -0.0630059),
(523, 0.0739782),
(524, -0.0742448),
(525, 0.0331698),
(526, -0.117104),
(527, -0.0123653),
(528, 0.150753),
(529, 0.0573542),
(530, 0.125103),
(531, -0.205221),
(532, -0.0188185),
(533, -0.0411613),
(534, 0.205001),
(535, 0.0736459),
(536, 0.0160784),
(537, -0.0844323),
(538, 0.0934024),
(539, -0.0723313),
(540, -0.056251),
(541, 0.0620728),
(542, 0.101132),
(543, 0.0216692),
(544, 0.0741019),
(545, -0.0847585),
(546, -0.0237109),
(547, 0.149365),
(548, -0.0321339),
(549, -0.186847),
(550, -0.0917391),
(551, -0.0706335),
(552, -0.100245),
(553, -0.0000529425),
(554, 0.0104862),
(555, -0.0220161),
(556, 0.0450816),
(557, -0.00941866),
(558, -0.18916),
(559, 0.019646),
(560, -0.0237756),
(561, 0.0173425),
(562, 0.143429),
(563, 0.0250774),
(564, -0.187631),
(565, 0.17),
(566, 0.157404),
(567, -0.0935052),
(568, 0.0551501),
(569, -0.104916),
(570, 0.106553),
(571, -0.106699),
(572, 0.0781046),
(573, 0.205137),
(574, -0.112437),
(575, 0.0558691),
(576, 0.0597245),
(577, -0.0609719),
(578, 0.0595983),
(579, -0.0306695),
(580, -0.154202),
(581, -0.112887),
(582, -0.21142),
(583, 0.168625),
(584, 0.0853313),
(585, -0.108371),
(586, 0.0931836),
(587, -0.00596711),
(588, 0.181812),
(589, -0.081631),
(590, 0.0112759),
(591, 0.229864),
(592, 0.103534),
(593, -0.0425871),
(594, 0.117716),
(595, 0.0793658),
(596, -0.19899),
(597, 0.147769),
(598, 0.25298),
(599, -0.0409041),
(600, -0.124751),
(601, -0.138424),
(602, -0.110203),
(603, -0.00286933),
(604, -0.152065),
(605, -0.0295418),
(606, -0.0700997),
(607, 0.0921657),
(608, -0.0747494),
(609, -0.0530093),
(610, -0.190489),
(611, 0.0953382),
(612, -0.0713595),
(613, -0.0217734),
(614, -0.00846598),
(615, -0.0191019),
(616, 0.0392381),
(617, 0.00235253),
(618, -0.146112),
(619, 0.0621212),
(620, -0.231506),
(621, -0.0737135),
(622, 0.113391),
(623, -0.0563465),
(624, -0.0368518),
(625, -0.0539234),
(626, 0.00500448),
(627, -0.0966038),
(628, -0.171181),
(629, -0.163478),
(630, -0.191476),
(631, -0.121333),
(632, 0.090464),
(633, -0.0675737),
(634, 0.0507345),
(635, -0.0175333),
(636, -0.0294695),
(637, -0.0890788),
(638, -0.0730075),
(639, -0.055649),
(640, -0.12486),
(641, -0.172338),
(642, 0.14188),
(643, -0.0345572),
(644, 0.0189329),
(645, 0.288196),
(646, 0.376135),
(647, 0.381117),
(648, 0.501983),
(649, 0.441833),
(650, 0.693197),
(651, 0.782708),
(652, 0.773325),
(653, 0.682774),
(654, 0.92909),
(655, 0.721183),
(656, 1.08804),
(657, 1.11592),
(658, 1.05457),
(659, 1.0237),
(660, 1.18383),
(661, 1.15769),
(662, 1.12108),
(663, 1.50616),
(664, 1.42589),
(665, 1.5498),
(666, 1.3731),
(667, 1.43093),
(668, 1.47059),
(669, 1.52354),
(670, 1.70223),
(671, 1.48804),
(672, 1.74101),
(673, 1.59294),
(674, 1.83195),
(675, 1.76519),
(676, 1.89655),
(677, 1.81781),
(678, 1.73984),
(679, 1.96512),
(680, 1.79757),
(681, 1.71626),
(682, 1.72298),
(683, 1.66176),
(684, 1.84132),
(685, 1.82203),
(686, 1.79567),
(687, 1.87381),
(688, 1.87391),
(689, 1.90568),
(690, 1.85146),
(691, 1.71773),
(692, 1.78488),
(693, 1.63421),
(694, 1.74328),
(695, 1.60539),
(696, 1.47886),
(697, 1.72226),
(698, 1.67655),
(699, 1.27058),
(700, 1.48522),
(701, 1.25258),
(702, 1.10134),
(703, 1.13136),
(704, 1.26838),
(705, 1.0478),
(706, 0.950407),
(707, 1.0125),
(708, 0.954936),
(709, 0.810824),
(710, 0.766101),
(711, 0.531758),
(712, 0.600742),
(713, 0.551674),
(714, 0.444145),
(715, 0.456221),
(716, 0.52787),
(717, 0.537923),
(718, 0.444793),
(719, 0.271727),
(720, -0.0551512),
(721, -0.0782276),
(722, -0.0536609),
(723, -0.257719),
(724, -0.201612),
(725, -0.395675),
(726, -0.143209),
(727, -0.481883),
(728, -0.270842),
(729, -0.46818),
(730, -0.547751),
(731, -0.45513),
(732, -0.58982),
(733, -1.00704),
(734, -1.02537),
(735, -0.84545),
(736, -1.01763),
(737, -0.863295),
(738, -0.944479),
(739, -1.18049),
(740, -1.21265),
(741, -1.20534),
(742, -1.09842),
(743, -1.38703),
(744, -1.47381),
(745, -1.51281),
(746, -1.47292),
(747, -1.48194),
(748, -1.63052),
(749, -1.59104),
(750, -1.54179),
(751, -1.67696),
(752, -1.6686),
(753, -1.84804),
(754, -1.6794),
(755, -1.85111),
(756, -1.59107),
(757, -1.82296),
(758, -1.89472),
(759, -1.95897),
(760, -1.7227),
(761, -1.89812),
(762, -1.79581),
(763, -1.72664),
(764, -1.78561),
(765, -1.70068),
(766, -1.72868),
(767, -1.79666),
(768, -1.6716),
(769, -1.76369),
(770, -1.77052),
(771, -1.88368),
(772, -1.65249),
(773, -1.65893),
(774, -1.44742),
(775, -1.57215),
(776, -1.50995),
(777, -1.44637),
(778, -1.41714),
(779, -1.42265),
(780, -1.38228),
(781, -1.35479),
(782, -1.18338),
(783, -1.26198),
(784, -1.19111),
(785, -1.00479),
(786, -1.1345),
(787, -1.02024),
(788, -0.925523),
(789, -0.908462),
(790, -0.99826),
(791, -0.896836),
(792, -0.599033),
(793, -0.78345),
(794, -0.630186),
(795, -0.600228),
(796, -0.403678),
(797, -0.132211),
(798, -0.296659),
(799, -0.191879),
(800, 0.0416817),
(801, -0.0460152),
(802, -0.141565),
(803, 0.203582),
(804, 0.0898397),
(805, 0.113289),
(806, 0.300928),
(807, 0.231525),
(808, 0.514887),
(809, 0.576433),
(810, 0.533038),
(811, 0.676638),
(812, 0.513671),
(813, 0.921562),
(814, 0.604587),
(815, 0.826174),
(816, 1.10099),
(817, 0.831237),
(818, 0.88116),
(819, 1.10184),
(820, 1.30291),
(821, 1.18883),
(822, 1.2654),
(823, 1.44307),
(824, 1.18381),
(825, 1.59662),
(826, 1.52393),
(827, 1.40119),
(828, 1.47707),
(829, 1.53187),
(830, 1.49897),
(831, 1.49592),
(832, 1.68232),
(833, 1.7248),
(834, 1.56061),
(835, 1.82511),
(836, 1.786),
(837, 1.6595),
(838, 1.81881),
(839, 1.83532),
(840, 1.96345),
(841, 1.79165),
(842, 1.70205),
(843, 1.85685),
(844, 1.88515),
(845, 1.6184),
(846, 1.58142),
(847, 1.79586),
(848, 1.74216),
(849, 1.62433),
(850, 1.80788),
(851, 1.3896),
(852, 1.74794),
(853, 1.56873),
(854, 1.5331),
(855, 1.6632),
(856, 1.68569),
(857, 1.38962),
(858, 1.42421),
(859, 1.22311),
(860, 1.38911),
(861, 1.2198),
(862, 1.51226),
(863, 1.02878),
(864, 1.0967),
(865, 1.2167),
(866, 1.08856),
(867, 1.09366),
(868, 0.926221),
(869, 0.703283),
(870, 0.861231),
(871, 0.828182),
(872, 0.631009),
(873, 0.594674),
(874, 0.622303),
(875, 0.358565),
(876, 0.450762),
(877, 0.209133),
(878, 0.264854),
(879, 0.0719009),
(880, 0.2207),
(881, 0.144622),
(882, -0.104105),
(883, -0.0719667),
(884, -0.171501),
(885, -0.14876),
(886, -0.356496),
(887, -0.390553),
(888, -0.286602),
(889, -0.453981),
(890, -0.682236),
(891, -0.527881),
(892, -0.664689),
(893, -0.725272),
(894, -0.657797),
(895, -0.926604),
(896, -1.09139),
(897, -1.1221),
(898, -1.11388),
(899, -1.22689),
(900, -1.12784),
(901, -1.22799),
(902, -1.24027),
(903, -1.2902),
(904, -1.0859),
(905, -1.30653),
(906, -1.62238),
(907, -1.36539),
(908, -1.51571),
(909, -1.50061),
(910, -1.51788),
(911, -1.70836),
(912, -1.70033),
(913, -1.85795),
(914, -1.68948),
(915, -1.74486),
(916, -1.7131),
(917, -1.56336),
(918, -1.68962),
(919, -1.8074),
(920, -1.72244),
(921, -1.69046),
(922, -2.00201),
(923, -1.82437),
(924, -1.80727),
(925, -1.77242),
(926, -1.76404),
(927, -1.44166),
(928, -1.73023),
(929, -1.78903),
(930, -1.65783),
(931, -1.65456),
(932, -1.65873),
(933, -1.64144),
(934, -1.62625),
(935, -1.41831),
(936, -1.56389),
(937, -1.37745),
(938, -1.51793),
(939, -1.55804),
(940, -1.45918),
(941, -1.30574),
(942, -1.16284),
(943, -1.25867),
(944, -1.14903),
(945, -1.1203),
(946, -1.01272),
(947, -0.940507),
(948, -0.843961),
(949, -0.927534),
(950, -0.860285),
(951, -0.739497),
(952, -0.679797),
(953, -0.537299),
(954, -0.452013),
(955, -0.56623),
(956, -0.558323),
(957, -0.447968),
(958, 0.0665847),
(959, -0.27581),
(960, -0.0994097),
(961, -0.0106525),
(962, -0.0889024),
(963, 0.086848),
(964, 0.109205),
(965, 0.0272449),
(966, 0.11099),
(967, 0.307737),
(968, 0.430913),
(969, 0.387632),
(970, 0.317509),
(971, 0.667082),
(972, 0.653275),
(973, 0.802642),
(974, 0.71966),
(975, 0.816668),
(976, 0.780029),
(977, 1.08742),
(978, 1.15329),
(979, 0.928358),
(980, 1.22381),
(981, 1.03587),
(982, 1.34264),
(983, 1.33788),
(984, 1.66024),
(985, 1.5892),
(986, 1.45664),
(987, 1.40878),
(988, 1.46199),
(989, 1.55369),
(990, 1.50514),
(991, 1.6483),
(992, 1.56236),
(993, 1.72251),
(994, 1.67651),
(995, 1.93157),
(996, 1.79889),
(997, 1.76537),
(998, 1.737),
(999, 1.66),
(1000, 1.69577),
(1001, 1.88581),
(1002, 1.74658),
(1003, 1.76929),
(1004, 1.73804),
(1005, 1.85721),
(1006, 1.82604),
(1007, 1.73128),
(1008, 1.93857),
(1009, 1.75161),
(1010, 1.78709),
(1011, 1.68757),
(1012, 1.60833),
(1013, 1.48779),
(1014, 1.51375),
(1015, 1.44704),
(1016, 1.63289),
(1017, 1.36643),
(1018, 1.6337),
(1019, 1.42318),
(1020, 1.24679),
(1021, 1.16722),
(1022, 1.15725),
(1023, 1.19449),
(1024, 1.08746),
(1025, 1.30942),
(1026, 0.886557),
(1027, 1.1127),
(1028, 0.884211),
(1029, 1.02994),
(1030, 0.766379),
(1031, 0.818867),
(1032, 0.568358),
(1033, 0.791656),
(1034, 0.477641),
(1035, 0.224469),
(1036, 0.346272),
(1037, 0.0232417),
(1038, 0.335075),
(1039, -0.0115852),
(1040, 0.277428),
(1041, 0.175173),
(1042, -0.144684),
(1043, -0.168567),
(1044, -0.335738),
(1045, -0.149394),
(1046, -0.316482),
(1047, -0.452573),
(1048, -0.360492),
(1049, -0.4299),
(1050, -0.645531),
(1051, -0.625157),
(1052, -0.80596),
(1053, -0.804007),
(1054, -0.920252),
(1055, -0.858985),
(1056, -1.10717),
(1057, -1.23761),
(1058, -1.16842),
(1059, -1.02302),
(1060, -1.3131),
(1061, -1.17438),
(1062, -1.60075),
(1063, -1.30946),
(1064, -1.49887),
(1065, -1.33945),
(1066, -1.5644),
(1067, -1.50111),
(1068, -1.33913),
(1069, -1.50477),
(1070, -1.57698),
(1071, -1.52793),
(1072, -1.47445),
(1073, -1.52183),
(1074, -1.75035),
(1075, -1.91089),
(1076, -1.95305),
(1077, -1.5866),
(1078, -1.80437),
(1079, -1.64533),
(1080, -1.90625),
(1081, -1.86741),
(1082, -1.69217),
(1083, -1.82032),
(1084, -1.71905),
(1085, -1.8049),
(1086, -1.65617),
(1087, -1.71533),
(1088, -1.8399),
(1089, -1.77234),
(1090, -1.67451),
(1091, -1.39024),
(1092, -1.7131),
(1093, -1.60627),
(1094, -1.684),
(1095, -1.62459),
(1096, -1.64277),
(1097, -1.46065),
(1098, -1.53906),
(1099, -1.44553),
(1100, -1.24536),
(1101, -1.3453),
(1102, -1.44811),
(1103, -1.38087),
(1104, -1.18572),
(1105, -1.17761),
(1106, -1.19576),
(1107, -1.0579),
(1108, -1.24583),
(1109, -0.933585),
(1110, -1.14405),
(1111, -0.675208),
(1112, -0.711902),
(1113, -0.680164),
(1114, -0.6373),
(1115, -0.536196),
(1116, -0.445248),
(1117, -0.438949),
(1118, -0.312252),
(1119, -0.512707),
(1120, -0.231746),
(1121, -0.123631),
(1122, 0.112736),
(1123, 0.0457196),
(1124, 0.288986),
(1125, 0.0870086),
(1126, 0.220788),
(1127, 0.134591),
(1128, 0.433034),
(1129, 0.531072),
(1130, 0.729113),
(1131, 0.498451),
(1132, 0.75723),
(1133, 0.884601),
(1134, 0.708478),
(1135, 1.00342),
(1136, 0.962815),
(1137, 0.917958),
(1138, 1.03073),
(1139, 0.969365),
(1140, 1.24144),
(1141, 1.19998),
(1142, 1.36529),
(1143, 1.34017),
(1144, 1.27298),
(1145, 1.31031),
(1146, 1.32711),
(1147, 1.43053),
(1148, 1.43882),
(1149, 1.55446),
(1150, 1.46223),
(1151, 1.29898),
(1152, 1.64788),
(1153, 1.44538),
(1154, 1.88111),
(1155, 1.72069),
(1156, 1.6666),
(1157, 1.64733),
(1158, 1.75004),
(1159, 1.66894),
(1160, 1.72081),
(1161, 1.79489),
(1162, 1.85958),
(1163, 1.89423),
(1164, 1.83853),
(1165, 1.80093),
(1166, 1.75934),
(1167, 1.61402),
(1168, 1.72191),
(1169, 1.79466),
(1170, 1.70161),
(1171, 1.62139),
(1172, 1.66392),
(1173, 1.67892),
(1174, 1.68563),
(1175, 1.61206),
(1176, 1.49469),
(1177, 1.6623),
(1178, 1.44685),
(1179, 1.56973),
(1180, 1.55037),
(1181, 1.34015),
(1182, 1.33466),
(1183, 1.45332),
(1184, 1.36032),
(1185, 1.04495),
(1186, 0.959953),
(1187, 1.08063),
(1188, 1.00234),
(1189, 0.998475),
(1190, 0.94887),
(1191, 0.847969),
(1192, 0.620437),
(1193, 0.656811),
(1194, 0.640958),
(1195, 0.436656),
(1196, 0.401804),
(1197, 0.297079),
(1198, 0.373458),
(1199, 0.34981),
(1200, 0.228493),
(1201, 0.145148),
(1202, 0.176871),
(1203, -0.00889522),
(1204, -0.227058),
(1205, -0.17485),
(1206, -0.48674),
(1207, -0.465098),
(1208, -0.64871),
(1209, -0.357168),
(1210, -0.426938),
(1211, -0.29577),
(1212, -0.618366),
(1213, -0.8561),
(1214, -0.9181),
(1215, -0.863382),
(1216, -0.852823),
(1217, -0.885383),
(1218, -0.977445),
(1219, -1.03198),
(1220, -1.18439),
(1221, -1.04852),
(1222, -1.27088),
(1223, -1.41187),
(1224, -1.28821),
(1225, -1.38644),
(1226, -1.34617),
(1227, -1.80806),
(1228, -1.42917),
(1229, -1.54991),
(1230, -1.68394),
(1231, -1.49294),
(1232, -1.70137),
(1233, -1.85152),
(1234, -1.76284),
(1235, -1.75986),
(1236, -1.77689),
(1237, -1.83975),
(1238, -1.86753),
(1239, -1.80056),
(1240, -1.74854),
(1241, -1.60486),
(1242, -1.92396),
(1243, -1.95466),
(1244, -1.73756),
(1245, -1.84645),
(1246, -1.65342),
(1247, -1.64635),
(1248, -1.66392),
(1249, -1.57732),
(1250, -1.73734),
(1251, -1.79202),
(1252, -1.57397),
(1253, -1.66002),
(1254, -1.57445),
(1255, -1.69606),
(1256, -1.64115),
(1257, -1.53613),
(1258, -1.64057),
(1259, -1.64863),
(1260, -1.40608),
(1261, -1.41964),
(1262, -1.22768),
(1263, -1.24449),
(1264, -1.13251),
(1265, -0.950634),
(1266, -1.0247),
(1267, -0.896262),
(1268, -1.07414),
(1269, -1.08075),
(1270, -0.971484),
(1271, -0.865456),
(1272, -0.756414),
(1273, -1.04764),
(1274, -0.630505),
(1275, -0.392886),
(1276, -0.598478),
(1277, -0.390841),
(1278, -0.256844),
(1279, -0.312968),
(1280, -0.36404),
(1281, -0.0399964),
(1282, -0.127607),
(1283, 0.128551),
(1284, 0.170567),
(1285, 0.0686229),
(1286, 0.189763),
(1287, 0.316844),
(1288, 0.171712),
(1289, 0.404214),
(1290, 0.591335),
(1291, 0.216737),
(1292, 0.729922),
(1293, 0.590599),
(1294, 0.915029),
(1295, 0.763179),
(1296, 1.18379),
(1297, 0.779351),
(1298, 0.997181),
(1299, 1.02434),
(1300, 0.998399),
(1301, 1.1844),
(1302, 1.22499),
(1303, 1.17241),
(1304, 1.29262),
(1305, 1.62286),
(1306, 1.58688),
(1307, 1.61179),
(1308, 1.44499),
(1309, 1.3964),
(1310, 1.50815),
(1311, 1.64384),
(1312, 1.67935),
(1313, 1.63159),
(1314, 1.64135),
(1315, 1.85743),
(1316, 1.48627),
(1317, 1.7034),
(1318, 1.77124),
(1319, 1.76948),
(1320, 1.88954),
(1321, 1.77354),
(1322, 1.72326),
(1323, 1.77858),
(1324, 1.87288),
(1325, 1.71154),
(1326, 1.95125),
(1327, 1.87526),
(1328, 1.88613),
(1329, 1.91998),
(1330, 1.73147),
(1331, 1.72374),
(1332, 1.68595),
(1333, 1.66584),
(1334, 1.61027),
(1335, 1.61485),
(1336, 1.54092),
(1337, 1.5524),
(1338, 1.32682),
(1339, 1.44738),
(1340, 1.59074),
(1341, 1.42239),
(1342, 1.27778),
(1343, 1.35682),
(1344, 1.0496),
(1345, 1.1966),
(1346, 1.11361),
(1347, 1.1485),
(1348, 1.06701),
(1349, 0.930356),
(1350, 0.805531),
(1351, 0.781864),
(1352, 0.904264),
(1353, 0.521827),
(1354, 0.602453),
(1355, 0.707874),
(1356, 0.490704),
(1357, 0.127863),
(1358, 0.337536),
(1359, 0.34072),
(1360, 0.190381),
(1361, 0.379368),
(1362, 0.138881),
(1363, 0.100185),
(1364, -0.0732534),
(1365, 0.0214267),
(1366, -0.190601),
(1367, -0.42497),
(1368, -0.365721),
(1369, -0.419102),
(1370, -0.297983),
(1371, -0.469418),
(1372, -0.699241),
(1373, -0.782811),
(1374, -0.852562),
(1375, -0.893438),
(1376, -0.962871),
(1377, -0.919433),
(1378, -1.10404),
(1379, -1.12819),
(1380, -1.18589),
(1381, -1.21048),
(1382, -1.18016),
(1383, -1.33382),
(1384, -1.33972),
(1385, -1.35538),
(1386, -1.28608),
(1387, -1.51136),
(1388, -1.47462),
(1389, -1.61855),
(1390, -1.4297),
(1391, -1.56386),
(1392, -1.39662),
(1393, -1.57725),
(1394, -1.41688),
(1395, -1.68124),
(1396, -1.82811),
(1397, -1.58374),
(1398, -1.70433),
(1399, -1.68629),
(1400, -1.69901),
(1401, -1.57652),
(1402, -1.92839),
(1403, -1.5527),
(1404, -1.74403),
(1405, -1.76116),
(1406, -1.62634),
(1407, -1.67416),
(1408, -1.75116),
(1409, -1.73384),
(1410, -1.81171),
(1411, -1.7526),
(1412, -1.72508),
(1413, -1.7616),
(1414, -1.78552),
(1415, -1.59711),
(1416, -1.50334),
(1417, -1.36877),
(1418, -1.53084),
(1419, -1.23771),
(1420, -1.49236),
(1421, -1.29916),
(1422, -1.51429),
(1423, -1.3822),
(1424, -1.25264),
(1425, -1.05253),
(1426, -0.95121),
(1427, -1.24171),
(1428, -1.09238),
(1429, -1.03621),
(1430, -0.750382),
(1431, -0.729187),
(1432, -0.563761),
(1433, -0.848243),
(1434, -0.672482),
(1435, -0.436255),
(1436, -0.459622),
(1437, -0.422388),
(1438, -0.3344),
(1439, -0.198193),
(1440, -0.442498),
(1441, -0.302988),
(1442, 0.131818),
(1443, 0.142712),
(1444, 0.1621),
(1445, 0.282247),
(1446, 0.238128),
(1447, 0.130632),
(1448, 0.45014),
(1449, 0.223445),
(1450, 0.495225),
(1451, 0.435404),
(1452, 0.698524),
(1453, 0.523048),
(1454, 1.05499),
(1455, 0.830082),
(1456, 0.9607),
(1457, 0.801705),
(1458, 0.928495),
(1459, 1.11333),
(1460, 1.18003),
(1461, 1.19813),
(1462, 1.21556),
(1463, 1.23215),
(1464, 1.47309),
(1465, 1.40442),
(1466, 1.55583),
(1467, 1.62409),
(1468, 1.30375),
(1469, 1.52748),
(1470, 1.56042),
(1471, 1.57173),
(1472, 1.52618),
(1473, 1.72024),
(1474, 1.58455),
(1475, 1.93178),
(1476, 1.84048),
(1477, 1.85073),
(1478, 1.63999),
(1479, 1.78646),
(1480, 1.82017),
(1481, 1.66597),
(1482, 1.68542),
(1483, 1.76704),
(1484, 1.85018),
(1485, 1.84113),
(1486, 1.80825),
(1487, 1.59998),
(1488, 1.65708),
(1489, 1.92042),
(1490, 1.59456),
(1491, 1.80785),
(1492, 1.50569),
(1493, 1.743),
(1494, 1.67026),
(1495, 1.81024),
(1496, 1.69363),
(1497, 1.53043),
(1498, 1.45019),
(1499, 1.51593),
(1500, 1.42451),
(1501, 1.3357),
(1502, 1.35097),
(1503, 1.23109),
(1504, 1.18175),
(1505, 1.26483),
(1506, 1.08306),
(1507, 1.15612),
(1508, 0.90585),
(1509, 0.924363),
(1510, 0.798819),
(1511, 0.857219),
(1512, 0.644268),
(1513, 0.598013),
(1514, 0.620328),
(1515, 0.613045),
(1516, 0.42342),
(1517, 0.249386),
(1518, 0.376501),
(1519, 0.313791),
(1520, 0.349204),
(1521, 0.415121),
(1522, -0.0148021),
(1523, 0.0802777),
(1524, -0.187318),
(1525, -0.156487),
(1526, -0.313244),
(1527, -0.224204),
(1528, -0.324578),
(1529, -0.394402),
(1530, -0.575914),
(1531, -0.407822),
(1532, -0.521235),
(1533, -0.815863),
(1534, -0.824961),
(1535, -1.01153),
(1536, -0.739614),
(1537, -0.638128),
(1538, -1.1995),
(1539, -1.05462),
(1540, -1.37121),
(1541, -1.28627),
(1542, -1.29681),
(1543, -1.05079),
(1544, -1.40601),
(1545, -1.37326),
(1546, -1.21228),
(1547, -1.45165),
(1548, -1.6666),
(1549, -1.64125),
(1550, -1.61836),
(1551, -1.68715),
(1552, -1.41708),
(1553, -1.59104),
(1554, -1.83923),
(1555, -1.64584),
(1556, -1.80618),
(1557, -1.84193),
(1558, -1.82768),
(1559, -1.73742),
(1560, -1.52725),
(1561, -1.7433),
(1562, -1.61081),
(1563, -1.79132),
(1564, -1.97921),
(1565, -2.0058),
(1566, -1.75433),
(1567, -1.65018),
(1568, -1.61191),
(1569, -1.82899),
(1570, -1.64466),
(1571, -1.81393),
(1572, -1.68517),
(1573, -1.49757),
(1574, -1.36838),
(1575, -1.47865),
(1576, -1.69438),
(1577, -1.64543),
(1578, -1.40703),
(1579, -1.35604),
(1580, -1.48737),
(1581, -1.38894),
(1582, -1.35097),
(1583, -1.2629),
(1584, -1.21251),
(1585, -0.977208),
(1586, -1.35911),
(1587, -1.04119),
(1588, -0.994477),
(1589, -0.919854),
(1590, -0.636186),
(1591, -0.787352),
(1592, -0.797138),
(1593, -0.500678),
(1594, -0.493179),
(1595, -0.634639),
(1596, -0.567378),
(1597, -0.585708),
(1598, -0.233189),
(1599, -0.411962),
(1600, -0.182921),
(1601, -0.193069),
(1602, -0.199818),
(1603, 0.11697),
(1604, 0.133103),
(1605, 0.206555),
(1606, 0.21442),
(1607, 0.206475),
(1608, 0.407897),
(1609, 0.545602),
(1610, 0.325106),
(1611, 0.569754),
(1612, 0.415077),
(1613, 0.781823),
(1614, 0.595061),
(1615, 0.777269),
(1616, 0.97978),
(1617, 0.847602),
(1618, 0.94606),
(1619, 1.14766),
(1620, 1.23205),
(1621, 1.0657),
(1622, 1.15052),
(1623, 1.13029),
(1624, 1.27343),
(1625, 1.5109),
(1626, 1.36409),
(1627, 1.377),
(1628, 1.38),
(1629, 1.43981),
(1630, 1.52801),
(1631, 1.52714),
(1632, 1.44396),
(1633, 1.66155),
(1634, 1.42565),
(1635, 1.83732),
(1636, 1.69662),
(1637, 1.77917),
(1638, 1.75398),
(1639, 1.8607),
(1640, 1.61397),
(1641, 1.93479),
(1642, 1.72079),
(1643, 1.84947),
(1644, 1.51726),
(1645, 1.6725),
(1646, 1.67691),
(1647, 1.62663),
(1648, 1.67235),
(1649, 1.88473),
(1650, 1.80099),
(1651, 1.64067),
(1652, 1.57605),
(1653, 1.82999),
(1654, 1.77861),
(1655, 1.67523),
(1656, 1.78157),
(1657, 1.37923),
(1658, 1.61728),
(1659, 1.44276),
(1660, 1.40961),
(1661, 1.37079),
(1662, 1.24218),
(1663, 1.16277),
(1664, 1.11467),
(1665, 1.05109),
(1666, 1.3619),
(1667, 0.908097),
(1668, 1.03454),
(1669, 1.20199),
(1670, 1.0208),
(1671, 0.764648),
(1672, 0.89622),
(1673, 0.568842),
(1674, 0.682746),
(1675, 0.575212),
(1676, 0.578453),
(1677, 0.328287),
(1678, 0.414873),
(1679, 0.354958),
(1680, 0.372148),
(1681, 0.30182),
(1682, 0.0854934),
(1683, 0.0276894),
(1684, 0.0948166),
(1685, -0.0608768),
(1686, -0.269571),
(1687, -0.0776267),
(1688, -0.217167),
(1689, -0.342774),
(1690, -0.394158),
(1691, -0.469309),
(1692, -0.478125),
(1693, -0.470131),
(1694, -0.719019),
(1695, -0.960367),
(1696, -0.894317),
(1697, -0.850748),
(1698, -1.02789),
(1699, -1.02983),
(1700, -1.23378),
(1701, -0.95526),
(1702, -1.18225),
(1703, -1.0732),
(1704, -1.33832),
(1705, -1.40268),
(1706, -1.27968),
(1707, -1.35826),
(1708, -1.47627),
(1709, -1.63445),
(1710, -1.61191),
(1711, -1.71281),
(1712, -1.49782),
(1713, -1.61164),
(1714, -1.67172),
(1715, -1.45402),
(1716, -1.64451),
(1717, -1.58217),
(1718, -1.66332),
(1719, -1.96626),
(1720, -1.75718),
(1721, -1.63393),
(1722, -1.88456),
(1723, -1.87303),
(1724, -1.97458),
(1725, -1.62386),
(1726, -1.77782),
(1727, -1.79988),
(1728, -1.97773),
(1729, -1.81026),
(1730, -1.55206),
(1731, -1.82492),
(1732, -1.6554),
(1733, -1.71932),
(1734, -1.66068),
(1735, -1.67507),
(1736, -1.62629),
(1737, -1.60398),
(1738, -1.57278),
(1739, -1.58874),
(1740, -1.55831),
(1741, -1.37941),
(1742, -1.28834),
(1743, -1.01082),
(1744, -1.37483),
(1745, -1.03002),
(1746, -0.871272),
(1747, -1.03452),
(1748, -1.08168),
(1749, -0.938739),
(1750, -0.914984),
(1751, -0.888821),
(1752, -0.658793),
(1753, -0.749663),
(1754, -0.463616),
(1755, -0.751576),
(1756, -0.546683),
(1757, -0.467921),
(1758, -0.422619),
(1759, -0.325482),
(1760, -0.453338),
(1761, -0.0112769),
(1762, -0.139145),
(1763, -0.144679),
(1764, 0.0873288),
(1765, -0.127648),
(1766, 0.339709),
(1767, 0.313795),
(1768, 0.229768),
(1769, 0.395165),
(1770, 0.296464),
(1771, 0.711039),
(1772, 0.44004),
(1773, 0.777144),
(1774, 0.505662),
(1775, 0.663528),
(1776, 0.831528),
(1777, 0.744766),
(1778, 0.97878),
(1779, 0.879812),
(1780, 1.16965),
(1781, 1.00989),
(1782, 1.30396),
(1783, 1.41855),
(1784, 1.33704),
(1785, 1.29412),
(1786, 1.29463),
(1787, 1.50205),
(1788, 1.17146),
(1789, 1.62826),
(1790, 1.62675),
(1791, 1.58279),
(1792, 1.57547),
(1793, 1.63822),
(1794, 1.6297),
(1795, 1.81803),
(1796, 1.73219),
(1797, 1.63096),
(1798, 1.81545),
(1799, 1.73134),
(1800, 1.91202),
(1801, 1.74314),
(1802, 1.80618),
(1803, 1.83412),
(1804, 1.94197),
(1805, 1.89318),
(1806, 1.72055),
(1807, 1.76604),
(1808, 1.88402),
(1809, 2.0752),
(1810, 1.84528),
(1811, 1.66804),
(1812, 1.8696),
(1813, 1.81147),
(1814, 1.89),
(1815, 1.63312),
(1816, 1.57596),
(1817, 1.59275),
(1818, 1.33529),
(1819, 1.38836),
(1820, 1.56203),
(1821, 1.2558),
(1822, 1.50556),
(1823, 1.54336),
(1824, 1.22677),
(1825, 1.45792),
(1826, 1.09816),
(1827, 0.998499),
(1828, 1.02762),
(1829, 0.785739),
(1830, 1.04804),
(1831, 0.7035),
(1832, 0.854158),
(1833, 0.544805),
(1834, 0.742833),
(1835, 0.659794),
(1836, 0.583328),
(1837, 0.402969),
(1838, 0.385669),
(1839, 0.422832),
(1840, 0.238184),
(1841, 0.326913),
(1842, -0.122831),
(1843, 0.0585699),
(1844, 0.0710217),
(1845, -0.337148),
(1846, -0.220966),
(1847, -0.178883),
(1848, -0.317548),
(1849, -0.443005),
(1850, -0.372068),
(1851, -0.50898),
(1852, -0.504604),
(1853, -0.611496),
(1854, -0.704249),
(1855, -0.680756),
(1856, -0.742108),
(1857, -0.727378),
(1858, -0.972132),
(1859, -0.750629),
(1860, -0.856616),
(1861, -1.1358),
(1862, -1.01842),
(1863, -1.31809),
(1864, -1.32159),
(1865, -1.30808),
(1866, -1.50996),
(1867, -1.27689),
(1868, -1.56973),
(1869, -1.34007),
(1870, -1.62817),
(1871, -1.50297),
(1872, -1.26166),
(1873, -1.81429),
(1874, -1.70667),
(1875, -1.55274),
(1876, -1.82025),
(1877, -1.71295),
(1878, -1.98828),
(1879, -1.77986),
(1880, -1.73247),
(1881, -1.75859),
(1882, -1.7176),
(1883, -1.73869),
(1884, -1.68882),
(1885, -1.52362),
(1886, -1.5136),
(1887, -1.73789),
(1888, -1.62991),
(1889, -1.6893),
(1890, -1.75031),
(1891, -1.78367),
(1892, -1.61154),
(1893, -1.74767),
(1894, -1.62921),
(1895, -1.66863),
(1896, -1.83148),
(1897, -1.67011),
(1898, -1.4823),
(1899, -1.51645),
(1900, -1.5464),
(1901, -1.42944),
(1902, -1.30473),
(1903, -1.40986),
(1904, -1.19247),
(1905, -1.14297),
(1906, -1.19451),
(1907, -1.18482),
(1908, -1.12595),
(1909, -0.837979),
(1910, -1.09813),
(1911, -0.771277),
(1912, -0.967499),
(1913, -1.01807),
(1914, -0.582873),
(1915, -0.713831),
(1916, -0.514211),
(1917, -0.420705),
(1918, -0.236959),
(1919, -0.412976),
(1920, -0.561138),
(1921, -0.29352),
(1922, -0.227825),
(1923, -0.123626),
(1924, 0.06916);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `fecha` date NOT NULL,
  `correo` varchar(50) NOT NULL,
  `grado` varchar(40) DEFAULT NULL,
  `contrasena` varchar(40) NOT NULL,
  `institucion` varchar(40) DEFAULT NULL,
  `administrador` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `fecha`, `correo`, `grado`, `contrasena`, `institucion`, `administrador`) VALUES
(1, 'Jonatan Ali ', 'Medina Molina', '2023-05-18', 'jonatanali1925@gmail.com', 'Posgrado', 'af55f897c71ce941ddcbfe5ad974240e', 'IT Morelia', 1),
(2, 'José Hugo', 'Molina Ayala', '2023-05-03', 'molinaayalajosehugo@gmail.com', 'Posgrado', 'af55f897c71ce941ddcbfe5ad974240e', 'UMSNH', 0),
(3, 'Claudia Susana', 'Molina Ayala', '1979-04-23', 'claudiasusana@gmail.com', 'Bachillerato', 'af55f897c71ce941ddcbfe5ad974240e', 'UMSNH', 0),
(4, 'Argelia Susana', 'Ayala', '1960-10-14', 'argelia@gmail.com', 'Secundaria', 'af55f897c71ce941ddcbfe5ad974240e', 'UMSNH', 0),
(5, 'Darinka ', 'García Juárez', '2023-05-27', 'darinka@gmail.com', 'Posgrado', 'af55f897c71ce941ddcbfe5ad974240e', 'UMSNH', 1),
(9, 'Berenice ', 'Arzate Rueda', '2023-05-17', 'arzate2323@outlook.com', 'Posgrado', 'af55f897c71ce941ddcbfe5ad974240e', 'UMSNH', 0),
(11, 'Alma Gabriela', 'Guevara', '2022-10-18', 'alma@gmail.com', 'Posgrado', 'af55f897c71ce941ddcbfe5ad974240e', 'UMSNH', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1925;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
