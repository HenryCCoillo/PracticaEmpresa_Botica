-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2023 a las 23:15:28
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `soluciones_botica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
`idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(256) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `unidad_medida` varchar(45) NOT NULL,
  `descripcion_otros` varchar(45) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `afectacion` varchar(20) NOT NULL,
  `stock_salida` int(11) NOT NULL,
  `stock_ingreso` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `id_tipo_venta_articulo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `imagen`, `unidad_medida`, `descripcion_otros`, `condicion`, `afectacion`, `stock_salida`, `stock_ingreso`, `fecha_vencimiento`, `id_tipo_venta_articulo`) VALUES
(1, 5, '', 'IBUPROFENO 100MG/5ML X 60ML JBE', 9, '', '', 'NIU', '', 1, 'Gravado', 1, 10, '2023-04-30', 0),
(2, 5, '', 'ZENTEL 400MG X 50 TAB', 0, 'ALBENDAZOL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 2025),
(3, 5, '', 'ASPIRINA 100 MG X 100 TAB', 10, 'ACIDO ACETIL SALICILICO', '', 'NIU', '', 1, 'Gravado', 0, 10, '0000-00-00', 2023),
(4, 5, '', 'CLOTRIMAZOL CREMA 20 GR', 0, 'CLOTRIMAZOL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 2024),
(5, 5, '', 'BUK SURTIDO X 20 UNID', 20, 'VITAMINAS', '', 'NIU', '', 1, 'Gravado', 0, 20, '0000-00-00', 2025),
(6, 5, '', 'DOLMACAF 1G X 100 UND', 0, 'PARACETAMOL 1G', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 2025),
(7, 5, '', 'DOLMACAF250 MG X 30 UND', 0, 'ACETAZOLAMIDA 250 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(8, 5, '', 'SULFADIAZINA DE PLATA', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(9, 5, '', 'ENTEROGERMINA X 10 AMP/B', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(10, 5, '', 'CLINOTRIN 3 150 MG / ML AMP', 0, 'ACETATO DE MEDROXIPROGESTERONA 150 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(12, 5, '', 'AMBROVAL 250 MG+15 MG/5 ML X 60 ML SUP', 0, 'AMOXICILINA Y AMBROSOL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(13, 5, '', 'AMBROVAL 500 MG + 30 MG X 60 CAP', 0, 'AMOXICILINA Y AMBROSOL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(14, 5, '', 'ZITROFAR 20 MG / 5 ML X 30 ML SUP', 0, 'AZITOMICINA DE 500', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(15, 5, '', 'ZITROFAR 500 MG X 3 TAB', 0, 'AZITROMICINA 500 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(16, 5, '', 'D-ALLERGY 10 MG X 100 CAP', 0, 'CETIRIZINA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(17, 5, '', 'CLOROALERFIN 2 MG / 5 ML X 60 ML JB', 0, 'CLOFENAMINA MALEATO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(18, 5, '', 'NOTIX FORTE X 20 GR', 0, 'CLOTRIMAZOL, GENTAMICINA, BETAMETAZONA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(19, 5, '', 'TOSABAC PLUS 10 MG + 100 MG / 5 ML X 120 ML', 0, 'DEXTROMETORFANO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(20, 5, '', 'CHAO ANTIGRIPAL X100CMP ', 0, 'DEXTROMETORFANO 15 MG, FENILEFRINA 15 MG, CLORFENAMINA DE 2 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(21, 5, '', 'CLINOMIN 150 MG-10 MG X 1 ML AMP', 0, 'DIHIDROXIPROGESTERONA 150 MG ENANTATO DE ESTRADIOL 10 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(22, 5, '', 'MAREVOM 50MG X120TAB', 0, 'DIMENHIDRINATO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(23, 5, '', 'ESOFAST 40 MG X 28', 0, 'ESOMEPRAZOL 40 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(24, 5, '', 'DIFLUXANA 150 MG X 2', 0, 'FLUCONAZOL 50 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(25, 5, '', 'MOVILAX X133ML ', 0, 'FOSFATO MONOBASICO DE SODIO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(26, 5, '', 'FRAMIDEX NF GOTAS X 2.5ML', 15, 'FRAMICETINA 1% + DEXAMETASONA 0,1%', '', 'NIU', '', 1, 'Gravado', 0, 15, '0000-00-00', 0),
(27, 5, '', 'EGO GEL EXTREME PT.X100G ', 0, 'GEL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(28, 5, '', 'EGO GEL ATRACTION PT. 100GR', 0, 'GEL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(29, 5, '', 'ABRILEX 35 MG/5 ML JB', 0, 'HEDERA HELIX', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(30, 5, '', 'LIKFERR HIERRO 100 MG/5ML AMP', 0, 'HIERRO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(31, 5, '', 'BUSCOLIC COMPOSITUM 10 MG + 500 MG X 100 TAB', 0, 'HIOSINA Y PARACETAMOL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(32, 5, '', 'CIUELAX FORTE X100COMP.', 0, 'HOJAS DE CASSIA ANGUSTIFOLIA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(33, 5, '', 'DOLOMIL FORTE 400 MG X 100 TAB ', 0, 'IBUPROFENO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(34, 5, '', 'FLAMALGESICO X60ML SUSP.', 0, 'IBUPROFENO 100 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(35, 5, '', 'LEVOCTRIM F 750 X 7 TAB', 0, 'LEVOFLOXACINO 750', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(36, 5, '', 'DONAFORTE 2 MG X 100 TAB', 0, 'LOPERAMIDA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(37, 5, '', 'MAGNEVAL NARANJA 5 GR X 33 SOBRES', 0, 'MAGNESIO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(38, 5, '', 'MAGNEVAL 2 GR X 34 SOBRES', 0, 'MAGNESIO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(39, 5, '', 'GLUCERLAB X 900 GR', 0, 'MALTODEXTRINA, SUCROMALTOSA, CASEINATO DE CALCIO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(40, 5, '', 'ORAMET 850MG X100TAB.', 0, 'METFORMINA 850 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(41, 5, '', 'DAYAVITAL 100 MG + 40 MG + 40 MG + 400 MG / 5 ML X 120 ML', 0, 'MINERALES', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(42, 5, '', 'P-NAX X 120 TAB', 0, 'NAPROXENO', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(43, 5, '', 'COLUPART 100 MG/5 ML SUP', 0, 'Nitazoxanida', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(44, 5, '', 'F-DOL JB X 120 MG / 5 ML X 60 ML', 0, 'PARACETAMOL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(45, 5, '', 'PADOL 500 MG X 100 TAB', 0, 'PARACETAMOL', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(46, 5, '', 'MIGRALIVIA X100 TAB', 0, 'PARACETAMOL 250 MG, CAFEINA 60MG Y ACIDO ACETILSISTEINA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(47, 5, '', 'PARACETAMOL 500MG X100TAB', 0, 'PARACETAMOL 500MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(48, 5, '', 'VITAPYRENA FORTE X50SOBRES', 0, 'PARACETAMOL 500MG, CLORHIDRATO DE FENILEFRINA 10 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(49, 5, '', 'BLI NISOPLUS 50 MG X 100 TAB', 0, 'PREDNISONA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(50, 5, '', 'GERIAVAL POT ', 0, 'PROTEINA ,MINERALES CARTILAGO DE TIBURON', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(51, 5, '', 'NIKZON X90TAB ', 0, 'RAIZ DE RUSCUS, ACULEATUSC LACTOBACILLUS SPOROGENES', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(52, 5, '', 'FLEXI COLD FORTE UNG X 60GR', 0, 'SALICILATO DE METILO 29 G + MENTOL 7,6 G ', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(53, 5, '', 'HEPALAB-B 150 MG X 100 CAP', 0, 'SILIMARINA  Y COMPLEJO B', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(54, 5, '', 'GASEOFAST FRESA 80 MG / 15 ML GOTAS', 0, 'SIMETICONA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(55, 5, '', 'SALFA+TRIM 800-160 X 100 TAB', 0, 'SULFAMETASONA 800MG + TRIMETROPINA 160 MG', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(56, 5, '', 'FUNGISIL 1 % X 20 GR', 0, 'TERBINAFINA', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(57, 5, '', 'PULMOVAL POT', 0, 'VIT . DEL COMPLEJO DE B ,VIT C Y PROTEINAS', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(58, 5, '', 'COLASIL PREMIUN X 15 GR', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(59, 5, '', 'VITAMIL D FORTE POT', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(60, 5, '', 'GUPILL 1.5 MG X 1 TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(61, 5, '', 'EGO GEL BLACK PT. X100G', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(62, 5, '', 'JABON GLICERINA X90GR SURTIDO', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(63, 5, '', 'NIVEA CREMA X30ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(64, 5, '', 'ACEITE DE COCO COSMETICO X30ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(65, 5, '', 'ALGOHODON X25G ESTERIL', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(66, 5, '', 'AZUFRE EN BARRA CHICO X12UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(67, 5, '', 'AZUFRE EN BARRA X12UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(68, 5, '', 'HISOPO APOOL X12UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(69, 5, '', 'HISOPO TUINIESX2UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(70, 5, '', 'CURITAS CUREBAND ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(71, 5, '', 'NOPUCID 2EN1 SACHETT ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(72, 5, '', ' HENO PRAVA X150GR', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(73, 5, '', 'COLGATE C.R. TRIPLE ACCIÒN X75ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(74, 5, '', 'PINZAS LARGAS X12UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(75, 5, '', 'TUINIES MORDEDOR PERLAS SURT.', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(76, 5, '', 'HILO ORAL B X50MTS', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(77, 5, '', 'COLGATE HILO DENTAL X50MTS', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(78, 5, '', 'REPELENTE FLORESTA SACHETT', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(79, 5, '', 'QUITA ESPAMTE LIMON X70ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(80, 5, '', 'QUITA ESMALTE LIMON X30ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(81, 5, '', 'TINTURA DE ARNICA X30ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(82, 5, '', 'APPLE CHUPON BLISTER CON CADENA ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(83, 5, '', 'CORTA UÑA DELFIN ADULTO X12', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(84, 5, '', 'COLGATE PLAX X500', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(85, 5, '', 'COLGATE PLAX X250ML  ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(86, 5, '', 'ACUAMARINE ALOE X437ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(87, 5, '', 'ACUAMARINE VITAMINA A X437ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(88, 5, '', 'ACUAMARINE VITAMINA E X437ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(89, 5, '', 'CORTA UÑA SET DE BEBE MIMOS', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(90, 5, '', 'ACEITE DE ARGAN OIL X30ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(91, 5, '', 'TUINIES TOALLITAS HUMED. 100UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(92, 5, '', 'NINET TOALLITAS 100 UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(93, 5, '', 'TALCO ISANA PACK X240', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(94, 5, '', 'TALCO ISANA PACK X60G', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(95, 5, '', 'TALCO SPRAIT ISANA ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(96, 5, '', 'REXONA TALCO ANTIBAC X200', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(97, 5, '', 'REXONA TALCO ANTIBAC X60G', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(98, 5, '', 'MOCO DE GORILA X200G PUNK', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(99, 5, '', 'COLADOS HEINZ SURTIDOS X12', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(100, 5, '', 'OXIGENTA OXIFLEX 30VOL X100ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(101, 5, '', 'MENTHOLATUM X5G X24LATAS', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(102, 5, '', 'JOHNSONS SACHET ORIGINAL X12UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(103, 5, '', 'TECOTEX', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(104, 5, '', 'NIVEA SACHET HOMB.BLACK Y WHITE', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(105, 5, '', 'NIVEA SACHET MUJ BLACK Y WHITE', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(106, 5, '', 'FRASCO DE ANALISIS ESTERIL ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(107, 5, '', 'KONZIL SACHETON X24UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(108, 5, '', 'REXONA SACHET HOMB. X18UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(109, 5, '', 'REXONA SACHET MUJ NUTRITIVEX18UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(110, 5, '', 'TIMOLINA X75ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(111, 5, '', 'ALCOHOL MED. 70GD X120ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(112, 5, '', 'AGUA OXIGENADA 10VOL X120ML ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(113, 5, '', 'AGUA DE AZAHAR X120ML ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(114, 5, '', 'PRESTOBARBA SCHICK 3H VERDE X12UND', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(115, 5, '', 'PRESTOBARBA SCHICK HAWAIIANA MUJER ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(116, 5, '', 'FRUTTI PED X 500MLFRESA', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(117, 5, '', 'FRUTTI FLEX FRESA X1000ML ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(118, 5, '', 'JOHNSONS CH. X200ML VARIADO', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(119, 5, '', 'JERINGA X10ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(120, 5, '', 'JERINGA X5ML ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(121, 5, '', 'ESTUCHE JOHNSONSx3', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(122, 5, '', 'ELECTROLAIT X 475ML FRESA', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(123, 5, '', 'AXE COMPAC X90ML VARIADO ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(124, 5, '', 'AXE ESPRAIT VARIADO X150ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(125, 5, '', 'BIBERON TUINIES BYB VIDRIO X8 ONZAS ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(126, 5, '', 'ASPIRADOR NASAL TUINIES SURT.', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(127, 5, '', 'NUTRIVELA 10 SACHET VARIADO X6UND.', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(128, 5, '', 'JABON JOHNSONS BABY X90G VARIADO ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(129, 5, '', 'VINAGRE DE MANZANA DE 500ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(130, 5, '', 'MEGATHON X100 CAPSULAS ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(131, 5, '', 'MEGATHON X30CAP', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(132, 5, '', 'LIMONADA MARKOS FKO X200ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(133, 5, '', 'AMOXICILINA 500MG X100TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(134, 5, '', 'FENAZOPIRIDINA 100MG X100TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(135, 5, '', 'LOSARTAN 50 MG X 100TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(136, 5, '', 'ATORVASTATINA 20MG X100 TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(137, 5, '', 'CIPROFLOXACINO 500MG X100TAB ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(138, 5, '', 'CLORFENAMINA 4MG X100 TAB ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(139, 5, '', 'CETIRIZINA 10MG X100 TAB ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(140, 5, '', 'CLOTIMAZON 1% CREMA 20MG', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(141, 5, '', 'DICLOFENACO 75MG X10AMP', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(142, 5, '', 'DEXAMETAZONA 4MG X100TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(143, 5, '', 'LACTULOSA 3.333G/5ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(144, 5, '', 'OMEPRAZOL X100 CAP', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(145, 5, '', 'PREGABALINA 75MG X30CAP', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(146, 5, '', 'PIEL PRESERVATIVO X24 SENSITIVE ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(147, 5, '', 'PIEL PRESERVATIVO X24 TRIPLE SENSACIÒN ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(148, 5, '', 'ORFENADRINA 60MG X25AMPOLLA ', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(149, 5, '', 'DICLOFENACO GEL 1% 50GR', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(150, 5, '', 'PVM ADULTO SURT. 460GR', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(151, 5, '', 'PVM JUNIOR SURT. 360 GR', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(152, 5, '', 'SHAMPOO JONSON X750/ X200', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(153, 5, '', 'VICK VAPORUB LATA 12G', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(154, 5, '', 'ACEITE JONHSONS BABYX50ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(155, 5, '', 'HIPOGLOS UNG X20GR', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(156, 5, '', 'FLORATIL PED 250MG X 10 SOBRES', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(157, 5, '', 'DUREX JEANS X 3 UNID', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(158, 5, '', 'BUK MENTA BOLSA X 20 BOLC', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(159, 5, '', 'BUK NARANJA BOLSA X 20 BOLC', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(160, 5, '', 'ORFENADRINA 100MG X100 TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(161, 5, '', 'RISPERIDONA 2MG X 20 TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(162, 5, '', 'ALPRAZOLAM 0.5MG X 200 TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(163, 5, '', 'SAL DE ANDREWS X 100 SOBRES', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(164, 5, '', 'MULTIBIOTICO MENTA X 50 SOBRES', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(165, 5, '', 'DEXTROMETORFANO DIEPHAR X 60', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(166, 5, '', 'MANTEQUILLA DE CACAO X 100 UNID', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(167, 5, '', 'PANADOL INFAT/MASTIC X 100 TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(168, 5, '', 'AZITROMICINA X 500MG X 100 TAB', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(169, 5, '', 'LIDOCAINA 5% UNGTO X 10 GR', 12, '', '', 'NIU', '', 1, 'Gravado', 0, 12, '0000-00-00', 0),
(170, 5, '', 'CAPTOPRIL 25MG X 100 TAB', 11, '', '', 'NIU', '', 1, 'Gravado', 0, 11, '0000-00-00', 0),
(171, 5, '', 'PLASTSIDERM X 50 GR', 10, '', '', 'NIU', '', 1, 'Gravado', 0, 10, '0000-00-00', 0),
(172, 5, '', 'VITAMINA E X 50 CAPS', 15, '', '', 'NIU', '', 1, 'Gravado', 0, 15, '0000-00-00', 0),
(173, 5, '', 'RANITIDINA 50MG/2ML AMPOLL', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(174, 5, '', 'AMOXICILINA 250MG X 60 ML JRB', 30, '', '', 'NIU', '', 1, 'Gravado', 0, 30, '0000-00-00', 0),
(175, 5, '', 'PARACETAMOL 120MG/50ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(176, 5, '', 'CLORFENAMINA 2MG X 60ML', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(177, 5, '', 'SUPOSIT DE GLIC ADULT X 100', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(178, 5, '', 'MAGNESOL NARANJA X 33 1GR', 0, '', '', 'NIU', '', 1, 'Gravado', 0, 0, '0000-00-00', 0),
(179, 5, '', 'REDOMAX VIT C 1G X ZINC X 3 TUBOS', 12, '', '', 'NIU', '', 1, 'Gravado', 0, 12, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
`idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'ANAQUEL 1', '', 1),
(2, 'ANAQUEL 2', '', 1),
(3, 'ANAQUEL 3', '', 1),
(4, 'VITRINA', '', 1),
(5, 'ALMACEN', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confidencial`
--

CREATE TABLE IF NOT EXISTS `confidencial` (
`idconfidencial` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `serie` varchar(4) NOT NULL,
  `correlativo` varchar(8) NOT NULL,
  `fecha` datetime NOT NULL,
  `gastos_totales` decimal(11,2) NOT NULL,
  `compras` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE IF NOT EXISTS `cotizacion` (
`idcotizacion` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) NOT NULL,
  `validez` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrollo`
--

CREATE TABLE IF NOT EXISTS `desarrollo` (
`idsoporte` int(15) NOT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `fecha_ingreso` varchar(50) DEFAULT NULL,
  `fecha_salida` varchar(50) DEFAULT NULL,
  `tecnico_respon` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `problema` varchar(100) DEFAULT NULL,
  `solucion` varchar(100) DEFAULT NULL,
  `tipo_equipo` varchar(100) DEFAULT NULL,
  `codigo_soporte` varchar(50) NOT NULL,
  `estado_entrega` varchar(20) NOT NULL,
  `estado_servicio` varchar(20) NOT NULL,
  `estado_pago` varchar(20) NOT NULL,
  `total` int(20) NOT NULL,
  `cuota` int(20) NOT NULL,
  `saldo` int(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `accesorio` varchar(200) NOT NULL,
  `recomendacion` varchar(50) NOT NULL,
  `garantia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE IF NOT EXISTS `detalle_ingreso` (
`iddetalle_ingreso` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `laboratorio` varchar(100) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `lote` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `incentivo` decimal(11,2) NOT NULL,
  `fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`iddetalle_ingreso`, `idingreso`, `idarticulo`, `laboratorio`, `codigo`, `lote`, `cantidad`, `precio_compra`, `precio_venta`, `incentivo`, `fecha_vencimiento`) VALUES
(1, 1, 1, 'DIVAL NATURA', '2', '20702342', 2, '55.00', '65.00', '0.00', '2023-07-31'),
(2, 2, 1, '', '5', '0', 10, '1.00', '11.00', '0.00', '2023-04-30'),
(3, 2, 3, '', '5', '0', 10, '1.00', '11.00', '0.00', '2023-05-06'),
(4, 2, 5, '', '5', '0', 20, '1.00', '111.00', '0.00', '2023-05-30'),
(5, 2, 26, '', '5', '0', 15, '1.00', '11.00', '0.00', '2023-06-30'),
(6, 2, 179, '', '5', '0', 12, '1.00', '11.00', '0.00', '2023-06-30'),
(7, 2, 169, '', '5', '0', 12, '1.00', '11.00', '0.00', '2023-07-19'),
(8, 2, 170, '', '5', '0', 11, '1.00', '11.00', '0.00', '2023-07-19'),
(9, 2, 171, '', '5', '0', 10, '1.00', '11.00', '0.00', '2023-04-30'),
(10, 2, 172, '', '5', '0', 15, '1.00', '11.00', '0.00', '2023-05-20'),
(11, 2, 174, '', '5', '0', 30, '1.00', '10.00', '0.00', '2023-05-31');

--
-- Disparadores `detalle_ingreso`
--
DELIMITER //
CREATE TRIGGER `tr_updtStockIngreso` AFTER INSERT ON `detalle_ingreso`
 FOR EACH ROW BEGIN 
UPDATE articulo SET stock = stock + NEW.cantidad, stock_ingreso=stock_ingreso + NEW.cantidad
WHERE articulo.idarticulo = NEW.idarticulo;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_proforma`
--

CREATE TABLE IF NOT EXISTS `detalle_proforma` (
`iddetalle_proforma` int(11) NOT NULL,
  `idproforma` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE IF NOT EXISTS `detalle_venta` (
`iddetalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  `fecha_mas_vendido` datetime DEFAULT NULL,
  `item` int(11) NOT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`iddetalle_venta`, `idventa`, `idarticulo`, `cantidad`, `precio_venta`, `descuento`, `fecha_mas_vendido`, `item`, `serie`, `estado`) VALUES
(1, 1, 1, 1, '11.00', '0.00', '2023-04-17 16:09:55', 1, '', 'Aceptado');

--
-- Disparadores `detalle_venta`
--
DELIMITER //
CREATE TRIGGER `tr_updtStockVenta` AFTER INSERT ON `detalle_venta`
 FOR EACH ROW BEGIN
	IF(NEW.estado != 'Cancelado' || NEW.estado = null ) THEN
		UPDATE articulo SET stock = stock - NEW.cantidad,
		stock_salida=stock_salida + NEW.cantidad
		WHERE articulo.idarticulo = NEW.idarticulo;
	END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_entrega`
--

CREATE TABLE IF NOT EXISTS `estado_entrega` (
  `cancelado` int(10) NOT NULL,
  `pendiente_entrega` int(10) NOT NULL,
  `sin_servicio` int(10) NOT NULL,
  `por_servicio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pago`
--

CREATE TABLE IF NOT EXISTS `estado_pago` (
  `pendiente_pago` int(11) NOT NULL,
  `pagado_pago` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_servicio`
--

CREATE TABLE IF NOT EXISTS `estado_servicio` (
  `pendiente` int(10) NOT NULL,
  `reparacion` int(10) NOT NULL,
  `terminado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE IF NOT EXISTS `ingreso` (
`idingreso` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `num_cuotas` int(11) DEFAULT NULL,
  `valor_cuota` decimal(11,2) DEFAULT NULL,
  `total_compra` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `num_cuotas`, `valor_cuota`, `total_compra`, `estado`) VALUES
(1, 2, 4, 'Boleta', 'BOO1', '100', '2023-04-07 00:00:00', '0.00', NULL, NULL, '110.00', 'Anulado'),
(2, 7, 2, 'Boleta', 'B001', '00000016', '2023-04-14 00:00:00', '0.00', NULL, NULL, '145.00', 'Aceptado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE IF NOT EXISTS `moneda` (
`idmoneda` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `simbolo` varchar(45) NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `pais_referencia` varchar(100) DEFAULT NULL,
  `num` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`idmoneda`, `descripcion`, `simbolo`, `codigo`, `pais_referencia`, `num`) VALUES
(1, 'Nuevo Sol', 'S/.', 'PEN', 'PERU', '604');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivo_documento`
--

CREATE TABLE IF NOT EXISTS `motivo_documento` (
`idmotivo_documento` int(11) NOT NULL,
  `codigo_motivo` varchar(5) NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `motivo_documento`
--

INSERT INTO `motivo_documento` (`idmotivo_documento`, `codigo_motivo`, `motivo`, `descripcion`) VALUES
(1, '01', 'Anulación de la operación', NULL),
(2, '02', 'Anulación por error en el RUC', NULL),
(3, '03', 'Corrección por error  en la descripcion', NULL),
(4, '04', 'Descuento  global', NULL),
(5, '05', 'Descuento por Item', NULL),
(6, '06', 'Devolución  total', NULL),
(7, '07', 'Devolución parcial', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notacredito`
--

CREATE TABLE IF NOT EXISTS `notacredito` (
`idnota_credito` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  `correccion_descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
`idpago` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `valor_cuota` decimal(10,2) NOT NULL,
  `fecha_pago` datetime NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`idpago`, `idingreso`, `valor_cuota`, `fecha_pago`, `estado`) VALUES
(1, 16, '400.00', '2019-10-16 00:00:00', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
`idperfil` int(11) NOT NULL,
  `razon_social` varchar(200) NOT NULL,
  `nombre_comercial` varchar(100) DEFAULT NULL,
  `ruc` varchar(45) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `distrito` varchar(50) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `ubigeo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idperfil`, `razon_social`, `nombre_comercial`, `ruc`, `direccion`, `distrito`, `provincia`, `departamento`, `codigo_postal`, `telefono`, `email`, `logo`, `pais`, `ubigeo`) VALUES
(1, 'YUNCAR BRAZOVICH ALEXANDRA FIORELLA', 'Botica Señor De La Soledad', '10737995246', 'Mz. C. Lt. 02 AA. HH. Señor De  La  Soledad  Chancay', 'Chancay', 'Huaral', 'Lima', '15131', '978890988', '', 'sijb.png', 'Perú', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
`idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Almacen'),
(3, 'Compras'),
(4, 'Ventas'),
(5, 'Acceso'),
(6, 'Consulta Compras'),
(7, 'Consulta Ventas'),
(8, 'Administracion'),
(9, 'Configuracion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
`idpersona` int(11) NOT NULL,
  `tipo_persona` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `razon_social` varchar(256) DEFAULT NULL,
  `puntos` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `razon_social`, `puntos`) VALUES
(1, 'Cliente', 'JULCA BRONCANO WILDER FLORENTINO', 'RUC', '10410697551', '-', '575757', '', 'JULCA BRONCANO WILDER FLORENTINO', 491),
(2, 'Proveedor', 'asdasd', 'DNI', '99999999', '', '', '', '', 0),
(3, 'Cliente', 'Soluciones Integrales JB SAC', 'RUC', '10410697551', 'Lopez de Zuñiga N°  254', '996720630', 'wilderjulca@solucionesintegralesjb.com', 'Wilder Florenitno Julca Broncano', 11),
(4, 'Cliente', 'JULCA BRONCANO WILDER FLORENTINO', 'RUC', '10410697551', '-', '', '', 'JULCA BRONCANO WILDER FLORENTINO', 6),
(5, 'Cliente', 'Wilder Florentino Julca Broncano', 'DNI', '41069755', 'Calle Luis Alberto De Las Casas', '996720630', 'wilderjulca@solucionesintegralesjb.com', '', 8814),
(6, 'Proveedor', 'Proveedor Test 1', 'DNI', '000000000000', 'Direccion Test 1', '', '', '', 0),
(7, 'Proveedor', 'Proveedor Test 2', 'DNI', '000000000', 'Direccion Test 2', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proforma`
--

CREATE TABLE IF NOT EXISTS `proforma` (
`idproforma` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `correlativo` varchar(10) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `tipo_proforma` varchar(20) NOT NULL,
  `igv_total` decimal(11,2) NOT NULL,
  `total_venta` decimal(9,2) NOT NULL,
  `fecha_hora` date NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proforma`
--

INSERT INTO `proforma` (`idproforma`, `idusuario`, `idcliente`, `correlativo`, `referencia`, `tipo_proforma`, `igv_total`, `total_venta`, `fecha_hora`, `estado`) VALUES
(1, 2, 3, '', '', 'servicios', '0.36', '2.36', '2020-02-04', 'AceptadoP'),
(2, 2, 3, '', '', 'productos', '0.36', '2.36', '2020-02-04', 'AceptadoP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte`
--

CREATE TABLE IF NOT EXISTS `soporte` (
`idsoporte` int(15) NOT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `fecha_ingreso` varchar(50) DEFAULT NULL,
  `fecha_salida` varchar(50) DEFAULT NULL,
  `tecnico_respon` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `problema` varchar(100) DEFAULT NULL,
  `solucion` varchar(100) DEFAULT NULL,
  `tipo_equipo` varchar(100) DEFAULT NULL,
  `codigo_soporte` varchar(50) NOT NULL,
  `estado_entrega` varchar(20) NOT NULL,
  `estado_servicio` varchar(20) NOT NULL,
  `estado_pago` varchar(20) NOT NULL,
  `total` int(20) NOT NULL,
  `cuota` int(20) NOT NULL,
  `saldo` int(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `accesorio` varchar(200) NOT NULL,
  `recomendacion` varchar(50) NOT NULL,
  `garantia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante`
--

CREATE TABLE IF NOT EXISTS `tipo_comprobante` (
  `codigotipo_comprobante` int(11) NOT NULL,
  `descripcion_tipo_comprobante` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_comprobante`
--

INSERT INTO `tipo_comprobante` (`codigotipo_comprobante`, `descripcion_tipo_comprobante`) VALUES
(1, 'Factura'),
(3, 'Boleta de Venta'),
(7, 'Nota de Credito'),
(8, 'Guia de Remisión Remitente'),
(10, 'Cotizacion'),
(11, 'Credito'),
(12, 'Prestamo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE IF NOT EXISTS `tipo_pago` (
`codigotipo_pago` int(11) NOT NULL,
  `descripcion_tipo_pago` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`codigotipo_pago`, `descripcion_tipo_pago`) VALUES
(1, 'Contado'),
(2, 'Credito'),
(3, 'Transferencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_venta_articulo`
--

CREATE TABLE IF NOT EXISTS `tipo_venta_articulo` (
`id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_venta_articulo`
--

INSERT INTO `tipo_venta_articulo` (`id`, `descripcion`, `estado`) VALUES
(1, 'Venta con receta médica', 1),
(2, 'Venta sin receta médica', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE IF NOT EXISTS `transporte` (
`idtansporte` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `direccion_partida` varchar(200) NOT NULL,
  `direccion_llegada` varchar(200) NOT NULL,
  `hora_salida` datetime NOT NULL,
  `hora_llegada` datetime DEFAULT NULL,
  `condicion` varchar(45) DEFAULT NULL,
  `motivo_traslado` varchar(200) DEFAULT NULL,
  `unidad_medida_peso_bruto` varchar(20) DEFAULT NULL,
  `ubigeo_partida` varchar(45) DEFAULT NULL,
  `ubigeo_llegada` varchar(45) DEFAULT NULL,
  `modalidad_traslado` varchar(25) DEFAULT NULL,
  `idguia_remision` int(11) DEFAULT NULL,
  `iddestinatario` int(11) DEFAULT NULL,
  `idarticulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
`id_ubicacion` int(11) NOT NULL,
  `almacen` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_ubicacion`, `almacen`) VALUES
(1, 'Anaquel 1'),
(2, 'Anaquel 2'),
(3, 'Anaquel 3'),
(4, 'Vitrina'),
(5, 'Almacen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `incentivo_total` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`, `incentivo_total`) VALUES
(1, 'Wilder  Julca', 'RUC', '10410697551', 'Calle Luis Alberto De Las Casas Nº 111', '+51996720630', 'wilderjulca@solucionesintegralesjb.com', 'Administrador', 'julca', 'e718fd881c8b55f21268e1ca1b84c092b9a7cbb5c6d5aed0b6c54108244da710', '1681660991.png', 1, NULL),
(8, 'Soluciones Integrales', 'RUC', '10410697551', 'Calle Luis Alberto De Las Casas Nº 111', '+51996720630', 'wilderjulca@solucionesintegralesjb.com', 'Administrador', 'admin', '835d6dc88b708bc646d6db82c853ef4182fabbd4a8de59c213f2b5ab3ae7d9be', '1681665027.png', 1, NULL),
(9, 'Ventas', 'RUC', '10737995246', 'Mz. C. Lt. 02 AA. HH. Señor De  La  Soledad  Chancay', '', '', 'Vendedor', 'ventas', 'ad1f354a6ed47d50d60aecd3aad1ca2c32cf03141efef1ed5f4cace4d9b8df1c', '1681665618.png', 1, NULL),
(10, 'admin1', 'DNI', '123', '', '', '', 'Administrador', 'admin1', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '', 1, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE IF NOT EXISTS `usuario_permiso` (
`idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(288, 1, 1),
(289, 1, 2),
(290, 1, 3),
(291, 1, 4),
(292, 1, 5),
(293, 1, 6),
(294, 1, 7),
(295, 1, 8),
(296, 1, 9),
(318, 5, 1),
(319, 5, 2),
(320, 5, 3),
(321, 5, 4),
(322, 5, 6),
(323, 5, 7),
(330, 9, 1),
(331, 9, 2),
(332, 9, 3),
(333, 9, 4),
(334, 9, 6),
(335, 9, 7),
(336, 8, 1),
(337, 8, 2),
(338, 8, 3),
(339, 8, 4),
(340, 8, 5),
(341, 8, 6),
(342, 8, 7),
(343, 8, 8),
(344, 8, 9),
(345, 10, 1),
(346, 10, 2),
(347, 10, 3),
(348, 10, 4),
(349, 10, 5),
(350, 10, 6),
(351, 10, 7),
(352, 10, 8),
(353, 10, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_cambio`
--

CREATE TABLE IF NOT EXISTS `valor_cambio` (
`idvalor_cambio` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `valor_compra` decimal(4,3) NOT NULL,
  `valor_venta` decimal(4,3) NOT NULL,
  `idmoneda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
`idvehiculo` int(11) NOT NULL,
  `idconductor` int(11) NOT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `observacion` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `soat` varchar(80) DEFAULT NULL,
  `marca` varchar(45) NOT NULL,
  `idempresa_transportista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
`idventa` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `codigotipo_comprobante` int(11) NOT NULL,
  `serie` varchar(4) NOT NULL,
  `correlativo` varchar(8) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `impuesto` decimal(4,2) DEFAULT NULL,
  `op_gravadas` decimal(11,2) DEFAULT NULL,
  `op_inafectas` decimal(11,2) DEFAULT NULL,
  `op_exoneradas` decimal(11,2) DEFAULT NULL,
  `op_gratuitas` decimal(11,2) DEFAULT NULL,
  `isc` decimal(11,2) DEFAULT NULL,
  `total_descuentos` decimal(11,2) NOT NULL,
  `total_igv` decimal(11,2) NOT NULL,
  `total_venta` decimal(11,2) NOT NULL,
  `leyenda` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `idmoneda` int(11) NOT NULL,
  `idmotivo_doc` int(11) DEFAULT NULL,
  `sustento` varchar(200) DEFAULT NULL,
  `doc_relacionado` int(11) DEFAULT NULL,
  `codigotipo_pago` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idcliente`, `idusuario`, `codigotipo_comprobante`, `serie`, `correlativo`, `fecha_hora`, `impuesto`, `op_gravadas`, `op_inafectas`, `op_exoneradas`, `op_gratuitas`, `isc`, `total_descuentos`, `total_igv`, `total_venta`, `leyenda`, `estado`, `idmoneda`, `idmotivo_doc`, `sustento`, `doc_relacionado`, `codigotipo_pago`) VALUES
(1, 3, 10, 3, 'B001', '00000001', '2023-04-17 21:09:55', '18.00', '9.32', '0.00', '0.00', '0.00', '0.00', '0.00', '1.68', '11.00', 'ONCE  Y 00/100 SOLES', 'Aceptado', 1, NULL, NULL, NULL, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
 ADD PRIMARY KEY (`idarticulo`), ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`), ADD KEY `fk_articulo_categoria_idx` (`idcategoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
 ADD PRIMARY KEY (`idcategoria`), ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `confidencial`
--
ALTER TABLE `confidencial`
 ADD PRIMARY KEY (`idconfidencial`), ADD KEY `confidencial_persona_fk` (`idpersona`), ADD KEY `confidencial_usuario_fk` (`idusuario`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
 ADD PRIMARY KEY (`idcotizacion`), ADD KEY `fk_cotizacion_idventa_idx` (`idventa`), ADD KEY `fk_cotizacion_idarticulo_idx` (`idarticulo`);

--
-- Indices de la tabla `desarrollo`
--
ALTER TABLE `desarrollo`
 ADD PRIMARY KEY (`idsoporte`);

--
-- Indices de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
 ADD PRIMARY KEY (`iddetalle_ingreso`), ADD KEY `fk_detalle_ingreso_ingreso_idx` (`idingreso`), ADD KEY `fk_detalle_ingreso_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `detalle_proforma`
--
ALTER TABLE `detalle_proforma`
 ADD PRIMARY KEY (`iddetalle_proforma`), ADD KEY `fk_detalle_proforma_proforma` (`idproforma`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
 ADD PRIMARY KEY (`iddetalle_venta`), ADD KEY `fk_detalle_venta_venta_idx` (`idventa`), ADD KEY `fk_detalle_venta_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
 ADD PRIMARY KEY (`idingreso`), ADD KEY `fk_ingreso_persona_idx` (`idproveedor`), ADD KEY `fk_ingreso_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
 ADD PRIMARY KEY (`idmoneda`);

--
-- Indices de la tabla `motivo_documento`
--
ALTER TABLE `motivo_documento`
 ADD PRIMARY KEY (`idmotivo_documento`);

--
-- Indices de la tabla `notacredito`
--
ALTER TABLE `notacredito`
 ADD PRIMARY KEY (`idnota_credito`), ADD KEY `fk_notaCredito_venta_idx` (`idventa`), ADD KEY `fk_notaCredito_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
 ADD PRIMARY KEY (`idpago`), ADD KEY `FK_pago_ingreso` (`idingreso`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
 ADD PRIMARY KEY (`idperfil`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
 ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
 ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `proforma`
--
ALTER TABLE `proforma`
 ADD PRIMARY KEY (`idproforma`), ADD KEY `fk_proforma_usuario` (`idusuario`), ADD KEY `fk_proforma_persona` (`idcliente`);

--
-- Indices de la tabla `soporte`
--
ALTER TABLE `soporte`
 ADD PRIMARY KEY (`idsoporte`);

--
-- Indices de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
 ADD PRIMARY KEY (`codigotipo_comprobante`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
 ADD PRIMARY KEY (`codigotipo_pago`);

--
-- Indices de la tabla `tipo_venta_articulo`
--
ALTER TABLE `tipo_venta_articulo`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
 ADD PRIMARY KEY (`idtansporte`), ADD KEY `fk_transporte_vehiculo_idx` (`idvehiculo`), ADD KEY `fk_transporte_persona_idx` (`iddestinatario`), ADD KEY `fk_transporte_articulo_idx` (`idarticulo`), ADD KEY `fk_transporte_guia_remision_idx` (`idguia_remision`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
 ADD PRIMARY KEY (`id_ubicacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
 ADD PRIMARY KEY (`idusuario_permiso`), ADD KEY `fk_usuario_permiso_permiso_idx` (`idpermiso`), ADD KEY `fk_usuario_permiso_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `valor_cambio`
--
ALTER TABLE `valor_cambio`
 ADD PRIMARY KEY (`idvalor_cambio`), ADD KEY `fk_valor_cambio_moneda_idx` (`idmoneda`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
 ADD PRIMARY KEY (`idvehiculo`), ADD KEY `fk_idconductor_idx` (`idconductor`), ADD KEY `fk_vehiculo_empresa_transportista_idx` (`idempresa_transportista`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
 ADD PRIMARY KEY (`idventa`), ADD KEY `fk_venta_persona_idx` (`idcliente`), ADD KEY `fk_venta_usuario_idx` (`idusuario`), ADD KEY `fk_venta_codigotipo_comp_idx` (`codigotipo_comprobante`), ADD KEY `fk_venta_moneda_idx` (`idmoneda`), ADD KEY `fk_venta_motivo_idx` (`idmotivo_doc`), ADD KEY `fk_venta_doc_relacionado_idx` (`doc_relacionado`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=180;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `confidencial`
--
ALTER TABLE `confidencial`
MODIFY `idconfidencial` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
MODIFY `idcotizacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `desarrollo`
--
ALTER TABLE `desarrollo`
MODIFY `idsoporte` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
MODIFY `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `detalle_proforma`
--
ALTER TABLE `detalle_proforma`
MODIFY `iddetalle_proforma` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
MODIFY `idmoneda` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `motivo_documento`
--
ALTER TABLE `motivo_documento`
MODIFY `idmotivo_documento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `notacredito`
--
ALTER TABLE `notacredito`
MODIFY `idnota_credito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
MODIFY `idpago` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
MODIFY `idperfil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `proforma`
--
ALTER TABLE `proforma`
MODIFY `idproforma` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `soporte`
--
ALTER TABLE `soporte`
MODIFY `idsoporte` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
MODIFY `codigotipo_pago` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_venta_articulo`
--
ALTER TABLE `tipo_venta_articulo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `transporte`
--
ALTER TABLE `transporte`
MODIFY `idtansporte` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT de la tabla `valor_cambio`
--
ALTER TABLE `valor_cambio`
MODIFY `idvalor_cambio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
MODIFY `idvehiculo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
