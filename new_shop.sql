-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 06:24 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `add1s`
--

CREATE TABLE `add1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advertise_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_off` int(11) NOT NULL,
  `advertise_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add1s`
--

INSERT INTO `add1s` (`id`, `advertise_name`, `product_off`, `advertise_image`, `created_at`, `updated_at`) VALUES
(8, 'Camera', 50, 'advertise-image/Add1_200622050924.jpg', '2020-06-21 23:09:24', '2020-06-21 23:09:24'),
(9, 'Audi', 23, 'advertise-image/Add1_200622050954.jpg', '2020-06-21 23:09:54', '2020-06-21 23:09:54'),
(10, 'Ferrari', 20, 'advertise-image/Add1_200622051008.jpg', '2020-06-21 23:10:08', '2020-06-21 23:10:08'),
(11, 'Laptop', 23, 'advertise-image/Add1_200622051035.jpg', '2020-06-21 23:10:35', '2020-06-21 23:10:35'),
(12, 'Car', 60, 'advertise-image/Add1_200622051047.jpg', '2020-06-21 23:10:47', '2020-06-21 23:10:47'),
(13, 'Bike', 30, 'advertise-image/Add1_200622051146.jpg', '2020-06-21 23:11:46', '2020-06-21 23:11:46'),
(14, 'Headphone', 10, 'advertise-image/Add1_200625090755.jpg', '2020-06-25 03:07:55', '2020-06-25 03:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `add2s`
--

CREATE TABLE `add2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advertise_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_off` int(11) NOT NULL,
  `advertise_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add2s`
--

INSERT INTO `add2s` (`id`, `advertise_name`, `product_off`, `advertise_image`, `created_at`, `updated_at`) VALUES
(2, 'Bike', 20, 'advertise-image/Add2_200622051328.jpg', '2020-06-21 23:13:28', '2020-06-21 23:13:28'),
(3, 'Car', 34, 'advertise-image/Add2_200622051458.jpg', '2020-06-21 23:14:58', '2020-06-21 23:14:58'),
(5, 'Camera', 30, 'advertise-image/Add2_200622051534.jpg', '2020-06-21 23:15:34', '2020-06-21 23:15:34'),
(6, 'Laptop', 30, 'advertise-image/Add2_200622051550.jpg', '2020-06-21 23:15:50', '2020-06-21 23:15:50'),
(7, 'Mobile', 60, 'advertise-image/Add2_200622051704.jpg', '2020-06-21 23:17:04', '2020-06-21 23:17:04'),
(8, 'Watch', 66, 'advertise-image/Add2_200622051726.jpg', '2020-06-21 23:17:26', '2020-06-21 23:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Rolex', 'Founded in London by Hans Wilsdorf in 1905, Rolex set out to create the most accurate and reliable wristwatches in the world. Using small and very precise movements from Bienne, Switzerland, Rolex began its journey to convince the public of the reliability of resolutely innovative timepieces', 1, '2020-06-10 11:23:14', '2020-06-25 03:04:22'),
(2, 'Titan', 'Titan Company Ltd is the world\'s fifth largest wrist watch manufacturer and India\'s leading producer of watches. The company is engaged in manufacturing of watches, jewelry, precision engineering and Eyewear. They produce watches under the brand name Titan, Fastrack, Sonata, Nebula, RAGA, Regalia, Octane & Xylys.', 1, '2020-06-10 11:23:50', '2020-06-10 11:23:50'),
(3, 'Nikon', 'Nikon popularized many features in professional SLR photography, such as the modular camera system with interchangeable lenses, viewfinders, motor drives, and data backs; integrated light metering and lens indexing; electronic strobe flashguns instead of expendable flashbulbs; electronic shutter control; evaluative ...', 1, '2020-06-10 11:24:49', '2020-06-10 11:24:49'),
(4, 'Canon', 'Canon EOS (Electro-Optical System) is an autofocus single-lens reflex camera (SLR) and mirrorless camera series produced by Canon Inc. Introduced in 1987 with the Canon EOS 650, all EOS cameras used 35 mm film until October 1996 when the EOS IX was released using the new and short-lived APS film.', 1, '2020-06-10 11:25:15', '2020-06-10 11:25:15'),
(5, 'Fujifilm', 'Fujifilm is one of the best regarded camera brands worldwide. With our award-winning range of cameras suited to Pros and enthusiasts alike, we\'re sure there\'s a camera in our range that will interest you.', 1, '2020-06-10 11:25:58', '2020-06-10 11:25:58'),
(6, 'TVS', 'TVS Motor Company (T.V.S) is an Indian multinational motorcycle company headquartered at ... In the short term, they will be continue production of motorcycles at Donington park using the same staff. ... Innovative implementation of Information Technology has won TVS Motor the Ace Award for Most Innovative NetWeaver .', 1, '2020-06-10 11:26:37', '2020-06-10 11:26:37'),
(7, 'Paulser', 'Bajaj Pulsar. The Bajaj Pulsar is a motorcycle manufactured by Bajaj Auto in India. ... Before the introduction of the Pulsar, the Indian motorcycle market trend was towards fuel efficient, small capacity motorcycles (that formed the 80–125 cc class).', 1, '2020-06-10 11:26:59', '2020-06-10 11:26:59'),
(8, 'BMW', 'BMW manufactured its first motorcycle in 1923, the R32, which featured a flat-twin boxer engine. BMW Motorrad still uses the flat-twin boxer configuration, but now manufactures motorcycles with a variety of engine configurations', 1, '2020-06-10 11:27:29', '2020-06-10 11:27:29'),
(9, 'Audi', 'The four rings of the Audi logo each represent one of four car companies that banded together to create Audi\'s predecessor company, Auto Union.', 1, '2020-06-10 11:28:07', '2020-06-10 11:28:07'),
(10, 'Ferrari', 'Ferrari S.p.A. ... Ferrari (/fəˈrɑːri/; Italian: [ferˈraːri]) is an Italian-Dutch luxury sports car manufacturer based in Maranello. Founded by Enzo Ferrari in 1939 out of Alfa Romeo\'s race division as Auto Avio Costruzioni, the company built its first car in 1940.', 1, '2020-06-10 11:28:44', '2020-06-10 11:28:44'),
(11, 'Dell', 'Dell laptops and 2-in-1s today! Find the latest XPS laptops, Inspiron notebooks, high-performance Alienware Gaming laptops. FAST & FREE SHIPPING.', 1, '2020-06-10 11:29:34', '2020-06-10 11:29:34'),
(12, 'Asus', 'Whether you are serious about your gaming or need a powerful laptop for productivity or content creation, this Asus laptop delivers incredible performance as well as an amazing battery life, a fast screen, and a thin and light chassis that makes it super portable.', 1, '2020-06-10 11:30:07', '2020-06-10 11:30:07'),
(13, 'Walton', 'WALTON  TV provides the viewers with crystal-clear pictures along with vibrant and life-like colors. With full HD display and Dolby Digital surround sound, engineered to provide you with an excessive and unmatched entertainment experience.', 1, '2020-06-10 11:30:50', '2020-06-10 11:30:50'),
(14, 'LG', 'LG\'s smart, flat-screen TVs boast stunning displays, crisp, clear sound and cutting-edge features like ThinQ AI and the Google Assistant and Alexa built-in.', 1, '2020-06-10 11:31:18', '2020-06-10 11:31:18'),
(15, 'Mi', 'Xiaomi Corporation is a Chinese electronics company founded in April 2010 and ... On 21 February 2014 Xiaomi\'s Redmi and Mi 3 phone were released in Singapore. ... private data, including call logs and contact information, to Xiaomi servers. ... Wikipedia semi-protected pages · Articles with short description .', 1, '2020-06-10 11:47:50', '2020-06-10 11:47:50'),
(16, 'IPhone', 'he iPhone is a smartphone made by Apple that combines a computer, iPod, digital camera and cellular phone into one device with a touchscreen interface. The iPhone runs the iOS operating system (OS), and as of 2017, there were 2.2 million apps available for it through the Apple App Store, according to Statista', 1, '2020-06-10 11:48:27', '2020-06-10 11:48:27'),
(17, 'SAMSUNG', 'Samsung, South Korean company that is one of the world\'s largest producers of electronic devices. Samsung specializes in the production of a wide variety of consumer and industry electronics, including appliances, digital media devices, semiconductors, memory chips, and integrated systems', 1, '2020-06-10 11:49:18', '2020-06-10 11:49:18'),
(18, 'Y006', 'Headphones are made in a range of different audio reproduction quality capabilities.', 1, '2020-06-25 03:04:00', '2020-06-25 03:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'A laptop computer is a portable personal computer powered by a battery, or an AC cord plugged into an electrical outlet, which is also used to charge the battery. Laptops have an attached keyboard and a touchpad, trackball, or isometric joystick used for navigation.', 1, '2020-06-10 11:19:55', '2020-06-25 03:04:47'),
(2, 'Mobile', 'A mobile phone is a wireless handheld device that allows users to make and receive calls and to send text messages, among other features. The earliest generation of mobile phones could only make and receive calls. ... A mobile phone may also be known as a cellular phone or simply a cell phone.', 1, '2020-06-10 11:20:26', '2020-06-10 11:20:26'),
(3, 'Bike', 'A bicycle, also called a bike or cycle, is a human-powered or motor-powered, pedal-driven, single-track vehicle, having two wheels attached to a frame, one behind the other.', 1, '2020-06-10 11:20:55', '2020-06-10 11:20:55'),
(4, 'Car', 'A car (or automobile) is a wheeled motor vehicle used for transportation. Most definitions of cars say that they run primarily on roads, seat one to eight people, have four tires, and mainly transport people rather than goods. Cars came into global use during the 20th century, and developed economies depend on them.', 1, '2020-06-10 11:21:20', '2020-06-10 11:21:20'),
(5, 'Watch', 'A watch is a small clock carried or worn by a person. It makes it easy to see the time. It is also a fashion accessory for men and women, and expensive watches are designed for this purpose. A watch may be one of the few accessories worn by a man.', 1, '2020-06-10 11:21:46', '2020-06-10 11:21:46'),
(6, 'Tv', 'Telegram television (also known as a TV) is a machine with a screen. Televisions receive broadcasting signals and change them into pictures and sound. The word \"television\" comes from the words tele (Greek for far away) and vision (sight). Sometimes a television can look like a box.', 0, '2020-06-10 11:22:38', '2020-06-10 12:13:41'),
(7, 'Camera', 'A camera is an optical instrument used to record images. At their most basic, cameras are sealed boxes (the camera body) with a small hole (the aperture) that let light in to capture an image on a light-sensitive surface (usually photographic film or a digital sensor).', 0, '2020-06-10 11:24:20', '2020-06-10 12:13:44'),
(8, 'Headphone', 'Headphones are made in a range of different audio reproduction quality capabilities.', 1, '2020-06-25 03:03:23', '2020-06-25 03:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'aasd', 'd@d.com', 'sdsd', 'asdsadsd', '2020-06-18 02:55:33', '2020-06-18 02:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'a', 's', 's@d.com', '$2y$10$6rmByX.Ptp7yf2VW7TyIFuEr2he.HArJytBR2eYtLPxwwStaQyDly', '222', 'dwdwd', '2020-06-10 04:07:45', '2020-06-10 04:07:45'),
(3, 'qasqsqsq', 'qsqssq', 'sss@s.com', '$2y$10$uinVWwnSTjZvKMD75Wp9D.BUYVt3Q8om5cj4i6cTKqAQ7/axmyC0G', 'qwqedwdesd', 'sdwdwedew', '2020-06-10 04:23:39', '2020-06-10 04:23:39'),
(34, 'shyam', 'Saha', 'sham096sham@gmail.com', '$2y$10$uHKH1RP4Rt8SknwRohRqHeswJxut.Kc0sqzvz4gr.BcLrJRlC5vSy', '01852369222', 'Dhaka,Bangladesh', '2020-06-11 03:05:22', '2020-06-11 03:05:22'),
(41, 'arnob', 'saha', 'arnob@1.com', '$2y$10$bJsxblkDdti2dR78gnKEjeepk8BLD6Dg4mYuyAU03X3HoXPr9I7DC', '789456', 'jnkjnk', '2020-06-14 22:01:51', '2020-06-14 22:01:51'),
(42, 'arnob', 'saha', 'arnob@2.com', '$2y$10$ZJ5abLiY2bIJ9pe5rcavtu6VRPGuqoyYLxzH2UgR5FqufNPMNgCPu', '789456', 'jnkjnk', '2020-06-14 22:24:08', '2020-06-14 22:24:08'),
(43, 'aro', 'sa', 'a@a.com', '$2y$10$ayNHId17h2UU1A.XBbbnTuB2yAfm/2eEXPh74zk4KFTPAOokPhSPO', '2222', 'www', '2020-06-14 22:37:22', '2020-06-14 22:37:22'),
(44, 'Arpon', 'Saha', 'arpon@a.com', '$2y$10$rEhNvFH9CZ01zXFpraac5uwJxPo1cKGCxJa8FPBykwawJR7ST30E.', '45621132', 'fknfogg', '2020-06-15 22:07:22', '2020-06-15 22:07:22'),
(45, 'tata', 's', 't@t.com', '$2y$10$Q1f1iiU72nLmLNwg9jxKKO.2Ac/dAMuS2fxck.h2s/SV5K5n4hwiG', '12312', 'asdsd', '2020-06-15 22:14:53', '2020-06-15 22:14:53'),
(46, 'avi', 'saha', 'avi@saha.com', '$2y$10$tbOOFG7MLMBky5H3HbC86OD9AZWDUthWvDAnrRnYATq0J1inJdsP6', '456ssds', 'sadsds', '2020-06-15 22:18:03', '2020-06-15 22:18:03'),
(48, 'santo', 'sah', 'sham.saha.09@gmail.com', '$2y$10$2MyNkfrqWRPFGw6Z.UJ4Yeq2SWwdpXpQqAInC.VAotAt8ZiycC5km', '78786', 'skdkd', '2020-06-18 02:12:17', '2020-06-18 02:12:17'),
(49, 'as', 'sas', 'q@q.com', '$2y$10$1dj6W1xfvz3/XuNaktNctOVlCzZRo4JSxdts2OvX69B8moOZEFAFa', '12165', 'sss', '2020-06-18 02:17:25', '2020-06-18 02:17:25'),
(50, 'k', 'k', 'k@k.com', '$2y$10$f.1eYqHp2VGCKL67drUufO4G8Rr0392PwdxO5hYy1DY8yj2iQbS3W', 'yyjhy', 'yjyujyj', '2020-06-19 00:11:32', '2020-06-19 00:11:32'),
(51, 'sundor', 'saha', 'sundor@a.com', '$2y$10$H4suYIMCHNaKuxLGxmvUVeVbRNYedW/QlkFCZIi0Lz0bgMX.KRKde', '32434343', '3fdfdsfdsfdsf fdsfdsfd', '2020-06-19 02:13:56', '2020-06-19 02:13:56'),
(52, 'sam', 'saha', 'sh@s.com', '$2y$10$WmQVYtd4b4fiTha532KCkOonXlgDtcHY4qmSeAYWC292Fg3XIYQKu', '015844511200', 'Dhaka,Bangladesh', '2020-06-25 03:38:03', '2020-06-25 03:38:03');

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
(3, '2020_03_16_055311_create_categories_table', 1),
(4, '2020_03_18_123206_create_brands_table', 1),
(5, '2020_03_28_041832_create_products_table', 1),
(6, '2020_06_10_092338_create_customers_table', 1),
(7, '2020_06_11_083814_create_shippings_table', 2),
(8, '2020_06_11_093857_create_orders_table', 3),
(9, '2020_06_11_093935_create_payments_table', 3),
(10, '2020_06_11_094148_create_order_details_table', 3),
(11, '2020_06_11_105521_create_payments_table', 4),
(12, '2020_06_11_112456_create_payments_table', 5),
(13, '2020_06_18_082203_create_contacts_table', 6),
(14, '2020_06_22_033035_create_add1s_table', 7),
(15, '2020_06_22_050208_create_add2s_table', 8),
(16, '2020_06_24_164700_create_shop_news_updates_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 35, 2, 15000.00, 'Pending', '2020-06-11 05:11:59', '2020-06-11 05:11:59'),
(2, 35, 2, 15000.00, 'Pending', '2020-06-11 05:13:56', '2020-06-11 05:13:56'),
(3, 35, 2, 15000.00, 'Pending', '2020-06-11 05:15:57', '2020-06-11 05:15:57'),
(4, 35, 2, 15000.00, 'Pending', '2020-06-11 05:29:19', '2020-06-11 05:29:19'),
(5, 36, 3, 4000000.00, 'Pending', '2020-06-14 20:59:44', '2020-06-14 20:59:44'),
(6, 40, 5, 36262823.00, 'Pending', '2020-06-14 21:36:43', '2020-06-14 21:36:43'),
(9, 42, 7, 10000.00, 'Pending', '2020-06-16 23:23:33', '2020-06-16 23:23:33'),
(10, 42, 8, 80000.00, 'Pending', '2020-06-18 23:20:29', '2020-06-18 23:20:29'),
(11, 50, 9, 70000.00, 'Pending', '2020-06-19 00:12:05', '2020-06-19 00:12:05'),
(12, 51, 10, 23701.00, 'Pending', '2020-06-19 02:14:20', '2020-06-19 02:14:20'),
(13, 51, 10, 4020000.00, 'Pending', '2020-06-19 02:19:18', '2020-06-19 02:19:18'),
(15, 52, 12, 12500.00, 'Pending', '2020-06-25 03:38:26', '2020-06-25 03:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(11, 12, 14, 'T-105', 4567.00, 3, '2020-06-19 02:14:20', '2020-06-19 02:14:20'),
(12, 12, 13, 'Rolex 152', 5000.00, 2, '2020-06-19 02:14:20', '2020-06-19 02:14:20'),
(13, 13, 9, 'ZX2000', 2000000.00, 2, '2020-06-19 02:19:18', '2020-06-19 02:19:18'),
(14, 13, 2, 'vivobook', 10000.00, 2, '2020-06-19 02:19:18', '2020-06-19 02:19:18'),
(15, 14, 16, 'Audi XN150', 20000.00, 4, '2020-06-25 02:56:25', '2020-06-25 02:56:25'),
(16, 15, 17, 'Wert007', 500.00, 5, '2020-06-25 03:38:26', '2020-06-25 03:38:26'),
(17, 15, 15, 'Ferrari Wx200', 10000.00, 1, '2020-06-25 03:38:26', '2020-06-25 03:38:26');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Cash', 'pending', '2020-06-11 05:29:19', '2020-06-11 05:29:19'),
(2, 5, 'Cash', 'pending', '2020-06-14 20:59:44', '2020-06-14 20:59:44'),
(3, 6, 'Cash', 'pending', '2020-06-14 21:36:43', '2020-06-14 21:36:43'),
(4, 7, 'Cash', 'pending', '2020-06-16 22:23:17', '2020-06-16 22:23:17'),
(5, 8, 'Cash', 'pending', '2020-06-16 23:20:20', '2020-06-16 23:20:20'),
(6, 9, 'Cash', 'pending', '2020-06-16 23:23:33', '2020-06-16 23:23:33'),
(7, 10, 'Cash', 'pending', '2020-06-18 23:20:29', '2020-06-18 23:20:29'),
(8, 11, 'Cash', 'pending', '2020-06-19 00:12:05', '2020-06-19 00:12:05'),
(9, 12, 'Cash', 'pending', '2020-06-19 02:14:20', '2020-06-19 02:14:20'),
(10, 13, 'Cash', 'pending', '2020-06-19 02:19:18', '2020-06-19 02:19:18'),
(11, 14, 'Cash', 'pending', '2020-06-25 02:56:25', '2020-06-25 02:56:25'),
(12, 15, 'Cash', 'pending', '2020-06-25 03:38:26', '2020-06-25 03:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 'Inspiron 15', 50000.00, 5, 'Dell Inc., formerly PC\'s Limited (1984–88) and Dell Computer Corporation (1988–2003), global company that designs, develops, and manufactures personal computers (PCs) and a variety of computer-related products. The company is one of the world\'s leading suppliers of PCs. Dell is headquartered in Round Rock, Texas.', '<p><em>Dell</em> Technologies Inc. is an American multinational technology company headquartered in ... software, computer security and network security, as well as <em>information</em> security services. ... Wikipedia semi-protected pages &middot; Articles with <em>short description</em> &middot; Use American English from September 2016 &middot; All Wikipedia articles&nbsp;...</p>', 'product-image/product_200610055508.jpg', 1, '2020-06-10 11:55:08', '2020-06-10 11:55:08'),
(2, 1, 12, 'vivobook', 10000.00, 5, 'AsusTek Computer Inc is a Taiwan-based multinational computer and phone hardware and ... organizations, internal Asus documents, and sensitive personal information including CVs. ... \"ASUS pins future on small and inexpensive laptop\".', '<p>The <em>Asus</em> Vivo lineup consists of laptops (VivoBooks), All-in-Ones (Vivo AiO), desktops (VivoPC), Stick PCs (VivoStick), Mini PCs (VivoMini), smartwatches (VivoWatch), computer mouse (VivoMouse) and tablets (VivoTab). Like with many other Windows computers, various different configurations of <em>specification</em> exist of ... The VivoMini is a lineup of <em>small</em> form factor&nbsp;</p>', 'product-image/product_200610055639.jpg', 1, '2020-06-10 11:56:39', '2020-06-10 11:56:39'),
(3, 2, 15, 'Note 8', 20000.00, 2, 'Xiaomi released its first smartphone in August 2011 and rapidly gained market share in China to become the country\'s largest smartphone company in 2014.[5] At the start of second quarter of 2018, Xiaomi was the world\'s fourth-largest smartphone manufacturer,[6][7][8] leading in both the largest market, China, and the second-largest market, India.[9] Xiaomi later developed a wider range of consumer electronics, including a smart home (IoT) device ecosystem, which has connected more than 100 million smart devices.[10][11][12][13] Monthly active users (MAUs) of MIUI increased to 291.6 million in September 2019.[1', '<p>On 6 April 2010 Xiaomi was co-founded by <a href=\"https://en.wikipedia.org/wiki/Lei_Jun\">Lei Jun</a> and six others:</p>\r\n\r\n<ul>\r\n	<li>Lin Bin, vice president of the <a href=\"https://en.wikipedia.org/wiki/Google_China\">Google China</a> Institute of Engineering</li>\r\n	<li>Dr. Zhou Guangping, senior director of the Motorola Beijing R&amp;D center</li>\r\n	<li>Liu De, department head of industrial design at the <a href=\"https://en.wikipedia.org/wiki/Beijing_Institute_of_Technology\">Beijing Institute of Technology</a></li>\r\n	<li>Li Wanqiang, general manager of <a href=\"https://en.wikipedia.org/wiki/Kingsoft\">Kingsoft</a> Dictionary</li>\r\n	<li>Wong Kong-Kat, principal development manager</li>\r\n	<li>Hong Feng, senior product manager for Google China</li>\r\n</ul>\r\n\r\n<p>In the first round of funding, institutional investors included <a href=\"https://en.wikipedia.org/wiki/Temasek_Holdings\">Temasek Holdings</a>, <a href=\"https://en.wikipedia.org/wiki/IDG_Capital\">IDG Capital</a>, Qiming Venture Partners<a href=\"https://en.wikipedia.org/wiki/Xiaomi#cite_note-nyt-22\">[22]</a> and <a href=\"https://en.wikipedia.org/wiki/Qualcomm\">Qualcomm</a>.<a href=\"https://en.wikipedia.org/wiki/Xiaomi#cite_note-23\">[23]</a></p>\r\n\r\n<p>On 16 August 2010, Xiaomi officially launched its first <a href=\"https://en.wikipedia.org/wiki/Android_(operating_system)\">Android</a>-based firmware <a href=\"https://en.wikipedia.org/wiki/MIUI\">MIUI</a>.<a href=\"https://en.wikipedia.org/wiki/Xiaomi#cite_note-24\">[24]</a> It resembles <a href=\"https://en.wikipedia.org/wiki/Touchwiz\">Samsung&#39;s TouchWiz</a> and <a href=\"https://en.wikipedia.org/wiki/IOS\">Apple&#39;s iOS</a>.</p>\r\n\r\n<h3>2011</h3>\r\n\r\n<p>The <a href=\"https://en.wikipedia.org/wiki/Xiaomi_Mi1\">Xiaomi Mi 1</a> smartphone was announced in August 2011. The device had Xiaomi&#39;s MIUI firmware along with Android installation. The first Xiaomi Mi 1 smartphone was then commercially appeared in Asia and East Asia technological markets.<a href=\"https://en.wikipedia.org/wiki/Xiaomi#cite_note-25\">[25]</a></p>\r\n\r\n<h3>2012</h3>\r\n\r\n<p>In August 2012, following the first version of smartphone, Xiaomi Corporation announced its new device called <a href=\"https://en.wikipedia.org/wiki/Xiaomi_Mi2\">Xiaomi Mi 2</a> smartphone. It was improved from the previous version by updating the new firmware with the most updated Android Version</p>', 'product-image/product_200610055826.jpg', 1, '2020-06-10 11:58:26', '2020-06-10 11:58:26'),
(4, 2, 16, 'Iphone 11', 50000.00, 3, 'he iPhone 11 is a smartphone designed, developed, and marketed by Apple Inc. It is the thirteenth generation lower-priced iPhone, succeeding the iPhone XR. It was unveiled on September 10, 2019, alongside the higher-end iPhone 11 Pro flagship at the Steve Jobs Theater in Apple Park, Cupertino by Apple CEO Tim Cook. Pre-orders began on September 13, 2019, and was officially released on September 20, 2019, one day after the official public release of iOS 13.', '<p>Details regarding the smartphone were leaked widely before the official release, with complete specifications and renderings of the phone being publicized, many of which turned out to be correct, such as advancements in the camera and the keeping of the &#39;notch&#39; design from the frontal camera featured since the <a href=\"https://en.wikipedia.org/wiki/IPhone_X\">iPhone X</a>.<a href=\"https://en.wikipedia.org/wiki/IPhone_11#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/IPhone_11#cite_note-9\">[9]</a><a href=\"https://en.wikipedia.org/wiki/IPhone_11#cite_note-10\">[10]</a> Official release event invites sent out to press featured layered colored glass elements organized to form the Apple logo, which some reviewers drew similarities to Apple&#39;s original logo, suggesting new colors for the phone, and to a patent Apple filed for a new camera design earlier.<a href=\"https://en.wikipedia.org/wiki/IPhone_11#cite_note-11\">[11]</a><a href=\"https://en.wikipedia.org/wiki/IPhone_11#cite_note-12\">[12]</a></p>\r\n\r\n<h2>Design</h2>\r\n\r\n<p>The iPhone 11 is available in six colors: Purple, Yellow, Green, Black, White, and Product (Red). There is a notch at the front for the TrueDepth camera system and speaker, similar to its predecessor, the <a href=\"https://en.wikipedia.org/wiki/IPhone_XR\">iPhone XR</a>. There is a bump in the back for the cameras and the flash that is the same size as the iPhone 11 Pro, although the iPhone 11 only has two cameras compared to the Pro&#39;s three cameras.<a href=\"https://en.wikipedia.org/wiki/IPhone_11#cite_note-:0-7\">[7]</a><a href=\"https://en.wikipedia.org/wiki/IPhone_11#cite_note-introduce-4\">[4]</a> Also, the iPhone 11 has a matte glass rear camera housing and glossy glass back, while the iPhone 11 Pro has a glossy glass rear camera housing and matte glass back. The Apple logo is now centered on the back of the device with no text, a change from previous models.</p>', 'product-image/product_200610055925.jpg', 1, '2020-06-10 11:59:25', '2020-06-10 11:59:25'),
(5, 2, 16, 'Iphone12', 60000.00, 31, 'The iPhone is a line of touchscreen-based smartphones designed and marketed by Apple Inc. ... A fourth ring in the audio jack carries this extra information.', '<p><em>Notes</em> 1 The Singapore Film Commission&#39;s now defunct Short Film Grant supported over 70 short films in 2006, compared with only <em>11 short</em> films in 1998. ... 3 The name Viki is a combination of video and <em>wiki</em> since, like <em>Wikipedia</em>, the site also ... <em>phones</em> (Racoma 2013), and Viddsee launched a mobile app in June 2021.</p>', 'product-image/product_200610060029.jpg', 1, '2020-06-10 12:00:29', '2020-06-10 12:00:29'),
(6, 0, 0, 'Galaxy s4', 33333.00, 33, 'amsung is a South Korean multinational conglomerate headquartered in Samsung Town, ... Apple then sought to ban the sales of eight Samsung phones (Galaxy S 4G, ... Samsung Electronics is a multinational electronics and information', '<p>Samsung Galaxy devices use the <a href=\"https://en.wikipedia.org/wiki/Android_(operating_system)\">Android operating system</a> produced by <a href=\"https://en.wikipedia.org/wiki/Google\">Google</a>, usually with a custom user interface called <a href=\"https://en.wikipedia.org/wiki/One_UI\">One UI</a> (with previous versions being known as <a href=\"https://en.wikipedia.org/wiki/Samsung_Experience\">Samsung Experience</a> and <a href=\"https://en.wikipedia.org/wiki/TouchWiz\">TouchWiz</a>). However, the <a href=\"https://en.wikipedia.org/wiki/Samsung_Galaxy_TabPro_S\">Galaxy TabPro S</a> is the first Galaxy-branded <a href=\"https://en.wikipedia.org/wiki/Windows_10\">Windows 10</a> device that was announced in <a href=\"https://en.wikipedia.org/wiki/CES_2016\">CES 2016</a>. The Galaxy Watch is the first Galaxy-branded smartwatch since the release of later iterations of the Gear smartwatch from 2014 to 2017. In April 2019, the company announced that it would postpone the release of its folding smartphone, the <a href=\"https://en.wikipedia.org/wiki/Samsung_Galaxy_Fold\">Samsung Galaxy Fold</a>, days after several early reviewers said the screens on their devices had broken;<a href=\"https://en.wikipedia.org/wiki/Samsung_Galaxy#cite_note-1\">[1]</a> the Fold was rereleased in September 2019.<a href=\"https://en.wikipedia.org/wiki/Samsung_Galaxy#cite_note-2\">[2]</a></p>', 'product-image/product_200610061235.jpg', 1, '2020-06-10 12:01:35', '2020-06-10 12:12:35'),
(7, 3, 6, 'Apache v3', 555555.00, 43, 'he TVS Apache is a brand of motorcycle made by TVS Motors since 2006. In 2008 the company claimed that more than 2.5 million Apaches were on the road.', '<p><em>TVS</em> Motor Company (<em>T.V.S</em>) is an Indian multinational motorcycle company headquartered at ... Recent Launches include the flagship model <em>TVS Apache</em> RR 310, the <em>TVS</em> ... In the <em>short</em> term, they will be continue production of motorcycles at Donington park ... <em>Definition</em> &middot; History &middot; Museums &middot; Motorcycle occupations &middot; Safety.</p>', 'product-image/product_200610060244.jpg', 1, '2020-06-10 12:02:44', '2020-06-10 12:02:44'),
(8, 3, 7, 'P29', 222222.00, 11, 'The Bajaj Pulsar is a motorcycle manufactured by Bajaj Auto in India. It was developed by the ... However very few small capacity engines did eventually implement such a scheme in their production prototypes. ... In February 2008, the Madras High Court in Chennai restrained TVS from launching it with the twin spark plug .', '<p>ajaj Auto Limited is an Indian global two-wheeler company and three-wheeler manufacturing ... Motorcycles produced by Bajaj include the Platina, Discover, <em>Pulsar</em>, Avenger, Dominar 400 and CT 100. ... (3.3 L/100 km), or twice an average <em>small</em> car, and carbon dioxide emissions of 100 g/km. ... ZF Electronics <em>TVS</em>.</p>', 'product-image/product_200610060339.jpg', 1, '2020-06-10 12:03:39', '2020-06-10 12:03:39'),
(9, 3, 8, 'ZX2000', 2000000.00, 22, 'BMW Motorrad is the motorcycle brand of the German company BMW, part of its Corporate and ... An \"Oilhead\" is a name to describe BMW flat-twin motorcycle engines with partial oil-cooling, and to ... rather than a true overhead camshaft unit, as the camshaft bears onto very short pushrods which operate valve rockers).', '<p><em>BMW</em>&#39;s <em>motorcycle</em> history began in 1921 when the company commenced manufacturing ... To remain in business, the company began producing <em>small</em> industrial ... Special pages &middot; Permanent link &middot; Page <em>information</em> &middot; Cite this page &middot; Wikidata</p>', 'product-image/product_200610060503.jpg', 1, '2020-06-10 12:05:03', '2020-06-10 12:05:03'),
(10, 4, 9, 'STR 2005', 33222333.00, 33, 'Audi is a member of the Volkswagen Group and has its roots at Ingolstadt, Bavaria, Germany. Audi-branded vehicles are produced in nine production facilities worldwide.\r\n...', '<p><strong>Audi AG</strong> (<small>German: </small><a href=\"https://en.wikipedia.org/wiki/Help:IPA/Standard_German\">[ˈaʊ̯di ʔaːˈɡeː]</a> (<a href=\"https://en.wikipedia.org/wiki/File:Audi_AG.ogg\"><img alt=\"About this sound\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" style=\"height:11px; width:11px\" /></a><a href=\"https://upload.wikimedia.org/wikipedia/commons/8/8e/Audi_AG.ogg\">listen</a>)) is a <a href=\"https://en.wikipedia.org/wiki/Germany\">German</a> <a href=\"https://en.wikipedia.org/wiki/Automobile_manufacturer\">automobile manufacturer</a> that designs, engineers, produces, markets and distributes <a href=\"https://en.wikipedia.org/wiki/Luxury_vehicle\">luxury vehicles</a>. Audi is a member of the <a href=\"https://en.wikipedia.org/wiki/Volkswagen_Group\">Volkswagen Group</a> and has its roots at <a href=\"https://en.wikipedia.org/wiki/Ingolstadt\">Ingolstadt</a>, <a href=\"https://en.wikipedia.org/wiki/Bavaria\">Bavaria</a>, Germany. Audi-branded vehicles are produced in nine production facilities worldwide.</p>\r\n\r\n<p>The origins of the company are complex, going back to the early 20th century and the initial enterprises (<a href=\"https://en.wikipedia.org/wiki/Horch\">Horch</a> and the <em>Audiwerke</em>) founded by engineer <a href=\"https://en.wikipedia.org/wiki/August_Horch\">August Horch</a>; and two other manufacturers (<a href=\"https://en.wikipedia.org/wiki/DKW\">DKW</a> and <a href=\"https://en.wikipedia.org/wiki/Wanderer_(car)\">Wanderer</a>), leading to the foundation of <a href=\"https://en.wikipedia.org/wiki/Auto_Union\">Auto Union</a> in 1932. The modern era of Audi essentially began in the 1960s when Auto Union was acquired by <a href=\"https://en.wikipedia.org/wiki/Volkswagen\">Volkswagen</a> from <a href=\"https://en.wikipedia.org/wiki/Daimler-Benz\">Daimler-Benz</a>.<a href=\"https://en.wikipedia.org/wiki/Audi#cite_note-vw-holdings-2009-10\">[10]</a> After relaunching the Audi brand with the 1965 introduction of the <a href=\"https://en.wikipedia.org/wiki/Audi_F103\">Audi F103</a> series, Volkswagen merged Auto Union with <a href=\"https://en.wikipedia.org/wiki/NSU_Motorenwerke\">NSU Motorenwerke</a> in 1969, thus creating the present day form of the company.</p>\r\n\r\n<p>The company name is based on the <a href=\"https://en.wikipedia.org/wiki/Latin\">Latin</a> translation of the surname of the founder, <a href=\"https://en.wikipedia.org/wiki/August_Horch\">August Horch</a>. &quot;Horch&quot;, meaning &quot;listen&quot; in <a href=\"https://en.wikipedia.org/wiki/German_language\">German</a>, becomes &quot;audi&quot; in Latin. The four rings of the Audi logo each represent one of four car companies that banded together to create Audi&#39;s predecessor company, Auto Union. Audi&#39;s slogan is <em>Vorsprung durch Technik</em>, meaning &quot;Being Ahead through Technology&quot;. However, Audi USA had used the slogan &quot;Truth in Engineering&quot; from 2007 to 2016, and have not used the slogan since 2016.<a href=\"https://en.wikipedia.org/wiki/Audi#cite_note-11\">[11]</a> Audi, along with fellow German marques <a href=\"https://en.wikipedia.org/wiki/BMW\">BMW</a> and <a href=\"https://en.wikipedia.org/wiki/Mercedes-Benz\">Mercedes-Benz</a>, is among the best-selling luxury automobile brands in the world.<a href=\"https://en.wikipedia.org/wiki/Audi#cite_note-12\">[12]</a></p>', 'product-image/product_200610060605.jpg', 1, '2020-06-10 12:06:05', '2020-06-10 12:06:05'),
(11, 4, 9, 'WDS 2020', 2222222.00, 2, 'Automobile company Wanderer was originally established in 1885, later becoming a branch of Audi AG. Another company, NSU, which also later merged into Audi, was founded during this time, and later supplied the chassis for Gottlieb Daimler\'s four-wheeler.[13]', '<p>In August 1928, <a href=\"https://en.wikipedia.org/wiki/J%C3%B8rgen_Skafte_Rasmussen\">J&oslash;rgen Rasmussen</a>, the owner of <a href=\"https://en.wikipedia.org/wiki/Dampf-Kraft-Wagen\">Dampf-Kraft-Wagen</a> (DKW), acquired the majority of shares in Audiwerke AG.<a href=\"https://en.wikipedia.org/wiki/Audi#cite_note-chronicle4-22\">[22]</a> In the same year, Rasmussen bought the remains of the U.S. <a href=\"https://en.wikipedia.org/wiki/Automobile_manufacturer\">automobile manufacturer</a> <a href=\"https://en.wikipedia.org/wiki/Rickenbacker_(car)\">Rickenbacker</a>, including the manufacturing equipment for 8-cylinder engines. These engines were used in <em>Audi Zwickau</em> and <em>Audi Dresden</em> models that were launched in 1929. At the same time, 6-cylinder and 4-cylinder (<a href=\"https://en.wikipedia.org/wiki/Audi_Type_P\">the &quot;four&quot;</a> with a <a href=\"https://en.wikipedia.org/wiki/Peugeot\">Peugeot</a> engine) models were manufactured. Audi cars of that era were luxurious cars equipped with special bodywork.</p>\r\n\r\n<p>In 1932, Audi merged with <a href=\"https://en.wikipedia.org/wiki/Horch\">Horch</a>, DKW, and <a href=\"https://en.wikipedia.org/wiki/Wanderer_(car)\">Wanderer</a>, to form <a href=\"https://en.wikipedia.org/wiki/Auto_Union\">Auto Union</a> AG, <a href=\"https://en.wikipedia.org/wiki/Chemnitz\">Chemnitz</a>. It was during this period that the company offered the <a href=\"https://en.wikipedia.org/wiki/Audi_Front\">Audi Front</a> that became the first European car to combine a six-cylinder engine with front-wheel drive. It used a power train shared with the Wanderer, but turned 180 degrees, so that the drive shaft faced the front.</p>\r\n\r\n<p>Before <a href=\"https://en.wikipedia.org/wiki/World_War_II\">World War II</a>, Auto Union used the four interlinked rings that make up the Audi badge today, representing these four brands. However, this badge was used only on Auto Union racing cars in that period while the member companies used their own names and emblems. The technological development became more and more concentrated and some Audi models were propelled by Horch or Wanderer built engines.</p>\r\n\r\n<p>Reflecting the economic pressures of the time, Auto Union concentrated increasingly on smaller cars through the 1930s, so that by 1938 the company&#39;s DKW brand accounted for 17.9% of the German car market, while Audi held only 0.1%. After the final few Audis were delivered in 1939 the &quot;Audi&quot; name disappeared completely from the new car market for more than two decades.</p>', 'product-image/product_200610060724.jpg', 1, '2020-06-10 12:07:24', '2020-06-10 12:07:24'),
(12, 4, 10, 'Ferrari 215', 800000.00, 4, 'n 2014 Ferrari was rated the world\'s most powerful brand by Brand Finance.[3] In June 2018, the 1963 250 GTO became the most expensive car in history, setting an all-time record selling price of $70 million.[4][5]', '<p><strong>Ferrari</strong> (<a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/fəˈrɑːri/</a>; <small>Italian:&nbsp;</small><a href=\"https://en.wikipedia.org/wiki/Help:IPA/Italian\">[ferˈraːri]</a>) is an <a href=\"https://en.wikipedia.org/wiki/Italy\">Italian</a>-<a href=\"https://en.wikipedia.org/wiki/Netherlands\">Dutch</a> <a href=\"https://en.wikipedia.org/wiki/Luxury_vehicle\">luxury</a> <a href=\"https://en.wikipedia.org/wiki/Sports_car\">sports car</a> <a href=\"https://en.wikipedia.org/wiki/Manufacturer\">manufacturer</a> based in <a href=\"https://en.wikipedia.org/wiki/Maranello\">Maranello</a>. Founded by <a href=\"https://en.wikipedia.org/wiki/Enzo_Ferrari\">Enzo Ferrari</a> in 1939 out of <a href=\"https://en.wikipedia.org/wiki/Alfa_Romeo\">Alfa Romeo&#39;s</a> race division as <em>Auto Avio Costruzioni</em>, the company built <a href=\"https://en.wikipedia.org/wiki/Auto_Avio_Costruzioni_815\">its first car</a> in 1940. However, the company&#39;s inception as an <a href=\"https://en.wikipedia.org/wiki/Auto_manufacturer\">auto manufacturer</a> is usually recognized in 1947, when the first Ferrari-badged car was completed.</p>\r\n\r\n<p>In 2014 Ferrari was rated the world&#39;s most powerful brand by <a href=\"https://en.wikipedia.org/wiki/Brand_Finance\">Brand Finance</a>.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-3\">[3]</a> In June 2018, the 1963 <a href=\"https://en.wikipedia.org/wiki/Ferrari_250_GTO\">250 GTO</a> became the most expensive car in history, setting an all-time record selling price of $70 million.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-Hemmings-20180605-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-bloomberg.com-5\">[5]</a></p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Fiat_S.p.A.\">Fiat S.p.A.</a> acquired 50% of Ferrari in 1969 and expanded its stake to 90% in 1988.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-6\">[6]</a> In October 2014 <a href=\"https://en.wikipedia.org/wiki/Fiat_Chrysler_Automobiles\">Fiat Chrysler Automobiles N.V.</a> (FCA) announced its intentions to separate Ferrari <a href=\"https://en.wikipedia.org/wiki/Societ%C3%A0_per_Azioni\">S.p.A.</a> from FCA; as of the announcement FCA owned 90% of Ferrari.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-7\">[7]</a><a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-9\">[9]</a> The separation began in October 2015 with a restructuring that established Ferrari N.V. (a company incorporated in the Netherlands) as the new holding company of the Ferrari group and the subsequent sale by FCA of 10% of the shares in an <a href=\"https://en.wikipedia.org/wiki/Initial_public_offering\">IPO</a> and concurrent listing of <a href=\"https://en.wikipedia.org/wiki/Common_share\">common shares</a> on the <a href=\"https://en.wikipedia.org/wiki/New_York_Stock_Exchange\">New York Stock Exchange</a>.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-spinoff-qa-10\">[10]</a> Through the remaining steps of the separation, FCA&#39;s interest in Ferrari&#39;s business was distributed to shareholders of FCA, with 10% continuing to be owned by <a href=\"https://en.wikipedia.org/wiki/Piero_Ferrari\">Piero Ferrari</a>.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-11\">[11]</a> The spin-off was completed on 3 January 2016.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-spinoff-qa-10\">[10]</a></p>\r\n\r\n<p>Throughout its history, the company has been noted for its continued participation in <a href=\"https://en.wikipedia.org/wiki/Auto_racing\">racing</a>, especially in <a href=\"https://en.wikipedia.org/wiki/Formula_One\">Formula One</a>, where it is the oldest and <a href=\"https://en.wikipedia.org/wiki/Scuderia_Ferrari\">most successful racing team</a>, holding the most constructors championships (16) and having produced the highest number of drivers&#39; championship wins (15).<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-12\">[12]</a> Ferrari road cars are generally seen as a symbol of speed, luxury and wealth.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-13\">[13]</a> Ferrari cars are built at the 165,000 square-meter (16.5-hectare) <a href=\"https://en.wikipedia.org/wiki/Maranello\">Maranello</a> factory.<a href=\"https://en.wikipedia.org/wiki/Ferrari#cite_note-14\">[14]</a></p>', 'product-image/product_200610060847.jpg', 1, '2020-06-10 12:08:47', '2020-06-10 12:08:47'),
(13, 0, 0, 'Rolex 152', 5000.00, 34, 'Rolex SA and its subsidiary Montres Tudor SA design, manufacture, distribute and service wristwatches sold under the Rolex and Tudor brands. In 2018.', '<p><strong>Rolex SA</strong> (<a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/ˈroʊlɛks/</a>) is a <a href=\"https://en.wikipedia.org/wiki/Switzerland\">Swiss</a> luxury <a href=\"https://en.wikipedia.org/wiki/Watch\">watch</a> manufacturer based in <a href=\"https://en.wikipedia.org/wiki/Geneva,_Switzerland\">Geneva, Switzerland</a>.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:5-3\">[3]</a> Originally founded as <em>Wilsdorf and Davis</em> by <a href=\"https://en.wikipedia.org/wiki/Hans_Wilsdorf\">Hans Wilsdorf</a> and Alfred Davis in <a href=\"https://en.wikipedia.org/wiki/London,_England\">London, England</a> in 1905, the company registered <em>Rolex</em> as the brand name of its watches in 1908 and became <em>Rolex Watch Co. Ltd.</em> in 1915.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:3-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:1-5\">[5]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:0-6\">[6]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:7-7\">[7]</a> After <a href=\"https://en.wikipedia.org/wiki/World_War_I\">World War I</a>, the company moved its base of operations to Geneva, Switzerland to avoid heavy taxation in post-war <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\">Britain</a>, and in 1920 Hans Wilsdorf registered <em>Montres Rolex SA</em> in Geneva as the new company name which eventually became <em>Rolex SA</em> in later years.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:5-3\">[3]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:1-5\">[5]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-8\">[8]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:4-9\">[9]</a> Since 1960, the company has been owned by the Hans Wilsdorf Foundation, a private family trust.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:0-6\">[6]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-Stone-11\">[11]</a></p>\r\n\r\n<p>Rolex SA and its subsidiary <em><a href=\"https://en.wikipedia.org/wiki/Montres_Tudor_(SA)\">Montres Tudor SA</a></em> design, manufacture, distribute and service wristwatches sold under the Rolex and Tudor brands. In 2018, <em><a href=\"https://en.wikipedia.org/wiki/Forbes\">Forbes</a></em> ranked Rolex as the world&#39;s 71st most valuable brand.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:6-1\">[1]</a> As of June 2019, among the world&#39;s top ten <a href=\"https://en.wikipedia.org/wiki/List_of_most_expensive_watches_sold_at_auction\">most expensive watches ever sold at auctions</a>, three are Rolex watches. In particular, <a href=\"https://en.wikipedia.org/wiki/Paul_Newman\">Paul Newman</a>&#39;s <a href=\"https://en.wikipedia.org/wiki/Rolex_Daytona#October_2017_auction\">Rolex Daytona</a> currently holds the title of the second most expensive <a href=\"https://en.wikipedia.org/wiki/Wristwatch\">wristwatch</a> and the third most expensive watch ever sold at auction, fetching 17.75 million US dollars in <a href=\"https://en.wikipedia.org/wiki/New_York_City\">New York</a> on October 26, 2017.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-12\">[12]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-13\">[13]</a><a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-:2-14\">[14]</a> Rolex is the largest manufacturer of <a href=\"https://en.wikipedia.org/wiki/Swiss_made\">Swiss made</a> certified chronometers. In 2005, more than half the annual production of watches certified by Contr&ocirc;le Officiel Suisse des Chronom&egrave;tres (<a href=\"https://en.wikipedia.org/wiki/COSC\">COSC</a>) were Rolexes.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-Rolex_production_news-15\">[15]</a> To date, Rolex still holds the record for the most certified chronometer movements in the category of wristwatches.<a href=\"https://en.wikipedia.org/wiki/Rolex#cite_note-Stone-11\">[11]</a></p>', 'product-image/product_200610061159.jpg', 1, '2020-06-10 12:09:55', '2020-06-10 12:11:59'),
(14, 5, 2, 'T-105', 4567.00, 98, 'Titan Company Ltd is the world\'s fifth largest wrist watch manufacturer and India\'s leading producer of watches. The company is engaged in manufacturing of watches, jewelry, precision engineering and Eyewear. They produce watches under the brand name Titan, Fastrack, Sonata, Nebula, RAGA, Regalia, Octane & Xylys.', '<p><strong>Titan Company Limited</strong> (earlier known as Titan Industries Limited) is an <a href=\"https://en.wikipedia.org/wiki/India\">Indian</a> <a href=\"https://en.wikipedia.org/wiki/Final_good\">consumer goods</a> company that mainly manufactures fashion accessories such as <a href=\"https://en.wikipedia.org/wiki/Watches\">watches</a>, jewellery and <a href=\"https://en.wikipedia.org/wiki/Eyewear\">eyewear</a>. Part of the <a href=\"https://en.wikipedia.org/wiki/Tata_Group\">Tata Group</a>, the company is headquartered in <a href=\"https://en.wikipedia.org/wiki/Electronic_City\">Electronic City</a>, <a href=\"https://en.wikipedia.org/wiki/Bangalore\">Bangalore</a>.<a href=\"https://en.wikipedia.org/wiki/Titan_Company#cite_note-6\">[6]</a>. It commenced operations in 1984 under the name Titan Watches Limited. In 1994, Titan diversified into jewellery with <a href=\"https://en.wikipedia.org/wiki/Tanishq\">Tanishq</a> and subsequently into eyewear with Titan Eyeplus. In 2013, Titan entered the fragrances segment with the brand Skinn<a href=\"https://en.wikipedia.org/wiki/Titan_Company#cite_note-7\">[7]</a> and later that year, it ventured into the helmets category under its brand <a href=\"https://en.wikipedia.org/wiki/Fastrack_(fashion_accessories)\">Fastrack</a>.<a href=\"https://en.wikipedia.org/wiki/Titan_Company#cite_note-8\">[8]</a>.</p>\r\n\r\n<p>Also, Titan announced recently (during the last quarter of 2016) about launching a series of affordable smartwatches under its brands like Sonata and Fastrack soon.<a href=\"https://en.wikipedia.org/wiki/Titan_Company#cite_note-9\">[9]</a>.</p>\r\n\r\n<p>Today, Titan Company is Tata Group&#39;s largest consumer company.<a href=\"https://en.wikipedia.org/wiki/Titan_Company#cite_note-10\">[10]</a></p>', 'product-image/product_200610061134.jpg', 1, '2020-06-10 12:11:34', '2020-06-10 12:11:34'),
(15, 4, 10, 'Ferrari Wx200', 10000.00, 20, 'ne of the largest companies to encourage the mass-market adoption of hybrid vehicles across the globe. Toyota is also a market leader in hydrogen fuel-cell vehicles. Cumulative global sales of Toyota and Lexus hybrid passenger car models achieved the 15 million milestone in January 2020.[10] Its Prius family is the world\'s top-selling hybrid nameplate with over 6 million units sold worldwide as of January 2017.', '<p>Ferrari is the global market leader in sales of <a href=\"https://en.wikipedia.org/wiki/Hybrid_electric_vehicle\">hybrid electric vehicles</a>, and one of the largest companies to encourage the mass-market adoption of hybrid vehicles across the globe. Toyota is also a market leader in <a href=\"https://en.wikipedia.org/wiki/Hydrogen_vehicle\">hydrogen fuel-cell</a> vehicles. Cumulative global sales of Toyota and <a href=\"https://en.wikipedia.org/wiki/Lexus\">Lexus</a> hybrid passenger car models achieved the 15&nbsp;million milestone in January 2020.<a href=\"https://en.wikipedia.org/wiki/Toyota#cite_note-TMC15miHEVs-11\">[10]</a> Its <a href=\"https://en.wikipedia.org/wiki/Prius_family\">Prius family</a> is the world&#39;s top-selling hybrid <a href=\"https://en.wikipedia.org/wiki/Nameplate\">nameplate</a> with over 6&nbsp;million units sold worldwide as of January&nbsp;2017.<a href=\"https://en.wikipedia.org/wiki/Toyota#cite_note-TMC10miHEVs-12\">[11]</a></p>\r\n\r\n<p>The company was founded by <a href=\"https://en.wikipedia.org/wiki/Kiichiro_Toyoda\">Kiichiro Toyoda</a> in 1937, as a spinoff from <a href=\"https://en.wikipedia.org/wiki/Sakichi_Toyoda\">his father&#39;s</a> company <a href=\"https://en.wikipedia.org/wiki/Toyota_Industries\">Toyota Industries</a>, to create <a href=\"https://en.wikipedia.org/wiki/Automobiles\">automobiles</a>. Three years earlier, in 1934, while still a department of Toyota Industries, it created its first product, the <a href=\"https://en.wikipedia.org/wiki/Toyota_Type_A_engine\">Type A engine</a>, and its first passenger car in 1936, the <a href=\"https://en.wikipedia.org/wiki/Toyota_AA\">Toyota AA</a>. Toyota Motor Corporation produces vehicles under five brands, including the Toyota brand, <a href=\"https://en.wikipedia.org/wiki/Hino_Motors\">Hino</a>, Lexus, <a href=\"https://en.wikipedia.org/wiki/Ranz\">Ranz</a>, and <a href=\"https://en.wikipedia.org/wiki/Daihatsu\">Daihatsu</a>. It also holds a 16.66% stake in <a href=\"https://en.wikipedia.org/wiki/Subaru_Corporation\">Subaru Corporation</a>, a 5.9% stake in <a href=\"https://en.wikipedia.org/wiki/Isuzu\">Isuzu</a> until 2018, a 5.5% stake in <a href=\"https://en.wikipedia.org/wiki/Mazda\">Mazda</a>, a 4.9% stake in <a href=\"https://en.wikipedia.org/wiki/Suzuki\">Suzuki</a>, as well as joint-ventures with two in China (<a href=\"https://en.wikipedia.org/wiki/GAC_Toyota\">GAC Toyota</a> and <a href=\"https://en.wikipedia.org/wiki/Sichuan_FAW_Toyota_Motor\">Sichuan FAW Toyota Motor</a>), one in India (<a href=\"https://en.wikipedia.org/wiki/Toyota_Kirloskar_Motor\">Toyota Kirloskar</a>), one in the Czech Republic (<a href=\"https://en.wikipedia.org/wiki/Toyota_Peugeot_Citro%C3%ABn_Automobile_Czech\">TPCA</a>), along with several &quot;nonautomotive&quot; companies.<a href=\"https://en.wikipedia.org/wiki/Toyota#cite_note-Toyota:_Non-Automotive-13\">[12]</a> TMC is part of the <a href=\"https://en.wikipedia.org/wiki/Toyota_Group\">Toyota Group</a>, one of the largest conglomerates in Japan.</p>', 'product-image/product_200616090447.jpg', 1, '2020-06-16 03:04:47', '2020-06-16 03:04:47'),
(16, 4, 9, 'Audi XN150', 20000.00, 10, 'Audi AG (German: [ˈaʊ̯di ʔaːˈɡeː] (About this soundlisten)) is a German automobile manufacturer that designs, engineers, produces, markets and distributes luxury vehicles. Audi is a member of the Volkswagen Group and has its roots at Ingolstadt, Bavaria, Germany. Audi-branded vehicles are produced in nine production facilities worldwide', '<p>The origins of the company are complex, going back to the early 20th century and the initial enterprises (<a href=\"https://en.wikipedia.org/wiki/Horch\">Horch</a> and the <em>Audiwerke</em>) founded by engineer <a href=\"https://en.wikipedia.org/wiki/August_Horch\">August Horch</a>; and two other manufacturers (<a href=\"https://en.wikipedia.org/wiki/DKW\">DKW</a> and <a href=\"https://en.wikipedia.org/wiki/Wanderer_(car)\">Wanderer</a>), leading to the foundation of <a href=\"https://en.wikipedia.org/wiki/Auto_Union\">Auto Union</a> in 1932. The modern era of Audi essentially began in the 1960s when Auto Union was acquired by <a href=\"https://en.wikipedia.org/wiki/Volkswagen\">Volkswagen</a> from <a href=\"https://en.wikipedia.org/wiki/Daimler-Benz\">Daimler-Benz</a>.<a href=\"https://en.wikipedia.org/wiki/Audi#cite_note-vw-holdings-2009-10\">[10]</a> After relaunching the Audi brand with the 1965 introduction of the <a href=\"https://en.wikipedia.org/wiki/Audi_F103\">Audi F103</a> series, Volkswagen merged Auto Union with <a href=\"https://en.wikipedia.org/wiki/NSU_Motorenwerke\">NSU Motorenwerke</a> in 1969, thus creating the present day form of the company.</p>\r\n\r\n<p>The company name is based on the <a href=\"https://en.wikipedia.org/wiki/Latin\">Latin</a> translation of the surname of the founder, <a href=\"https://en.wikipedia.org/wiki/August_Horch\">August Horch</a>. &quot;Horch&quot;, meaning &quot;listen&quot; in <a href=\"https://en.wikipedia.org/wiki/German_language\">German</a>, becomes &quot;audi&quot; in Latin. The four rings of the Audi logo each represent one of four car companies that banded together to create Audi&#39;s predecessor company, Auto Union. Audi&#39;s slogan is <em>Vorsprung durch Technik</em>, meaning &quot;Being Ahead through Technology&quot;. However, Audi USA had used the slogan &quot;Truth in Engineering&quot; from 2007 to 2016, and have not used the slogan since 2016.<a href=\"https://en.wikipedia.org/wiki/Audi#cite_note-11\">[11]</a> Audi, along with fellow German marques <a href=\"https://en.wikipedia.org/wiki/BMW\">BMW</a> and <a href=\"https://en.wikipedia.org/wiki/Mercedes-Benz\">Mercedes-Benz</a>, is among the best-selling luxury automobile brands in the world.<a href=\"https://en.wikipedia.org/wiki/Audi#cite_note-12\">[12]</a></p>', 'product-image/product_200616090600.jpg', 1, '2020-06-16 03:06:00', '2020-06-16 03:06:00'),
(17, 8, 18, 'Wert007', 500.00, 4, 'Headphones are made in a range of different audio reproduction quality capabilities.', '<p>Headphones (or head-phones in the early days of telephony and radio) traditionally refer to a pair of small loudspeaker drivers worn on or around the head over a user&#39;s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. Headphones are also known as earspeakers, earphones[1] or, colloquially, cans.[2] Circumaural (&#39;around the ear&#39;) and supra-aural (&#39;over the ear&#39;) headphones use a band over the top of the head to hold the speakers in place. Another type, known as earbuds or earpieces[1] consist of individual units that plug into the user&#39;s ear canal. A third type are bone conduction headphones, which typically wrap around the back of the head and rest in front of the ear canal, leaving the ear canal open. In the context of telecommunication, a headset is a combination of headphone and microphone.</p>\r\n\r\n<p>Headphones connect to a signal source such as an audio amplifier, radio, CD player, portable media player, mobile phone, video game console, or electronic musical instrument, either directly using a cord, or using wireless technology such as Bluetooth, DECT or FM radio. The first headphones were developed in the late 19th century for use by telephone operators, to keep their hands free. Initially the audio quality was mediocre and a step forward was the invention of high fidelity headphones.[3]</p>\r\n\r\n<p>Headphones are made in a range of different audio reproduction quality capabilities.<br />\r\nHeadsets designed for telephone use typically cannot reproduce sound with the high fidelity of expensive units designed for music listening by audiophiles. Headphones that use cables typically have either a 1/4 inch (6.35mm) or 1/8 inch (3.5mm) phone jack for plugging the headphones into the audio source. Some stereo earbuds are wireless, using Bluetooth connectivity to transmit the audio signal by radio waves from source devices like cellphones and digital players.[4] Due to the spread of wireless devices in recent years headphones are increasingly used by people in public places such as sidewalks, grocery stores, and public transit. Headphones are also used by people in various professional contexts, such as audio engineers mixing sound for live concerts or sound recordings and DJs, who use headphones to cue up the next song without the audience hearing, aircraft pilots and call center employees. The latter two types of employees use headphones with an integrated microphone.</p>', 'product-image/product_200625090550.jpg', 1, '2020-06-25 03:05:50', '2020-06-25 03:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'shyam Saha', 'sham096sham@gmail.com', '01852369222', 'Dhaka,Bangladesh', '2020-06-11 03:05:58', '2020-06-11 03:05:58'),
(2, 'arnob saha', 's@d.com', '1234', 'dsafgh', '2020-06-11 04:44:35', '2020-06-11 04:44:35'),
(3, 'arojit saha', 'q@g.com', '0165874', 'ffsff', '2020-06-14 20:59:35', '2020-06-14 20:59:35'),
(4, 'q wasifer', 'q@g.com', '12', 'sqsa', '2020-06-14 21:00:39', '2020-06-14 21:00:39'),
(5, 'sham saha', 'sham096sham@gmail.com', '123', 'bhddd', '2020-06-14 21:30:34', '2020-06-14 21:30:34'),
(6, 'arnob saha', 'arnob@2.com', '789456', 'Tangail', '2020-06-16 22:23:12', '2020-06-16 22:23:12'),
(7, 'arnob saha', 'arnob@2.com', '789456', 'jnkjnk', '2020-06-16 23:20:15', '2020-06-16 23:20:15'),
(8, 'arnob saha', 'arnob@2.com', '789456', 'jnkjnk', '2020-06-18 23:20:19', '2020-06-18 23:20:19'),
(9, 'k k', 'k@k.com', 'yyjhy', 'yjyujyj', '2020-06-19 00:11:47', '2020-06-19 00:11:47'),
(10, 'Shyam Sundor Saha', 'sundor@a.com', '32434343', '3fdfdsfdsfdsf fdsfdsfd', '2020-06-19 02:14:16', '2020-06-19 02:14:16'),
(11, 'arnob saha', 'arnob@2.com', '789456', 'jnkjnk', '2020-06-25 02:56:19', '2020-06-25 02:56:19'),
(12, 'Shyam Saha', 'sh@s.com', '015844511200', 'Dhaka,Bangladesh', '2020-06-25 03:38:20', '2020-06-25 03:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `shop_news_updates`
--

CREATE TABLE `shop_news_updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_headline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_news_updates`
--

INSERT INTO `shop_news_updates` (`id`, `news_headline`, `news_description`, `created_at`, `updated_at`) VALUES
(1, 'New Shop Open', 'value=\"Numbers like these are very encouraging for small business owners and should give you confidence that traditional retail isn&rsquo;t dead.\r\nHowever, that doesn&rsquo;t mean it&rsquo;s easy. Opening a retail shop and being in business for yourself can be very rewarding, but if you&rsquo;re not careful it can quickly go downhill. Like all other successful milestones in life, like owning your first home, it takes time, dedication, and hard work to find the perfect house and turn into a home, your home. The same applies to starting a business. You need to take the time to plan, go through the proper channels and steps, and dedicate yourself to making it successful.', '2020-06-24 10:57:22', '2020-06-24 21:11:11'),
(10, 'Off day', 'Headphones (or head-phones in the early days of telephony and radio) traditionally refer to a pair of small loudspeaker drivers worn on or around the head over a user\'s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. Headphones are also known as earspeakers, earphones[1] or, colloquially, cans.[2] Circumaural (\'around the ear\') and supra-aural (\'over the ear\') headphones use a band over the top of the head to hold the speakers in place. Another type, known as earbuds or earpieces[1] consist of individual units that plug into the user\'s ear canal. A third type are bone conduction headphones, which typically wrap around the back of the head and rest in front of the ear canal, leaving the ear canal open. In the context of telecommunication, a headset is a combination of headphone and microphone.\r\n\r\nHeadphones connect to a signal source such as an audio amplifier, radio, CD player, portable media player, mobile phone, video game console, or electronic musical instrument, either directly using a cord, or using wireless technology such as Bluetooth, DECT or FM radio. The first headphones were developed in the late 19th century for use by telephone operators, to keep their hands free. Initially the audio quality was mediocre and a step forward was the invention of high fidelity headphones.[3]\r\n\r\nHeadphones are made in a range of different audio reproduction quality capabilities.\r\nHeadsets designed for telephone use typically cannot reproduce sound with the high fidelity of expensive units designed for music listening by audiophiles. Headphones that use cables typically have either a 1/4 inch (6.35mm) or 1/8 inch (3.5mm) phone jack for plugging the headphones into the audio source. Some stereo earbuds are wireless, using Bluetooth connectivity to transmit the audio signal by radio waves from source devices like cellphones and digital players.[4] Due to the spread of wireless devices in recent years headphones are increasingly used by people in public places such as sidewalks, grocery stores, and public transit. Headphones are also used by people in various professional contexts, such as audio engineers mixing sound for live concerts or sound recordings and DJs, who use headphones to cue up the next song without the audience hearing, aircraft pilots and call center employees. The latter two types of employees use headphones with an integrated microphone.', '2020-06-25 03:08:43', '2020-06-25 03:08:43');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 's', 's@s.com', NULL, '$2y$10$noLNybL8CngDBDM40u4gaOZdcxaDxNVHALGtb252Q8XYHo3Ql9YGq', NULL, '2020-06-10 11:18:55', '2020-06-10 11:18:55'),
(2, 'b', 'b@b.com', NULL, '$2y$10$7TC/LzdNdWl6YDT/LSxHG.xw6jcqhkYMQ/kSSQQ5MOv781fTk0AwO', NULL, '2020-06-16 03:01:06', '2020-06-16 03:01:06'),
(3, 'y', 'y@y.co', NULL, '$2y$10$MlgaFXHSbvIAVfGL/7F/k.8uAjdVJ4SvOz9NvLitZJZVFNtGoZmxu', NULL, '2020-06-18 21:04:02', '2020-06-18 21:04:02'),
(4, 'z', 'z@z.com', NULL, '$2y$10$Puu.e3MT3ukfWSKzC30coekusiMt6ynu2cCn.4VLKHhCKEh/DMgIe', NULL, '2020-06-20 21:14:09', '2020-06-20 21:14:09'),
(5, 'sham', 's@y.com', NULL, '$2y$10$v6DWtFhJGEJIdCo6apRFReDUsWK5lWHqopJ7YqTdLt5EvUS1gcmDa', NULL, '2020-06-25 03:00:20', '2020-06-25 03:00:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add1s`
--
ALTER TABLE `add1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add2s`
--
ALTER TABLE `add2s`
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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_news_updates`
--
ALTER TABLE `shop_news_updates`
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
-- AUTO_INCREMENT for table `add1s`
--
ALTER TABLE `add1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `add2s`
--
ALTER TABLE `add2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop_news_updates`
--
ALTER TABLE `shop_news_updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
