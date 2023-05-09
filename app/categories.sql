-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2023 at 08:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `categories`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(89, 'category A', NULL, NULL, NULL),
(90, 'category B', NULL, NULL, NULL),
(91, 'SUB B0', 90, NULL, NULL),
(92, 'SUB B1', 90, NULL, NULL),
(93, 'SUB A0', 89, NULL, NULL),
(94, 'SUB A1', 89, NULL, NULL),
(95, 'SUB SUB B1-0', 92, NULL, NULL),
(96, 'SUB SUB B1-1', 92, NULL, NULL),
(97, 'SUB SUB SUB B1-1-0', 96, NULL, NULL),
(98, 'SUB SUB SUB B1-1-1', 96, NULL, NULL),
(99, 'SUB SUB SUB SUB B1-1-1-0', 98, NULL, NULL),
(100, 'SUB SUB SUB SUB B1-1-1-1', 98, NULL, NULL),
(101, 'SUB SUB SUB SUB SUB B1-1-1-1-0', 100, NULL, NULL),
(102, 'SUB SUB SUB SUB SUB B1-1-1-1-1', 100, NULL, NULL),
(103, 'SUB SUB SUB SUB SUB SUB B1-1-1-1-1-0', 102, NULL, NULL),
(104, 'SUB SUB SUB SUB SUB SUB B1-1-1-1-1-1', 102, NULL, NULL),
(105, 'SUB SUB SUB SUB SUB SUB SUB B1-1-1-1-1-1-0', 104, NULL, NULL),
(106, 'SUB SUB SUB SUB SUB SUB SUB B1-1-1-1-1-1-1', 104, NULL, NULL),
(107, 'SUB SUB SUB SUB SUB SUB SUB SUB B1-1-1-1-1-1-1-0', 106, NULL, NULL),
(108, 'SUB SUB SUB SUB SUB SUB SUB SUB B1-1-1-1-1-1-1-1', 106, NULL, NULL),
(109, 'SUB SUB SUB SUB SUB SUB SUB SUB SUB B1-1-1-1-1-1-1-1-0', 108, NULL, NULL),
(110, 'SUB SUB SUB SUB SUB SUB SUB SUB SUB B1-1-1-1-1-1-1-1-1', 108, NULL, NULL),
(111, 'SUB SUB B0-0', 91, NULL, NULL),
(112, 'SUB SUB B0-1', 91, NULL, NULL),
(113, 'SUB SUB A1-0', 94, NULL, NULL),
(114, 'SUB SUB A1-1', 94, NULL, NULL),
(115, 'SUB SUB SUB A1-1-0', 114, NULL, NULL),
(116, 'SUB SUB SUB A1-1-1', 114, NULL, NULL),
(117, 'SUB SUB SUB SUB A1-1-1-0', 116, NULL, NULL),
(118, 'SUB SUB SUB SUB A1-1-1-1', 116, NULL, NULL),
(119, 'SUB SUB SUB SUB A1-1-0-0', 115, NULL, NULL),
(120, 'SUB SUB SUB SUB A1-1-0-1', 115, NULL, NULL),
(121, 'SUB SUB SUB SUB SUB A1-1-0-1-0', 120, NULL, NULL),
(122, 'SUB SUB SUB SUB SUB A1-1-0-1-1', 120, NULL, NULL),
(123, 'SUB SUB SUB SUB SUB A1-1-0-0-0', 119, NULL, NULL),
(124, 'SUB SUB SUB SUB SUB A1-1-0-0-1', 119, NULL, NULL),
(125, 'SUB SUB SUB SUB SUB SUB A1-1-0-0-1-0', 124, NULL, NULL),
(126, 'SUB SUB SUB SUB SUB SUB A1-1-0-0-1-1', 124, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
