-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 10:38 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_num` varchar(200) NOT NULL,
  `admin_type` varchar(5) NOT NULL,
  `image` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `phone_num`, `admin_type`, `image`, `password`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '01731909035', 'a', './libs/upload_pic/admin_image/19560799545b52e3c974f96.jpg', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'arup', 'arup_admin', 'arupkumerbose@gmail.com', '01731909035', 'd', 'libs/upload_pic/admin_image/5565868935b52c4c77cb20.jpg', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'bose5', 'sm18888', 'charulatachaity@gmail.com', '01731909035', 'a', 'libs/upload_pic/admin_image/5257322145b52c4eea7fb9.jpg', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(20) UNSIGNED NOT NULL COMMENT 'id',
  `a_title` varchar(250) NOT NULL,
  `discount` int(5) DEFAULT NULL,
  `position` smallint(5) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `a_title`, `discount`, `position`, `image_path`) VALUES
(3, 'Men’s Clothing', 69, 1, 'libs/upload_pic/ads_image/11339209125b541ab457ff5.jpg'),
(4, 'Women\'s Clothing', 35, 2, 'libs/upload_pic/ads_image/19717325915b541ac4ebe37.jpg'),
(5, 'T - Shirt', 45, 3, 'libs/upload_pic/ads_image/7118718685b5423577b48c.jpg'),
(6, 'Hand Bag', 70, 4, 'libs/upload_pic/ads_image/5788870345b54237399c93.jpg'),
(9, 'TRENDING DESIGNS', NULL, 5, 'libs/upload_pic/ads_image/15998520255b5446988b813.jpg'),
(10, 'Men', 45, 6, 'libs/upload_pic/ads_image/1238806735b544a95a2826.jpg'),
(11, 'Shoes', 89, 7, 'libs/upload_pic/ads_image/11463387835b544aaf33623.jpg'),
(12, 'Women', 67, 8, 'libs/upload_pic/ads_image/6497354885b544af924f30.jpg'),
(13, 'Watch', 55, 9, 'libs/upload_pic/ads_image/1132213915b544b27c9a85.jpg'),
(14, 'Bag', 0, 10, 'libs/upload_pic/ads_image/3378562855b544b4c1729b.jpg'),
(15, 'Cameras', 0, 11, 'libs/upload_pic/ads_image/2297050195b544b5f1eb97.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(20) NOT NULL,
  `b_title` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `b_title`, `status`) VALUES
(1, 'Applesdfgsdf', NULL),
(2, 'Apple', NULL),
(3, 'Applesdfsdf', NULL),
(4, 'Apple', NULL),
(5, 'Apple', NULL),
(6, 'sdfasdf', NULL),
(7, 'sdfasdf', NULL),
(8, 'sdfasdf', NULL),
(9, 'asdfsdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `c_title` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_title`, `status`) VALUES
(1, 'Apple', NULL),
(2, 'Apple', NULL),
(3, 'Apple', NULL),
(4, 'Appleewrwer', NULL),
(5, 'Applesdfgsdf', NULL),
(6, 'Applesdfgsdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(20) UNSIGNED NOT NULL,
  `shipping_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `qty` smallint(10) NOT NULL,
  `price` int(20) NOT NULL,
  `sub_total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `shipping_id`, `product_id`, `product_name`, `qty`, `price`, `sub_total`) VALUES
(1, 2, 24, 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 3443, 3443),
(2, 2, 27, 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 3443, 3443),
(3, 3, 27, 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 3443, 3443),
(4, 3, 25, 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 3443, 3443),
(5, 3, 24, 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 3443, 3443),
(6, 3, 23, 'Sed ut perspiciatid', 1, 3443, 3443),
(7, 3, 21, 'Sed ut perspiciatis unde', 1, 3445, 3445);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `brand_id` int(20) UNSIGNED NOT NULL,
  `cat_id` int(20) UNSIGNED NOT NULL,
  `quentity` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED DEFAULT NULL,
  `prv_price` int(10) UNSIGNED DEFAULT NULL,
  `top_sell` tinyint(1) DEFAULT NULL,
  `sale` tinyint(1) DEFAULT NULL,
  `up_comming` tinyint(1) DEFAULT NULL,
  `feature` tinyint(1) DEFAULT NULL,
  `overview` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `details` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `product_name`, `brand_id`, `cat_id`, `quentity`, `price`, `discount`, `prv_price`, `top_sell`, `sale`, `up_comming`, `feature`, `overview`, `status`, `details`, `created_at`) VALUES
(18, 'sadfsadf', 'asdfasdf', 5, 2, NULL, 32434, 0, 0, 1, 1, NULL, NULL, 'sdfasdfsa', 1, 'dsafasdfasdfasdf', '2018-07-18'),
(19, 'p-005', 'Sed ut perspiciatis unde', 4, 1, NULL, 3445, 3, 4533, 1, 1, 1, NULL, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(20, 'p-006', 'Sed ut perspiciatis unde', 4, 1, NULL, 3445, 3, 4533, 1, 1, 1, NULL, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(21, 'p-007', 'Sed ut perspiciatis unde', 4, 1, NULL, 3445, 3, 4533, NULL, 1, 1, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(22, 'p-008', 'Sed ut perspiciatid', 4, 1, NULL, 3443, 3, 453300, 1, NULL, 1, NULL, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(23, 'p-009', 'Sed ut perspiciatid', 4, 4, NULL, 3443, 35, 453300, 1, 1, 1, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(24, 'p-009', 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 2, NULL, 3443, 35, 453300, NULL, NULL, 1, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(25, 'p-010', 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 2, NULL, 3443, 35, 453300, NULL, NULL, 1, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(26, 'p-011', 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 2, NULL, 3443, 35, 453300, 1, 1, NULL, NULL, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22'),
(27, 'p-012', 'Sed ut perspiciatid fgsdfg fsdgfdg fdgfg', 1, 2, NULL, 3443, 35, 453300, 1, 1, NULL, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p><p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><br></span></p>', '2018-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(20) UNSIGNED NOT NULL,
  `product_id` int(20) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`) VALUES
(9, 18, './libs/upload_pic/product_image/2977689305b4f089209ce0.jpg'),
(10, 18, './libs/upload_pic/product_image/2977689305b4f089209ce0.jpg'),
(11, 19, './libs/upload_pic/product_image/16033533445b546776079ce.jpg'),
(12, 19, './libs/upload_pic/product_image/13413179075b546776225f5.jpg'),
(13, 20, './libs/upload_pic/product_image/3165423885b54678f2c3c4.jpg'),
(14, 20, './libs/upload_pic/product_image/19393750185b54678f3cb7f.jpg'),
(15, 21, './libs/upload_pic/product_image/9595574155b5467a74add7.jpg'),
(16, 21, './libs/upload_pic/product_image/15832170315b5467a75aedf.jpg'),
(17, 22, './libs/upload_pic/product_image/3431403675b5467c72c36b.jpg'),
(18, 22, './libs/upload_pic/product_image/14492362865b5467c73e845.jpg'),
(19, 23, './libs/upload_pic/product_image/10242729995b5467f45b288.jpg'),
(20, 23, './libs/upload_pic/product_image/4832841505b5467f46b6df.jpg'),
(21, 24, './libs/upload_pic/product_image/16325313435b5468323ba06.jpg'),
(22, 24, './libs/upload_pic/product_image/7788070165b5468324ca3d.jpg'),
(23, 25, './libs/upload_pic/product_image/17754491205b5468486e653.jpg'),
(24, 25, './libs/upload_pic/product_image/9287001835b5468487f6a5.jpg'),
(25, 26, './libs/upload_pic/product_image/1267395695b546863e23ba.jpg'),
(26, 26, './libs/upload_pic/product_image/6534572335b546863f3445.jpg'),
(27, 27, './libs/upload_pic/product_image/1472276175b54688488b25.jpg'),
(28, 27, './libs/upload_pic/product_image/7066410515b54688499974.jpg'),
(29, 18, '0');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_num` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `total_qty` int(20) UNSIGNED DEFAULT NULL,
  `total_amount` int(20) UNSIGNED DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `email`, `phone_num`, `address`, `total_qty`, `total_amount`, `order_date`, `order_status`) VALUES
(1, 'arup', 'arupkumerbose@gmail.com', '01731909035', 'mirpir 11', 2, 6886, '2018-07-24 05:07:13', 1),
(2, 'arup', 'arupkumerbose@gmail.com', '01731909035', 'mirpur 11', 2, 6886, '2018-07-24 05:07:09', 0),
(3, 'arup', 'arupkumerbose@gmail.com', '01731909035', 'dsafsadfsdfsdf', 5, 17217, '2018-07-24 05:07:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(20) UNSIGNED NOT NULL,
  `s_title` varchar(200) DEFAULT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `s_title`, `image`) VALUES
(5, 'Slider Image', './libs/upload_pic/slider_image/2463890215b5447ad54af5.jpg'),
(6, 'Slider Image', './libs/upload_pic/slider_image/14685483625b5447b40f700.jpg'),
(7, 'Slider Image', './libs/upload_pic/slider_image/3148923115b5447b9b2e64.jpg'),
(8, 'Slider Image', './libs/upload_pic/slider_image/18876642025b5447bf90bdf.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(20) UNSIGNED NOT NULL,
  `field_name` varchar(250) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `field_name`, `value`) VALUES
(1, 'about_us', ', sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(2, 'address', 'tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(3, 'phone', '2132132132323'),
(4, 'email', 'arupkumerbose@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_num` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `user_type` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone_num`, `password`, `user_type`) VALUES
(1, 'arup', 'arup', 'arup@gmail.com', '1234567890', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(2, 'bose', 'admin', 'arupkumerbose@gmail.com', '01731909035', 'e10adc3949ba59abbe56e057f20f883e', 'a'),
(3, 'arup', 'oshitsd', 'charulatachaity@gmail.com', '01731909035', 'e10adc3949ba59abbe56e057f20f883e', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
