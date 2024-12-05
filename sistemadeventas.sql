-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2024 a las 06:10:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemadeventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_almacen`
--

CREATE TABLE `tb_almacen` (
  `id_producto` int(11) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `stock_maximo` int(11) DEFAULT NULL,
  `precio_compra` varchar(255) NOT NULL,
  `precio_venta` varchar(255) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `imagen` text DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_almacen`
--

INSERT INTO `tb_almacen` (`id_producto`, `codigo`, `nombre`, `descripcion`, `stock`, `stock_minimo`, `stock_maximo`, `precio_compra`, `precio_venta`, `fecha_ingreso`, `imagen`, `id_usuario`, `id_categoria`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(5, 'P-00001', 'Arroz Blanco', 'Saco de arroz blanco de 50 kg', 100, 10, 150, '120.50', '145.00', '2024-11-01', NULL, 55, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'P-00003', 'Detergente en Polvo', 'Bolsa de detergente en polvo de 2 kg', 50, 5, 100, '10.80', '15.00', '2024-10-20', NULL, 62, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'P-00004', 'Manzanas Rojas', 'Bolsa de manzanas rojas (5 unidades)', 80, 10, 150, '8.20', '12.00', '2024-11-12', NULL, 51, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'P-00005', 'Papel Higiénico', 'Paquete de papel higiénico de 12 rollos', 150, 15, 200, '25.50', '35.00', '2024-11-08', NULL, 53, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'P-00006', 'Tomates Frescos', 'Caja de tomates frescos (20 kg)', 60, 5, 90, '35.00', '50.00', '2024-11-03', NULL, 54, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'P-00007', 'Galletas de Chocolate', 'Paquete de galletas de chocolate (12 unidades)', 120, 15, 180, '2.50', '4.00', '2024-11-07', NULL, 57, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'P-00008', 'Cerveza Rubia', 'Caja de cerveza rubia (12 botellas)', 40, 5, 80, '45.00', '65.00', '2024-11-01', NULL, 58, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'P-00009', 'Lentejas', 'Saco de lentejas de 25 kg', 90, 10, 150, '55.00', '75.00', '2024-11-10', NULL, 70, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'P-00010', 'Coca-Cola', 'Botella de Coca-Cola de 2.25 litros', 250, 20, 400, '3.50', '6.00', '2024-11-02', NULL, 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'P-00011', 'Jabón Líquido', 'Botella de jabón líquido para manos (500 ml)', 100, 10, 200, '8.00', '12.50', '2024-11-05', NULL, 63, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'P-00012', 'Plátanos Amarillos', 'Racimo de plátanos amarillos (5 kg)', 70, 5, 120, '15.00', '25.00', '2024-11-11', NULL, 59, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'P-00013', 'Azúcar Blanca', 'Saco de azúcar blanca de 50 kg', 110, 10, 180, '110.00', '150.00', '2024-11-04', NULL, 65, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'P-00014', 'Gaseosa Fanta', 'Botella de gaseosa Fanta de 2 litros', 188, 20, 350, '3.40', '5.50', '2024-11-03', NULL, 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'P-00015', 'Champú Anticaspa', 'Botella de champú anticaspa de 400 ml', 50, 5, 90, '20.00', '30.00', '2024-11-06', NULL, 60, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'P-00016', 'Cebollas Moradas', 'Bolsa de cebollas moradas (5 kg)', 80, 10, 120, '20.00', '30.00', '2024-11-02', NULL, 55, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'P-00017', 'Leche Entera', 'Caja de leche entera (12 unidades)', 146, 15, 200, '45.00', '60.00', '2024-11-04', NULL, 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'P-00018', 'Pan de Molde', 'Paquete de pan de molde (500 g)', 100, 10, 150, '8.00', '12.00', '2024-11-06', NULL, 70, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'P-00019', 'Cloro', 'Galón de cloro (4 litros)', 50, 5, 100, '12.50', '18.00', '2024-11-08', NULL, 57, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'P-00020', 'Papas Amarillas', 'Saco de papas amarillas de 50 kg', 60, 5, 100, '35.00', '55.00', '2024-11-07', NULL, 53, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'P-00021', 'Refresco Tang', 'Sobre de refresco Tang (20 g)', 300, 30, 500, '0.80', '1.50', '2024-11-05', NULL, 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'P-00022', 'Galletas María', 'Paquete de galletas María (120 g)', 200, 20, 300, '1.50', '2.50', '2024-11-01', NULL, 54, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'P-00023', 'Cerveza Negra', 'Caja de cerveza negra (12 botellas)', 70, 5, 80, '50.00', '70.00', '2024-11-09', NULL, 58, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'P-00024', 'Frijoles Negros', 'Saco de frijoles negros de 25 kg', 80, 10, 120, '60.00', '85.00', '2024-11-10', NULL, 60, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'P-00025', 'Queso Fresco', 'Bloque de queso fresco (1 kg)', 70, 10, 100, '25.00', '35.00', '2024-11-03', NULL, 61, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'P-00026', 'Shampoo 2 en 1', 'Botella de shampoo 2 en 1 (400 ml)', 60, 5, 100, '15.00', '25.00', '2024-11-07', NULL, 56, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'P-00027', 'Zanahorias', 'Bolsa de zanahorias (5 kg)', 90, 10, 150, '18.00', '28.00', '2024-11-06', NULL, 63, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'P-00028', 'Atún en Lata', 'Lata de atún (170 g)', 120, 15, 200, '5.50', '8.00', '2024-11-04', NULL, 68, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'P-00029', 'Whisky Etiqueta Roja', 'Botella de whisky etiqueta roja (750 ml)', 25, 5, 50, '80.00', '120.00', '2024-11-01', NULL, 65, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'P-00030', 'Harina de Trigo', 'Bolsa de harina de trigo (1 kg)', 200, 20, 350, '2.50', '4.00', '2024-11-02', NULL, 64, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'P-00031', 'Fanta', 'Gaseosa Sabor Naranja', 100, 20, 200, '2', '3', '2024-11-12', '2024-11-19-09-31-18__', 2, 1, '2024-11-19 21:31:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_carrito`
--

CREATE TABLE `tb_carrito` (
  `id_carrito` int(11) NOT NULL,
  `nro_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_carrito`
--

INSERT INTO `tb_carrito` (`id_carrito`, `nro_venta`, `id_producto`, `cantidad`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(36, 1, 21, 4, '2024-11-19 16:04:02', '0000-00-00 00:00:00'),
(38, 3, 18, 4, '2024-11-19 16:21:19', '0000-00-00 00:00:00'),
(39, 4, 18, 5, '2024-11-19 16:37:51', '0000-00-00 00:00:00'),
(42, 6, 33, 5, '2024-11-19 17:45:15', '0000-00-00 00:00:00'),
(43, 7, 18, 5, '2024-11-19 20:26:06', '0000-00-00 00:00:00'),
(44, 5, 18, 3, '2024-11-21 20:00:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categorias`
--

CREATE TABLE `tb_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_categorias`
--

INSERT INTO `tb_categorias` (`id_categoria`, `nombre_categoria`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'BEBIDAS', '2023-01-24 22:25:10', '2024-11-17 15:48:25'),
(2, 'FRUTAS', '2023-01-25 14:39:50', '2023-01-25 15:09:07'),
(3, 'LIMPIEZA', '2023-01-25 14:40:27', '2024-11-17 15:48:46'),
(4, 'HIGIENE', '2023-01-25 14:41:14', '2024-11-17 15:49:02'),
(5, 'VERDURAS', '2023-01-25 14:43:06', '0000-00-00 00:00:00'),
(6, 'SNAKS', '2023-01-25 14:44:51', '2024-11-17 15:49:33'),
(8, 'LICORES', '2023-01-25 17:49:21', '2024-11-17 15:49:44'),
(9, 'GOLOSINAS', '2023-01-25 17:54:06', '2024-11-17 15:50:03'),
(11, 'GRANOS', '2023-01-29 23:01:42', '2024-11-17 15:54:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `dni_cliente` int(7) NOT NULL,
  `celular_cliente` varchar(50) NOT NULL,
  `email_cliente` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`id_cliente`, `nombre_cliente`, `dni_cliente`, `celular_cliente`, `email_cliente`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(5, 'Carlos Ramírez', 94854513, '930171400', 'carlos.ramirez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(6, 'María Torres', 99552086, '963343214', 'maria.torres@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(7, 'Luis Pérez', 34231536, '924305071', 'luis.perez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(8, 'Ana López', 10790524, '935404309', 'ana.lopez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(9, 'Jorge Vega', 47984851, '921308252', 'jorge.vega@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(10, 'Rosa Fernández', 97478330, '982017581', 'rosa.fernandez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(11, 'Pedro Castillo', 72130006, '934651192', 'pedro.castillo@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(12, 'Lucía Morales', 15377410, '972653789', 'lucia.morales@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(13, 'Roberto Chávez', 20750036, '926127959', 'roberto.chavez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(14, 'Elena Guzmán', 81654603, '954501108', 'elena.guzman@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(15, 'Fernando Salazar', 94834016, '919458995', 'fernando.salazar@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(16, 'Patricia Méndez', 83333990, '950585630', 'patricia.mendez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(17, 'Miguel Vargas', 24326147, '933188562', 'miguel.vargas@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(18, 'Claudia Ríos', 61459579, '949069440', 'claudia.rios@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(19, 'Jorge Herrera', 42232633, '942779392', 'jorge.herrera@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(20, 'Carmen Guzmán', 28892388, '928053023', 'carmen.guzman@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(21, 'Daniel Paredes', 76322323, '995487838', 'daniel.paredes@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(22, 'Sofía Vargas', 87416912, '984001327', 'sofia.vargas@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(23, 'Eduardo Cornejo', 45473384, '998729898', 'eduardo.cornejo@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(24, 'Andrea Peña', 42551006, '981594150', 'andrea.pena@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(25, 'Mario Suárez', 14236044, '951711701', 'mario.suarez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(26, 'Cecilia Ramírez', 68795928, '942584998', 'cecilia.ramirez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(27, 'Alberto Díaz', 90805488, '918551424', 'alberto.diaz@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(28, 'Gabriela Torres', 89345251, '988540407', 'gabriela.torres@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(29, 'Nicolás Pérez', 68833614, '984036437', 'nicolas.perez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(30, 'Gloria Salazar', 89466174, '955610142', 'gloria.salazar@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(31, 'Esteban Méndez', 42306017, '970907502', 'esteban.mendez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(32, 'Adriana Chávez', 73341756, '920040815', 'adriana.chavez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(33, 'Francisco López', 61852501, '962116095', 'francisco.lopez@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(34, 'Valeria Vega', 31988972, '954799383', 'valeria.vega@gmail.com', '2024-11-19 20:55:28', '2024-11-19 20:55:28'),
(35, 'Alex', 74032921, '937560066', 'alex@hotmail.com', '2024-11-21 20:00:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_compras`
--

CREATE TABLE `tb_compras` (
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nro_compra` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `comprobante` varchar(255) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `precio_compra` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_compras`
--

INSERT INTO `tb_compras` (`id_compra`, `id_producto`, `nro_compra`, `fecha_compra`, `id_proveedor`, `comprobante`, `id_usuario`, `precio_compra`, `cantidad`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(38, 5, 1, '2024-11-06', 29, '414', 63, '414', 41, '2024-11-19 05:57:16', '2024-11-19 05:57:16'),
(100, 19, 1, '2024-11-19', 17, 'BOLETA', 55, '93', 46, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(101, 24, 2, '2024-11-19', 19, 'FACTURA', 56, '14', 42, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(102, 20, 3, '2024-11-19', 24, 'BOLETA', 55, '158', 25, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(103, 24, 4, '2024-11-19', 20, 'BOLETA', 81, '29', 14, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(104, 21, 5, '2024-11-19', 29, 'FACTURA', 76, '188', 34, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(105, 19, 6, '2024-11-19', 27, 'FACTURA', 54, '100', 26, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(106, 13, 7, '2024-11-19', 23, 'FACTURA', 53, '181', 4, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(107, 17, 8, '2024-11-19', 24, 'BOLETA', 51, '18', 50, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(108, 8, 9, '2024-11-19', 32, 'BOLETA', 90, '26', 46, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(109, 17, 10, '2024-11-19', 15, 'BOLETA', 56, '117', 25, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(110, 18, 11, '2024-11-19', 27, 'BOLETA', 64, '46', 27, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(111, 25, 12, '2024-11-19', 33, 'FACTURA', 53, '130', 48, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(112, 27, 13, '2024-11-19', 31, 'FACTURA', 55, '15', 25, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(113, 26, 14, '2024-11-19', 16, 'BOLETA', 73, '157', 26, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(114, 7, 15, '2024-11-19', 20, 'FACTURA', 82, '190', 10, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(115, 27, 16, '2024-11-19', 18, 'FACTURA', 51, '119', 34, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(116, 18, 17, '2024-11-19', 18, 'FACTURA', 86, '198', 5, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(117, 23, 18, '2024-11-19', 29, 'FACTURA', 52, '169', 12, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(118, 18, 19, '2024-11-19', 14, 'BOLETA', 56, '50', 4, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(119, 13, 20, '2024-11-19', 23, 'FACTURA', 76, '192', 31, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(120, 5, 21, '2024-11-19', 22, 'FACTURA', 69, '53', 31, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(122, 13, 23, '2024-11-19', 33, 'FACTURA', 60, '110', 7, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(123, 7, 24, '2024-11-19', 32, 'BOLETA', 62, '168', 6, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(124, 29, 25, '2024-11-19', 19, 'FACTURA', 65, '161', 23, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(125, 14, 26, '2024-11-19', 15, 'FACTURA', 52, '175', 40, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(126, 11, 27, '2024-11-19', 21, 'BOLETA', 84, '111', 15, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(127, 7, 28, '2024-11-19', 13, 'FACTURA', 89, '57', 25, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(128, 15, 29, '2024-11-19', 21, 'BOLETA', 90, '196', 13, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(129, 10, 30, '2024-11-19', 19, 'BOLETA', 80, '25', 4, '2024-11-19 20:36:17', '2024-11-19 20:36:17'),
(130, 27, 32, '2024-11-12', 14, '55', 2, '12', 30, '2024-11-19 17:56:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedores`
--

CREATE TABLE `tb_proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(255) NOT NULL,
  `celular` varchar(50) NOT NULL,
  `RUC` int(11) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_proveedores`
--

INSERT INTO `tb_proveedores` (`id_proveedor`, `nombre_proveedor`, `celular`, `RUC`, `empresa`, `email`, `direccion`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(13, 'JOSE MENDOZA', '997483835', 321232232, 'LAIVE', 'jose@gmail.com', 'JR José Gálvez 260 P. J. San Gabriel Alto', '2024-11-17 14:49:28', '2024-11-17 15:54:49'),
(14, 'Carlos Ramírez', '915502489', 2147483647, 'Distribuidora Ramírez S.A.', 'carlos.ramirez@distribuidora.com', 'Av. Los Pinos 123, Lima', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(15, 'María Torres', '935406692', 2147483647, 'Comercial Torres S.A.', 'maria.torres@comercialtorres.com', 'Av. Las Flores 567, Arequipa', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(16, 'Luis Pérez', '967924690', 2147483647, 'Abastecedora Pérez S.A.', 'luis.perez@abastecedora.com', 'Av. Primavera 890, Trujillo', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(17, 'Ana López', '977810515', 2147483647, 'Suministros López EIRL', 'ana.lopez@suministroslopez.com', 'Av. América Sur 342, Chiclayo', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(18, 'Juan Vega', '967667326', 2147483647, 'Grupo Vega SAC', 'juan.vega@grupovega.com', 'Av. Grau 456, Piura', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(19, 'Rosa Delgado', '933425664', 2147483647, 'Delgado y Asociados SAC', 'rosa.delgado@delgadoasociados.com', 'Av. Arequipa 1250, Lima', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(20, 'Pedro García', '918974048', 2147483647, 'Servicios García SRL', 'pedro.garcia@serviciosgarcia.com', 'Av. Salaverry 875, Cusco', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(21, 'Lucía Fernández', '997604456', 2147483647, 'Fernández Trading SAC', 'lucia.fernandez@fernandeztrading.com', 'Av. Universitaria 567, Tacna', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(22, 'Roberto Castillo', '925974938', 2147483647, 'Castillo Importaciones SAC', 'roberto.castillo@castilloimport.com', 'Av. Túpac Amaru 234, Huancayo', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(23, 'Elena Morales', '944641107', 2147483647, 'Morales y Cía SAC', 'elena.morales@moralesycia.com', 'Av. Colonial 678, Iquitos', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(24, 'Fernando Salazar', '956834868', 2147483647, 'Salazar Corporación EIRL', 'fernando.salazar@salazarcorp.com', 'Av. Argentina 789, Puno', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(25, 'Patricia Méndez', '932552743', 2147483647, 'Méndez Solutions SRL', 'patricia.mendez@mendezsolutions.com', 'Av. Javier Prado Este 456, Lima', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(26, 'Miguel Chávez', '939861080', 2147483647, 'Chávez Distribuciones SAC', 'miguel.chavez@chavezdistribuciones.com', 'Av. Ejército 123, Arequipa', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(27, 'Claudia Ríos', '995549778', 2147483647, 'Ríos Abastecimientos EIRL', 'claudia.rios@riosabastecimientos.com', 'Av. Angamos 765, Trujillo', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(28, 'Jorge Herrera', '951348138', 2147483647, 'Herrera Comercio SAC', 'jorge.herrera@herreracomercio.com', 'Av. San Martín 876, Huánuco', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(29, 'Carmen Guzmán', '944627000', 2147483647, 'Guzmán Import SAC', 'carmen.guzman@guzmanimport.com', 'Av. Dos de Mayo 234, Cusco', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(30, 'Daniel Paredes', '958641970', 2147483647, 'Paredes Group EIRL', 'daniel.paredes@paredesgroup.com', 'Av. Tomás Valle 675, Tacna', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(31, 'Sofía Vargas', '999753653', 2147483647, 'Vargas & Cía SAC', 'sofia.vargas@vargascia.com', 'Av. Guardia Civil 567, Piura', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(32, 'Eduardo Cornejo', '959347165', 2147483647, 'Cornejo Distribuciones SAC', 'eduardo.cornejo@cornejodistribuciones.com', 'Av. Larco 345, Lima', '2024-11-19 04:41:06', '2024-11-19 04:41:06'),
(33, 'Andrea Peña', '943063914', 2147483647, 'Peña Solutions SRL', 'andrea.pena@penasolutions.com', 'Av. Sáenz Peña 890, Arequipa', '2024-11-19 04:41:06', '2024-11-19 04:41:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_roles`
--

INSERT INTO `tb_roles` (`id_rol`, `rol`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'ADMINISTRADOR', '2023-01-23 23:15:19', '2023-01-23 23:15:19'),
(3, 'VENDEDOR', '2023-01-23 19:11:28', '2023-01-23 20:13:35'),
(4, 'CONTADOR', '2023-01-23 21:09:54', '0000-00-00 00:00:00'),
(5, 'ALMACEN', '2023-01-24 08:28:24', '2024-11-21 19:54:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_user` text NOT NULL,
  `token` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nombres`, `email`, `password_user`, `token`, `id_rol`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(2, 'Jhonatan Giampiere', 'jhonatan@hotmail.com', '$2y$10$Bp.7QXGo98.GtYEA4C38mesjUsuC.bC4V30RWJfgeKrstKXJEFa2m', '', 1, '2024-11-11 03:53:58', '2024-11-19 20:11:47'),
(3, 'Walter Jave', 'walter123@gmail.com', '$2y$10$tPc3AkRhJT/l6tAhWky2VeUYQh.gNda2.jugll9SfipXcPfKhoO6y', '', 1, '2024-11-17 15:47:30', '0000-00-00 00:00:00'),
(4, 'Jesus Espinoza', 'jesus@gmail.com', '$2y$10$RWBlVGJmDEyW0QIIIjzhA..HHYpW5Hwv34BYuLUTElej/KEzq7WsK', '', 3, '2024-11-17 15:47:50', '2024-11-17 22:47:50'),
(6, 'Alejandra', 'alejandra123@gmail.com', '$2y$10$kQvLEKK8y4mQ3Ke0rMygJerIYsSEIbTymWgDbMYGIyYbv8cHVNRj6', '', 4, '2024-11-17 22:52:23', '0000-00-00 00:00:00'),
(8, 'Katherine', 'katherine@gmail.com', '$2y$10$0P1RKlABC8Jl3iy23WV4leBNGy4MSDp12pBCYVsf0259wB8MOJuZi', '', 4, '2024-11-17 23:49:03', '0000-00-00 00:00:00'),
(9, 'Leonardo ', 'leonardo123@gmail.com', '$2y$10$fXj1npOj3Wbzt4T5GQqIquUP8H8h/rtgJUtBbiJXetgtPbiJTdpmK', '', 4, '2024-11-17 23:51:42', '0000-00-00 00:00:00'),
(10, 'Santiado', 'santi@gmail.com', '$2y$10$8UwJY8PNMlfAxqFJ90d1JuRYgTAy7kVFFL3cniK1OTOb2DYHbEpWm', '', 3, '2024-11-17 23:52:20', '0000-00-00 00:00:00'),
(51, 'Carlos Perez', 'carlos1@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Ana Gomez', 'ana2@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Luis Torres', 'luis3@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Maria Lopez', 'maria4@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Fernando Ruiz', 'fernando5@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Carmen Castillo', 'carmen6@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Jose Garcia', 'jose7@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Patricia Salazar', 'patricia8@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Ricardo Vargas', 'ricardo9@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Lorena Mendoza', 'lorena10@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Daniel Chavez', 'daniel11@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Carolina Rojas', 'carolina12@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Andres Medina', 'andres13@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Isabel Paredes', 'isabel14@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Oscar Luna', 'oscar15@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Gloria Ramos', 'gloria16@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Rafael Gutierrez', 'rafael17@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Silvia Navarro', 'silvia18@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Julian Escobar', 'julian19@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Angela Morales', 'angela20@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Pablo Rojas', 'pablo21@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Monica Fuentes', 'monica22@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Diego Campos', 'diego23@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Clara Herrera', 'clara24@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Alberto Silva', 'alberto25@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Elena Soto', 'elena26@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Victor Delgado', 'victor27@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Sofia Ortega', 'sofia28@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Miguel Cabrera', 'miguel29@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Paula Valdez', 'paula30@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Francisco Leon', 'francisco31@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Emilia Diaz', 'emilia32@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Hugo Benitez', 'hugo33@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Sandra Ortiz', 'sandra34@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Felipe Miranda', 'felipe35@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Natalia Vargas', 'natalia36@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Arturo Ponce', 'arturo37@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Carla Aguirre', 'carla38@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Roberto Diaz', 'roberto39@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Vanessa Flores', 'vanessa40@gmail.com', '$2y$10$9Ty15KyRPM4baYPexnEDVuE9X54UOdfJCg10cfm4RlZZCqL8bV0JW', '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ventas`
--

CREATE TABLE `tb_ventas` (
  `id_venta` int(11) NOT NULL,
  `nro_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total_pagado` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_ventas`
--

INSERT INTO `tb_ventas` (`id_venta`, `nro_venta`, `id_cliente`, `total_pagado`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(13, 1, 8, 240, '2024-11-19 16:04:31', '0000-00-00 00:00:00'),
(15, 3, 8, 22, '2024-11-19 16:21:28', '0000-00-00 00:00:00'),
(16, 4, 8, 28, '2024-11-19 16:38:00', '0000-00-00 00:00:00'),
(18, 6, 19, 600, '2024-11-19 17:46:35', '0000-00-00 00:00:00'),
(19, 5, 35, 17, '2024-11-21 20:01:03', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_almacen`
--
ALTER TABLE `tb_almacen`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `id_venta` (`nro_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `nro_venta` (`nro_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_almacen`
--
ALTER TABLE `tb_almacen`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `tb_compras`
--
ALTER TABLE `tb_compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_almacen`
--
ALTER TABLE `tb_almacen`
  ADD CONSTRAINT `tb_almacen_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_almacen_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  ADD CONSTRAINT `tb_carrito_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `tb_almacen` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD CONSTRAINT `tb_compras_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tb_almacen` (`id_producto`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_compras_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_compras_ibfk_4` FOREIGN KEY (`id_proveedor`) REFERENCES `tb_proveedores` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tb_roles` (`id_rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  ADD CONSTRAINT `tb_ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_ventas_ibfk_2` FOREIGN KEY (`nro_venta`) REFERENCES `tb_carrito` (`nro_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
