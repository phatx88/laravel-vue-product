-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 11:19 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue-product`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_09_024624_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `photoId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `quantity`, `price`, `photoId`, `created_at`, `updated_at`) VALUES
(1, 'Banana', 'Green Banana', 10, 20.00, NULL, '2021-06-09 00:38:12', '2021-06-09 00:40:03'),
(2, 'Apple', 'Red Apple', 9, 20.00, NULL, '2021-06-09 01:03:02', '2021-06-09 01:03:02'),
(3, 'Cranberry', 'Blue Cranberry', 10, 99.00, NULL, '2021-06-09 01:03:21', '2021-06-09 01:03:21'),
(4, 'Beans', 'Grean Beans', 99, 10.00, NULL, '2021-06-09 01:03:39', '2021-06-09 01:03:39'),
(5, 'Turnip', 'Puple Turnip', 20, 99.00, NULL, '2021-06-09 01:03:52', '2021-06-09 01:03:52'),
(7, 'Orange', 'Orage Orage', 40, 23.00, NULL, '2021-06-09 01:06:10', '2021-06-09 01:06:10'),
(8, 'Awesome Plastic Wallet', 'white', 59, 29.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(9, 'Lightweight Linen Knife', 'silver', 1, 84.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(10, 'Intelligent Linen Lamp', 'silver', 65, 62.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(11, 'Gorgeous Leather Shoes', 'aqua', 33, 89.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(12, 'Sleek Wooden Wallet', 'yellow', 41, 7.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(13, 'Practical Wooden Bench', 'gray', 62, 1.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(14, 'Incredible Wool Lamp', 'fuchsia', 84, 7.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(15, 'Practical Iron Knife', 'blue', 48, 67.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(16, 'Gorgeous Marble Watch', 'green', 33, 53.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(17, 'Enormous Copper Hat', 'gray', 91, 18.00, NULL, '2021-06-09 01:22:02', '2021-06-09 01:22:02'),
(18, 'Heavy Duty Rubber Table', 'navy', 98, 89.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(19, 'Incredible Wool Gloves', 'lime', 62, 89.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(20, 'Practical Linen Table', 'navy', 46, 59.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(21, 'Practical Aluminum Watch', 'navy', 45, 93.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(22, 'Fantastic Wooden Bench', 'white', 24, 95.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(23, 'Enormous Plastic Pants', 'blue', 2, 2.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(24, 'Rustic Steel Bag', 'teal', 59, 66.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(25, 'Awesome Granite Wallet', 'silver', 13, 88.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(26, 'Heavy Duty Wooden Chair', 'navy', 50, 4.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(27, 'Rustic Rubber Clock', 'lime', 75, 28.00, NULL, '2021-06-09 01:23:27', '2021-06-09 01:23:27'),
(28, 'Fantastic Cotton Clock', 'silver', 1, 89.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(29, 'Aerodynamic Linen Keyboard', 'black', 42, 60.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(30, 'Heavy Duty Wooden Plate', 'teal', 10, 86.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(31, 'Fantastic Steel Plate', 'black', 94, 66.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(32, 'Synergistic Copper Watch', 'teal', 92, 76.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(33, 'Intelligent Leather Shirt', 'navy', 51, 13.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(34, 'Intelligent Rubber Keyboard', 'navy', 97, 5.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(35, 'Fantastic Copper Table', 'purple', 25, 12.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(36, 'Aerodynamic Concrete Coat', 'teal', 72, 97.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30'),
(37, 'Sleek Linen Bench', 'gray', 1, 46.00, NULL, '2021-06-09 01:24:30', '2021-06-09 01:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
