-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2024 a las 22:06:20
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
-- Base de datos: `documentoinnclod`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doc_documentos`
--

CREATE TABLE `doc_documentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doc_id_tipo` bigint(20) UNSIGNED NOT NULL,
  `doc_id_proceso` bigint(20) UNSIGNED NOT NULL,
  `doc_nombre` varchar(60) NOT NULL,
  `doc_codigo` varchar(255) NOT NULL,
  `doc_contenido` varchar(4000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doc_documentos`
--

INSERT INTO `doc_documentos` (`id`, `doc_id_tipo`, `doc_id_proceso`, `doc_nombre`, `doc_codigo`, `doc_contenido`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Documento 1', 'CONST-ANL-8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non dictum est, non vehicula augue. Nullam elementum leo eu ullamcorper ultrices. Suspendisse at lectus vitae sapien fermentum euismod sit amet non nunc. Proin volutpat rutrum imperdiet. Fusce leo nunc, cursus id fringilla commodo, sollicitudin at purus. Maecenas consequat eu enim sit amet aliquam. Quisque ut nibh in sem ultricies imperdiet. Mauris vitae nisl egestas, vehicula magna sed, aliquet lectus. Maecenas finibus luctus eros ut efficitur. Vivamus malesuada risus in metus maximus laoreet. Curabitur id tincidunt lectus, sit amet pretium sem. Nunc maximus porta est vitae fermentum. Suspendisse id scelerisque ex, lobortis ullamcorper sem. Curabitur sed odio hendrerit, feugiat dolor non, eleifend ipsum.\n\nSed gravida lacus neque, ac suscipit ipsum vestibulum eget. Integer lobortis molestie ante et egestas. Fusce lacinia in ipsum at aliquet. Mauris fringilla est augue, ut euismod eros rutrum at. Suspendisse eget nunc ante. Maecenas et lectus dolor. Suspendisse lacus ligula, consequat in tortor at, pharetra molestie purus. Donec ut ante mauris. Etiam eget est non diam viverra maximus. Sed nec purus neque. Suspendisse bibendum viverra efficitur.\n\nProin in convallis erat, non bibendum odio. Nulla gravida quam sit amet libero vulputate gravida. Maecenas sagittis risus eu nulla porta feugiat. Vestibulum vitae malesuada urna. Phasellus luctus purus a odio gravida scelerisque. Nam finibus est ut est ultrices, eu fringilla risus ornare. Nam lorem libero, dapibus in accumsan non, sodales ut purus. Sed consequat elementum semper. Aliquam erat volutpat. Proin porttitor a augue at mollis. Proin ullamcorper, risus convallis suscipit aliquet, neque felis tristique diam, ut condimentum lectus tellus nec nisl. Suspendisse rhoncus ac ante eu suscipit. Duis tristique convallis turpis eu pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nSed et purus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sapien dolor, efficitur id ornare in, facilisis pharetra turpis. Pellentesque vitae varius ante, tincidunt congue turpis. Etiam sodales eros sit amet nisl egestas, et vestibulum mi pharetra. Donec mattis magna suscipit libero tempus bibendum. Donec iaculis sem nec turpis vehicula, nec lacinia felis sollicitudin. Ut id velit eget nulla posuere condimentum at id dolor. Fusce ut hendrerit purus.\n\nSuspendisse eu dictum nunc. Morbi blandit sed nisi ut vehicula. Mauris ex libero, molestie non tincidunt suscipit, efficitur nec nunc. Phasellus eu egestas elit. Curabitur ut augue elementum, malesuada nisi quis, venenatis ipsum. Suspendisse fermentum orci a arcu luctus feugiat. Nunc maximus felis ac ullamcorper venenatis. In lectus libero, pharetra quis consequat nec, dapibus ac massa. Aliquam accumsan efficitur diam, sed pharetra ligula volutpat eu. Aliquam venenatis lectus et turpis posuere, non varius elit sodales. Aliquam tristique, tellus sit amet fringilla egestas, dui massa ultricies arcu, a suscipit risus tellus quis nisi. In tempus turpis in rutrum bibendum. Sed tincidunt congue metus. Mauris quis nulla in odio mollis fermentum. Suspendisse luctus nunc sed erat iaculis posuere. Nunc purus odio, malesuada euismod turpis in, consequat interdum sapien.\n\nAenean sagittis condimentum elementum. Maecenas pellentesque ultricies tincidunt. Pellentesque rutrum posuere mollis. Maecenas sed nulla nisi. Duis convallis ligula ac ex gravida tincidunt. Maecenas tortor turpis, euismod eu est ut, hendrerit facilisis justo. Nam sit amet congue urna. Integer tincidunt libero hendrerit eros bibendum, eu vestibulum diam mattis. Nunc maximus augue sed quam pulvinar, blandit bibendum erat ultrices. Suspendisse vestibulum blandit auctor.\n\nPraesent quis luctus sapien. In hac habitasse platea dictumst. Duis finibus felis in convallis faucibus. Orci varius natoque penatibus et magnis dis parturient mont', '2024-05-22 00:31:45', '2024-05-22 00:55:58'),
(2, 2, 1, 'Documento 2', 'CONST-ANL-2', 'Documento 2', '2024-05-22 00:34:20', '2024-05-22 00:34:20'),
(5, 2, 1, 'Documento 5', 'CONST-ANL-5', 'Documento 5', '2024-05-22 00:35:15', '2024-05-22 00:35:22'),
(7, 1, 2, 'Documento 1', 'CON-ARQ-1', 'Documento 1', '2024-05-22 00:37:08', '2024-05-22 00:37:08'),
(8, 1, 2, 'Documento 2', 'CON-ARQ-2', 'Documento 2', '2024-05-22 00:37:27', '2024-05-22 00:37:27'),
(9, 1, 4, 'Documento 1', 'CON-ING-1', 'Documento 1', '2024-05-22 00:38:33', '2024-05-22 00:38:40'),
(10, 2, 1, 'Documento 7', 'CONST-ANL-7', 'Documento 7', '2024-05-22 00:39:25', '2024-05-22 00:39:49'),
(11, 5, 5, 'Documento 1', 'CERT-ABG-1', 'Documento 1', '2024-05-22 00:51:20', '2024-05-22 00:51:20'),
(12, 3, 3, 'Certificado', 'IDNT-COORD-1', 'Certificado', '2024-05-22 00:51:41', '2024-05-22 00:51:41'),
(13, 1, 3, 'Contrato', 'CON-COORD-1', 'Contrato', '2024-05-22 00:52:09', '2024-05-22 00:52:09'),
(14, 2, 1, 'Const analista', 'CONST-ANL-6', 'Const analista', '2024-05-22 00:52:50', '2024-05-22 00:52:50'),
(15, 1, 2, 'Contrato', 'CON-ARQ-3', 'Contrato', '2024-05-22 00:53:30', '2024-05-22 00:54:09'),
(16, 1, 5, 'Contrato', 'CON-ABG-1', 'Constancia', '2024-05-22 00:54:43', '2024-05-22 00:54:58'),
(17, 1, 5, 'Constancia', 'CON-ABG-2', 'Constancia', '2024-05-22 00:55:13', '2024-05-22 00:55:13'),
(18, 1, 3, 'Contrato', 'CON-COORD-2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non dictum est, non vehicula augue. Nullam elementum leo eu ullamcorper ultrices. Suspendisse at lectus vitae sapien fermentum euismod sit amet non nunc. Proin volutpat rutrum imperdiet. Fusce leo nunc, cursus id fringilla commodo, sollicitudin at purus. Maecenas consequat eu enim sit amet aliquam. Quisque ut nibh in sem ultricies imperdiet. Mauris vitae nisl egestas, vehicula magna sed, aliquet lectus. Maecenas finibus luctus eros ut efficitur. Vivamus malesuada risus in metus maximus laoreet. Curabitur id tincidunt lectus, sit amet pretium sem. Nunc maximus porta est vitae fermentum. Suspendisse id scelerisque ex, lobortis ullamcorper sem. Curabitur sed odio hendrerit, feugiat dolor non, eleifend ipsum.\n\nSed gravida lacus neque, ac suscipit ipsum vestibulum eget. Integer lobortis molestie ante et egestas. Fusce lacinia in ipsum at aliquet. Mauris fringilla est augue, ut euismod eros rutrum at. Suspendisse eget nunc ante. Maecenas et lectus dolor. Suspendisse lacus ligula, consequat in tortor at, pharetra molestie purus. Donec ut ante mauris. Etiam eget est non diam viverra maximus. Sed nec purus neque. Suspendisse bibendum viverra efficitur.\n\nProin in convallis erat, non bibendum odio. Nulla gravida quam sit amet libero vulputate gravida. Maecenas sagittis risus eu nulla porta feugiat. Vestibulum vitae malesuada urna. Phasellus luctus purus a odio gravida scelerisque. Nam finibus est ut est ultrices, eu fringilla risus ornare. Nam lorem libero, dapibus in accumsan non, sodales ut purus. Sed consequat elementum semper. Aliquam erat volutpat. Proin porttitor a augue at mollis. Proin ullamcorper, risus convallis suscipit aliquet, neque felis tristique diam, ut condimentum lectus tellus nec nisl. Suspendisse rhoncus ac ante eu suscipit. Duis tristique convallis turpis eu pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nSed et purus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sapien dolor, efficitur id ornare in, facilisis pharetra turpis. Pellentesque vitae varius ante, tincidunt congue turpis. Etiam sodales eros sit amet nisl egestas, et vestibulum mi pharetra. Donec mattis magna suscipit libero tempus bibendum. Donec iaculis sem nec turpis vehicula, nec lacinia felis sollicitudin. Ut id velit eget nulla posuere condimentum at id dolor. Fusce ut hendrerit purus.\n\nSuspendisse eu dictum nunc. Morbi blandit sed nisi ut vehicula. Mauris ex libero, molestie non tincidunt suscipit, efficitur nec nunc. Phasellus eu egestas elit. Curabitur ut augue elementum, malesuada nisi quis, venenatis ipsum. Suspendisse fermentum orci a arcu luctus feugiat. Nunc maximus felis ac ullamcorper venenatis. In lectus libero, pharetra quis consequat nec, dapibus ac massa. Aliquam accumsan efficitur diam, sed pharetra ligula volutpat eu. Aliquam venenatis lectus et turpis posuere, non varius elit sodales. Aliquam tristique, tellus sit amet fringilla egestas, dui massa ultricies arcu, a suscipit risus tellus quis nisi. In tempus turpis in rutrum bibendum. Sed tincidunt congue metus. Mauris quis nulla in odio mollis fermentum. Suspendisse luctus nunc sed erat iaculis posuere. Nunc purus odio, malesuada euismod turpis in, consequat interdum sapien.\n\nAenean sagittis condimentum elementum. Maecenas pellentesque ultricies tincidunt. Pellentesque rutrum posuere mollis. Maecenas sed nulla nisi. Duis convallis ligula ac ex gravida tincidunt. Maecenas tortor turpis, euismod eu est ut, hendrerit facilisis justo. Nam sit amet congue urna. Integer tincidunt libero hendrerit eros bibendum, eu vestibulum diam mattis. Nunc maximus augue sed quam pulvinar, blandit bibendum erat ultrices. Suspendisse vestibulum blandit auctor.\n\nPraesent quis luctus sapien. In hac habitasse platea dictumst. Duis finibus felis in convallis faucibus. Orci varius natoque penatibus et magnis dis parturient mont', '2024-05-22 00:56:36', '2024-05-22 00:56:36'),
(19, 4, 1, 'Informe', 'INF-ANL-1', 'Informe', '2024-05-22 00:57:36', '2024-05-22 00:57:36'),
(20, 4, 4, 'Informe', 'INF-ING-1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non dictum est, non vehicula augue. Nullam elementum leo eu ullamcorper ultrices. Suspendisse at lectus vitae sapien fermentum euismod sit amet non nunc. Proin volutpat rutrum imperdiet. Fusce leo nunc, cursus id fringilla commodo, sollicitudin at purus. Maecenas consequat eu enim sit amet aliquam. Quisque ut nibh in sem ultricies imperdiet. Mauris vitae nisl egestas, vehicula magna sed, aliquet lectus. Maecenas finibus luctus eros ut efficitur. Vivamus malesuada risus in metus maximus laoreet. Curabitur id tincidunt lectus, sit amet pretium sem. Nunc maximus porta est vitae fermentum. Suspendisse id scelerisque ex, lobortis ullamcorper sem. Curabitur sed odio hendrerit, feugiat dolor non, eleifend ipsum.\n\nSed gravida lacus neque, ac suscipit ipsum vestibulum eget. Integer lobortis molestie ante et egestas. Fusce lacinia in ipsum at aliquet. Mauris fringilla est augue, ut euismod eros rutrum at. Suspendisse eget nunc ante. Maecenas et lectus dolor. Suspendisse lacus ligula, consequat in tortor at, pharetra molestie purus. Donec ut ante mauris. Etiam eget est non diam viverra maximus. Sed nec purus neque. Suspendisse bibendum viverra efficitur.\n\nProin in convallis erat, non bibendum odio. Nulla gravida quam sit amet libero vulputate gravida. Maecenas sagittis risus eu nulla porta feugiat. Vestibulum vitae malesuada urna. Phasellus luctus purus a odio gravida scelerisque. Nam finibus est ut est ultrices, eu fringilla risus ornare. Nam lorem libero, dapibus in accumsan non, sodales ut purus. Sed consequat elementum semper. Aliquam erat volutpat. Proin porttitor a augue at mollis. Proin ullamcorper, risus convallis suscipit aliquet, neque felis tristique diam, ut condimentum lectus tellus nec nisl. Suspendisse rhoncus ac ante eu suscipit. Duis tristique convallis turpis eu pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nSed et purus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sapien dolor, efficitur id ornare in, facilisis pharetra turpis. Pellentesque vitae varius ante, tincidunt congue turpis. Etiam sodales eros sit amet nisl egestas, et vestibulum mi pharetra. Donec mattis magna suscipit libero tempus bibendum. Donec iaculis sem nec turpis vehicula, nec lacinia felis sollicitudin. Ut id velit eget nulla posuere condimentum at id dolor. Fusce ut hendrerit purus.\n\nSuspendisse eu dictum nunc. Morbi blandit sed nisi ut vehicula. Mauris ex libero, molestie non tincidunt suscipit, efficitur nec nunc. Phasellus eu egestas elit. Curabitur ut augue elementum, malesuada nisi quis, venenatis ipsum. Suspendisse fermentum orci a arcu luctus feugiat. Nunc maximus felis ac ullamcorper venenatis. In lectus libero, pharetra quis consequat nec, dapibus ac massa. Aliquam accumsan efficitur diam, sed pharetra ligula volutpat eu. Aliquam venenatis lectus et turpis posuere, non varius elit sodales. Aliquam tristique, tellus sit amet fringilla egestas, dui massa ultricies arcu, a suscipit risus tellus quis nisi. In tempus turpis in rutrum bibendum. Sed tincidunt congue metus. Mauris quis nulla in odio mollis fermentum. Suspendisse luctus nunc sed erat iaculis posuere. Nunc purus odio, malesuada euismod turpis in, consequat interdum sapien.\n\nAenean sagittis condimentum elementum. Maecenas pellentesque ultricies tincidunt. Pellentesque rutrum posuere mollis. Maecenas sed nulla nisi. Duis convallis ligula ac ex gravida tincidunt. Maecenas tortor turpis, euismod eu est ut, hendrerit facilisis justo. Nam sit amet congue urna. Integer tincidunt libero hendrerit eros bibendum, eu vestibulum diam mattis. Nunc maximus augue sed quam pulvinar, blandit bibendum erat ultrices. Suspendisse vestibulum blandit auctor.\n\nPraesent quis luctus sapien. In hac habitasse platea dictumst. Duis finibus felis in convallis faucibus. Orci varius natoque penatibus et magnis dis parturient mont', '2024-05-22 00:57:56', '2024-05-22 00:57:56'),
(21, 2, 1, 'Constancia', 'CONST-ANL-9', 'Constancia', '2024-05-22 00:58:53', '2024-05-22 00:58:53'),
(22, 4, 1, 'Analista informe', 'INF-ANL-2', 'Analista informe', '2024-05-22 00:59:44', '2024-05-22 00:59:44'),
(23, 4, 1, 'informe', 'INF-ANL-3', 'informe', '2024-05-22 01:00:20', '2024-05-22 01:00:20'),
(24, 4, 1, 'Informe', 'INF-ANL-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non dictum est, non vehicula augue. Nullam elementum leo eu ullamcorper ultrices. Suspendisse at lectus vitae sapien fermentum euismod sit amet non nunc. Proin volutpat rutrum imperdiet. Fusce leo nunc, cursus id fringilla commodo, sollicitudin at purus. Maecenas consequat eu enim sit amet aliquam. Quisque ut nibh in sem ultricies imperdiet. Mauris vitae nisl egestas, vehicula magna sed, aliquet lectus. Maecenas finibus luctus eros ut efficitur. Vivamus malesuada risus in metus maximus laoreet. Curabitur id tincidunt lectus, sit amet pretium sem. Nunc maximus porta est vitae fermentum. Suspendisse id scelerisque ex, lobortis ullamcorper sem. Curabitur sed odio hendrerit, feugiat dolor non, eleifend ipsum.\n\nSed gravida lacus neque, ac suscipit ipsum vestibulum eget. Integer lobortis molestie ante et egestas. Fusce lacinia in ipsum at aliquet. Mauris fringilla est augue, ut euismod eros rutrum at. Suspendisse eget nunc ante. Maecenas et lectus dolor. Suspendisse lacus ligula, consequat in tortor at, pharetra molestie purus. Donec ut ante mauris. Etiam eget est non diam viverra maximus. Sed nec purus neque. Suspendisse bibendum viverra efficitur.\n\nProin in convallis erat, non bibendum odio. Nulla gravida quam sit amet libero vulputate gravida. Maecenas sagittis risus eu nulla porta feugiat. Vestibulum vitae malesuada urna. Phasellus luctus purus a odio gravida scelerisque. Nam finibus est ut est ultrices, eu fringilla risus ornare. Nam lorem libero, dapibus in accumsan non, sodales ut purus. Sed consequat elementum semper. Aliquam erat volutpat. Proin porttitor a augue at mollis. Proin ullamcorper, risus convallis suscipit aliquet, neque felis tristique diam, ut condimentum lectus tellus nec nisl. Suspendisse rhoncus ac ante eu suscipit. Duis tristique convallis turpis eu pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nSed et purus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sapien dolor, efficitur id ornare in, facilisis pharetra turpis. Pellentesque vitae varius ante, tincidunt congue turpis. Etiam sodales eros sit amet nisl egestas, et vestibulum mi pharetra. Donec mattis magna suscipit libero tempus bibendum. Donec iaculis sem nec turpis vehicula, nec lacinia felis sollicitudin. Ut id velit eget nulla posuere condimentum at id dolor. Fusce ut hendrerit purus.\n\nSuspendisse eu dictum nunc. Morbi blandit sed nisi ut vehicula. Mauris ex libero, molestie non tincidunt suscipit, efficitur nec nunc. Phasellus eu egestas elit. Curabitur ut augue elementum, malesuada nisi quis, venenatis ipsum. Suspendisse fermentum orci a arcu luctus feugiat. Nunc maximus felis ac ullamcorper venenatis. In lectus libero, pharetra quis consequat nec, dapibus ac massa. Aliquam accumsan efficitur diam, sed pharetra ligula volutpat eu. Aliquam venenatis lectus et turpis posuere, non varius elit sodales. Aliquam tristique, tellus sit amet fringilla egestas, dui massa ultricies arcu, a suscipit risus tellus quis nisi. In tempus turpis in rutrum bibendum. Sed tincidunt congue metus. Mauris quis nulla in odio mollis fermentum. Suspendisse luctus nunc sed erat iaculis posuere. Nunc purus odio, malesuada euismod turpis in, consequat interdum sapien.\n\nAenean sagittis condimentum elementum. Maecenas pellentesque ultricies tincidunt. Pellentesque rutrum posuere mollis. Maecenas sed nulla nisi. Duis convallis ligula ac ex gravida tincidunt. Maecenas tortor turpis, euismod eu est ut, hendrerit facilisis justo. Nam sit amet congue urna. Integer tincidunt libero hendrerit eros bibendum, eu vestibulum diam mattis. Nunc maximus augue sed quam pulvinar, blandit bibendum erat ultrices. Suspendisse vestibulum blandit auctor.\n\nPraesent quis luctus sapien. In hac habitasse platea dictumst. Duis finibus felis in convallis faucibus. Orci varius natoque penatibus et magnis dis parturient mont', '2024-05-22 01:00:39', '2024-05-22 01:00:39'),
(25, 1, 5, 'Abogado contrato', 'CON-ABG-3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non dictum est, non vehicula augue. Nullam elementum leo eu ullamcorper ultrices. Suspendisse at lectus vitae sapien fermentum euismod sit amet non nunc. Proin volutpat rutrum imperdiet. Fusce leo nunc, cursus id fringilla commodo, sollicitudin at purus. Maecenas consequat eu enim sit amet aliquam. Quisque ut nibh in sem ultricies imperdiet. Mauris vitae nisl egestas, vehicula magna sed, aliquet lectus. Maecenas finibus luctus eros ut efficitur. Vivamus malesuada risus in metus maximus laoreet. Curabitur id tincidunt lectus, sit amet pretium sem. Nunc maximus porta est vitae fermentum. Suspendisse id scelerisque ex, lobortis ullamcorper sem. Curabitur sed odio hendrerit, feugiat dolor non, eleifend ipsum.\n\nSed gravida lacus neque, ac suscipit ipsum vestibulum eget. Integer lobortis molestie ante et egestas. Fusce lacinia in ipsum at aliquet. Mauris fringilla est augue, ut euismod eros rutrum at. Suspendisse eget nunc ante. Maecenas et lectus dolor. Suspendisse lacus ligula, consequat in tortor at, pharetra molestie purus. Donec ut ante mauris. Etiam eget est non diam viverra maximus. Sed nec purus neque. Suspendisse bibendum viverra efficitur.\n\nProin in convallis erat, non bibendum odio. Nulla gravida quam sit amet libero vulputate gravida. Maecenas sagittis risus eu nulla porta feugiat. Vestibulum vitae malesuada urna. Phasellus luctus purus a odio gravida scelerisque. Nam finibus est ut est ultrices, eu fringilla risus ornare. Nam lorem libero, dapibus in accumsan non, sodales ut purus. Sed consequat elementum semper. Aliquam erat volutpat. Proin porttitor a augue at mollis. Proin ullamcorper, risus convallis suscipit aliquet, neque felis tristique diam, ut condimentum lectus tellus nec nisl. Suspendisse rhoncus ac ante eu suscipit. Duis tristique convallis turpis eu pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nSed et purus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sapien dolor, efficitur id ornare in, facilisis pharetra turpis. Pellentesque vitae varius ante, tincidunt congue turpis. Etiam sodales eros sit amet nisl egestas, et vestibulum mi pharetra. Donec mattis magna suscipit libero tempus bibendum. Donec iaculis sem nec turpis vehicula, nec lacinia felis sollicitudin. Ut id velit eget nulla posuere condimentum at id dolor. Fusce ut hendrerit purus.\n\nSuspendisse eu dictum nunc. Morbi blandit sed nisi ut vehicula. Mauris ex libero, molestie non tincidunt suscipit, efficitur nec nunc. Phasellus eu egestas elit. Curabitur ut augue elementum, malesuada nisi quis, venenatis ipsum. Suspendisse fermentum orci a arcu luctus feugiat. Nunc maximus felis ac ullamcorper venenatis. In lectus libero, pharetra quis consequat nec, dapibus ac massa. Aliquam accumsan efficitur diam, sed pharetra ligula volutpat eu. Aliquam venenatis lectus et turpis posuere, non varius elit sodales. Aliquam tristique, tellus sit amet fringilla egestas, dui massa ultricies arcu, a suscipit risus tellus quis nisi. In tempus turpis in rutrum bibendum. Sed tincidunt congue metus. Mauris quis nulla in odio mollis fermentum. Suspendisse luctus nunc sed erat iaculis posuere. Nunc purus odio, malesuada euismod turpis in, consequat interdum sapien.\n\nAenean sagittis condimentum elementum. Maecenas pellentesque ultricies tincidunt. Pellentesque rutrum posuere mollis. Maecenas sed nulla nisi. Duis convallis ligula ac ex gravida tincidunt. Maecenas tortor turpis, euismod eu est ut, hendrerit facilisis justo. Nam sit amet congue urna. Integer tincidunt libero hendrerit eros bibendum, eu vestibulum diam mattis. Nunc maximus augue sed quam pulvinar, blandit bibendum erat ultrices. Suspendisse vestibulum blandit auctor.\n\nPraesent quis luctus sapien. In hac habitasse platea dictumst. Duis finibus felis in convallis faucibus. Orci varius natoque penatibus et magnis dis parturient mont', '2024-05-22 01:01:02', '2024-05-22 01:01:02'),
(26, 2, 5, 'Constancia', 'CONST-ABG-1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non dictum est, non vehicula augue. Nullam elementum leo eu ullamcorper ultrices. Suspendisse at lectus vitae sapien fermentum euismod sit amet non nunc. Proin volutpat rutrum imperdiet. Fusce leo nunc, cursus id fringilla commodo, sollicitudin at purus. Maecenas consequat eu enim sit amet aliquam. Quisque ut nibh in sem ultricies imperdiet. Mauris vitae nisl egestas, vehicula magna sed, aliquet lectus. Maecenas finibus luctus eros ut efficitur. Vivamus malesuada risus in metus maximus laoreet. Curabitur id tincidunt lectus, sit amet pretium sem. Nunc maximus porta est vitae fermentum. Suspendisse id scelerisque ex, lobortis ullamcorper sem. Curabitur sed odio hendrerit, feugiat dolor non, eleifend ipsum.\n\nSed gravida lacus neque, ac suscipit ipsum vestibulum eget. Integer lobortis molestie ante et egestas. Fusce lacinia in ipsum at aliquet. Mauris fringilla est augue, ut euismod eros rutrum at. Suspendisse eget nunc ante. Maecenas et lectus dolor. Suspendisse lacus ligula, consequat in tortor at, pharetra molestie purus. Donec ut ante mauris. Etiam eget est non diam viverra maximus. Sed nec purus neque. Suspendisse bibendum viverra efficitur.\n\nProin in convallis erat, non bibendum odio. Nulla gravida quam sit amet libero vulputate gravida. Maecenas sagittis risus eu nulla porta feugiat. Vestibulum vitae malesuada urna. Phasellus luctus purus a odio gravida scelerisque. Nam finibus est ut est ultrices, eu fringilla risus ornare. Nam lorem libero, dapibus in accumsan non, sodales ut purus. Sed consequat elementum semper. Aliquam erat volutpat. Proin porttitor a augue at mollis. Proin ullamcorper, risus convallis suscipit aliquet, neque felis tristique diam, ut condimentum lectus tellus nec nisl. Suspendisse rhoncus ac ante eu suscipit. Duis tristique convallis turpis eu pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nSed et purus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sapien dolor, efficitur id ornare in, facilisis pharetra turpis. Pellentesque vitae varius ante, tincidunt congue turpis. Etiam sodales eros sit amet nisl egestas, et vestibulum mi pharetra. Donec mattis magna suscipit libero tempus bibendum. Donec iaculis sem nec turpis vehicula, nec lacinia felis sollicitudin. Ut id velit eget nulla posuere condimentum at id dolor. Fusce ut hendrerit purus.\n\nSuspendisse eu dictum nunc. Morbi blandit sed nisi ut vehicula. Mauris ex libero, molestie non tincidunt suscipit, efficitur nec nunc. Phasellus eu egestas elit. Curabitur ut augue elementum, malesuada nisi quis, venenatis ipsum. Suspendisse fermentum orci a arcu luctus feugiat. Nunc maximus felis ac ullamcorper venenatis. In lectus libero, pharetra quis consequat nec, dapibus ac massa. Aliquam accumsan efficitur diam, sed pharetra ligula volutpat eu. Aliquam venenatis lectus et turpis posuere, non varius elit sodales. Aliquam tristique, tellus sit amet fringilla egestas, dui massa ultricies arcu, a suscipit risus tellus quis nisi. In tempus turpis in rutrum bibendum. Sed tincidunt congue metus. Mauris quis nulla in odio mollis fermentum. Suspendisse luctus nunc sed erat iaculis posuere. Nunc purus odio, malesuada euismod turpis in, consequat interdum sapien.\n\nAenean sagittis condimentum elementum. Maecenas pellentesque ultricies tincidunt. Pellentesque rutrum posuere mollis. Maecenas sed nulla nisi. Duis convallis ligula ac ex gravida tincidunt. Maecenas tortor turpis, euismod eu est ut, hendrerit facilisis justo. Nam sit amet congue urna. Integer tincidunt libero hendrerit eros bibendum, eu vestibulum diam mattis. Nunc maximus augue sed quam pulvinar, blandit bibendum erat ultrices. Suspendisse vestibulum blandit auctor.\n\nPraesent quis luctus sapien. In hac habitasse platea dictumst. Duis finibus felis in convallis faucibus. Orci varius natoque penatibus et magnis dis parturient mont', '2024-05-22 01:01:19', '2024-05-22 01:01:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(143, '0001_01_01_000000_create_users_table', 1),
(144, '0001_01_01_000001_create_cache_table', 1),
(145, '0001_01_01_000002_create_jobs_table', 1),
(146, '2024_05_20_021017_create_pro_procesos_table', 1),
(147, '2024_05_20_021032_create_tip_tipo_docs_table', 1),
(148, '2024_05_20_021051_create_doc_documentos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_procesos`
--

CREATE TABLE `pro_procesos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_prefijo` varchar(20) NOT NULL,
  `pro_nombre` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pro_procesos`
--

INSERT INTO `pro_procesos` (`id`, `pro_prefijo`, `pro_nombre`, `created_at`, `updated_at`) VALUES
(1, 'ANL', 'Analista', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(2, 'ARQ', 'Arquitecto', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(3, 'COORD', 'Coordinador', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(4, 'ING', 'Ingeniero', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(5, 'ABG', 'Abogado', '2024-05-22 00:31:08', '2024-05-22 00:31:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UIwDqAHtVqb1C3SCYgc4kDd7KB25T3W2mqE3V5rp', 1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUzdveWg0UVlxV2lpOXZlcTV1ejFCODg4Z29scENwNjNlZTFBM2tiOSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1716321721);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tip_tipo_docs`
--

CREATE TABLE `tip_tipo_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tip_nombre` varchar(60) NOT NULL,
  `tip_prefijo` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tip_tipo_docs`
--

INSERT INTO `tip_tipo_docs` (`id`, `tip_nombre`, `tip_prefijo`, `created_at`, `updated_at`) VALUES
(1, 'Contrato', 'CON', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(2, 'Constancia', 'CONST', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(3, 'Identificacion', 'IDNT', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(4, 'Informe', 'INF', '2024-05-22 00:31:08', '2024-05-22 00:31:08'),
(5, 'Certificaciones', 'CERT', '2024-05-22 00:31:08', '2024-05-22 00:31:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Mose Casper II', 'test@admin.com', '2024-05-22 00:31:08', '$2y$12$3c8rILz6zgRy.jsawglxKu6WijpF/7gUk.RoDicLQijL4d1Ss79rG', 'kcXvkSomro', '2024-05-22 00:31:08', '2024-05-22 00:31:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `doc_documentos`
--
ALTER TABLE `doc_documentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doc_documentos_doc_codigo_unique` (`doc_codigo`),
  ADD KEY `doc_documentos_doc_id_tipo_foreign` (`doc_id_tipo`),
  ADD KEY `doc_documentos_doc_id_proceso_foreign` (`doc_id_proceso`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pro_procesos`
--
ALTER TABLE `pro_procesos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tip_tipo_docs`
--
ALTER TABLE `tip_tipo_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `doc_documentos`
--
ALTER TABLE `doc_documentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `pro_procesos`
--
ALTER TABLE `pro_procesos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tip_tipo_docs`
--
ALTER TABLE `tip_tipo_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `doc_documentos`
--
ALTER TABLE `doc_documentos`
  ADD CONSTRAINT `doc_documentos_doc_id_proceso_foreign` FOREIGN KEY (`doc_id_proceso`) REFERENCES `pro_procesos` (`id`),
  ADD CONSTRAINT `doc_documentos_doc_id_tipo_foreign` FOREIGN KEY (`doc_id_tipo`) REFERENCES `tip_tipo_docs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
