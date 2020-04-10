-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 03:53 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listerwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Business'),
(2, 'Technology'),
(3, 'Retail'),
(4, 'Construction');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `company` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_user` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `post_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `category_id`, `company`, `job_title`, `description`, `salary`, `location`, `contact_user`, `contact_email`, `post_date`) VALUES
(1, 1, 'JP Mortage', 'PHP Developer', 'Lead Liaison provides cloud-based marketing and sales automation solutions that help businesses worldwide attract, convert and close leads. The company markets to businesses of all sizes and focuses on creating the broadest and most user-friendly Revenue ', '90 k', 'Giza', 'Edwin Dias', 'eman@gmail.com', '2020-03-22 22:00:00'),
(2, 2, 'Beltone', 'Tester', 'Zeal has built a seamless loyalty app available on the App Store and Google Play. The app integrates its own QR code based digital loyalty stamp card with payment gateways to make transactions seamless and rewarding.', '20k', 'cairo', 'Eman Mohamed', 'eman@bel.com', '2020-03-09 22:00:00'),
(3, 2, 'EFG Hermas', 'Data scienetist', 'PHP (Hypertext Processor) is an open-source, a server-side, scripting language used for developing web applications. PHP is used by some of the well known operating systems like Linux, Unix, Solaris', '100k', 'Cairo', 'Wael Fakharany', 'mamer@gmail.com', '2020-04-06 18:43:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
