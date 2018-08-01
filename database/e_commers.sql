-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2018 at 11:34 AM
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
(1, 'RFL', NULL),
(2, 'Philips', NULL),
(3, 'Crown', NULL),
(6, 'Global Brand', NULL),
(7, 'Energy Pak', NULL),
(8, 'Gazi', NULL),
(9, 'BRB', NULL);

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
(1, 'Switch', NULL),
(2, 'Regulator', NULL),
(3, 'Energy Light', NULL),
(4, 'Fan', NULL),
(5, 'circuit breaker', NULL),
(6, 'Socket', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_events`
--

CREATE TABLE `news_events` (
  `id` int(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_events`
--

INSERT INTO `news_events` (`id`, `title`, `description`, `date`) VALUES
(3, 'শুভ উদ্বোধন অনুষ্ঠান', 'demo', '1995-06-14 00:00:00');

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
(18, 'P-0015254', 'Philips |Energy Light', 2, 3, NULL, 450, 0, 0, NULL, NULL, 1, NULL, 'Brighten up your home with our choice of finest MiniSun Bulbs. Available with either E27 or B22 cap type, these carefully designed bulbs are a great way to upgarde your lights, no matter the room. With choice spreading acroos light temperatures as well, choose between warm white and cool white.', 1, '<h1 class=\"is-size-6\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: 800; font-family: Raleway, sans-serif; text-transform: uppercase; letter-spacing: 1px; color: rgb(58, 58, 58); font-size: 1rem !important;\">FEATURES &amp; SPECIFICATION</h1><ul class=\"is-size-7\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; font-family: Raleway, sans-serif; color: rgb(74, 74, 74); font-size: 0.8rem !important;\"><p class=\"is-size-7\" style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px; font-size: 0.75rem !important;\">Spiral Bulbs:<br style=\"box-sizing: inherit;\"></p><p>Wattage: 30W / 20W / 13W<br>Cap Type: ES E27 / BC B22<br>Colour Temperature: 6500K (Cool White)<br>Energy Saving<br>Lifespan:&nbsp;<u style=\"box-sizing: inherit;\">8,000 hours</u><br style=\"box-sizing: inherit;\">CFL (Stick) Bulbs<br>Wattage: 11W / 20W<br>Colour Temperature: 2700K (Warm White)<br>Cap Type: ES E27 / BC B22<br>Energy Saving<br>Lifespan:&nbsp;<u style=\"box-sizing: inherit;\">8,000 hours</u></p><p></p></ul>', '2018-07-18'),
(19, 'p-005', 'Sed ut perspiciatis unde 50 Amp 2 in. Double-Pole Type BR Replacement Circuit Breaker', 9, 5, NULL, 3050, 0, 0, 1, 1, 1, NULL, '50 Amp 2 in. Double-Pole Type BR Replacement Circuit Breaker\r\nUse for overload and short-circuit protection of your home electrical system\r\nTrips to the center position\r\n120/240 VAC\r\nUL listed replacement for cutler-hammer, challenger, Westinghouse and Bryant load centers', 1, '<p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.32px;\">50 Amp 2 in. Double-Pole Type BR Replacement Circuit Breaker</span><br style=\"color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.32px;\"></p><ul style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 0px; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.32px; margin: 5px 0px !important; padding-left: 3em !important; list-style-position: outside !important; list-style-image: initial !important;\"><li style=\"margin: 3px 0px 0px !important; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 5px !important; list-style: disc outside !important;\">Use for overload and short-circuit protection of your home electrical system</li><li style=\"margin: 3px 0px 0px !important; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 5px !important; list-style: disc outside !important;\">Trips to the center position</li><li style=\"margin: 3px 0px 0px !important; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 5px !important; list-style: disc outside !important;\">120/240 VAC</li><li style=\"margin: 3px 0px 0px !important; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 5px !important; list-style: disc outside !important;\">UL listed replacement for cutler-hammer, challenger, Westinghouse and Bryant load centers</li></ul>', '2018-07-22'),
(20, 'p-006', 'Circuit Braker', 1, 5, NULL, 2000, 0, 0, 1, 1, 1, NULL, 'A circuit breaker is an automatically operated electrical switch designed to protect an electrical circuit from damage caused by excess current from an overload or short circuit. Its basic function is to interrupt current flow after a fault is detected.', 1, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">All circuit breaker systems have common features in their operation, but details vary substantially depending on the voltage class, current rating and type of the circuit breaker.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">The circuit breaker must first detect a fault condition. In small mains and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Low_voltage\" title=\"Low voltage\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">low voltage</a>&nbsp;circuit breakers, this is usually done within the device itself. Typically, the heating or magnetic effects of electric current are employed. Circuit breakers for large currents or high voltages are usually arranged with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Protective_relay\" title=\"Protective relay\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">protective relay</a>&nbsp;pilot devices to sense a fault condition and to operate the opening mechanism. These typically require a separate power source, such as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Battery_(electricity)\" class=\"mw-redirect\" title=\"Battery (electricity)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">battery</a>, although some high-voltage circuit breakers are self-contained with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Current_transformer\" title=\"Current transformer\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">current transformers</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Protective_relay\" title=\"Protective relay\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">protective relays</a>, and an internal control power source.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">Once a fault is detected, the circuit breaker contacts must open to interrupt the circuit; this is commonly done using mechanically stored energy contained within the breaker, such as a spring or compressed air to separate the contacts. Circuit breakers may also use the higher current caused by the fault to separate the contacts, such as thermal expansion or a magnetic field. Small circuit breakers typically have a manual control lever to switch off the load or reset a tripped breaker, while larger units use&nbsp;<a href=\"https://en.wikipedia.org/wiki/Solenoid\" title=\"Solenoid\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">solenoids</a>&nbsp;to trip the mechanism, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_motor\" title=\"Electric motor\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electric motors</a>&nbsp;to restore energy to the springs.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">The circuit breaker contacts must carry the load current without excessive heating, and must also withstand the heat of the arc produced when interrupting (opening) the circuit. Contacts are made of copper or copper alloys, silver alloys and other highly conductive materials. Service life of the contacts is limited by the erosion of contact material due to arcing while interrupting the current. Miniature and molded-case circuit breakers are usually discarded when the contacts have worn, but power circuit breakers and high-voltage circuit breakers have replaceable contacts.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">When a high current or voltage is interrupted, an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_arc\" title=\"Electric arc\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">arc</a>&nbsp;is generated. The length of the arc is generally proportional to the voltage while the intensity (or heat) is proportional to the current. This arc must be contained, cooled and extinguished in a controlled way, so that the gap between the contacts can again withstand the voltage in the circuit. Different circuit breakers use&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vacuum_interrupter\" title=\"Vacuum interrupter\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">vacuum</a>, air,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Insulating_gas\" class=\"mw-redirect\" title=\"Insulating gas\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">insulating gas</a>, or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transformer_oil\" title=\"Transformer oil\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">oil</a>&nbsp;as the medium the arc forms in. Different techniques are used to extinguish the arc including:</p><ul style=\"margin: 0.3em 0px 0px 1.6em; padding: 0px; list-style-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 width=%225%22 height=%2213%22%3E %3Ccircle cx=%222.5%22 cy=%229.5%22 r=%222.5%22 fill=%22%2300528c%22/%3E %3C/svg%3E&quot;); color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em;\">Lengthening or deflecting the arc</li><li style=\"margin-bottom: 0.1em;\">Intensive cooling (in jet chambers)</li><li style=\"margin-bottom: 0.1em;\">Division into partial arcs</li><li style=\"margin-bottom: 0.1em;\">Zero point quenching (contacts open at the zero current time crossing of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alternating_current\" title=\"Alternating current\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">AC</a>&nbsp;waveform, effectively breaking no load current at the time of opening. The zero crossing occurs at twice the line frequency; i.e., 100 times per second for 50&nbsp;Hz and 120 times per second for 60&nbsp;Hz AC.)</li><li style=\"margin-bottom: 0.1em;\">Connecting&nbsp;<a href=\"https://en.wikipedia.org/wiki/Capacitor\" title=\"Capacitor\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">capacitors</a>&nbsp;in parallel with contacts in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Direct_current\" title=\"Direct current\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">DC</a>&nbsp;circuits.</li></ul><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">Finally, once the fault condition has been cleared, the contacts must again be closed to restore power to the interrupted circuit.</p>', '2018-07-22'),
(21, 'p-007', 'Elsa Copper Gold', 9, 4, NULL, 3400, 0, 0, NULL, 1, 1, 1, 'Unique combination of Energy Saving and looks\r\nErgonomically designed wide tip blades for high air delivery and air spread\r\nFive star rated Decorative fan with power consumption of  55 watts\r\nSuperior high permeability grade electric steel lamination for improved life', 1, '<ul itemprop=\"description\" style=\"outline: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 10px; background-color: rgb(241, 241, 239);\"><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">Unique combination of Energy Saving and looks</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">Ergonomically designed wide tip blades for high air delivery and air spread</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">Five star rated Decorative fan with power consumption of &nbsp;55 watts</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">Superior high permeability grade electric steel lamination for improved life</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">Special metallic paint with distinct sparkle effect.</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">V2 grade ball bearing for whisper- quiet operation and durability</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">Speed 330 RPM and air delivery 224CMM</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">Available in 1200 MM Sweep size</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\">2 Year Warranty.</li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\"><br></li><li style=\"outline: none; margin: 0px; padding: 0px 0px 10px 15px; list-style: none; color: rgb(51, 51, 51); font-size: 1.3em; background: url(&quot;../images/bullet_pink_square.gif&quot;) 0px 4px no-repeat;\"><table width=\"97%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"outline: none; border-collapse: inherit; color: rgb(0, 0, 0); font-size: 10px; background-color: rgb(241, 241, 239);\"><tbody style=\"outline: none; border-top: 1px solid rgb(204, 204, 204);\"><tr style=\"outline: none;\"><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-bottom: 10px; width: 150px;\">Air Delivery</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-bottom: 10px; width: 16px; text-align: center;\">:</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-bottom: 10px; width: auto;\">224 cmm</td></tr><tr style=\"outline: none;\"><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 150px;\">Power</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 16px; text-align: center;\">:</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: auto;\">55 watts</td></tr><tr style=\"outline: none;\"><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 150px;\">RPM</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 16px; text-align: center;\">:</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: auto;\">330</td></tr><tr style=\"outline: none;\"><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 150px;\">Sweep</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 16px; text-align: center;\">:</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: auto;\">48 inches</td></tr><tr style=\"outline: none;\"><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 150px;\">Warranty</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: 16px; text-align: center;\">:</td><td style=\"outline: none; color: rgb(51, 51, 51); font-size: 1.2em; line-height: 16px; padding-top: 10px; padding-bottom: 10px; width: auto;\">2 years</td></tr></tbody></table></li></ul>', '2018-07-22'),
(22, 'p-008', 'BRB Fan', 9, 4, NULL, 3443, 0, 0, 1, NULL, 1, NULL, 'Type: TableMotor Speed: 2000 RPMBlade Sweep: 400 mmBlade Material: PlasticNumber of Speed Settings: 3Number of Blades: 3Suitable For: Both Indoor and Outdoor Swing: yesAirflow: NA cfm', 1, '<ul class=\"fedet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; width: 935px; float: left; list-style-type: none; color: rgb(37, 37, 37); font-family: Roboto, sans-serif; font-size: 14px;\"><li class=\"tp\" style=\"margin: 0px; padding: 0px 0px 0px 12px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left; background: rgb(238, 238, 238); border-top: 1px solid rgb(217, 217, 217);\">General</li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Type</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">Table</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Motor Speed</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">2000 RPM</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Number of Speed Settings</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">3</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Number of Blades</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">3</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Suitable For</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">Both Indoor and Outdoor</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Airflow</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">NA cfm</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Shade</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">Commercial Grey</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Swing</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">yes</span></li></ul><ul class=\"fedet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; width: 935px; float: left; list-style-type: none; color: rgb(37, 37, 37); font-family: Roboto, sans-serif; font-size: 14px;\"><li class=\"tp\" style=\"margin: 0px; padding: 0px 0px 0px 12px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left; background: rgb(238, 238, 238); border-top: 1px solid rgb(217, 217, 217);\">Body and Design Features</li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Blade Sweep</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">400 mm</span></li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Blade Material</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">Plastic</span></li></ul><ul class=\"fedet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; width: 935px; float: left; list-style-type: none; color: rgb(37, 37, 37); font-family: Roboto, sans-serif; font-size: 14px;\"><li class=\"tp\" style=\"margin: 0px; padding: 0px 0px 0px 12px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left; background: rgb(238, 238, 238); border-top: 1px solid rgb(217, 217, 217);\">Dimensions</li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Weight</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">3.5 kg</span></li></ul><ul class=\"fedet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; width: 935px; float: left; list-style-type: none; color: rgb(37, 37, 37); font-family: Roboto, sans-serif; font-size: 14px;\"><li class=\"tp\" style=\"margin: 0px; padding: 0px 0px 0px 12px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left; background: rgb(238, 238, 238); border-top: 1px solid rgb(217, 217, 217);\">Additional Features</li><li style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: Roboto, Arial, Helvetica, sans-serif; border-bottom: 1px solid rgb(217, 217, 217); width: 935px; float: left; display: block; list-style-type: none; text-align: left;\"><p style=\"margin-bottom: 0px; padding: 0px 20px 0px 0px; float: left; line-height: 30px; width: 250px; text-align: right; height: 30px;\">Remote</p><span style=\"margin: 0px; padding: 0px 0px 0px 20px; float: left; display: block; line-height: 30px; width: 644px; border-left: 1px solid rgb(217, 217, 217);\">No</span></li></ul>', '2018-07-22'),
(23, 'p-009', 'Energy Saving Bulb 32W', 2, 3, NULL, 500, 0, 0, NULL, NULL, 1, 1, 'Energy Saving & Fluorescent,Brand not specified,Not specified,Detailed description not provided by supplier', 1, '<table style=\"background-color: rgb(255, 255, 255); width: 680px; font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><tbody><tr><td class=\"pk-product-title td\" style=\"font-size: 1em; line-height: 1.5em; color: rgb(153, 153, 153); vertical-align: top; width: 100px;\">Unit:</td><td class=\"pk-product-values\" style=\"font-size: 1em; line-height: 1.5em; color: rgb(34, 34, 34); vertical-align: top;\">pcs</td></tr><tr><td class=\"pk-product-title td\" style=\"font-size: 1em; line-height: 1.5em; color: rgb(153, 153, 153); vertical-align: top; width: 100px;\">Category:</td><td style=\"vertical-align: top;\">Energy Saving &amp; Fluorescent</td></tr><tr><td class=\"pk-product-title td\" style=\"font-size: 1em; line-height: 1.5em; color: rgb(153, 153, 153); vertical-align: top; width: 100px;\">Brand:</td><td style=\"vertical-align: top;\">Brand not specified</td></tr><tr><td class=\"pk-product-title td\" style=\"font-size: 1em; line-height: 1.5em; color: rgb(153, 153, 153); vertical-align: top; width: 100px;\">Origin:</td><td style=\"vertical-align: top;\">Not specified</td></tr><tr><td class=\"pk-product-title\" style=\"font-size: 1em; line-height: 1.5em; color: rgb(153, 153, 153); vertical-align: top;\">Description:</td><td style=\"vertical-align: top;\">Detailed description not provided by supplier</td></tr></tbody></table>', '2018-07-22'),
(24, 'p-009', 'Electrical Switch', 1, 1, NULL, 3443, 0, 0, NULL, NULL, 1, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">Being one of the renowned firms in the industry, we are decidedly involved in providing a premium quality array of&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">Electrical Switch.</span><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">Features:</span><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Shock proof</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Durable</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Fine finish</li></ul>', '2018-07-22'),
(25, 'p-010', 'RFL Regulators', 1, 2, NULL, 3443, 0, 0, NULL, NULL, 1, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"margin: 0px; padding: 0px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">Features:<br style=\"margin: 0px; padding: 0px;\"></span><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"></span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">100W, 4 Speed + Off Step Type in 1 Module</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">120W, 5 Speed + Off Step Type in 2 Module</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Smart &amp; linear speed distribution over each step</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Zero resistance to the humming noise</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">360-degree rotary knob</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Rigid Legs for Site Suitability</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">ROHS compliant</li></ul>', '2018-07-22'),
(26, 'p-011', 'Electronic Fan Regulator', 9, 2, NULL, 90, 0, 0, NULL, 1, NULL, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"margin: 0px; padding: 0px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">Features:</span><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Durable finish</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Corrosion resistant</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Shock-proof</li></ul><p><span style=\"color: rgb(119, 119, 119); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><br></span><span style=\"color: rgb(119, 119, 119); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><br></span></p>', '2018-07-22'),
(27, 'p-012', 'Energy Pack Regulator', 7, 2, NULL, 100, 0, 0, 1, NULL, NULL, 1, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">We are manufacturer and supplier of&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">Fan Regulator for Electrical Work</span><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">. We make use of premium-grade material and technically advanced amenities. The offered fan regulator is designed with the hard work and dedication of our designers.</span><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\">Features:</span><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><br style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 17px;\"><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Durable finish</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Corrosion resistant</li><li style=\"margin: 0px 0px 0px 17px; padding: 0px; list-style: outside;\">Shock-proof</li></ul>', '2018-07-22'),
(28, 'dfsd', 'dsfsdf', 2, 4, NULL, 344, 0, 0, NULL, NULL, NULL, NULL, 'dsfdsf', 1, 'dfdfdf', '2018-08-01');

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
(30, 24, 'libs/upload_pic/product_image/12959076885b61571d4150a.jpg'),
(31, 24, 'libs/upload_pic/product_image/13758885895b61571d6978b.jpg'),
(32, 24, 'libs/upload_pic/product_image/10416968585b61571d87d7e.jpg'),
(33, 25, 'libs/upload_pic/product_image/771536765b6157b284ee2.jpg'),
(34, 25, 'libs/upload_pic/product_image/6624367545b6157b2b94cc.jpg'),
(35, 25, 'libs/upload_pic/product_image/9735116885b6157b2d318b.jpg'),
(36, 26, 'libs/upload_pic/product_image/5924901195b615821d7c62.jpeg'),
(37, 26, 'libs/upload_pic/product_image/7693508935b61582202492.jpg'),
(38, 27, 'libs/upload_pic/product_image/12623142895b61588983dc7.jpg'),
(39, 27, 'libs/upload_pic/product_image/5133938815b6158899859e.jpg'),
(40, 27, 'libs/upload_pic/product_image/18145694465b615889a5522.jpg'),
(41, 18, 'libs/upload_pic/product_image/8902691485b615a160bf3f.jpg'),
(42, 18, 'libs/upload_pic/product_image/13640996465b615a165a292.jpg'),
(43, 18, 'libs/upload_pic/product_image/13870748345b615a167cbf3.jpg'),
(45, 23, 'libs/upload_pic/product_image/12785429745b615b0e643ad.jpg'),
(46, 23, 'libs/upload_pic/product_image/12007697715b615b0e86f46.png'),
(47, 23, 'libs/upload_pic/product_image/8026813305b615b0eb89ae.png'),
(48, 22, 'libs/upload_pic/product_image/20197174395b615bc55617e.jpg'),
(49, 22, 'libs/upload_pic/product_image/18007658915b615bc56b7e6.jpg'),
(50, 22, 'libs/upload_pic/product_image/294873635b615bc5a97c4.jpg'),
(51, 22, '0'),
(52, 23, '0'),
(53, 21, 'libs/upload_pic/product_image/2417002255b615cb9cc156.jpg'),
(54, 21, 'libs/upload_pic/product_image/122305495b615cba0cab2.png'),
(55, 21, 'libs/upload_pic/product_image/13868805945b615cba3256e.jpg'),
(56, 24, '0'),
(57, 20, 'libs/upload_pic/product_image/21003489835b615d91c2c66.jpg'),
(58, 20, 'libs/upload_pic/product_image/5182839035b615d91d8294.jpg'),
(59, 20, 'libs/upload_pic/product_image/1066644555b615d9209a3f.jpg'),
(60, 19, 'libs/upload_pic/product_image/2673309745b615e02197e0.jpg'),
(61, 19, 'libs/upload_pic/product_image/491717125b615e022fbd7.jpg'),
(62, 19, 'libs/upload_pic/product_image/13582706355b615e02431fe.jpeg'),
(63, 28, '0');

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
(9, 'Slider Image', './libs/upload_pic/slider_image/15201843515b615f8900162.jpg'),
(10, 'Slider Image', './libs/upload_pic/slider_image/7068335795b616030196de.jpg'),
(11, 'Slider Image', './libs/upload_pic/slider_image/19328968665b616038788f5.jpg'),
(13, 'Slider Image', './libs/upload_pic/slider_image/2828441435b616051d998a.jpg');

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
(3, 'phone', '01911978897'),
(4, 'email', 'mail@linktechbd.com'),
(5, 'wellcome_note', '<h5><span style=\"font-weight: bold; font-family: \" courier=\"\" new\";\"=\"\">Welcome to the Khan Traders.</span><b helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\" style=\"font-size: 16px; text-align: justify;\">We are the company providing the best solution regarding pump sector such as distributing water or any other liquids in various fields.</b></h5><p class=\"lead\" style=\"font-size: 16px; line-height: 24px; text-align: justify;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\"><span style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\">Having developed in the Bangladesh market, without doubt the international centre of motor-driven pump production, Momen is now one of the leading company in terms of specific turnover.</span><br style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></span><br></p>'),
(6, 'md_name', 'Khan'),
(7, 'md_desig', 'Md'),
(8, 'md_image', 'libs/upload_pic/temp_image/16205248225b602c980ac08.jpg'),
(9, 'md_message', '<p align=\"justify\" style=\"margin-bottom: 0px; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" font-size:=\"\" 14px;\"=\"\">I take this opportunity to thank our valued customers, whose continued patronage and confidence in our products inspires us to extend the best of services and enables us to provide value for their money.</p><p align=\"justify\" style=\"margin-bottom: 0px; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" font-size:=\"\" 14px;\"=\"\"><br style=\"margin: 0px;\">Being dedicated to taking Electronics, Energy and Information Technology to rural areas, we are focused at addressing the needs of our customers through rugged, efficient, reliable and economic milk analysis and automation solutions and products, in line with the world’s best, while maintaining continuous interaction with them to assess their emerging requirement, so as to be ready when the needs arise.<br style=\"margin: 0px;\">&nbsp;</p><p align=\"justify\" style=\"margin-bottom: 0px; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" font-size:=\"\" 14px;\"=\"\">We believe that technology holds the key to food safety, energy security, access to information, and economic freedom, which are necessary for empowering our rural brethren.<br style=\"margin: 0px;\">&nbsp;</p><p align=\"justify\" style=\"margin-bottom: 0px; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" font-size:=\"\" 14px;\"=\"\">We are committed to total customer satisfaction by identifying their specific needs, translating them into Quality products and providing dependable after-sales-services. This commitment is the corner stone of our Quality Policy and Green REIL Policy and we strive to achieve it by putting into place a Quality System, which adheres to the ISO 9001 Quality Standard, and an environmental management system which adheres to the ISO 14001:2004 EMS standard<br style=\"margin: 0px;\">&nbsp;</p><p align=\"justify\" style=\"margin-bottom: 0px; font-family: \" times=\"\" new=\"\" roman\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" font-size:=\"\" 14px;\"=\"\">We plan to achieve this goal through our strength - the Employees; and seek their continuous involvement in achieving the Company\'s objectives.<br style=\"margin: 0px;\"><br style=\"margin: 0px;\">The organization is also committed to its shareholders by way of maximizing the wealth through sustained growth under the overall ambit of the spirit of a Public Sector Unit, to optimally balance the commercial objectives and the goals of social service to the nation at large.<br style=\"margin: 0px;\"><br style=\"margin: 0px;\">I therefore, seek continued patronage of our valued customers, cooperation of our employees and thank our well-wishers who have contributed to the growth of the organization.</p>'),
(10, 'regard', '<p><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 18px;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><span style=\"color: rgb(94, 94, 94);\">Thank you for visiting us ! We’re glad that you found what you were looking for. It is our goal that you are always happy with what you bought from us, so please let us know if your buying experience was anything short of excellent.</span><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\"><span style=\"font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\">I just wanted to let you know that all of your help with getting (your business) off the ground is very much appreciated. Your support and efforts for our new venture certainly contributed to our success, and I want to thank you for that. Good luck in all of your endeavors. Keep in touch!</span>&nbsp;</span><span style=\"color: rgb(94, 94, 94);\">We look forward to seeing you again. Have a great day!</span></span></p>');

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
-- Indexes for table `news_events`
--
ALTER TABLE `news_events`
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
-- AUTO_INCREMENT for table `news_events`
--
ALTER TABLE `news_events`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
