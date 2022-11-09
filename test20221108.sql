-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2022 a las 02:56:56
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test20221108`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000001_create_users_table', 1),
(2, '0000_00_00_000002_create_failed_jobs_table', 1),
(3, '0000_00_00_000003_create_products_table', 1),
(4, '0000_00_00_000004_create_sales_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `amount`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'Odio fugiat voluptatum ut voluptatibus. Voluptatem in autem rerum similique ullam. Officia excepturi doloremque dignissimos quis et. Asperiores asperiores in quasi corrupti. Aut sunt debitis placeat necessitatibus velit.', 6, 45, 1, '2022-11-09 07:06:17', '2022-11-09 07:06:17'),
(2, 'Product 2', 'Numquam ipsam libero quas quos praesentium facere. Nostrum unde sapiente delectus et autem. Est est dolor veniam ea. Dolores tempora dolores et illum velit.', 5, 8, 1, '2022-11-09 07:06:17', '2022-11-09 07:06:17'),
(3, 'Product 3', 'Ut id ratione odit. Et sint quos rerum velit. Et ipsum odit officiis aut. Est accusamus quis voluptatem dolorem perferendis quae facilis. Odio minus quibusdam dolor.', 5, 85, 1, '2022-11-09 07:06:17', '2022-11-09 07:06:17'),
(4, 'Product 4', 'Voluptate perspiciatis cumque quod amet. Sint rerum est qui et ut non officia. Soluta et reiciendis dicta eius quia voluptatum a.', 8, 64, 1, '2022-11-09 07:06:17', '2022-11-09 07:06:17'),
(5, 'Product 5', 'Laudantium possimus rerum sunt debitis nobis unde. Et fuga veniam et ullam sequi. Dolor est aut quia veritatis quae.', 4, 68, 1, '2022-11-09 07:06:17', '2022-11-09 07:06:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` double NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `quantity`, `cost`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 13, 104, 4, 4, '2022-11-09 07:11:54', '2022-11-09 07:11:54'),
(2, 12, 96, 5, 4, '2022-11-09 07:11:54', '2022-11-09 07:11:54'),
(3, 2, 10, 4, 2, '2022-11-09 07:11:54', '2022-11-09 07:11:54'),
(4, 37, 222, 4, 1, '2022-11-09 07:11:54', '2022-11-09 07:11:54'),
(5, 23, 184, 4, 4, '2022-11-09 07:11:54', '2022-11-09 07:11:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ashleigh Treutel', 'Frami', 'ihettinger@example.com', '1-775-300-7019 x83841', 1, '2022-11-09 07:00:06', '2022-11-09 07:00:06'),
(2, 'Yasmin Medhurst', 'Hill', 'langworth.maia@example.com', '(951) 481-3585', 1, '2022-11-09 07:00:06', '2022-11-09 07:00:06'),
(3, 'Lamont Turcotte', 'Mills', 'nienow.amani@example.org', '350.283.1568', 1, '2022-11-09 07:00:06', '2022-11-09 07:00:06'),
(4, 'Michale Deckow', 'Simonis', 'vhegmann@example.net', '+1.971.563.1813', 1, '2022-11-09 07:00:06', '2022-11-09 07:00:06'),
(5, 'Juwan Ebert', 'Stoltenberg', 'zlittel@example.com', '931-664-8529', 1, '2022-11-09 07:00:06', '2022-11-09 07:00:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
