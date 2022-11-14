Create database tiendaVirtual;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 09-11-2022 a las 08:37:23
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaVirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE tiendaVirtual.categorias (
  `codigo` int(8) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO tiendaVirtual.categorias (`codigo`, `nombre`, `descripcion`) VALUES
(1, 'Curb & Gutter', '11-660 - Observatory Equipment'),
(2, 'Structural and Misc Steel (Fabrication)', '2-362 - Termite Control'),
(3, 'RF Shielding', '15-900 - HVAC Instruments and Controls'),
(4, 'Waterproofing & Caulking', '2-250 - Shoring and Underpinning'),
(5, 'Wall Protection', '11-070 - Instrumental Equipment'),
(6, 'Granite Surfaces', '2-822 - Ornamental Metal Fences and Gates'),
(7, 'Glass & Glazing', '1-700 - Execution Requirements'),
(8, 'Masonry', '11-060 - Theater and Stage Equipment'),
(9, 'Hard Tile & Stone', '13-100 - Lightning Protection'),
(10, 'Marlite Panels (FED)', '13-280 - Hazardous Material Remediation'),
(11, 'Rebar & Wire Mesh Install', '2-870 - Sculpture/Ornamental'),
(12, 'Masonry', '13-230 - Digester Covers and Appurtenances'),
(13, 'Doors, Frames & Hardware', '2-625 - Retaining Wall Drainage Piping'),
(14, 'Masonry & Precast', '12-100 - Art'),
(15, 'Plumbing & Medical Gas', '10-750 - Telephone Specialties'),
(16, 'Elevator', '13-200 - Storage Tanks'),
(17, 'HVAC', '2-822 - Ornamental Metal Fences and Gates'),
(18, 'Temp Fencing, Decorative Fencing and Gates', '1-515 - Temporary Lighting'),
(19, 'Soft Flooring and Base', '1-011 - Project Engineer'),
(20, 'Sitework & Site Utilities', '5-300 - Metal Deck'),
(21, 'Doors, Frames & Hardware', '2-813 - Lawn Sprinkling and Irrigation'),
(22, 'Sitework & Site Utilities', '10 - Specialties'),
(23, 'Soft Flooring and Base', '1-014 - Project Executive'),
(24, 'Electrical', '13-600 - Solar and Wind Energy Equipment'),
(25, 'Framing (Steel)', '2-924 - Sodding'),
(26, 'Structural & Misc Steel Erection', '3-000 - General'),
(27, 'EIFS', '2-930 - Exterior Plants'),
(28, 'Prefabricated Aluminum Metal Canopies', '16-400 - Low-Voltage Distribution'),
(29, 'Electrical', '13-165 - Aquatic Park Facilities'),
(30, 'Granite Surfaces', '4-200 - Masonry Units'),
(31, 'Waterproofing & Caulking', '13-170 - Tubs and Pools'),
(32, 'Drywall & Acoustical (MOB)', '2-800 - Site Amenities'),
(33, 'Retaining Wall and Brick Pavers', '13-020 - Building Modules'),
(34, 'Fire Protection', '10-500 - Lockers'),
(35, 'Termite Control', '12-800 - Interior Plants and Planters'),
(36, 'Drilled Shafts', '10-340 - Manufactured Exterior Specialties'),
(37, 'Elevator', '2-870 - Sculpture/Ornamental'),
(38, 'Marlite Panels (FED)', '6 - Wood and Plastics'),
(39, 'Masonry & Precast', '3-320 - Slab Foundations'),
(40, 'Drywall & Acoustical (FED)', '9 - Finishes'),
(41, 'Exterior Signage', '14-800 - Scaffolding'),
(42, 'Rebar & Wire Mesh Install', '1-640 - Owner Furnished Products'),
(43, 'Soft Flooring and Base', '10-820 - Bathroom Accessories'),
(44, 'Retaining Wall and Brick Pavers', '13-010 - Air-Supported Structures'),
(45, 'Masonry', '13-010 - Air-Supported Structures'),
(46, 'Electrical and Fire Alarm', '10-290 - Pest Control'),
(47, 'Overhead Doors', '13-190 - Site-Constructed Incinerators'),
(48, 'Fire Sprinkler System', '7-050 - Basic Thermal and Moisture Protection Materials and Methods'),
(49, 'Retaining Wall and Brick Pavers', '15-200 - Process Piping'),
(50, 'Roofing (Metal)', '7-800 - Fire and Smoke Protection'),
(51, 'Hard Tile & Stone', '10-250 - Service Walls'),
(52, 'Asphalt Paving', '11-900 - Exhibit Equipment'),
(53, 'Casework', '5-100 - Structural Metals'),
(54, 'Elevator', '1-700 - Execution Requirements'),
(55, 'Sitework & Site Utilities', '11-480 - Athletic, Recreational, and Therapeutic Equipment'),
(56, 'Curb & Gutter', '1-903 - Hazardous Materials Abatement'),
(57, 'Glass & Glazing', '15-800 - Air Distribution'),
(58, 'Fire Protection', '10-260 - Wall and Corner Guards'),
(59, 'Plumbing & Medical Gas', '2-260 - Excavation Support and Protection'),
(60, 'Structural and Misc Steel (Fabrication)', '10-600 - Partitions'),
(61, 'Soft Flooring and Base', '13-900 - Fire Suppression'),
(62, 'Ornamental Railings', '10-150 - Compartments and Cubicles'),
(63, 'Hard Tile & Stone', '13-170 - Tubs and Pools'),
(64, 'Construction Clean and Final Clean', '16-800 - Sound and Video'),
(65, 'RF Shielding', '13-020 - Building Modules'),
(66, 'Drywall & Acoustical (MOB)', '11-010 - Maintenance Equipment'),
(67, 'Construction Clean and Final Clean', '12-050 - Fabrics'),
(68, 'Waterproofing & Caulking', '15-500 - Heat-Generation Equipment'),
(69, 'Wall Protection', '13-010 - Air-Supported Structures'),
(70, 'Doors, Frames & Hardware', '4-200 - Masonry Units'),
(71, 'Fire Protection', '13-850 - Detection and Alarm'),
(72, 'Drywall & Acoustical (FED)', '8 - Doors and Windows'),
(73, 'Roofing (Asphalt)', '1-520 - Construction Facilities'),
(74, 'Curb & Gutter', '16-400 - Low-Voltage Distribution'),
(75, 'Soft Flooring and Base', '3-210 - Cast-In-Place Concrete'),
(76, 'Wall Protection', '14-400 - Lifts'),
(77, 'Curb & Gutter', '11-300 - Fluid Waste Treatment and Disposal Equipment'),
(78, 'Framing (Wood)', '3-350 - Concrete Finishing'),
(79, 'Marlite Panels (FED)', '16-700 - Communications'),
(80, 'Roofing (Metal)', '9-300 - Tile'),
(81, 'Marlite Panels (FED)', '9-900 - Paints and Coatings'),
(82, 'Curb & Gutter', '9 - Finishes'),
(83, 'Waterproofing & Caulking', '15-100 - Plumbing'),
(84, 'Drywall & Acoustical (FED)', '2-316 - Backfilling'),
(85, 'Waterproofing & Caulking', '2-317 - Select Borrow'),
(86, 'Elevator', '15-200 - Process Piping'),
(87, 'Ornamental Railings', '1-011 - Project Engineer'),
(88, 'EIFS', '2-932 - PLants and Bulbs'),
(89, 'Prefabricated Aluminum Metal Canopies', '2-812 - Drip Irrigation'),
(90, 'Masonry', '2 - Site Construction'),
(91, 'Painting & Vinyl Wall Covering', '2-821 - Chain Link Fences'),
(92, 'Structural and Misc Steel (Fabrication)', '9-500 - Ceilings'),
(93, 'Structural & Misc Steel Erection', '10-150 - Compartments and Cubicles'),
(94, 'Marlite Panels (FED)', '10-250 - Service Walls'),
(95, 'Drywall & Acoustical (MOB)', '1-013 - Project Coordinator'),
(96, 'Asphalt Paving', '10 - Specialties'),
(97, 'Framing (Steel)', '7 - Thermal and Moisture Protection'),
(98, 'Temp Fencing, Decorative Fencing and Gates', '10-820 - Bathroom Accessories'),
(99, 'Structural & Misc Steel Erection', '12-800 - Interior Plants and Planters'),
(100, 'Overhead Doors', '2-900 - Landscaping');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Compra`
--

CREATE TABLE tiendaVirtual.Compra (
  `cantidad` int(10) NOT NULL,
  `precio` int(10) NOT NULL,
  `fechaCompra` date NOT NULL,
  `nombreUsuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `idMaterial` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE tiendaVirtual.materiales (
  `codigo` int(8) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cod_categoria` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO tiendaVirtual.materiales (`codigo`, `nombre`, `descripcion`, `precio`, `cod_categoria`) VALUES
(0, 'Compactor', 'Roofing (Metal)', '5953.49', 49),
(2, 'Compactor', 'Curb & Gutter', '32607.85', 62),
(3, 'Grader', 'Ornamental Railings', '10577.70', 57),
(4, 'Dump Truck', 'Wall Protection', '41977.19', 65),
(5, 'Dragline', 'Granite Surfaces', '2994.77', 59),
(6, 'Dump Truck', 'Temp Fencing, Decorative Fencing and Gates', '36423.97', 100),
(7, 'Dump Truck', 'Roofing (Asphalt)', '44678.30', 70),
(8, 'Dump Truck', 'Retaining Wall and Brick Pavers', '30593.32', 36),
(9, 'Excavator', 'Electrical and Fire Alarm', '11606.04', 31),
(16, 'Excavator', 'Soft Flooring and Base', '5766.59', 74),
(18, 'Grader', 'Roofing (Asphalt)', '44063.76', 7),
(32, 'Dump Truck', 'Roofing (Asphalt)', '29454.25', 57),
(36, 'Grader', 'Site Furnishings', '48335.90', 91),
(42, 'Grader', 'Fire Sprinkler System', '7452.53', 83),
(45, 'Scraper', 'Elevator', '39693.41', 46),
(52, 'Compactor', 'Marlite Panels (FED)', '24215.03', 47),
(53, 'Scraper', 'Doors, Frames & Hardware', '7861.12', 34),
(55, 'Excavator', 'RF Shielding', '26621.76', 55),
(59, 'Scraper', 'Rebar & Wire Mesh Install', '32698.95', 21),
(61, 'Dump Truck', 'EIFS', '28818.38', 21),
(65, 'Excavator', 'Electrical and Fire Alarm', '20198.98', 10),
(69, 'Compactor', 'Retaining Wall and Brick Pavers', '3500.69', 10),
(84, 'Scraper', 'Electrical', '29559.90', 14),
(91, 'Backhoe', 'Site Furnishings', '34627.73', 58),
(94, 'Backhoe', 'Termite Control', '43988.14', 81),
(97, 'Trencher', 'Doors, Frames & Hardware', '15941.73', 57),
(98, 'Skid-Steer', 'Sitework & Site Utilities', '41778.80', 40),
(122, 'Grader', 'Plumbing & Medical Gas', '33361.33', 71),
(143, 'Dump Truck', 'Termite Control', '20427.14', 78),
(165, 'Skid-Steer', 'Casework', '26079.46', 27),
(261, 'Trencher', 'Landscaping & Irrigation', '11104.51', 16),
(366, 'Dump Truck', 'Ornamental Railings', '46108.95', 22),
(388, 'Scraper', 'Electrical and Fire Alarm', '25523.83', 34),
(389, 'Skid-Steer', 'Epoxy Flooring', '45327.97', 38),
(431, 'Crawler', 'Glass & Glazing', '26530.66', 53),
(465, 'Crawler', 'Overhead Doors', '9374.16', 47),
(480, 'Dump Truck', 'Fire Protection', '47729.87', 10),
(498, 'Scraper', 'Site Furnishings', '30906.17', 83),
(526, 'Dump Truck', 'Epoxy Flooring', '366.75', 55),
(527, 'Crawler', 'Masonry & Precast', '35646.46', 63),
(535, 'Scraper', 'Marlite Panels (FED)', '37749.94', 67),
(730, 'Scraper', 'Drywall & Acoustical (MOB)', '18182.68', 9),
(752, 'Excavator', 'Granite Surfaces', '18242.18', 54),
(791, 'Skid-Steer', 'Temp Fencing, Decorative Fencing and Gates', '28581.88', 83),
(812, 'Excavator', 'Landscaping & Irrigation', '14971.77', 60),
(832, 'Trencher', 'Marlite Panels (FED)', '6032.28', 62),
(872, 'Trencher', 'Masonry & Precast', '10583.23', 92),
(874, 'Skid-Steer', 'Masonry', '26589.86', 77),
(878, 'Excavator', 'EIFS', '34165.82', 81),
(888, 'Compactor', 'Fire Sprinkler System', '13715.67', 30),
(901, 'Crawler', 'Rebar & Wire Mesh Install', '15742.82', 74),
(989, 'Bulldozer', 'Asphalt Paving', '37821.82', 27),
(1186, 'Grader', 'Granite Surfaces', '46027.06', 92),
(1336, 'Bulldozer', 'Overhead Doors', '15068.83', 75),
(1473, 'Scraper', 'Temp Fencing, Decorative Fencing and Gates', '19505.04', 60),
(1755, 'Excavator', 'Soft Flooring and Base', '39575.05', 10),
(2345, 'Bulldozer', 'Hard Tile & Stone', '4169.80', 39),
(2934, 'Crawler', 'RF Shielding', '5760.93', 18),
(3231, 'Dump Truck', 'Construction Clean and Final Clean', '11442.04', 64),
(3241, 'Trencher', 'Wall Protection', '18636.15', 11),
(3862, 'Compactor', 'Construction Clean and Final Clean', '31146.50', 99),
(5601, 'Crawler', 'Soft Flooring and Base', '43873.50', 35),
(5906, 'Crawler', 'Electrical and Fire Alarm', '36082.41', 25),
(5998, 'Dragline', 'Landscaping & Irrigation', '35930.04', 2),
(6208, 'Backhoe', 'Soft Flooring and Base', '41007.07', 30),
(6270, 'Dragline', 'Plumbing & Medical Gas', '15398.65', 5),
(6639, 'Excavator', 'Drilled Shafts', '16615.40', 38),
(6702, 'Bulldozer', 'Asphalt Paving', '45203.07', 90),
(6709, 'Bulldozer', 'Rebar & Wire Mesh Install', '2975.00', 3),
(7091, 'Trencher', 'Elevator', '17112.00', 61),
(7633, 'Backhoe', 'Fire Protection', '37424.66', 36),
(8418, 'Crawler', 'Glass & Glazing', '6859.22', 17),
(8837, 'Scraper', 'Drilled Shafts', '21080.77', 16),
(9009, 'Bulldozer', 'Fire Sprinkler System', '3633.48', 38),
(9021, 'Dragline', 'Masonry & Precast', '32172.06', 8),
(9446, 'Scraper', 'Temp Fencing, Decorative Fencing and Gates', '31110.60', 57),
(9507, 'Dump Truck', 'Doors, Frames & Hardware', '11083.91', 84),
(9523, 'Dump Truck', 'Prefabricated Aluminum Metal Canopies', '8184.14', 37),
(10690, 'Crawler', 'Roofing (Metal)', '34898.20', 8),
(13315, 'Backhoe', 'Electrical and Fire Alarm', '45388.35', 53),
(14412, 'Dump Truck', 'Marlite Panels (FED)', '23308.78', 21),
(23500, 'Scraper', 'Soft Flooring and Base', '25151.98', 80),
(28142, 'Compactor', 'Elevator', '41315.17', 93),
(30390, 'Backhoe', 'Structural and Misc Steel (Fabrication)', '15567.86', 91),
(37606, 'Grader', 'Temp Fencing, Decorative Fencing and Gates', '36220.13', 52),
(45116, 'Skid-Steer', 'Plumbing & Medical Gas', '27875.33', 7),
(50359, 'Backhoe', 'Plumbing & Medical Gas', '2525.39', 30),
(53630, 'Dragline', 'Soft Flooring and Base', '30485.15', 74),
(54654, 'Backhoe', 'Masonry & Precast', '6784.83', 76),
(56085, 'Compactor', 'Retaining Wall and Brick Pavers', '42661.14', 80),
(68250, 'Dump Truck', 'Overhead Doors', '305.81', 24),
(69693, 'Compactor', 'Termite Control', '44664.97', 77),
(78248, 'Compactor', 'Wall Protection', '18824.67', 21),
(78768, 'Dragline', 'Glass & Glazing', '24553.76', 31),
(88090, 'Crawler', 'Roofing (Asphalt)', '33256.25', 36),
(88533, 'Compactor', 'Curb & Gutter', '27004.73', 29),
(93790, 'Bulldozer', 'Overhead Doors', '19543.66', 22),
(93912, 'Backhoe', 'Drywall & Acoustical (FED)', '41537.90', 61),
(97506, 'Dump Truck', 'Framing (Steel)', '18680.47', 64);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE tiendaVirtual.Usuarios (
  `usuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `genero` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


INSERT INTO tiendaVirtual.Usuarios (`usuario`, `password`, `admin`, `nombre`, `fechaNacimiento`, `genero`) VALUES ('Antonio', MD5('Gonzalez'), '1', 'Luke', '2003-01-21', 'Hombre');
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE tiendaVirtual.categorias
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `Compra`
--
ALTER TABLE tiendaVirtual.Compra
  ADD PRIMARY KEY (`idMaterial`,`nombreUsuario`) USING BTREE,
  ADD UNIQUE KEY `nombreUsuario` (`nombreUsuario`),
  ADD UNIQUE KEY `idCategoria` (`idMaterial`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE tiendaVirtual.materiales
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `cod_categoria` (`cod_categoria`) USING BTREE;

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE tiendaVirtual.Usuarios
  ADD PRIMARY KEY (`usuario`),
  ADD KEY `usuario` (`usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Compra`
--
ALTER TABLE tiendaVirtual.Compra
  ADD CONSTRAINT `Compra_ibfk_1` FOREIGN KEY (`nombreUsuario`) REFERENCES `Usuarios` (`usuario`),
  ADD CONSTRAINT `Compra_ibfk_2` FOREIGN KEY (`idMaterial`) REFERENCES `materiales` (`codigo`);

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE tiendaVirtual.materiales
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`cod_categoria`) REFERENCES `categorias` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

create user 'Gonzalez'@'%' identified by 'Antonio';
grant all privileges on tiendaVirtual.* to 'Gonzalez'@'%';