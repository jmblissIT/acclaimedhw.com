-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2021 at 05:02 AM
-- Server version: 10.2.40-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acclaimedhw_main_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_leaders`
--

CREATE TABLE `about_leaders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `all_states`
--

CREATE TABLE `all_states` (
  `id` bigint(255) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_states`
--

INSERT INTO `all_states` (`id`, `state_name`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Indiana'),
(15, 'Iowa'),
(16, 'Kansas'),
(17, 'Kentucky'),
(18, 'Louisiana'),
(19, 'Maine'),
(20, 'Maryland'),
(21, 'Massachusetts'),
(22, 'Michigan'),
(23, 'Minnesota'),
(24, 'Mississippi'),
(25, 'Missouri'),
(26, 'Montana'),
(27, 'Nebraska'),
(28, 'Nevada'),
(29, 'New Hampshire'),
(30, 'New Jersey'),
(31, 'New Mexico'),
(32, 'New York'),
(33, 'North Carolina'),
(34, 'North Dakota'),
(35, 'Ohio'),
(36, 'Oklahoma'),
(37, 'Oregon'),
(38, 'Pennsylvania'),
(39, 'Rhode Island'),
(40, 'South Carolina'),
(41, 'South Dakota'),
(42, 'Tennessee'),
(43, 'Texas'),
(44, 'Utah'),
(45, 'Vermont'),
(46, 'Virginia'),
(47, 'Washington'),
(48, 'West Virginia'),
(49, 'Wisconsin'),
(50, 'Wyoming'),
(51, 'Armed Forces Americas'),
(52, 'Armed Forces Europe'),
(53, 'Armed Forces Pacific');

-- --------------------------------------------------------

--
-- Table structure for table `appliances_types`
--

CREATE TABLE `appliances_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliances_types`
--

INSERT INTO `appliances_types` (`id`, `type_name`) VALUES
(1, 'Whirlpool'),
(2, 'KitchenAid'),
(3, 'Maytag'),
(4, 'LG'),
(5, 'Samsung'),
(6, 'Frigidaire'),
(7, 'Bosch'),
(8, 'Speed Queen'),
(9, 'GE'),
(10, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `brochures`
--

CREATE TABLE `brochures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_nail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brochures`
--

INSERT INTO `brochures` (`id`, `location_id`, `file_type`, `file_name`, `title`, `thumb_nail`, `created_at`, `updated_at`) VALUES
(1, 1, 'pdf', 'FullbrochureAZrealtor-AHW.pdf', 'Pricing/Options', '', NULL, '2021-09-29 05:33:14'),
(2, 1, 'pdf', 'AHW AZ  Listing New 2021.pdf', 'Listing Coverage Information', '', NULL, '2021-09-29 05:56:19'),
(3, 0, 'pdf', '', '', '', NULL, '2021-09-28 13:17:43'),
(4, 0, 'pdf', 'Acclaimed-Home-Warranty-Price-Guide-Consumer-AZ.pdf', 'Homeowner Price & Options', '', NULL, '2021-09-29 05:34:48'),
(5, 1, 'video', 'https://www.youtube.com/embed/1mzkbJSIMHc', 'Why Choose Acclaimed?', 'front-290x163.jpg', NULL, '2021-07-26 04:37:54'),
(7, 1, 'video', 'https://www.youtube.com/embed/q7-GQn3-ZLs', 'Donating to Family Promise', 'front3-270x163.jpg', NULL, '2021-07-26 05:52:30'),
(8, 1, 'video', 'https://www.youtube.com/embed/iG5o3j7P7I4', 'Live you Life ... Don\'t Fix It!', 'front4-290x163.jpg', NULL, '2021-07-26 05:53:33'),
(10, 2, 'pdf', 'AHW UT Listing NEW 2021.pdf\r\n', 'Listing Coverage Information', '', NULL, '2021-08-05 12:38:43'),
(13, 2, 'pdf', 'FullbrochureUTrealtor -AHW2021NEW.pdf', 'Pricing/Options', '', NULL, '2021-09-29 05:36:23'),
(14, 2, 'video', 'https://www.youtube.com/embed/1mzkbJSIMHc', 'Why Choose Acclaimed?', 'front-290x163.jpg', NULL, '2021-07-26 05:54:37'),
(16, 2, 'video', 'https://www.youtube.com/embed/q7-GQn3-ZLs', 'Donating to Family Promise', 'front3-270x163.jpg', NULL, '2021-07-26 05:56:08'),
(17, 2, 'video', 'https://www.youtube.com/embed/iG5o3j7P7I4', 'Live you Life ... Don\'t Fix It!', 'front4-290x163.jpg', NULL, '2021-07-26 05:57:04'),
(18, 3, 'pdf', 'Listing-Coverage_NEVADA_email.pdf', 'Listing Coverage Information', '', NULL, '2021-08-05 12:03:19'),
(19, 3, 'pdf', 'FullbrochureNVrealtor -AHW2021.pdf', 'Pricing/Options', '', NULL, '2021-09-14 08:08:46'),
(23, 3, 'video', 'https://www.youtube.com/embed/1mzkbJSIMHc', 'Why Choose Acclaimed?', 'front-290x163.jpg', NULL, '2021-07-26 05:58:32'),
(25, 3, 'video', 'https://www.youtube.com/embed/q7-GQn3-ZLs', 'Donating to Family Promise', 'front3-270x163.jpg', NULL, '2021-07-26 06:04:05'),
(26, 3, 'video', 'https://www.youtube.com/embed/iG5o3j7P7I4', 'Live you Life ... Don\'t Fix It!', 'front4-290x163.jpg', NULL, '2021-07-26 06:05:26'),
(27, 4, 'pdf', 'FullbrochureTXrealtor -AHW2021.pdf', 'Pricing/Options', '', NULL, '2021-09-29 05:51:42'),
(29, 4, 'pdf', 'Listing-Coverage_TEXAS_email.pdf', 'Listing Coverage Information', '', NULL, '2021-08-05 07:03:07'),
(31, 4, 'video', 'https://www.youtube.com/embed/1mzkbJSIMHc', 'Why Choose Acclaimed?', 'front-290x163.jpg', NULL, '2021-07-26 06:06:19'),
(33, 4, 'video', 'https://www.youtube.com/embed/q7-GQn3-ZLs', 'Donating to Family Promise', 'front3-270x163.jpg', NULL, '2021-07-26 06:08:07'),
(34, 4, 'video', 'https://www.youtube.com/embed/iG5o3j7P7I4', 'Live you Life ... Don\'t Fix It!', 'front4-290x163.jpg', NULL, '2021-07-26 06:08:53'),
(35, 5, 'pdf', 'FullbrochureIDrealtor-AHW.pdf', 'Pricing/Options', '', NULL, '2021-09-29 05:51:35'),
(36, 5, 'pdf', 'Sellers-Coverage-UT-EmailNEW10.1.19.pdf', 'Listing Coverage Information', '', NULL, '2021-09-29 05:51:20'),
(40, 5, 'video', 'https://www.youtube.com/embed/1mzkbJSIMHc', 'Why Choose Acclaimed?', 'front-290x163.jpg', NULL, '2021-07-26 06:09:55'),
(42, 5, 'video', 'https://www.youtube.com/embed/q7-GQn3-ZLs', 'Donating to Family Promise', 'front3-270x163.jpg', NULL, '2021-07-26 06:11:35'),
(43, 5, 'video', 'https://www.youtube.com/embed/iG5o3j7P7I4', 'Live you Life ... Don\'t Fix It!', 'front4-290x163.jpg', NULL, '2021-07-26 06:13:39'),
(44, 1, 'video', 'https://www.youtube.com/embed/rQnIRCn4ZWg', 'Home Owner Review Video', 'review2.png', '2021-08-09 12:13:59', '2021-08-10 05:22:25'),
(45, 1, 'video', 'https://www.youtube.com/embed/Wv_0LtnY9OY', 'Home Owner Review Video', 'review1.png', '2021-08-10 05:00:36', '2021-08-10 05:17:51'),
(46, 2, 'Video', 'https://www.youtube.com/embed/rQnIRCn4ZWg', 'Home Owner Review Video', 'review2.png', '2021-08-10 05:47:36', '2021-08-10 05:57:38'),
(47, 2, 'Video', 'https://www.youtube.com/embed/Wv_0LtnY9OY', 'Home Owner Review Video', 'review1.png', '2021-08-10 05:48:20', '2021-08-10 05:56:11'),
(48, 3, 'Video', 'https://www.youtube.com/embed/rQnIRCn4ZWg', 'Home Owner Review Video', 'review2.png', '2021-08-10 05:52:03', '2021-08-10 05:57:42'),
(49, 3, 'Video', 'https://www.youtube.com/embed/Wv_0LtnY9OY', 'Home Owner Review Video', 'review1.png', '2021-08-10 05:52:03', '2021-08-10 05:56:17'),
(50, 4, 'Video', 'https://www.youtube.com/embed/rQnIRCn4ZWg', 'Home Owner Review Video', 'review2.png', '2021-08-10 05:52:35', '2021-08-10 05:57:47'),
(51, 4, 'Video', 'https://www.youtube.com/embed/Wv_0LtnY9OY', 'Home Owner Review Video', 'review1.png', '2021-08-10 05:52:35', '2021-08-10 05:56:53'),
(52, 5, 'Video', 'https://www.youtube.com/embed/rQnIRCn4ZWg', 'Home Owner Review Video', 'review2.png', '2021-08-10 05:53:08', '2021-08-10 05:57:53'),
(53, 5, 'Video', 'https://www.youtube.com/embed/Wv_0LtnY9OY', 'Home Owner Review Video', 'review1.png', '2021-08-10 05:53:08', '2021-08-10 05:57:00'),
(54, 0, '', '', '', '', '2021-09-21 06:07:08', '2021-09-25 13:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `contact_name`, `contact_phone`, `contact_email`, `contact_message`, `created_at`, `updated_at`) VALUES
(67, 'Vikas Kumar', '888.494.9460', 'jmbliss13@gmail.com', 'Hello CC now you can check email. and this is for live site testing.', '2021-10-01 19:05:17', '2021-10-01 19:05:17'),
(68, 'Stephanie Remington', '6098659033', 'slremington@gmail.com', 'Plumbing issue under sink- it’s leaking \nFilling up a soup bowl every 30 min', '2021-10-01 20:39:58', '2021-10-01 20:39:58'),
(69, 'kc lee', '888-888-8888', 'kc@test.com', 'this is a test from my computer on chrome - kristin', '2021-10-02 01:23:41', '2021-10-02 01:23:41'),
(70, 'DEMETRIA JONES', '15128445509', 'demetriatl1972@gmail.com', 'My refrigerator is not getting cold at all.  I submitted a claim but need to get this fixed as soon as possible.   I have a frig full of food and can\'t afford to have it go bad.  Please help', '2021-10-02 01:55:33', '2021-10-02 01:55:33'),
(71, 'Richard and Natalie Allgood', '801-791-4067', 'cdemita@wisehomesolutions.com', 'add for Richard   801-725-4083\n\n\nWISE', '2021-10-05 01:44:10', '2021-10-05 01:44:10'),
(72, 'Woodlay & Sarah Merisma', '443-953-3039', 'cdemita@wisehomesolutions.com', 'add for Sarah   406-274-3768\n\n\n\nWISE', '2021-10-05 22:23:10', '2021-10-05 22:23:10'),
(73, 'Jesus Bello', '801-502-1450', 'cdemita@wisehomesolutions.com', 'resend welcome email\n\n\n\nWISE', '2021-10-06 00:19:21', '2021-10-06 00:19:21'),
(74, 'David Bewsey and Anastasia Bewsey', '949-324-7406', 'cdemita@wisehomesolutions.com', 'change:  david_bews5@gmail.com  to:  davidbews5@gmail.com   send welcome email\n\n\n\n\nWISE', '2021-10-06 01:27:25', '2021-10-06 01:27:25'),
(75, 'Samuel Cook', '801-907-1872', 'cdemita@wisehomesolutions.com', 'add:  Cami  801-682-0876                    add: diamondautoprotect@hotmail.com   send welcome email\n\n\n\nWISE', '2021-10-06 01:44:11', '2021-10-06 01:44:11'),
(76, 'Alberto Melendez', '385-202-3069', 'cdemita@wisehomesolutions.com', 'add:    ajmelp@gmail.com           send welcome email\n\n\n\n\nWISE', '2021-10-06 01:51:41', '2021-10-06 01:51:41'),
(77, 'Steve Garcia', '2106696186', 'sgarciaoj@yahoo.com', 'I had a different plumbing company come out then the one you guys sent. What are my options now to get this water leak fixed?', '2021-10-06 23:39:30', '2021-10-06 23:39:30'),
(78, 'kc', '8018007211', 'kcloveshome@gmail.com', 'Testing', '2021-10-07 04:41:32', '2021-10-07 04:41:32'),
(79, 'Amy Bryant', '409-782-7428', 'amyebryant84@gmail.com', 'I am purchasing a home and would like a quote for a home warranty. The seller is covering this covering the cost of the first year. I have never purchased a home before, so this is a brand new process. The address of the home is: 18311 Heaton Drive Houston, Texas 77084. I referred by Priscilla Telez, a client of Kristin Combs. Thanks in advance!', '2021-10-07 19:55:36', '2021-10-07 19:55:36'),
(80, 'Jmbliss', '1234567890', 'jmbliss67@gmail.com', 'This is a test message', '2021-10-07 23:44:09', '2021-10-07 23:44:09'),
(81, 'tony fetchel', '5125385149', 'fecciello@gmail.com', 'i filed a claim to have you send someone to come out to fix my washer.  a company called and is now asking for me to pay 75.00 over the phone before they will even schedule me.  why is that happening?  is that a new policy with acclaimed that i\'ve not heard of?  what\'s the deal as i need my washer fixed and have never had to do this the whole two years i\'ve had this home warranty.', '2021-10-08 00:22:36', '2021-10-08 00:22:36'),
(82, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Terry and Mariah Watkins would like to add her phone number and resend the welcome email.\n\ncontract #:38589\nNew phone number: 479-461-9539\n\nThanks!', '2021-10-08 03:44:39', '2021-10-08 03:44:39'),
(83, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customers Michael and Octavia Bates need their email updated and the welcome email resent to them.\n\nContract #:38924\n\nNew email: Michael_bates_jr@yahoo.com\n\nThanks!', '2021-10-08 03:50:10', '2021-10-08 03:50:10'),
(84, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Benjamin Bainter would like the welcome email resent to them @ bbforeverfamilylds@yahoo.com\n\nContract #:37782\n\nThanks!', '2021-10-08 21:48:30', '2021-10-08 21:48:30'),
(85, 'Cindy Spangler', '8015566241', 'cindyspangler@gmail.com', 'I have a home warranty that I\'m trying to add under my account and I don\'t know what I need to do to have it added.\n\nThe order number is: AHW0015997 and the addess is 1354 W. Van Buren #, SLC UT 84104. \nThank you,\nCindy', '2021-10-12 14:55:47', '2021-10-12 14:55:47'),
(86, 'Lauryn Ahrns', '8308890214', 'laurynahrns@yahoo.com', 'Need plumber for water heater', '2021-10-13 16:20:53', '2021-10-13 16:20:53'),
(87, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customers Cullen and Lauren Cadena would like to add a phone number to their account. \n\nContract #:39384\nAdditional Phone number: (512) 716-9017\n\nThanks!', '2021-10-13 21:29:11', '2021-10-13 21:29:11'),
(88, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Amanda Tristan would like to add a phone number to their account. \n\nContract #:38893\nadditional phone #:361-772-7922\n\nThanks!', '2021-10-14 18:38:02', '2021-10-14 18:38:02'),
(89, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Justin Frontino would like to change the email that is on file as well as have the welcome email resent.\n\nContract #:39398\nNew Email: Justinfrontino@Yahoo.com\n\nThanks!', '2021-10-14 18:45:02', '2021-10-14 18:45:02'),
(90, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Tejveer Singh would like to have the welcome email resent to them.\n\nContract #:\nEmail: tejveer@sbcglobal.net\n\nThanks!', '2021-10-15 16:26:52', '2021-10-15 16:26:52'),
(91, 'Teresa Monette', '3027869033', 'teresamonette94@gmail.com', 'Hello,\n\nI think you might be interested in acquiring an Email list of Real Estate Agents and Brokers Contacts?\n\nWe can Break down the list by County, States, Region, Country.\n\nReal Estate Agents and Brokers : 1.2 + million Contacts across USA.\n\nInterested? Email me back, I’d love to provide more information like Count, Few Samples, Pricing and other details.\n\nRegards,\nTeresa Monette \nSr. Marketing Executive.\nUS Contact Directory Inc.\nPhone : +1(302)786-9033', '2021-10-15 19:26:09', '2021-10-15 19:26:09'),
(92, 'Veronica Nippert', '5125824900', 'veronica.nippert@stewart.com', 'PLEASE CANCEL #INVOICE / CONTRACT AHW00000657**I was having issues with your online ordering, it did not pull the correct seller buyer information. I have reordered for the same property in your system and it now has the correct seller/buyer information and I will use this INVOICE / CONTRACT AHW00000658.', '2021-10-18 15:07:48', '2021-10-18 15:07:48'),
(93, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Jose Puente would like the welcome email resent to them.\n\nContract #: 39804\njosepuentepmp@yahoo.com\n\nThanks!', '2021-10-18 16:10:46', '2021-10-18 16:10:46'),
(94, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Aileen Argueta would like the welcome email resent to them. \n\nContract #:39069\nEmail:arguetaaileen@yahoo.com\n\nThanks!', '2021-10-18 16:43:10', '2021-10-18 16:43:10'),
(95, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Marsha Nichols added her email and would like the welcome email sent to her.\n\nContract #: 39236\nNew email: MarshaCNichols@yahoo.com\n\nThanks!', '2021-10-18 16:59:24', '2021-10-18 16:59:24'),
(96, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Julie Esh would like to have the welcome email resent to her.\n\nContract #:38990\nEmail: julieaesh@mac.com\n\nThanks!', '2021-10-18 17:46:39', '2021-10-18 17:46:39'),
(97, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customers name was incorrect in our record. He was listed as Justin Winegarden when it should be Jason Winegarden. Please ensure that information is updated and correct.\n\ncontract #: 39434\n\nThanks!', '2021-10-18 21:48:58', '2021-10-18 21:48:58'),
(98, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Darnell Wallace and Lissette Falcon would like to add an email to their account and have the welcome email sent out to them.\n\nContract #: 37916\nNew email: Darnell.wallace@gmail.com\n\nThanks!', '2021-10-19 18:57:42', '2021-10-19 18:57:42'),
(99, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Vito Cory Garza would like the welcome email resent to them. \n\nContract #: 38111\nEmail: VITOIRONGARZA@GMAIL.COM\n\nThanks!', '2021-10-19 19:09:02', '2021-10-19 19:09:02'),
(100, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Salen Churi would like to add his wife and her phone number to the account as well as their email. They would also like the welcome email sent to them.\n\nLauren Churi\nP#: 513-237-0601\nNew email: Churi.Lauren@gmail.com\n\nThanks!', '2021-10-19 19:21:58', '2021-10-19 19:21:58'),
(101, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Alejandro Ventura would like to add Ibet\'s number to their account as well as update their address for a minor error on our records.\n\nContract #:39240\nIbet\'s phone #:361-562-5868\nUpdate address to: 15542 Cascade Mist dr.\n\nThanks!', '2021-10-20 16:07:28', '2021-10-20 16:07:28'),
(102, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Anna Roelants would like their email added to their account and to have the welcome email resent to them.\n\nContract #: 38449\nNew email: Alueckemeyer@yahoo.com\n\nThanks!', '2021-10-20 16:16:35', '2021-10-20 16:16:35'),
(103, 'Jason Gallegos', '720-691-8669', 'kingofbattlelegos@gmail.com', 'Need a quote', '2021-10-20 17:04:28', '2021-10-20 17:04:28'),
(104, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Tom Baxter Would like the welcome email resent to them.\n\nContract # :39415\nemail: Tobaxter@whidbey.com\n\nThanks!', '2021-10-21 15:59:08', '2021-10-21 15:59:08'),
(105, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer SINJIN CHUN would like to add his wife and her number to their account.\n\nContract #:39095\nMacy Chun: 951-240-2513\n\nThanks!', '2021-10-21 16:09:03', '2021-10-21 16:09:03'),
(106, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Samuel Nelson would like to add his wife and her number to the account.\n\nContract #:39323\nJamie Nelson 385-418-7089\n\nThanks!', '2021-10-21 16:37:29', '2021-10-21 16:37:29'),
(107, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Mark Miller would like to add his wife to their account and have the welcome email resent to them.\n\nContract #:39543\nTami Miller 435-421-1995\n\nThanks!', '2021-10-21 19:18:51', '2021-10-21 19:18:51'),
(108, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Daryoon Anderson would like to add his wife and number to their account.\n\nContract #: 38968\nMakinzie Anderson P#: 435-650-2040\n\nThanks!', '2021-10-21 19:27:15', '2021-10-21 19:27:15'),
(109, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Frank DeMartini would like to add his property manager to their account as well as her email. They would also like the welcome email sent to her email as well.\n\nContract #:38769\nDiane Hawley: 702-292-7076\nEmail: DianeHawleyremax@gmail.com\n\nThanks!', '2021-10-21 19:59:54', '2021-10-21 19:59:54'),
(110, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Angel Nava-Perez would like to add his email and get the welcome email sent to him.\n\nContract #:39607\nEmail: Navainvestments@gmail.com\n\nThanks!', '2021-10-21 21:40:38', '2021-10-21 21:40:38'),
(111, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Phillip Prince would like to welcome email resent to them.\n\nContract #:38999\nEmail:phillipprince@comcast.net\n\nThanks!', '2021-10-21 21:42:04', '2021-10-21 21:42:04'),
(112, 'Sandra Garrett', '615-973-9862', 'sggett@gmail.com', 'I missed the renewal on my home at 1813 S. 19th Street, Temple, TX 76504. Can I renew on a monthly payment plan?', '2021-10-24 19:54:28', '2021-10-24 19:54:28'),
(113, 'Anna Slone', '5024398315', 'annacslone@gmail.com', 'I am a Realtor and I would like a copy of your most current brochure to pass along to my clients. I realize I have the 2020 version, and prices are slightly different. Thanks.', '2021-10-27 18:33:35', '2021-10-27 18:33:35'),
(114, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customers Payton and Dillion Campbell would like to add a phone number to their account and have the welcome email resent to them.\n\nContract#: 39357\nNew phone Number: 903-431-6531\n\nThanks!', '2021-10-27 19:15:54', '2021-10-27 19:15:54'),
(115, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Erin Sullivan would like the welcome email resent to them.\n\nContract #:39024\n\nThanks!', '2021-10-27 20:03:36', '2021-10-27 20:03:36'),
(116, 'Francisco Martinez', '6626489550', 'javitak98@gmail.com', 'Hola, estoy teniendo problemas con mi sistema de calefacción, no está funcionando correctamente, necesito que alguien venga a revisarlo. gracias por su atención.', '2021-10-28 10:33:18', '2021-10-28 10:33:18'),
(117, 'WISE Home Solutions', '8449049473', 'Laiono@wisehomesolutions.com', 'Customer Gregory and Ashley Olsen would like to add an email to their account and have the welcome email sent there as well.\n\nContract #:39320\nAdditional email: Kadeo@horrocks.com\n\nThanks!', '2021-10-28 15:15:23', '2021-10-28 15:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `contractors`
--

CREATE TABLE `contractors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_areas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hourly_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contractors`
--

INSERT INTO `contractors` (`id`, `company_name`, `contact_name`, `contact_number`, `contact_email`, `trade_services`, `other`, `service_areas`, `hourly_rate`, `created_at`, `updated_at`) VALUES
(36, 'Jmbliss', 'Daniel', '888.494.9460', 'jmbliss67@gmail.com', 'HVAC, Roof', NULL, 'Arizona, Texas', '500', '2021-10-01 17:34:30', '2021-10-01 17:34:30'),
(37, 'ahw', 'kristin', '777-777-7777', 'kc@test.com', 'Appliance, Garage Systems', NULL, 'Utah', '65.00', '2021-10-02 01:20:21', '2021-10-02 01:20:21'),
(38, 'The Guy Next Door Home Services llc', 'Jonathan Tiras', '8329161951', 'thetirasgroup@gmail.com', 'Appliance, Garage Systems', NULL, 'Texas', '75', '2021-10-11 07:25:42', '2021-10-11 07:25:42'),
(39, 'Safe Air LLC', 'Khaleb Muqattash', '2813059493', 'safeairac@gmail.com', 'HVAC, Appliance', NULL, 'Texas, Utah', '65', '2021-10-12 21:05:21', '2021-10-12 21:05:21'),
(40, 'Safe Air LLC', 'Khaleb Muqattash', '2813059493', 'safeairac@gmail.com', 'HVAC', NULL, 'Texas', '75', '2021-10-14 17:50:54', '2021-10-14 17:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_name` text NOT NULL,
  `department` text NOT NULL,
  `mobile1` text NOT NULL,
  `mobile2` text NOT NULL,
  `email` text NOT NULL,
  `profile_pic` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_name`, `department`, `mobile1`, `mobile2`, `email`, `profile_pic`, `date_created`, `date_updated`) VALUES
(1, 'Kristin Combs', 'VP Business Development | Sales, Marketing COO', '801-800-7211', '888-494-9460', 'kristin@acclaimedhw.com', 'kristin-combs@2x.png', '2021-07-26 08:17:22', '2021-08-03 09:41:58'),
(2, 'Ryan Nelson', 'VP Claims & Contractor Management', '801-755-6127', '888-494-9460', 'rnelson@acclaimedhw.com', 'RyanN-160x188.jpeg', '2021-07-26 09:46:47', '2021-07-26 09:46:47'),
(3, 'Sandra Perkins', 'SLC & Utah County Sales Representative', '385-232-6167', '888-494-9460', 'sandra@acclaimedhw.com', 'sandra-perkins@2x.png', '2021-07-26 09:46:47', '2021-08-26 07:36:41'),
(4, 'Sean McCrady', 'Northern UT Sales Representative', '801-822-9161', '888-494-9460', 'sean@acclaimedhw.com', 'sean.png', '2021-07-26 10:33:31', '2021-08-26 08:25:24'),
(5, 'Michelle Larson', 'Southern Nevada Manager', '702-626-3319', '888-494-9460', 'michelle@acclaimedhw.com', 'michelle.png', '2021-07-26 10:38:44', '2021-08-26 07:44:35'),
(6, 'Stacye Blake', 'Texas Manager | Sales Austin', '512-888-8028', '888-494-9460', 'stacye@acclaimedhw.com', 'stayce-blake@2x.png', '2021-07-26 10:33:31', '2021-08-03 10:15:54'),
(7, 'Irma Delgado', 'DFW Sales', '817-422-2113', '888-494-9460', 'irma@acclaimedhw.com', 'irma.jpg', '2021-07-26 10:41:49', '2021-09-28 13:54:34'),
(8, 'Paul Anderson', 'Central Texas Sales', '512-763-9654', '888-494-9460', 'paul@acclaimedhw.com', 'Paul-headshot2-183x188.jpg', '2021-07-26 10:40:49', '2021-08-03 10:18:15'),
(9, 'Roy Davis', 'East Houston Sales', '832-246-9149', '888-494-9460', 'rdavis@acclaimedhw.com', 'Roy_18-Social-Media-188x188.jpg', '2021-07-26 10:36:44', '2021-08-03 10:19:44'),
(10, 'Kyle Thomas', 'West Houston Sales', '832-928-4153', '888-494-9460', 'kthomas@acclaimedhw.com', 'Kyle-Thomas-headshot-150x188.jpg', '2021-07-26 10:36:44', '2021-08-03 10:21:06'),
(11, 'James Robert', 'Arizona Manager', '480-309-0300', '888-494-9460', 'james@acclaimedhw.com', 'James Robert Photo.jpg', '2021-07-26 10:40:49', '2021-09-28 13:54:57'),
(13, 'David Modrow', 'Northern UT Sales Representative', '208-789-1354', '888-494-9460', 'david@acclaimedhw.com', 'david_modrow.png', '2021-08-26 08:12:04', '2021-08-26 08:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `column1_content` text NOT NULL,
  `column2_content` text NOT NULL,
  `column3_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `logo_img` varchar(255) NOT NULL,
  `phone_num` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_owner__standard__features`
--

CREATE TABLE `home_owner__standard__features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sf_title_id` int(10) UNSIGNED NOT NULL,
  `standard_features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_owner__standard__features`
--

INSERT INTO `home_owner__standard__features` (`id`, `sf_title_id`, `standard_features`, `created_at`, `updated_at`) VALUES
(2, 1, 'Pre Season tune up’s for heating and cooling*', NULL, NULL),
(4, 1, 'Discounted home security', NULL, NULL),
(5, 1, 'Garage door reprogramming', NULL, NULL),
(6, 2, 'A/C', NULL, NULL),
(7, 2, 'Heating', NULL, NULL),
(8, 2, 'Duct from heating and cooling', NULL, NULL),
(9, 2, 'Heat pump', NULL, NULL),
(10, 2, 'Thermostat', NULL, NULL),
(11, 3, 'Inside plumbing systems', NULL, NULL),
(12, 3, 'Drain line stoppages', NULL, NULL),
(13, 3, 'Toilet (parts)', NULL, NULL),
(14, 3, 'Water heater (1) (up to 70 Gal)', NULL, NULL),
(15, 4, 'Interior electrical systems', NULL, NULL),
(16, 4, 'Exhaust fans', NULL, NULL),
(17, 4, 'Circuit breakers', NULL, NULL),
(18, 4, 'Ceiling fans', NULL, NULL),
(19, 4, 'Panels and subpanels', NULL, NULL),
(20, 4, 'Garage door systems', NULL, NULL),
(21, 5, 'Oven', NULL, NULL),
(22, 5, 'Range', NULL, NULL),
(23, 5, 'Cooktop', NULL, NULL),
(24, 5, 'Dishwasher', NULL, NULL),
(25, 5, 'Built in microwave', NULL, NULL),
(26, 5, 'Garbage disposal', NULL, NULL),
(27, 5, 'Trash compactor', NULL, NULL),
(28, 5, '1 Refrigerator per unit *(not available to single family properties)', NULL, NULL),
(30, 7, 'Pre Season tune up’s for heating and cooling*', NULL, NULL),
(32, 7, 'Discounted home security', NULL, NULL),
(33, 7, 'Garage door reprogramming', NULL, NULL),
(34, 8, 'A/C', NULL, NULL),
(35, 8, 'Heating', NULL, NULL),
(36, 8, 'Duct from heating and cooling', NULL, NULL),
(37, 8, 'Heat pump', NULL, NULL),
(38, 8, 'Thermostat', NULL, NULL),
(39, 9, 'Inside plumbing systems', NULL, NULL),
(40, 9, 'Drain line stoppages', NULL, NULL),
(41, 9, 'Toilet (parts)', NULL, NULL),
(42, 9, 'Water heater (1)', NULL, NULL),
(43, 10, 'Interior electrical systems', NULL, NULL),
(44, 10, 'Exhaust fans', NULL, NULL),
(45, 10, 'Circuit breakers', NULL, NULL),
(46, 10, 'Ceiling fans', NULL, NULL),
(47, 10, 'Panels and subpanels', NULL, NULL),
(48, 10, 'Garage door systems', NULL, NULL),
(49, 11, 'Oven', NULL, NULL),
(50, 11, 'Range', NULL, NULL),
(51, 11, 'Cooktop', NULL, NULL),
(52, 11, 'Dishwasher', NULL, NULL),
(53, 11, 'Built in microwave', NULL, NULL),
(54, 11, 'Garbage disposal', NULL, NULL),
(55, 11, 'Trash compactor', NULL, NULL),
(56, 11, '1 Refrigerator per unit *(not available to single family properties)', NULL, NULL),
(57, 12, 'Re-Key*', NULL, NULL),
(58, 12, 'Pre Season tune up’s for heating and cooling*', NULL, NULL),
(59, 12, 'Filter delivery*', NULL, NULL),
(60, 12, 'Discounted home security', NULL, NULL),
(61, 12, 'Garage door reprogramming', NULL, NULL),
(62, 13, 'A/C', NULL, NULL),
(63, 13, 'Heating', NULL, NULL),
(64, 13, 'Duct from heating and cooling', NULL, NULL),
(65, 13, 'Heat pump', NULL, NULL),
(66, 13, 'Thermostat', NULL, NULL),
(67, 14, 'Inside plumbing systems', NULL, NULL),
(68, 14, 'Drain line stoppages', NULL, NULL),
(69, 14, 'Toilet (parts)', NULL, NULL),
(70, 14, 'Water heater (1) (up to 50 Gal)', NULL, NULL),
(71, 15, 'Interior electrical systems', NULL, NULL),
(72, 15, 'Exhaust fans', NULL, NULL),
(73, 15, 'Circuit breakers', NULL, NULL),
(74, 15, 'Ceiling fans', NULL, NULL),
(75, 15, 'Panels and subpanels', NULL, NULL),
(76, 15, 'Garage door systems', NULL, NULL),
(77, 16, 'Oven', NULL, NULL),
(78, 16, 'Range', NULL, NULL),
(79, 16, 'Cooktop', NULL, NULL),
(80, 16, 'Dishwasher', NULL, NULL),
(81, 16, 'Built in microwave', NULL, NULL),
(82, 16, 'Garbage disposal', NULL, NULL),
(83, 16, 'Trash compactor', NULL, NULL),
(84, 16, '1 Refrigerator per unit *(not available to single family properties)', NULL, NULL),
(85, 17, 'Re-Key', NULL, NULL),
(86, 17, 'Garage door reprogramming', NULL, NULL),
(87, 17, 'Subter. Termites - spot treatment', NULL, NULL),
(88, 17, 'Discounted Home Security', NULL, NULL),
(89, 17, 'Bi Annual Tune Up\'s', NULL, NULL),
(90, 18, 'Air Conditioning (unlimited)', NULL, NULL),
(91, 18, 'Heating/Furnace (unlimited)', NULL, NULL),
(92, 18, 'Duct from heating and cooling', NULL, NULL),
(93, 18, 'Heat pump', NULL, NULL),
(94, 18, 'Thermostat', NULL, NULL),
(95, 19, 'Water Heaters (all units)', NULL, NULL),
(96, 19, 'Water Heaters - Tankless (up to $800', NULL, NULL),
(97, 20, 'Panels', NULL, NULL),
(98, 20, 'Subpanels', NULL, NULL),
(99, 20, 'Wiring', NULL, NULL),
(100, 20, 'Junction Boxes', NULL, NULL),
(101, 20, 'Exhaust Fan - Kitchen', NULL, NULL),
(102, 20, 'Exhaust Fan - Bathrooms', NULL, NULL),
(103, 6, 'Oven', NULL, NULL),
(104, 6, 'Range', NULL, NULL),
(105, 6, 'Cooktop', NULL, NULL),
(106, 6, 'Dishwasher', NULL, NULL),
(107, 6, 'Garbage Disposal', NULL, NULL),
(108, 6, 'Built in microwave', NULL, NULL),
(109, 0, '', NULL, NULL),
(110, 6, 'Trash compactor', NULL, NULL),
(111, 6, 'Central vacuum', NULL, NULL),
(112, 21, 'Re-Key*', NULL, NULL),
(113, 21, 'Pre Season tune up’s for heating and cooling*', NULL, NULL),
(114, 21, 'Filter delivery*', NULL, NULL),
(115, 21, 'Discounted home security', NULL, NULL),
(116, 21, 'Garage door reprogramming', NULL, NULL),
(117, 22, 'A/C', NULL, NULL),
(118, 22, 'Heating', NULL, NULL),
(119, 22, 'Duct from heating and cooling', NULL, NULL),
(120, 22, 'Heat pump', NULL, NULL),
(121, 22, 'Thermostat', NULL, NULL),
(122, 23, 'Inside plumbing systems', NULL, NULL),
(123, 23, 'Drain line stoppages', NULL, NULL),
(124, 23, 'Toilet (parts)', NULL, NULL),
(125, 23, 'Water heater (1) (up to 50 Gal)', NULL, NULL),
(126, 24, 'Interior electrical systems', NULL, NULL),
(127, 24, 'Exhaust fans', NULL, NULL),
(128, 24, 'Circuit breakers', NULL, NULL),
(129, 24, 'Ceiling fans', NULL, NULL),
(130, 24, 'Panels and subpanels', NULL, NULL),
(131, 24, 'Garage door systems', NULL, NULL),
(132, 25, 'Oven', NULL, NULL),
(133, 25, 'Range', NULL, NULL),
(134, 25, 'Cooktop', NULL, NULL),
(135, 25, 'Dishwasher', NULL, NULL),
(136, 25, 'Built in microwave', NULL, NULL),
(137, 25, 'Garbage disposal', NULL, NULL),
(138, 25, 'Trash compactor', NULL, NULL),
(139, 25, '1 Refrigerator per unit *(not available to single family properties)', NULL, NULL),
(141, 18, 'Bi Annual Tune Ups', NULL, NULL),
(142, 19, 'Stoppages & Clogs', NULL, NULL),
(143, 19, 'Toilet - Parts', NULL, NULL),
(144, 19, 'Whirlpool Assembly', NULL, NULL),
(145, 19, 'Sump Pump - permanent', NULL, NULL),
(146, 20, 'Ceiling Fans', NULL, NULL),
(147, 26, 'Motor', NULL, NULL),
(148, 26, 'Wiring', NULL, NULL),
(149, 17, 'Unknown Pre-existing Conditions', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ho_applied_coupons`
--

CREATE TABLE `ho_applied_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ho_card_payment`
--

CREATE TABLE `ho_card_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ho_card_payment`
--

INSERT INTO `ho_card_payment` (`id`, `order_id`, `transaction_id`, `payer_email`, `amount`, `currency`, `payment_status`, `created_at`, `updated_at`) VALUES
(156, 508, '60175875524', 'vinod.k.jmbliss@gmail.com', 650.00, 'USD', 'Captured', '2021-09-30 12:21:58', '2021-09-30 12:21:58'),
(157, 509, '60175953142', 'KRISTIN@ACCLAIMEDHW.COM', 608.00, 'USD', 'Captured', '2021-10-01 09:13:11', '2021-10-01 09:13:11'),
(158, 513, '63282205317', 'giovannycarmona3110@gmail.com', 780.00, 'USD', 'Captured', '2021-10-05 22:57:23', '2021-10-05 22:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `ho_coupons`
--

CREATE TABLE `ho_coupons` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `discount_type` varchar(50) NOT NULL COMMENT 'fixed, percent',
  `coupon_amount` varchar(50) NOT NULL,
  `expiry_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ho_coupons`
--

INSERT INTO `ho_coupons` (`id`, `coupon_code`, `discount_type`, `coupon_amount`, `expiry_date`) VALUES
(1, 'flat50', 'fixed', '50', '2021-12-30'),
(3, '10percent', 'percent', '10', '2021-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `ho_coverage_upgrades`
--

CREATE TABLE `ho_coverage_upgrades` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `monthly_price` varchar(50) NOT NULL,
  `yearly_price` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ho_coverage_upgrades`
--

INSERT INTO `ho_coverage_upgrades` (`id`, `product_id`, `name`, `monthly_price`, `yearly_price`, `content`, `url`) VALUES
(1, 7, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(2, 7, 'Additional Fridge or Freestanding Fridge/Freezer', '4.16', '50', '', ''),
(3, 7, 'Prof. Series Appliances - Kit.', '8.33', '100', '', ''),
(4, 7, 'Washer / Dryer', '8.33', '100', '', ''),
(5, 7, 'Water Softener', '6.25', '75', '', ''),
(6, 7, 'Casita / Guest House', '16.25', '195', '', ''),
(7, 7, 'Second Kitchen', '8.33', '100', '', ''),
(8, 7, 'Pool / Hot Tub - Chlorine', '18.75', '225', '', ''),
(9, 7, 'Pool / Hot Tub - Salt Water', '29.16', '350', '', ''),
(10, 7, 'Water Heater (Additional)', '4.16', '50', '', ''),
(11, 7, 'External Pipe leak', '8.33', '100', '', ''),
(12, 7, 'Roof Leak Repair\r\n', '8.33', '100', '', ''),
(13, 7, 'Grinder Pump', '12.91', '155', '', ''),
(14, 7, 'Septic System, Pumping & Sewage Ejector Pump', '8.33', '100', '', ''),
(15, 7, 'Fireplace Coverage', '12.5', '150', '', ''),
(16, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(17, 7, 'Well Pump', '8.33', '100', '', ''),
(18, 7, 'Discount Pre Paid Service Fee', '4.16', '50', '', ''),
(19, 7, 'Sq Footage 6001-7000', '6.25', '75', '', ''),
(20, 7, 'Sq Footage 7001-8000', '12.5', '150', '', ''),
(21, 7, 'Sq Footage 8001 and above', '20.83', '250', '', ''),
(22, 8, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(23, 8, 'Additional Fridge or Freestanding Fridge/Freezer', '4.16', '50', '', ''),
(24, 8, 'Prof. Series Appliances - Kitchen', '8.33', '100', '', ''),
(25, 8, 'Washer / Dryer', '8.33', '100', '', ''),
(26, 8, 'Water Softener', '6.25', '75', '', ''),
(27, 8, 'Casita / Guest House', '16.25', '195', '', ''),
(28, 8, 'Second Kitchen', '8.33', '100', '', ''),
(29, 8, 'Pool / Hot Tub - Chlorine', '18.75', '225', '', ''),
(30, 8, 'Pool / Hot Tub - Salt Water', '29.16', '350', '', ''),
(31, 8, 'Water Heater (Additional)', '4.16', '50', '', ''),
(32, 8, 'Roof Leak Repair', '8.33', '100', '', ''),
(33, 8, 'External Pipe leak', '8.33', '100', '', ''),
(34, 8, 'Grinder Pump', '12.91', '155', '', ''),
(35, 8, 'Septic System, Pumping & Sewage Ejector Pump', '8.33', '100', '', ''),
(36, 8, 'Fireplace Coverage', '12.5', '150', '', ''),
(37, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(38, 8, 'Well Pump', '8.33', '100', '', ''),
(39, 8, 'Discount Pre Paid Service Fee', '4.16', '50', '', ''),
(40, 8, 'Sq Footage 6001-7000', '6.25', '75', '', ''),
(41, 8, 'Sq Footage 7001-8000', '12.5', '150', '', ''),
(42, 8, 'Sq Footage 8001 and above', '20.83', '250', '', ''),
(43, 9, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(44, 9, 'Additional Fridge or Freestanding Fridge/Freezer', '4.16', '50', '', ''),
(45, 9, 'Prof. Series Appliances - Kitchen', '8.33', '100', '', ''),
(46, 9, 'Washer / Dryer', '8.33', '100', '', ''),
(47, 9, 'Water Softener', '6.25', '75', '', ''),
(48, 9, 'Casita / Guest House', '16.25', '195', '', ''),
(49, 9, 'Second Kitchen', '8.33', '100', '', ''),
(50, 9, 'Pool / Hot Tub - Chlorine', '18.75', '225', '', ''),
(51, 9, 'Pool / Hot Tub - Salt Water', '29.16', '350', '', ''),
(52, 9, 'Water Heater (Additional)', '4.16', '50', '', ''),
(53, 9, 'Roof Leak Repair', '8.33', '100', '', ''),
(54, 9, 'External Pipe leak', '8.33', '100', '', ''),
(55, 9, 'Grinder Pump ', '12.91', '155', '', ''),
(56, 9, 'Septic System, Pumping & Sewage Ejector Pump', '8.33', '100', '', ''),
(57, 9, 'Fireplace Coverage', '12.5', '150', '', ''),
(58, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(59, 9, 'Well Pump', '8.33', '100', '', ''),
(60, 9, 'Discount Pre Paid Service Fee', '4.16', '50', '', ''),
(61, 9, 'Sq Footage 6001-7000', '6.25', '75', '', ''),
(62, 9, 'Sq Footage 7001-8000', '12.5', '150', '', ''),
(63, 9, 'Sq Footage 8001 and above', '20.83', '250', '', ''),
(64, 12, 'Refrigerator with ice maker', '', '55', '', ''),
(65, 12, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(66, 12, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(67, 12, 'Washer / Dryer', '', '100', '', ''),
(68, 12, 'Water Softener', '', '75', '', ''),
(69, 12, 'Casita / Guest House', '', '195', '', ''),
(70, 12, 'Second Kitchen', '', '100', '', ''),
(71, 12, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(72, 12, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(73, 12, 'Water Heater (Additional)', '', '50', '', ''),
(74, 12, 'Roof Leak Repair', '', '100', '', ''),
(75, 12, 'External Pipe leak', '', '100', '', ''),
(76, 12, 'Grinder Pump \r\n', '', '155', '', ''),
(77, 12, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(78, 12, 'Fireplace Coverage', '', '150', '', ''),
(79, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(80, 12, 'Well Pump', '', '100', '', ''),
(81, 12, 'Discount Pre Paid Service Fee', '', '50', '', ''),
(82, 12, 'Sq Footage 6001-7000', '', '75', '', ''),
(83, 12, 'Sq Footage 7001-8000', '', '150', '', ''),
(84, 12, 'Sq Footage 8001 and above', '', '250', '', ''),
(85, 13, 'Refrigerator with ice maker', '', '55', '', ''),
(86, 13, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(87, 13, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(88, 13, 'Washer / Dryer', '', '100', '', ''),
(89, 13, 'Water Softener', '', '75', '', ''),
(90, 13, 'Casita / Guest House', '', '195', '', ''),
(91, 13, 'Second Kitchen', '', '100', '', ''),
(92, 13, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(93, 13, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(94, 13, 'Water Heater (Additional)', '', '50', '', ''),
(95, 13, 'Roof Leak Repair', '', '100', '', ''),
(96, 13, 'External Pipe leak', '', '100', '', ''),
(97, 13, 'Grinder Pump ', '', '155', '', ''),
(98, 13, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(99, 13, 'Fireplace Coverage', '', '150', '', ''),
(100, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(101, 13, 'Well Pump', '0', '100', '', ''),
(102, 13, 'Discount Pre Paid Service Fee', '0', '50', '', ''),
(103, 13, 'Sq Footage 6001-7000', '0', '75', '', ''),
(104, 13, 'Sq Footage 7001-8000', '0', '150', '', ''),
(105, 13, 'Sq Footage 8001 and above', '0', '250', '', ''),
(106, 14, 'Refrigerator with ice maker', '0', '55', '', ''),
(107, 14, 'Additional Fridge or Freestanding Fridge/Freezer', '0', '50', '', ''),
(108, 14, 'Prof. Series Appliances - Kitchen', '0', '100', '', ''),
(109, 14, 'Washer / Dryer', '0', '100', '', ''),
(110, 14, 'Water Softener', '0', '75', '', ''),
(111, 14, 'Casita / Guest House', '0', '195', '', ''),
(112, 14, 'Second Kitchen', '0', '100', '', ''),
(113, 14, 'Pool / Hot Tub - Chlorine', '0', '225', '', ''),
(114, 14, 'Pool / Hot Tub - Salt Water', '0', '350', '', ''),
(115, 14, 'Water Heater (Additional)', '0', '50', '', ''),
(116, 14, 'Roof Leak Repair', '0', '100', '', ''),
(117, 14, 'External Pipe leak', '0', '100', '', ''),
(118, 14, 'Grinder Pump ', '0', '155', '', ''),
(119, 14, 'Septic System, Pumping & Sewage Ejector Pump', '0', '100', '', ''),
(120, 14, 'Fireplace Coverage', '0', '150', '', ''),
(121, 0, 'Heating & A/C Zone System', '0', '150', '', ''),
(122, 14, 'Well Pump', '0', '100', '', ''),
(123, 14, 'Discount Pre Paid Service Fee', '0', '50', '', ''),
(124, 14, 'Sq Footage 6001-7000', '0', '75', '', ''),
(125, 14, 'Sq Footage 7001-8000', '0', '150', '', ''),
(126, 14, 'Sq Footage 8001 and above', '0', '250', '', ''),
(127, 41, 'Refrigerator with ice maker', '0', '55', '', ''),
(128, 41, 'Additional Fridge or Freestanding Fridge/Freezer', '0', '50', '', ''),
(129, 41, 'Prof. Series Appliances - Kitchen', '0', '100', '', ''),
(130, 41, 'Washer / Dryer', '0', '100', '', ''),
(131, 41, 'Water Softener', '0', '75', '', ''),
(132, 41, 'Casita / Guest House', '0', '195', '', ''),
(133, 41, 'Second Kitchen', '0', '100', '', ''),
(134, 41, 'Pool / Hot Tub - Chlorine', '0', '225', '', ''),
(135, 41, 'Pool / Hot Tub - Salt Water', '0', '350', '', ''),
(136, 15, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(137, 15, 'Additional Fridge or Freestanding Fridge/Freezer', '4.16', '50', '', ''),
(138, 15, 'Prof. Series Appliances - Kitchen', '8.33', '100', '', ''),
(139, 15, 'Washer / Dryer', '7.91', '95', '', ''),
(140, 15, 'Water Softener', '6.25', '75', '', ''),
(141, 15, 'Casita / Guest House', '16.25', '195', '', ''),
(142, 15, 'Second Kitchen', '8.33', '100', '', ''),
(143, 15, 'Pool / Hot Tub - Chlorine', '18.75', '225', '', ''),
(144, 15, 'Pool / Hot Tub - Salt Water', '29.16', '350', '', ''),
(145, 15, 'Water Heater (Additional)', '4.16', '50', '', ''),
(146, 15, 'External Pipe leak', '7.08', '85', '', ''),
(147, 15, 'Booster Pump - House', '6.25', '75', '', ''),
(148, 15, 'Grinder Pump', '12.91', '155', '', ''),
(149, 15, 'Septic System, Pumping & Sewage Ejector Pump', '8.33', '100', '', ''),
(150, 15, 'Well Pump', '8.33', '100', '', ''),
(151, 15, 'Discount Pre Paid Service Fee', '5.41', '65', '', ''),
(152, 15, 'Sq Footage 6001-7000', '6.25', '75', '', ''),
(153, 15, 'Sq Footage 7001-8000', '12.5', '150', '', ''),
(154, 15, 'Sq Footage 8001 and above', '20.83', '250', '', ''),
(155, 16, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(156, 16, 'Additional Fridge or Freestanding Fridge/Freezer', '4.16', '50', '', ''),
(157, 16, 'Prof. Series Appliances - Kitchen', '8.33', '100', '', ''),
(158, 16, 'Washer / Dryer', '7.91', '95', '', ''),
(159, 16, 'Water Softener', '6.25', '75', '', ''),
(160, 16, 'Casita / Guest House', '16.25', '195', '', ''),
(161, 16, 'Second Kitchen', '8.33', '100', '', ''),
(162, 16, 'Pool / Hot Tub - Chlorine', '18.75', '225', '', ''),
(163, 16, 'Pool / Hot Tub - Salt Water', '29.16', '350', '', ''),
(164, 16, 'Water Heater (Additional)', '4.16', '50', '', ''),
(165, 16, 'External Pipe leak', '7.08', '85', '', ''),
(166, 16, 'Booster Pump - House', '6.25', '75', '', ''),
(167, 16, 'Grinder Pump ', '12.91', '155', '', ''),
(168, 16, 'Septic System, Pumping & Sewage Ejector Pump', '8.33', '100', '', ''),
(169, 16, 'Well Pump', '8.33', '100', '', ''),
(170, 16, 'Discount Pre Paid Service Fee', '5.41', '65', '', ''),
(171, 16, 'Sq Footage 6001-7000', '6.25', '75', '', ''),
(172, 16, 'Sq Footage 7001-8000', '12.5', '150', '', ''),
(173, 16, 'Sq Footage 8001 and above', '20.83', '250', '', ''),
(174, 17, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(175, 17, 'Additional Fridge or Freestanding Fridge/Freezer', '4.16', '50', '', ''),
(176, 17, 'Prof. Series Appliances - Kitchen', '8.33', '100', '', ''),
(177, 17, 'Washer / Dryer', '7.91', '95', '', ''),
(178, 17, 'Water Softener', '6.25', '75', '', ''),
(179, 17, 'Casita / Guest House', '16.25', '195', '', ''),
(180, 17, 'Second Kitchen', '8.33', '100', '', ''),
(181, 17, 'Pool / Hot Tub - Chlorine', '18.75', '225', '', ''),
(182, 17, 'Pool / Hot Tub - Salt Water', '29.16', '350', '', ''),
(183, 17, 'Water Heater (Additional)', '4.16', '50', '', ''),
(184, 17, 'External Pipe leak', '7.08', '85', '', ''),
(185, 17, 'Booster Pump - House', '6.25', '75', '', ''),
(186, 17, 'Grinder Pump ', '12.91', '155', '', ''),
(187, 17, 'Septic System, Pumping & Sewage Ejector Pump', '8.33', '100', '', ''),
(188, 17, 'Well Pump', '8.33', '100', '', ''),
(189, 17, 'Discount Pre Paid Service Fee', '5.41', '65', '', ''),
(190, 17, 'Sq Footage 6001-7000', '6.25', '75', '', ''),
(191, 17, 'Sq Footage 7001-8000', '12.5', '150', '', ''),
(192, 17, 'Sq Footage 8001 and above', '20.83', '250', '', ''),
(193, 18, 'Refrigerator with ice maker', '0', '55', '', ''),
(194, 18, 'Additional Fridge or Freestanding Fridge/Freezer', '0', '50', '', ''),
(195, 18, 'Prof. Series Appliances - Kitchen', '0', '100', '', ''),
(196, 18, 'Washer / Dryer', '0', '95', '', ''),
(197, 18, 'Water Softener', '0', '75', '', ''),
(198, 18, 'Casita / Guest House', '0', '195', '', ''),
(199, 18, 'Second Kitchen', '0', '100', '', ''),
(200, 18, 'Pool / Hot Tub - Chlorine', '0', '225', '', ''),
(201, 18, 'Pool / Hot Tub - Salt Water', '0', '350', '', ''),
(202, 18, 'Water Heater (Additional)', '0', '50', '', ''),
(203, 18, 'External Pipe leak', '0', '85', '', ''),
(204, 18, 'Booster Pump - House', '0', '75', '', ''),
(205, 18, 'Grinder Pump', '0', '155', '', ''),
(206, 18, 'Septic System, Pumping & Sewage Ejector Pump', '0', '100', '', ''),
(207, 18, 'Well Pump', '0', '100', '', ''),
(208, 18, 'Discount Pre Paid Service Fee', '0', '65', '', ''),
(209, 18, 'Sq Footage 6001-7000', '0', '75', '', ''),
(210, 18, 'Sq Footage 7001-8000', '0', '150', '', ''),
(211, 18, 'Sq Footage 8001 and above', '0', '250', '', ''),
(212, 19, 'Refrigerator with ice maker', '0', '55', '', ''),
(213, 19, 'Additional Fridge or Freestanding Fridge/Freezer', '0', '50', '', ''),
(214, 19, 'Prof. Series Appliances - Kitchen', '0', '100', '', ''),
(215, 19, 'Washer / Dryer', '0', '95', '', ''),
(216, 19, 'Water Softener', '0', '75', '', ''),
(217, 19, 'Casita / Guest House', '0', '195', '', ''),
(218, 19, 'Second Kitchen', '0', '100', '', ''),
(219, 19, 'Pool / Hot Tub - Chlorine', '0', '225', '', ''),
(220, 19, 'Pool / Hot Tub - Salt Water', '0', '350', '', ''),
(221, 19, 'Water Heater (Additional)', '0', '50', '', ''),
(222, 19, 'External Pipe leak', '0', '85', '', ''),
(223, 19, 'Booster Pump - House', '0', '75', '', ''),
(224, 19, 'Grinder Pump', '0', '155', '', ''),
(225, 19, 'Septic System, Pumping & Sewage Ejector Pump', '0', '100', '', ''),
(226, 19, 'Well Pump', '0', '100', '', ''),
(227, 19, 'Discount Pre Paid Service Fee', '0', '65', '', ''),
(228, 19, 'Sq Footage 6001-7000', '0', '75', '', ''),
(229, 19, 'Sq Footage 7001-8000', '0', '150', '', ''),
(230, 19, 'Sq Footage 8001 and above', '0', '250', '', ''),
(231, 20, 'Refrigerator with ice maker', '0', '55', '', ''),
(232, 20, 'Additional Fridge or Freestanding Fridge/Freezer', '0', '50', '', ''),
(233, 20, 'Prof. Series Appliances - Kitchen', '0', '100', '', ''),
(234, 20, 'Washer / Dryer', '0', '95', '', ''),
(235, 21, 'Additional Fridge or Freestanding Fridge/Freezer', '5.41', '65', '', ''),
(236, 21, 'Booster Pump - House', '6.25', '75', '{\"title\":\"Booster Pump - House\",\"full_content\":\"<p>Covered: This coverage option covers a well pump or booster pump utilized for the main dwelling only. Limits $1000.</p>\"}', '<span><a>Booster Pump - House</a></span>'),
(237, 21, 'Casita House', '16.25', '195', '{\"title\":\"Casita House\",\"full_content\":\"<p>Covered: standard coverage: appliances, plumbing, hvac, electrical, garage systems. fridge not incl.</p>\"}', '<span><a>Casita House</a>'),
(238, 21, 'Discount Pre Paid Service Fee', '5.41', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '<span><a>Discount Pre Paid Service Fee</a>'),
(239, 21, 'Enhanced/External Pipe leak', '7.08', '85', '{\"title\":\"Enhanced/External Pipe leak\",\"full_content\":\"<p>Covered: This coverage option provides coverage for external pipe leaks that are concrete encased or underground pipe leaks located outside the foundation of the covered structure, including water, gas, swere and drain lines that service the main home or other structure covered under this Contract. Limits $1000.</p>\"}', '<span><a>Enhanced/External Pipe leak</a>'),
(240, 21, 'Fireplace Coverage', '12.5', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '<span><a>Fireplace Coverage</a>'),
(241, 21, 'Grinder Pump', '12.91', '155', '{\"title\":\"Grinder Pump\",\"full_content\":\"<p>Covered: This coverage option covers a sewage grinder pump (up to 2 HP) utilized for the main dwelling only. Limit $1000.</p>\"}', '<span><a>Grinder Pump</a>'),
(242, 21, 'Heating & A/C Zone System', '12.5', '150', '{\"title\":\"Heating & A/C Zone System\",\"full_content\":\"<p>Covered: Dampers – Damper Controls – Related Electrical – thermostats (replaced with builder standard when necessary)  – Zone Panel – Zone Valve. Limit $500.</p>\"}', '<span><a>Heating & A/C Zone System</a>'),
(243, 21, 'Outdoor Kitchen', '16.25', '195', '{\"title\":\"Outdoor Kitchen\",\"full_content\":\"<p>Covered: mini refrigerator-wine refrigerator- and freezer (not to exceed six cubic feet) built in cooktop/Barbeque-garbage disposal Includes above ground plumbing and electrical that serve outdoor kitchen only. Above ground piping for water and gas, outlets, and ceiling fans. Faucet replaced with chrome builder standard. iLmit $1500.</p>\"}', '<span><a>Outdoor Kitchen</a>'),
(244, 21, 'Prof. Series Appliances - Kit.', '7.08', '85', '{\"title\":\"Prof. Series Appliances - Kit.\",\"full_content\":\"<p>Covered: increases appliance limits (section F6) by an additional $1,000 in the aggregate, including refrigerator in main kitchen.</p>\"}', '<span><a>Prof. Series Appliances - Kit.</a>'),
(245, 21, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(246, 21, 'Septic System, Pumping & Sewage Ejector Pump', '7.08', '85', '{\"title\":\"Septic System, Pumping & Sewage Ejector Pump\",\"full_content\":\"<p>Covered: aerobic pump - jet pump - sewer ejector pump - septic tank and line from house to tank.  If a stoppage occurs due to a septic tank back up, AHW will pump the septic tank one time during the contract term. Limit $500.</p>\"}', '<span><a>Septic System, Pumping & Sewage Ejector Pump</a>'),
(247, 21, 'Sq Footage 5001-6000', '6.25', '75', '', ''),
(248, 21, 'Sq Footage 6001-7000', '12.5', '150', '', ''),
(249, 21, 'Sq Footage 7001-8000', '18.75', '225', '', ''),
(250, 21, 'Sq Footage 8001 and above', '25', '300', '', ''),
(251, 21, 'Swimming Pool/Hot Tub Chlorine', '18.75', '225', '{\"title\":\"Swimming Pool/Hot Tub Chlorine\",\"full_content\":\"<p>Covered: This coverage option provides coverage for the above ground components and parts of the heating, pumping, and filtrations system as follows: timers - heater - motor - filter - gaskets - blower - pump - filter timer - pool sweep motor and pump - above ground and accessible plumbing and electrical. Note: Both pool and spa equipment (exterior hot tub and whirlpool) are covered if they utilize common equipment. If they do not utilize common equipment, then only one or the other is covered unless an additional coverage fee is paid. Limit $1000.</p>\"}', '<span><a>Swimming Pool/Hot Tub Chlorine</a>'),
(252, 21, 'Swimming Pool/Hot Tub Salt', '24.58', '295', '{\"title\":\"Swimming Pool/Hot Tub Salt\",\"full_content\":\"<p>Covered: all components listed as covered items in section 9 including salt water control unit - salt cell - flow sensor for the salt water chlorinator. Limit $2000.</p>\"}', '<span><a>Swimming Pool/Hot Tub Salt</a>'),
(253, 21, 'Washer / Dryer', '7.08', '85', '', ''),
(254, 21, 'Water Softener', '5.41', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '<span><a>Water Softener</a>'),
(255, 21, 'Well Pump', '6.25', '75', '{\"title\":\"Well Pump\",\"full_content\":\"<p>Covered: This coverage option covers a well pump utilized for the main dwelling only. Limit $1500.</p>\"}', '<span><a>Well Pump</a>'),
(256, 21, 'Wine Cooler/ Mini Fridges (per unit)', '4.58', '55', '{\"title\":\"Wine Cooler/Mini Fridges(per unit)\",\"full_content\":\"<p>Covered: All mechanical parts and components that affect the operation of the cooling system are covered, except for items listed as “Not Covered” herein. Limits $150.</p>\"}', '<span><a>Wine Cooler/Mini Fridges (per unit)</a>'),
(257, 22, 'Additional Fridge or Freestanding Fridge/Freezer', '5.41', '65', '', ''),
(258, 22, 'Booster Pump - House', '6.25', '75', '{\"title\":\"Booster Pump - House\",\"full_content\":\"<p>Covered: This coverage option covers a well pump or booster pump utilized for the main dwelling only. Limits $1000.</p>\"}', '<span><a>Booster Pump - House</a></span>'),
(259, 22, 'Casita House', '16.25', '195', '{\"title\":\"Casita House\",\"full_content\":\"<p>Covered: standard coverage: appliances, plumbing, hvac, electrical, garage systems. fridge not incl.</p>\"}', '<span><a>Casita House</a>'),
(260, 22, 'Discount Pre Paid Service Fee', '5.41', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '<span><a>Discount Pre Paid Service Fee</a>'),
(261, 22, 'Enhanced/External Pipe leak', '7.08', '85', '{\"title\":\"Enhanced/External Pipe leak\",\"full_content\":\"<p>Covered: This coverage option provides coverage for external pipe leaks that are concrete encased or underground pipe leaks located outside the foundation of the covered structure, including water, gas, swere and drain lines that service the main home or other structure covered under this Contract. Limits $1000.</p>\"}', '<span><a>Enhanced/External Pipe leak</a>'),
(262, 22, 'Fireplace Coverage', '12.5', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '<span><a>Fireplace Coverage</a>'),
(263, 22, 'Grinder Pump', '12.91', '155', '{\"title\":\"Grinder Pump\",\"full_content\":\"<p>Covered: This coverage option covers a sewage grinder pump (up to 2 HP) utilized for the main dwelling only. Limit $1000.</p>\"}', '<span><a>Grinder Pump</a>'),
(264, 22, 'Heating & A/C Zone System', '12.5', '150', '{\"title\":\"Heating & A/C Zone System\",\"full_content\":\"<p>Covered: Dampers – Damper Controls – Related Electrical – thermostats (replaced with builder standard when necessary)  – Zone Panel – Zone Valve. Limit $500.</p>\"}', '<span><a>Heating & A/C Zone System</a>'),
(265, 22, 'Outdoor Kitchen', '16.25', '195', '{\"title\":\"Outdoor Kitchen\",\"full_content\":\"<p>Covered: mini refrigerator-wine refrigerator- and freezer (not to exceed six cubic feet) built in cooktop/Barbeque-garbage disposal Includes above ground plumbing and electrical that serve outdoor kitchen only. Above ground piping for water and gas, outlets, and ceiling fans. Faucet replaced with chrome builder standard. iLmit $1500.</p>\"}', '<span><a>Outdoor Kitchen</a>'),
(266, 22, 'Prof. Series Appliances - Kit.', '7.08', '85', '{\"title\":\"Prof. Series Appliances - Kit.\",\"full_content\":\"<p>Covered: increases appliance limits (section F6) by an additional $1,000 in the aggregate, including refrigerator in main kitchen.</p>\"}', '<span><a>Prof. Series Appliances - Kit.</a>'),
(267, 22, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(268, 22, 'Septic System, Pumping & Sewage Ejector Pump', '7.08', '85', '{\"title\":\"Septic System, Pumping & Sewage Ejector Pump\",\"full_content\":\"<p>Covered: aerobic pump - jet pump - sewer ejector pump - septic tank and line from house to tank.  If a stoppage occurs due to a septic tank back up, AHW will pump the septic tank one time during the contract term. Limit $500.</p>\"}', '<span><a>Septic System, Pumping & Sewage Ejector Pump</a>'),
(269, 22, 'Sq Footage 5001-6000', '6.25', '75', '', ''),
(270, 22, 'Sq Footage 6001-7000', '12.5', '150', '', ''),
(271, 22, 'Sq Footage 7001-8000', '18.75', '225', '', ''),
(272, 22, 'Sq Footage 8001 and above', '25', '300', '', ''),
(273, 22, 'Swimming Pool/Hot Tub Chlorine', '18.75', '225', '{\"title\":\"Swimming Pool/Hot Tub Chlorine\",\"full_content\":\"<p>Covered: This coverage option provides coverage for the above ground components and parts of the heating, pumping, and filtrations system as follows: timers - heater - motor - filter - gaskets - blower - pump - filter timer - pool sweep motor and pump - above ground and accessible plumbing and electrical. Note: Both pool and spa equipment (exterior hot tub and whirlpool) are covered if they utilize common equipment. If they do not utilize common equipment, then only one or the other is covered unless an additional coverage fee is paid. Limit $1000.</p>\"}', '<span><a>Swimming Pool/Hot Tub Chlorine</a>'),
(274, 22, 'Swimming Pool/Hot Tub Salt', '24.58', '295', '{\"title\":\"Swimming Pool/Hot Tub Salt\",\"full_content\":\"<p>Covered: all components listed as covered items in section 9 including salt water control unit - salt cell - flow sensor for the salt water chlorinator. Limit $2000.</p>\"}', '<span><a>Swimming Pool/Hot Tub Salt</a>'),
(275, 22, 'Washer / Dryer', '7.08', '85', '', ''),
(276, 22, 'Water Softener', '5.41', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '<span><a>Water Softener</a>'),
(277, 22, 'Well Pump', '6.25', '75', '{\"title\":\"Well Pump\",\"full_content\":\"<p>Covered: This coverage option covers a well pump utilized for the main dwelling only. Limit $1500.</p>\"}', '<span><a>Well Pump</a>'),
(278, 22, 'Wine Cooler/ Mini Fridges (per unit)', '4.58', '55', '{\"title\":\"Wine Cooler/Mini Fridges(per unit)\",\"full_content\":\"<p>Covered: All mechanical parts and components that affect the operation of the cooling system are covered, except for items listed as “Not Covered” herein. Limits $150.</p>\"}', '<span><a>Wine Cooler/Mini Fridges (per unit)</a>'),
(279, 23, 'Additional Fridge or Freestanding Fridge/Freezer', '5.41', '65', '', ''),
(280, 23, 'Booster Pump - House', '6.25', '75', '{\"title\":\"Booster Pump - House\",\"full_content\":\"<p>Covered: This coverage option covers a well pump or booster pump utilized for the main dwelling only. Limits $1000.</p>\"}', '<span><a>Booster Pump - House</a></span>'),
(281, 23, 'Casita House', '16.25', '195', '{\"title\":\"Casita House\",\"full_content\":\"<p>Covered: standard coverage: appliances, plumbing, hvac, electrical, garage systems. fridge not incl.</p>\"}', '<span><a>Casita House</a>'),
(282, 23, 'Discount Pre Paid Service Fee', '5.41', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '<span><a>Discount Pre Paid Service Fee</a>'),
(283, 23, 'Enhanced/External Pipe leak', '7.08', '85', '{\"title\":\"Enhanced/External Pipe leak\",\"full_content\":\"<p>Covered: This coverage option provides coverage for external pipe leaks that are concrete encased or underground pipe leaks located outside the foundation of the covered structure, including water, gas, swere and drain lines that service the main home or other structure covered under this Contract. Limits $1000.</p>\"}', '<span><a>Enhanced/External Pipe leak</a>'),
(284, 23, 'Fireplace Coverage', '12.5', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '<span><a>Fireplace Coverage</a>'),
(285, 23, 'Grinder Pump ', '12.91', '155', '{\"title\":\"Grinder Pump\",\"full_content\":\"<p>Covered: This coverage option covers a sewage grinder pump (up to 2 HP) utilized for the main dwelling only. Limit $1000.</p>\"}', '<span><a>Grinder Pump</a>'),
(286, 23, 'Heating & A/C Zone System', '12.5', '150', '{\"title\":\"Heating & A/C Zone System\",\"full_content\":\"<p>Covered: Dampers – Damper Controls – Related Electrical – thermostats (replaced with builder standard when necessary)  – Zone Panel – Zone Valve. Limit $500.</p>\"}', '<span><a>Heating & A/C Zone System</a>'),
(287, 23, 'Outdoor Kitchen', '16.25', '195', '{\"title\":\"Outdoor Kitchen\",\"full_content\":\"<p>Covered: mini refrigerator-wine refrigerator- and freezer (not to exceed six cubic feet) built in cooktop/Barbeque-garbage disposal Includes above ground plumbing and electrical that serve outdoor kitchen only. Above ground piping for water and gas, outlets, and ceiling fans. Faucet replaced with chrome builder standard. iLmit $1500.</p>\"}', '<span><a>Outdoor Kitchen</a>'),
(288, 23, 'Prof. Series Appliances - Kit.', '7.08', '85', '{\"title\":\"Prof. Series Appliances - Kit.\",\"full_content\":\"<p>Covered: increases appliance limits (section F6) by an additional $1,000 in the aggregate, including refrigerator in main kitchen.</p>\"}', '<span><a>Prof. Series Appliances - Kit.</a>'),
(289, 23, 'Refrigerator with ice maker', '4.58', '55', '', ''),
(290, 23, 'Septic System, Pumping & Sewage Ejector Pump', '7.08', '85', '{\"title\":\"Septic System, Pumping & Sewage Ejector Pump\",\"full_content\":\"<p>Covered: aerobic pump - jet pump - sewer ejector pump - septic tank and line from house to tank.  If a stoppage occurs due to a septic tank back up, AHW will pump the septic tank one time during the contract term. Limit $500.</p>\"}', '<span><a>Septic System, Pumping & Sewage Ejector Pump</a>'),
(291, 23, 'Sq Footage 5001-6000', '6.25', '75', '', ''),
(292, 23, 'Sq Footage 6001-7000', '12.5', '150', '', ''),
(293, 23, 'Sq Footage 7001-8000', '18.75', '225', '', ''),
(294, 23, 'Sq Footage 8001 and above', '25', '300', '', ''),
(295, 23, 'Swimming Pool/Hot Tub Chlorine', '18.75', '225', '{\"title\":\"Swimming Pool/Hot Tub Chlorine\",\"full_content\":\"<p>Covered: This coverage option provides coverage for the above ground components and parts of the heating, pumping, and filtrations system as follows: timers - heater - motor - filter - gaskets - blower - pump - filter timer - pool sweep motor and pump - above ground and accessible plumbing and electrical. Note: Both pool and spa equipment (exterior hot tub and whirlpool) are covered if they utilize common equipment. If they do not utilize common equipment, then only one or the other is covered unless an additional coverage fee is paid. Limit $1000.</p>\"}', '<span><a>Swimming Pool/Hot Tub Chlorine</a>'),
(296, 23, 'Swimming Pool/Hot Tub Salt', '24.58', '295', '{\"title\":\"Swimming Pool/Hot Tub Salt\",\"full_content\":\"<p>Covered: all components listed as covered items in section 9 including salt water control unit - salt cell - flow sensor for the salt water chlorinator. Limit $2000.</p>\"}', '<span><a>Swimming Pool/Hot Tub Salt</a>'),
(297, 23, 'Washer / Dryer', '7.08', '85', '', ''),
(298, 23, 'Water Softener', '5.41', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '<span><a>Water Softener</a>'),
(299, 23, 'Well Pump', '6.25', '75', '{\"title\":\"Well Pump\",\"full_content\":\"<p>Covered: This coverage option covers a well pump utilized for the main dwelling only. Limit $1500.</p>\"}', '<span><a>Well Pump</a>'),
(300, 23, 'Wine Cooler/ Mini Fridges (per unit)', '4.58', '55', '{\"title\":\"Wine Cooler/Mini Fridges(per unit)\",\"full_content\":\"<p>Covered: All mechanical parts and components that affect the operation of the cooling system are covered, except for items listed as “Not Covered” herein. Limits $150.</p>\"}', '<span><a>Wine Cooler/Mini Fridges (per unit)</a>'),
(301, 24, 'Kitchen Refrigerator (included)', '0', '0', '', ''),
(302, 24, 'Additional Range/Oven', '0', '90', '', ''),
(303, 24, 'Additional Garbage Disposal', '0', '90', '', ''),
(304, 24, 'Septic System/Pumping', '0', '130', '', ''),
(305, 24, 'Grinder Pump', '0', '310', '', ''),
(306, 24, 'Casita', '0', '290', '', ''),
(307, 24, 'Premium Coverage Upgrade', '0', '200', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(308, 24, 'Well Pump', '0', '150', '', ''),
(309, 24, 'Additional Dishwasher', '0', '90', '', ''),
(310, 24, 'Additional Built-In Microwave', '0', '90', '', ''),
(311, 24, '\r\nSalt Water Swimming Pool', '0', '390', '', ''),
(312, 24, 'Enhanced External Pipe Coverage', '0', '170', '', ''),
(313, 24, 'Additional Refrigeration/Freezer', '0', '90', '', ''),
(314, 24, 'Booster Pump', '0', '150', '', ''),
(315, 24, 'Swimming Pool/Spa Equipment', '0', '350', '', ''),
(316, 24, 'Water Heater (additional unit)', '0', '110', '', ''),
(317, 24, '\r\nRoof Leak Repairs', '0', '170', '', ''),
(318, 24, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '0', '55', '', ''),
(319, 24, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '0', '170', '', ''),
(320, 25, 'Kitchen Refrigerator (included)', '0', '0', '', ''),
(321, 25, 'Additional Range/Oven', '0', '135', '', ''),
(322, 25, 'Additional Garbage Disposal', '0', '135', '', ''),
(323, 25, 'Septic System/Pumping', '0', '195', '', ''),
(324, 25, 'Grinder Pump', '0', '465', '', ''),
(325, 25, 'Casita', '0', '435', '', ''),
(326, 25, 'Premium Coverage Upgrade', '0', '300', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(327, 25, 'Well Pump', '0', '225', '', ''),
(328, 25, 'Additional Dishwasher', '0', '135', '', ''),
(329, 25, 'Additional Built-In Microwave', '0', '135', '', ''),
(330, 25, 'Salt Water Swimming Pool', '0', '585', '', ''),
(331, 25, 'Enhanced External Pipe Coverage', '0', '255', '', ''),
(332, 25, 'Additional Refrigeration/Freezer', '0', '135', '', ''),
(333, 25, 'Booster Pump', '0', '225', '', ''),
(334, 25, 'Swimming Pool/Spa Equipment', '0', '525', '', ''),
(335, 25, 'Water Heater (additional unit)', '0', '165', '', ''),
(336, 25, 'Roof Leak Repairs', '0', '255', '', ''),
(337, 25, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '0', '55', '', ''),
(338, 25, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '0', '255', '', ''),
(339, 26, 'Kitchen Refrigerator (included)', '0', '0', '', ''),
(340, 26, 'Additional Range/Oven', '0', '180', '', ''),
(341, 26, 'Additional Garbage Disposal', '0', '180', '', ''),
(342, 26, 'Septic System/Pumping', '0', '260', '', ''),
(343, 26, 'Grinder Pump', '0', '620', '', ''),
(344, 26, 'Casita', '0', '580', '', ''),
(345, 26, 'Premium Coverage Upgrade', '0', '400', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(346, 26, 'Well Pump', '0', '300', '', ''),
(347, 26, 'Additional Dishwasher', '0', '180', '', ''),
(348, 26, 'Additional Built-In Microwave', '0', '180', '', ''),
(349, 26, 'Salt Water Swimming Pool', '0', '780', '', ''),
(350, 26, 'Enhanced External Pipe Coverage', '0', '340', '', ''),
(351, 26, 'Additional Refrigeration/Freezer', '0', '180', '', ''),
(352, 26, 'Booster Pump', '0', '300', '', ''),
(353, 26, 'Swimming Pool/Spa Equipment', '0', '700', '', ''),
(354, 26, 'Water Heater (additional unit)', '0', '220', '', ''),
(355, 26, 'Roof Leak Repairs', '0', '340', '', ''),
(356, 26, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '0', '55', '', ''),
(357, 26, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '0', '340', '', ''),
(358, 27, 'Swimming Pool/Spa Equipment', '14', '170', '', ''),
(359, 27, 'Roof Leak Repairs', '8', '102', '', ''),
(360, 27, 'Grinder Pump', '12.95', '150', '', ''),
(361, 27, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '55', '55', '', ''),
(362, 27, 'Additional Refrigeration/Freezer', '3.02', '40.50', '', ''),
(363, 27, '3rd Year Coverage', '10', '420', '', ''),
(364, 27, 'Septic System/Pumping', '8.39', '99', '', ''),
(365, 27, 'No Fault Coverage', '50', '6', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p>Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p><strong><b>Limits</b></strong>: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}\r\n', '<span><a>No Fault Coverage</a>'),
(366, 27, 'Furnace (Additional Coverage)', '7.80', '80', '', ''),
(367, 27, 'Casita', '12.56', '15', '', ''),
(368, 27, 'Water Softener', '4.19', '50.9', '', ''),
(369, 27, '2nd Year Coverage', '10', '40', '', ''),
(370, 27, 'Salt Water Swimming Pool', '29', '35', '', ''),
(371, 27, 'Kitchen Refrigerator (inc in Premium & Ultimate plans)', '4', '56', '', ''),
(372, 27, 'Enhanced External Pipe Coverage', '8.30', '10', '', ''),
(373, 27, 'Air Conditioning (additional unit)', '7', '80', '', ''),
(374, 27, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '7.55', '80', '', ''),
(375, 27, 'Premium Coverage Upgrade', '6', '70', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(376, 28, 'Swimming Pool/Spa Equipment', '14.50', '180', '', ''),
(377, 28, 'Roof Leak Repairs', '8.16', '200', '', ''),
(378, 28, 'Grinder Pump', '12', '130', '', ''),
(379, 28, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '56', '63', '', ''),
(380, 28, 'Additional Refrigeration/Freezer', '3.60', '45', '', ''),
(381, 28, '3rd Year Coverage', '20', '47', '', ''),
(382, 28, 'Septic System/Pumping', '33', '10.20', '', ''),
(383, 28, 'No Fault Coverage', '50', '6', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p>Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p><strong><b>Limits</b></strong>: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}\r\n', '<span><a>No Fault Coverage</a>'),
(384, 28, 'Furnace (Additional Coverage)', '7.80', '8', '', ''),
(385, 28, 'Casita', '13.5', '15.25', '', ''),
(386, 28, 'Water Softener', '4.50', '5.15', '', ''),
(387, 28, '2nd Year Coverage', '36', '47', '', ''),
(388, 28, 'Salt Water Swimming Pool', '23.16', '35', '', ''),
(389, 28, 'Kitchen Refrigerator (inc in Premium & Ultimate plans)', '4.19', '58', '', ''),
(390, 28, 'Enhanced External Pipe Coverage', '8.99', '150', '', ''),
(391, 28, 'Air Conditioning (additional unit)', '7.80', '80', '', ''),
(392, 28, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '7.60', '86', '', ''),
(393, 28, 'Premium Coverage Upgrade', '6.3', '74', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(394, 29, 'Swimming Pool/Spa Equipment', '14.50', '176', '', ''),
(395, 29, 'Roof Leak Repairs', '8.36', '108', '', ''),
(396, 29, 'Grinder Pump', '12.96', '165', '', ''),
(397, 29, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '49', '48', '', ''),
(398, 29, 'Additional Refrigeration/Freezer', '30', '60', '', ''),
(399, 29, '3rd Year Coverage', '20', '56', '', ''),
(400, 29, 'Septic System/Pumping', '83', '63', '', '');
INSERT INTO `ho_coverage_upgrades` (`id`, `product_id`, `name`, `monthly_price`, `yearly_price`, `content`, `url`) VALUES
(401, 29, 'No Fault Coverage', '56', '66', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p>Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p><strong><b>Limits</b></strong>: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}\r\n', '<span><a>No Fault Coverage</a>'),
(402, 29, 'Furnace (Additional Coverage)', '7.06', '65', '', ''),
(403, 29, 'Casita', '13.5', '160', '', ''),
(404, 29, 'Water Softener', '4.18', '500', '', ''),
(405, 29, '2nd Year Coverage', '30', '50', '', ''),
(406, 29, 'Salt Water Swimming Pool', '29', '35', '', ''),
(407, 29, 'Kitchen Refrigerator (inc in Premium & Ultimate plans)', '4', '49', '', ''),
(408, 29, 'Enhanced External Pipe Coverage', '8.36', '0', '', ''),
(409, 29, 'Air Conditioning (additional unit)', '7', '58', '', ''),
(410, 29, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '8', '59', '', ''),
(411, 29, 'Premium Coverage Upgrade', '6', '76', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(412, 30, 'Swimming Pool/Spa Equipment', '13', '17', '', ''),
(413, 30, 'Roof Leak Repairs', '8', '10', '', ''),
(414, 30, 'Grinder Pump', '12.1', '166', '', ''),
(415, 30, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '59', '57', '', ''),
(416, 30, 'Additional Refrigeration/Freezer', '3.31', '40.2', '', ''),
(417, 30, '3rd Year Coverage', '33', '0', '', ''),
(418, 30, 'Septic System/Pumping', '8.6', '10', '', ''),
(419, 30, 'No Fault Coverage', '50', '6', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p>Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p><strong><b>Limits</b></strong>: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}\r\n', '<span><a>No Fault Coverage</a>'),
(420, 30, 'Furnace (Additional Coverage)', '7.30', '82', '', ''),
(421, 30, 'Casita', '12.3', '165', '', ''),
(422, 30, 'Water Softener', '4.30', '50.55', '', ''),
(423, 30, '2nd Year Coverage', '60', '55', '', ''),
(424, 30, 'Salt Water Swimming Pool', '29.60', '35', '', ''),
(425, 30, 'Kitchen Refrigerator (inc in Premium & Ultimate plans)', '4.19', '500', '', ''),
(426, 30, 'Enhanced External Pipe Coverage', '8.00', '10.60', '', ''),
(427, 30, 'Air Conditioning (additional unit)', '7.80', '85.90', '', ''),
(428, 30, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '7.60', '85.52', '', ''),
(429, 30, 'Premium Coverage Upgrade', '6.20', '7', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(430, 31, 'Swimming Pool/Spa Equipment', '14.16', '17.3', '', ''),
(431, 31, 'Roof Leak Repairs', '8.36', '10.50', '', ''),
(432, 31, 'Grinder Pump', '12.56', '15.44', '', ''),
(433, 31, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '50.63', '5.55', '', ''),
(434, 31, 'Additional Refrigeration/Freezer', '6.33', '4', '', ''),
(435, 31, '3rd Year Coverage', '65', '60', '', ''),
(436, 31, 'Septic System/Pumping', '8', '105', '', ''),
(437, 31, 'No Fault Coverage', '53', '68', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p>Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p><strong><b>Limits</b></strong>: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}\r\n', '<span><a>No Fault Coverage</a>'),
(438, 31, 'Furnace (Additional Coverage)', '7.32', '59', '', ''),
(439, 31, 'Casita', '12.63', '1.58', '', ''),
(440, 31, 'Water Softener', '4.33', '5.66', '', ''),
(441, 31, '2nd Year Coverage', '9', '0', '', ''),
(442, 31, 'Salt Water Swimming Pool', '23', '31', '', ''),
(443, 31, 'Kitchen Refrigerator (inc in Premium & Ultimate plans)', '5.33', '80', '', ''),
(444, 31, 'Enhanced External Pipe Coverage', '20.66', '10.66', '', ''),
(445, 31, 'Air Conditioning (additional unit)', '7.96', '84.33', '', ''),
(446, 31, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '7.80', '8.90', '', ''),
(447, 31, 'Premium Coverage Upgrade', '6.30', '78.33', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(448, 32, 'Kitchen Refrigerator (included)', '0', '0', '', ''),
(449, 32, 'Salt Water Swimming Pool', '0', '700', '', ''),
(450, 32, 'Furnace (Additional Coverage)', '0', '170', '', ''),
(451, 32, 'Casita', '0', '300', '', ''),
(452, 32, 'Water Softener', '0', '100', '', ''),
(453, 32, 'Swimming Pool/Spa Equipment', '0', '350', '', ''),
(454, 32, 'Roof Leak Repairs', '0', '200', '', ''),
(455, 32, 'Enhanced External Pipe Coverage', '0', '200', '', ''),
(456, 32, 'Air Conditioning (additional unit)', '0', '170', '', ''),
(457, 32, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '0', '170', '', ''),
(458, 32, 'Septic System/Pumping', '0', '200', '', ''),
(459, 32, 'Grinder Pump', '0', '310', '', ''),
(460, 32, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '0', '50', '', ''),
(461, 32, 'Additional Refrigeration/Freezer', '0', '80', '', ''),
(462, 32, 'Premium Coverage Upgrade', '0', '150', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(463, 33, 'Kitchen Refrigerator (included)', '0', '0', '', ''),
(464, 33, 'Salt Water Swimming Pool', '0', '1050', '', ''),
(465, 33, 'Furnace (Additional Coverage)', '0', '255', '', ''),
(466, 33, 'Casita', '0', '450', '', ''),
(467, 33, 'Water Softener', '0', '150', '', ''),
(468, 33, 'Swimming Pool/Spa Equipment', '0', '525', '', ''),
(469, 33, 'Roof Leak Repairs', '0', '300', '', ''),
(470, 33, 'Enhanced External Pipe Coverage', '0', '300', '', ''),
(471, 33, 'Air Conditioning (additional unit)', '0', '255', '', ''),
(472, 33, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '0', '255', '', ''),
(473, 33, 'Septic System/Pumping', '0', '300', '', ''),
(474, 33, 'Grinder Pump', '0', '465', '', ''),
(475, 33, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '0', '50', '', ''),
(476, 33, 'Additional Refrigeration/Freezer', '0', '120', '', ''),
(477, 33, 'Premium Coverage Upgrade', '0', '225', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(478, 34, 'Kitchen Refrigerator (included)', '0', '0', '', ''),
(479, 34, 'Salt Water Swimming Pool', '0', '1400', '', ''),
(480, 34, 'Furnace (Additional Coverage)', '0', '340', '', ''),
(481, 34, 'Casita', '0', '600', '', ''),
(482, 34, 'Water Softener', '0', '200', '', ''),
(483, 34, 'Swimming Pool/Spa Equipment', '0', '700', '', ''),
(484, 34, 'Roof Leak Repairs', '0', '400', '', ''),
(485, 34, 'Enhanced External Pipe Coverage', '0', '400', '', ''),
(486, 34, 'Air Conditioning (additional unit)', '0', '340', '', ''),
(487, 34, 'Additional Washer Dryer (1 set incl in Ultimate Plans)', '0', '340', '', ''),
(488, 34, 'Septic System/Pumping', '0', '400', '', ''),
(489, 34, 'Grinder Pump', '0', '620', '', ''),
(490, 34, 'Discounted Pre-Paid Service Call Fee (ONE TIME FEE)', '0', '50', '', ''),
(491, 34, 'Additional Refrigeration/Freezer', '0', '160', '', ''),
(492, 34, 'Premium Coverage Upgrade', '0', '300', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong><b>Heating System</b></strong>: registers- disposable filters - grills - heat lamps </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator</b></strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '<span><a>Premium Coverage Upgrade</a>'),
(493, 41, 'Water Heater (Additional)', '0', '50', '', ''),
(494, 41, 'Roof Leak Repair', '0', '100', '', ''),
(495, 41, 'External Pipe leak', '0', '100', '', ''),
(496, 41, 'Grinder Pump', '0', '155', '', ''),
(497, 41, 'Septic System, Pumping & Sewage Ejector Pump', '0', '100', '', ''),
(498, 41, 'Fireplace Coverage', '0', '150', '', ''),
(499, 0, 'Heating & A/C Zone System', '0', '150', '', ''),
(500, 41, 'Well Pump', '0', '100', '', ''),
(501, 41, 'Discount Pre Paid Service Fee', '0', '50', '', ''),
(502, 41, 'Sq Footage 6001-7000', '0', '75', '', ''),
(503, 41, 'Sq Footage 7001-8000', '0', '150', '', ''),
(504, 41, 'Sq Footage 8001 and above', '0', '250', '', ''),
(505, 42, 'Refrigerator with ice maker', '', '55', '', ''),
(506, 42, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(507, 42, 'Prof. Series Appliances - Kit.', '', '100', '', ''),
(508, 42, 'Washer / Dryer', '', '100', '', ''),
(509, 42, 'Water Softener', '', '75', '', ''),
(510, 42, 'Casita / Guest House', '', '195', '', ''),
(511, 42, 'Second Kitchen', '', '100', '', ''),
(512, 42, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(513, 42, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(514, 42, 'Water Heater (Additional)', '', '50', '', ''),
(515, 42, 'External Pipe leak', '', '100', '', ''),
(516, 42, 'Roof Leak Repair', '', '100', '', ''),
(517, 42, 'Grinder Pump', '', '155', '', ''),
(518, 42, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(519, 42, 'Fireplace Coverage', '', '150', '', ''),
(520, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(521, 42, 'Well Pump', '', '100', '', ''),
(522, 42, 'Discount Pre Paid Service Fee', '', '50', '', ''),
(523, 42, 'Sq Footage 6001-7000', '', '75', '', ''),
(524, 42, 'Sq Footage 7001-8000', '', '150', '', ''),
(525, 42, 'Sq Footage 8001 and above', '', '250', '', ''),
(526, 43, 'Refrigerator with ice maker', '', '55', '', ''),
(527, 43, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(528, 43, 'Prof. Series Appliances - Kit.', '', '100', '', ''),
(529, 43, 'Washer / Dryer', '', '100', '', ''),
(530, 43, 'Water Softener', '', '75', '', ''),
(531, 43, 'Casita / Guest House', '', '195', '', ''),
(532, 43, 'Second Kitchen', '', '100', '', ''),
(533, 43, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(534, 43, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(535, 43, 'Water Heater (Additional)', '', '50', '', ''),
(536, 43, 'External Pipe leak', '', '100', '', ''),
(537, 43, 'Roof Leak Repair', '', '100', '', ''),
(538, 43, 'Grinder Pump', '', '155', '', ''),
(539, 43, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(540, 43, 'Fireplace Coverage', '', '150', '', ''),
(541, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(542, 43, 'Well Pump', '', '100', '', ''),
(543, 43, 'Discount Pre Paid Service Fee', '', '50', '', ''),
(544, 43, 'Sq Footage 6001-7000', '', '75', '', ''),
(545, 43, 'Sq Footage 7001-8000', '', '150', '', ''),
(546, 43, 'Sq Footage 8001 and above', '', '250', '', ''),
(547, 44, 'Refrigerator with ice maker', '', '55', '', ''),
(548, 44, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(549, 44, 'Prof. Series Appliances - Kit.', '', '100', '', ''),
(550, 44, 'Washer / Dryer', '', '100', '', ''),
(551, 44, 'Water Softener', '', '75', '', ''),
(552, 44, 'Casita / Guest House', '', '195', '', ''),
(553, 44, 'Second Kitchen', '', '100', '', ''),
(554, 44, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(555, 44, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(556, 44, 'Water Heater (Additional)', '', '50', '', ''),
(557, 44, 'External Pipe leak', '', '100', '', ''),
(558, 44, 'Roof Leak Repair', '', '100', '', ''),
(559, 44, 'Grinder Pump', '', '155', '', ''),
(560, 44, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(561, 44, 'Fireplace Coverage', '', '150', '', ''),
(562, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(563, 44, 'Well Pump', '', '100', '', ''),
(564, 44, 'Discount Pre Paid Service Fee', '', '50', '', ''),
(565, 44, 'Sq Footage 6001-7000', '', '75', '', ''),
(566, 44, 'Sq Footage 7001-8000', '', '150', '', ''),
(567, 44, 'Sq Footage 8001 and above', '', '250', '', ''),
(568, 45, 'Refrigerator with ice maker', '', '55', '', ''),
(569, 45, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(570, 45, 'Prof. Series Appliances - Kit.', '', '100', '', ''),
(571, 45, 'Washer / Dryer', '', '100', '', ''),
(572, 45, 'Water Softener', '', '75', '', ''),
(573, 45, 'Casita / Guest House', '', '195', '', ''),
(574, 45, 'Second Kitchen', '', '100', '', ''),
(575, 45, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(576, 45, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(577, 45, 'Water Heater (Additional)', '', '50', '', ''),
(578, 45, 'External Pipe leak', '', '100', '', ''),
(579, 45, 'Roof Leak Repair', '', '100', '', ''),
(580, 45, 'Grinder Pump', '', '155', '', ''),
(581, 45, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(582, 45, 'Fireplace Coverage', '', '150', '', ''),
(583, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(584, 45, 'Well Pump', '', '100', '', ''),
(585, 45, 'Discount Pre Paid Service Fee', '', '50', '', ''),
(586, 45, 'Sq Footage 6001-7000', '', '75', '', ''),
(587, 45, 'Sq Footage 7001-8000', '', '150', '', ''),
(588, 45, 'Sq Footage 8001 and above', '', '250', '', ''),
(589, 46, 'Refrigerator with ice maker', '', '55', '', ''),
(590, 46, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(591, 46, 'Prof. Series Appliances - Kit.', '', '100', '', ''),
(592, 46, 'Washer / Dryer', '', '100', '', ''),
(593, 46, 'Water Softener', '', '75', '', ''),
(594, 46, 'Casita / Guest House', '', '195', '', ''),
(595, 46, 'Second Kitchen', '', '100', '', ''),
(596, 46, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(597, 46, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(598, 46, 'Water Heater (Additional)', '', '50', '', ''),
(599, 46, 'External Pipe leak', '', '100', '', ''),
(600, 46, 'Roof Leak Repair', '', '100', '', ''),
(601, 46, 'Grinder Pump', '', '155', '', ''),
(602, 46, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(603, 46, 'Fireplace Coverage', '', '150', '', ''),
(604, 0, 'Heating & A/C Zone System', '', '150', '', ''),
(605, 46, 'Well Pump', '', '100', '', ''),
(606, 46, 'Discount Pre Paid Service Fee', '', '50', '', ''),
(607, 46, 'Sq Footage 6001-7000', '', '75', '', ''),
(608, 46, 'Sq Footage 7001-8000', '', '150', '', ''),
(609, 46, 'Sq Footage 8001 and above', '', '250', '', ''),
(610, 20, 'Water Softener', '', '75', '', ''),
(611, 20, 'Casita / Guest House', '', '195', '', ''),
(612, 20, 'Second Kitchen', '', '100', '', ''),
(613, 20, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(614, 20, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(615, 20, 'Water Heater (Additional)', '', '50', '', ''),
(616, 20, 'External Pipe leak', '', '85', '', ''),
(617, 20, 'Booster Pump - House', '', '75', '', ''),
(618, 20, 'Grinder Pump ', '', '155', '', ''),
(619, 20, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(620, 20, 'Well Pump', '', '100', '', ''),
(621, 20, 'Discount Pre Paid Service Fee', '', '65', '', ''),
(622, 20, 'Sq Footage 6001-7000', '', '75', '', ''),
(623, 20, 'Sq Footage 7001-8000', '', '150', '', ''),
(624, 20, 'Sq Footage 8001 and above', '', '250', '', ''),
(625, 47, 'Refrigerator with ice maker', '', '55', '', ''),
(626, 47, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(627, 47, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(628, 47, 'Washer / Dryer', '', '95', '', ''),
(629, 47, 'Water Softener', '', '75', '', ''),
(630, 47, 'Casita / Guest House', '', '195', '', ''),
(631, 47, 'Second Kitchen', '', '100', '', ''),
(632, 47, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(633, 47, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(634, 47, 'Water Heater (Additional)', '', '50', '', ''),
(635, 47, 'External Pipe leak', '', '85', '', ''),
(636, 47, 'Booster Pump - House', '', '75', '', ''),
(637, 47, 'Grinder Pump ', '', '155', '', ''),
(638, 47, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(639, 47, 'Well Pump', '', '100', '', ''),
(640, 47, 'Discount Pre Paid Service Fee', '', '65', '', ''),
(641, 47, 'Sq Footage 6001-7000', '', '75', '', ''),
(642, 47, 'Sq Footage 7001-8000', '', '150', '', ''),
(643, 47, 'Sq Footage 8001 and above', '', '250', '', ''),
(644, 48, 'Refrigerator with ice maker', '', '55', '', ''),
(645, 48, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(646, 48, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(647, 48, 'Washer / Dryer', '', '95', '', ''),
(648, 48, 'Water Softener', '', '75', '', ''),
(649, 48, 'Casita / Guest House', '', '195', '', ''),
(650, 48, 'Second Kitchen', '', '100', '', ''),
(651, 48, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(652, 48, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(653, 48, 'Water Heater (Additional)', '', '50', '', ''),
(654, 48, 'External Pipe leak', '', '85', '', ''),
(655, 48, 'Booster Pump - House', '', '75', '', ''),
(656, 48, 'Grinder Pump ', '', '155', '', ''),
(657, 48, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(658, 48, 'Well Pump', '', '100', '', ''),
(659, 48, 'Discount Pre Paid Service Fee', '', '65', '', ''),
(660, 48, 'Sq Footage 6001-7000', '', '75', '', ''),
(661, 48, 'Sq Footage 7001-8000', '', '150', '', ''),
(662, 48, 'Sq Footage 8001 and above', '', '250', '', ''),
(663, 49, 'Refrigerator with ice maker', '', '55', '', ''),
(664, 49, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(665, 49, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(666, 49, 'Washer / Dryer', '', '95', '', ''),
(667, 49, 'Water Softener', '', '75', '', ''),
(668, 49, 'Casita / Guest House', '', '195', '', ''),
(669, 49, 'Second Kitchen', '', '100', '', ''),
(670, 49, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(671, 49, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(672, 49, 'Water Heater (Additional)', '', '50', '', ''),
(673, 49, 'External Pipe leak', '', '85', '', ''),
(674, 49, 'Booster Pump - House', '', '75', '', ''),
(675, 49, 'Grinder Pump ', '', '155', '', ''),
(676, 49, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(677, 49, 'Well Pump', '', '100', '', ''),
(678, 49, 'Discount Pre Paid Service Fee', '', '65', '', ''),
(679, 49, 'Sq Footage 6001-7000', '', '75', '', ''),
(680, 49, 'Sq Footage 7001-8000', '', '150', '', ''),
(681, 49, 'Sq Footage 8001 and above', '', '250', '', ''),
(682, 50, 'Refrigerator with ice maker', '', '55', '', ''),
(683, 50, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(684, 50, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(685, 50, 'Washer / Dryer', '', '95', '', ''),
(686, 50, 'Water Softener', '', '75', '', ''),
(687, 50, 'Casita / Guest House', '', '195', '', ''),
(688, 50, 'Second Kitchen', '', '100', '', ''),
(689, 50, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(690, 50, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(691, 50, 'Water Heater (Additional)', '', '50', '', ''),
(692, 50, 'External Pipe leak', '', '85', '', ''),
(693, 50, 'Booster Pump - House', '', '75', '', ''),
(694, 50, 'Grinder Pump ', '', '155', '', ''),
(695, 50, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(696, 50, 'Well Pump', '', '100', '', ''),
(697, 50, 'Discount Pre Paid Service Fee', '', '65', '', ''),
(698, 50, 'Sq Footage 6001-7000', '', '75', '', ''),
(699, 50, 'Sq Footage 7001-8000', '', '150', '', ''),
(700, 50, 'Sq Footage 8001 and above', '', '250', '', ''),
(701, 51, 'Refrigerator with ice maker', '', '55', '', ''),
(702, 51, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(703, 51, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(704, 51, 'Washer / Dryer', '', '95', '', ''),
(705, 51, 'Water Softener', '', '75', '', ''),
(706, 51, 'Casita / Guest House', '', '195', '', ''),
(707, 51, 'Second Kitchen', '', '100', '', ''),
(708, 51, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(709, 51, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(710, 51, 'Water Heater (Additional)', '', '50', '', ''),
(711, 51, 'External Pipe leak', '', '85', '', ''),
(712, 51, 'Booster Pump - House', '', '75', '', ''),
(713, 51, 'Grinder Pump ', '', '155', '', ''),
(714, 51, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(715, 51, 'Well Pump', '', '100', '', ''),
(716, 51, 'Discount Pre Paid Service Fee', '', '65', '', ''),
(717, 51, 'Sq Footage 6001-7000', '', '75', '', ''),
(718, 51, 'Sq Footage 7001-8000', '', '150', '', ''),
(719, 51, 'Sq Footage 8001 and above', '', '250', '', ''),
(720, 52, 'Refrigerator with ice maker', '', '55', '', ''),
(721, 52, 'Additional Fridge or Freestanding Fridge/Freezer', '', '50', '', ''),
(722, 52, 'Prof. Series Appliances - Kitchen', '', '100', '', ''),
(723, 52, 'Washer / Dryer', '', '95', '', ''),
(724, 52, 'Water Softener', '', '75', '', ''),
(725, 52, 'Casita / Guest House', '', '195', '', ''),
(726, 52, 'Second Kitchen', '', '100', '', ''),
(727, 52, 'Pool / Hot Tub - Chlorine', '', '225', '', ''),
(728, 52, 'Pool / Hot Tub - Salt Water', '', '350', '', ''),
(729, 52, 'Water Heater (Additional)', '', '50', '', ''),
(730, 52, 'External Pipe leak', '', '85', '', ''),
(731, 52, 'Booster Pump - House', '', '75', '', ''),
(732, 52, 'Grinder Pump ', '', '155', '', ''),
(733, 52, 'Septic System, Pumping & Sewage Ejector Pump', '', '100', '', ''),
(734, 52, 'Well Pump', '', '100', '', ''),
(735, 52, 'Discount Pre Paid Service Fee', '', '65', '', ''),
(736, 52, 'Sq Footage 6001-7000', '', '75', '', ''),
(737, 52, 'Sq Footage 7001-8000', '', '150', '', ''),
(738, 52, 'Sq Footage 8001 and above', '', '250', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ho_location_features`
--

CREATE TABLE `ho_location_features` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ho_location_features`
--

INSERT INTO `ho_location_features` (`id`, `location_id`, `name`, `content`) VALUES
(23, 1, 'No Fault Coverage', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p>\r\n<p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}'),
(15, 1, 'Grills', ''),
(16, 1, 'Heat Lamps', ''),
(17, 1, 'Angle Stops, and Gate Valves', ''),
(18, 1, 'Toilet Replacement', ''),
(19, 1, 'Interior Hose Bibs', ''),
(20, 1, 'Shower Heads', ''),
(21, 1, 'Shower Arms - Faucets', ''),
(22, 1, 'Premium Coverage Upgrade', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p>\r\n							<p><strong>Heating System</strong>: registers- disposable filters - grills - heat lamps </p><p><strong>Plumbing</strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong>Air Conditioner</strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong>Refrigerator</strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong>Dishwasher</strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong>Water Heater</strong>: failures due to sediment </p><p><strong>Electrical</strong>: attic fans </p><p><strong>Trash Compactor</strong>: key assemblies - locks - removable bucket </p><p><strong>Garage Door Opener</strong>: springs - hinges - remote transmitter - keypad </p><p><strong>Oven/Range Cooktop</strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong>Built in Microwave Oven</strong>: interior lining - shelves – clock</p>\"}'),
(14, 1, 'Registers', ''),
(13, 1, 'Central Vacuum', ''),
(24, 1, 'Refrigerator', ''),
(25, 1, 'Washer and Dryer', ''),
(26, 2, 'Air Conditioning (unlimited)', ''),
(27, 2, 'Heating/Furnace (unlimited)', ''),
(29, 2, 'Heat Pump', ''),
(30, 2, 'Bi Annual Tune-ups', ''),
(31, 2, 'Thermostat', ''),
(32, 2, 'Duct From Heating or Cooling', ''),
(33, 2, 'Heat Lamps', ''),
(34, 2, 'Freon Recovery/Recapture/Recharge', ''),
(35, 2, 'Grills', ''),
(36, 2, 'Registers', ''),
(37, 2, 'R22 Conversion', ''),
(38, 2, 'Radiant/Broilers', ''),
(39, 2, 'Power Vent Water Heaters', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong>Heating System</strong>: registers- disposable filters - grills - heat lamps </p><p><strong>Plumbing</strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong>Air Conditioner</strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong>Refrigerator</strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong>Dishwasher</strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong>Water Heater</strong>: failures due to sediment </p><p><strong>Electrical</strong>: attic fans </p><p><strong>Trash Compactor</strong>: key assemblies - locks - removable bucket </p><p><strong>Garage Door Opener</strong>: springs - hinges - remote transmitter - keypad </p><p><strong>Oven/Range Cooktop</strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong>Built in Microwave Oven</strong>: interior lining - shelves – clock</p>\"}'),
(40, 2, 'Water Heaters', ''),
(41, 2, 'Water Heaters - Tankless', ''),
(42, 2, 'Stoppages & Clogs', ''),
(44, 2, 'Toilet - Parts', ''),
(45, 2, 'Whirlpool Assembly', ''),
(46, 3, 'Air Conditioning (unlimited)', ''),
(47, 3, 'Heating/Furnace (unlimited)', ''),
(48, 3, 'Heat Pump', ''),
(49, 3, 'Bi Annual Tune-ups', ''),
(50, 3, 'Thermostat', ''),
(51, 3, 'Duct From Heating or Cooling', ''),
(52, 3, 'Heat Lamps', ''),
(53, 3, 'Freon Recovery/Recapture/Recharge', ''),
(54, 3, 'Grills', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included in Premium & Ultimate plans)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong>Heating System</strong>: registers- disposable filters - grills - heat lamps </p><p><strong>Plumbing</strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong>Air Conditioner</strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong>Refrigerator</strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong>Dishwasher</strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong>Water Heater</strong>: failures due to sediment </p><p><strong>Electrical</strong>: attic fans </p><p><strong>Trash Compactor</strong>: key assemblies - locks - removable bucket </p><p><strong>Garage Door Opener</strong>: springs - hinges - remote transmitter - keypad </p><p><strong>Oven/Range Cooktop</strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong>Built in Microwave Oven</strong>: interior lining - shelves - clock</p>\"}'),
(55, 3, 'Registers', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}'),
(56, 3, 'R22 Conversion', ''),
(57, 3, 'Radiant/Broilers', ''),
(58, 4, 'Air Conditioning (unlimited)', ''),
(59, 4, 'Heating/Furnace (unlimited)', ''),
(60, 4, 'Heat Pump', ''),
(61, 4, 'Bi Annual Tune Ups', ''),
(62, 4, 'Thermostat', ''),
(63, 4, 'Duct from Heating or Cooling', ''),
(64, 4, 'Heat Lamps', ''),
(65, 4, 'Freon Recovery/Recapture/Recharge', ''),
(66, 4, 'Grills', ''),
(67, 4, 'Registers', ''),
(68, 4, 'Ductless/Mini-Split', ''),
(69, 4, 'R22 Conversion', ''),
(70, 4, 'Radiant/Broilers', ''),
(71, 4, 'Water Heaters (all units)', ''),
(72, 4, 'Water Heaters - Tankless (up to $800)', ''),
(73, 4, 'Stoppages & Clogs', ''),
(74, 4, 'Toilet - Parts', ''),
(75, 4, 'Whirlpool Assembly', ''),
(76, 4, 'Sump Pump - permanent', ''),
(77, 4, 'Angle Stops / Gate Valves', ''),
(78, 4, 'Toilet Replacement', ''),
(79, 4, 'Interior Hose Bibs', ''),
(80, 5, 'Free ReKey on Ultimate plans', ''),
(81, 5, 'A/C Swamp Cooler', ''),
(82, 5, 'Heating System / Furnace', ''),
(83, 5, 'Heat Pump', ''),
(84, 5, 'Radiant Heating', ''),
(85, 5, 'Thermostat', ''),
(86, 5, 'Duct from Heating or Cooling Unit', ''),
(87, 5, 'Toilets (Parts)', ''),
(88, 5, 'Drain Line Stoppages', ''),
(89, 5, 'Water Heater(1)', ''),
(90, 5, 'Shower and Diverter Valves', ''),
(91, 5, 'Plumbing Leaks (Water, Drains, Gas, or Vent)', ''),
(92, 5, 'Electrical System', ''),
(93, 5, 'Panels and Subpanels', ''),
(94, 5, 'Exhaust Fans', ''),
(95, 5, 'Circuit Breakers', ''),
(96, 5, 'Ceiling Fans', ''),
(97, 5, 'Garage Door System', ''),
(98, 5, 'Oven', ''),
(99, 5, 'Range / Cook Top', ''),
(100, 5, 'Dishwasher', ''),
(101, 5, 'Built in Microwave', ''),
(102, 5, 'Garbage Disposal', ''),
(103, 5, 'Trash Compactor', ''),
(104, 5, 'Central Vacuum', ''),
(105, 5, 'Registers', ''),
(106, 5, 'Grills', ''),
(107, 5, 'Heat Lamps', ''),
(108, 5, 'Angle Stops, and Gate Valves', ''),
(109, 5, 'Toilet Replacement', ''),
(110, 5, 'PRV (Pressure Regulator Valve) inside homes', ''),
(111, 5, 'Interior Hose Bibs', ''),
(112, 5, 'Shower Heads', ''),
(113, 5, 'Shower Arms - Faucets', ''),
(114, 5, 'Premium Coverage Upgrade (adds over 40 items to standard coverage)', ''),
(115, 5, 'Refrigerator', ''),
(116, 5, 'No Fault (code upgrades & mismatched systems)', ''),
(117, 5, 'Exterior hose bibs', ''),
(118, 5, 'Washer and Dryer', ''),
(119, 5, 'R-22 Conversion', ''),
(120, 3, 'Power Vent Water Heaters\r\n', ''),
(121, 4, 'Faucets, Shower Heads & Arms', ''),
(122, 4, 'Shower / Diverter Valves', ''),
(123, 4, 'PRV Inside Home', ''),
(124, 4, 'Main Water Shut Off', ''),
(125, 4, 'Exterior Hose Bibs', ''),
(126, 4, 'Instant Hot Water Dispenser', ''),
(127, 4, 'Panels', ''),
(128, 4, 'Subpanels', ''),
(129, 4, 'Wiring', ''),
(130, 4, 'Junction Boxes', ''),
(131, 4, 'Exhaust Fan - Kitchen', ''),
(132, 4, 'Exhaust Fan - Bathrooms', ''),
(133, 4, 'Ceiling Fans', ''),
(134, 4, 'Exhaust Fan - Attic', ''),
(135, 4, 'Oven', ''),
(136, 4, 'Range', ''),
(137, 4, 'Cooktop', ''),
(138, 4, 'Dishwasher', ''),
(139, 4, 'Garbage Disposal', ''),
(140, 4, 'Built in Microwave', ''),
(141, 4, 'Trash Compactor', ''),
(142, 4, 'Central Vac', ''),
(143, 4, 'Instant Hot Water Dispenser', ''),
(144, 4, 'Washer/Dryer', ''),
(145, 4, 'Premits', ''),
(146, 4, 'Code Violation', ''),
(147, 4, 'Haul Away', ''),
(148, 4, 'Mismatched Systems', ''),
(149, 4, 'Improper Installs', ''),
(150, 4, 'Crane', ''),
(151, 4, 'Adds on 40 Additional Coverages', '{\"title\":\"Acclaimed Premium Coverage\",\"full_content\":\"<p>(included in Premium & Ultimate Plans) Covered: This coverage upgrade includes Kitchen Refrigerator, No Fault Coverage, and the following items that are excluded from the Standard plan.</p> <p><strong><b>Heating System</b></strong>: registers- - grills - heat lamps</p> <p><strong><b>Plumbing System</b></strong>: toilet replacement with like kind and quality limit $400 - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) - basket strainers - pressure regulator valves (PRV) inside main foundation of property -main water shut-off</p> <p><strong><b>Water Heater</b></strong>: failures due to sediment</p> <p><strong><b>Electrical</b></strong>: attic fans</p> <p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket</p> <p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - registers</p> <p><strong><b>Refrigerator</b></strong>: Freon recovery, recapture and recharge - ice maker</p> <p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p> <p><strong><b>Oven/Range/Cooktop</b></strong>:racks - clocks - rotisseries - knobs - dials - handles - hinges </p> <p><strong><b>Built in Microwave Oven</b></strong>: shelves - clock. Seller limits apply</p> <p><strong><b>Garage Door System</b></strong>: springs - hinges - remote transmitter – keypad</p>\"}'),
(152, 4, 'Unknown Pre-existing Conditions', ''),
(153, 4, 'Re-Key', ''),
(154, 4, 'Garage Door System', ''),
(155, 4, 'Subter. Termites - spot treatment', ''),
(156, 2, 'Sump Pump - Permanent', ''),
(157, 2, 'Shower / Diverter Valves', ''),
(158, 2, 'Angle Stops / Gate Valves', ''),
(159, 2, 'Toilet Replacement', ''),
(160, 2, 'Interior Hose Bibs', ''),
(161, 2, 'Faucets, Shower Heads & Arms', ''),
(162, 2, 'PRV Inside Home', ''),
(163, 2, 'Main Water Shut Off', ''),
(164, 2, 'Exterior Hose Bibs', ''),
(165, 2, 'Panels', ''),
(166, 2, 'Subpanels', ''),
(167, 2, 'Wiring', ''),
(168, 2, 'Junction Boxes', ''),
(169, 2, 'Exhaust Fan - Kitchen', ''),
(170, 2, 'Exhaust Fan - Bathrooms', ''),
(171, 2, 'Ceiling Fans', ''),
(172, 2, 'Exhaust Fan - Attic', ''),
(173, 2, 'Oven', ''),
(174, 2, 'Range', ''),
(175, 2, 'Cooktop', ''),
(176, 2, 'Dishwasher', ''),
(177, 2, 'Garbage Disposal', ''),
(178, 2, 'Built-in Micro', ''),
(179, 2, 'Trash Compactor', ''),
(180, 2, 'Central Vac', ''),
(181, 2, 'Kitchen Refrigerator', ''),
(182, 2, 'Washer / Dryer', ''),
(183, 2, 'Permits', ''),
(184, 2, 'Code Violations', ''),
(185, 2, 'Haul Away', ''),
(186, 2, 'Mismatched systems', ''),
(187, 2, 'Improper Installs', ''),
(188, 2, 'Crane', ''),
(189, 2, 'Over 40 Items Added to Standard Coverage\r\n', ''),
(190, 2, 'Re-Key (service fee required)', ''),
(191, 2, 'Free Re-Key (Included in Ultimate Plans)', ''),
(192, 2, 'Garage Door System / Reprogramming\r\n(service fee required)', ''),
(193, 3, 'Water Heaters', ''),
(194, 3, 'Water Heaters - Tankless', ''),
(195, 3, 'Stoppages & Clogs', ''),
(196, 3, 'Toilet - Parts', ''),
(197, 3, 'Whirlpool Assembly', ''),
(198, 3, 'Sump Pump - Permanent', ''),
(199, 3, 'Shower / Diverter Valves', ''),
(200, 3, 'Angle Stops / Gate Valves', ''),
(201, 3, 'Toilet Replacement', ''),
(202, 3, 'Interior Hose Bibs', ''),
(203, 3, 'Faucets, Shower Heads & Arms', ''),
(204, 3, 'PRV Inside Home', ''),
(205, 3, 'Main Water Shut Off', ''),
(206, 3, 'Exterior Hose Bibs', ''),
(207, 3, 'Panels', ''),
(208, 3, 'Subpanels', ''),
(209, 3, 'Wiring', ''),
(210, 3, 'Junction Boxes', ''),
(211, 3, 'Exhaust Fan - Kitchen', ''),
(212, 3, 'Exhaust Fan - Bathrooms', ''),
(213, 3, 'Ceiling Fans', ''),
(214, 3, 'Exhaust Fan - Attic', ''),
(215, 3, 'Oven', ''),
(216, 3, 'Range', ''),
(217, 3, 'Cooktop', ''),
(218, 3, 'Dishwasher', ''),
(219, 3, 'Garbage Disposal', ''),
(220, 3, 'Built-in Micro', ''),
(221, 3, 'Trash Compactor', ''),
(222, 3, 'Central Vac', ''),
(223, 3, 'Kitchen Refrigerator', ''),
(224, 3, 'Washer / Dryer', ''),
(225, 3, 'Permits', ''),
(226, 3, 'Code Violations', ''),
(227, 3, 'Haul Away', ''),
(228, 3, 'Mismatched systems', ''),
(229, 3, 'Improper Installs', ''),
(230, 3, 'Crane', ''),
(231, 3, 'Over 40 Items Added to Standard Coverage', ''),
(232, 3, 'Re-Key (service fee required)', ''),
(233, 3, 'Free Re-Key (Included in Ultimate Plans)', ''),
(234, 3, 'Garage Door System / Reprogramming\r\n(service fee required)', '');

-- --------------------------------------------------------

--
-- Table structure for table `ho_orders`
--

CREATE TABLE `ho_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prop_street1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_street2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ho_orders`
--

INSERT INTO `ho_orders` (`id`, `firstname`, `lastname`, `company`, `country`, `street1`, `street2`, `city`, `state`, `pincode`, `phone`, `email`, `prop_street1`, `prop_street2`, `prop_city`, `prop_state`, `prop_zipcode`, `order_notes`, `subtotal`, `total`, `pay_method`, `status`, `created_at`, `updated_at`) VALUES
(508, 'vinod', 'kushwah', 'fgdfgd', 'Aruba', '33 raj nagar', NULL, 'indore', 'Missouri', '454645', '09669021531', 'vinod.k.jmbliss@gmail.com', '337 Raj Nagar Sector-E Indore', NULL, 'INDORE', 'Arizona', '452002', NULL, '650.00', '650.00', 'card', 'completed', '2021-09-30 12:21:56', '2021-09-30 12:21:58'),
(509, 'KRISTIN', 'COMBS', NULL, 'United States', '411 TEST STREET', NULL, 'DRAPER', 'Utah', '84020', '8018002722', 'KRISTIN@ACCLAIMEDHW.COM', '411 W TEST STREET', NULL, 'DRAPER', 'Utah', '84020', 'THIS IS A NOTE', '608.00', '608.00', 'card', 'completed', '2021-10-01 09:13:10', '2021-10-01 09:13:11'),
(511, 'Svetla', 'McPhie', NULL, 'United States', '4637 Pavlov Ave', '13', 'San Diego', 'California', '92122', '9793191349', 'svetlamcphie@gmail.com', '2403 Clippers Sqaure', NULL, 'Nassau Bay', 'Texas', '77058', NULL, '545.00', '545.00', 'card', 'pending', '2021-10-04 07:49:31', '2021-10-04 07:49:31'),
(512, 'Giovanny', 'Carmona', NULL, 'United States', '2206 Noble Pass Ln', NULL, 'League City', 'Texas', '77573', '8322106254', 'giovannycarmona3110@gmail.com', '400 Spooner St', NULL, 'Pasadena', 'Texas', '77506', NULL, '780.00', '780.00', 'card', 'failed', '2021-10-05 22:44:05', '2021-10-05 22:44:07'),
(513, 'Giovanny', 'Carmona', NULL, 'United States', '2206 Noble Pass Ln', NULL, 'League City', 'Texas', '77573', '8322106254', 'giovannycarmona3110@gmail.com', '400 Spooner St', NULL, 'Pasadena', 'Texas', '77506', NULL, '780.00', '780.00', 'card', 'completed', '2021-10-05 22:57:21', '2021-10-05 22:57:23'),
(520, 'Demontrel', 'Allen', NULL, 'United States', '13139 Ingram gap ln', NULL, 'Houston', 'Texas', '77048', '281-804-1117', 'trelallen@yahoo.com', '13612 Barton meadow ct', NULL, 'Rosharon', 'Texas', '77583', NULL, '55.42', '55.42', 'card', 'pending', '2021-10-13 22:31:14', '2021-10-13 22:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `ho_order_items`
--

CREATE TABLE `ho_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_interval_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ho_order_items`
--

INSERT INTO `ho_order_items` (`id`, `order_id`, `product_id`, `product_name`, `prod_type`, `pay_interval_type`, `quantity`, `created_at`, `updated_at`) VALUES
(13407, 508, 16, 'Premium', 'simple', 'yearly', '1', '2021-09-30 12:21:58', '2021-09-30 12:21:58'),
(13408, 509, 395, 'Roof Leak Repairs', 'addon', 'yearly', '1', '2021-10-01 09:13:11', '2021-10-01 09:13:11'),
(13409, 509, 29, 'Premium +', 'simple', 'yearly', '1', '2021-10-01 09:13:11', '2021-10-01 09:13:11'),
(13414, 511, 21, 'Standard', 'simple', 'yearly', '1', '2021-10-04 07:49:32', '2021-10-04 07:49:32'),
(13415, 512, 23, 'Ultimate', 'simple', 'yearly', '1', '2021-10-05 22:44:06', '2021-10-05 22:44:06'),
(13416, 513, 289, 'Refrigerator with ice maker', 'addon', 'yearly', '1', '2021-10-05 22:57:21', '2021-10-05 22:57:21'),
(13417, 513, 23, 'Ultimate', 'simple', 'yearly', '1', '2021-10-05 22:57:21', '2021-10-05 22:57:21'),
(13421, 520, 21, 'Standard', 'simple', 'monthly', '1', '2021-10-13 22:31:15', '2021-10-13 22:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `ho_products`
--

CREATE TABLE `ho_products` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `monthly_price` varchar(50) NOT NULL,
  `yearly_price` varchar(50) NOT NULL,
  `unique_features` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ho_products`
--

INSERT INTO `ho_products` (`id`, `location_id`, `property_type_id`, `name`, `monthly_price`, `yearly_price`, `unique_features`) VALUES
(1, 1, 1, 'Standard', '35', '450', '{\"13\":\"0\",\"14\":\"0\",\"15\":\"0\",\"16\":\"0\",\"17\":\"0\",\"18\":\"0\",\"19\":\"0\",\"20\":\"0\",\"21\":\"0\",\"22\":\"0\",\"23\":\"0\",\"24\":\"0\",\"25\":\"0\"}'),
(2, 1, 1, 'Premium', '40', '550', '{\"13\":\"1\",\"14\":\"1\",\"15\":\"1\",\"16\":\"1\",\"17\":\"1\",\"18\":\"1\",\"19\":\"1\",\"20\":\"1\",\"21\":\"1\",\"22\":\"1\",\"23\":\"0\",\"24\":\"1\",\"25\":\"0\"}'),
(3, 1, 1, 'Ultimate', '54', '650', '{\"13\":\"1\",\"14\":\"1\",\"15\":\"1\",\"16\":\"1\",\"17\":\"1\",\"18\":\"1\",\"19\":\"1\",\"20\":\"1\",\"21\":\"1\",\"22\":\"1\",\"23\":\"1\",\"24\":\"1\",\"25\":\"1\"}'),
(4, 1, 2, 'Standard', '0', '795', ''),
(5, 1, 3, 'Standard', '0', '995', ''),
(6, 1, 4, 'Standard', '0', '1195', ''),
(7, 2, 1, 'Standard', '51.66', '500', '{\"26\":\"1\",\"27\":\"1\",\"29\":\"1\",\"30\":\"1\",\"31\":\"1\",\"32\":\"1\",\"33\":\"0\",\"34\":\"0\",\"35\":\"0\",\"36\":\"0\",\"37\":\"0\",\"38\":\"0\",\"39\":\"0\",\"40\":\"1\",\"41\":\"1\",\"42\":\"1\",\"44\":\"1\",\"45\":\"1\",\"156\":\"1\",\"157\":\"1\",\"158\":\"0\",\"159\":\"0\",\"160\":\"0\",\"161\":\"0\",\"162\":\"0\",\"163\":\"0\",\"164\":\"0\",\"165\":\"1\",\"166\":\"1\",\"167\":\"1\",\"168\":\"1\",\"169\":\"1\",\"170\":\"1\",\"171\":\"1\",\"172\":\"0\",\"173\":\"1\",\"174\":\"1\",\"175\":\"1\",\"176\":\"1\",\"177\":\"1\",\"178\":\"1\",\"179\":\"1\",\"180\":\"0\",\"181\":\"0\",\"182\":\"0\",\"183\":\"0\",\"184\":\"0\",\"185\":\"0\",\"186\":\"0\",\"187\":\"0\",\"188\":\"0\",\"189\":\"0\",\"190\":\"1\",\"191\":\"0\",\"192\":\"1\"\r\n}'),
(8, 2, 1, 'Premium +', '60.00', '600', '{\"26\":\"1\",\"27\":\"1\",\"29\":\"1\",\"30\":\"1\",\"31\":\"1\",\"32\":\"1\",\"33\":\"1\",\"34\":\"1\",\"35\":\"1\",\"36\":\"1\",\"37\":\"0\",\"38\":\"0\",\"39\":\"0\",\"40\":\"1\",\"41\":\"1\",\"42\":\"1\",\"44\":\"1\",\"45\":\"1\",\"156\":\"1\",\"157\":\"1\",\"158\":\"1\",\"159\":\"1\",\"160\":\"1\",\"161\":\"1\",\"162\":\"0\",\"163\":\"0\",\"164\":\"0\",\"165\":\"1\",\"166\":\"1\",\"167\":\"1\",\"168\":\"1\",\"169\":\"1\",\"170\":\"1\",\"171\":\"1\",\"172\":\"1\",\"173\":\"1\",\"174\":\"1\",\"175\":\"1\",\"176\":\"1\",\"177\":\"1\",\"178\":\"1\",\"179\":\"1\",\"180\":\"1\",\"181\":\"0\",\"182\":\"0\",\"183\":\"1\",\"184\":\"1\",\"185\":\"1\",\"186\":\"1\",\"187\":\"1\",\"188\":\"1\",\"189\":\"1\",\"190\":\"1\",\"191\":\"0\",\"192\":\"1\"\r\n}'),
(9, 2, 1, 'Ultimate', '68.33', '700', '{\"26\":\"1\",\"27\":\"1\",\"29\":\"1\",\"30\":\"1\",\"31\":\"1\",\"32\":\"1\",\"33\":\"1\",\"34\":\"1\",\"35\":\"1\",\"36\":\"1\",\"37\":\"1\",\"38\":\"1\",\"39\":\"1\",\"40\":\"1\",\"41\":\"1\",\"42\":\"1\",\"44\":\"1\",\"45\":\"1\",\"156\":\"1\",\"157\":\"1\",\"158\":\"1\",\"159\":\"1\",\"160\":\"1\",\"161\":\"1\",\"162\":\"1\",\"163\":\"1\",\"164\":\"1\",\"165\":\"1\",\"166\":\"1\",\"167\":\"1\",\"168\":\"1\",\"169\":\"1\",\"170\":\"1\",\"171\":\"1\",\"172\":\"1\",\"173\":\"1\",\"174\":\"1\",\"175\":\"1\",\"176\":\"1\",\"177\":\"1\",\"178\":\"1\",\"179\":\"1\",\"180\":\"1\",\"181\":\"1\",\"182\":\"1\",\"183\":\"1\",\"184\":\"1\",\"185\":\"1\",\"186\":\"1\",\"187\":\"1\",\"188\":\"1\",\"189\":\"1\",\"190\":\"1\",\"191\":\"1\",\"192\":\"1\"\r\n}'),
(12, 2, 2, 'Standard', '0', '795', ''),
(13, 2, 3, 'Standard', '0', '995', ''),
(14, 2, 4, 'Standard', '0', '1195', ''),
(15, 3, 1, 'Standard', '57.91', '575', '{\"46\":\"1\",\"47\":\"1\",\"48\":\"1\",\"49\":\"1\",\"50\":\"1\",\"51\":\"1\",\"52\":\"0\",\"53\":\"0\",\"54\":\"0\",\"55\":\"0\",\"56\":\"0\",\"57\":\"0\",\"120\":\"0\",\"193\":\"1\",\"194\":\"1\",\"195\":\"1\",\"196\":\"1\",\"197\":\"1\",\"198\":\"1\",\"199\":\"1\",\"200\":\"0\",\"201\":\"0\",\"202\":\"0\",\"203\":\"0\",\"204\":\"0\",\"205\":\"0\",\"206\":\"0\",\"207\":\"1\",\"208\":\"1\",\"209\":\"1\",\"210\":\"1\",\"211\":\"1\",\"212\":\"1\",\"213\":\"1\",\"214\":\"0\",\"215\":\"1\",\"216\":\"1\",\"217\":\"1\",\"218\":\"1\",\"219\":\"1\",\"220\":\"1\",\"221\":\"1\",\"222\":\"0\",\"223\":\"0\",\"224\":\"0\",\"225\":\"0\",\"226\":\"0\",\"227\":\"0\",\"228\":\"0\",\"229\":\"0\",\"230\":\"0\",\"231\":\"0\",\"232\":\"1\",\"233\":\"0\",\"234\":\"1\"}'),
(16, 3, 1, 'Premium', '64.16', '650', '{\"46\":\"1\",\"47\":\"1\",\"48\":\"1\",\"49\":\"1\",\"50\":\"1\",\"51\":\"1\",\"52\":\"1\",\"53\":\"1\",\"54\":\"1\",\"55\":\"1\",\"56\":\"0\",\"57\":\"0\",\"120\":\"0\",\"193\":\"1\",\"194\":\"1\",\"195\":\"1\",\"196\":\"1\",\"197\":\"1\",\"198\":\"1\",\"199\":\"1\",\"200\":\"1\",\"201\":\"1\",\"202\":\"1\",\"203\":\"1\",\"204\":\"0\",\"205\":\"0\",\"206\":\"0\",\"207\":\"1\",\"208\":\"1\",\"209\":\"1\",\"210\":\"1\",\"211\":\"1\",\"212\":\"1\",\"213\":\"1\",\"214\":\"1\",\"215\":\"1\",\"216\":\"1\",\"217\":\"1\",\"218\":\"1\",\"219\":\"1\",\"220\":\"1\",\"221\":\"1\",\"222\":\"1\",\"223\":\"1\",\"224\":\"1\",\"225\":\"1\",\"226\":\"1\",\"227\":\"1\",\"228\":\"1\",\"229\":\"1\",\"230\":\"1\",\"231\":\"1\",\"232\":\"1\",\"233\":\"0\",\"234\":\"1\"}'),
(17, 3, 1, 'Ultimate', '71.25', '735', '{\"46\":\"1\",\"47\":\"1\",\"48\":\"1\",\"49\":\"1\",\"50\":\"1\",\"51\":\"1\",\"52\":\"1\",\"53\":\"1\",\"54\":\"1\",\"55\":\"1\",\"56\":\"1\",\"57\":\"1\",\"120\":\"1\",\"193\":\"1\",\"194\":\"1\",\"195\":\"1\",\"196\":\"1\",\"197\":\"1\",\"198\":\"1\",\"199\":\"1\",\"200\":\"1\",\"201\":\"1\",\"202\":\"1\",\"203\":\"1\",\"204\":\"1\",\"205\":\"1\",\"206\":\"1\",\"207\":\"1\",\"208\":\"1\",\"209\":\"1\",\"210\":\"1\",\"211\":\"1\",\"212\":\"1\",\"213\":\"1\",\"214\":\"1\",\"215\":\"1\",\"216\":\"1\",\"217\":\"1\",\"218\":\"1\",\"219\":\"1\",\"220\":\"1\",\"221\":\"1\",\"222\":\"1\",\"223\":\"1\",\"224\":\"1\",\"225\":\"1\",\"226\":\"1\",\"227\":\"1\",\"228\":\"1\",\"229\":\"1\",\"230\":\"1\",\"231\":\"1\",\"232\":\"1\",\"233\":\"1\",\"234\":\"1\"}'),
(18, 3, 2, 'Standard', '0', '895', ''),
(19, 3, 3, 'Standard', '0', '995', ''),
(20, 3, 4, 'Standard', '0', '1195', ''),
(21, 4, 1, 'Standard', '55.41', '545', '{\"58\":\"1\",\"59\":\"1\",\"60\":\"1\",\"61\":\"1\",\"62\":\"1\",\"63\":\"1\",\"64\":\"0\",\"65\":\"0\",\"66\":\"0\",\"67\":\"0\",\"68\":\"0\",\"69\":\"0\",\"70\":\"0\",\"71\":\"1\",\"72\":\"1\",\"73\":\"1\",\"74\":\"1\",\"75\":\"1\",\"76\":\"1\",\"77\":\"0\",\"78\":\"0\",\"79\":\"0\",\"121\":\"0\",\"122\":\"0\",\"123\":\"0\",\"124\":\"0\",\"125\":\"0\",\"126\":\"0\",\"127\":\"1\",\"128\":\"1\",\"129\":\"1\",\"130\":\"1\",\"131\":\"1\",\"132\":\"1\",\"133\":\"0\",\"134\":\"1\",\"135\":\"1\",\"136\":\"1\",\"137\":\"1\",\"138\":\"1\",\"139\":\"1\",\"140\":\"1\",\"141\":\"1\",\"142\":\"0\",\"143\":\"0\",\"144\":\"0\",\"145\":\"0\",\"146\":\"0\",\"147\":\"0\",\"148\":\"0\",\"149\":\"0\",\"150\":\"0\",\"151\":\"0\",\"152\":\"1\",\"153\":\"1\",\"154\":\"1\",\"155\":\"1\"\r\n}'),
(22, 4, 1, 'Premium', '63.75', '645', '{\"58\":\"1\",\"59\":\"1\",\"60\":\"1\",\"61\":\"1\",\"62\":\"1\",\"63\":\"1\",\"64\":\"1\",\"65\":\"1\",\"66\":\"1\",\"67\":\"1\",\"68\":\"0\",\"69\":\"0\",\"70\":\"0\",\"71\":\"1\",\"72\":\"1\",\"73\":\"1\",\"74\":\"1\",\"75\":\"1\",\"76\":\"1\",\"77\":\"1\",\"78\":\"1\",\"79\":\"1\",\"121\":\"1\",\"122\":\"1\",\"123\":\"1\",\"124\":\"1\",\"125\":\"0\",\"126\":\"0\",\"127\":\"1\",\"128\":\"1\",\"129\":\"1\",\"130\":\"1\",\"131\":\"1\",\"132\":\"1\",\"133\":\"1\",\"134\":\"1\",\"135\":\"1\",\"136\":\"1\",\"137\":\"1\",\"138\":\"1\",\"139\":\"1\",\"140\":\"1\",\"141\":\"1\",\"142\":\"1\",\"143\":\"0\",\"144\":\"0\",\"145\":\"1\",\"146\":\"1\",\"147\":\"1\",\"148\":\"1\",\"149\":\"1\",\"150\":\"1\",\"151\":\"1\",\"152\":\"1\",\"153\":\"1\",\"154\":\"1\",\"155\":\"1\"\r\n}'),
(23, 4, 1, 'Ultimate', '70.42', '725', '{\"58\":\"1\",\"59\":\"1\",\"60\":\"1\",\"61\":\"1\",\"62\":\"1\",\"63\":\"1\",\"64\":\"1\",\"65\":\"1\",\"66\":\"1\",\"67\":\"1\",\"68\":\"1\",\"69\":\"1\",\"70\":\"1\",\"71\":\"1\",\"72\":\"1\",\"73\":\"1\",\"74\":\"1\",\"75\":\"1\",\"76\":\"1\",\"77\":\"1\",\"78\":\"1\",\"79\":\"1\",\"121\":\"1\",\"122\":\"1\",\"123\":\"1\",\"124\":\"1\",\"125\":\"1\",\"126\":\"1\",\"127\":\"1\",\"128\":\"1\",\"129\":\"1\",\"130\":\"1\",\"131\":\"1\",\"132\":\"1\",\"133\":\"1\",\"134\":\"1\",\"135\":\"1\",\"136\":\"1\",\"137\":\"1\",\"138\":\"1\",\"139\":\"1\",\"140\":\"1\",\"141\":\"1\",\"142\":\"1\",\"143\":\"1\",\"144\":\"1\",\"145\":\"1\",\"146\":\"1\",\"147\":\"1\",\"148\":\"1\",\"149\":\"1\",\"150\":\"1\",\"151\":\"1\",\"152\":\"1\",\"153\":\"1\",\"154\":\"1\",\"155\":\"1\"\r\n}'),
(24, 4, 2, 'Standard', '0', '775', ''),
(25, 4, 3, 'Standard', '0', '1035', ''),
(26, 4, 4, 'Standard', '0', '1295', ''),
(27, 5, 1, 'Standard', '35', '400', '{\"80\":\"0\",\"81\":\"1\",\"82\":\"1\",\"83\":\"1\",\"84\":\"0\",\"85\":\"1\",\"86\":\"1\",\"87\":\"1\",\"88\":\"1\",\"89\":\"1\",\"90\":\"1\",\"91\":\"1\",\"92\":\"1\",\"93\":\"1\",\"94\":\"1\",\"95\":\"1\",\"96\":\"1\",\"97\":\"1\",\"98\":\"1\",\"99\":\"1\",\"100\":\"1\",\"101\":\"1\",\"102\":\"1\",\"103\":\"1\",\"104\":\"1\",\"105\":\"0\",\"106\":\"0\",\"107\":\"0\",\"108\":\"0\",\"109\":\"0\",\"110\":\"0\",\"111\":\"0\",\"112\":\"0\",\"113\":\"0\",\"114\":\"0\",\"115\":\"0\",\"116\":\"0\",\"117\":\"0\",\"118\":\"0\",\"119\":\"0\"}'),
(28, 5, 1, 'Premium', '45', '475', '{\"80\":\"0\",\"81\":\"0\",\"82\":\"0\",\"83\":\"0\",\"84\":\"0\",\"85\":\"0\",\"86\":\"0\",\"87\":\"0\",\"88\":\"0\",\"89\":\"0\",\"90\":\"0\",\"91\":\"0\",\"92\":\"0\",\"93\":\"0\",\"94\":\"0\",\"95\":\"0\",\"96\":\"0\",\"97\":\"0\",\"98\":\"0\",\"99\":\"0\",\"100\":\"0\",\"101\":\"0\",\"102\":\"0\",\"103\":\"0\",\"104\":\"1\",\"105\":\"1\",\"106\":\"1\",\"107\":\"1\",\"108\":\"1\",\"109\":\"1\",\"110\":\"0\",\"111\":\"1\",\"112\":\"1\",\"113\":\"1\",\"114\":\"0\",\"115\":\"0\",\"116\":\"0\",\"117\":\"0\",\"118\":\"0\",\"119\":\"0\"}'),
(29, 5, 1, 'Premium +', '50', '500', '{\"80\":\"0\",\"81\":\"0\",\"82\":\"0\",\"83\":\"0\",\"84\":\"0\",\"85\":\"0\",\"86\":\"0\",\"87\":\"0\",\"88\":\"0\",\"89\":\"0\",\"90\":\"0\",\"91\":\"0\",\"92\":\"0\",\"93\":\"0\",\"94\":\"0\",\"95\":\"0\",\"96\":\"0\",\"97\":\"0\",\"98\":\"0\",\"99\":\"0\",\"100\":\"0\",\"101\":\"0\",\"102\":\"0\",\"103\":\"0\",\"104\":\"1\",\"105\":\"1\",\"106\":\"1\",\"107\":\"1\",\"108\":\"1\",\"109\":\"1\",\"110\":\"0\",\"111\":\"1\",\"112\":\"1\",\"113\":\"1\",\"114\":\"0\",\"115\":\"1\",\"116\":\"0\",\"117\":\"0\",\"118\":\"0\",\"119\":\"0\"}'),
(30, 5, 1, 'Premium + One', '53.50', '550', '{\"80\":\"0\",\"81\":\"0\",\"82\":\"0\",\"83\":\"0\",\"84\":\"0\",\"85\":\"0\",\"86\":\"0\",\"87\":\"0\",\"88\":\"0\",\"89\":\"0\",\"90\":\"0\",\"91\":\"0\",\"92\":\"0\",\"93\":\"0\",\"94\":\"0\",\"95\":\"0\",\"96\":\"0\",\"97\":\"0\",\"98\":\"0\",\"99\":\"0\",\"100\":\"0\",\"101\":\"0\",\"102\":\"0\",\"103\":\"0\",\"104\":\"1\",\"105\":\"1\",\"106\":\"1\",\"107\":\"1\",\"108\":\"1\",\"109\":\"1\",\"110\":\"0\",\"111\":\"1\",\"112\":\"1\",\"113\":\"1\",\"114\":\"0\",\"115\":\"1\",\"116\":\"0\",\"117\":\"0\",\"118\":\"0\",\"119\":\"0\"}'),
(31, 5, 1, 'Ultimate', '55', '600', '{\"80\":\"0\",\"81\":\"0\",\"82\":\"0\",\"83\":\"0\",\"84\":\"0\",\"85\":\"0\",\"86\":\"0\",\"87\":\"0\",\"88\":\"0\",\"89\":\"0\",\"90\":\"0\",\"91\":\"0\",\"92\":\"0\",\"93\":\"0\",\"94\":\"0\",\"95\":\"0\",\"96\":\"0\",\"97\":\"0\",\"98\":\"0\",\"99\":\"0\",\"100\":\"0\",\"101\":\"0\",\"102\":\"0\",\"103\":\"0\",\"104\":\"1\",\"105\":\"1\",\"106\":\"1\",\"107\":\"1\",\"108\":\"1\",\"109\":\"1\",\"110\":\"0\",\"111\":\"1\",\"112\":\"1\",\"113\":\"1\",\"114\":\"0\",\"115\":\"1\",\"116\":\"0\",\"117\":\"1\",\"118\":\"1\",\"119\":\"1\"}'),
(32, 5, 2, 'Standard', '0', '695', ''),
(33, 5, 3, 'Standard', '0', '895', ''),
(34, 5, 4, 'Standard', '0', '1095', ''),
(35, 4, 2, 'Premium', '0', '975', ''),
(36, 4, 2, 'Ultimate', '0', '1175', ''),
(37, 4, 3, 'Premium', '0', '1135', ''),
(38, 4, 3, 'Ultimate', '0', '1335', ''),
(39, 4, 4, 'Premium', '0', '1495', ''),
(40, 4, 4, 'Ultimate', '0', '1695', ''),
(41, 2, 2, 'Premium +', '0', '895', ''),
(42, 2, 2, 'Ultimate', '0', '1095', ''),
(43, 2, 3, 'Premium +', '0', '1095', ''),
(44, 2, 3, 'Ultimate', '0', '1295', ''),
(45, 2, 4, 'Premium +', '0', '1295', ''),
(46, 2, 4, 'Ultimate', '0', '1495', ''),
(47, 3, 2, 'Premium', '0', '1095', ''),
(48, 3, 2, 'Ultimate', '0', '1295', ''),
(49, 3, 3, 'Premium', '0', '1195', ''),
(50, 3, 3, 'Ultimate', '0', '1395', ''),
(51, 3, 4, 'Premium', '0', '1295', ''),
(52, 3, 4, 'Ultimate', '0', '1495', '');

-- --------------------------------------------------------

--
-- Table structure for table `ho_product_locations`
--

CREATE TABLE `ho_product_locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ho_product_locations`
--

INSERT INTO `ho_product_locations` (`id`, `location_name`, `slug`, `image`) VALUES
(1, 'Arizona', 'arizona', 'assets/images/compare-arizona.jpg'),
(2, 'Utah', 'utah', 'assets/images/compare-utah.jpg'),
(3, 'Nevada', 'nevada', 'assets/images/compare-nevada.jpg'),
(4, 'Texas', 'texas', 'assets/images/compare-texas.jpg'),
(5, 'Idaho', 'idaho', 'assets/images/Image_idaho.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ho_property_type`
--

CREATE TABLE `ho_property_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ho_property_type`
--

INSERT INTO `ho_property_type` (`id`, `name`) VALUES
(1, 'Single Family'),
(2, 'Duplex'),
(3, 'Triplex'),
(4, 'Fourplex');

-- --------------------------------------------------------

--
-- Table structure for table `h_o_standard_titles`
--

CREATE TABLE `h_o_standard_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `standard_titles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `h_o_standard_titles`
--

INSERT INTO `h_o_standard_titles` (`id`, `location_id`, `standard_titles`, `created_at`, `updated_at`) VALUES
(1, 1, 'Member benefits & discounts', NULL, NULL),
(2, 1, 'HVAC', NULL, NULL),
(3, 1, 'Plumbing', NULL, NULL),
(4, 1, 'Electrical', NULL, NULL),
(5, 1, 'Appliances (Built In)', NULL, NULL),
(6, 4, 'Appliances', NULL, NULL),
(7, 2, 'Member benefits & discounts', NULL, NULL),
(8, 2, 'HVAC', NULL, NULL),
(9, 2, 'Plumbing', NULL, NULL),
(10, 2, 'Electrical', NULL, NULL),
(11, 2, 'Appliances(Built in)', NULL, NULL),
(12, 3, 'Member benefits & discounts', NULL, NULL),
(13, 3, 'HVAC', NULL, NULL),
(14, 3, 'Plumbing', NULL, NULL),
(15, 3, 'Electrical', NULL, NULL),
(16, 3, 'Appliances(Built in)', NULL, NULL),
(17, 4, 'Member benefits*\r\n(*services may not be offerd in all areas)\r\n', NULL, NULL),
(18, 4, 'HVAC', NULL, NULL),
(19, 4, 'Plumbing', NULL, NULL),
(20, 4, 'Electrical', NULL, NULL),
(21, 5, 'Member benefits & discounts', NULL, NULL),
(22, 5, 'HVAC', NULL, NULL),
(23, 5, 'Plumbing', NULL, NULL),
(24, 5, 'Electrical', NULL, NULL),
(25, 5, 'Appliances(Built in)', NULL, NULL),
(26, 4, 'GARAGE DOOR SYSTEMS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `make_claims`
--

CREATE TABLE `make_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claim_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `technicians` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appliances` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_appliances` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `make_claims`
--

INSERT INTO `make_claims` (`id`, `name`, `phone`, `email`, `street_address`, `city`, `state`, `zip_code`, `claim_details`, `emergency`, `contact_method`, `technicians`, `appliances`, `other`, `other_appliances`, `created_at`, `updated_at`) VALUES
(46, 'test name', '888-888-8888', 'kristin@acclaimedhw.com', 'strett', 'city', 'Utah', '84111', 'testing', 'No, this is not an emergency', 'Email', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-09-29 17:29:01', '2021-09-29 17:29:01'),
(47, 'kc lee', '8018007211', 'kristin@acclaimedhw.com', 'test street', 'slc', 'Utah', '84111', 'this is a test to see where it goes live today our new website!', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'Bosch', NULL, NULL, '2021-10-01 17:07:22', '2021-10-01 17:07:22'),
(48, 'Daniel', '888.494.9460', 'jmbliss67@gmail.com', '67, MG Road', 'Indore', 'Minnesota', '452000', 'Testing', 'Yes, this is an emergencye', 'Phone, Email', 'Electrician,Other', NULL, 'Testing Technician', NULL, '2021-10-01 17:33:44', '2021-10-01 17:33:44'),
(49, 'kc lee', '8888888888', 'kcloveshomes@gmail.com', 'test street', 'slc', 'Utah', '84111', 'test', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-01 18:33:43', '2021-10-01 18:33:43'),
(50, 'Shawnee Fierro', '7029173102', 'shwne.fierro@gmail.com', '9277 Casa Christina Lane', 'Las Vegas', 'Nevada', '89147', 'The electrical outlets in my bathroom don’t work.  The light and fan in my stairwell will not turn on.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-01 21:54:20', '2021-10-01 21:54:20'),
(51, 'CC Horton', '8018351921', 'asenathhorton@gmail.com', '4146 S 1420 W', 'Salt Lake City', 'Utah', '84123', 'Testing', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'Testing', NULL, '2021-10-01 22:05:19', '2021-10-01 22:05:19'),
(52, 'kc lee', '888-888-8888', 'kc@email.com', 'tesst', 'slc', 'Utah', '84111', 'this is being tested through my computer and chrome - kristin', 'No, this is not an emergency', 'Email', 'Electrician', NULL, NULL, NULL, '2021-10-02 01:18:05', '2021-10-02 01:18:05'),
(53, 'Kc lee', '8884949460', 'kristin@acclaimedhw.com', 'Test', 'Slc', 'Utah', '84112', 'This is a test on safari from my cell phone Kristen', 'No, this is not an emergency', 'Email', 'Electrician', NULL, NULL, NULL, '2021-10-02 01:29:17', '2021-10-02 01:29:17'),
(54, 'test', '000-000-0000', 'none@none.com', 'test', 'test', 'Utah', '84074', 'test on explorer', 'No, this is not an emergency', 'Email', 'Other', NULL, NULL, NULL, '2021-10-02 01:35:00', '2021-10-02 01:35:00'),
(55, 'Jaren Davis', '8018196226', 'jarenbdavis@gmail.com', '9474 South 250 East', 'Sandy', 'Utah', '84070', 'I have a water valve in the basement that when shut off, doesn\'t shut off all the way.', 'No, this is not an emergency', 'Phone, Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-02 02:31:21', '2021-10-02 02:31:21'),
(56, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '10331 Bentley Oaks Ave', 'Las Vegas', 'Nevada', '89135', 'GARBAGE DISPOSAL IS LEAKING\nCALL TENANT KESHAV (734) 272-6741\nURGENT\nEND GPS PLUMBING', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-02 04:35:31', '2021-10-02 04:35:31'),
(57, 'DANIEL JAMES CALCIANO', '9197448499', 'DCALCIANO@GMAIL.COM', '18515 Gunda Heights Drive', 'Cypress', 'Texas', '77433', 'The main bath toilet water feeder valve is broken.', 'No, this is not an emergency', 'Phone, Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-02 04:45:40', '2021-10-02 04:45:40'),
(58, 'Forrest Janssen', '2106678111', 'forrestjanssen@gmail.com', '12211 Stable Knoll Drive', 'San Antonio', 'Texas', '78249', NULL, 'Yes, this is an emergencye', 'Text, Email', 'Other', 'Bosch', 'Air Conditioning is not working', NULL, '2021-10-02 05:07:11', '2021-10-02 05:07:11'),
(59, 'Kc lee', '7777777777', 'kc@test.com', 'Tttty', 'Slc', 'Utah', '84112', NULL, 'No, this is not an emergency', 'Email', 'Electrician', NULL, NULL, NULL, '2021-10-02 19:31:13', '2021-10-02 19:31:13'),
(60, 'kc', '8888888888', 'kc@kc.com', '7997', 'slc', 'Utah', '84111', 'test', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-02 19:43:36', '2021-10-02 19:43:36'),
(61, 'Adam Hawbaker', '8174806682', 'achawbaker@gmail.com', '6 Mesa Verde Ct', 'Trophy Club', 'Texas', '76262', 'I am placing this for my client who is having issues getting on the website. His dishwasher is leaking when he uses it.', 'No, this is not an emergency', 'Email', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-10-02 19:56:34', '2021-10-02 19:56:34'),
(62, 'Estelle Euloge Akapo', '5714449539', 'gueyeeuloge@gmail.com', '4849 Palacio Ct', 'Las Vegas', 'Nevada', '89122', 'Kitchen sink clogged', 'Yes, this is an emergencye', 'Phone, Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-03 02:11:39', '2021-10-03 02:11:39'),
(63, 'Alejandra', '9739705912', 'ahenao95@gmail.com', '5055 West Hacienda Avenue', 'Las Vegas', 'Nevada', '89118', 'AC fan will not shut off, despite temperature being at desired setting. I believe the relay part of the blower is stuck in on, but I could be wrong.', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'AC tech', NULL, '2021-10-03 02:28:27', '2021-10-03 02:28:27'),
(64, 'Nicole Rojas', '3852828508', 'nicole@prospermgmt.net', '3083 Polk Ave', 'Ogden', 'Utah', '84403', 'I’m a property manager for Alex Chanoux. I need to have a dryer repair scheduled and I also need someone to talk to about an emergency water heater replacement that was done before someone called me back.', 'Yes, this is an emergencye', 'Phone, Text, Email', 'Appliance Technician,Other', 'Other', 'Need to speak to a representative', 'Not sure', '2021-10-03 02:47:13', '2021-10-03 02:47:13'),
(65, 'Gentry Gayle', '979-324-8123', 'gentry.gayle@yahoo.com', '932 Crystal Dove Ave', 'College Station', 'Texas', '77845', 'A/C is not working', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'Air Conditioning', NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(66, 'Chris Sampson', '909485-8721', 'michele@thehomeshopnv.com', '6520 Lombard', 'Las Vegas', 'Nevada', '89108', 'The dryer is making a very loud noise when running', 'No, this is not an emergency', 'Email', 'Appliance Technician', 'Maytag', NULL, NULL, '2021-10-04 04:14:33', '2021-10-04 04:14:33'),
(67, 'Chris Hasenoehrl', '2982506030', 'chris@hazhouses.com', '2808 E Maryland ave', 'Nampa', 'Idaho', '83686', 'Hot water heater not staying lit. Just replaced not too long ago. Need service call!', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-04 09:19:13', '2021-10-04 09:19:13'),
(68, 'Harry Dunn', '818-378-8084', 'harry@dunnpromo.com', '1809 Glenview Dr', 'Las Vegas', 'Nevada', '89134', 'Dishwasher doesn\'t work', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'GE', NULL, NULL, '2021-10-04 19:21:03', '2021-10-04 19:21:03'),
(69, 'LaQuisha Umemba', '5019127452', 'mrsumemba@yahoo.com', '5617 Little Theater Bend', 'Austin', 'Texas', '78747', 'Loose sink faucet. Same recurring issue as the other times.', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-04 20:53:57', '2021-10-04 20:53:57'),
(70, 'Christopher Iorg', '4358417098', 'chrisiorg1@gmail.com', '1097 Healy St', 'Ogden', 'Utah', '84403', 'We had a technician come fix our dryer but it is not fixed yet. He said they need to order parts but we haven’t herd when that is going to be delivered. With the way things are it might be unknown, but we can’t wait much longer we need a dryer ASAP', 'No, this is not an emergency', 'Phone', 'Appliance Technician', 'Other', NULL, NULL, '2021-10-04 21:32:56', '2021-10-04 21:32:56'),
(71, 'lc lee', '8888888888', 'kc@homes.com', '411 W test', 'slc', 'Utah', '84111', 'tseting', 'No, this is not an emergency', 'Email', 'Electrician', NULL, NULL, NULL, '2021-10-04 22:21:53', '2021-10-04 22:21:53'),
(72, 'Glenn Cannon', '7144469090', 'glenn@glenncannon.com', '1440 E Oak Cliff Drive', 'Provo', 'Utah', '84604', 'The bottom oven in the Frigidaire double electric oven range will not heat. It has power, but the heating plate has never worked, since we moved in, November 2020.', 'No, this is not an emergency', 'Phone', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-10-04 22:29:52', '2021-10-04 22:29:52'),
(73, 'Glenn Cannon', '7144469090', 'ocglenn@hotmail.com', '1440 E Oak Cliff Drive', 'Provo', 'Utah', '84604', 'The Frigidaire gas stove has a minor gas leak, ongoing since purchasing the house in November 2020.', 'No, this is not an emergency', 'Phone', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-10-04 22:30:32', '2021-10-04 22:30:32'),
(74, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '2505 MANCHESTER BAY', 'NORTH LAS VEGAS', 'Nevada', '89031', 'WATER HEATER IS LEAKING-NOT WORKING\nCALLJAMILA URGENTLY (913) 638-6452\nSEND GPS PLUMBING', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-04 23:17:37', '2021-10-04 23:17:37'),
(75, 'Charlie Humphries', '4074666593', 'charlie.humphries@gmail.com', '24510 Wintergreen Dr', 'Magnolia', 'Texas', '77355', '1.  Garbage disposal  does not work. Seems to be froze up\n2.  Toilet tank in master bath runs all the time.\n.\nTwo separate plumbing issues', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-04 23:41:09', '2021-10-04 23:41:09'),
(76, 'Robert Woodard', '2158824307', 'rlwoodard09@gmail.com', '9708 Bordeaux Ln', 'Austin', 'Texas', '78750', 'I want to schedule an HVAC seasonal tune up.', 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, 'HVAC tech', NULL, '2021-10-05 00:31:51', '2021-10-05 00:31:51'),
(77, 'Brandy Jones', '5122173633', 'bwilliamsjones@yahoo.com', '300 Capulin Mtn', 'Cedar Park', 'Texas', '78613', 'We have one interior and one exterior electrical outlet that have inexplicably stopped working.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-05 02:44:43', '2021-10-05 02:44:43'),
(78, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '7205 DALEGROVE DR', 'LAS VEGAS', 'Nevada', '89129', 'WATER LEAK FROM INSIDE A WALL-POSSIBLE BATHROOM WALL-INTO GARAGE \nCALL JAMIE AAP SEND GPS\n(702) 488-2053', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-05 03:08:54', '2021-10-05 03:08:54'),
(79, 'Megan Horn', '8016617959', 'meganhorn1997@gmail.com', '775 S 1650 E', 'Clearfield', 'Utah', '84015', 'Furnace blowing cold air only. When we turn off the thermostat, the furnace continues to blow cold. It has blown hot before but has not worked since we attempted to use it last week. Have tried checking the fan status and the air filter with no success.', 'No, this is not an emergency', 'Text, Email', 'Other', NULL, 'HVAC', NULL, '2021-10-05 06:10:26', '2021-10-05 06:10:26'),
(80, 'Brian Foerster', '7139069368', 'b4ster602@gmail.com', '27911 Summerton Drive', 'Spring', 'Texas', '77386', 'Water will not heat up', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-05 07:36:29', '2021-10-05 07:36:29'),
(81, 'Randy Hickman', '210-844-6355/ 210-288-8289', 'wh5700@att.com', '8755 Cross Mountain Trail', 'San Antonio', 'Texas', '78255', 'Our AC was making a burning smell and made aloud noise as it died. EZ Air Conditioning have been servicing it regularly.', 'No, this is not an emergency', 'Phone', 'Appliance Technician', 'Other', NULL, 'AC repair', '2021-10-05 10:53:25', '2021-10-05 10:53:25'),
(82, 'David Fitzgerald', '3146770891', 'dfitzgerald83@gmail.com', '8908 Gunnison Dr', 'Dallas', 'Texas', '75231', 'Garage door not working for two days need a garage repair person out asap', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'Garage repair', NULL, '2021-10-05 19:50:39', '2021-10-05 19:50:39'),
(83, 'Dan Ruch', '5127340134', 'maegan.butterfield@icloud.com', '1653 N Sonoran Drive', 'St George', 'Utah', '84770', 'We have ultimate package and would like free re-key', 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, 'Re-key', NULL, '2021-10-05 20:16:39', '2021-10-05 20:16:39'),
(84, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '6115 BRAESWOOD BLVD', 'HOUSTON', 'Texas', '77096', 'PLUMBING IS BACKED UP\nUTILITY ROOM\nMASTER TOILET \nCALL CARL ASAP (832) 628-5600', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-06 04:04:34', '2021-10-06 04:04:34'),
(85, 'Christopher Brent McNeal', '7013712711', 'brentmcneal@gmail.com', '310 meagan street', 'Waxahachie', 'Texas', '75165', 'The power outlets in the Master bathroom no longer provide power.  I need an electrician to come out and fix them.', 'No, this is not an emergency', 'Email, Text', 'Electrician', NULL, NULL, NULL, '2021-10-06 06:41:02', '2021-10-06 06:41:02'),
(86, 'Vikas Kumar', '9557822598', 'jmbliss13@gmail.com', 'mg road', 'indore', 'Alaska', '452001', 'Hello, This order is only for the testing method.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-06 10:15:24', '2021-10-06 10:15:24'),
(87, 'Matt Larsen', '3852319342', 'Matthew.larsen1228@gmail.com', '119 alta view dr', 'Midvale', 'Utah', '84047', 'One of our windows has come loose and is almost falling out of its place.', 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, NULL, NULL, '2021-10-06 21:29:33', '2021-10-06 21:29:33'),
(88, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '7026 BERKSHIRE PLACE', 'LAS VEGAS', 'Nevada', '89147', 'ELECTRICAL-2 BEDROOMS DONT HAVE POWER, BREAKER IT TRIPPING\nWONT RESET\nCALL DOROTHY (702) 480-3642', 'Yes, this is an emergencye', 'Email', 'Electrician', NULL, NULL, NULL, '2021-10-07 02:12:34', '2021-10-07 02:12:34'),
(89, 'Brandy Jones', '5122173633', 'bwilliamsjones@yahoo.com', '300 Capulin Mtn', 'Cedar Park', 'Texas', '78613', 'Our main house and our casita house both have lights that are flickering.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-07 05:40:18', '2021-10-07 05:40:18'),
(90, 'sadie pulsipher', '4355902468', 'saydlee@gmail.com', '2735 Auburn', 'St. George', 'Utah', '84790', 'The garbage disposal is not working... and the A/C unit was told to me that it was fine but it is not correct upstairs.', 'No, this is not an emergency', 'Phone, Text', 'Plumber,Appliance Technician', 'Other', NULL, 'Garbage Disposal', '2021-10-07 06:36:42', '2021-10-07 06:36:42'),
(91, 'Iris Zlatnick', '5202823233', 'zlatnick@yahoo.com', '949 West Teal Run Way', 'South Salt Lake', 'Utah', '84119', 'Problem with Kitchen sink Disposal does not work.', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-07 19:13:18', '2021-10-07 19:13:18'),
(92, 'Marc Thomas', '6613196272', 'karmanmarco@gmail.com', '1608, West Balanced Rock Dr', 'St. George', 'Utah', '84770', 'Our Samsung Washing Machine is making loud noises during Spin Cycle and shuts down.', 'Yes, this is an emergencye', 'Phone', 'Appliance Technician', 'Samsung', NULL, NULL, '2021-10-07 20:15:33', '2021-10-07 20:15:33'),
(93, 'tony fetchel', '5125385149', 'fecciello@gmail.com', '14205 Ballycastle Trail', 'Austin', 'Texas', '78717', 'my washer is not working correct.  it will not spin on the spin cycle.', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'Other', NULL, 'kenmore', '2021-10-07 20:37:54', '2021-10-07 20:37:54'),
(94, 'Shannon Martinez', '512-565-2739', 'shannon@psper.com', '431 Ellen Williams Loop', 'Kingsland', 'Texas', '78639', 'I would like to schedule a re-key of the property.', 'No, this is not an emergency', 'Text', 'Other', NULL, 'Locksmith', NULL, '2021-10-07 21:48:30', '2021-10-07 21:48:30'),
(95, 'Diego Ramirez', '801-865-4580', 'diegoramirez801@yahoo.com', '1156 West 600 South', 'Salt Lake City', 'Utah', '84104', NULL, 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-07 21:52:49', '2021-10-07 21:52:49'),
(96, 'KEVIN J. TALBERT', '8014204853', 'kevin.talbert87@gmail.com', '249 Majestic Meadows Dr', 'Payson', 'Utah', '84651', 'Toilet frequently clogs.  Has a slow flush, and an extremely slow tank refill.', 'No, this is not an emergency', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-07 23:06:45', '2021-10-07 23:06:45'),
(97, 'Christine Joseph', '8012314825', 'ajokmike@yahoo.com', '6852 w Grevillea Ln', 'West Jordan', 'Utah', '84081', 'Hey, So my thermostat isn’t responding with the unit. Im not sure weather it’s the thermostat that broken or the heating and cooling system that broken.', 'No, this is not an emergency', 'Email, Phone', 'Other', 'Other', NULL, NULL, '2021-10-08 00:06:48', '2021-10-08 00:06:48'),
(98, 'Gene A Kolin', '12816386091', 'g.kolin@yahoo.com', '13410 Alpine Mountain Lane', 'Tomball', 'Texas', '77377', 'The lights in the media room flicker when turning them on.', 'No, this is not an emergency', 'Text, Phone, Email', 'Electrician', NULL, NULL, NULL, '2021-10-08 00:23:52', '2021-10-08 00:23:52'),
(99, 'Tess Hobbs', '8028815472', 'tesserahobbs@gmail.com', '7968 Titian Way', 'Cottonwood Heights', 'Utah', '84121', 'Looking to set up my free furnace servicing.', 'No, this is not an emergency', 'Text', 'Other', NULL, 'Furnace', NULL, '2021-10-08 01:31:19', '2021-10-08 01:31:19'),
(100, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '7240 SITE STREET', 'LAS VEGAS', 'Nebraska', '89113', 'CALL TRACIE (702) 498-7544\nSink in upstairs guest bathroom (left sink) is leaking', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-08 03:30:33', '2021-10-08 03:30:33'),
(101, 'Jonathan Mueller', '7134434119', 'kristin@acclaimedhw.com', '10202 Sagegate Drive', 'Houston', 'Texas', '77089', 'he came through chat i could put his rekey in but not garage reprogramming. Can you do this pls. Dont know who it will go to - Kristin', 'No, this is not an emergency', 'Email', 'Other', NULL, 'garage reprogramming', NULL, '2021-10-08 04:00:01', '2021-10-08 04:00:01'),
(102, 'Lacie Snarr', '4359797100', 'bervine.scems@gmail.com', '370 W Sandy Lane', 'Salina', 'Utah', '84654', 'I recently purchased a home at 370 W Sandy Lane, Salina, UT 84654. The dishwasher does not work. It’s very difficult to get started. Once it goes it does not clean the dishes  \nChecking to see what needs to be done to file a home warranty claim.', 'No, this is not an emergency', 'Text', 'Plumber,Appliance Technician', 'GE', NULL, NULL, '2021-10-08 18:57:11', '2021-10-08 18:57:11'),
(103, 'Elaine Giatti', '7028067424', 'elaine.giatti@gmail.com', '9944 Lago De Coco Avenue', 'Las Vegas', 'Nevada', '89148', 'The Pool pump motor that you installed through my home warranty is broken and needs replacement. It’s making a loud rubbing noise. Please have someone call us immediately so that there is not damage to our pool.', 'Yes, this is an emergencye', 'Phone, Email', 'Other', NULL, NULL, NULL, '2021-10-08 23:46:28', '2021-10-08 23:46:28'),
(104, 'Allen A Yadgari', '3108778998', 'allen@skylinere.com', '9071 N 53rd Place', 'Paradise Valley', 'Arizona', '85253', 'Pool Heater', 'No, this is not an emergency', 'Email, Phone', 'Other', NULL, 'Pool service provider', NULL, '2021-10-08 23:49:50', '2021-10-08 23:49:50'),
(105, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '9468 BREWING CLOUD AVE', 'LAS VEGAS', 'Georgia', '89148', 'FRIDGE-ICE MAKER IS NOT WORKING, FRIDGE IS FREEZING ALL FOOD\nCALL THOMAS  (702) 985-7335 AND OR (702) 768-2317', 'Yes, this is an emergencye', 'Email', 'Appliance Technician', 'Other', NULL, 'UNK', '2021-10-09 02:30:17', '2021-10-09 02:30:17'),
(106, 'Stephanie Denman', '281-221-1738', 'sdenman@styledrealestate.com', '25750 Pine Ln', 'Cleveland', 'Texas', '77328', 'The water heater doesn\'t work and we think it has something to do with the breaker panel/electrical issue.', 'No, this is not an emergency', 'Phone, Text', 'Electrician', NULL, NULL, NULL, '2021-10-09 17:35:50', '2021-10-09 17:35:50'),
(107, 'Laura K McNeer', '6142826410', 'laurak321@hotmail.com', '3516 LEXINGTON DRIVE', 'Bountiful', 'Utah', '84010', 'Heat does not work. You may also contact husband, Jason McAffee, at 614-915-8198.', 'Yes, this is an emergencye', 'Text', 'Appliance Technician', 'Other', NULL, NULL, '2021-10-09 23:09:58', '2021-10-09 23:09:58'),
(108, 'Sean Hennessey', '8016369010', 'hennesski@gmail.com', '165 N Laxon Ct', 'Salt Lake City', 'Utah', '84116', 'Just noticed a hot water pipe is leaking in the basement. Hot water now turned off to prevent further dripping in basement. Can wait until Monday', 'Yes, this is an emergencye', 'Phone, Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-10 01:58:51', '2021-10-10 01:58:51'),
(109, 'Barry Bryson', '8014486450', 'barry@brysons.org', '349 Odell ln', 'North Salt Lake', 'Utah', '84054', 'Hi, our furnace is making a tenable grinding racket when it starts and stops. Probably just needs a tune-up or adjustment. Seems to be working for now.', 'No, this is not an emergency', 'Phone, Email, Text', 'Other', NULL, 'HVAC tech', NULL, '2021-10-10 07:24:16', '2021-10-10 07:24:16'),
(110, 'Sheryl Peyton', '5125691765', 'sherylpeyton@gmail.com', '5301 Apache Creek Cv', 'Austin', 'Texas', '78735', 'Air conditioner leak through ceiling', 'No, this is not an emergency', 'Text', 'Other', NULL, 'Air conditioner repair person', NULL, '2021-10-11 03:30:00', '2021-10-11 03:30:00'),
(111, 'MIGUEL V GOMEZ', '8017392626', 'miguel.gomez@equity-usa.com', '1426 W Fernwood Dr', 'Taylorsville', 'Utah', '84123', 'One of the bedrooms has lost all power, even though I have reset the breaker switch.', 'No, this is not an emergency', 'Email, Text', 'Electrician', NULL, NULL, NULL, '2021-10-11 04:53:03', '2021-10-11 04:53:03'),
(112, 'Marie Moore', '7022780743', 'mreeerox@gmail.com', '2412 El Tesoro Ct', 'Henderson', 'Nevada', '89014', 'Built in microwave stopped working, lost all power', 'No, this is not an emergency', 'Phone, Text', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-10-11 09:20:16', '2021-10-11 09:20:16'),
(113, 'Vikas', '888.494.9460', 'jmbliss13@gmail.com', 'mg road indore', 'Indore', 'Kentucky', '452001', 'this is for testing.................\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-11 10:25:14', '2021-10-11 10:25:14'),
(114, 'Vikas', '888.494.9460', 'jmbliss13@gmail.com', 'Mg', 'Indore', 'Arizona', '452001', 'This is just for testing in google chrome android phone.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-11 10:31:00', '2021-10-11 10:31:00'),
(115, 'Daniel Chongthu', '9557822598', 'jmbliss67@gmail.com', 'MG road indore', 'Indore', 'Connecticut', '452001', 'This is for testing in mobile using chrome.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-11 10:36:41', '2021-10-11 10:36:41'),
(116, 'Vinod', '999.654.5432', 'vinod.k.jmbliss@gmail.com', 'Mg road', 'Indore', 'Idaho', '3456', 'Testing', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-11 15:46:23', '2021-10-11 15:46:23'),
(117, 'Zach Quinn', '5704419424', 'zquinn53@gmail.com', '4233 s Holladay Blvd', 'Holladay', 'Utah', '84124', 'There is a leak near windows in multiple areas.', 'Yes, this is an emergencye', 'Email', 'Other', NULL, 'Window', NULL, '2021-10-11 19:20:23', '2021-10-11 19:20:23'),
(118, 'Carlos Sanchez', '720-317-9503', 'atirmat7@gmail.com', '4323 #A', 'Milcreek', 'Utah', '84106', 'The HAVC IS NOT WORKING PROPERLY', 'Yes, this is an emergencye', 'Text, Phone, Email', 'Other', NULL, 'HAVC', NULL, '2021-10-11 19:44:13', '2021-10-11 19:44:13'),
(119, 'Carlos Sanchez', '303-419-1725', 'atirmatseven@gmail.com', '2490 S 600 E #C', 'Salt Lake City', 'Utah', '84107', 'HAVC NOT WORKING PROPERLY', 'Yes, this is an emergencye', 'Text, Phone, Email', 'Other', NULL, 'HAVC', NULL, '2021-10-11 19:48:40', '2021-10-11 19:48:40'),
(120, 'Sean Hennessey', '8016369010', 'hennesski@gmail.com', '165 N Laxon Ct', 'Salt Lake City', 'Utah', '84116', 'Heater (furnace) was blowing hot air for last two weeks. Now, it just blows normal air, (cool air, not hot air). It still blows, but only warm for just a moment, then cool air the rest of the way.', 'No, this is not an emergency', 'Phone, Email, Text', 'Other', NULL, 'HVAC', NULL, '2021-10-11 21:56:17', '2021-10-11 21:56:17'),
(121, 'Ángel Rivera Morales', '832-361-4613', 'prriv02@aol.com', '224 Champion Blvd', 'Boerne', 'Texas', '78006', 'Garbage disposal not working, water in kitchen sink to slow to drain', 'No, this is not an emergency', 'Phone, Text', 'Plumber,Electrician', NULL, NULL, NULL, '2021-10-11 22:09:11', '2021-10-11 22:09:11'),
(122, 'James Ruff', '8015572214', 'Jimmy.S.Ruff@gmail.com', '1289 E. 2nd Ave.', 'Salt Lake City', 'Utah', '84103', 'Washing machine. Clothes are still very wet after spin cycle and grinding like noise can be heard during spin cycle.', 'No, this is not an emergency', 'Email, Text', 'Appliance Technician', NULL, NULL, NULL, '2021-10-11 22:21:42', '2021-10-11 22:21:42'),
(123, 'Nicki Kalokerinos', '7038870707', 'nkalokerinos@gmail.com', '2527 Alden Street East', 'Salt Lake City', 'Utah', '84106', 'The furnace has stopped working.  The HVAC repair that came out took pictures of the crack in the heat exchanger.  We do not have heat in the house at this point.', 'No, this is not an emergency', 'Text', 'Other', NULL, 'HVAC', NULL, '2021-10-12 00:02:59', '2021-10-12 00:02:59'),
(124, 'Brad Cooper', '480-254-4760', 'bcooperup@gmail.com', '1113 Peak St', 'Denton', 'Texas', '76182', 'Dishwasher will not run. It has power.', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'KitchenAid', NULL, NULL, '2021-10-12 01:06:51', '2021-10-12 01:06:51'),
(125, 'Lauryn Ahrns', '8308890214', 'laurynahrns@yahoo.com', '805 loop 534 #126', 'Kerrville', 'Texas', '78028', 'Water heater is out. Microwave is broken.', 'No, this is not an emergency', 'Text, Email, Phone', 'Plumber,Appliance Technician', 'GE', NULL, NULL, '2021-10-12 02:37:53', '2021-10-12 02:37:53'),
(126, 'Linda Sykes', '2143952578', 'lindasykes@kw.com', '200 Lone Star Dr', 'Georgetown', 'Texas', '78633', 'Water softener is not working correctly  Water was tested and it is at 20 on a 1-10 scale.  For some reason both No and Yes buttons highlighted on the \"Is this an emergency?\" question.  This is not an emergency.  We are currently working with Fix-It Services on a water heater issue.', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-12 07:19:57', '2021-10-12 07:19:57'),
(127, 'Augusto Pedroza', '4259227587', 'augusto.pedroza@gmail.com', '479 N 1950 W', 'Lehi', 'Utah', '84043', 'Furnace is turning off before it reaches the desired temperature', 'No, this is not an emergency', 'Text', 'Other', NULL, 'HVAC', NULL, '2021-10-12 11:38:43', '2021-10-12 11:38:43'),
(128, 'Jennifer Pia', '8016714023', 'jenpia@icloud.com', '1164 South 1300 East', 'Salt Lake City', 'Utah', '84105', 'Broiler pilot light will not stay lit. Boiler needs to be rewired, it is not holding a connection.', 'No, this is not an emergency', 'Phone, Email, Text', 'Other', NULL, 'Heating and AC', NULL, '2021-10-12 17:55:33', '2021-10-12 17:55:33'),
(129, 'Kathleen E. Abell', '7755302536', 'godschild.abell07@gmail.com', '2019 Sandy Point Ct', 'NORTH LAS VEGAS', 'Nevada', '89081', 'Broken garbage disposal.  I tried the reset button and it is plugged in and the electrical is working but it does not turn on.', 'No, this is not an emergency', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-12 18:18:56', '2021-10-12 18:18:56'),
(130, 'Marissa Geiger', '9047105122', 'mephelan3@gmail.com', '14002 Tyler point', 'San Antonio', 'Texas', '78254', 'Dishwasher won’t drain', 'No, this is not an emergency', 'Email', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-10-12 19:08:02', '2021-10-12 19:08:02'),
(131, 'Rebecca Swanson', '8018090123', 'rsnottfn@gmail.com', '11298 S Jonagold Dr', 'South Jordan', 'Utah', '84009', 'My GE dishwasher will not start.', 'No, this is not an emergency', 'Phone', 'Appliance Technician', 'GE', NULL, NULL, '2021-10-12 19:31:55', '2021-10-12 19:31:55'),
(132, 'Tupouniua Malohifo\'ou', '8019106854', 'tupouniua@gmail.com', '1556 W 4980 S', 'Taylorsville', 'Utah', '84123', 'My Kitchen faucet is putting out very low pressure. I need a plumber to diagnose and repair please.', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-12 23:17:31', '2021-10-12 23:17:31'),
(133, 'Neill Janikula', '8019461874', 'njanikula@universalathletic.com', '1532 E Tameron Dr', 'Sandy', 'Utah', '84092', 'Master bath tub faucet has low water pressure and very slow to fill tub.', 'No, this is not an emergency', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-13 01:27:22', '2021-10-13 01:27:22'),
(134, 'Frida', '8018560052', 'chrisgon3311@gmail.com', '6076 west  swanbridge', 'Kearns', 'Utah', '84118', 'The heater never turns on is always on you can\'t turn on the air conditioner on because it gets really cold please this has to be fix the house gets really really cold', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'Heater  airconditioner', NULL, '2021-10-13 02:22:22', '2021-10-13 02:22:22'),
(135, 'Jameson Petersen', '3853750555', 'rosspetersen@gmail.com', '114 Canterwood Dr.', 'Washington', 'Utah', '84780', 'Leaking outdoor faucet', 'No, this is not an emergency', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-13 02:26:41', '2021-10-13 02:26:41'),
(136, 'Jameson Petersen', '3853750555', 'rosspetersen@gmail.com', '114 Canterwood Dr', 'Washington', 'Utah', '84780', 'water beneath the shower base in the master bathroom', 'No, this is not an emergency', 'Email', 'Other', NULL, 'maybe a plumber maybe a general contractor to repair or investigate the shower structure/installation', NULL, '2021-10-13 02:28:10', '2021-10-13 02:28:10'),
(137, 'Tiffany Eckholdt', '8016888825', 'tiffanyprince3@gmail.com', '1921 E Creek Rd', 'Cottonwood Heights', 'Utah', '84093', 'Disposal doesn’t work. Dishwasher leaks. Need new door locks.', 'No, this is not an emergency', 'Email, Text', 'Plumber,Appliance Technician', 'Maytag', NULL, NULL, '2021-10-13 10:10:59', '2021-10-13 10:10:59'),
(138, 'Tiffany', '8016888825', 'tiffanyprince3@gmail.com', '1921 E creek rd', 'Cottonwood Heights', 'Utah', '84093', 'Garage door doesn’t work', 'No, this is not an emergency', 'Email, Text', 'Electrician', NULL, NULL, NULL, '2021-10-13 10:13:39', '2021-10-13 10:13:39'),
(139, 'Stephanie Johnson', '8016769581', 'murve3@live.com', '2288 W Heatherglen Dr', 'Taylorsville', 'Utah', '84129', 'My gas furnace is making a banging noise when it first kicks on and a louder banging noise when it ends the cycle.  I have checked all vents in the house, they are open and changed the filter.', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'Heating', NULL, '2021-10-13 13:04:02', '2021-10-13 13:04:02'),
(140, 'Scott', '5127893395', 'sdavisonswim@gmail.com', '3202 Silkgrass Bend', 'Austin', 'Texas', '78748', 'The oven \'bake\' mode does not work. My wife said the broiler mode also struggled activating before eventually working.', 'No, this is not an emergency', 'Phone, Text', 'Appliance Technician', 'Samsung', NULL, NULL, '2021-10-13 14:42:05', '2021-10-13 14:42:05'),
(141, 'Jake Sorensen', '801-897-0565', 'jake@vtitleutah.com', '6831 West Buck Ridge Drive', 'Herriman', 'Utah', '84096', 'Garage Door won\'t open', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'Garage Door', NULL, '2021-10-13 15:32:10', '2021-10-13 15:32:10'),
(142, 'Suzette Vigil', '8016411791', 'suzettevigil@hotmail.com', '11502 s keystone dr', 'South jordan', 'Utah', '84009', 'Need my dryer looked at making. Sequeling noice.', 'No, this is not an emergency', 'Text', 'Appliance Technician', NULL, NULL, NULL, '2021-10-13 15:35:27', '2021-10-13 15:35:27'),
(143, 'Reina Elise Lamberton', '5124601354', 'rei.lamberton@gmail.com', '8910 Witter Ln', 'Temple', 'Texas', '76502', 'We need to get the locks on our home rekeyed.', 'No, this is not an emergency', 'Text, Email', 'Other', NULL, 'Locksmith', NULL, '2021-10-13 16:10:06', '2021-10-13 16:10:06'),
(144, 'Lauryn Ahrns', '8308890214', 'Laurynahrns@yahoo.com', '805 LOOP 534 #126', 'Kerrville', 'Texas', '78028', 'Need plumber for water heater', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-13 16:25:24', '2021-10-13 16:25:24'),
(145, 'Renato Bijasa', '3852508782', 'renebijasa@gmail.com', '1323 Avalon Drive', 'Springville', 'Utah', '84663', 'The screws that holds the Bracket holding the Garage door motor are falling off from the ceiling', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'Garage door technician. I claimed this as emergency as I cannot close the garage door and I have valuable items inside.', NULL, '2021-10-13 16:52:41', '2021-10-13 16:52:41'),
(146, 'Bridget Tong', '9154497822', 'bridgton_23@yahoo.com', '8662 Balintore Place', 'Dallas', 'Texas', '75238', 'It was an unfortunate accident but my husband sat on the toilet and it cracked and broke the tank. Water from the tank rushed out so we closed the water line of the toilet and cleaned the floors.', 'No, this is not an emergency', 'Phone, Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-13 17:04:51', '2021-10-13 17:04:51'),
(147, 'Kyle Eichberger', '8172664366', 'kyle.eichberger@yahoo.com', '5508 Conch Train Rd', 'MCKINNEY', 'Texas', '75070', 'Roof is leaking above the water heater exhaust vent when it rains. The living room wall is also leaking water from the outside when it rains.', 'No, this is not an emergency', 'Phone, Text, Email', 'Other', NULL, 'Roofer???', NULL, '2021-10-13 17:32:55', '2021-10-13 17:32:55'),
(148, 'Maureen K Lane', '4693092834', 'maureen@thekinneylaneteam.com', '3430 Bluewater Drive', 'Little Elm', 'Texas', '75068', 'The ice maker/dispenser in my refrigerator is not working.', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'KitchenAid', NULL, NULL, '2021-10-13 20:24:46', '2021-10-13 20:24:46'),
(149, 'Matthew Gunter', '2547186624', 'mgunter9948@yahoo.com', '1939 Running Creek Dr', 'Salado', 'Texas', '76571', 'Our AC unit is not cooling, and we are in need of repair.', 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, 'Air Conditioning', NULL, '2021-10-13 22:07:46', '2021-10-13 22:07:46'),
(150, 'Tyler Mark Kidd', '2092108787', 'tykidd3@gmail.com', '8430 Pointe Rd G-22', 'Park City', 'Utah', '94098', 'HVAC issue.  Heater not working.  Turn thermostat to ON position and nothing activates.  No air is blown.  Went to heater and no pilot light on.   Held red bottom to activate pilot light and nothing happened.  Turned burners on to see if gas was flowing.  Still nothing.  I will continue to give attempts to light.', 'No, this is not an emergency', 'Phone, Email, Text', 'Other', NULL, 'HVAC- Handy man', NULL, '2021-10-13 23:19:23', '2021-10-13 23:19:23'),
(151, 'Sean Hennessey', '8016369010', 'hennesski@gmail.com', '165 N Laxon Ct', 'Salt Lake City', 'Utah', '84116', 'backed up pipe, the drain from the kitchen sink has slowly gotten worse and will not drain any longer.', 'No, this is not an emergency', 'Phone, Text, Email', 'Plumber', NULL, NULL, NULL, '2021-10-14 02:02:34', '2021-10-14 02:02:34'),
(152, 'Dani Beck', '8013472949', 'dani.84084@gmail.com', '1616 W Wynview Ln', 'South Jordan', 'Utah', '84095', 'The furnace isn\'t heating the house.', 'No, this is not an emergency', 'Text, Email', 'Other', NULL, 'HVAC', NULL, '2021-10-14 04:06:32', '2021-10-14 04:06:32'),
(153, 'Elizabeth Carne', '385-382-7991', 'elizabethallison.93@hotmail.com', '1322 North 350 West', 'Sunset', 'Utah', '84015', 'Furnace does not work all of the time. It turns on and off at random times and rarely heats the home to the desired/set temperature.', 'No, this is not an emergency', 'Text, Phone', 'Electrician,Appliance Technician', 'Other', NULL, 'Carrier Weathermaker 8000', '2021-10-14 13:51:25', '2021-10-14 13:51:25'),
(154, 'Stephanie Amerine', '2102327553', 'red0027@protonmail.com', '602 Walnut Hill St', 'San Antonio', 'Texas', '78232', 'Our pool cleaner pump is going out. It has started to whine and screech really loudly which is not normal. Polaris PB4-60', 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, 'Pool equipment', NULL, '2021-10-14 14:20:25', '2021-10-14 14:20:25'),
(155, 'Anthony Warwick', '5623539019', 'awarwick710@gmail.com', '3696 Copper Cactus Drive', 'Las Vegas', 'Nevada', '89129', 'My pool control panel sparked when it came on and is smoking . I can smell the electric burn. I turned it off and shut off the circuit breaker', 'Yes, this is an emergencye', 'Email, Text', 'Electrician', NULL, NULL, NULL, '2021-10-14 17:03:44', '2021-10-14 17:03:44'),
(156, 'Nicholas Samuel', '7132536750', 'elisamuel5@yahoo.com', '15619 Lake Iris Drive', 'Houston', 'Texas', '77070', 'Dishwasher not draining water', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'GE', NULL, NULL, '2021-10-14 17:16:33', '2021-10-14 17:16:33'),
(157, 'Nicholas Samuel', '7132536750', 'elisamuel5@yahoo.com', '15619 Lake Iris Drive', 'Houston', 'Texas', '77070', 'Need to re-key home', 'No, this is not an emergency', 'Text', 'Other', NULL, 'Locksmith', NULL, '2021-10-14 17:18:45', '2021-10-14 17:18:45'),
(158, 'Lisa Wilbur', '713-304-6099', 'lisa@lisawilburteam.com', '11306 Bentgrove Lane', 'Cypress', 'Texas', '77444', 'Hot water heater is running cold.', 'No, this is not an emergency', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-14 18:29:46', '2021-10-14 18:29:46'),
(159, 'Daniel Stroncak', '310-780-2992', 'danstroncak@gmail.com', '14 Fairmeade Bend Drive', 'The Woodlands', 'Texas', '77381', 'I was opening the garage door and the electric for the garage door, the light in the garage and the laundry room all went out and won\'t work.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-14 19:35:30', '2021-10-14 19:35:30'),
(160, 'Ahilan Ponnusamy', '512-963-6982', 'ahilanp@gmail.com', '3803 Top Rock Ln', 'Round Rock', 'Texas', '78681', 'The Aircon at 3803 Top Rock Lane, Round Rock TX 78681 is not working. Can you help me with this?', 'No, this is not an emergency', 'Email', 'Other', NULL, 'HVAC', NULL, '2021-10-14 21:20:25', '2021-10-14 21:20:25'),
(161, 'Ahilan Ponnusamy', '5129636982', 'ahilanp@gmail.com', '3803 Top Rock Lane', 'Round Rock', 'Texas', '78681', 'A/c not working', 'No, this is not an emergency', 'Email', 'Other', NULL, 'AC Mechanic', NULL, '2021-10-14 21:47:04', '2021-10-14 21:47:04'),
(162, 'Julie Esh', '3128102396', 'julieaesh@mac.com', '14406 juniper Ave', 'Leander', 'Texas', '78641', 'Toilet not flushing properly', 'No, this is not an emergency', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-15 02:13:50', '2021-10-15 02:13:50'),
(163, 'Julie Esh', '3128102396', 'julieaesh@mac.com', '14406 Juniper trl', 'Leander', 'Texas', '78641', 'Air conditioning unit does not seem to be cooling but fan is going constantly, set for 72, but stays around 78-82.', 'No, this is not an emergency', 'Text', 'Other', 'Other', 'HVAC', 'Heating Cooling', '2021-10-15 02:50:45', '2021-10-15 02:50:45'),
(164, 'VIRGIL V CHAMBERS', '2818988599', '44CHAMBERS@GMAIL.COM', '2325 S Lago Vista Dr', 'Pearland', 'Texas', '77581', 'Twice before i have filed claims regarding a constant drip outside from the overflow drain.  Each time they have \"cleaned out\" the overflow line and each time, it did not solve the problem.  I have a muddy puddle on the side of my house which was not there when we bought the house in march.', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'HVAC', NULL, '2021-10-15 12:48:18', '2021-10-15 12:48:18'),
(165, 'Debra S Dillon', '2149573930', 'ddillon@mcdprop.com', '2816 Browning Drive', 'Plano', 'Texas', '75093', 'We are losing hundreds of gallons of water on a daily basis and think this could be due to a pool leak.', 'Yes, this is an emergencye', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-15 14:11:34', '2021-10-15 14:11:34'),
(166, 'Brock', '8012594186', 'brock22thomas@gmail.com', '60 E 135 N', 'Orem', 'Utah', '84057', 'There was a burst behind the fridge where fridge water valve is. We turned off main water line to home.', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-15 14:25:23', '2021-10-15 14:25:23'),
(167, 'Eduardo Pulido', '8126294682', 'egpulido95@gmail.com', '3826 E Rock Creek Rd', 'Eagle Mountain', 'Utah', '84005', 'Heater not working properly. Flame seems to be turning on for only a second then goes off and only cool air comes out. The home is freezing at 55 degrees right now.', 'Yes, this is an emergencye', 'Text', 'Other', NULL, 'HVAC Technician', NULL, '2021-10-15 15:07:00', '2021-10-15 15:07:00'),
(168, 'Jennifer Yung', '9164948297', 'emmanjenn@gmail.com', '6871 Momentos Street', 'Las Vegas', 'Nevada', '89149', 'The heater did not turn on last night. This morning, I turned on the heater and it turned on for a brief moment before shutting off.', 'No, this is not an emergency', 'Text, Phone', 'Other', NULL, 'HVAC Technician', NULL, '2021-10-15 15:16:13', '2021-10-15 15:16:13'),
(169, 'Vince Cameron', '801-870-7760', 'vincecameron@yahoo.com', '567 S. Fiesta Dr', 'Ivins', 'Utah', '84738', 'I called Acclaimed HW because my refrigerator stopped working.  I told the rep the make of the refrigerator, paid the $60 service fee by VISA and was e-mailed a letter indicating that Reliable Home Appliance would provide the service.  I contacted Reliable to set up an appointment and was told that they do not service LG refrigerators.  Can you connect me with a  company that can provide me service?\n\nThank you', 'No, this is not an emergency', 'Phone', 'Appliance Technician', 'LG', NULL, NULL, '2021-10-15 15:25:03', '2021-10-15 15:25:03'),
(170, 'Shannon Martinez', '5125652739', 'shannon@psper.com', '431 Ellen Williams loop', 'Kingsland', 'Texas', '78639', 'Need to schedule a RE-key', 'No, this is not an emergency', 'Text', 'Other', NULL, 'Locksmith', NULL, '2021-10-15 15:29:22', '2021-10-15 15:29:22'),
(171, 'Jesus Lopez', '8018797063', 'jes.ed.lopez93@gmail.com', '8233 Pinecastle dr', 'west jordan', 'Utah', '84081', 'Our heating is not working properly. Home is constantly cold. Master bedroom is freezing at night.', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'Heating and Air specialist', NULL, '2021-10-15 16:55:45', '2021-10-15 16:55:45'),
(172, 'Marr D Sappington Jr.', '3016558862', 'DOUGSAPPINGTON@GMAIL.COM', '2760 S Highland Dr, Apartment 17', 'Salt Lake City', 'Utah', '84106', 'A problem with water (condensation, I think) in the heater/ac unit. It appears that there is a problem with a drain or something similar that causes the filters to become very wet.', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'HVAC', NULL, '2021-10-15 17:00:23', '2021-10-15 17:00:23'),
(173, 'Devon Douglas', '8015923439', 'Dndouglas@hotmail.com', '115 S 5th St', 'Tooele', 'Utah', '84074', 'Our furnace isn\'t working. Starts and then stops. There are children in the house.', 'No, this is not an emergency', 'Text', 'Other', NULL, 'Heating', NULL, '2021-10-16 05:08:22', '2021-10-16 05:08:22'),
(174, 'John Laing', '4257650585', 'laingjohn@me.com', '1134 Pinnacle DR', 'Park City, UT', 'Utah', '84060', 'Boiler is not producing heat in our upstairs.', 'No, this is not an emergency', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-16 22:54:25', '2021-10-16 22:54:25'),
(175, 'Eric Nelson', '8015994074', 'ejn0206@gmail.com', '4676 s Stratton dr', 'Salt Lake City', 'Utah', '84117', 'Our washer isn’t working properly', 'No, this is not an emergency', 'Email, Text', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-10-17 13:26:52', '2021-10-17 13:26:52'),
(176, 'Alberto J Melendez', '3852023069', 'ajmelp@gmail.com', '1825 W 7600 APT H301', 'West Jordan', 'Utah', '84084', 'My cooktop and the oven are not working.', 'No, this is not an emergency', 'Phone, Email, Text', 'Appliance Technician', 'GE', NULL, NULL, '2021-10-17 17:08:20', '2021-10-17 17:08:20'),
(177, 'Lisa Mills', '8015981838', 'lisakayemills@gmail.com', '4005 S Decathlon St', 'Millcreek', 'Utah', '84124', 'Pilot light won\'t light on furnace', 'No, this is not an emergency', 'Email', 'Other', NULL, 'HVAC', NULL, '2021-10-17 23:07:59', '2021-10-17 23:07:59'),
(178, 'Cindy Boyd', '423-232-6642', 'boydnest99@gmail.com', '536 E Dominguez', 'Ivins', 'Utah', '84738', 'Water softener making loud sound', 'Yes, this is an emergencye', 'Phone', 'Appliance Technician', NULL, NULL, NULL, '2021-10-18 13:07:11', '2021-10-18 13:07:11'),
(179, 'James Barnett', '9492924416', 'barnettjamesk@gmail.com', '3788 S Alta Loma Dr', 'Salt Lake City', 'Utah', '84106', NULL, 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, 'roofing', NULL, '2021-10-18 14:21:42', '2021-10-18 14:21:42'),
(180, 'Travis Cook', '5097107218', 'tdavidcook@gmail.com', 'tdavidcook@gmail.com', 'San Antonio', 'Texas', '78254', 'Water appears to be leaking from the shower into adjacent bedroom and garage below shower.', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-18 15:18:09', '2021-10-18 15:18:09'),
(181, 'Carlos Sanchez', '3034191725', 'atirmatseven@gmail.com', '560, E DIVISION LN,  Apart #D', 'Salt Lake City', 'Utah', '84107', 'The tub is plugged, the water is not running properly.', 'Yes, this is an emergencye', 'Text, Email, Phone', 'Plumber', NULL, NULL, NULL, '2021-10-18 15:37:45', '2021-10-18 15:37:45'),
(182, 'Roger  Dosenbach', '8323683080', 'rogerados2@yahoo.com', '11007 Jadestone Creek Lane', 'cypress', 'Texas', '77433', 'Would like to have a heater checkup', 'No, this is not an emergency', 'Email, Text', 'Other', NULL, 'Heat and air', NULL, '2021-10-18 16:38:01', '2021-10-18 16:38:01'),
(183, 'Maureen K Lane', '4693092834', 'maureen@thekinneylaneteam.com', '3430 Bluewater Drive', 'Little Elm', 'Texas', '75068', 'Would like to set up an appt for an HVAC tuneup.', 'No, this is not an emergency', 'Text', 'Other', NULL, 'HVAC', NULL, '2021-10-18 18:37:19', '2021-10-18 18:37:19'),
(184, 'ERIKA MARIN', '8013699749', 'emarin21@hotmail.com', '9519 South Hidden Point Dr', 'Sandy', 'Utah', '84070', 'furnace issues/ heater not working', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, NULL, NULL, '2021-10-18 18:57:30', '2021-10-18 18:57:30'),
(185, 'Vijay Sharma', '2146361402', 'vs_77@hotmail.com', '1931 S Sinova Ave', 'Gilbert', 'Arizona', '85295', 'There are two issues:\n\n1. Cooktop range is not working\n2. The Dishwasher racks are not working\n\nContract #39886', 'Yes, this is an emergencye', 'Phone, Email, Text', 'Appliance Technician', NULL, NULL, NULL, '2021-10-18 21:56:28', '2021-10-18 21:56:28'),
(186, 'Brittany Walkoviak', '4093822964', 'brittanymichele@hotmail.com', '9107 Lacombe Lane', 'Tomball', 'Texas', '77375', 'Microwave stopped working', 'No, this is not an emergency', 'Text, Email, Phone', 'Appliance Technician', NULL, NULL, NULL, '2021-10-18 22:20:32', '2021-10-18 22:20:32'),
(187, 'Alejandra henao', '9739705912', 'ahenao95@gmail.com', '5055 W Hacienda Ave', 'Las Vegas', 'Nevada', '89118', 'Toilet tank bolt fell off and tank is leaking', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-19 04:27:55', '2021-10-19 04:27:55'),
(188, 'Amanda Dill', '2147041479', 'amanda.dill@ymail.com', '3727 Gilbert Ave.', 'Dallas', 'Texas', '75219', 'The coils on the downstairs AC unit have frozen over. I turned it off yesterday thinking it would help but it hasn’t. I believe the system needs to be charged.', 'Yes, this is an emergencye', 'Phone', 'Other', 'Other', 'AC', NULL, '2021-10-19 11:59:49', '2021-10-19 11:59:49'),
(189, 'Elyse Burden', '4196104760', 'elysejburden@gmail.com', '3050 porter ave', 'Ogden', 'Utah', '84403', 'We have a small leak in our roof dripping into upstairs bathroom sink. Wondering if this is something you cover.', 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, 'Roofer', NULL, '2021-10-19 13:30:56', '2021-10-19 13:30:56'),
(190, 'Oswald Andrade', '8329637899', 'o.andrade90@gmail.com', '11423 Sagevale Ln.', 'Houston', 'Texas', '77089', 'Re-Key\n\nContract # 31510', 'No, this is not an emergency', 'Phone, Text, Email', 'Other', NULL, 'Locksmith', NULL, '2021-10-19 13:53:12', '2021-10-19 13:53:12'),
(191, 'Eloise Hockett', '5103742532', 'ehockettimages@gmail.com', '2208 Stewart Avenue', 'Nampa', 'California', '83686', 'Water heater quit working. Please text or call me at 510-374-2532. We have no hot water. It\'s an emergency.', 'Yes, this is an emergencye', 'Text, Phone', 'Plumber', NULL, NULL, NULL, '2021-10-19 14:11:22', '2021-10-19 14:11:22'),
(192, 'Jaime Benenate', '352-804-2272', 'djorwsb@gmail.com', '3115 Relic Ridge Drive', 'St. George', 'Utah', '84790', 'Contract 36029 - Water heater not working. “Burner screen needs to be cleaned”', 'Yes, this is an emergencye', 'Phone', 'Appliance Technician', 'Other', NULL, 'A.O. Smith water Heater', '2021-10-19 15:48:11', '2021-10-19 15:48:11'),
(193, 'nathan meador', '5126433191', 'mbmpropertystaff@gmail.com', '5023 concord ridge', 'san antonio', 'Texas', '78228', 'Hello, we had  dishwasher and stove not working and wanted to put a claim in for those. I also wanted to see if the warranty covered any doors or flooring. I am the manager for Mary miner', 'No, this is not an emergency', 'Phone', 'Appliance Technician,Other', 'Whirlpool', 'Doors', NULL, '2021-10-19 16:29:31', '2021-10-19 16:29:31');
INSERT INTO `make_claims` (`id`, `name`, `phone`, `email`, `street_address`, `city`, `state`, `zip_code`, `claim_details`, `emergency`, `contact_method`, `technicians`, `appliances`, `other`, `other_appliances`, `created_at`, `updated_at`) VALUES
(194, 'Nathan Way', '7138059780', 'nway0102@gmail.com', '8711 Green Hollow Lane', 'Spring', 'Texas', '77379', 'Pool Waterfall Motor is Out and Both Pool Lights are out.  Need help with both please.', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'Pool Specialist', NULL, '2021-10-20 00:41:15', '2021-10-20 00:41:15'),
(195, 'Nichole Clarke', '4356802080', 'nicholeyc14@gmail.com', '2558 west 7130 South', 'West Jordan', 'Utah', '84084', 'One of the burners on the stove won\'t lite.', 'No, this is not an emergency', 'Phone, Email', 'Appliance Technician', 'LG', NULL, NULL, '2021-10-20 15:06:03', '2021-10-20 15:06:03'),
(196, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '9844 TWILIGHT WALK AVE', 'LAS VEGAS', 'Nevada', '89149', 'GARAGE DOOR TRACK IS MAKING SCREATCHING SOUNDS\nCALL LORRAINE 702-302-8778', 'Yes, this is an emergencye', 'Email', 'Other', NULL, 'GARAGE DOOR', NULL, '2021-10-20 16:43:16', '2021-10-20 16:43:16'),
(197, 'Cindy Morgan', '8179913407', 'txquiltlady@aol.com', '244 CR 3351', 'Paradise', 'Texas', '76073', 'Air conditioning/heating unit is not working', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'Air conditioning/heating', NULL, '2021-10-20 19:13:32', '2021-10-20 19:13:32'),
(198, 'Ahilan Ponnusamy', '5129636982', 'ahilanp@gmail.com', '3803 Top Rock lane', 'Round rock', 'Texas', '78681', 'The service technician wants to reopen the ticket since the issue is not fixed. austin housing co manages the property. Please use admin@austinhouseco.com as the primary email for communication', 'Yes, this is an emergencye', 'Email', 'Other', NULL, 'AC Mechanic', NULL, '2021-10-20 21:51:09', '2021-10-20 21:51:09'),
(199, 'Luke Barton', '2144333480', 'lpbarton0524@gmail.com', '1013 Hall Dr.', 'Wylie', 'Texas', '75098', 'A/C not working', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'HVAC', NULL, '2021-10-21 11:24:21', '2021-10-21 11:24:21'),
(200, 'Ahilan Ponnusamy', '5129636982', 'ahilanp@gmail.com', '3803 Top Rock Lane', 'Round Rock', 'Texas', '78681', 'The original issue was not fixed. The technician want the ticket to be reopened before he can address it. Can you please expedite this?', 'Yes, this is an emergencye', 'Email', 'Other', NULL, 'A/C mechanic', NULL, '2021-10-21 13:15:25', '2021-10-21 13:15:25'),
(201, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '3151 SOARING GULLS  UNIT 2167', 'LAS VEGAS', 'Nevada', '89128', 'diverter in master needs to be replaced\nCALL SUNEAL (307) 797-5006\nSEND GPS PLUMBING', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-21 14:37:56', '2021-10-21 14:37:56'),
(202, 'nathan meador', '5123756944', 'mbmpropertystaff@gmail.com', '5023 concord ridge', 'san antonio', 'Texas', '78228', 'Hello. I would like a pest control service for mice and wanted to see if its covered', 'No, this is not an emergency', 'Phone, Text', 'Other', NULL, 'pest control', NULL, '2021-10-22 15:51:48', '2021-10-22 15:51:48'),
(203, 'Gene Kartchner', '801-918-6844 or 801-414-6714', 'gene_tammy@q.com', '904 Spring Pond Drive', 'Farmington', 'Utah', '84025', 'Contract #37820\n\nA rekey is needed for our house. It has 3 doors to the outside and a storm door.\n\nThe master bathroom jetted tub, the faucet and spigot are loose', 'No, this is not an emergency', 'Phone', 'Other,Plumber', NULL, 'Lock/Key', NULL, '2021-10-22 21:07:01', '2021-10-22 21:07:01'),
(204, 'Logan G Hall', '6029082188', 'logan@loganhallhomes.com', '18409 W. Sells Dr.', 'Goodyear', 'Arizona', '85395', 'My ice maker stopped working days ago. It has water in it but nothing is freezing.', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'GE', NULL, NULL, '2021-10-23 02:01:16', '2021-10-23 02:01:16'),
(205, 'Maureen Kinney Lane', '4693092834', 'maulane@yahoo.com', '3430 Bluewater Drive', 'LITTLE ELM', 'Texas', '75068', 'I need a Recall Work Order for my refrigerator. The icemaker still is not working.', 'No, this is not an emergency', 'Phone, Text', 'Appliance Technician', 'KitchenAid', NULL, NULL, '2021-10-23 13:43:43', '2021-10-23 13:43:43'),
(206, 'Sonja Hendrix', '5594702461', 'sonjalhendrix@gmail.com', '4146 DIGNIFIED CT', 'NORTH LAS VEGAS', 'Nevada', '89032', 'Water heater is shooting a lot of water and can\'t get it to stop!', 'Yes, this is an emergencye', 'Phone', 'Appliance Technician', 'Other', NULL, 'water heater', '2021-10-23 22:03:29', '2021-10-23 22:03:29'),
(207, 'Sonja', '5594702461', 'sonjalhendrix@gmail.com', '4146 dignified ct', 'North Las Vegas', 'Nevada', '89032', 'Water heater busted and is flooding garage and street', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'Water Heater', NULL, '2021-10-23 22:45:10', '2021-10-23 22:45:10'),
(208, 'Romer Ferrer', '8018196793', 'kia.kia69@yahoo.com', '5930 West Jackling Way', 'West Jordan', 'Utah', '84081', 'Shower knob broke,  Cannot have the water flow', 'No, this is not an emergency', 'Phone, Text', 'Plumber', NULL, NULL, NULL, '2021-10-24 00:26:41', '2021-10-24 00:26:41'),
(209, 'Marilyn Masters', '8186363505', 'mmasters7@aol.com', '6681 West Normandy Way', 'Highland', 'Utah', '84003', 'A technician came out several times to fix our dryer and finally replaced the motor.  It is still squeaking.  Could we please have the technician come again to fix it?  TY!', 'No, this is not an emergency', 'Phone, Text', 'Appliance Technician', NULL, NULL, NULL, '2021-10-24 01:15:37', '2021-10-24 01:15:37'),
(210, 'Tamika Johnson-Collins', '2065797078', 'mekatee2003@yahoo.com', '3891 s Sigma dr.', 'Magna', 'Utah', '84044', 'Hello Team, Recently received a home warranty Contract #: 40172 and wanted to set a rekey appt to have the house rekeyed.', 'No, this is not an emergency', 'Phone, Email, Text', 'Other', NULL, 'ReKey', NULL, '2021-10-24 07:30:13', '2021-10-24 07:30:13'),
(211, 'Tucker Witt', '8048154387', 'useyourwitt@gmail.com', '859 Ranchers Club Lane', 'Driftwood', 'Texas', '78619', 'One of our air conditioning units is not functioning. This will be the second time a contractor has been sent out to resolve this issue. Thank you for your time.', 'No, this is not an emergency', 'Email', 'Other', NULL, 'HVAC', NULL, '2021-10-24 19:02:32', '2021-10-24 19:02:32'),
(212, 'Dinesh Choudhari', '7707767770', 'cibaacs@gmail.com', '489 E Sandy Oaks Dr', 'Sandy', 'Utah', '84070', 'Both refrigeration and cooling not working. Making sound. Temperature display not working.', 'No, this is not an emergency', 'Phone, Text', 'Appliance Technician', 'Samsung', NULL, NULL, '2021-10-24 22:51:19', '2021-10-24 22:51:19'),
(213, 'Gage Karl Peterson', '2083576302', 'justgage@hey.com', '816 W 2550 S', 'Nibly', 'Utah', '84321', 'We discovered that our dishwasher is leaking every time we turn it on', 'No, this is not an emergency', 'Email, Text, Phone', 'Appliance Technician', 'Frigidaire', NULL, NULL, '2021-10-25 14:23:50', '2021-10-25 14:23:50'),
(214, 'deborah jordan', '8186814681', 'debjordan65@gmail.com', '4467 W Clarks Hill Dr', 'South Jordan', 'Utah', '84009', '1.my shower isn\'t working.  same issue as the last time a shower (different shower) was repaired - the cartridge inside the faucet isn\'t working. \n\n2. my microwave no longer heats food. the lights work, the turntable works, the vent works, the clock works - it just doesn\'t heat food.', 'No, this is not an emergency', 'Phone', 'Plumber,Appliance Technician', 'GE', NULL, NULL, '2021-10-25 16:40:25', '2021-10-25 16:40:25'),
(215, 'Kory Mortimer', '8018246941', 'kory.mort@gmail.com', '10721 S Stone Gate Circle', 'Sandy', 'Utah', '84092', 'Toilet is not working. It doesn\'t stop running.\nAlso when I go to turn the valve for the toilet to turn the water off I\'m unable to turn the valve.', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-25 16:44:58', '2021-10-25 16:44:58'),
(216, 'Kory Mortimer', '8018246941', 'kory.mort@gmail.com', '10721 S Stone Gate Circle', 'Sandy', 'Utah', '84092', 'Electric switch for lights stopped working yesterday. I flipped the switch and both stopped lights stopped working. I changed the bulbs and check the breaker box and still not working.', 'No, this is not an emergency', 'Phone', 'Electrician', NULL, NULL, NULL, '2021-10-25 16:46:23', '2021-10-25 16:46:23'),
(217, 'Kathleen Green', '8438194100', 'katgreen920@gmail.com', '3111 E Webber Dr', 'Pearland', 'Texas', '77584', 'I appear to have water damage in an upstairs bedroom. I can see visible wood warping on the trim near the floor underneath the window. I don\'t  think the leak is plumbing related. I think it might be a leak near the window.', 'No, this is not an emergency', 'Email', 'Other', NULL, 'General Contractor', NULL, '2021-10-25 19:09:24', '2021-10-25 19:09:24'),
(218, 'Gino Lim', '2814689966', 'ginolim7@yahoo.com', '9511 Eddys Edge Ct.', 'Houston', 'Texas', '77089', 'The stovetop is malfunctioning. It also smells like burning.', 'No, this is not an emergency', 'Email', 'Electrician,Appliance Technician', 'GE', NULL, NULL, '2021-10-25 20:19:46', '2021-10-25 20:19:46'),
(219, 'Brandon Lasater', '801-707-1670', 'lasaterbrandon@gmail.com', '809 Lyndy Drive', 'Midvale', 'Utah', '84047', 'Upon moving in I tried plugging in our dryer which blew out the electrical wall outlet, the breaker is still in the on position but the wall outlet is burnt out and not working.', 'No, this is not an emergency', 'Phone, Text', 'Electrician', NULL, NULL, NULL, '2021-10-25 21:50:55', '2021-10-25 21:50:55'),
(220, 'Ankit Kumar', '5307609534', 'ankit.mitpune@gmail.com', '5734 S Flax Pl', 'Boise', 'Idaho', '83716', 'service needed:\n1. Rekeying\n2. HVAC tune up', 'No, this is not an emergency', 'Phone, Text', 'Other,Electrician', NULL, 'Rekeying nay be carpenter?', NULL, '2021-10-25 23:02:44', '2021-10-25 23:02:44'),
(221, 'Eric Moore', '323-371-8123', 'workmoore@gmail.com', '938 W 1150 S St', 'Provo', 'Utah', '84601', 'The washing machine engine went out and has a burnt smell now. \nThe water stayed in the washer and would not drain.', 'No, this is not an emergency', 'Text', 'Plumber', NULL, NULL, NULL, '2021-10-26 00:16:51', '2021-10-26 00:16:51'),
(222, 'Evan Child', '801-831-6419', 'ctrealty@thechildteam.com', '4013 W Deer Horn Ct', 'Riverton', 'Utah', '84065', NULL, 'No, this is not an emergency', 'Phone', 'Appliance Technician', 'Other', NULL, 'Whirlpool, Tappan, Kenmore', '2021-10-26 01:00:55', '2021-10-26 01:00:55'),
(223, 'Kaisha Rich', '8018094081', 'kaishabriellew@yahoo.com', '767 E 2150 S', 'Bountiful', 'Utah', '84010', 'My kitchen sink is leaking', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-26 14:51:15', '2021-10-26 14:51:15'),
(224, 'Romer Ferrer', '8018196793', 'kia.kia69@yahoo.com', '5930 West Jackling Way', 'West Jordan', 'Utah', '84081', 'Shower knob is broken.', 'No, this is not an emergency', 'Phone, Text, Email', 'Plumber', NULL, NULL, NULL, '2021-10-26 15:07:12', '2021-10-26 15:07:12'),
(225, 'Romer Ferrer', '801-819-6793', 'rferrer@jerryseiner.com', '5930 W Jackling Way', 'W Jordan', 'Utah', '84081', 'master bathroom shower handle it broken. He said he put in a request Sunday.', 'No, this is not an emergency', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-26 15:19:14', '2021-10-26 15:19:14'),
(226, 'Laurel Bloombaum', '541-326-2182', 'sandra@acclaimedhw.com', '1179 W 8830 S', 'West Jordan', 'Utah', '84088', 'The heater/ boiler system is not working. Please contact the property manager for access and payment. \nLeon Chodos \n801-859-7596 \nleonchodos@gmail.com', 'Yes, this is an emergencye', 'Phone', 'Other', NULL, 'HVAC', NULL, '2021-10-26 18:40:19', '2021-10-26 18:40:19'),
(227, 'heather beasley', '4023126836', 'beasleyhl@gmail.com', '2819 e. sleepy hollow drive', 'holladay', 'Utah', '84117', 'We have water leaking into our basement that has ruined our carpet', 'No, this is not an emergency', 'Text, Phone', 'Other,Plumber', NULL, 'carpet', NULL, '2021-10-26 19:57:02', '2021-10-26 19:57:02'),
(228, 'Tyler Mark Kidd', '2092108787', 'tykidd3@gmail.com', '8430 Pointe Rd G-22', 'Park City', 'Utah', '84098', 'Leaky connector from wall to cloths washer unit. Creating water droplets. I tightened with wrench. But still leaky. Not sure what to do at this point.', 'No, this is not an emergency', 'Phone, Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-26 20:10:48', '2021-10-26 20:10:48'),
(229, 'Kelly Summers', '8184424458', 'krsummers@sbcglobal.net', '3404 E. Mile High Drive', 'Millcreek', 'Utah', '84124', 'Gas Oven is making a “clicking” sound when switched to CLEAN OVEN mode.', 'Yes, this is an emergencye', 'Phone, Text', 'Electrician,Other', NULL, 'Appliance Technician', NULL, '2021-10-26 21:16:02', '2021-10-26 21:16:02'),
(230, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '601 VINCENT WAY', 'LAS VEGAS', 'Nebraska', '89145', 'GUEST BATHROOM TOILET IS RUNNING\nCALL ARTHUR (702) 425-0008', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-26 21:44:28', '2021-10-26 21:44:28'),
(231, 'Tony  Vanderheyden, for Maria Vanderheyden, for Pierre vanderheyden trust', '385-770-0376', 'tonyvander@xmission.com', '6883 S. Suzanne Dr', 'Midvale', 'Utah', '84047', 'Water Heater Leaking at Base.   I have turned water off at top of heater, gas is off. WH will leak when cold water of faucets  are on but that should be momentary.\nContact of resident is Kim 385 900 3818\n\nI think it is a Standard 50 gal water heater', 'Yes, this is an emergencye', 'Phone, Text', 'Plumber', NULL, NULL, NULL, '2021-10-26 22:39:03', '2021-10-26 22:39:03'),
(232, 'Danielle Roessler', '3478202939', 'danielleroessler89@gmail.com', '802 Caroline Lane', 'Southlake', 'Texas', '76092', 'Our hot water heater is leaking from the top and the tray is full', 'No, this is not an emergency', 'Text, Phone', 'Plumber', NULL, NULL, NULL, '2021-10-26 22:49:30', '2021-10-26 22:49:30'),
(233, 'Rayna Pelkonen', '7024009411', 'raynapelkonen@gmail.com', '3308 Thousand Oaks cove', 'Austin', 'Texas', '78746', 'Downstairs toilet won’t flush properly and runs constantly. 2nd toilet won’t flush consistently.', 'No, this is not an emergency', 'Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-27 13:58:17', '2021-10-27 13:58:17'),
(234, 'Tom Pfister', '9403008246', 'pfistert@aol.com', '3901 Harrisburg Lane', 'Celina', 'Texas', '75009', 'Washing machine not draining the water.  I created a new claim in the log in. Not sure if i did that right or here', 'No, this is not an emergency', 'Text, Email', 'Appliance Technician', 'LG', NULL, NULL, '2021-10-27 14:22:39', '2021-10-27 14:22:39'),
(235, 'JESSE ROLAND SNYDER', '8015998779', 'jessersnyder@gmail.com', '1333 W Varden Way', 'Salt Lake City', 'Utah', '84123', 'Active water dipping and pooling up in the wall surrounding our electrical circuit board.', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-27 14:51:54', '2021-10-27 14:51:54'),
(236, 'Megan Lanier', '830-708-9240', 'mmlanier87@gmail.com', '4903 Slate CT', 'Killeen', 'Texas', '76542', 'Went to preheat oven to 325 degrees just now and noticed it was lighting up like if the oven light was on but it was not on. I quickly saw part of the heating element lighting up. I have turned oven off. Also noticed when using oven recently it melts part of the stove top. I have daughters birthday to bake for and holidays are coming so need to know safety of appliance', 'Yes, this is an emergencye', 'Phone, Text', 'Appliance Technician', 'Other', NULL, 'Kenmore', '2021-10-27 15:25:51', '2021-10-27 15:25:51'),
(237, 'Nae Meh and Paraw Soe', '801-783-0588', 'htareh009@gmail.com', '3166 W Designer Court', 'WVC', 'Utah', '84119', 'Title called saying they need to place a claim on water heater. Title check has been verified. Pls call to set up. - Kristin put this in for them', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-27 15:27:30', '2021-10-27 15:27:30'),
(238, 'LORRAINE HAYNES', '702-478-2236', 'LORRAINE@IRESVEGAS.COM', '1108 Princess Katy', 'LAS VEGAS', 'Nevada', '89119', 'HEATER IS NOT WORKING\nURGENT CALL JASON (702) 472-3252', 'Yes, this is an emergencye', 'Email', 'Other', NULL, 'HVAC-HEATER', NULL, '2021-10-27 16:03:51', '2021-10-27 16:03:51'),
(239, 'SKYLER J WOOD', '7202893771', 'sjwood25@gmail.com', '14 Wilson Cir', 'Woodcreek', 'Texas', '78676', 'Garage door has a broken cable, and the track has bent', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'garage door repair', NULL, '2021-10-27 16:17:03', '2021-10-27 16:17:03'),
(240, 'Lisa Huddleson', '512-302-3892', 'lhuddleson@gmail.com', '2402 W 8th Street', 'Austin', 'Texas', '78703', 'several plumbing issues', 'Yes, this is an emergencye', 'Phone', 'Plumber', NULL, NULL, NULL, '2021-10-27 16:22:26', '2021-10-27 16:22:26'),
(241, 'Michael Evans', '2103266417', 'mevans1229@gmail.com', '2130 Legends Way', 'Katy', 'Texas', '77493', 'Dryer makes loud scraping noise when in use.', 'No, this is not an emergency', 'Email', 'Appliance Technician', 'Samsung', NULL, NULL, '2021-10-27 20:34:53', '2021-10-27 20:34:53'),
(242, 'David LIzotte', '702.271.6677', 'lvlizard@gmail.com', '8870 Park Plaza Ct', 'Las Vegas', 'Nevada', '89123', 'The spa/jacuzzi isnt heating.', 'No, this is not an emergency', 'Phone', 'Other', NULL, 'spa repair technician', NULL, '2021-10-27 21:39:18', '2021-10-27 21:39:18'),
(243, 'Onairam', '7022414761', 'onyrealtor@yahoo.com', '1355 westwind rd', 'Las Vegas', 'Nevada', '89146', 'Ac claim', 'No, this is not an emergency', 'Text, Phone', 'Other', NULL, 'Ac technician', NULL, '2021-10-27 22:51:22', '2021-10-27 22:51:22'),
(244, 'Shalane Juarez', '8179750553', 'shalane.beynon@gmail.com', '583 E 2680 S', 'Naples', 'Utah', '84078', 'Heater kicks on but does not blow hot air.', 'No, this is not an emergency', 'Text', 'Other', NULL, 'HVAC technician', NULL, '2021-10-28 04:06:58', '2021-10-28 04:06:58'),
(245, 'Carlos Frias', '8329449267', 'frias.c@yahoo.com', '5103 edenvale ct', 'Friendswood', 'Texas', '77546', 'Freezer no longer freezing, fridge not as cold.', 'No, this is not an emergency', 'Text', 'Appliance Technician', 'LG', NULL, NULL, '2021-10-28 11:56:14', '2021-10-28 11:56:14'),
(246, 'PAUL OR CHERYL LAL', '702-263-2052', 'cheeylandsons@cox.net', '192 Raton Drive', 'Henderson', 'Nevada', '89074', '1. Kitchen sink not draining properly; and 2. Spicket connected to the exterior of the house has a slow drip.', 'No, this is not an emergency', 'Phone, Email, Text', 'Plumber', NULL, NULL, NULL, '2021-10-28 14:55:16', '2021-10-28 14:55:16'),
(247, 'Amanda Dill', '2147041479', 'amanda.dill@ymail.com', '3727 Gilbert Ave. Apt E', 'Dallas', 'Texas', '75219', 'Dishwasher not working and smells like mold', 'Yes, this is an emergencye', 'Email', 'Plumber', NULL, NULL, NULL, '2021-10-28 16:45:59', '2021-10-28 16:45:59'),
(248, 'Keith Smith', '775-527-0883', 'tqsmith@hotmail.com', '89 N Sand Rio Dr', 'Ivins', 'Utah', '84738', 'Would like to schedule annual check for heating system included with my home warranty.  I am aware that the cost to me is $60.', 'No, this is not an emergency', 'Email', 'Other', NULL, 'Heating System', NULL, '2021-10-28 19:57:29', '2021-10-28 19:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `member_advantages_benefits`
--

CREATE TABLE `member_advantages_benefits` (
  `id` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_advantages_enquiry`
--

CREATE TABLE `member_advantages_enquiry` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_advantages_enquiry`
--

INSERT INTO `member_advantages_enquiry` (`id`, `location_name`, `first_name`, `last_name`, `state`, `email`, `phone_number`, `information`, `created_at`, `updated_at`) VALUES
(66, 'arizona', 'Vikas', 'Kumar', 'Kansas', 'jmbliss13@gmail.com', '888.494.9460', 'Final Testing for Arizona', '2021-09-22 18:34:36', '2021-09-22 18:34:36'),
(67, 'utah', 'Daniel', 'Jmbliss67', 'Indiana', 'jmbliss67@gmail.com', '888.494.9460', 'Testing information', '2021-10-01 17:35:11', '2021-10-01 17:35:11'),
(68, 'utah', 'Vikas', 'Kumar', 'Iowa', 'jmbliss13@gmail.com', '9557822598', 'Hello CC, this is the testing for Utah', '2021-10-01 19:10:32', '2021-10-01 19:10:32'),
(69, 'idaho', 'Vikas', 'Kumar', 'Iowa', 'jmbliss13@gmail.com', '9557822598', 'Hello CC, this is testing for IDAHO', '2021-10-01 19:11:29', '2021-10-01 19:11:29'),
(70, 'nevada', 'Vikas', 'Kumar', 'Kentucky', 'jmbliss13@gmail.com', '9557822598', 'Hello CC, this is the testing for Nevada.', '2021-10-01 19:12:42', '2021-10-01 19:12:42'),
(71, 'texas', 'Vikas', 'Kumar', 'Kansas', 'jmbliss13@gmail.com', '9557822598', 'Hello CC, this is the testing for Texas', '2021-10-01 19:14:02', '2021-10-01 19:14:02'),
(72, 'arizona', 'Vikas', 'Kumar', 'Kansas', 'jmbliss13@gmail.com', '9557822598', 'Hello CC, this is the testing for Arizona.', '2021-10-01 19:14:36', '2021-10-01 19:14:36'),
(73, 'idaho', 'kc lee', 'combs', 'Utah', 'k@test.com', '888-888-8888', 'this is a test from members advantages chrome - krstin', '2021-10-02 01:19:47', '2021-10-02 01:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `member_advantages_reviews`
--

CREATE TABLE `member_advantages_reviews` (
  `id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `rating` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_advantages_reviews`
--

INSERT INTO `member_advantages_reviews` (`id`, `author_name`, `rating`, `date`, `content`, `image`, `state`) VALUES
(1, 'Janelle C', '5', '2020-07-21 18:30:00', 'We are so glad that our realtor goes through Acclaimed Home Warranty every time we purchase/sell a home with him. We have used them numerous times this last year and are highly considering renewing with them for the future. ', 'shutterstock_530446408-150x150.jpg', 44),
(2, 'Miriam P.', '5', '2021-07-23 04:29:49', 'Everything went fine. The provider arrived on time and reviewed his findings. I\'m grateful to know the AC unit is working well and ready for the summer. Thank you!!!', 'shutterstock_658061422-150x150.jpg', 44),
(3, 'Haydee L.', '5', '2021-07-23 04:29:49', 'I am a real estate agent and I refer all my buyers to Acclaimed home warranty. They do a great job and fast! Friendly and always there when I have needed them :)', '9533fe201a7e68f084c2a2f594a10205-150x150.jpg', 44),
(4, 'Paul S.', '5', '2021-07-23 16:00:33', 'I can’t say enough good things! The warranty was included with our home purchase and we most likely wouldn’t have chosen to buy it on our own- just because of all the costs associated with moving and buying a house, etc.', 'no_image.png', 28),
(5, 'Steve B.', '5', '2021-07-23 16:05:59', 'As a real estate agent I highly recommend Acclaimed Home Warranty. I used to use another company but after repeated instances wherein my client\'s reasonable and covered needs were not taken care of I switched to Acclaimed', 'download-150x150.jpg', 28),
(6, 'Matt W.', '5', '2021-07-23 06:06:40', 'They have the best customer service and helped me when I set up a repair outside the service contract. Really stepped it up to help me when they did not have to. Great Job!!\r\n', 'no_image.png', 43),
(7, 'Theresa S.', '5', '2021-07-23 06:18:19', 'I bought my home and within days discovered a kitchen plumbing leak. I filed a claim with Acclaimed Home Warranty. After the initial repair, it was discovered that the entire faucet needed to be replaced. ', 'stephanie-v.png', 43),
(8, 'John B.', '5', '2021-07-23 06:18:19', 'Scott and Kristin did a great job of handling our warranty claim on our air conditioning and heating systems. Kristin scheduled our annual air conditioning review with Eco-Air.', 'no_image.png', 43),
(9, 'Janelle C', '5', '2021-07-23 06:27:25', 'We are so glad that our realtor goes through Acclaimed Home Warranty every time we purchase/sell a home with him. We have used them numerous times this last year and are highly considering renewing with them for the future. ', 'shutterstock_530446408-150x150.jpg', 12),
(10, 'Miriam P.', '5', '2021-07-23 06:27:25', 'Everything went fine. The provider arrived on time...', 'shutterstock_658061422-150x150.jpg', 12),
(11, 'Haydee L.', '5', '2021-07-23 06:38:27', 'I am a real estate agent and I refer all my buyers to Acclaimed home warranty. They do a great job and fast! Friendly and always there when I have needed them :)', '9533fe201a7e68f084c2a2f594a10205-150x150.jpg', 12),
(12, 'Matt W.', '5', '2021-07-23 06:45:54', 'They have the best customer service and helped me when I set up a repair outside the service contract. Really stepped it up to help me when they did not have to. Great Job!!', 'no_image.png', 3),
(13, 'Theresa S.', '5', '2021-07-23 06:45:54', 'I bought my home and within days discovered a kitchen plumbing leak. I filed a claim with Acclaimed Home Warranty. After the initial repair, it was discovered that the entire faucet needed to be replaced. ', 'stephanie-v.png', 3),
(14, 'John B.', '5', '2021-07-23 06:46:04', 'Scott and Kristin did a great job of handling our warranty claim on our air conditioning and heating systems. Kristin scheduled our annual air conditioning review with Eco-Air.', 'no_image.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `target` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `content`, `banner_image`, `status`) VALUES
(1, 'home-warranty', 'Only Trust the Best Home Warranty Company', '<subtitle>Acclaimed Home Warranty Provides the Protection You Need\r\n</subtitle>\r\n<p>As the owner of a home, you know the worry that can come with it. While it’s nice to have a place to call all your own, there’s always the concern that something will break or need repair unexpectedly, leaving you to foot the bill. However, a home warranty plan can eliminate this worry, giving you the peace of mind of knowing your appliances and systems are covered. As one of the best home warranty companies in Arizona, Utah, Nevada, Texas, and Idaho, Acclaimed Home Warranty can help you ensure you have the protection your home needs. Please reach out to us today to learn more about our coverage options.</p>\r\n', 'assets/images/home-page-slider-01.png', 'publish'),
(2, 'member-advantages', 'MEMBER ADVANTAGES', '<p>Partnering with Acclaimed Home Warranty has many advantages. In addition to our extensive warranty coverage, our clients also benefit from the special prices we’ve negotiated for many common home services. Feel free to contact us for details about the discounted services available near you.</p>', 'assets/images/member-advantages-slider-02.png', 'publish'),
(3, 'home-warranty-faqs', 'You Can Count Acclaimed Home Warranty', '<subtitle>Acclaimed Home Warranty Answers Your Questions</subtitle>\r\n<p>As a homeowner, you want to do everything you can to protect your home. An excellent way to do so is with the purchase of a home warranty plan for your home in Arizona, Utah, Nevada, Texas, and Idaho. Acclaimed Home Warranty offers a range ofwarranty options for current homeowners, new home purchasers, home sellers, and real estate agents. We’re here to help you find the right coverage for your needs. We fully understand that you may have questions about the coverage we offer and what’s included in the plans. To help you get the answers you need, we’ve compiled a list of our most frequently asked questions and their answers. Please feel free to contact us if you have any additional questions.</p>', 'assets/images/faq-page-slider-03.png', 'publish'),
(4, 'contractors', 'ACCLAIMED CONTRACTORS', '<p>Being part of the Acclaimed Home Warranty team means making our clients feel secure in every aspect of their home. We only work with the best contractors, so if you never settle for anything less than exceptional service, we want to hear from you.</p>', 'assets/images/contractors-page-slider-04.png', 'publish'),
(5, 'about-us', 'ABOUT ACCLAIMED', '<title>OUR MISSION</title>\r\n<p>When you buy a new home, you’re making an investment in your family. We want you to purchase your home with confidence, so we provide peace of mind. If your furnace breaks down or you have a plumbing issue, you don’t have to research the companies available to fix it or how much it will cost—just call us. We’ll handle the rest.</p>\r\n<p>We only work with the best, so when we select a contractor for your issue, you’ll know you’re in good hands. And we’re available 24/7, because we never want you to stay up at night worrying about broken appliances. We want you to get back to what matters most: your family. That’s why we do what we do.</p>', 'assets/images/aboutus-page-slider-05.png', 'publish'),
(6, 'make-a-claim', 'MAKE A CLAIM', '<subtitle>For the fastest service, please call us at <a href=\"8884949460\">888-494-9460</a>during business hours.</subtitle>\r\n', 'assets/images/make-claim-page-slider-06.png', 'publish'),
(7, 'renewals', 'RENEWALS\r\n', '<title>Want to renew your policy and continue saving thousands? For those homeowners that currently have or had a policy with Acclaimed Home Warranty please review renewal options below.</title>\r\n<subtitle>If you are renewing from another company feel free to \"chat\" in, we are happy to help you move over your coverage.</subtitle>\r\n<ol>\r\n<li>You can login to your account (upper right corner) and renew there</li>\r\n<li>You can chat with us M-F 8-6 MST</li>\r\n<li>You can call into 888-494-9460 dial 4 (M-F 8-6 MST)</li>\r\n<li>You can fill out this form below and we will quickly get back with you</li>\r\n</ol>\r\n', 'assets/images/renew-page-slider-07.png', 'publish'),
(8, 'contact-us', 'CONTACT US', '<p>Have a question about our products and services? Fill out this short form and an Acclaimed Home Warranty representative will follow up on your request.</p>', 'assets/images/contact-us-page-slider-08.png', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `realstate_coverage`
--

CREATE TABLE `realstate_coverage` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `coverage_type` varchar(255) NOT NULL,
  `coverage_name` varchar(255) NOT NULL,
  `coverage_price` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `info` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realstate_coverage`
--

INSERT INTO `realstate_coverage` (`id`, `product_id`, `coverage_type`, `coverage_name`, `coverage_price`, `content`, `info`, `url`) VALUES
(1, 1, 'checkbox', 'Refrigerator', '50', '', '', ''),
(2, 1, 'number', 'Washer & Dryer', '85', '', '', ''),
(3, 1, 'number', 'Second Kitchen (does not incl fridge)', '85', '', '', ''),
(4, 1, 'number', 'Discounted Service Call', '65', '', '', ''),
(5, 1, 'number', 'Grinder Pump', '155', '', '', ''),
(6, 1, 'number', 'Swimming Pool/Spa Equipment', '175', '', '', ''),
(7, 1, 'number', 'Booster Pump', '85', '', '', ''),
(8, 1, 'checkbox', '3rd Year Coverage', '300', '', '', ''),
(9, 1, 'default', 'Additional Refrigerator/Freezer', '40', '', '', ''),
(10, 1, 'number', 'Water Softener', '50', '', '', ''),
(11, 1, 'number', 'Appliance Limits Increase (adds on $1000 coverage on built in kitchen appliances)', '85', '', '', ''),
(12, 1, 'checkbox', 'Casita', '150', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(13, 1, 'number', 'Roof Leak Repairs', '100', '', '', ''),
(14, 1, 'number', 'Salt Water Swimming Pool', '350', '', '', ''),
(15, 1, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}', ''),
(16, 1, 'checkbox', 'Extra Water Heater', '50', '', '', ''),
(17, 1, 'number', 'Enhanced External Pipe Leak Coverage', '100', '', '', ''),
(18, 1, 'checkbox', 'Premium Coverage Upgrade', '75', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(19, 1, 'number', 'Septic System/Pumping', '100', '', '', ''),
(20, 1, 'number', 'Well Pump', '100', '', '', ''),
(21, 1, 'checkbox', '2nd Year Coverage', '300', '', '', ''),
(22, 2, 'default', 'Refrigerator', '50', '', '', ''),
(23, 2, 'number', 'Washer & Dryer', '85', '', '', ''),
(24, 2, 'number', 'Second Kitchen (does not incl fridge)', '85', '', '', ''),
(25, 2, 'number', 'Discounted Service Call', '65', '', '', ''),
(26, 2, 'number', 'Grinder Pump', '155', '', '', ''),
(27, 2, 'number', 'Swimming Pool/Spa Equipment', '175', '', '', ''),
(28, 2, 'number', 'Booster Pump', '85', '', '', ''),
(29, 2, 'checkbox', '3rd Year Coverage', '400', '', '', ''),
(30, 2, 'number', 'Additional Refrigerator/Freezer', '40', '', '', ''),
(31, 2, 'number', 'Water Softener', '50', '', '', ''),
(32, 2, 'number', 'Appliance Limits Increase (adds on $1000 coverage on built in kitchen appliances)', '85', '', '', ''),
(33, 2, 'checkbox', 'Casita', '150', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(34, 2, 'number', 'Roof Leak Repairs', '100', '', '', ''),
(35, 2, 'number', 'Salt Water Swimming Pool', '350', '', '', ''),
(36, 2, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}', ''),
(37, 2, 'checkbox', 'Extra Water Heater', '50', '', '', ''),
(38, 2, 'number', 'Enhanced External Pipe Leak Coverage', '100', '', '', ''),
(39, 2, 'checkbox', 'Premium Coverage Upgrade', '75', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(40, 2, 'number', 'Septic System/Pumping', '100', '', '', ''),
(41, 2, 'number', 'Well Pump', '100', '', '', ''),
(42, 2, 'checkbox', '2nd Year Coverage', '400', '', '', ''),
(43, 3, 'default', 'Refrigerator', '50', '', '', ''),
(44, 3, 'number', 'Washer & Dryer', '85', '', '', ''),
(45, 3, 'number', 'Second Kitchen (does not incl fridge)', '85', '', '', ''),
(46, 3, 'number', 'Discounted Service Call', '65', '', '', ''),
(47, 3, 'number', 'Grinder Pump', '155', '', '', ''),
(48, 3, 'number', 'Swimming Pool/Spa Equipment', '175', '', '', ''),
(49, 3, 'number', 'Booster Pump', '85', '', '', ''),
(50, 3, 'checkbox', '3rd Year Coverage', '450', '', '', ''),
(51, 3, 'number', 'Additional Refrigerator/Freezer', '40', '', '', ''),
(52, 3, 'number', 'Water Softener', '50', '', '', ''),
(53, 3, 'number', 'Appliance Limits Increase (adds on $1000 coverage on built in kitchen appliances)', '85', '', '', ''),
(54, 3, 'checkbox', 'Casita', '150', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(55, 3, 'number', 'Roof Leak Repairs', '100', '', '', ''),
(56, 3, 'number', 'Salt Water Swimming Pool', '350', '', '', ''),
(57, 3, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}', ''),
(58, 3, 'checkbox', 'Extra Water Heater', '50', '', '', ''),
(59, 3, 'number', 'Enhanced External Pipe Leak Coverage', '100', '', '', ''),
(60, 3, 'checkbox', 'Premium Coverage Upgrade', '75', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(61, 3, 'number', 'Septic System/Pumping', '100', '', '', ''),
(62, 3, 'number', 'Well Pump', '100', '', '', ''),
(63, 3, 'checkbox', '2nd Year Coverage', '450', '', '', ''),
(64, 4, 'default', 'Refrigerator', '50', '', '', ''),
(65, 4, 'number', 'Washer & Dryer', '85', '', '', ''),
(66, 4, 'number', 'Second Kitchen (does not incl fridge)', '85', '', '', ''),
(67, 4, 'number', 'Discounted Service Call', '65', '', '', ''),
(68, 4, 'number', 'Roof Leak Repairs', '100', '', '', ''),
(69, 4, 'number', 'Salt Water Swimming Pool', '350', '', '', ''),
(70, 4, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}', ''),
(71, 4, 'number', '6001 to 7000 sq ft', '75', '', '', ''),
(72, 4, 'number', 'Additional Refrigerator/Freezer', '40', '', '', ''),
(73, 4, 'number', 'Water Softener', '50', '', '', ''),
(74, 4, 'number', 'Appliance Limits Increase (adds on $1000 coverage on built in kitchen appliances)', '85', '', '', ''),
(75, 4, 'checkbox', 'Casita', '150', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(76, 4, 'number', 'Septic System/Pumping', '100', '', '', ''),
(77, 4, 'number', 'Well Pump', '100', '', '', ''),
(78, 4, 'checkbox', '2nd Year Coverage', '500', '', '', ''),
(79, 4, 'number', '7001 to 8000 sq ft', '150', '', '', ''),
(80, 4, 'checkbox', 'Extra Water Heater', '50', '', '', ''),
(81, 4, 'number', 'Enhanced External Pipe Leak Coverage', '100', '', '', ''),
(82, 4, 'checkbox', 'Premium Coverage Upgrade', '75', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(83, 4, 'number', 'Grinder Pump', '155', '', '', ''),
(84, 4, 'number', 'Swimming Pool/Spa Equipment', '175', '', '', ''),
(85, 4, 'number', 'Booster Pump', '85', '', '', ''),
(86, 4, 'checkbox', '3rd Year Coverage', '500', '', '', ''),
(87, 4, 'number', 'Over 8000 sq ft', '225', '', '', ''),
(88, 5, 'checkbox', 'Refrigerator', '50', '', '', ''),
(89, 5, 'number', 'Water Softener', '50', '', '', ''),
(90, 5, 'number', 'Premium Plus Upgrade (includes premium upgrade/fridge)', '65', '', '', ''),
(91, 5, 'number', 'Ultimate Upgrade (includes premium upgrade/fridge/no fault/washer & dryer)', '165', '', '', ''),
(92, 5, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}', ''),
(93, 5, 'number', 'Discounted Service Call', '65', '', '', ''),
(94, 5, 'checkbox', 'Premium Coverage Upgrade', '75', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(95, 5, 'number', 'Washer & Dryer', '85', '', '', ''),
(96, 5, 'number', 'Premium + One Upgrade (includes premium upgrade/fridge/no fault)', '115', '', '', ''),
(97, 6, 'default', 'Additional Refrigerator/Freezer', '80', '', '', ''),
(98, 6, 'number', 'Water Softener', '100', '', '', ''),
(99, 6, 'number', 'Appliance Limits Increase (adds on $1000 coverage on built in kitchen appliances)', '170', '', '', ''),
(100, 6, 'checkbox', 'Casita', '300', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(101, 6, 'number', 'Septic System/Pumping', '200', '', '', ''),
(102, 6, 'number', 'Well Pump', '200', '', '', ''),
(103, 6, 'chekbox', 'Extra Water Heater', '100', '', '', ''),
(104, 6, 'number', 'Enhanced External Pipe Leak Coverage', '200', '', '', ''),
(105, 6, 'chekbox', 'Premium Coverage Upgrade', '150', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(106, 6, 'number', 'Grinder Pump', '310', '', '', ''),
(107, 6, 'number', 'Swimming Pool/Spa Equipment', '350', '', '', ''),
(108, 6, 'number', 'Booster Pump', '170', '', '', ''),
(109, 6, 'number', 'Washer & Dryer', '170', '', '', ''),
(110, 6, 'number', 'Second Kitchen (does not incl fridge)', '170', '', '', ''),
(111, 6, 'number', 'Discounted Service Call', '100', '', '', ''),
(112, 6, 'number', 'Roof Leak Repairs', '200', '', '', ''),
(113, 6, 'number', 'Salt Water Swimming Pool', '700', '', '', ''),
(114, 6, 'number', 'No-Fault Coverage', '120', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}', ''),
(115, 7, 'default', 'Additional Refrigerator/Freezer', '120', '', '', ''),
(116, 7, 'number', 'Water Softener', '150', '', '', ''),
(117, 7, 'number', 'Appliance Limits Increase (adds on $1000 coverage on built in kitchen appliances)', '255', '', '', ''),
(118, 7, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(119, 7, 'number', 'Septic System/Pumping', '300', '', '', ''),
(120, 7, 'number', 'Well Pump', '300', '', '', ''),
(121, 7, 'checkbox', 'Extra Water Heater', '150', '', '', ''),
(122, 7, 'number', 'Enhanced External Pipe Leak Coverage', '300', '', '', ''),
(123, 7, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(124, 7, 'number', 'Grinder Pump', '465', '', '', ''),
(125, 7, 'number', 'Swimming Pool/Spa Equipment', '525', '', '', ''),
(126, 7, 'number', 'Booster Pump', '255', '', '', ''),
(127, 7, 'number', 'Washer & Dryer', '255', '', '', ''),
(128, 7, 'number', 'Second Kitchen (does not incl fridge)', '255', '', '', ''),
(129, 7, 'number', 'Discounted Service Call', '150', '', '', ''),
(130, 7, 'number', 'Roof Leak Repairs', '300', '', '', ''),
(131, 7, 'number', 'Salt Water Swimming Pool', '1050', '', '', ''),
(132, 7, 'number', 'No-Fault Coverage', '180', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}', ''),
(133, 8, 'default', 'Additional Refrigerator/Freezer', '160', '', '', ''),
(134, 8, 'number', 'Water Softener', '200', '', '', ''),
(135, 8, 'number', 'Appliance Limits Increase (adds on $1000 coverage on built in kitchen appliances)', '340', '', '', ''),
(136, 8, 'checkbox', 'Casita', '600', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(137, 8, 'number', 'Septic System/Pumping', '400', '', '', ''),
(138, 8, 'number', 'Well Pump', '400', '', '', ''),
(139, 8, 'checkbox', 'Extra Water Heater', '200', '', '', ''),
(140, 8, 'number', 'Enhanced External Pipe Leak Coverage', '400', '', '', ''),
(141, 8, 'checkbox', 'Premium Coverage Upgrade', '300', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(142, 8, 'number', 'Grinder Pump', '620', '', '', ''),
(143, 8, 'number', 'Swimming Pool/Spa Equipment', '700', '', '', ''),
(144, 8, 'number', 'Booster Pump', '340', '', '', ''),
(145, 8, 'number', 'Washer & Dryer', '340', '', '', ''),
(146, 8, 'number', 'Second Kitchen (does not incl fridge)', '340', '', '', ''),
(147, 8, 'number', 'Discounted Service Call', '200', '', '', ''),
(148, 8, 'number', 'Roof Leak Repairs', '400', '', '', ''),
(149, 8, 'number', 'Salt Water Swimming Pool', '1400', '', '', ''),
(150, 8, 'number', 'No-Fault Coverage', '240', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '', ''),
(151, 9, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(152, 9, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '50', '', '', ''),
(153, 9, 'number', 'Prof. Series Appliances - Kitchen', '100', '', '', ''),
(154, 9, 'number', 'Washer / Dryer', '95', '', '', ''),
(155, 9, 'number', 'Water Softener', '75', '', '', ''),
(156, 9, 'number', 'Casita / Guest House', '195', '', '', ''),
(157, 9, 'number', 'Second Kitchen', '100', '', '', ''),
(158, 9, 'number', 'Pool / Hot Tub - Chlorine', '225', '', '', ''),
(159, 9, 'number', 'Pool / Hot Tub - Salt Water\r\n', '350', '', '', ''),
(160, 9, 'number', 'Water Heater (Additional)', '50', '', '', ''),
(161, 9, 'number', 'External Pipe leak', '85', '', '', ''),
(162, 9, 'number', 'Booster Pump - House', '75', '', '', '');
INSERT INTO `realstate_coverage` (`id`, `product_id`, `coverage_type`, `coverage_name`, `coverage_price`, `content`, `info`, `url`) VALUES
(163, 9, 'number', 'Grinder Pump', '155', '', '', ''),
(164, 9, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '100', '', '', ''),
(165, 9, 'number', 'Well Pump', '100', '', '', ''),
(166, 9, 'number', 'Discount Pre Paid Service Fee', '65', '', '', ''),
(167, 9, 'number', 'Sq Footage 6001-7000', '75', '', '', ''),
(168, 9, 'number', 'Sq Footage 7001-8000', '150', '', '', ''),
(169, 9, 'number', 'Sq Footage 8001 and above', '250', '', '', ''),
(170, 10, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(171, 10, 'default', 'Additional Fridge or Freestanding Fridge/Freezer', '50', '', '', ''),
(172, 10, 'number', 'Prof. Series Appliances - Kitchen', '100', '', '', ''),
(173, 10, 'number', 'Washer / Dryer', '95', '', '', ''),
(174, 10, 'number', 'Water Softener', '75', '', '', ''),
(175, 10, 'number', 'Casita / Guest House', '195', '', '', ''),
(176, 10, 'number', 'Second Kitchen', '100', '', '', ''),
(177, 10, 'number', 'Pool / Hot Tub - Chlorine', '225', '', '', ''),
(178, 10, 'number', 'Pool / Hot Tub - Salt Water\r\n', '350', '', '', ''),
(179, 10, 'number', 'Water Heater (Additional)', '50', '', '', ''),
(180, 10, 'number', 'External Pipe leak', '85', '', '', ''),
(181, 10, 'number', 'Booster Pump - House', '75', '', '', ''),
(182, 10, 'number', 'Grinder Pump', '155', '', '', ''),
(183, 10, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '100', '', '', ''),
(184, 10, 'number', 'Well Pump', '100', '', '', ''),
(185, 10, 'number', 'Discount Pre Paid Service Fee', '65', '', '', ''),
(186, 10, 'number', 'Sq Footage 6001-7000', '75', '', '', ''),
(187, 10, 'number', 'Sq Footage 7001-8000', '150', '', '', ''),
(188, 10, 'number', 'Sq Footage 8001 and above', '250', '', '', ''),
(189, 11, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(190, 11, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '50', '', '', ''),
(191, 11, 'number', 'Prof. Series Appliances - Kitchen', '100', '', '', ''),
(192, 11, 'number', 'Washer / Dryer', '95', '', '', ''),
(193, 11, 'number', 'Water Softener', '75', '', '', ''),
(194, 11, 'number', 'Casita / Guest House', '195', '', '', ''),
(195, 11, 'number', 'Second Kitchen', '100', '', '', ''),
(196, 11, 'number', 'Pool / Hot Tub - Chlorine', '225', '', '', ''),
(197, 11, 'number', 'Pool / Hot Tub - Salt Water', '350', '', '', ''),
(198, 11, 'number', 'Water Heater (Additional)', '50', '', '', ''),
(199, 11, 'number', 'External Pipe leak', '85', '', '', ''),
(200, 11, 'number', 'Booster Pump - House', '75', '', '', ''),
(201, 11, 'number', 'Grinder Pump', '155', '', '', ''),
(202, 11, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '100', '', '', ''),
(203, 11, 'number', 'Well Pump', '100', '', '', ''),
(204, 11, 'number', 'Discount Pre Paid Service Fee', '65', '', '', ''),
(205, 11, 'number', 'Sq Footage 6001-7000', '75', '', '', ''),
(206, 11, 'number', 'Sq Footage 7001-8000', '150', '', '', ''),
(207, 11, 'number', 'Sq Footage 8001 and above\r\n', '250', '', '', ''),
(208, 12, 'checkbox', '2nd Year Coverage', '450', '', '', ''),
(209, 12, 'checkbox', '3rd Year Coverage', '450', '', '', ''),
(210, 12, 'number', 'Water Softener', '75', '', '', ''),
(211, 12, 'number', 'Discount Prepaid Service Fee', '65', '', '', ''),
(212, 57, 'checkbox', '2nd Year Coverage', '525', '', '', ''),
(213, 57, 'checkbox', '3rd Year Coverage', '525', '', '', ''),
(214, 58, 'checkbox', '2nd Year Coverage', '610', '', '', ''),
(215, 58, 'checkbox', '3rd Year Coverage', '610', '', '', ''),
(216, 13, 'checkbox', '2nd Year Coverage', '795', '', '', ''),
(217, 13, 'checkbox', '3rd Year Coverage', '795', '', '', ''),
(218, 13, 'number', 'Water Softener', '75', '', '', ''),
(219, 13, 'number', 'Discount Pre Paid Service Fee', '60', '', '', ''),
(220, 13, 'number', 'Grinder Pump', '155', '', '', ''),
(221, 13, 'number', 'External Pipe Leak', '100', '', '', ''),
(222, 59, 'checkbox', '2nd Year Coverage', '995', '', '', ''),
(223, 59, 'checkbox', '3rd Year Coverage', '995', '', '', ''),
(224, 60, 'checkbox', '2nd Year Coverage', '1195', '', '', ''),
(225, 60, 'checkbox', '3rd Year Coverage', '1195', '', '', ''),
(226, 14, 'checkbox', '2nd Year Coverage', '895', '', '', ''),
(227, 14, 'checkbox', '3rd Year Coverage', '895', '', '', ''),
(228, 14, 'number', 'Water Softener', '75', '', '', ''),
(229, 14, 'number', 'Discount Pre Paid Service Fee', '60', '', '', ''),
(230, 14, 'number', 'Grinder Pump', '155', '', '', ''),
(231, 14, 'number', 'External Pipe Leak', '100', '', '', ''),
(232, 61, 'checkbox', '2nd Year Coverage', '1095', '', '', ''),
(233, 61, 'checkbox', '3rd Year Coverage', '1095', '', '', ''),
(234, 62, 'checkbox', '2nd Year Coverage', '1295', '', '', ''),
(235, 62, 'checkbox', '3rd Year Coverage', '1295', '', '', ''),
(236, 15, 'number', 'Water Softener', '75', '', '', ''),
(237, 15, 'number', 'Discount Pre Paid Service Fee', '60', '', '', ''),
(238, 15, 'number', 'Grinder Pump', '155', '', '', ''),
(239, 15, 'number', 'External Pipe Leak', '100', '', '', ''),
(240, 15, 'checkbox', '2nd Year Coverage', '1095', '', '', ''),
(241, 15, 'checkbox', '3rd Year Coverage', '1095', '', '', ''),
(242, 63, 'checkbox', '2nd Year Coverage', '1195', '', '', ''),
(243, 63, 'checkbox', '3rd Year Coverage', '1195', '', '', ''),
(244, 64, 'checkbox', '2nd Year Coverage', '1395', '', '', ''),
(245, 64, 'checkbox', '3rd Year Coverage', '1395', '', '', ''),
(246, 57, 'number', 'Water Softener', '75', '', '', ''),
(247, 57, 'number', 'Discount Prepaid Service Fee', '65', '', '', ''),
(248, 58, 'number', 'Water Softener', '75', '', '', ''),
(249, 58, 'number', 'Discount Prepaid Service Fee', '65', '', '', ''),
(250, 9, 'checkbox', '2nd Year Coverage', '475', '', '', ''),
(251, 9, 'checkbox', '3rd Year Coverage', '475', '', '', ''),
(252, 10, 'checkbox', '2nd Year Coverage', '550', '', '', ''),
(253, 10, 'checkbox', '3rd Year Coverage', '550', '', '', ''),
(254, 11, 'checkbox', '2nd Year Coverage', '635', '', '', ''),
(255, 11, 'checkbox', '3rd Year Coverage', '635', '', '', ''),
(256, 0, 'number', 'No-Fault Coverage', '180', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p>\"}', ''),
(257, 0, 'number', 'Washer/Dryer', '255', '', '', ''),
(258, 0, 'number', 'Septic System/Pumping', '300', '', '', ''),
(259, 0, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(260, 0, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(261, 0, 'number', 'Freezer', '200', '', '', ''),
(262, 0, 'number', 'Furnace/Heating System', '340', '', '', ''),
(263, 0, 'number', 'Roof Leak Repair', '400', '', '', ''),
(264, 0, 'number', 'Well Pump', '400', '', '', ''),
(265, 0, 'number', 'Booster Pump', '340', '', '', ''),
(266, 0, 'number', 'Swimming Pool/Hot Tub', '700', '', '', ''),
(267, 0, 'number', 'Discounted Service Call', '240', '', '', ''),
(268, 0, 'default', 'Additional Refrigerator/Freezer', '160', '', '', ''),
(269, 0, 'number', 'Enhanced Pipe Coverage', '400', '', '', ''),
(270, 0, 'number', 'Water Softener', '240', '', '', ''),
(271, 0, 'number', 'Grinder Pump', '620', '', '', ''),
(272, 0, 'number', 'Swimming Pool/Hot Tub Salt', '1100', '', '', ''),
(273, 0, 'checkbox', 'Extra Water Heater', '200', '', '', ''),
(274, 0, 'number', 'Additional Air Conditioner/Cooler', '340', '', '', ''),
(275, 0, 'number', 'No-Fault Coverage', '240', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p>\"}', ''),
(276, 0, 'number', 'Washer/Dryer', '340', '', '', ''),
(277, 0, 'number', 'Septic System/Pumping', '400', '', '', ''),
(278, 0, 'checkbox', 'Casita', '600', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(279, 0, 'checkbox', 'Premium Coverage Upgrade', '300', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(280, 16, 'checkbox', 'Refrigerator', '50', '', '', ''),
(281, 16, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p>\"}', ''),
(282, 16, 'number', 'Washer/Dryer', '85', '', '', ''),
(283, 16, 'number', 'Grinder Pump', '155', '', '', ''),
(284, 16, 'number', 'Septic System/Pumping', '75', '', '', ''),
(285, 16, 'checkbox', 'Casita', '150', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(286, 16, 'checkbox', 'Premium Coverage Upgrade', '75', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(287, 16, 'default', 'Additional Refrigerator/Freezer', '40', '', '', ''),
(288, 16, 'number', 'Roof Leak Repair', '100', '', '', ''),
(289, 16, 'number', 'Well Pump', '100', '', '', ''),
(290, 16, 'number', 'Swimming Pool/Hot Tub', '175', '', '', ''),
(291, 16, 'number', 'Discounted Service Call', '55', '', '', ''),
(292, 16, 'checkbox', '2nd Year Coverage', '350', '', '', ''),
(293, 16, 'number', 'Enhanced Pipe Coverage', '100', '', '', ''),
(294, 16, 'number', 'Water Softener', '60', '', '', ''),
(295, 16, 'number', 'Booster Pump', '85', '', '', ''),
(296, 16, 'number', 'Swimming Pool/Hot Tub Salt', '325', '', '', ''),
(297, 16, 'checkbox', 'Extra Water Heater', '50', '', '', ''),
(298, 16, 'checkbox', '3rd Year Coverage', '350', '', '', ''),
(299, 17, 'default', 'Refrigerator', '50', '', '', ''),
(300, 17, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p>\"}', ''),
(301, 17, 'number', 'Washer/Dryer', '85', '', '', ''),
(302, 17, 'number', 'Grinder Pump', '155', '', '', ''),
(303, 17, 'number', 'Septic System/Pumping', '75', '', '', ''),
(304, 17, 'checkbox', 'Casita', '150', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '{\"title\":\"Casita\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: Building separate from main\r\nfoundation. Covered items: Plumbing,\r\nElectrical, Appliances, Garage. Not\r\nCovered: Fridge, HVAC. All covered\r\nitems as per contract terms.</p>\"}', ''),
(305, 17, 'checkbox', 'Premium Coverage Upgrade', '75', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(306, 17, 'number', 'Additional Refrigerator/Freezer', '40', '', '', ''),
(307, 17, 'number', 'Roof Leak Repair', '100', '', '', ''),
(308, 17, 'number', 'Well Pump', '100', '', '', ''),
(309, 17, 'number', 'Swimming Pool/Hot Tub', '175', '', '', ''),
(310, 17, 'number', 'Discounted Service Call', '55', '', '', ''),
(311, 17, 'checkbox', '2nd Year Coverage', '550', '', '', ''),
(312, 17, 'number', 'Enhanced Pipe Coverage', '100', '', '', ''),
(313, 17, 'number', 'Water Softener', '60', '', '', ''),
(314, 17, 'number', 'Booster Pump', '85', '', '', ''),
(315, 17, 'number', 'Swimming Pool/Hot Tub Salt', '325', '', '', ''),
(316, 17, 'checkbox', 'Extra Water Heater', '50', '', '', ''),
(317, 17, 'checkbox', '3rd Year Coverage', '550', '', '', ''),
(318, 18, 'checkbox', 'Refrigerator', '50', '', '', ''),
(319, 18, 'number', 'Discounted Service Call', '55', '', '', ''),
(320, 18, 'number', 'No-Fault Coverage', '60', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p>\"}', ''),
(321, 18, 'checkbox', 'Premium Coverage Upgrade', '150', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(322, 18, 'number', 'Water Softener', '60', '', '', ''),
(323, 18, 'number', 'Ultimate Upgrade (includes premium upgrade/fridge/no fault/washer & dryer)', '250', '', '', ''),
(324, 19, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '65', '', '', ''),
(325, 19, 'number', 'Booster Pump - House', '75', '{\"title\":\"Booster Pump - House\",\"full_content\":\"<p>Covered: This coverage option covers a well pump or booster pump utilized for the main dwelling only. Limits $1000.</p>\"}', '', ''),
(326, 19, 'number', 'Casita House', '195', '{\"title\":\"Casita House\",\"full_content\":\"<p>Covered: standard coverage: appliances, plumbing, hvac, electrical, garage systems. fridge not incl.</p>\"}', '', ''),
(327, 19, 'number', 'Discount Pre Paid Service Fee', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '', ''),
(328, 19, 'number', 'Enhanced/External Pipe leak', '85', '{\"title\":\"Enhanced/External Pipe leak\",\"full_content\":\"<p>Covered: This coverage option provides coverage for external pipe leaks that are concrete encased or underground pipe leaks located outside the foundation of the covered structure, including water, gas, swere and drain lines that service the main home or other structure covered under this Contract. Limits $1000.</p>\"}', '', ''),
(329, 19, 'number', 'Fireplace Coverage', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '', ''),
(330, 19, 'number', 'Grinder Pump', '155', '{\"title\":\"Grinder Pump\",\"full_content\":\"<p>Covered: This coverage option covers a sewage grinder pump (up to 2 HP) utilized for the main dwelling only. Limit $1000.</p>\"}', '', ''),
(331, 19, 'number', 'Heating & A/C Zone System', '150', '{\"title\":\"Heating & A/C Zone System\",\"full_content\":\"<p>Covered: Dampers – Damper Controls – Related Electrical – thermostats (replaced with builder standard when necessary)  – Zone Panel – Zone Valve. Limit $500.</p>\"}', '', ''),
(332, 19, 'number', 'Outdoor Kitchen', '175', '{\"title\":\"Outdoor Kitchen\",\"full_content\":\"<p>Covered: mini refrigerator-wine refrigerator- and freezer (not to exceed six cubic feet) built in cooktop/Barbeque-garbage disposal Includes above ground plumbing and electrical that serve outdoor kitchen only. Above ground piping for water and gas, outlets, and ceiling fans. Faucet replaced with chrome builder standard. iLmit $1500.</p>\"}', '', ''),
(333, 19, 'number', 'Prof. Series Appliances - Kit.', '125', '{\"title\":\"Prof. Series Appliances - Kit.\",\"full_content\":\"<p>Covered: increases appliance limits (section F6) by an additional $1,000 in the aggregate, including refrigerator in main kitchen.</p>\"}', '', ''),
(334, 19, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(335, 19, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '85', '{\"title\":\"Septic System, Pumping & Sewage Ejector Pump\",\"full_content\":\"<p>Covered: aerobic pump - jet pump - sewer ejector pump - septic tank and line from house to tank.  If a stoppage occurs due to a septic tank back up, AHW will pump the septic tank one time during the contract term. Limit $500.</p>\"}', '', ''),
(336, 19, 'number', 'Sq Footage 5001-6000', '75', '', '', ''),
(337, 19, 'number', 'Sq Footage 6001-7000', '150', '', '', ''),
(338, 19, 'number', 'Sq Footage 7001-8000', '225', '', '', ''),
(339, 19, 'number', 'Sq Footage 8001 and above', '300', '', '', ''),
(340, 19, 'number', 'Swimming Pool/Hot Tub Chlorine', '225', '{\"title\":\"Swimming Pool/Hot Tub Chlorine\",\"full_content\":\"<p>Covered: This coverage option provides coverage for the above ground components and parts of the heating, pumping, and filtrations system as follows: timers - heater - motor - filter - gaskets - blower - pump - filter timer - pool sweep motor and pump - above ground and accessible plumbing and electrical. Note: Both pool and spa equipment (exterior hot tub and whirlpool) are covered if they utilize common equipment. If they do not utilize common equipment, then only one or the other is covered unless an additional coverage fee is paid. Limit $1000.</p>\"}', '', ''),
(341, 19, 'number', 'Swimming Pool/Hot Tub Salt', '295', '{\"title\":\"Swimming Pool/Hot Tub Salt\",\"full_content\":\"<p>Covered: all components listed as covered items in section 9 including salt water control unit - salt cell - flow sensor for the salt water chlorinator. Limit $2000.</p>\"}', '', ''),
(342, 19, 'number', 'Washer / Dryer', '95', '', '', ''),
(343, 19, 'number', 'Water Softener', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '', ''),
(344, 19, 'number', 'Well Pump', '75', '{\"title\":\"Well Pump\",\"full_content\":\"<p>Covered: This coverage option covers a well pump utilized for the main dwelling only. Limit $1500.</p>\"}', '', ''),
(346, 19, 'number', 'Wine Cooler/ Mini Fridges (per unit)', '55', '{\"title\":\"Wine Cooler/Mini Fridges(per unit)\",\"full_content\":\"<p>Covered: All mechanical parts and components that affect the operation of the cooling system are covered, except for items listed as “Not Covered” herein. Limits $150.</p>\"}', '', ''),
(347, 20, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '65', '', '', ''),
(348, 20, 'number', 'Booster Pump - House', '75', '{\"title\":\"Booster Pump - House\",\"full_content\":\"<p>Covered: This coverage option covers a well pump or booster pump utilized for the main dwelling only. Limits $1000.</p>\"}', '', ''),
(349, 20, 'number', 'Casita House', '195', '{\"title\":\"Casita House\",\"full_content\":\"<p>Covered: standard coverage: appliances, plumbing, hvac, electrical, garage systems. fridge not incl.</p>\"}', '', ''),
(350, 20, 'number', 'Discount Pre Paid Service Fee', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '', ''),
(351, 20, 'number', 'Enhanced/External Pipe leak', '85', '{\"title\":\"Enhanced/External Pipe leak\",\"full_content\":\"<p>Covered: This coverage option provides coverage for external pipe leaks that are concrete encased or underground pipe leaks located outside the foundation of the covered structure, including water, gas, swere and drain lines that service the main home or other structure covered under this Contract. Limits $1000.</p>\"}', '', ''),
(352, 20, 'number', 'Fireplace Coverage', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '', ''),
(353, 20, 'number', 'Grinder Pump', '155', '{\"title\":\"Grinder Pump\",\"full_content\":\"<p>Covered: This coverage option covers a sewage grinder pump (up to 2 HP) utilized for the main dwelling only. Limit $1000.</p>\"}', '', ''),
(354, 20, 'number', 'Heating & A/C Zone System', '150', '{\"title\":\"Heating & A/C Zone System\",\"full_content\":\"<p>Covered: Dampers – Damper Controls – Related Electrical – thermostats (replaced with builder standard when necessary)  – Zone Panel – Zone Valve. Limit $500.</p>\"}', '', ''),
(355, 20, 'number', 'Outdoor Kitchen', '175', '{\"title\":\"Outdoor Kitchen\",\"full_content\":\"<p>Covered: mini refrigerator-wine refrigerator- and freezer (not to exceed six cubic feet) built in cooktop/Barbeque-garbage disposal Includes above ground plumbing and electrical that serve outdoor kitchen only. Above ground piping for water and gas, outlets, and ceiling fans. Faucet replaced with chrome builder standard. iLmit $1500.</p>\"}', '', ''),
(356, 20, 'number', 'Prof. Series Appliances - Kit.', '125', '{\"title\":\"Prof. Series Appliances - Kit.\",\"full_content\":\"<p>Covered: increases appliance limits (section F6) by an additional $1,000 in the aggregate, including refrigerator in main kitchen.</p>\"}', '', ''),
(357, 20, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(358, 20, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '85', '{\"title\":\"Septic System, Pumping & Sewage Ejector Pump\",\"full_content\":\"<p>Covered: aerobic pump - jet pump - sewer ejector pump - septic tank and line from house to tank.  If a stoppage occurs due to a septic tank back up, AHW will pump the septic tank one time during the contract term. Limit $500.</p>\"}', '', ''),
(359, 20, 'number', 'Sq Footage 5001-6000', '75', '', '', ''),
(360, 20, 'number', 'Sq Footage 6001-7000', '150', '', '', ''),
(361, 20, 'number', 'Sq Footage 7001-8000', '225', '', '', ''),
(362, 20, 'number', 'Sq Footage 7001-8000', '300', '', '', ''),
(363, 20, 'number', 'Swimming Pool/Hot Tub Chlorine', '225', '{\"title\":\"Swimming Pool/Hot Tub Chlorine\",\"full_content\":\"<p>Covered: This coverage option provides coverage for the above ground components and parts of the heating, pumping, and filtrations system as follows: timers - heater - motor - filter - gaskets - blower - pump - filter timer - pool sweep motor and pump - above ground and accessible plumbing and electrical. Note: Both pool and spa equipment (exterior hot tub and whirlpool) are covered if they utilize common equipment. If they do not utilize common equipment, then only one or the other is covered unless an additional coverage fee is paid. Limit $1000.</p>\"}', '', ''),
(364, 20, 'number', 'Swimming Pool/Hot Tub Salt', '295', '{\"title\":\"Swimming Pool/Hot Tub Salt\",\"full_content\":\"<p>Covered: all components listed as covered items in section 9 including salt water control unit - salt cell - flow sensor for the salt water chlorinator. Limit $2000.</p>\"}', '', ''),
(365, 20, 'number', 'Washer / Dryer', '95', '', '', ''),
(366, 20, 'number', 'Water Softener', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '', ''),
(368, 20, 'number', 'Well Pump', '75', '{\"title\":\"Well Pump\",\"full_content\":\"<p>Covered: This coverage option covers a well pump utilized for the main dwelling only. Limit $1500.</p>\"}', '', ''),
(369, 20, 'number', 'Wine Cooler/ Mini Fridges (per unit)', '55', '{\"title\":\"Wine Cooler/Mini Fridges(per unit)\",\"full_content\":\"<p>Covered: All mechanical parts and components that affect the operation of the cooling system are covered, except for items listed as “Not Covered” herein. Limits $150.</p>\"}', '', ''),
(370, 21, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '65', '', '', ''),
(371, 21, 'number', 'Booster Pump - House', '75', '{\"title\":\"Booster Pump - House\",\"full_content\":\"<p>Covered: This coverage option covers a well pump or booster pump utilized for the main dwelling only. Limits $1000.</p>\"}', '', ''),
(372, 21, 'number', 'Casita House', '195', '{\"title\":\"Casita House\",\"full_content\":\"<p>Covered: standard coverage: appliances, plumbing, hvac, electrical, garage systems. fridge not incl.</p>\"}', '', ''),
(373, 21, 'number', 'Discount Pre Paid Service Fee', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '', ''),
(374, 21, 'number', 'Enhanced/External Pipe leak', '85', '{\"title\":\"Enhanced/External Pipe leak\",\"full_content\":\"<p>Covered: This coverage option provides coverage for external pipe leaks that are concrete encased or underground pipe leaks located outside the foundation of the covered structure, including water, gas, swere and drain lines that service the main home or other structure covered under this Contract. Limits $1000.</p>\"}', '', ''),
(375, 21, 'number', 'Fireplace Coverage', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '', ''),
(376, 21, 'number', 'Grinder Pump', '155', '{\"title\":\"Grinder Pump\",\"full_content\":\"<p>Covered: This coverage option covers a sewage grinder pump (up to 2 HP) utilized for the main dwelling only. Limit $1000.</p>\"}', '', ''),
(377, 21, 'number', 'Heating & A/C Zone System', '150', '{\"title\":\"Heating & A/C Zone System\",\"full_content\":\"<p>Covered: Dampers – Damper Controls – Related Electrical – thermostats (replaced with builder standard when necessary)  – Zone Panel – Zone Valve. Limit $500.</p>\"}', '', ''),
(378, 21, 'number', 'Outdoor Kitchen', '175', '{\"title\":\"Outdoor Kitchen\",\"full_content\":\"<p>Covered: mini refrigerator-wine refrigerator- and freezer (not to exceed six cubic feet) built in cooktop/Barbeque-garbage disposal Includes above ground plumbing and electrical that serve outdoor kitchen only. Above ground piping for water and gas, outlets, and ceiling fans. Faucet replaced with chrome builder standard. iLmit $1500.</p>\"}', '', ''),
(379, 21, 'number', 'Prof. Series Appliances - Kit.', '125', '{\"title\":\"Prof. Series Appliances - Kit.\",\"full_content\":\"<p>Covered: increases appliance limits (section F6) by an additional $1,000 in the aggregate, including refrigerator in main kitchen.</p>\"}', '', ''),
(380, 21, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(381, 21, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '85', '{\"title\":\"Septic System, Pumping & Sewage Ejector Pump\",\"full_content\":\"<p>Covered: aerobic pump - jet pump - sewer ejector pump - septic tank and line from house to tank.  If a stoppage occurs due to a septic tank back up, AHW will pump the septic tank one time during the contract term. Limit $500.</p>\"}', '', ''),
(382, 21, 'number', 'Sq Footage 5001-6000', '75', '', '', ''),
(383, 21, 'number', 'Sq Footage 6001-7000', '150', '', '', ''),
(384, 21, 'number', 'Sq Footage 7001-8000', '225', '', '', ''),
(385, 21, 'number', 'Sq Footage 8001 and above', '300', '', '', ''),
(386, 21, 'number', 'Swimming Pool/Hot Tub Chlorine', '225', '{\"title\":\"Swimming Pool/Hot Tub Chlorine\",\"full_content\":\"<p>Covered: This coverage option provides coverage for the above ground components and parts of the heating, pumping, and filtrations system as follows: timers - heater - motor - filter - gaskets - blower - pump - filter timer - pool sweep motor and pump - above ground and accessible plumbing and electrical. Note: Both pool and spa equipment (exterior hot tub and whirlpool) are covered if they utilize common equipment. If they do not utilize common equipment, then only one or the other is covered unless an additional coverage fee is paid. Limit $1000.</p>\"}', '', ''),
(387, 21, 'number', 'Swimming Pool/Hot Tub Salt', '295', '{\"title\":\"Swimming Pool/Hot Tub Salt\",\"full_content\":\"<p>Covered: all components listed as covered items in section 9 including salt water control unit - salt cell - flow sensor for the salt water chlorinator. Limit $2000.</p>\"}', '', ''),
(388, 21, 'number', 'Washer / Dryer', '95', '', '', '');
INSERT INTO `realstate_coverage` (`id`, `product_id`, `coverage_type`, `coverage_name`, `coverage_price`, `content`, `info`, `url`) VALUES
(390, 22, 'checkbox', '2nd Year Coverage', '675', '', '', ''),
(391, 22, 'checkbox', '3rd Year Coverage', '675', '', '', ''),
(392, 22, 'number', 'Water Softener', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '', ''),
(393, 22, 'number', 'Discount Pre Paid Service Fee', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '', ''),
(394, 22, 'number', 'Grinder Pump', '155', '{\"title\":\"Grinder Pump\",\"full_content\":\"<p>Covered: This coverage option covers a sewage grinder pump (up to 2 HP) utilized for the main dwelling only. Limit $1000.</p>\"}', '', ''),
(395, 22, 'number', 'External Pipe Leak', '85', '{\"title\":\"External Pipe leak\",\"full_content\":\"<p>Covered: This coverage option provides coverage for external pipe leaks that are concrete encased or underground pipe leaks located outside the foundation of the covered structure, including water, gas, swere and drain lines that service the main home or other structure covered under this Contract. Limits $1000.</p>\"}', '', ''),
(396, 23, 'checkbox', '2nd Year Coverage', '875', '', '', ''),
(397, 23, 'checkbox', '3rd Year Coverage', '875', '', '', ''),
(398, 24, 'checkbox', '2nd Year Coverage', '1075', '', '', ''),
(399, 24, 'checkbox', '3rd Year Coverage', '1075', '', '', ''),
(400, 25, 'number', 'Water Softener', '65', '', '', ''),
(401, 25, 'number', 'Discount Pre Paid Service Fee', '55', '', '', ''),
(402, 25, 'checkbox', '2nd Year Coverage', '935', '', '', ''),
(403, 25, 'checkbox', '3rd Year Coverage', '935', '', '', ''),
(404, 25, 'number', 'Grinder Pump', '155', '', '', ''),
(405, 25, 'number', 'External Pipe Leak', '85', '', '', ''),
(406, 26, 'checkbox', '2nd Year Coverage', '1035', '', '', ''),
(407, 26, 'checkbox', '3rd Year Coverage', '1035', '', '', ''),
(408, 27, 'checkbox', '2nd Year Coverage', '1235', '', '', ''),
(409, 27, 'checkbox', '3rd Year Coverage', '1235', '', '', ''),
(410, 28, 'checkbox', '2nd Year Coverage', '1195', '', '', ''),
(411, 28, 'checkbox', '3rd Year Coverage', '1195', '', '', ''),
(412, 28, 'number', 'Water Softener', '65', '', '', ''),
(413, 28, 'number', 'Discount Pre Paid Service Fee', '65', '', '', ''),
(414, 28, 'number', 'Grinder Pump', '155', '', '', ''),
(415, 28, 'number', 'External Pipe Leak', '85', '', '', ''),
(416, 29, 'checkbox', '2nd Year Coverage', '1395', '', '', ''),
(417, 29, 'checkbox', '3rd Year Coverage', '1395', '', '', ''),
(418, 30, 'checkbox', '2nd Year Coverage', '1595', '', '', ''),
(419, 30, 'checkbox', '3rd Year Coverage', '1595', '', '', ''),
(420, 0, 'number', 'Booster Pump - House', '150', '', '', ''),
(421, 0, 'checkbox', 'Casita', '300', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(422, 0, 'checkbox', 'Premium Coverage Upgrade', '150', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(423, 0, 'number', 'Roof Leak', '170', '', '', ''),
(424, 0, 'number', 'Additional Refrigerator', '110', '', '', ''),
(425, 0, 'number', 'Additional Kit. Appliance (ea.)', '90', '', '', ''),
(426, 0, 'number', 'External Pipe leak', '170', '', '', ''),
(427, 0, 'number', 'Discounted Service Call', '110', '', '', ''),
(428, 0, 'number', 'Pool', '350', '', '', ''),
(429, 0, 'number', 'Washer/Dryer', '190', '', '', ''),
(430, 0, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '190', '', '', ''),
(431, 0, 'number', 'Prof. Series Appliances - Kit.', '170', '', '', ''),
(432, 0, 'number', 'Well Pump', '150', '', '', ''),
(433, 0, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '130', '', '', ''),
(434, 0, 'checkbox', 'Extra Water Heater', '110', '', '', ''),
(435, 0, 'number', 'Pool - Salt Water', '390', '', '', ''),
(436, 0, 'default', 'Refrigerator', '110', '', '', ''),
(437, 0, 'number', 'Stand Alone Fridge or Freezer', '90', '', '', ''),
(438, 0, 'number', 'Water Softener', '130', '', '', ''),
(439, 0, 'number', 'Booster Pump - House', '150', '', '', ''),
(440, 0, 'checkbox', 'Casita', '300', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(441, 0, 'checkbox', 'Premium Coverage Upgrade', '150', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(442, 0, 'number', 'Roof Leak', '170', '', '', ''),
(443, 0, 'number', 'Additional Refrigerator', '110', '', '', ''),
(444, 0, 'number', 'Additional Kit. Appliance (ea.)', '90', '', '', ''),
(445, 0, 'number', 'External Pipe leak', '170', '', '', ''),
(446, 0, 'number', 'Discounted Service Call', '110', '', '', ''),
(447, 0, 'number', 'Pool', '525', '', '', ''),
(448, 0, 'number', 'Washer/Dryer', '255', '', '', ''),
(449, 0, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '285', '', '', ''),
(450, 0, 'number', 'Prof. Series Appliances - Kit.', '255', '', '', ''),
(451, 0, 'number', 'Well Pump', '225', '', '', ''),
(452, 0, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '195', '', '', ''),
(453, 0, 'checkbox', 'Extra Water Heater', '165', '', '', ''),
(454, 0, 'number', 'Pool - Salt Water', '585', '', '', ''),
(455, 0, 'checkbox', 'Refrigerator', '165', '', '', ''),
(456, 0, 'number', 'Stand Alone Fridge or Freezer', '135', '', '', ''),
(457, 0, 'number', 'Water Softener', '195', '', '', ''),
(458, 0, 'number', 'Booster Pump - House', '225', '', '', ''),
(459, 0, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(460, 0, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(461, 0, 'number', 'Roof Leak', '255', '', '', ''),
(462, 0, 'default', 'Additional Refrigerator', '165', '', '', ''),
(463, 0, 'number', 'Additional Kit. Appliance (ea.)', '135', '', '', ''),
(464, 0, 'number', 'External Pipe leak', '255', '', '', ''),
(465, 0, 'number', 'Discounted Service Call', '165', '', '', ''),
(466, 0, 'number', 'Pool', '525', '', '', ''),
(467, 0, 'number', 'Washer/Dryer', '255', '', '', ''),
(468, 0, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '285', '', '', ''),
(469, 0, 'number', 'Prof. Series Appliances - Kit.', '255', '', '', ''),
(470, 0, 'number', 'Well Pump', '225', '', '', ''),
(471, 0, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '195', '', '', ''),
(472, 0, 'checkbox', 'Extra Water Heater', '165', '', '', ''),
(473, 0, 'number', 'Pool - Salt Water', '585', '', '', ''),
(474, 0, 'default', 'Refrigerator', '165', '', '', ''),
(475, 0, 'number', 'Stand Alone Fridge or Freezer', '135', '', '', ''),
(476, 0, 'number', 'Water Softener', '195', '', '', ''),
(477, 0, 'number', 'Booster Pump - House', '225', '', '', ''),
(478, 0, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(479, 0, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(480, 0, 'number', 'Roof Leak', '255', '', '', ''),
(481, 0, 'number', 'Additional Refrigerator', '165', '', '', ''),
(482, 0, 'number', 'Additional Kit. Appliance (ea.)', '135', '', '', ''),
(483, 0, 'number', 'External Pipe leak', '255', '', '', ''),
(484, 0, 'number', 'Discounted Service Call', '165', '', '', ''),
(485, 0, 'number', 'Pool', '525', '', '', ''),
(486, 0, 'number', 'Washer/Dryer', '285', '', '', ''),
(487, 0, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '285', '', '', ''),
(488, 0, 'number', 'Prof. Series Appliances - Kit.', '255', '', '', ''),
(489, 0, 'number', 'Well Pump', '225', '', '', ''),
(490, 0, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '195', '', '', ''),
(491, 0, 'checkbox', 'Extra Water Heater', '165', '', '', ''),
(492, 0, 'number', 'Pool - Salt Water', '585', '', '', ''),
(493, 0, 'default', 'Refrigerator', '165', '', '', ''),
(494, 0, 'number', 'Stand Alone Fridge or Freezer', '135', '', '', ''),
(495, 0, 'number', 'Water Softener', '195', '', '', ''),
(496, 0, 'number', 'Booster Pump - House', '225', '', '', ''),
(497, 0, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation. Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(498, 0, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(499, 0, 'number', 'Roof Leak', '255', '', '', ''),
(500, 0, 'number', 'Additional Refrigerator', '165', '', '', ''),
(501, 0, 'number', 'Additional Kit. Appliance (ea.)', '135', '', '', ''),
(502, 0, 'number', 'External Pipe leak', '255', '', '', ''),
(503, 0, 'number', 'Discounted Service Call', '165', '', '', ''),
(504, 0, 'number', 'Pool', '700', '', '', ''),
(505, 0, 'number', 'Washer/Dryer', '340', '', '', ''),
(506, 0, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '380', '', '', ''),
(507, 0, 'number', 'Prof. Series Appliances - Kit.', '340', '', '', ''),
(508, 0, 'number', 'Well Pump', '300', '', '', ''),
(509, 0, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '260', '', '', ''),
(510, 0, 'checkbox', 'Extra Water Heater', '220', '', '', ''),
(511, 0, 'number', 'Pool - Salt Water', '780', '', '', ''),
(512, 0, 'checkbox', 'Refrigerator', '220', '', '', ''),
(513, 0, 'number', 'Stand Alone Fridge or Freezer', '180', '', '', ''),
(514, 0, 'number', 'Water Softener', '260', '', '', ''),
(515, 0, 'number', 'Booster Pump - House', '300', '', '', ''),
(516, 0, 'checkbox', 'Casita', '600', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(517, 0, 'checkbox', 'Premium Coverage Upgrade', '300', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(518, 0, 'number', 'Roof Leak', '340', '', '', ''),
(519, 0, 'default', 'Additional Refrigerator', '220', '', '', ''),
(520, 0, 'number', 'Additional Kit. Appliance (ea.)', '180', '', '', ''),
(521, 0, 'number', 'External Pipe leak', '340', '', '', ''),
(522, 0, 'number', 'Discounted Service Call', '220', '', '', ''),
(523, 0, 'number', 'Pool', '700', '', '', ''),
(524, 0, 'number', 'Washer/Dryer', '340', '', '', ''),
(525, 0, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '380', '', '', ''),
(526, 0, 'number', 'Prof. Series Appliances - Kit.', '340', '', '', ''),
(527, 0, 'number', 'Well Pump', '300', '', '', ''),
(528, 0, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '260', '', '', ''),
(529, 0, 'checkbox', 'Extra Water Heater', '220', '', '', ''),
(530, 0, 'number', 'Pool - Salt Water', '780', '', '', ''),
(531, 0, 'default', 'Refrigerator', '220', '', '', ''),
(532, 0, 'number', 'Stand Alone Fridge or Freezer', '180', '', '', ''),
(533, 0, 'number', 'Water Softener', '260', '', '', ''),
(534, 0, 'number', 'Booster Pump - House', '300', '', '', ''),
(535, 0, 'checkbox', 'Casita ', '600', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(536, 0, 'checkbox', 'Premium Coverage Upgrade', '300', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(537, 0, 'number', 'Roof Leak', '340', '', '', ''),
(538, 0, 'number', 'Additional Refrigerator', '220', '', '', ''),
(539, 0, 'number', 'External Pipe leak', '340', '', '', ''),
(540, 0, 'number', 'Discounted Service Call', '220', '', '', ''),
(541, 0, 'number', 'Additional Kit. Appliance (ea.)', '180', '', '', ''),
(542, 0, 'number', 'Pool', '700', '', '', ''),
(543, 0, 'number', 'Washer/Dryer', '380', '', '', ''),
(544, 0, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '380', '', '', ''),
(545, 0, 'number', 'Prof. Series Appliances - Kit.', '340', '', '', ''),
(546, 0, 'number', 'Well Pump', '300', '', '', ''),
(547, 0, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '260', '', '', ''),
(548, 0, 'checkbox', 'Extra Water Heater', '220', '', '', ''),
(549, 0, 'number', 'Pool - Salt Water', '780', '', '', ''),
(550, 0, 'default', 'Refrigerator', '220', '', '', ''),
(551, 0, 'number', 'Stand Alone Fridge or Freezer', '180', '', '', ''),
(552, 0, 'number', 'Water Softener', '260', '', '', ''),
(553, 0, 'number', 'Booster Pump - House', '300', '', '', ''),
(554, 0, 'checkbox', 'Casita', '600', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(555, 0, 'checkbox', 'Premium Coverage Upgrade', '300', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(556, 0, 'number', 'Roof Leak', '340', '', '', ''),
(557, 0, 'number', 'Additional Refrigerator', '220', '', '', ''),
(558, 0, 'number', 'Additional Kit. Appliance (ea.)', '180', '', '', ''),
(559, 0, 'number', 'External Pipe leak', '340', '', '', ''),
(560, 0, 'number', 'Discounted Service Call', '220', '', '', ''),
(561, 0, 'default', 'Additional Refrigerator/Freezer', '80', '', '', ''),
(562, 0, 'number', 'Roof Leak Repair', '200', '', '', ''),
(563, 0, 'number', 'Well Pump', '200', '', '', ''),
(564, 0, 'number', 'Grinder Pump', '310', '', '', ''),
(565, 0, 'number', 'Swimming Pool/Hot Tub Salt', '650', '', '', ''),
(566, 0, 'checkbox', 'Extra Water Heater', '100', '', '', ''),
(567, 0, 'number', 'Enhanced Pipe Coverage', '200', '', '', ''),
(568, 19, 'checkbox', '2nd Year Coverage', '445', '', '', ''),
(569, 19, 'checkbox', '3rd Year Coverage', '445', '', '', ''),
(570, 20, 'checkbox', '2nd Year Coverage', '545', '', '', ''),
(571, 20, 'checkbox', '3rd Year Coverage', '545', '', '', ''),
(572, 21, 'checkbox', '2nd Year Coverage', '625', '', '', ''),
(573, 21, 'checkbox', '3rd Year Coverage', '625', '', '', ''),
(574, 41, 'number', 'Water Softener', '75', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '', ''),
(575, 41, 'number', 'Discount Pre Paid Service Fee', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '', ''),
(576, 41, 'number', 'Fireplace', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '', ''),
(577, 32, 'default', 'Additional Refrigerator/Freezer', '120', '', '', ''),
(578, 32, 'number', 'Roof Leak Repair', '300', '', '', ''),
(579, 32, 'number', 'Well Pump', '300', '', '', ''),
(580, 32, 'number', 'Grinder Pump', '465', '', '', ''),
(581, 32, 'number', 'Swimming Pool/Hot Tub Salt', '975', '', '', ''),
(582, 32, 'checkbox', 'Extra Water Heater', '150', '', '', ''),
(583, 32, 'number', 'Enhanced Pipe Coverage', '300', '', '', ''),
(584, 32, 'number', 'Water Softener', '180', '', '', ''),
(585, 32, 'number', 'Booster Pump', '255', '', '', ''),
(586, 32, 'number', 'Septic System/Pumping', '225', '', '', ''),
(587, 32, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(588, 32, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(589, 32, 'number', 'No-Fault Coverage', '180', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '', ''),
(590, 32, 'number', 'Washer/Dryer', '255', '', '', ''),
(591, 32, 'number', 'Swimming Pool/Hot Tub', '525', '', '', ''),
(592, 32, 'number', 'Discounted Service Call', '165', '', '', ''),
(593, 34, 'default', 'Additional Refrigerator/Freezer', '160', '', '', ''),
(594, 34, 'number', 'Roof Leak Repair', '400', '', '', ''),
(595, 34, 'number', 'Well Pump', '400', '', '', ''),
(596, 34, 'number', 'Grinder Pump', '620', '', '', ''),
(597, 34, 'number', 'Swimming Pool/Hot Tub Salt', '1300', '', '', ''),
(598, 34, 'checkbox', 'Extra Water Heater', '200', '', '', ''),
(599, 34, 'number', 'Enhanced Pipe Coverage', '400', '', '', ''),
(600, 34, 'number', 'Water Softener', '240', '', '', ''),
(601, 34, 'number', 'Booster Pump', '340', '', '', ''),
(602, 34, 'number', 'Septic System/Pumping', '300', '', '', ''),
(603, 34, 'checkbox', 'Casita', '600', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(604, 34, 'checkbox', 'Premium Coverage Upgrade', '300', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(605, 34, 'number', 'No-Fault Coverage', '240', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '', ''),
(606, 34, 'number', 'Washer/Dryer', '340', '', '', ''),
(607, 34, 'number', 'Swimming Pool/Hot Tub', '700', '', '', ''),
(608, 34, 'number', 'Discounted Service Call', '220', '', '', ''),
(615, 31, 'number', 'Additional Air Conditioner/Cooler', '255', '', '', ''),
(616, 31, 'default', 'Additional Refrigerator/Freezer', '120', '', '', ''),
(617, 31, 'number', 'No-Fault Coverage', '180', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '', ''),
(618, 31, 'number', 'Washer/Dryer', '255', '', '', ''),
(619, 31, 'number', 'Additional Heating/Furnace', '255', '', '', ''),
(620, 31, 'number', 'Washer & Dryer', '255', '', '', ''),
(621, 31, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(622, 31, 'number', 'Enhanced External Pipe Leak Coverage', '300', '', '', ''),
(623, 31, 'number', 'Roof Leak', '300', '', '', ''),
(624, 31, 'number', 'Septic System/Pumping', '300', '', '', ''),
(625, 31, 'number', 'Roof Leak Repairs', '300', '', '', ''),
(626, 31, 'number', 'Booster Pump', '255', '', '', ''),
(627, 31, 'checkbox', 'Refrigerator', '150', '', '', ''),
(628, 31, 'number', 'Grinder Pump', '465', '', '', ''),
(629, 31, 'number', 'Water Softener', '150', '', '', ''),
(630, 31, 'checkbox', 'Extra Water Heater', '150', '', '', ''),
(631, 31, 'number', 'Discounted Service Call', '150', '', '', ''),
(632, 36, 'checkbox', 'Refrigerator', '150', '', '', ''),
(633, 36, 'number', 'Additional Air Conditioner/Cooler', '255', '', '', ''),
(634, 36, 'number', 'No-Fault Coverage', '180', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '', ''),
(635, 36, 'number', 'Washer/Dryer', '255', '', '', ''),
(636, 36, 'number', 'Well Pump', '300', '', '', ''),
(637, 36, 'number', 'Septic System/Pumping', '300', '', '', ''),
(638, 36, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(639, 36, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(640, 36, 'number', 'Freezer', '150', '', '', ''),
(641, 36, 'number', 'Furnace/Heating System', '255', '', '', ''),
(642, 36, 'number', 'Roof Leak Repair', '300', '', '', ''),
(643, 36, 'number', 'Booster Pump', '255', '', '', ''),
(644, 36, 'number', 'Swimming Pool/Hot Tub', '525', '', '', ''),
(645, 36, 'number', 'Discounted Service Call', '180', '', '', ''),
(646, 36, 'default', 'Additional Refrigerator/Freezer', '120', '', '', ''),
(647, 36, 'number', 'Enhanced Pipe Coverage', '300', '', '', ''),
(648, 36, 'number', 'Water Softener', '180', '', '', ''),
(649, 36, 'number', 'Grinder Pump', '465', '', '', ''),
(650, 36, 'number', 'Swimming Pool/Hot Tub Salt', '825', '', '', ''),
(651, 36, 'checkbox', 'Extra Water Heater', '150', '', '', ''),
(652, 37, 'checkbox', 'Refrigerator', '150', '', '', ''),
(653, 37, 'number', 'No-Fault Coverage', '180', '{\"title\":\"No Fault Coverage\",\"full_content\":\"<p>This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong><b>Mismatched Systems</b></strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated.</p><p><strong><b>Improper Installation</b></strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong><b>Haul-Away</b></strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong><b>Crane</b></strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong><b>Code Violations</b></strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract </p><p><strong><b>Permits</b></strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained.</p>\"}', '', ''),
(654, 37, 'number', 'Washer/Dryer', '255', '', '', ''),
(655, 37, 'number', 'Grinder Pump', '465', '', '', ''),
(656, 37, 'number', 'Swimming Pool/Hot Tub Salt', '975', '', '', ''),
(657, 37, 'checkbox', 'Extra Water Heater', '150', '', '', ''),
(658, 37, 'default', 'Additional Refrigerator/Freezer', '120', '', '', ''),
(659, 37, 'number', 'Roof Leak Repair', '300', '', '', ''),
(660, 37, 'number', 'Well Pump', '300', '', '', ''),
(661, 37, 'number', 'Septic System/Pumping', '225', '', '', ''),
(662, 37, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(663, 37, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(664, 37, 'number', 'Enhanced Pipe Coverage', '300', '', '', ''),
(665, 37, 'number', 'Water Softener', '180', '', '', ''),
(666, 37, 'number', 'Booster Pump', '255', '', '', ''),
(667, 37, 'number', 'Swimming Pool/Hot Tub', '525', '', '', ''),
(668, 37, 'number', 'Discounted Service Call', '165', '', '', ''),
(669, 38, 'number', 'Pool', '525', '', '', ''),
(670, 38, 'number', 'Washer/Dryer', '255', '', '', ''),
(671, 38, 'number', 'Washer/Dryer, Kit. Fridge with ice maker (COMBO)', '285', '', '', ''),
(672, 38, 'number', 'Prof. Series Appliances - Kit.', '255', '', '', ''),
(673, 38, 'number', 'Water Softener', '195', '', '', ''),
(674, 38, 'number', 'External Pipe leak', '255', '', '', ''),
(675, 38, 'number', 'Discounted Service Call', '165', '', '', ''),
(676, 38, 'number', 'Pool - Salt Water', '585', '', '', ''),
(677, 38, 'checkbox', 'Refrigerator', '165', '', '', ''),
(678, 38, 'number', 'Stand Alone Fridge or Freezer', '135', '', '', ''),
(679, 38, 'number', 'Well Pump', '225', '', '', ''),
(680, 38, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '195', '', '', ''),
(681, 38, 'checkbox', 'Extra Water Heater', '165', '', '', ''),
(682, 38, 'number', 'Roof Leak', '255', '', '', ''),
(683, 38, 'number', 'Additional Refrigerator', '165', '', '', ''),
(684, 38, 'number', 'Additional Kit. Appliance (ea.)', '135', '', '', ''),
(685, 38, 'number', 'Booster Pump - House', '225', '', '', '');
INSERT INTO `realstate_coverage` (`id`, `product_id`, `coverage_type`, `coverage_name`, `coverage_price`, `content`, `info`, `url`) VALUES
(686, 38, 'checkbox', 'Casita', '450', '{\"title\":\"Casita\",\"full_content\":\"<p>Covered: Building separate from main foundation.Covered items: Plumbing, Electrical, Appliances, Garage. Not Covered: Fridge, HVAC. All covered items as per contract terms.</p>\"}', '', ''),
(687, 38, 'checkbox', 'Premium Coverage Upgrade', '225', '{\"title\":\"Additional Coverage Upgrade\",\"full_content\":\"<p>ADDITIONAL COVERAGE UPGRADES</p><p><strong><b>Heaters</b></strong>: registers- disposable filters – grills – heat lamps. </p><p><strong><b>Plumbing</b></strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong><b>Refrigerator (with purchase of coverage)</b></strong>: Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong><b>Water Heater</b></strong>: failures due to sediment </p><p><strong><b>Electrical</b></strong>: attic fans </p><p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket </p><p><strong><b>Garage Door Opener</b></strong>: springs - hinges - remote transmitter - keypad </p><p><strong><b>Oven/Range Cooktop</b></strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong><b>Built in Microwave Oven</b></strong>: interior lining - shelves – clock</p>\"}', '', '<span>(adds over <a>40 items</a> to standard coverage)</span>'),
(704, 21, 'number', 'Water Softener', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '', ''),
(705, 21, 'number', 'Well Pump', '75', '{\"title\":\"Well Pump\",\"full_content\":\"<p>Covered: This coverage option covers a well pump utilized for the main dwelling only. Limit $1500.</p>\"}', '', ''),
(706, 21, 'number', 'Wine Cooler/ Mini Fridges (per unit)', '55', '{\"title\":\"Wine Cooler/Mini Fridges(per unit)\",\"full_content\":\"<p>Covered: All mechanical parts and components that affect the operation of the cooling system are covered, except for items listed as “Not Covered” herein. Limits $150.</p>\"}', '', ''),
(707, 39, 'checkbox', '2nd Year Coverage', '420', '', '', ''),
(708, 39, 'checkbox', '3rd Year Coverage', '420', '', '', ''),
(709, 39, 'number', 'Water Softener', '75', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '', ''),
(710, 39, 'number', 'Discount Pre Paid Service Fee', '65', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '', ''),
(711, 39, 'number', 'Fireplace', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '', ''),
(712, 40, 'number', 'Discount Pre Paid Service Fee', '55', '{\"title\":\"Discount Pre Paid Service Fee\",\"full_content\":\"<p>Covered: This coverage option provides one pre-paid service call.</p>\"}', '', ''),
(713, 40, 'number', 'Fireplace', '150', '{\"title\":\"Fireplace Coverage\",\"full_content\":\"<p>Covered: Gas valve – Gas Line – Pilot assembly – ignitor – switch. Limit 4500.</p>\"}', '', ''),
(714, 40, 'checkbox', '2nd Year Coverage', '520', '', '', ''),
(715, 40, 'checkbox', '3rd Year Coverage', '520', '', '', ''),
(716, 40, 'number', 'Water Softener', '65', '{\"title\":\"Water Softener\",\"full_content\":\"<p>Covered: This coverage option provides coverage for water softener mechanical parts and components that affect the operation of the unit. Lmit $500.</p>\"}', '', ''),
(717, 43, 'checkbox', '2nd Year Coverage', '500', '', '', ''),
(718, 44, 'checkbox', '2nd Year Coverage', '600', '', '', ''),
(719, 41, 'checkbox', '2nd Year Coverage', '600', '', '', ''),
(720, 41, 'checkbox', '3rd Year Coverage', '600', '', '', ''),
(721, 42, 'checkbox', '3rd Year Coverage', '400', '', '', ''),
(722, 42, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(723, 42, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '50', '', '', ''),
(724, 42, 'number', 'Prof. Series Appliances - Kitchen', '100', '', '', ''),
(725, 42, 'number', 'Washer / Dryer', '100', '', '', ''),
(726, 42, 'number', 'Water Softener', '75', '', '', ''),
(727, 42, 'number', 'Casita / Guest House', '195', '', '', ''),
(728, 42, 'number', 'Second Kitchen', '100', '', '', ''),
(729, 42, 'number', 'Pool / Hot Tub - Chlorine', '225', '', '', ''),
(730, 42, 'number', 'Pool / Hot Tub - Salt Water', '350', '', '', ''),
(731, 42, 'number', 'Water Heater (Additional)', '50', '', '', ''),
(732, 42, 'number', 'Roof Leak Repair', '100', '', '', ''),
(733, 42, 'number', 'External Pipe leak', '100', '', '', ''),
(734, 42, 'number', 'Grinder Pump', '155', '', '', ''),
(735, 42, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '100', '', '', ''),
(736, 42, 'number', 'Fireplace Coverage', '150', '', '', ''),
(737, 42, 'checkbox', '2nd Year Coverage', '400', '', '', ''),
(738, 42, 'number', 'Well Pump', '100', '', '', ''),
(739, 42, 'number', 'Discount Pre Paid Service Fee', '50', '', '', ''),
(740, 42, 'number', 'Sq Footage 6001-7000', '75', '', '', ''),
(741, 42, 'number', 'Sq Footage 7001-8000', '150', '', '', ''),
(742, 42, 'number', 'Sq Footage 8001 and above', '250', '', '', ''),
(743, 43, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(744, 43, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '50', '', '', ''),
(745, 43, 'number', 'Prof. Series Appliances - Kitchen', '100', '', '', ''),
(746, 43, 'number', 'Washer / Dryer', '100', '', '', ''),
(747, 43, 'number', 'Water Softener', '75', '', '', ''),
(748, 43, 'number', 'Casita / Guest House', '195', '', '', ''),
(749, 43, 'number', 'Second Kitchen', '100', '', '', ''),
(750, 43, 'number', 'Pool / Hot Tub - Chlorine', '225', '', '', ''),
(751, 43, 'number', 'Pool / Hot Tub - Salt Water', '350', '', '', ''),
(752, 43, 'number', 'Water Heater (Additional)', '50', '', '', ''),
(753, 43, 'number', 'Roof Leak Repair', '100', '', '', ''),
(754, 43, 'number', 'External Pipe leak', '100', '', '', ''),
(755, 43, 'number', 'Grinder Pump', '155', '', '', ''),
(756, 43, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '100', '', '', ''),
(757, 43, 'number', 'Fireplace Coverage', '150', '', '', ''),
(758, 43, 'checkbox', '3rd Year Coverage', '500', '', '', ''),
(759, 43, 'number', 'Well Pump', '100', '', '', ''),
(760, 43, 'number', 'Discount Pre Paid Service Fee', '50', '', '', ''),
(761, 43, 'number', 'Sq Footage 6001-7000', '75', '', '', ''),
(762, 43, 'number', 'Sq Footage 7001-8000', '150', '', '', ''),
(763, 43, 'number', 'Sq Footage 8001 and above', '250', '', '', ''),
(764, 44, 'number', 'Refrigerator with ice maker', '55', '', '', ''),
(765, 44, 'number', 'Additional Fridge or Freestanding Fridge/Freezer', '50', '', '', ''),
(766, 44, 'number', 'Prof. Series Appliances - Kitchen', '100', '', '', ''),
(767, 44, 'number', 'Washer / Dryer', '100', '', '', ''),
(768, 44, 'number', 'Water Softener', '75', '', '', ''),
(769, 44, 'number', 'Casita / Guest House', '195', '', '', ''),
(770, 44, 'number', 'Second Kitchen', '100', '', '', ''),
(771, 44, 'number', 'Pool / Hot Tub - Chlorine', '225', '', '', ''),
(772, 44, 'number', 'Pool / Hot Tub - Salt Water', '350', '', '', ''),
(773, 44, 'number', 'Water Heater (Additional)', '50', '', '', ''),
(774, 44, 'number', 'Roof Leak Repair', '100', '', '', ''),
(775, 44, 'number', 'External Pipe leak', '100', '', '', ''),
(776, 44, 'number', 'Grinder Pump', '155', '', '', ''),
(777, 44, 'number', 'Septic System, Pumping & Sewage Ejector Pump', '100', '', '', ''),
(778, 44, 'number', 'Fireplace Coverage', '150', '', '', ''),
(779, 44, 'checkbox', '3rd Year Coverage', '600', '', '', ''),
(780, 44, 'number', 'Well Pump', '100', '', '', ''),
(781, 44, 'number', 'Discount Pre Paid Service Fee', '50', '', '', ''),
(782, 44, 'number', 'Sq Footage 6001-7000', '75', '', '', ''),
(783, 44, 'number', 'Sq Footage 7001-8000', '150', '', '', ''),
(784, 44, 'number', 'Sq Footage 8001 and above', '250', '', '', ''),
(785, 45, 'checkbox', '2nd Year Coverage', '375', '', '', ''),
(786, 45, 'checkbox', '3rd Year Coverage', '375', '', '', ''),
(787, 45, 'number', 'Water Softener', '75', '', '', ''),
(788, 45, 'number', 'Fireplace', '150', '', '', ''),
(789, 45, 'number', 'Discount Prepaid Service Fee', '50', '', '', ''),
(790, 46, 'checkbox', '2nd Year Coverage', '475', '', '', ''),
(791, 46, 'checkbox', '3rd Year Coverage', '475', '', '', ''),
(792, 47, 'checkbox', '2nd Year Coverage', '575', '', '', ''),
(793, 47, 'checkbox', '3rd Year Coverage', '575', '', '', ''),
(794, 48, 'checkbox', '2nd Year Coverage', '695', '', '', ''),
(795, 48, 'checkbox', '3rd Year Coverage', '695', '', '', ''),
(796, 48, 'number', 'Water Softener', '75', '', '', ''),
(797, 48, 'number', 'Fireplace', '150', '', '', ''),
(798, 48, 'number', 'Discount Service Prepaid Fee', '50', '', '', ''),
(799, 48, 'number', 'Grinder Pump', '155', '', '', ''),
(800, 48, 'number', 'External Pipe Leak', '100', '', '', ''),
(801, 49, 'checkbox', '2nd Year Coverage', '795', '', '', ''),
(802, 49, 'checkbox', '3rd Year Coverage', '795', '', '', ''),
(803, 50, 'checkbox', '2nd Year Coverage', '995', '', '', ''),
(804, 50, 'checkbox', '3rd Year Coverage', '995', '', '', ''),
(805, 51, 'checkbox', '2nd Year Coverage', '895', '', '', ''),
(806, 51, 'checkbox', '3rd Year Coverage', '895', '', '', ''),
(807, 51, 'number', 'Water Softener', '75', '', '', ''),
(808, 51, 'number', 'Fireplace', '150', '', '', ''),
(809, 51, 'number', 'Discount Prepaid Service Fee', '50', '', '', ''),
(810, 51, 'number', 'Grinder Pump', '155', '', '', ''),
(811, 51, 'number', 'External Pipe Leak', '100', '', '', ''),
(812, 52, 'checkbox', '2nd Year Coverage', '995', '', '', ''),
(813, 52, 'checkbox', '3rd Year Coverage', '995', '', '', ''),
(814, 53, 'checkbox', '2nd Year Coverage', '1195', '', '', ''),
(815, 53, 'checkbox', '3rd Year Coverage', '1195', '', '', ''),
(816, 54, 'checkbox', '2nd Year Coverage', '1095', '', '', ''),
(817, 54, 'checkbox', '3rd Year Coverage', '1095', '', '', ''),
(818, 54, 'number', 'Water Softener', '75', '', '', ''),
(819, 54, 'number', 'Fireplace', '150', '', '', ''),
(820, 54, 'number', 'Discount Prepaid Service Fee', '50', '', '', ''),
(821, 54, 'number', 'Grinder Pump', '155', '', '', ''),
(822, 54, 'number', 'External Pipe Leak', '100', '', '', ''),
(823, 55, 'checkbox', '2nd Year Coverage', '1195', '', '', ''),
(824, 55, 'checkbox', '3rd Year Coverage', '1195', '', '', ''),
(825, 56, 'checkbox', '2nd Year Coverage', '1295', '', '', ''),
(826, 56, 'checkbox', '3rd Year Coverage', '1295', '', '', ''),
(827, 46, 'number', 'Water Softener', '75', '', '', ''),
(828, 46, 'number', 'Fireplace', '150', '', '', ''),
(829, 46, 'number', 'Discount Prepaid Service Fee', '50', '', '', ''),
(830, 47, 'number', 'Water Softener', '75', '', '', ''),
(831, 47, 'number', 'Fireplace', '150', '', '', ''),
(832, 47, 'number', 'Discount Prepaid Service Fee', '50', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `realstate_coverage_types`
--

CREATE TABLE `realstate_coverage_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `co_type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realstate_coverage_types`
--

INSERT INTO `realstate_coverage_types` (`id`, `co_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Buyer\'s Coverage', NULL, NULL),
(2, 'Listing/Seller\'s Coverage', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `realstate_features`
--

CREATE TABLE `realstate_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_name` varchar(255) DEFAULT NULL,
  `sf_title_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realstate_features`
--

INSERT INTO `realstate_features` (`id`, `feature_name`, `sf_title_id`) VALUES
(1, 'Air Conditioner/Cooler', 1),
(2, 'Now no contract limits or unit limits', 1),
(3, 'Heating System/Furnace', 1),
(4, 'Heat Pump', 1),
(5, 'Thermostat', 1),
(6, 'Duct from Heating or Cooling Unit', 1),
(7, 'Toilet (Parts)', 2),
(8, 'Drain Line Stoppages', 2),
(9, 'Water Heater', 2),
(10, 'Shower/Diverter Valves', 2),
(11, 'Built-in Bath Whirpool Motor & Pump Assembly', 2),
(12, 'Plumbing Leaks (Water, Drain, Gas, or Vent)', 2),
(13, 'Electrical System', 3),
(14, 'Panel and Subpanels', 3),
(15, 'Junction Boxes', 3),
(16, 'Exhaust Fans', 3),
(17, 'Circuit Breakers', 3),
(18, 'Ceiling Fans', 3),
(19, 'Garage Door Systems', 3),
(20, 'Oven', 4),
(21, 'Range', 4),
(22, 'Cooktop', 4),
(23, 'Garbage Disposal', 4),
(24, 'Builtin Dishwasher', 4),
(25, 'Built-in Microwave', 4),
(26, 'Trash Compactor', 4),
(27, 'Pre-Season Tune-Ups for Heating and A/C Units*', 5),
(28, 'Re-Key Services', 5),
(29, 'Filter Delivery', 0),
(30, 'Garage Reprogramming', 5),
(31, 'Discounted Home Security', 5),
(32, 'Air Conditioner/Cooler', 6),
(33, 'Now no contract limits or unit limits', 6),
(34, 'Heating System/Furnace', 6),
(35, 'Heat Pump', 6),
(36, 'Thermostat', 6),
(37, 'Duct from Heating or Cooling Unit', 6),
(38, 'Toilet (Parts)', 7),
(39, 'Drain Line Stoppages', 7),
(40, 'Water Heater', 7),
(41, 'Shower/Diverter Valves', 7),
(42, 'Built-in Bath Whirpool Motor & Pump Assembly', 7),
(43, 'Plumbing Leaks (Water, Drain, Gas, or Vent)', 7),
(44, 'Electrical System', 8),
(45, 'Panel and Subpanels', 8),
(46, 'Junction Boxes', 8),
(47, 'Exhaust Fans', 8),
(48, 'Circuit Breakers', 8),
(49, 'Ceiling Fans', 8),
(50, 'Garage Door Systems', 8),
(51, 'Oven', 9),
(52, 'Range', 9),
(53, 'Cooktop', 9),
(54, 'Garbage Disposal', 9),
(55, 'Built-in Dishwasher', 9),
(56, 'Built-in Microwave', 9),
(57, 'Trash Compactor', 9),
(58, 'Pre-Season Tune-Ups for Heating and A/C Units*', 10),
(59, 'Re-Key Services', 10),
(60, 'Filter Delivery', 10),
(61, 'Garage Reprogramming', 10),
(62, 'Discounted Home Security', 10),
(63, 'Heating System/Furnace', 11),
(64, 'Heat Pump', 11),
(65, 'Thermostat', 11),
(66, 'Duct from Heating or Cooling Unit', 11),
(67, 'Toilet (Parts)', 12),
(68, 'Drain Line Stoppages', 12),
(69, 'Water Heater', 12),
(70, 'Shower/Diverter Valves', 12),
(71, 'Plumbing Leaks (Water, Drain, Gas, or Vent)', 12),
(72, 'Electrical System', 13),
(73, 'Panel and Subpanels', 13),
(75, 'Exhaust Fans', 13),
(76, 'Circuit Breakers', 13),
(77, 'Ceiling Fans', 13),
(78, 'Garage Door Systems', 13),
(79, 'Oven', 14),
(80, 'Range', 14),
(81, 'Cooktop', 14),
(82, 'Built-in Dishwasher', 14),
(83, 'Built-in Microwave', 14),
(84, 'Garbage Disposal', 14),
(85, 'Trash Compactor', 14),
(86, 'HVAC Tune Ups', 15),
(87, 'Re-Key Services', 15),
(88, 'Filter Delivery', 0),
(89, 'Garage Reprogramming', 15),
(90, 'Discounted Home Security', 15),
(91, 'Heating System/Furnace', 16),
(92, 'Heat Pump', 16),
(93, 'Thermostat', 16),
(94, 'Duct from Heating or Cooling Unit', 16),
(95, 'Toilet (Parts)', 17),
(96, 'Drain Line Stoppages', 17),
(97, 'Water Heater', 17),
(98, 'Shower/Diverter Valves', 17),
(99, 'Plumbing Leaks (Water, Drain, Gas, or Vent)', 17),
(100, 'Electrical System', 18),
(101, 'Panel and Subpanels', 18),
(102, 'Exhaust Fans', 18),
(103, 'Circuit Breakers', 18),
(104, 'Ceiling Fans', 18),
(105, 'Garage Door Systems', 18),
(106, 'Oven', 19),
(107, 'Range', 19),
(108, 'Cooktop', 19),
(109, 'Built-in Dishwasher', 19),
(110, 'Built-in Microwave', 19),
(111, 'Grabage Disposal', 19),
(112, 'Trash Compactor', 19),
(113, 'HVAC Tune Ups', 20),
(114, 'Re-Key Services', 20),
(115, 'Filter Delivery', 20),
(116, 'Garage Reprogramming', 20),
(117, 'Discounted Home Security', 20),
(118, 'Pest Control/Termite Treatment', 20),
(119, 'Air Conditioning (unlimited)', 21),
(120, 'Heating/Furnace (unlimited)', 21),
(121, 'Heat Pump', 21),
(122, 'Bi Annual Tune Ups', 21),
(123, 'Thermostat', 21),
(124, 'Duct from Heating or Cooling', 21),
(125, 'Panels', 23),
(126, 'Water Heaters (all units)', 22),
(127, 'Water Heaters - Tankless (up to $800)', 22),
(128, 'Stoppages & Clogs', 22),
(129, 'Toilet - Parts', 22),
(130, 'Whirlpool Assembly', 22),
(131, 'Sump Pump-permanent', 22),
(132, 'Subpanels', 23),
(133, 'Wiring', 23),
(134, 'Junction Boxes', 23),
(135, 'Exhaust Fan - Bathrooms', 23),
(136, 'Exhaust Fan - Kitchen', 23),
(137, 'Ceiling Fans', 23),
(138, 'Oven', 24),
(139, 'Range', 24),
(140, 'Cooktop', 24),
(141, 'Grabage Disposal', 24),
(142, 'Built-in Microwave', 24),
(143, 'Trash Compactor', 24),
(144, 'Central Vac', 24),
(145, 'Re-Key', 25),
(146, 'Garage Door Reprogramming', 25),
(147, 'Subter. Termites - spot treatmen', 25),
(148, 'Discounted Home Security', 25),
(149, 'Dishwasher', 24),
(150, 'Bi Annual Tune Up\'s', 25),
(151, 'Unknown Pre-existing Conditions', 25),
(152, 'Motor', 26),
(153, 'Wiring', 26);

-- --------------------------------------------------------

--
-- Table structure for table `realstate_features_title`
--

CREATE TABLE `realstate_features_title` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `sf_title` varchar(255) NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realstate_features_title`
--

INSERT INTO `realstate_features_title` (`id`, `sf_title`, `location_id`) VALUES
(1, 'HVAC', 1),
(2, 'Plumbing', 1),
(3, 'Electrical', 1),
(4, 'Appliances', 1),
(5, 'Member Benefits', 1),
(6, 'HVAC', 2),
(7, 'Plumbing', 2),
(8, 'Electrical', 2),
(9, 'Appliances', 2),
(10, 'Member Benefits', 2),
(11, 'HVAC', 3),
(12, 'Plumbing', 3),
(13, 'Electrical', 3),
(14, 'Appliances', 3),
(15, 'Member Benefits', 3),
(16, 'HVAC', 4),
(17, 'Plumbing', 4),
(18, 'Electrical', 4),
(19, 'Appliances', 4),
(20, 'Member Benefits', 4),
(21, 'HVAC', 5),
(22, 'Plumbing', 5),
(23, 'Electrical', 5),
(24, 'Appliances', 5),
(25, 'Member Benefits*\r\n(services may not be offerd in all areas)', 5),
(26, 'GARAGE DOOR SYSTEMS', 5);

-- --------------------------------------------------------

--
-- Table structure for table `realstate_locations`
--

CREATE TABLE `realstate_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realstate_locations`
--

INSERT INTO `realstate_locations` (`id`, `location_name`, `created_at`, `updated_at`) VALUES
(1, 'Utah', NULL, '2021-05-31 06:49:22'),
(2, 'Idaho', NULL, '2021-05-31 06:48:41'),
(3, 'Nevada', NULL, '2021-05-31 06:48:56'),
(4, 'Arizona', NULL, '2021-05-31 06:53:13'),
(5, 'Texas', NULL, '2021-05-31 06:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `realstate_orders`
--

CREATE TABLE `realstate_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_location_id` int(11) DEFAULT NULL,
  `p_coverage_type_id` int(11) DEFAULT NULL,
  `p_property_type_id` int(11) DEFAULT NULL,
  `i_am_the` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_street1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prop_street2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prop_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prop_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_agentname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_agentphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_agentemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_realstate_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_coordinatorname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_coordinatorphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_coordinatoremail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_agentname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_agentphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_agentemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_realstate_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_coordinatorname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_coordinatorphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_coordinatoremail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_street1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_street2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_officername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_officeremail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_officerphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_assistantname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `escrow_assistantemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_biller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `net_amount` float NOT NULL,
  `credit_balance` float DEFAULT NULL,
  `order_status` int(11) NOT NULL COMMENT '1 Process 2 Booked 3 Done 4 Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realstate_orders`
--

INSERT INTO `realstate_orders` (`id`, `p_location_id`, `p_coverage_type_id`, `p_property_type_id`, `i_am_the`, `prop_street1`, `prop_street2`, `prop_city`, `prop_state`, `prop_zipcode`, `buyer_name`, `buyer_phone`, `buyer_email`, `buyer_agentname`, `buyer_agentphone`, `buyer_agentemail`, `buyer_realstate_company`, `buyer_coordinatorname`, `buyer_coordinatorphone`, `buyer_coordinatoremail`, `seller_name`, `seller_phone`, `seller_email`, `seller_agentname`, `seller_agentphone`, `seller_agentemail`, `seller_realstate_company`, `seller_coordinatorname`, `seller_coordinatorphone`, `seller_coordinatoremail`, `escrow_title`, `escrow_street1`, `escrow_street2`, `escrow_city`, `escrow_state`, `escrow_zipcode`, `closing_officername`, `closing_officeremail`, `closing_officerphone`, `closing_date`, `escrow_assistantname`, `escrow_assistantemail`, `order_biller`, `order_notes`, `sales_person`, `coupon_code`, `total_amount`, `net_amount`, `credit_balance`, `order_status`, `created_at`, `updated_at`) VALUES
(471, 3, 1, 2, NULL, '337 Raj Nagar Sector-E Indore', NULL, 'INDORE', 'MADHYA PRADESH', '452002', 'VinodKushah', '09669021531', 'vinod.k.jmbliss@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'escrow officer', NULL, NULL, NULL, '28', NULL, 'vikas', 'vinod.k.jmbliss@gmail.com', '09669021531', '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 1425, 1425, 0, 2, '2021-10-01 19:22:33', '2021-10-01 19:22:43'),
(472, 4, 1, 1, NULL, 'mg road, indore', NULL, 'indore', 'indore', '452001', 'Vikas', '888.494.9460', NULL, 'No Buyer Agent Name', '9557822598', NULL, NULL, 'vikas kumar', '9557822598', NULL, 'vikas kumar', '9557822598', NULL, 'No Seller Agent Name', '9557822598', NULL, NULL, 'vikas kumar', '9557822598', NULL, 'Jmbliss Escrow Company', 'mg road', NULL, 'bhopal', '12', '452001', 'vikas srivastav', 'jmbliss13@gmail.com', '9557822598', '2021-10-01', 'vikas kumar', 'jmbliss13@gmail.com', 'The Buyer', 'hello CC, This is test for Arizona orders.', NULL, NULL, 410, 410, 0, 2, '2021-10-01 19:25:32', '2021-10-01 19:25:40'),
(473, 1, 1, 1, NULL, '1607 South Jefferson Street', NULL, 'Salt Lake City', 'Utah', '84115', 'Megan & Michael Hulse', '717-991-2870', NULL, 'Chase Mansfield', '801-888-3036', 'chasesoulpro@gmail.com', 'Equity Real Estate', NULL, NULL, NULL, 'Sani Malicevic', '801-664-7365', NULL, 'Sani Malicevic', '801-664-7365', 'malicevic@yahoo.com', 'Excel Llewelyn Realty', NULL, NULL, NULL, 'US Title Insurance Agency, LLC', '1225 Deer Valley Drive', '300', 'Park City', '44', '84060', 'Mcinsy Brown', 'mbrown@ustitleutah.com', '435-615-1148', '2021-09-30', 'Marcia Latham', 'mlatham@ustitleutah.com', 'The Buyer', 'Payment submitted by title company', NULL, NULL, 500, 500, 0, 2, '2021-10-01 19:32:10', '2021-10-01 19:32:16'),
(474, 5, 1, 2, NULL, '14655 Champion Forest Drive', '1101', 'Houston', 'Texas', '77069', 'Lisa Svendson', '918-899-3605', 'lisa.svendsen@e3partners.org', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'First American Title', '8201 Cypresswood Dr', '101', 'Spring', '43', '77379', 'Lou Neesley', 'Lneesley@firstam.com', '281.320.0791', '2021-11-15', 'Veronica Berry', 'vberry@firstam.com', 'The Seller', NULL, 'Kyle Thomas', NULL, 520, 520, 0, 2, '2021-10-01 19:43:59', '2021-10-01 19:44:08'),
(475, 1, 1, 1, 'buyer-agent', '2606 W 2375 N', NULL, 'Clinton', 'UT', '84015', 'Ben & Nerisa Peterson', '510-917-2629', 'npeterson2629@yahoo.com', 'Melissa Becknell', NULL, 'melissa@theroxburghgroup.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sonya Smithing', NULL, 'Sonya@smithinggroup.com', NULL, NULL, NULL, NULL, 'Meraki Title', NULL, NULL, NULL, '44', NULL, 'Jake Sorensen', 'teamjake@merakititle.com', NULL, '', NULL, NULL, 'The Buyer', NULL, 'Sean McCrady', NULL, 500, 500, 0, 2, '2021-10-01 19:51:31', '2021-10-01 19:51:48'),
(476, 5, 1, 1, 'escrow-officer', '19514 Enchanted Grove Drive', NULL, 'Spring', 'texas', '77388', 'Amnie Assel', '2813748700', 'amniea262@gmail.com', 'Carla Brantner', '2818135590', 'buyandsellwithcarla@gmail.com', 'Re/Max Integrity', NULL, NULL, NULL, 'Chin Loh', NULL, NULL, 'Lily Loh', '2814678367', 'agent.lilyloh@gmail.com', 'LV Realty & Services', NULL, NULL, 'ksame@stewart.com', 'Stewart Title Company', '19450 SH 249', 'Suite 250', 'Houston', '43', '77070', 'Kristal Monteforte', 'ksame@stewart.com', '281-374-8700', '2021-10-05', 'Claire Pettit', 'claire.pettit@stewart.com', 'The Buyer\'s Agent', NULL, 'Kyle Thomas', NULL, 445, 445, 0, 2, '2021-10-01 20:04:44', '2021-10-01 20:05:00'),
(477, 1, 1, 1, 'buyer-agent', '3352 E Bridge St #105', NULL, 'Eagle Mtn', 'UT', '84005', 'Jordan and Cheysi Tesimale', '801-922-6195', 'jptesimale@gmail.com', 'Solana Fawson', '801-330-3551', 'solanafawson@gmail.com', 'Bridgeway REalty', 'Nancy Franz', '801-660-4001', 'nancyfranz01@gmail.com', 'Seth Anderson', NULL, NULL, 'Brent Anderson', '801-548-0602', 'bedrockappraisal@gmail.com', 'Blue Mountain Realty', NULL, NULL, NULL, 'Metro National Title -', NULL, NULL, NULL, '44', NULL, 'Sherry Sellers', 'ssellers@metronationaltitle.com', '801-561-9192', '2021-10-01', NULL, NULL, 'The Buyer', 'The Contract Says the buyer will pay for $500 of it and the buyer\'s agent will cover the other $100 from her commission', NULL, NULL, 599, 599, 0, 2, '2021-10-01 20:14:09', '2021-10-01 20:14:28'),
(478, 1, 1, 1, NULL, '8255 S 2700 W', NULL, 'West Jordan', 'UT', '84088', 'Brett Belknap', '(801)449-3000', NULL, 'Brett Belknap', NULL, 'brett@belknapteam.com', NULL, NULL, NULL, NULL, 'Cup Holdings, LLC', NULL, NULL, 'M Peter Thompson', NULL, 'pete@bmutah.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', '44', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 1, '2021-10-01 20:27:19', '2021-10-01 20:27:19'),
(479, 1, 1, 1, NULL, '8255 S 2700 W', NULL, 'West Jordan', 'UT', '84088', 'Brett Belknap', '8014493001', NULL, 'Brett Belknap', NULL, 'brett@belknapteam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M Peter Thompson', NULL, 'pete@bmutah.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', '44', '84047', 'TIffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-01 20:30:06', '2021-10-01 20:30:15'),
(480, 1, 1, 1, 'escrow-officer', '749 E. 590 S.', NULL, 'Ivins', 'Utah', '84738', 'Donald Perry', '303-883-1388', 'dperr9@gmail.com', 'Patrick Perry', '303-748-0854', 'patrick@utahpropertyscout.com', 'Realty One Group Goldmark', NULL, NULL, NULL, 'Jane Peters', NULL, NULL, 'Jodi White', '435-229-0633', 'jodi@jodiwhite.com', 'Summit Sothebys', NULL, NULL, NULL, 'First American Title', '50 E. 100 So.', '100', 'St. George', '44', '84770', 'Allison Schreiber', 'aschreiber@firstam.com', '4356735491', '2021-10-01', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-01 20:45:27', '2021-10-01 20:45:44'),
(481, 1, 1, 1, 'escrow-officer', '148 West Douglass Drive', NULL, 'Payson', 'UT', '84651', 'Nathan Pierpont & Siena Edwards', '(951) 529-4227', 'siena.edwards@yahoo.com', 'Larry Christensen', '(801) 717-6014', 'homesbylarryc@gmail.com', 'Presidio Real Estate', NULL, NULL, NULL, 'The Campbell Family Trust', NULL, NULL, 'Brandon Snarr', NULL, 'donotknow@donotknow.com', NULL, NULL, NULL, NULL, 'Traveling Title', '131 S 700 E', 'Ste 103', 'American Fork', '44', '84003', 'Scott Gowdy', 'scott@travelingtitle.com', '800-419-2828', '2021-09-30', 'Daniella Teerlink', 'daniella@travelingtitle.com', 'The Seller', NULL, 'Sean McCready', NULL, 500, 500, 0, 2, '2021-10-01 21:01:18', '2021-10-01 21:01:26'),
(482, 5, 1, 1, 'escrow-officer', '4421 Sacred Arrow Drive', NULL, 'Austin', 'TX', '78735', 'Jamie Perkins', '(512) 771-6011', NULL, 'Derrik Davis', NULL, 'dd@davisagencytx.com', NULL, NULL, NULL, NULL, 'James H. Rial', NULL, NULL, 'Juanita Thornton', NULL, 'Juanita@realtyaustin.com', NULL, NULL, NULL, NULL, 'Patten Title Co.', '9600 Great Hills Trail', '150E', 'Austin', '43', '78759', 'Josie Garcia', 'teamj@pattentitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 850, 850, 0, 2, '2021-10-01 23:31:37', '2021-10-01 23:32:01'),
(483, 3, 1, 1, NULL, '2050 TURTLEROCK ST', NULL, 'LAS VEGAS', 'NEVADA', '89142', 'ALEJANDRO AGUIRRE MAGARINO', '702-601-1412', 'ALEJANDROAGUIRREMAGARINO@YAHOO.COM', 'ONAIRAM VALDIVIESO', '702-241-4761', 'ONYREALTOR@GMAIL.COM', 'DH CAPITAL REALTY', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'FIDELITY NATIONAL TITLE', NULL, NULL, NULL, '28', NULL, 'TRACY SPIGENER', 'TSPIGENER@FNF.COM', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 535, 535, 60, 2, '2021-10-02 00:23:27', '2021-10-02 00:23:38'),
(484, 1, 1, 1, 'buyer-agent', '2780 E Craig Drive', NULL, 'Salt Lake City', 'Utah', '84109', 'Conrad & Amy Verkler', '6518957258', 'isleofnonconformity@gmail.com', 'Lynn Marchant', '8013816966', 'team@marchantregroup.com', 'EXP Realty', 'Ashley Taylor', '8012558850', 'ashley@marchantregroup.com', 'Jenny Eldredge, Executor - Gilbert W. Jensen Trust', NULL, NULL, 'Scott Pirraglio', '8014001044', 'scottpirragliohomes@gmail.com', NULL, NULL, NULL, NULL, 'Monument Title', '12427 Pasture Rd, 201', NULL, 'Riverton', '44', '84109', 'Mindy Blackburn', 'mindy@monumenttitle.com', '9703615707', '2021-10-15', 'Deanna Anzer', 'danzer@monumenttitle.com', 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-02 00:35:43', '2021-10-02 00:35:57'),
(485, 5, 1, 1, 'escrow-officer', '2402 W 8th Street', NULL, 'Austin', 'TX', '78703', 'Lisa Huddleson', '512-302-3892', 'lhuddleson@gmail.com', 'Melissa Meeks Killian', NULL, 'melissa.kilian@sothebysrealty.com', 'Kuper Sotheby\'s Int\'l Realty', NULL, NULL, NULL, NULL, NULL, NULL, 'Jennifer Archambeault', NULL, 'jennifer@jenniferarchambeault.com', NULL, NULL, NULL, 'jennifer.crooks@doma.com', 'North American Title Company', '5608 Parkcrest', 'Suite 150', 'Austin', '43', '78731', 'Margaret Liebes', 'margaret.liebes@doma.com', '512-302-3892', '2021-10-06', 'Jennifer Crooks', 'jennifer.crooks@doma.com', 'The Seller', 'This will be paid at closing.  Please send the invoice to Margaret and Jennifer.  Thank you', NULL, NULL, 750, 750, 125, 2, '2021-10-02 01:52:03', '2021-10-02 01:54:40'),
(486, 5, 1, 1, 'buyer-agent', '8619 Sparkling Springs Dr.', NULL, 'Houston', 'TX', '77095', 'Billy Onstott', '346-282-3284', NULL, 'Mario Rodriguez', '8328894404', 'RealtorMarioR@Gmail.Com', 'JWang Properties', NULL, NULL, NULL, NULL, NULL, NULL, 'Anthony Levinson', '281-705-2863', 'thelevinsonteam@garygreene.com', 'Better Homes Gary Greene', NULL, NULL, NULL, 'Metropolitan Escrow and Title Company', '1904 W. Grand Parkway N, Suite 122', NULL, 'Katy', '43', '77449', 'Amy Nolan', 'anolan@metrotitle.pro', '713-965-0957', '2021-10-15', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 550, 550, 5, 2, '2021-10-02 01:52:42', '2021-10-02 01:54:04'),
(487, 1, 1, 1, NULL, '151 E Canterwood', NULL, 'Washington', 'Ut', '84780', 'Eugene and Robyn Cash', '(435) 632-5956', 'cashwash18@gmail.com', 'John Hook', NULL, 'john@johnhookteam.com', 'UT', NULL, '4352360765', NULL, NULL, NULL, NULL, 'Colton Olson', NULL, 'colton.olson@homie.com', 'Homie', NULL, NULL, NULL, 'First American', NULL, NULL, NULL, '44', NULL, 'Allison Schreiber', 'aschreiber@firstam.com', NULL, '2021-10-29', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-02 02:03:31', '2021-10-02 02:03:51'),
(488, 5, 1, 2, 'escrow-officer', '801 River Road', '110F', 'Montgomery', 'TX', '77356', 'DeeAnn and Todd Harmon', '9164195726', NULL, 'Hongmei Polk', '8323908158', 'hongmei.polk@cbunited.com', 'Coldwell Banker Realty', NULL, NULL, NULL, 'Randall Lee', NULL, NULL, 'Tracy Hughes', NULL, 'marbe.phillips@stewart.com', NULL, NULL, NULL, NULL, 'Stewart Title', '25250 NW Freeway', 'ste. 140', 'Cypress', '43', '77429', 'Sharon Bristow', 'sharon.bristow@stewart.com', '2813040487', '2021-10-14', 'Marbe Phillips', 'marbe.phillips@stewart.com', 'The Seller\'s Agent', 'Order will be billed to Stewart Title. \nInvoice will be paid once the file closes/funds.', NULL, NULL, 420, 420, 0, 2, '2021-10-02 02:27:38', '2021-10-02 02:27:52'),
(489, 1, 1, 1, NULL, '2520 Blackhawk Drive', '63', 'Santa Clara', 'UT', '84765', 'Anthony & Daisy Mendez', '435-5122-7958', 'daisymendez040@gmail.com', 'Nick Guillian', NULL, 'nick@johnhookteam.com', 'KYRO', NULL, NULL, NULL, NULL, NULL, NULL, 'Tammy Warmsley', NULL, 'tammyw@erabrokers.com', NULL, NULL, NULL, NULL, 'First American', NULL, NULL, NULL, '44', NULL, 'Allison Schreiber', 'aschreiber@firstam.com', NULL, '2021-10-20', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-02 02:29:25', '2021-10-02 02:29:35'),
(490, 1, 1, 1, NULL, '5211 W South Jordan Pkwy, Apt, suite, floor, etc.', NULL, 'South Jordan', 'UT', '84009', 'Aidamara Araque', '845-521-5534', 'makirob@hotmail.com', 'Kimm Lofthouse', '801-949-1740', 'mylofthouse@me.com', 'MYLOFTHOUSE', NULL, NULL, NULL, 'Mike Manczuk & Lisa Baird', '801-708-3513', 'teamzenutah@gmail.com', 'Mike Manczuk & Lisa Baird', '801-708-3513', 'teamzenutah@gmail.com', 'Integra Realty, Inc', NULL, NULL, NULL, '1st Liberty Title', '9488 S Union Square', NULL, 'Sandy', '44', '84070', 'Jax Pettey', 'jax@1stlibertytitle.com', '801.999.4028', '2021-10-01', 'Dayanne', 'dayanne@1stlibertytitle.com', 'The Buyer', '13th Month Free', 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-02 02:59:07', '2021-10-02 02:59:31'),
(491, 1, 1, 1, 'escrow-officer', '1802 E Longbranch Dr', NULL, 'Draper', 'Utah', '84020', 'Bohuslav Dvorak', '520-440-6580', 'slava.dvorak@gmail.com', 'Adam Klawe', '801-554-6471', 'adam@adamklawe.com', 'KW Utah Realtors', NULL, NULL, NULL, 'Garrett Cottle', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Old Republic Title', '2121 McClelland St', '103', 'Salt Lake City', '44', '84106', 'Kyle Cain', 'sbettolo@oldrepublictitle.com', '385-242-7155', '2021-09-30', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-02 04:06:53', '2021-10-02 04:07:24'),
(492, 5, 1, 1, NULL, '2734 3rd Ave N', NULL, 'Texas City', 'Tx', '77590', 'Shawn & Sara Jones', '409-550-4861', 'alphasomegaj@gmail.com', 'Karen Ballard', '832-282-2166', 'karen.ballard42@sbcglobal.net', 'UTR Texas Realtors', NULL, '8322822166', NULL, 'Kevin A hackemack', NULL, NULL, 'Cheree Rose', '281-799-8102', 'chereerose@hotmail.com', 'Sunrise Realty', NULL, NULL, NULL, 'Stewart Title', '13227 FM 1764', NULL, 'Santa Fe', '43', '77510', 'Kathy Tavarez', 'kathy.tavarez@stewart.com', '409-925-3800', '2021-10-11', NULL, NULL, 'The Seller', NULL, NULL, NULL, 550, 550, 5, 2, '2021-10-02 07:21:35', '2021-10-02 07:22:46'),
(493, 5, 1, 1, NULL, '1602 Waterford Dr', NULL, 'Deer Park', 'Tx', '77536', 'Frankie Arispe & Marissa Resendez', '832-907-5508', 'frankiearispe@gmail.com', 'Karen Ballard', '832-282-2166', 'karen.ballard42@sbcglobal.net', 'UTR Texas Realtors', NULL, NULL, NULL, 'Clayton & Laura ekstrom', NULL, NULL, 'Juli Morman', '281-235-4359', 'juli@julimorman.com', 'Remax 5 Star Realty', NULL, NULL, NULL, 'American Title', '7730 Spencer hwy #200', NULL, 'Pasadena', '43', '77505', 'Lisa Trevino', 'lisat@atcdp.com', '281-479-1913', '2021-10-13', NULL, NULL, 'The Seller', 'Seller is paying $500 of the $850, buyers agent Karen Ballard will pay the remaining $350 at closing 10/13/2021', NULL, NULL, 850, 850, 0, 2, '2021-10-02 07:34:46', '2021-10-02 07:35:01'),
(494, 5, 1, 1, NULL, '21 Key Harbour Drive', NULL, 'Montgomery', 'TX', '77356', 'Luis Gutierrez', '8324194717', 'luisgutierrezroa@yahoo.com', 'Lyndsie Gourley', '9365370997', 'lyndsie.gourley@gmail.com', 'Re/Max Integrity', NULL, NULL, NULL, NULL, NULL, NULL, 'Ruben Villarreal', NULL, 'sold@rubenandnancy.com', NULL, NULL, NULL, NULL, 'First Priority Title of Texas', '303 Longmire Road', '401', 'Conroe', '43', '77304', 'Sandy Miller', 'smiller@fptitletx.com', '8322044884', '2021-10-15', NULL, NULL, 'The Buyer', NULL, 'Kyle Thomas', NULL, 445, 445, 0, 2, '2021-10-04 18:28:16', '2021-10-04 18:28:44'),
(495, 1, 1, 1, 'escrow-officer', '587 E 1700 S', NULL, 'Salt Lake', 'UT', '84105', 'Kristen Tayrien', '3035899267', NULL, 'Rebecca Rutledge', NULL, 'coordinator@peakcollectivegroup.com', NULL, NULL, NULL, NULL, 'Kells Nixon', NULL, NULL, 'Spencer Williams', NULL, 'spencer@spencerwilliamsteam.com', NULL, NULL, NULL, NULL, 'Meridian Title', '64 E 6400 South Suite 100', NULL, 'Salt Lake City', '44', '84107', 'Brandy Kramer', 'brandyteam@mtcutah.com', NULL, '2021-10-04', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-04 19:35:07', '2021-10-04 19:35:39'),
(496, 1, 1, 1, NULL, '14762 South Traverse Loop Drive', NULL, 'Draper', 'Utah', '84020', 'Robert Paul Haluska', '(574) 286-1224', NULL, 'Jill Ekstein', NULL, 'jill.ekstein@utahhomes.com', 'Coldwell Banker Realty', NULL, NULL, NULL, 'Christopher Stranc', NULL, NULL, 'Raeanne Stranc', NULL, 'GotUtahHouses@live.com', 'Coldwell Banker', NULL, NULL, NULL, 'Novation Title', '6955 S Union Park Center', '500 South', 'Midvale', '44', '84032', 'Cyndi Burrola', 'CyndiTeam@novationtitle.com', '8017278420', '2021-10-04', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-04 20:17:32', '2021-10-04 20:22:44'),
(497, 1, 1, 1, 'escrow-officer', '3474 S Bloomington Dr W', NULL, 'St. George', 'Utah', '84790', 'Kathryn Wiley', '541-668-1177', 'bcbradshaw1@yahoo.com', 'No Buyer Agent Name', NULL, NULL, 'Presidio Real Estate', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, 'Realty ONE Group Goldmarks', NULL, NULL, 'josh@dixietitleco.com', 'Dixie Title Company', '205 E. Tabernacle St', 'Suite 1', 'SAINT GEORGE', '44', '84770', 'Josh Westbrook', 'josh@dixietitleco.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-04 20:42:07', '2021-10-04 20:42:14'),
(498, 5, 1, 1, NULL, '300 N. COLLEGE STREET', NULL, 'HOWE', 'TEXAS', '75459', 'TIMOTHEY PERRY AND BOBBI WEBB', '469-422-1768', 'tapperry@live.com', 'SHERYL YOWELL', '903-821-7653', 'YOURREALTORSHERYL@GMAIL.COM', 'RE/MAX SIGNATURE PROPERTIES', 'TINA WASHERLESKY', '972-850-8148', 'Tina@PremierTransactions.net', 'TAMMY ABBATEA DN ALEXIS TARKOWSKI', '214-7550377', 'momofthreeaar@gmail.com', 'KYLE OWENS', '214-458-3000', 'KYLEOWENSREALTOR@GMAIL.COM', 'JPAR CEDAR HILL', NULL, NULL, NULL, 'RED RIVER TITLE COMPANY', '805 W. White St.', 'Ste. 300', 'Anna', '43', '75409', 'BRITTANY ELEBY', 'BELEBY@REDRIVERTITL.COM', '972-924-8777', '2021-10-14', 'MICHELLE PARNELL', 'MPARNELL@REDRIVERTITLE.COM', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-04 21:10:01', '2021-10-04 21:10:24'),
(499, 1, 1, 1, 'buyer-agent', '4897 Rose Quartz Rd', NULL, 'Herriman', 'Utah', '84096', 'Benjamin Cosner & Rebecca Stuhff', '000-000-0000', 'TheBeardedJeweler@gmail.com', 'Shauna Winters', NULL, 'Shauna.utahrealestate@gmail.com', 'KW Utah Realtors Keller Williams', NULL, NULL, NULL, 'Freebairn', NULL, NULL, 'Annette Wills', NULL, 'annette@hiveutah.com', 'Hive Property Solutions', NULL, NULL, NULL, 'First American', NULL, NULL, NULL, '44', NULL, 'Melinda Romero', 'TeamMelinda@firstam.com', NULL, '2021-10-20', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-04 21:35:46', '2021-10-04 21:37:17'),
(500, 1, 1, 2, 'escrow-officer', '370 West 1425 North', '29', 'Cedar City', 'Ut', '84721', 'Trevor Sudweeks', '435-773-7105', 'sudweeksrei@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Jeff Tengberg', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Meridian Title Company', '558 E Riverside Dr, Ste 205', NULL, 'St. George,', '44', '87490', 'Jerrod Phillips', 'jerrod@mtcutah.com', '435-319-8022', '2021-10-04', NULL, NULL, 'The Seller', NULL, NULL, NULL, 425, 425, 0, 2, '2021-10-04 22:22:46', '2021-10-04 22:23:02'),
(501, 1, 1, 1, 'escrow-officer', '3715 W Christyann Dr', NULL, 'Taylorsville', 'UT', '84129', 'Cesar and Elizabeth Ramirez', '222-222-2222', 'ramirez.cesar104@gmail.com', 'Karla Rivera', NULL, 'karla@gamboateam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ISHMAEL VILLARROEL', NULL, 'ishmaelv@ranlife.com', NULL, NULL, NULL, NULL, 'Novation title', '6955 S Union Park Center', '210', 'Midvale', '44', '84047', 'Joe Cespedes', 'joeteam@novationtitle.com', NULL, '', NULL, NULL, 'The Buyer\'s Agent', NULL, 'Sandra Perkins', NULL, 400, 400, 0, 2, '2021-10-04 22:23:07', '2021-10-04 22:23:17'),
(502, 5, 2, 1, 'escrow-officer', '2503 CREEKLEAF ROAD', NULL, 'HOUSTON', 'TEXAS', '77068', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'DEBRA A HUFFMAN', NULL, NULL, 'TERRY BENES', '7132913220', 'TERRYBENES11@GMAIL.COM', 'WALZEL PROPERTIES', NULL, NULL, NULL, 'STEWART TITLE', '19450 SH 249 SUITE 250', NULL, 'HOUSTON', '43', '77070', 'REBECCA WIPF', 'REBECCA.WIPF@STEWART.COM', '2813748700', '2021-10-15', 'GREG DANIELS', 'GREGORY.DANIELS@STEWART.COM', 'The Seller', NULL, NULL, NULL, 445, 445, 0, 2, '2021-10-04 23:28:14', '2021-10-04 23:28:42'),
(503, 1, 1, 1, 'escrow-officer', '5373 South Peachwood Circle', NULL, 'Taylorsville', 'UT', '84129', 'Holden and McKenzie Smith', '8019286243', NULL, 'Damon Hudson', '8017558912', 'agent.hudsonrealty@gmail.com', 'Top Equity Real Estate', NULL, NULL, NULL, 'David Shaffer', NULL, NULL, 'Elissa Tran', NULL, 'agent.hudsonrealty@gmail.com', NULL, NULL, NULL, 'teamhwoolsey@securedlandtitle.com', 'Secured Land Title', '7090 South Union Park Ave', 'Ste 425', 'Midvale', '44', '84047', 'Heather Woolsey', 'heather.woolsey@securedlandtitle.com', '8014885340', '2021-10-04', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-04 23:39:26', '2021-10-04 23:39:39'),
(504, 5, 1, 1, 'buyer-agent', '45 N State Highway 95', NULL, 'Little River-Academy', 'Texas', '76554', 'Paulina Segoviano', '254-295-3402', 'psegoviano5@gmail.com', 'Kim Shaw', '254-681-1889', 'kimshaw.realestate@gmail.com', 'Texas Bound Real Estate', 'Sol Lockhart', '254-466-5088', 'texasboundre@gmail.com', 'Kristeena Loos', NULL, 'str82u39@yahoo.com', 'Kim Shaw', '254-681-1889', 'kimshaw.realestate@gmail.com', 'Texas Bound Real Estate', NULL, NULL, NULL, 'Monteith Abstract & Tile', '2010 Bird Creek Dr', NULL, 'Temple', '43', '76502', 'Theresa Schuetze', 'theresa.schuetze@monteithtitle.com', NULL, '2021-10-15', NULL, NULL, 'The Seller', NULL, NULL, NULL, 575, 575, 30, 2, '2021-10-05 00:40:17', '2021-10-05 00:40:37'),
(505, 5, 1, 1, 'escrow-officer', '1516 Clearview Loop', NULL, 'Round Rock', 'TX', '78664', 'Rachel Ward', '2086406275', 'raward26@gmail.com', 'Erin Turnley', NULL, 'erinturnley@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Albert Allen', NULL, 'albertallen@realtyaustin.com', NULL, NULL, NULL, NULL, 'Capital Title of Texas', '6850 Austin Center Blvd #127', NULL, 'Austin', '43', '78731', 'Samantha Conkey', 'sconkey@ctot.com', '5122220222', '2021-10-12', NULL, 'mluskey@ctot.com', 'The Buyer', NULL, NULL, NULL, 545, 545, 0, 2, '2021-10-05 01:17:19', '2021-10-05 01:17:33'),
(506, 5, 1, 1, 'escrow-officer', '17302 Lake Wood Circle', NULL, 'Dripping Springs', 'TX', '78620', 'Ryan Jones and Heather Martens', '5128009306', 'heather.ryanjones@gmail.com', 'Rebecca Mast', '5126105000', 'rebecca@avalaraustin.com', 'Avalar Austin Real Estate', NULL, NULL, NULL, 'Marco and Janie Hernandez', '512-894-3860', 'taylor.prassel@independencetitle.com', 'Ruth Lunday', '512-736-2900', 'ruthlunday@realtyaustin.com', 'Realty Austin', NULL, NULL, NULL, 'Independence Title', '310 US-290', NULL, 'Dripping Springs', '43', '78620', 'Gail Hagemann', 'teamhagemann@independencetitle.com', '512-894-3860', '2021-10-07', 'Taylor and Denise', 'taylor.prassel@independencetitle.com', 'The Seller', 'Will be put on the settlement statement for payment (seller-paid).', NULL, NULL, 445, 445, 0, 1, '2021-10-05 01:58:55', '2021-10-05 01:58:55'),
(507, 5, 1, 1, 'escrow-officer', '17302 Lake Wood Circle', NULL, 'Dripping Springs', 'TX', '78620', 'Ryan Jones and Heather Martens', '512-800-9306', 'heather.ryanjones@gmail.com', 'Rebecca Mast', '512-610-5000', 'rebecca@avalaraustin.com', 'Avalar Austin Real Estate', NULL, NULL, NULL, 'Marco and Janie Hernandez', '512-589-5465', 'cardenas.janie@yahoo.com', 'Ruth Lunday', '512-736-2900', 'ruthlunday@realtyaustin.com', 'Realty Austin', NULL, NULL, NULL, 'Independence Title', '310 US -290', NULL, 'Dripping Springs', '43', '78620', 'Gail Hagemann', 'teamhagemann@independencetitle.com', '512-894-3860', '2021-10-07', 'Taylor Prassel', 'taylor.prassel@independencetitle.com', 'The Seller', 'Invoice will be paid at closing.', NULL, NULL, 445, 445, 0, 2, '2021-10-05 02:04:36', '2021-10-05 02:04:47'),
(508, 5, 1, 2, 'escrow-officer', '3030 McKinney Ave', '2301', 'Dallas', 'TX', '75204', 'Robert Akl', '(214) 972-1972', 'robert.akl@ashumcorp.com', 'Emily Ray-Porter', '214-544-5698', 'emily@daveperrymiller.com', 'Dave Perry-Miller', NULL, NULL, NULL, 'Peter Zielke', NULL, 'peterz@exigo.com', 'Raul Ruiz', NULL, 'raul.ruiz@alliebeth.com', NULL, NULL, NULL, 'ruizgroup@alliebeth.com', 'Tiago Title', '5950 Sherry Lane', '300', 'Dallas', '43', '75225', 'Makensey Wilson', 'makensey@tiagotx.com', NULL, '2021-10-27', 'Naomi Valentine', 'naomi@tiagotx.com', 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-05 02:04:55', '2021-10-05 02:05:03'),
(509, 1, 1, 1, NULL, '2901 Zuni Circle Circle', NULL, 'Springdale', 'ut', '84767', 'Carrie Cole Mulfinger, Trustee', '4352525248', 'cmulfinger@sbcglobal.net', 'Kristi Staker', '4356324858', 'krististaker@zionsrealtor.com', 'Summit', NULL, NULL, NULL, 'Shanon Linette Hunt', '(973) 294-2955', 'shanon.hunt@gmail.com', 'Kristi Staker', NULL, 'krististaker@zionsrealtor.com', NULL, NULL, NULL, NULL, 'Solidifi Title', '134 N 200 E', NULL, 'St4 GEorge', '44', '84770', 'Wes Jensen', 'wjensen@solidifi.com', '4352525248', '', NULL, NULL, 'The Seller', NULL, 'kristen Coombs', NULL, 500, 500, 0, 2, '2021-10-05 02:41:25', '2021-10-05 02:41:47'),
(510, 2, 1, 1, 'buyer-agent', '1486 E Ringneck Drive', NULL, 'Meridian', 'ID', '83646', 'Albert Butchino', '503-997-1675', 'albutchi@gmail.com', 'Julie Cendejas', '208.870.9563', 'julie@homesinboiseidaho.com', 'Keller Williams Realty Boise', NULL, NULL, NULL, 'Jeff Bowman', '503-318-9702', NULL, 'Julie Essig', '406-209-1024', 'offers@homesofidaho.com', 'Homes of Idaho', NULL, NULL, NULL, 'Pioneer Title', '775 S Rivershore', NULL, 'Eagle', '12', '83616', 'Michelle Cabbage', 'MCabbage@pioneertitleco.com', '208-938-7484', '2021-10-15', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-05 03:33:42', '2021-10-05 03:33:58'),
(511, 4, 1, 1, 'buyer-agent', '2133 W. Wilson Avenue', NULL, 'Coolidge', 'Arizona', '85128', 'Dominique Stewart', '(602) 820-9995', 'dstewart2014@yahoo.com', 'Briana Paskins', 'Briana Paskins', 'liz@aztcpros.com', 'AZ & Associates', 'Liz Saenz', '623-388-1641', 'liz@aztcpros.com', NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Empire West Title', '22719 S Ellsworth Rd. C-102', NULL, 'Queen Creek', '2', '85142', 'Joshua Hufstetler', 'jhufstetler@ewtaz.com', '(602) 749-7123', '2021-10-04', NULL, NULL, 'The Buyer', NULL, 'Dont know new rep', NULL, 550, 550, 0, 2, '2021-10-05 03:54:29', '2021-10-05 03:55:01'),
(512, 2, 1, 1, 'escrow-officer', 'test', NULL, 'boise', 'idaho', '85236', 'test buyer', '8888888888', 'buyre@buyer.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'ttle', 'jjjjjj', NULL, 'slc', '12', '845632', 'werer', 'test@test.com', NULL, '2021-10-05', NULL, NULL, 'The Seller', 'this is a note', 'sandra', NULL, 1155, 1155, 0, 1, '2021-10-05 04:20:39', '2021-10-05 04:20:39'),
(513, 2, 1, 1, 'escrow-officer', 'test street', NULL, 'boise', 'idaho', '85632', 'test buyer', '8888888888', 'kristin@acclaimehw.com', 'buyer agent', NULL, 'kcloveshomes@gmail.com', 'abc realty', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'title', 'jklkj;', NULL, 'boise', '12', '87456', 'name', 'email@email.com', NULL, '2021-10-05', NULL, NULL, 'The Seller', 'this is a test', 'sandra', NULL, 1155, 1155, 0, 2, '2021-10-05 04:21:59', '2021-10-05 04:22:04'),
(514, 4, 1, 1, 'buyer', 'mg road', '000', 'indore', 'Madhya Pradesh', '452001', 'Vikas Kumar', '9557822598', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Jmbliss It Solutions', 'mg road', '00', 'indore', '3', '452001', 'vikas', 'jmbliss13@gmail.com', NULL, '2021-10-05', NULL, NULL, 'The Buyer', 'This is for testing', 'vikas srivastav', NULL, 450, 450, 0, 2, '2021-10-05 12:52:56', '2021-10-05 12:53:12'),
(515, 5, 1, 1, 'buyer', 'mg road', '111', 'indore', 'Arkansas', '452001', 'Vikas Kumar', '9557822598', 'jmbliss13@gmail.com', 'No Buyer Agent Name', NULL, 'jmbliss13@gmail.com', NULL, NULL, NULL, 'jmbliss13@gmail.com', NULL, NULL, 'jmbliss13@gmail.com', 'No Seller Agent Name', NULL, 'jmbliss13@gmail.com', NULL, NULL, NULL, 'jmbliss13@gmail.com', 'Jmbliss It Solutions', 'mg road', '000', 'indore', '3', '452001', 'vikas srivastav', 'jmbliss13@gmail.com', NULL, '2021-10-05', NULL, 'jmbliss13@gmail.com', 'The Buyer', 'this is again for testing purpose', 'vksv', NULL, 445, 445, 0, 2, '2021-10-05 12:59:01', '2021-10-05 12:59:31'),
(516, 3, 1, 1, 'buyer-agent', 'test', NULL, 'las vegas', 'nv', '84111', 'uyer', '8888888888', 'kristin@acclaimedhw.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, 'las vegas', '28', '84111', 'name', 'email@email.com', NULL, '2021-10-15', NULL, NULL, 'The Seller\'s Agent', 'note', 'rep', NULL, 1395, 1395, 0, 2, '2021-10-05 16:45:38', '2021-10-05 16:45:45'),
(517, 1, 1, 1, NULL, 'test', NULL, 'slc', 'ut', '841111', 'buyer name', '8888888888', 'kcloveshomes@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'title', NULL, NULL, NULL, '44', '84111', 'name', 'kristincombsfemale@yahoo.com', NULL, '2021-10-15', NULL, NULL, 'The Seller', 'test', NULL, NULL, 1100, 1100, 0, 2, '2021-10-05 16:48:54', '2021-10-05 16:49:05'),
(518, 1, 1, 1, 'escrow-officer', 'mg road', '000', 'indore', 'Madhya Pradesh', '452001', 'Vikas Kumar', '9557822598', 'jmbliss13@gmail.com', 'No Buyer Agent Name', '9557822598', 'jmbliss13@gmail.com', 'Madhya Pradesh', 'Daniel', '9557822598', 'jmbliss13@gmail.com', 'Vinod Kushwah', '9557822598', 'jmbliss13@gmail.com', 'No Seller Agent Name', 'Shikha', 'jmbliss13@gmail.com', NULL, 'Priya', '9557822598', 'jmbliss13@gmail.com', 'Jmbliss It Solutions', 'mg road', '000', 'indore', '3', '452001', 'Vikas Srivastav', 'jmbliss13@gmail.com', '9557822598', '2021-10-05', 'Daniel Chongthu', 'jmbliss13@gmail.com', 'The Buyer', 'This is final testing for the admin and client email format.', NULL, NULL, 800, 800, 0, 2, '2021-10-05 18:33:23', '2021-10-05 18:33:58'),
(519, 2, 1, 1, 'escrow-officer', 'test', NULL, 'slc', 'utq', '84111', 'buyre name', '8888888888', 'kcloveshomes@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'title test', NULL, NULL, 'slc', '44', '84111', 'name', 'acclaimedhw@gmail.com', NULL, '2021-10-15', NULL, NULL, 'The Seller\'s Agent', NULL, NULL, NULL, 690, 690, 0, 2, '2021-10-05 18:58:41', '2021-10-05 18:58:49'),
(520, 5, 1, 2, 'escrow-officer', '6915 Old Post Loop', NULL, 'Austin', 'Texas', '78744', 'Hector Jurado', '9152222245', 'Hajurado@miners.utep.edu', 'Zachary Sagay', NULL, 'zac.sagay@davisagencytx.com', 'The Davis Agency', NULL, NULL, NULL, 'Connie Palomares', NULL, NULL, 'Felipe Garcia', NULL, 'felipe@teamprice.com', 'Team Price Real Estate', NULL, NULL, NULL, 'Key Title Group', NULL, NULL, NULL, 'Texas', NULL, 'Angela Hruska', 'teamangela@keytitlegroup.com', NULL, '2021-10-12', 'Michiline Koenen', 'michiline@keytitlegroup.com', 'The Seller', 'Please forward invoice to be collected at closing. Thank you!', NULL, NULL, 485, 485, 0, 2, '2021-10-05 19:15:18', '2021-10-05 19:15:29'),
(521, 5, 1, 1, NULL, '1746 10th St', NULL, 'Hempstead', 'Texas', '77445', 'Mandy Jennings', '281-745-5769', 'mandy@hegemeyer.com', 'Meliisa Hegemeyer', '281-744-8175', 'melissa@hegemeyer,com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Homeland Title', '820 13th st', NULL, 'Hempstead', 'Texas', '77445', 'Kelli Luetge', 'kluetge@homelandtitle.com', NULL, '2021-10-06', NULL, NULL, 'The Seller', NULL, 'Kyle Thomas', NULL, 625, 625, 0, 1, '2021-10-05 19:25:37', '2021-10-05 19:25:37'),
(522, 5, 1, 1, NULL, '1746 10th St', NULL, 'Hempstead', 'texas', '77445', 'Mandy Jennings', '281-745-5769', 'mandy@hegemeyer.com', 'Meliisa Hegemeyer', NULL, 'melissa@hegemeyer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Homeland Title', '1746 10th st', NULL, 'hempstead', 'Texas', '77445', 'Kelli Luetge', 'kluetge@homelandtco.com', NULL, '2021-10-06', NULL, NULL, 'The Seller', NULL, 'Kyle Thomas', NULL, 625, 625, 0, 2, '2021-10-05 19:31:11', '2021-10-05 19:31:22'),
(523, 5, 1, 1, NULL, '12022 Greenwood Estates Dr', NULL, 'Houston', 'Texas', '77066', 'David & Julie Buchheister', '832-396-1249', 'julie.buchhesiter@gmail.com', 'David Pichowsky', NULL, 'david.pichowsky@redfin.com', 'Redfin', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'First American TItle', '520 Post Oak BLVD', '100', 'Houston', 'Texas', '77027', 'Cy Cruz', 'Cycruz@firsam.com', '713-623-8384', '2021-10-05', NULL, NULL, 'The Seller', NULL, NULL, NULL, 625, 625, 0, 2, '2021-10-05 19:48:21', '2021-10-05 19:48:31'),
(524, 5, 1, 1, 'buyer-agent', '1918 Foreland Dr', NULL, 'Houston', 'Texas', '77077', 'Jerry', 'Vogt', 'Jerry.Vogt@outlook.com', 'Billie Jean Harris', '713-825-2647', 'bharris@remax-east.com', 'REMAX East', 'Elijah Warren', '346-606-7158', 'elijahwarren@remax-east.com', 'Sian Leonie Gray', NULL, NULL, 'Kristi Nickel', '713-443-5720', 'knickel94@yahoo.com', 'CB&A Realtors', NULL, NULL, NULL, 'Providence Title Company', '20333 Highway 249', 'Ste. 200', 'Houston', 'Texas', '77070', 'Noel Wasson', 'nwasson@protitletx.com', '281-430-3200', '2021-10-12', 'Ashley DeBoer', 'adeboer@protitletx.com', 'The Seller', NULL, 'Roy Davis', NULL, 770, 770, 0, 2, '2021-10-05 20:14:42', '2021-10-05 20:16:25'),
(525, 1, 2, 1, NULL, '2176 Southgate Hills Drive S 31', NULL, 'St George', 'Ut', '84770', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'David J Hansen', '000-000-0000', '000@gmail.com', 'RaNita Parrish', '435.668.6924', 'ranita.parrish@sothebysrealty.com', 'Summit Sotheby\'s International Realty', 'Cindy Smith', '4356280400', 'cindy.smith@summitsothebysrealty.com', 'Southern Utah Title', '1224 S River Road', 'A101', 'St George', 'Utah', '84790', 'Becky Hunt', 'becky@sutc.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Kristin Combs', NULL, 300, 300, 0, 2, '2021-10-05 20:45:53', '2021-10-05 20:46:05'),
(526, 1, 1, 1, NULL, '1184 E Bryan Ave', NULL, 'Salt Lake City', 'UT', '84105', 'Maurena Nauman', '605.771.9996', 'maurena.faye@gmail.com', 'Tori Tarver', NULL, 'coordinator@peakcollectivegroup.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Molly Jones', NULL, 'mollyjoneshomes@gmail.com', NULL, NULL, NULL, NULL, 'Meridian Title Utah', NULL, NULL, NULL, 'Utah', NULL, 'Brandy Kramer', 'brandyteam@mtcutah.com', NULL, '2021-10-23', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-05 20:48:35', '2021-10-05 20:48:45'),
(527, 1, 1, 1, NULL, '1682 West 50 North', NULL, 'Pleasant Grove', 'Utah', '84062', 'Pedro Barreto Camacaro', '8012222222', 'pedritobarreto@hotmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'US Title Insurance', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-05 21:14:37', '2021-10-05 21:14:41'),
(528, 5, 1, 1, 'escrow-officer', '18108 Monarch butterfly Way', NULL, 'Pflugerville', 'TX', '78660', 'Valerie & Heroides Aguire', '210-878-5920', 'daaguirres@gmail.com', 'Lori Thomison', '5125777577', 'lorimyagent@gmail.com', 'Compass Realty', NULL, NULL, NULL, 'Walter Kolinek', NULL, NULL, 'AJ Dela Cruz', NULL, 'ajdelacruz@fuserealty.com', NULL, NULL, NULL, NULL, 'Texas National Title', '2705 Bee Cave Road', 'Suite 150', 'Austin', 'Texas', '78746', 'Stacey Johnson', 'teamjohnson@texasnationaltitle.com', '5123819910', '2021-10-15', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-05 21:26:45', '2021-10-05 21:27:09'),
(529, 5, 1, 1, NULL, '6601 FM 563', NULL, 'Liberty', 'tx', '77575', 'Richard DeLuna', '(832)455-3648', 'rad0923@yahoo.com', 'Rebecca Johnson', '(281)515-9194', 'beckyjohnsonsoldit@gmail.com', 'JLA Realty', NULL, NULL, NULL, 'Richard Cope', NULL, 'richcope@att.net', 'Tara Hanel', '(713)302-4623', 'tarahanel.jlarealty@gmail.com', 'JLA Realty', NULL, NULL, 'assistant.jlarealty@gmail.com', 'First American Title Company', '14626 FM 2100', 'Suite D', 'Crosby', 'Texas', '77532', 'Allison Wilson', 'amwilson@firstam.com', NULL, '2021-10-08', 'Katie Fitzpatrick', 'kfitzpatrick@firstam.com', 'The Seller', NULL, NULL, NULL, 600, 600, 55, 2, '2021-10-05 23:05:43', '2021-10-05 23:06:12'),
(530, 5, 1, 1, NULL, '13326 Tusayan', NULL, 'Universal City', 'texas', '78148', 'Hugo Bustos', '2107488566', 'hugo64697@gmail.com', 'Jennifer Goodwin', '3606029609', 'jennaplevich@gmail.com', 'Offerlist Realty LLC', NULL, NULL, NULL, 'Michael Flanigan', '0000000000', 'mflanigan@satx.rr.com', 'Brooke Hamilton', '3253740746', 'brookehamiltonrealtor@gmail.com', 'Keller Williams', NULL, NULL, NULL, 'Old Republic Title', '290 S. Castell Ave., Ste. 200', NULL, 'New Braunfels', 'Texas', '78130', 'Angie Hicks', 'ahicks@oldrepublictitle.com', '8306081551', '2021-10-18', 'Dakota Pape', 'dpape@oldrepublictitle.com', 'The Seller', NULL, NULL, NULL, 785, 785, 160, 2, '2021-10-06 00:34:40', '2021-10-06 00:35:20'),
(531, 1, 1, 1, 'buyer-agent', '4334 N Peppercorn Rd', NULL, 'Lehi', 'UT', '84043', 'Davis Irwin & Stephanie Nolasco', 'don\'t have', NULL, 'Brittany Hatch', '801-513-7232', 'hatchbk@gmail.com', 'KW Utah Realtors Keller Williams', 'Michelle Miner', NULL, 'Michelle_Miner@MTwoSolutions.com', 'Carolyn Murrow', '541-729-1528', 'murrowcarolyn@gmail.com', 'Campbell Dosch', '801-413-4702', 'campbell.dosch@redfin.com', 'Redfin', 'Rachel Marez', '801-613-2003', 'rachel.marez@redfin.com', 'Sutherland Title', '344 West 13800 South', NULL, 'Draper', 'Utah', '84020', 'Julianne Bennett', 'julianne@sutherlandtitle.com', '801-266-4466', '2021-10-15', 'Ali Dupaix', 'ali@sutherlandtitle.com', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-06 00:35:03', '2021-10-06 00:35:29'),
(532, 1, 1, 1, 'escrow-officer', '2114 East Fardown Avenue', NULL, 'Holladay', 'Utah', '84121', 'Melissa Erickson', '8017551814', 'msberickson@gmail.com', 'Cad Cauley', '801-680-7653', 'cadandkarrie@yahoo.com', 'Coldwell Banker Residential Bkrg - Union Heights', NULL, NULL, NULL, 'Sharon Lahey', NULL, NULL, 'Hamid Hosseini', '(801)450-2100', 'teresateam@trulytitle.com', 'Chase Realty, LLC', NULL, NULL, NULL, 'Truly Title', '6965 South Union Park Center', '180', 'Cottonwood Heights', 'Utah', '84047', 'Teresa Troske', 'teresateam@trulytitle.com', '8019967456', '2021-10-05', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 700, 700, 100, 2, '2021-10-06 01:19:16', '2021-10-06 01:19:38'),
(533, 1, 1, 1, 'buyer-agent', '12861 S Keri Lynn Dr', NULL, 'Riverton', 'UT', '84065', 'Sam & Alex Raygoza', '803-354-1164', 'alex.raygoza28@gmail.com', 'Melissa Becknell', NULL, 'melissa@theroxburghgroup.com', NULL, NULL, NULL, NULL, 'Anthon & Shaley Gustin', NULL, NULL, 'Tricia VanderKooi', NULL, 'tricia@moreutahhomes.com', NULL, NULL, NULL, NULL, 'Meraki Title', NULL, NULL, NULL, 'Utah', NULL, 'Jake Sorensen', 'teamjake@merakititle.com', NULL, '', NULL, NULL, 'The Buyer', NULL, 'Sean McCrady', NULL, 500, 500, 0, 2, '2021-10-06 02:03:51', '2021-10-06 02:04:26'),
(534, 5, 1, 1, 'escrow-officer', '1104 Renaissance Trl', NULL, 'Round Rock', 'TX', '78665', 'Yarin Gaon', '773-543-7232', NULL, 'Or Yochanan', NULL, 'sarah.combs@independencetitle.com', 'TX', NULL, NULL, NULL, NULL, NULL, NULL, 'Celena Martinez', NULL, 'sarah.combs@independencetitle.com', 'TX', NULL, '5122559593', NULL, 'Independence Title', '101 E Old Settlers Blvd # 110', NULL, 'Round Rock', 'Texas', '78664', 'Becky Kilfoy', 'becky.kilfoy@independencetitle.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 650, 650, 105, 1, '2021-10-06 02:43:23', '2021-10-06 02:43:23'),
(535, 5, 1, 1, NULL, '1104 Renaissance Trl', NULL, 'Round Rock', 'TX', '78665', 'Yarin Gaon', '773-543-7232', NULL, 'Or Yochanan', NULL, 'sarah.combs@independencetitle.com', 'TX', NULL, '5122559593', NULL, NULL, NULL, NULL, 'celena martinez', NULL, 'sarah.combs@independencetitle.com', 'TX', NULL, '5122559593', 'sarah.combs@independencetitle.com', 'Independence Title', '101 E Old Settlers Blvd # 110', NULL, 'Round Rock', 'Texas', '78664', 'Becky Kilfoy', 'becky.kilfoy@independencetitle.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 545, 545, 0, 2, '2021-10-06 02:46:53', '2021-10-06 02:47:10'),
(536, 2, 2, 1, NULL, '3725 W Sage Creek Dr', NULL, 'Boise', 'ID', '83714', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Tim McCleary', '208-860-3774', 'timsellsidaho@gmail.com', 'Tim McCleary', '208-860-3774', 'timsellsidaho@gmail.com', 'Silvercreek Realty Group', NULL, NULL, NULL, 'David Modrow', NULL, NULL, 'Eagle', 'Idaho', NULL, 'David Modrow', 'david@acclaimedhw.com', '208-789-1354', '2021-11-30', NULL, NULL, 'The Seller', 'Per David Marrow - listing coverage is free. THis will be converted to a Ultimate Plan at closing.  Silvercreek Realty Group', 'David Modrow', NULL, 300, 300, 0, 1, '2021-10-06 03:13:51', '2021-10-06 03:13:51'),
(537, 2, 1, 1, 'buyer-agent', '509 E Pisa Dr', NULL, 'Meridian', 'ID', '83642', 'James Irving', '907-240-9945', 'jirving@pspipe.com', 'Tim McCleary', '208-860-3774', 'timsellsidaho@gmail.com', 'Silvercreek Realty Group', 'Debra Toshi', '208-278-4308', 'debra@mikebrowngroup.com', 'Matt Hamilton', NULL, NULL, 'Diana Reynolds', '208-562-9300', 'diana@mikebrowngroup.com', 'Silvercreek Realty Group', NULL, NULL, NULL, 'TitleOne', '1940 S Bonito Way', '190', 'Meridian', 'Idaho', '83642', 'Camille Vanscoy', 'teamcvanscoy@titleonecorp.com', '208-493-6346', '2021-10-20', 'Cheri Cummins', 'ccummins@titleonecorp.com', 'The Buyer\'s Agent', 'Per David Modrow, the fee for the Ultimate Plan w/out re-key is $450. Silvercreek Realty Group Discount', 'David Modrow', NULL, 500, 500, 0, 2, '2021-10-06 04:08:08', '2021-10-06 04:11:37'),
(538, 1, 1, 1, NULL, '6065 W Long Valley Ct', NULL, 'West Valley City', 'Utah', '84128', 'Jeremy Meza', '8015025712', NULL, 'Aries Jepson', NULL, 'teamtina@vtitleutah.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patricia Rivera', NULL, 'pbrivera@hotmail.com', NULL, NULL, NULL, NULL, 'Vanguard Title', '6925 Union Park Ctr', NULL, 'Murray', 'Utah', '84047', 'Tina Castillo', 'teamtina@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-06 21:11:43', '2021-10-06 21:11:48'),
(539, 1, 1, 1, 'escrow-officer', '12342 South Estates Way', NULL, 'Draper', 'Utah', '84020', 'Paul Balding', '801-706-8858', 'paul@ferreusmtg.com', 'Cad Cauley', NULL, 'cadandkarrie@yahoo.com', 'Coldwell Banker Residential Bkrg - Union Heights', NULL, NULL, NULL, 'Jon Garza and Whitney Garza', NULL, NULL, 'Grey Garza', NULL, 'grey@tlgcompany.com', 'RE/MAX Associates So. Davis', NULL, NULL, NULL, 'Truly Title', '6965 S Union Park Center', '180', 'Cottonwood Heights', 'Utah', '84047', 'Teresa Troske', 'teresateam@trulytitle.com', '8019967456', '2021-10-05', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-06 22:05:10', '2021-10-06 22:05:19'),
(540, 1, 1, 1, 'escrow-officer', '187 N. Kimette', NULL, 'St. George', 'ut', '84790', 'Brigitte and Brent Carlson', '801-443-1090', 'brigettecarlson7@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Wayne Carlson', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Vanguard Title Insurance', '15 N Main Street', NULL, 'St. George', 'Utah', '84770', 'Kiley Blood', 'kiley@vtitleutah.com', '435-767-0041', '2021-10-06', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-06 22:16:13', '2021-10-06 22:16:19'),
(541, 5, 1, 1, 'escrow-officer', '9606 Birdnest Trail', NULL, 'Sugar Land', 'TX', '77498', 'Andrea Arzola', '832-932-5434', 'andreaarzola6@gmail.com', 'Deborah Bly', '832-932-5434', 'gee@agentbly.com', 'eXP Realty', NULL, NULL, NULL, 'Orchard Property I', NULL, NULL, 'Chris Ward', NULL, 'chris.ward@orchard.com', NULL, NULL, NULL, 'tc@orchard.com', 'Orchard Title', '7300 Lone Star C200, Plano, TX 75024', NULL, 'Plano', 'Texas', '75024', 'Khal Matrood', 'khal.matrood@orchardnationaltitle.com', NULL, '2021-10-07', 'Rachel Lundquist', 'rachel.lundquist@orchardnationaltitle.com', 'The Seller', 'Can we please get an invoice/receipt ASAP?', NULL, NULL, 500, 500, 55, 2, '2021-10-06 22:23:21', '2021-10-06 22:23:51'),
(542, 1, 1, 1, 'buyer-agent', '1275 W 200 N', NULL, 'Vernal', 'UT', '84078', 'Joseph and Andrea Thomas', '8105204104', 'joeythomas1986@gmail.com', 'Regina Price', NULL, 'realtorreginaprice@gmail.com', 'x2Move Real Estate', 'Teryn Mozaffari', NULL, 'Teryn@utahtransactions.com', NULL, NULL, NULL, 'Nancy Jean Thorlaksen', NULL, 'nthorlaksen@hotmail.com', NULL, NULL, NULL, NULL, 'Old Republic Title', NULL, NULL, NULL, 'Utah', NULL, 'Team Velo', 'teamvelo@oldrepublictitle.com', NULL, '2021-11-02', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-06 22:31:35', '2021-10-06 22:31:41'),
(543, 1, 1, 1, NULL, '739 E Sandy Dunes Drive', NULL, 'Sandy', 'UT', '84094', 'Jeremias M. Lopez', '(801)231-9143', NULL, 'Ernesto Lopez', '(801)231-9143', 'ernestolopez267@gmail.com', NULL, NULL, NULL, NULL, 'Whitney Pye', NULL, NULL, 'Richard Harman', NULL, 'richie@westernmanagement.net', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '2021-10-19', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-06 22:33:31', '2021-10-06 22:33:39'),
(544, 1, 1, 1, 'escrow-officer', '876 East Red Sage Lane', '#3', 'Millcreek', 'Utah', '84107', 'Gwen Taboada', '(561)601-4645', 'gwen.taboada92@gmail.com', 'Scott Mills', '(801)808-3483', 'scott@mansellrealestate.com', 'Mansell Real Estate', NULL, NULL, NULL, 'Edward Hsu', NULL, NULL, 'Robert Aubrey', NULL, 'rob@aubrey.net', NULL, NULL, NULL, NULL, 'First American Title Insurance Agency', '6985 S Union Park Center', '#170', 'Midvale', 'Utah', '84047', 'Traci Christiansen', 'tchristiansen@firstam.com', '801-562-2212', '2021-10-06', 'Kate Smalley', 'ksmalley@firstam.com', 'The Seller', NULL, 'Kristin Combs', NULL, 550, 550, 50, 2, '2021-10-06 22:42:06', '2021-10-06 22:54:38'),
(545, 1, 1, 1, 'escrow-officer', '2930 E. 450 N.', 'Unit F1', 'St. George', 'utah', '84790', 'Brigette and Brent Carlson', '801-443-1090', 'brigettecarlson7@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Wayne Carlson', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Vanguard Title Insurance', '15 N Main Street', NULL, 'St. George', 'Utah', '84770', 'Kiley Blood', 'kiley@vtitleutah.com', '435-767-0041', '2021-10-06', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-06 22:48:04', '2021-10-06 22:48:12'),
(546, 2, 1, 1, NULL, '2095 W Waltman St', NULL, 'Meridian', 'ID', '83642', 'Russell M Kirsch and Janet Byers Kirsch', '208 869 6496', 'janbk72@gmail.com', 'Jodi Harada', '208 371 0132', 'jodi@platinumidaho.com', 'Platinum Idaho Real Estate', 'Chris Stafford', '208 319 3490', 'chris@platinumidaho.com', 'Karen Christensen', NULL, NULL, 'David Nielsen', '208 724 5256', 'david@platinumidaho.com', 'Platinum Idaho Real Estate', 'Chris Stafford', '208 319 3490', 'chris@platinumidaho.com', 'TitleOne', '1940', 'S Bonito Way, Ste 190', 'Meridian', 'Idaho', '83642', 'Tara Clifford', 'TeamTClifford@titleonecorp.com', NULL, '2021-10-13', NULL, NULL, 'The Buyer\'s Agent', 'Listing Coverage contract AHW0015252', 'David Modrow', NULL, 500, 500, 0, 2, '2021-10-06 23:22:17', '2021-10-06 23:22:32'),
(547, 1, 1, 1, NULL, '1207 Tamara Street', NULL, 'Sandy', 'Utah', '84094', 'Peter Mills', '8015531800', NULL, 'Ryan Birdsley', '8013478000', 'ryan.birdsley@gmail.com', 'Influence Realty and Relocation', NULL, NULL, NULL, 'Steve and Phenprapha  Somchith', NULL, NULL, 'Anthony Hellman', '801-809-6133', 'teamjake@vtitlutah.com', 'KW Utah Realtors Keller Williams', NULL, NULL, NULL, 'Vanguard Title', '11910 S. State St.', '150', 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@vtitleutah.com', '8015531800', '2021-10-04', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-06 23:31:13', '2021-10-06 23:31:26');
INSERT INTO `realstate_orders` (`id`, `p_location_id`, `p_coverage_type_id`, `p_property_type_id`, `i_am_the`, `prop_street1`, `prop_street2`, `prop_city`, `prop_state`, `prop_zipcode`, `buyer_name`, `buyer_phone`, `buyer_email`, `buyer_agentname`, `buyer_agentphone`, `buyer_agentemail`, `buyer_realstate_company`, `buyer_coordinatorname`, `buyer_coordinatorphone`, `buyer_coordinatoremail`, `seller_name`, `seller_phone`, `seller_email`, `seller_agentname`, `seller_agentphone`, `seller_agentemail`, `seller_realstate_company`, `seller_coordinatorname`, `seller_coordinatorphone`, `seller_coordinatoremail`, `escrow_title`, `escrow_street1`, `escrow_street2`, `escrow_city`, `escrow_state`, `escrow_zipcode`, `closing_officername`, `closing_officeremail`, `closing_officerphone`, `closing_date`, `escrow_assistantname`, `escrow_assistantemail`, `order_biller`, `order_notes`, `sales_person`, `coupon_code`, `total_amount`, `net_amount`, `credit_balance`, `order_status`, `created_at`, `updated_at`) VALUES
(548, 5, 1, 1, 'buyer-agent', '6621 HONEY HILL', NULL, 'SAN ANTONIO', 'TEXAS', '78229', 'YILI LAI', '8329142566', 'YLSLAI7@GMAIL.COM', 'YEN YAN', NULL, 'YENYAN78230@GMAIL.COM', 'KELLER WILLIAMS', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'CAPITAL TITLE', NULL, NULL, NULL, 'Texas', NULL, 'SANDRA CASTRO', 'SCASTRO@CTOT.COM', NULL, '2021-09-07', NULL, NULL, 'The Seller', NULL, 'RACHEL TOSCANO', NULL, 595, 595, 50, 2, '2021-10-06 23:33:48', '2021-10-06 23:34:10'),
(549, 5, 1, 1, 'escrow-officer', '733 Ticonderoga Dr', NULL, 'Garland', 'tx', '75043', 'Paola Gonzalez', '2143267961', NULL, 'MJ Silvia', NULL, 'paige.perkins@fnf.com', NULL, NULL, NULL, NULL, 'Roberta E Ray and Linda Warren', NULL, NULL, 'Gabriel Rhodes', NULL, 'paige.perkins@fnf.com', NULL, NULL, NULL, NULL, 'Fidelity National Title', '8501 Wade Blvd', '1050', 'Frisco', 'Texas', '75034', 'Arturo DeLeon', 'arturo.deleon@fnf.com', NULL, '2021-10-11', 'Paige Perkins', 'paige.perkins@fnf.com', 'The Seller\'s Agent', 'being paid at closing, send to escrow assistant', NULL, NULL, 550, 550, 5, 2, '2021-10-07 01:42:04', '2021-10-07 01:42:17'),
(550, 1, 1, 1, NULL, '337 Raj Nagar Sector-E Indore', NULL, 'INDORE', 'MADHYA PRADESH', '452002', 'VinodKushah', '09669021531', 'vinod.k.jmbliss@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'vinod.k.jmbliss@gmail.com', 'fgdfgd', '33 raj nagar', NULL, 'indore', 'Idaho', '454645', 'gfh', 'vinod.k.jmbliss@gmail.com', '09669021531', '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 400, 400, 0, 1, '2021-10-07 10:24:02', '2021-10-07 10:24:02'),
(551, 1, 1, 3, 'escrow-officer', 'Mg Road', '123', 'Indore', 'Madhya Pradesh', '452001', 'Vikas', '9557822598', 'jmbliss13@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Jmbliss', 'Mg Road', '000', 'Utah', 'California', '123456', 'Ankit', 'jmbliss13@gmail.com', '1234567890', '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 695, 695, 0, 1, '2021-10-07 10:28:59', '2021-10-07 10:28:59'),
(552, 2, 2, 1, NULL, 'mg road', NULL, 'indore', 'Madhya Pradesh', '452001', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'vikas', '9557822598', 'jmbliss13@gmail.com', 'No Seller Agent Name', NULL, 'jmbliss13@gmail.com', NULL, NULL, NULL, NULL, 'Jmbliss It Solutions', 'mg road', NULL, 'indore', 'Idaho', '452001', 'Vikas Srivastav', 'jmbliss13@gmail.com', NULL, '2021-10-07', NULL, NULL, 'The Seller', 'Hello, this is testing for realestate order mail test', NULL, NULL, 300, 300, 0, 2, '2021-10-07 11:00:47', '2021-10-07 11:01:07'),
(553, 5, 1, 1, 'escrow-officer', '13611 Indigo Spires Drive', NULL, 'Cypress', 'TX', '77429', 'Cynthia Haberman', '(281) 460-4883', 'cynthiahaberman@sbcglobal.net', 'Laura LoGiudice', '713-320-0562', 'laura@laurasellshouston.com', 'Re/Max Elite Properties', NULL, NULL, NULL, 'Joseph Barnes', '(409) 256-0914', 'jdbarnes63@gmail.com', 'Jared English', '970-812-2950', 'support@congressrealty.com', 'Congress Realty Inc', NULL, NULL, NULL, 'Capital Title', '8917 Louetta Rd', '100', 'Houston', 'Texas', '77379', 'Judy Sin', 'teamjudy@ctot.comk', '832-559-7243', '2021-10-08', 'Jacqueline Murray', 'JMurray@ctot.com', 'The Buyer', NULL, 'Kyle Thomas', NULL, 550, 550, 5, 2, '2021-10-07 18:27:13', '2021-10-07 18:28:40'),
(554, 5, 1, 1, 'buyer-agent', '3047 Peterson Circle', NULL, 'Bryan', 'Texas', '77802', 'Edgar & Christie Martinez', '9793245211', 'cgal0212@gmail.com', 'Monica Palasota', '9795716109', 'MPALASOTA@REMAX.NET', 'TX', NULL, '9795716109', NULL, 'Avery Kramer', NULL, NULL, 'Joy Coldwell', NULL, 'joy@coventryglenrealty.net', NULL, NULL, NULL, NULL, 'Lawyer\'s Title', '1450 Copperfield', NULL, 'COLLEGE STATION', 'Texas', '77824', 'Lori Smith', 'lori@ltc-bc.com', '9797763600', '2021-10-15', NULL, 'lori@ltc-bc.com', 'The Seller', NULL, 'Paul Anderson- The Best', NULL, 625, 625, 0, 2, '2021-10-07 19:55:25', '2021-10-07 19:55:52'),
(555, 3, 1, 1, NULL, '728 Spotted Eagle', NULL, 'Henderson', 'NV', '89015', 'Kristina Waier', '7326443573', 'kgeth28@gmail.com', 'Angie Lee', '7024961339', 'theleeteamnv@gmail.com', 'Advantage Realty', NULL, NULL, NULL, NULL, NULL, NULL, 'Noah Bates', '7025514381', 'noah@lvrustic.com', 'Rustic Properties', 'Kim Karandos', NULL, 'kim@lvrustic.com', 'First American Title', '10000 W Charleston', '180', 'las Vegas', 'Nevada', '89135', 'Monica Ruiz', 'monicaruiz@firstam.com', '7022515039', '2021-10-08', 'Linda Stubbs', 'lstubbs@firstam.com', 'The Buyer', NULL, NULL, NULL, 475, 475, 0, 2, '2021-10-07 22:41:53', '2021-10-07 22:42:10'),
(556, 3, 1, 5, 'buyer-agent', '1661 Lamont St', NULL, 'Las Vegas', 'NV', '89115', 'Reynaldo Martinez', '702-326-7223', 'hollywoodfurniture199@gmail.com', 'Flavio Jimenez', '702-622-6886', 'closing@sourcerealtynv.com', 'Source Realty', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'WFG National Title', '4000 S Eastern Ave.', '100', 'Las Vegas', 'Nevada', '89119', 'Virginia Williams', 'VWilliams@wfgtitle.com', '702-425-3360', '2021-10-08', NULL, NULL, 'The Buyer', NULL, 'Michelle Larson', NULL, 1095, 1095, 0, 2, '2021-10-07 22:44:13', '2021-10-07 22:44:49'),
(557, 1, 1, 1, NULL, '338 N Matt Dillon Trail', NULL, 'Central', 'UT', '84722', 'Kelly Parker', '641-373-1483', 'kelly.parker2006@gmail.com', 'Breonna Burnett', '435-669-1587', 'breonna@burnettegroup.net', 'Century 21 Everest', 'Camille Cano', '435-773-4904', 'camille@burnettgroup.net', NULL, NULL, NULL, 'Matthew Gray', NULL, 'matt.gray@cbstgeorge.com', NULL, NULL, NULL, NULL, 'Southern Utah Title Company', '1224 S. River Rd., Ste. A101', NULL, 'St. George', 'Utah', '84790', 'Jennifer Bailey', 'jen@sutc.com', NULL, '2021-10-08', 'Megan Cowdin', 'megan@sutc.com', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-07 22:54:22', '2021-10-07 22:54:46'),
(558, 3, 1, 1, 'buyer-agent', '6657 JOE MICHAEL WAY', NULL, 'LAS VEGAS', 'NEVADA', '89108', 'RAMON ERNESTO MORAN', '801-687-3797', 'HVTLLC@GMAIL.COM', 'ONAIRAM VALDIVIESO', '702-241-4761', 'ONYREALTOR@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'WFG NATIONAL TITLE', NULL, NULL, NULL, 'Nevada', NULL, 'MARIA CHEWJALEARN', 'MARIAC@WFGTITLE.COM', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 535, 535, 60, 2, '2021-10-07 23:43:10', '2021-10-07 23:43:24'),
(559, 5, 1, 1, NULL, '4022 Piney Meadow Dr', NULL, 'Conroe', 'Texas', '77301', 'Stevie Rowe', '2813308004', 'Stevierowe393@yahoo.com', 'Sandra Otoya', '713-530-1729', 'seotoya@gmail.com', 'Executive Texas Realty', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Great American Title', '6405 Cypresswood Drive 280', NULL, 'Spring', 'Texas', '77379', 'Becky Laird', 'BLaird@GreatAmTitle.com', '281) 569-9922', '2021-10-15', NULL, NULL, 'The Seller', NULL, 'Kyle Thomas', NULL, 550, 550, 5, 2, '2021-10-08 00:28:35', '2021-10-08 00:28:52'),
(560, 1, 1, 1, NULL, '315 W RIDGE VIEW ST', '37', 'BRIAN HEAD', 'UT', '84719', 'GENEL ANDERSON', '(760) 207-1959', NULL, 'TINA VANMETER', NULL, 'tina@highcountryrealty.net', NULL, NULL, NULL, NULL, 'DAVID PULSIPHER', NULL, NULL, 'NATE SHAFFER', NULL, 'nshaffer@kw.com', NULL, NULL, NULL, 'cindy@eaglegatetitle.com', 'Eagle Gate Title', '229 E St. George Blvd', '200', 'St. George', 'Utah', '84770', 'LESLIE HEPPLER', 'stgteam@eaglegatetitle.com', '4254679336', '2021-10-15', NULL, NULL, 'The Seller', NULL, NULL, NULL, 800, 800, 0, 2, '2021-10-08 00:30:39', '2021-10-08 00:30:48'),
(561, 1, 1, 1, NULL, '4907 N 2475 W', NULL, 'Cedar City', 'UT', '84721', 'Kuini Kuini Asuega', '(626) 253-8129', 'kuiniasuega2017@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Janet Borg', '(435) 757-2642', 'borg.jan@gmail.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Security Escrow & Title', '397 S Main Street', NULL, 'Cedar City', 'Utah', '84720', 'Shaylee Etchart', 'shay@securityescrowutah.com', '4358670402', '2021-10-07', NULL, NULL, 'The Seller', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-08 01:32:24', '2021-10-08 01:32:43'),
(562, 1, 1, 1, NULL, '2020 W 13035 S', NULL, 'Riverton', 'Utah', '84065', 'Erivaldo Manoel Lucas', '385-252-1303', NULL, 'Kevin McCombs', NULL, 'theteameliteplus@gmail.com', NULL, NULL, NULL, NULL, 'Kurt M. Jordison', NULL, NULL, 'j. Craig Earl', NULL, 'craig@winutah.com', NULL, NULL, NULL, 'teamkarinna@ustitleutah.com', 'US Title Insurance Agency', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-08 01:33:16', '2021-10-08 01:33:32'),
(563, 1, 1, 1, NULL, '11033 N Spruce Drive', NULL, 'Highland', 'Ut', '84003', 'Stephen Swensen', '0000000000', 'heyswensen@gmail.com', 'Kristel Gough', '801-231-2201', 'Kristel@kcrewrealestate.com', 'Summit Sothebys', NULL, NULL, NULL, NULL, NULL, NULL, 'Mandy Bullock', '801-548-2607', 'mandynbullock@gmail.com', 'Summit Sothebys', NULL, NULL, NULL, 'First American Title Insurance', '315 S. 500 E', NULL, 'American Fork', 'Utah', '84003', 'Todd Fielding', 'tfielding@firstam.com', '801-763-8676', '', 'Marlena Patch', 'mpatch@firstam.com', 'The Seller', NULL, 'Kristin Combs', NULL, 600, 600, 0, 2, '2021-10-08 02:22:14', '2021-10-08 02:22:40'),
(564, 1, 1, 1, 'escrow-officer', '823 Canyon Road', NULL, 'Ogden', 'Utah', '84404', 'Jordan Brown', '(541)120-5203', 'jordanmicro43@gmail.com', 'David Castillo', '(801)556-4864', 'proutahrealestate@gmail.com', 'Utah Real Estate - Salt Lake City', 'Chelsea Hampton', NULL, 'chelsea@simplycoordinated.com', 'Pauline Mann', NULL, NULL, 'Jennifer Fischer', NULL, 'jen@jen-fischer.com', NULL, NULL, NULL, NULL, 'US Title', '1436 South Legend Hills Dr #100', NULL, 'Clearfield', 'Utah', '84015', 'Stacey Miller', 'TeamMiller@UsTtileUtah.com', '801-779-7143', '2021-10-07', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-08 02:25:55', '2021-10-08 02:26:11'),
(565, 5, 1, 1, 'escrow-officer', '17902 Nanes Drive', NULL, 'Houston', 'TX', '77090', 'Aaron Misch', '831-524-0005', 'tiphandaaron@live.com', 'Shatoria Reynolds', '713-653-4920', 'tori.realtor1@gmail.com', 'NB Elite Realty, LLC', NULL, NULL, NULL, 'Meryl Elder', NULL, NULL, 'Victor Chelf', NULL, 'vchelf@cbunited.com', NULL, NULL, NULL, NULL, 'Old Republic Title', '16341 Mueschke Road, Suite 220', NULL, 'Cypress', 'Texas', '77433', 'Crystal Goldie', 'cgoldie@oldrepublictitle.com', '281-502-7090', '2021-10-08', NULL, NULL, 'The Seller', NULL, 'Kyle Thomas', NULL, 625, 625, 0, 2, '2021-10-08 03:28:38', '2021-10-08 03:28:57'),
(566, 5, 1, 1, 'escrow-officer', '2 Prosewood Ct', NULL, 'Spring', 'TX', '77381', 'Scott Lucas', '6193461381', 'scottlucas10@me.com', 'Lisa Kurrass', '7135988868', 'KCalhoun@PartnersTitleTX.com', 'Real Estate Connection International', NULL, NULL, NULL, 'Louis E. Verstinghe', '8324525919', 'levslc@gmail.com', 'Huiming Gu', '2013102832', 'hgu@loc.com', 'All Side Realty', NULL, NULL, 'KCalhoun@PartnersTitleTX.com', 'Partners Title Company', '8505 Technology Forest Pl', 'Suite 301', 'Spring', 'Texas', '77381', 'Marty Miller', 'MMiller@partnerstitletx.com', '2813054800', '2021-10-20', 'Kris Calhoun', 'KCalhoun@PartnersTitleTX.com', 'The Buyer\'s Agent', NULL, NULL, NULL, 610, 610, 0, 2, '2021-10-08 18:11:12', '2021-10-08 18:11:26'),
(567, 1, 1, 1, NULL, '6936 South 825 East', NULL, 'Midvale', 'Utah', '84047', 'Sampson Robert Crowley', '702-375-8059', 'crowleysamps2010@gmail.com', 'Alixander Court', NULL, 'agent@slc.agency', 'KW Salt Lake City Keller Williams', NULL, NULL, NULL, 'Arlo and Mandie Evans', '801-604-5256', 'arlough@gmail.com', 'Virginia Ulbarri', '801-203-6959', 'virginia@inhabit-living.com', 'Cityhome Collective', NULL, NULL, NULL, 'Vanguard Title', '11910 S. State St.', '150', 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@vtitleutah.com', '801-553-1800', '2021-10-07', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-08 19:15:51', '2021-10-08 19:16:14'),
(568, 5, 1, 1, NULL, '1901 Deervalley Street', NULL, 'Deer Park', 'TX', '77536', 'Steven & Maynd Longenecker', '2816849739', NULL, 'Robin Neugebauer', '2816397242', 'rockinrobinrealtor@gmail.com', 'JLA Realty', NULL, NULL, NULL, 'Terry & Margaret Sims', NULL, NULL, 'BJ Smith', '2817312261', 'bj.smith@compass.com', 'Compass RE Texas, LLC', NULL, NULL, NULL, 'BRPS Title, LLC', '4400 Post OakParkway', '150', 'Houston', 'Texas', '77027', 'Holly Russell', 'holly.russell@brpstitle.com', '2818103363', '2021-10-29', 'Nadenne Sanchez', 'teamrussell@brpstitle.com', 'The Seller\'s Agent', 'Send bill to BRPS Title, this will be taken care of at closing. Unfortunately, the website does not have this as an option. Thank you.\n\nBRPS Title, LLC\n4400 Post Oak Parkway\nSuite 150\nHouston, TX 77027', 'Rebecca Haass', NULL, 445, 445, 0, 2, '2021-10-08 20:44:17', '2021-10-08 20:44:56'),
(569, 3, 1, 1, 'buyer-agent', '7424 Jockey Ave', NULL, 'Las Vegas', 'NV', '89130', 'Stephen Martin', '860-830-5360', 'Stephendanmartin@gmail.com', 'Maryann Dingman', '702-813-2961', 'maryann@lockboxlasvegas.com', 'Vegas One Realty', NULL, NULL, NULL, 'Zillow Homes Property Trust', NULL, NULL, 'George Kypreos', NULL, 'listings@gkpropertieslv.com', NULL, NULL, NULL, NULL, 'Zillow Closing Services', NULL, NULL, NULL, 'Nevada', NULL, 'Jodi Teri', 'Closings-nv@zillowclosings.com', NULL, '2021-10-08', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 50, 2, '2021-10-08 20:50:14', '2021-10-08 20:50:29'),
(570, 1, 1, 1, 'escrow-officer', '7468 S Pine Street', NULL, 'Midvale', 'Utah', '84047', 'Luke Helsel', '8144213882', 'lbhelsel@gmail.com', 'Brendon Drury', NULL, 'brendondrury@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lori Gee', NULL, 'brendondrury@gmail.com', NULL, NULL, NULL, NULL, 'Title One', '9065 S 1300 E', NULL, 'Sandy', 'Utah', '84094', 'Jake Harman', 'jake@titleone.net', '8012660606', '2021-10-08', NULL, NULL, 'The Buyer\'s Agent', NULL, 'Kristin Coombs', NULL, 500, 500, 0, 2, '2021-10-08 21:08:32', '2021-10-08 21:08:54'),
(571, 3, 1, 1, NULL, '7077 Legrange Point st', NULL, 'Las Vegas', 'nevada', '89148', 'Lance Bradley', '785-979-4744', 'l@ncebradley.org', 'Ben Packer', '7024962588', 'packer.ben@gmail.com', 'exprealty', NULL, NULL, NULL, NULL, NULL, NULL, 'James Drig', NULL, 'james@homepros.vegas', NULL, NULL, NULL, NULL, 'Landmark Title', '10000 W Charleston Blvd', '135', 'Las Vegas', 'Nevada', '89135', 'Heidi Moscorelli', 'Heidi.Moscorelli@landmarkNV.com', NULL, '2021-10-13', NULL, NULL, 'The Seller', NULL, NULL, NULL, 475, 475, 5, 2, '2021-10-08 21:32:00', '2021-10-08 21:32:23'),
(572, 1, 1, 1, 'buyer-agent', '6847 Butterfield Park Way', NULL, 'Herriman', 'UT', '84096', 'Leslie & Katherine Kunz', '000-000-0000', 'enkendu@gmail.com', 'Morris Kunz', '801-604-7769', 'MorrisBDr@gmail.com', 'Black Diamond', NULL, NULL, NULL, 'Burke', NULL, NULL, 'Megan Beal', '801-898-9505', 'Megan@LeadRealtyTeam.com', 'Lead Realty', NULL, NULL, NULL, 'Vanguard Title', NULL, NULL, NULL, 'Utah', NULL, 'Brooke Adair', 'TeamBrooke@vtitleutah.com', '385-308-2005', '2021-10-15', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-08 21:45:48', '2021-10-08 21:46:03'),
(573, 1, 1, 1, NULL, '13114 S Pioneer Park Drive', NULL, 'Herriman', 'Utah', '84096', 'Horacio Sanchez', '801-867-8111', NULL, 'Maria Torres', NULL, 'maria.h313@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Vanguard Title', NULL, NULL, NULL, 'Utah', NULL, 'Ryan Hoskins', 'Teamryan@vtitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-08 21:57:10', '2021-10-08 21:57:16'),
(574, 1, 1, 1, 'escrow-officer', '3694 E Tauri Way', NULL, 'St. George', 'UT', '84790', 'Seth Mollerup', '360-619-2234', 'seth.mollerup@gmail.com', 'Nathan Killpack', '801-318-4065', 'nate.killpack@realtypath.com', 'Realtypath', NULL, NULL, NULL, NULL, NULL, NULL, 'Bryan Burnett', NULL, 'bryan.utah@gmail.com', NULL, NULL, NULL, NULL, 'Southern Utah Title Company--Taylor Whiting', '20 North Main, Suite 300, Suite 300', 'Suite 300', 'St. George', 'Utah', '84770', 'Taylor Whiting', 'taylor@sutc.com', '435-656-6278', '2021-10-08', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 450, 450, 50, 2, '2021-10-08 22:37:52', '2021-10-08 22:38:00'),
(575, 1, 1, 1, 'escrow-officer', '4170 West Annapolis Drive', NULL, 'West Valley City', 'UT', '84120', 'Francisco Hernandez & Ivonne Carrillo', '801-999-4307', 'alex@1stlibertytitle.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'ELEVATE LATINO ENTERPRISES LLC', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'alex@1stlibertytitle.com', '1st Liberty Title, LC', '9488 South Union Square', NULL, 'Sandy', 'Utah', '84070', 'Francisca Bremer', 'teamcarlos@1stlibertytitle.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-08 23:58:56', '2021-10-08 23:59:21'),
(576, 1, 1, 1, NULL, '12467 S 1300 W', NULL, 'Riverton', 'UT', '84065', 'Chelsy', 'Kelsch', NULL, 'Mary Roe', NULL, 'marysellsutah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Doyer Haaga', NULL, 'marysellsutah@gmail.com', NULL, NULL, NULL, 'tiffani@vtitleutah.com', 'Vanguard Title', '746 E Winchester St', 'Suite 100', 'Murray', 'Utah', '84107', 'Angie Simmons', 'angie@vtitlutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-08 23:59:20', '2021-10-08 23:59:51'),
(577, 5, 1, 1, 'escrow-officer', '4640 Page St', NULL, 'Austin', 'texas', '78723', 'Andrea McArdle', '5127679375', 'andrea.mcardle@gmail.com', 'Summer Carter', '5125650692', 'summer.carter@exprealty.com', 'EXP Realty', 'Andi Miller', NULL, 'team@rise-tm.com', 'Katherine Parker', '2108871696', 'katiejparker@gmail.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Capital Title Of Texas', '6850 Austin Center Blvd', '127', 'Austin', 'Texas', '78731', 'Amber Townsley', 'atownsley@ctot.com', '5122220222', '2021-11-01', 'Jordan Brown', 'jlbrown@ctot.com', 'The Seller', NULL, NULL, NULL, 545, 545, 0, 2, '2021-10-09 01:46:23', '2021-10-09 01:46:34'),
(578, 1, 1, 1, NULL, '221 North 800 West', NULL, 'Springville', 'UT', '84663', 'JOSEPH JENKINS', '801-735-2996', 'JOSEPH_JENKINS22@GMAIL.COM', 'JENNIFER GODDARD', '8015508061', 'TEAMGHOMESUTAH.COM', 'REALTY ONE GROUP', NULL, NULL, NULL, 'CAMERON HUNT', NULL, NULL, 'COLTON AVIANO', '801592-4324', 'CAVIANO23@GMAIL.COM', 'R & R REALTY LLC', NULL, NULL, 'olga@gatewaytitleutah.com', 'Gateway Title Insurance Agency, Inc', '434 West Ascension Way, Suite 125', NULL, 'Murray', 'Utah', '84123', 'Kris Vance', 'team@gatewaytitleutah.com', NULL, '2021-10-08', 'Olga Sandoval', 'olga@gatewaytitleutah.com', 'The Seller', NULL, NULL, NULL, 550, 550, 50, 2, '2021-10-09 02:02:41', '2021-10-09 02:03:17'),
(579, 1, 1, 1, NULL, '265 STONEHENGE DRIVE', NULL, 'PROVIDENCE', 'UT', '84332', 'NATALIE ROSS', '702-701-2679', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'CAPSTONE TITLE & ESCROW', '2115 S DALLIN STREET', NULL, 'SALT LAKE CITY', 'Utah', '84109', 'AMBER SIMPSON', 'AMBER@CAPSTONETITLEUTAH.COM', NULL, '2021-10-08', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-09 02:43:43', '2021-10-09 02:44:00'),
(580, 1, 1, 1, 'escrow-officer', '448 East Telegraph Street', '#50', 'Washington', 'Utah', '84780', 'Melanie Bassett', '801-726-9357', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Linda Jo Heit', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'US Title', '1086 S Main St', 'Ste 101', 'St George', 'Utah', '84770', 'Corrie Glover', 'corrie@ustitleutah.com', '435-652-9800', '2021-10-07', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-09 02:55:47', '2021-10-09 02:55:57'),
(581, 1, 1, 1, NULL, '3805 S 565 W', NULL, 'SOUTH SALT LAKE CITY', 'UT', '84115', 'JENESSA CROWTON', '541-515-0513', NULL, 'QUINN CROWTON', NULL, 'qcrow5@gmail.com', NULL, NULL, NULL, NULL, 'JESSE & DAWUN LUCAS', NULL, NULL, 'AMY VOLCIC', NULL, 'teamtracy@inwesttitle.com', NULL, NULL, NULL, NULL, 'INWEST TITLE', '10542 S JORDAN GATEWAY', '100', 'SOUTH JORDAN', 'Utah', '84095', 'TRACY BECK', 'teamtracy@inwesttitle.com', '8017480560', '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 550, 550, 50, 2, '2021-10-09 04:16:57', '2021-10-09 04:17:07'),
(582, 3, 1, 1, NULL, '7209 Daintree Ct.', NULL, 'Las Vegas', 'NV', '89113', 'Gary Chan/Wun Wah Lau', '702-927-8686', 'garysellsvegas@gmail.com', 'Gary Chan', '702-927-8686', 'garysellsvegas@gmail.com', 'Ansons Realty', 'Chelsey Li', '702-888-3939', 'ansonsrealty@gmail.com', 'Jun Peng Chen/Pelin Wang', NULL, NULL, 'Mark Su', '702-339-1628', 'offersvegasrealty@outlook.com', 'Evolve Realty', NULL, NULL, NULL, 'Lawyers Title', '4276 Spring Mountain Road', '200', 'Las Vegas', 'Nevada', '89102', 'Anthony Weinzetl', 'anthony.weinzetl@ltic.com', '702-868-2311', '2021-10-15', 'Christopher Farnsworth', 'chris.farnsworth@ltic.com', 'The Seller', NULL, NULL, NULL, 900, 900, 0, 2, '2021-10-09 04:54:00', '2021-10-09 04:55:00'),
(583, 1, 2, 1, 'listing-agent', '398 W 1925 N', NULL, 'Harrisville', 'Utah', '84414', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Jade Anglesey', '801-644-5233', 'Likethestone@icloud.com', 'Michael Bauman', '801-604-7737', 'michael.bauman@exprealty.com', 'EXP Realty', NULL, NULL, NULL, 'Fidelity National Title Angency', '10459 s 1300 w', '203', 'South Jordan', 'Utah', '84095', 'Stephanie Ercanbrack', 'Stephanie.Ercanbrack@fnf.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 300, 300, 0, 2, '2021-10-09 22:08:10', '2021-10-09 22:10:35'),
(584, 4, 1, 1, 'buyer-agent', '1931 S SINOVA AVE', NULL, 'GILBERT', 'AZ', '85295', 'VIJAY SHARMA', '214-636-1402', 'vs_77@hotmail.com', 'JIM MITCHELL', '480-231-6769', 'Jim@TheAZRealtor.com', 'Realty ONE Group', NULL, NULL, NULL, 'Alton Thornton', NULL, NULL, 'Diane Alexander', '602-921-9934', 'diane@dnahomegroup.com', 'EXP Realty', NULL, NULL, NULL, 'PIONEER TITLE AGENCY', '4864 E Baseline Rd #107', NULL, 'Mesa', 'Arizona', '85206', 'STEFANIE TAVARES', 'Stefanie.Tavares@pioneertitleagency.com', '480-830-9503', '2021-10-15', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 550, 550, 0, 1, '2021-10-10 01:37:00', '2021-10-10 01:37:00'),
(585, 4, 1, 1, 'buyer-agent', '1931 S. SINOVA AVE', NULL, 'Gilbert', 'AZ', '85295', 'VIJAY SHARMA', '214-636-1402', 'vs_77@hotmail.com', 'JIM MITCHELL', '480-231-6769', 'Jim@TheAZRealtor.com', 'Realty ONE Group', NULL, NULL, NULL, 'Alton', 'Thornton', NULL, 'Diane Alexander', '602-921-9934', 'diane@dnahomegroup.com', 'EXP Realty', NULL, NULL, NULL, 'PIONEER TITLE AGENCY', '4864 E. BASELINE RD. #107', NULL, 'Mesa', 'Arizona', '85206', 'Stefanie Tavares', 'Stefanie.Tavares@pioneertitleagency.com', '480-830-9503', '2021-10-15', NULL, NULL, 'The Buyer\'s Agent', 'ESCROW # : 73406675 - 034 - STT', NULL, NULL, 550, 550, 0, 2, '2021-10-10 01:44:44', '2021-10-10 01:45:40'),
(586, 5, 1, 1, 'escrow-officer', '6006 Leafwing Trail', NULL, 'Missouri City', 'TX', '77459', 'Brian Moczynski', '214-404-8500', 'brianmoczynski1@gmail.com', 'Joe Rodriguez', '832-977-8525', 'joe@joelouisproperties.com', 'EXP Realty, LLC', 'Kristine Almazan', 'kristine@texstatehometeam.com', NULL, 'Karthiyayini Selvaraj', NULL, 'karraj999@gmail.com', 'Minal Vyas', '713-876-5110', 'minaldvyas@gmail.com', 'RX Fine Properties', NULL, NULL, 'sherry.timmons@select-title.com', 'Select Title', '3424 FM 1092', 'Ste. 200', 'Missouri City', 'Texas', '77459', 'Sherry Timmons', 'sherry.timmons@select-title.com', '2817834388', '2021-10-28', NULL, NULL, 'The Seller', NULL, NULL, NULL, 625, 625, 0, 2, '2021-10-11 19:29:29', '2021-10-11 19:29:58'),
(587, 5, 1, 1, NULL, '11607 Buck Springs', NULL, 'Tomball', 'Texas', '77377', 'Janice Cashman', '281-288-3500', 'jancashman@gmail.com', 'Meredith Catrett', '281-827-3707', 'meredith@rrea.com', 'Register Real Estate Advisors', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'First Priority Title', '7113 Farm to Market 2920', NULL, 'Spring', 'Texas', '77379', 'Stephanie Bradley', 'sbradley@fptitletx.com', NULL, '2021-10-13', NULL, NULL, 'The Seller', NULL, 'Kyle Thomas', NULL, 625, 625, 0, 2, '2021-10-11 21:41:26', '2021-10-11 21:41:36'),
(588, 1, 1, 1, 'buyer-agent', '12434 S Tithing Point Dr Riverton, UT 84065 US', NULL, 'Riverton', 'UT', '84065', 'Natalie and Dave Southwick', '801-558-0364', 'natalie@aspencreekrealty.com', 'Natalie Southwick', '801-558-0364', 'natalie@aspencreekrealty.com', 'Aspen Creek Realty', 'Kerry & Gie', NULL, 'clientcare@aspencreekrealty.com', 'Winnie Rae Fiack', NULL, NULL, 'Merilee Rowley', NULL, 'merilee@sellingsaltlake.com', NULL, NULL, NULL, NULL, 'ITS', NULL, NULL, NULL, 'Utah', NULL, 'Patrick Roeder', 'patrickteam@itstitle.com', '801-598-6926', '2021-11-01', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-11 22:15:48', '2021-10-11 22:16:08'),
(589, 5, 1, 1, 'escrow-officer', '7800 Southwest Parkway', '213', 'Austin', 'TX', '78735', 'Nancy Lee Stout', '318-436-9865', 'nlstout@optonline.net', 'Ellen Troxclair', '512-575-3644', 'ellen@troxclairresidential.com', 'Compass RE Texas, LLC', NULL, NULL, NULL, 'Bernard and Denise Mayoff', NULL, NULL, 'Charles Escutia', NULL, 'charlesescutia@soclusaustin.com', NULL, NULL, NULL, 'elisha@texasnationaltitle.com', 'Texas National Title', '12515-7 Research Blvd Suite 130', NULL, 'Austin', 'Texas', '78759', 'Shannon Koebel', 'teamshannon@texasnationaltitle.com', '5123370913', '2021-10-15', 'Elisha Helton', 'elisha@texasnationaltitle.com', 'The Seller', NULL, NULL, NULL, 500, 500, 55, 2, '2021-10-11 23:01:20', '2021-10-11 23:01:35'),
(590, 5, 1, 1, 'escrow-officer', '8306 Heaton Hall Street', NULL, 'Humble', 'TX', '77338', 'Damaurriah E Butler', '(281) 546-7298', 'sessumd417@gmail.com', 'Edgar Jammer', '(832) 689-2341', 'jammerrealty@gmail.com', 'Jammer Realty', NULL, NULL, NULL, 'Zillow Homes Property Trust', NULL, NULL, 'Mark Dimas', NULL, 'ZOEscrow@markdimasteam.com', 'Mark Dimas Properties', NULL, NULL, NULL, 'Zillow Closing Services', '5215 N O’Connor Blvd', 'Ste 1200', 'Irving', 'Texas', '75039', 'Allison Kempf', 'allisonk@zillowclosings.com', '833-927-1605', '2021-10-18', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 445, 445, 0, 2, '2021-10-11 23:08:33', '2021-10-11 23:08:52'),
(591, 5, 1, 1, NULL, '6517 Alum Rock Cv.', NULL, 'Austin', 'Texas', '78747', 'Americo Siller and Kara Heumann', '(512) 796-5093', 'karamia.heumann@gmail.com', 'Paul Kennedy', '512-234-6637', 'paul@upsidetx.com', 'Upside Realty', NULL, NULL, NULL, 'Randy and Ashley Gorman', NULL, NULL, 'Lee Easter', '5122551111', 'lee@leeeaster.com', 'Lee Easer, INC.', NULL, NULL, 'cmitchell@independencetitle.com', 'Independence Title Co.', '9442 N Capital of Texas Hwy', 'Bldg 1, Ste 100', 'Austin', 'Texas', '78759', 'Cody Mitchell', 'cmitchell@independencetitle.com', '5127852123', '2021-10-13', 'Jennifer Lopez', 'jlopez@independencetitle.com', 'The Seller', NULL, NULL, NULL, 500, 500, 55, 2, '2021-10-11 23:11:06', '2021-10-11 23:11:30'),
(592, 1, 1, 1, 'buyer-agent', '3045 S. 900 E.', NULL, 'Salt Lake City', 'Utah', '84106', 'Ian Dyksman', '8012055390', 'alwayseim@gmail.com', 'Melissa Becknell', NULL, 'melissa@theroxburghgroup.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Julie Livers', NULL, 'julielivers@yahoo.com', NULL, NULL, NULL, NULL, 'US Title', NULL, NULL, NULL, 'Utah', NULL, 'Liz Cole', 'Lcole@Ustitleutah.Com', NULL, '', NULL, NULL, 'The Buyer', NULL, 'Sean McCrady', NULL, 600, 600, 0, 2, '2021-10-11 23:15:38', '2021-10-11 23:15:49'),
(593, 1, 2, 1, NULL, '517 Watchman Drive', NULL, 'Springdale', 'Utah', '84767', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Brenden C Faber', '000-000-0000', '000@gmail.com', 'RaNita Parrish', '(435)668-6924', 'ranita@ranitaparrish.com', 'Summit Sotheby\'s International Realty', 'Cindy Smith', '4356280400', 'cindy.smith@summitsothebysrealty.com', 'Southern Utah Title', '1224 S River Road', 'Suite A101', 'St George', 'Utah', '84790', 'Becky Hunt', 'becky@sutc.com', '435-652-4838', '', NULL, NULL, 'The Seller\'s Agent', NULL, 'Kristin Combs', NULL, 300, 300, 0, 2, '2021-10-12 01:03:38', '2021-10-12 01:03:47'),
(594, 5, 1, 1, 'escrow-officer', '6610 St Placidia Dr', NULL, 'Spring', 'Texas', '77379', 'Manuel', 'Hernandez', 'mary4581@gmail.com', 'Paige Houston', '713-855-7907', 'paigehouston@texasrep.net', 'Texas Real Estate Pro', NULL, NULL, NULL, 'Ricardo Siurob', '713-444-6594', 'rsiurob@hotmail.com', 'Juan Salcedo', '832-642-2897', 'juansalcedo@asinrealty.com', 'Asin Realty', 'Carolina Diaz', NULL, 'carolina@asinrealty.com', 'Chicago Title', '1450 Lake Robbins', 'Suite 120', 'The Woodlands', 'Texas', '77380', 'Taryn Fennessy', 'logan.pearce@ctt.com', '281-364-8110', '', 'Bridget Morales', 'Bridget.Morales@ctt.com', 'The Buyer\'s Agent', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-12 01:11:05', '2021-10-12 01:11:40'),
(595, 1, 1, 1, 'buyer-agent', '331 E Valley View Dr', NULL, 'Tooele', 'UT', '84074', 'Brandon Vasquez', '801-554-7593', 'brv_asque@outlook.com', 'Jesse Hokanson', '801-554-7593', 'jesse@mountainhighutah.com', 'Impower Real Estate', 'Julie Law', '208-680-5473', 'myEZfiles@gmail.com', NULL, NULL, NULL, 'Liz Gualtier', NULL, 'lizgualtier@protonmail.com', NULL, NULL, NULL, NULL, 'Inwest Title', NULL, NULL, NULL, 'Utah', NULL, 'Tracy Beck', 'Teamtracy@inwesttitle.com', '801-748-0560', '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 400, 400, 0, 2, '2021-10-12 01:50:59', '2021-10-12 01:51:20'),
(596, 1, 1, 1, NULL, '225 N Country Lane', '6', 'St. George', 'UT', '84770', 'Dick and Connie Stewart', '720-256-9509', 'rstewart_consulting@msn.com', 'John Hook', NULL, 'john@johnhookteam.com', 'KYRO', NULL, NULL, NULL, NULL, NULL, NULL, 'Robert Kirkland', NULL, 'sellutah1@gmail.com', 'Red Rock', NULL, NULL, NULL, 'Infinity Title', NULL, NULL, NULL, 'Utah', NULL, 'Emily Wilson', 'emily@infinitytitleutah.com', '435-429-1500', '2021-10-20', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-12 03:51:44', '2021-10-12 03:51:58'),
(597, 1, 1, 2, 'buyer-agent', '419 E 600 S', '#D', 'Vernal', 'UT', '84078', 'Gerald & Susan Nebeker', '14358286086', 'susan.neb@hotmail.com', 'Susan Nebeker', '14358286086', 'susan.neb@hotmail.com', 'West USA Realty Specialists', 'Susan', '14358286086', NULL, 'Chris England', 'not known', 'not known', 'Nathan Snow', '435-823-2138', 'natec21@ubtanet.com', 'C-21 Country Realty', 'not known', NULL, NULL, 'Basin Land & Title Co', '335 W 50 N #E7', NULL, 'Vernal', 'Utah', '84078', 'Joyce', 'joyce@basinlandtitle.com', '435-789-4724', '2021-10-18', 'Wyann/Mandie', 'wyann@basinlandtitle.com', 'The Seller', 'Title will collect fee at closing and pay bill.', NULL, NULL, 475, 475, 0, 2, '2021-10-12 11:35:53', '2021-10-12 11:36:34'),
(598, 1, 2, 1, 'listing-agent', '998 S 1050 W', NULL, 'Tooele', 'UT', '84074', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Justin Slagowski', '801-598-0623', 'jdslagowski@hotmail.com', 'Martha Garcia', '801-244-7856', 'marthagsellshomes@gmail.com', 'Top Equity Realty', 'Stephanie Walker', NULL, 'stephanie@h2hut.com', 'Real Advantage Title', NULL, NULL, NULL, 'Utah', NULL, 'Chaniece Allred', 'ChanieceA@realadvantageutah.com', '801-456-9730', '', 'Allred Team', 'AllredTeam@realadvantageutah.com', 'The Seller', NULL, 'Sandra Perkins', NULL, 300, 300, 0, 2, '2021-10-12 14:33:16', '2021-10-12 14:33:54'),
(599, 1, 1, 1, 'escrow-officer', '10394 S Cherry Grove Way', NULL, 'South Jordan', 'Utah', '84095', 'Larry Mitchell', '801-718-7529', 'larry@remarkablehomeloans.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Cheryl Kieth', NULL, 'kelsey.hales@trulytitle.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Truly Title', '6965 South Union Park Center', '180', 'Cottonwood Heights', 'Utah', '84047', 'Teresa Troske', 'teresateam@trulytitle.com', '8019967456', '2021-10-08', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-12 15:53:23', '2021-10-12 15:53:34'),
(600, 1, 1, 1, NULL, '3051 South Orchard Drive', 'D.', 'Bountiful', 'UT', '84010', 'Levi Wesche', '801-858-0033', 'alicia@highlandtitleutah.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Highland Title Agency', '6622 S. 1300 E.', NULL, 'SALT LAKE CTY', 'Utah', '84121', 'Jolyn Brown', 'jolyn@highlandittleutah.com', NULL, '', 'Alicia Rose', 'alicia@highlandtitleutah.com', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-12 16:12:36', '2021-10-12 16:12:45'),
(601, 1, 1, 1, 'buyer-agent', '567 E. 2680 S.', NULL, 'Vernal', 'UT', '84078', 'Matt Lohof', '970-245-3926', 'mjlohof@gmail.com', 'Susan Nebeker', '435-828-6086', 'susan.neb@hotmail.com', 'West USA Realty Specialists', 'n/a', '1435828608', NULL, 'Octivia Candelas', 'not known', 'not known', 'Maggie Lange', '435-630-4886', 'maggielange22@gmail.com', 'Realty One Vernal', 'n/a', NULL, NULL, 'Basin Land & Title Co', '335 W. 50 N.', '#E7', 'Vernal', 'Utah', '84078', 'Lois Hartle', 'Lois@basinlandtitle.com', '435-789-4724', '2021-10-15', 'Wyann', 'wyann@basinlandtitle.com', 'The Seller', 'Basin Land & title will collect fee from sellers side at closing.', NULL, NULL, 450, 450, 50, 2, '2021-10-12 16:23:21', '2021-10-12 16:23:48'),
(602, 1, 1, 1, 'buyer-agent', '7453 S 1375 E', NULL, 'South Weber', 'Utah', '84405', 'Anthony Valdez', '000-000-0000', NULL, 'Nate Frome', '801-834-5583', 'nate@blackdiamondrealtyslc.com', 'Black Diamond', NULL, NULL, NULL, 'Ledbetter & Armfield', NULL, NULL, 'Clarisa Hind', '435-512-0155', 'ClarisaHind@gmail.com', 'Equity', NULL, NULL, NULL, 'Secured Land Title', NULL, NULL, NULL, 'Utah', NULL, 'Heather Woolsey', 'Heather.Woolsey@SecuredLandTitle.com', '000-000-0000', '2021-11-03', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-12 17:03:08', '2021-10-12 17:03:21'),
(603, 5, 1, 1, NULL, '18518 Glenn Haven Estates Dr', NULL, 'Spring', 'Texas', '77379', 'Mark Zermeno', '832-396-1249', 'mark.zermeno@gmail.com', 'Dave Pichowsky', '832-396-1249', 'david.pichowsky@redfin.com', 'Redfin', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Capital Title', '8917 Louetta Road', '100', 'Spring', 'Texas', '77379', 'Judy Sin', 'jsin@ctot.com', '8325597243', '2021-10-20', 'Jacqueline Murray', 'teamjudy@ctot.com', 'The Seller', NULL, 'Kyle Thomas', NULL, 545, 545, 0, 2, '2021-10-12 17:07:35', '2021-10-12 17:07:45'),
(604, 1, 1, 1, NULL, '310 E 300 S', NULL, 'Heber City', 'Utah', '84032', 'Kierra', '8016992830', 'Kierrabrook@gmail.com', 'Maria Buckley Hayes', '8015772708', 'wasatchvalleyrealestate@gmail.com', 'Inpower', NULL, NULL, NULL, 'Randy Daybell', '8888888888', 'rndydybll@aol.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Lendmark Title', '10808 S River Front Parkway', '328', 'South Jordan', 'Utah', '84095', 'Melanie Monge', 'Melanie@lendmarktitle.com', '801-243-6268', '2021-10-04', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 450, 450, 50, 2, '2021-10-12 17:15:49', '2021-10-12 17:16:06'),
(605, 5, 1, 2, NULL, '17746 Kings Park Ln', '20', 'Houston', 'TX', '77058', 'Paula and Ronald Pruitt', '8322235200', NULL, 'Tami Payne*', NULL, 'tamimpayne@gmail.com', NULL, NULL, NULL, NULL, 'Halle Annette Trefzger and Robert Daniel Trefzger', NULL, NULL, 'William Schulze', NULL, 'will.schulze3@gmail.com', NULL, NULL, NULL, NULL, 'Fidelity NT', '20445 TX 249, 110', NULL, 'Houston', 'Texas', '77070', 'Stacy Proue', 'CPUHouston@fnf.com', NULL, '2021-11-08', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-12 17:54:34', '2021-10-12 17:54:48'),
(606, 5, 1, 2, NULL, '7301 B Colina Vista Loop', NULL, 'Austin', 'TX', '78750', 'Durrill Home Remodel LLC', '(512) 994-8401', 'Khernandez@ctot.com', 'Rhonda Durrill', '512-994-8400', 'rhondadurrill@gmail.com', 'Avalar Austin', NULL, NULL, NULL, 'Sangita Gopani', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Capital Title of Texas, LLC', '6850 Austin Center Blvd', '127', 'Austin', 'Texas', '78731', 'Kat Anderson', 'Thekatandersonteam@ctot.com', '512-222-0222', '2021-10-22', NULL, NULL, 'The Seller', NULL, NULL, NULL, 420, 420, 0, 2, '2021-10-12 18:22:37', '2021-10-12 18:23:04'),
(607, 1, 1, 1, NULL, '7653 S Sunrise Place East', NULL, 'West Jordan', 'Utah', '84084', 'Mirian Sanchez Hodgson', '8015555555', NULL, 'Kevin McCombs', NULL, 'theteamelite@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chad Rawlins', NULL, 'chad@liveworkplayutah.com', NULL, NULL, NULL, NULL, 'US Title Insurance Agency', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-12 18:57:17', '2021-10-12 18:57:29'),
(608, 1, 1, 1, NULL, '862 East 2200 South', NULL, 'Clearfield', 'UT', '84015', 'Alan Hill', '801-859-4676', 'achinut@aol.com', 'Tanya Atterfield', NULL, 'tanyajsatterfield@hotmail.com', NULL, NULL, NULL, NULL, 'Sham Sunder', NULL, NULL, 'Amiteshwar Andy Singh Bhatia', NULL, 'andysinghmlo@gmail.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '2021-10-15', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-12 19:11:29', '2021-10-12 19:11:35'),
(609, 1, 1, 1, NULL, '3393 E Enchanted Hills Dr', NULL, 'SLC', 'UT', '84121', 'Zane W Rasmussen', '4359944147', 'jeenyus.z@gmail.com', 'Amie Jensen', NULL, 'amiejensenhomes@gmail.com', 'Aubrey and Associates', NULL, NULL, NULL, 'Heatherly Devon Benson', NULL, NULL, 'J Aaron Christensen', '8014493000', 'jacchristensen2@gmail.com', 'Century 21 Everest', NULL, NULL, NULL, 'Stewart Title', '2733 E Parleys Way', '200', 'SLC', 'Utah', '84109', 'Brook Hatch', 'brook.hatch@stewart.com', '8012146132', '2021-10-12', 'Kaitlyn Cannon', 'kaitlyn.cannon@stewart.com', 'The Buyer', NULL, NULL, NULL, 550, 550, 50, 2, '2021-10-12 19:40:07', '2021-10-12 19:40:43'),
(610, 1, 1, 1, NULL, '361 South Look Ridge Driver', NULL, 'Grantsville', 'Utah', '84029', 'Erika Martinez Zavala', '801-860-8933', 'zavalaerika1986@gmail.com', 'Jose Medardo Ruiz', '801808-8300', 'medardoutah@gmail.com', 'Realtypath Corporate', NULL, NULL, NULL, 'Eric Zeeman', NULL, NULL, 'David Eggett', '801-831-0293', 'davy@buyautahhome.com', 'Century 21 Everest', NULL, NULL, NULL, '1st Liberty Title, LC', '9488 South Union Square', NULL, 'Sandy', 'Utah', '84070', 'Carlos Sevilla', 'carlos@1stlibertytitle.com', '801-99-4028', '2021-10-08', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-12 20:43:38', '2021-10-12 20:43:51'),
(611, 1, 1, 1, NULL, '4121 N Morgan Dr.', NULL, 'Enoch', 'Utah', '84721', 'Kayden Darger', '435-619-0970', 'kaydendarger@gamil.com', 'Brad Moon', NULL, 'bradmoon1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'GT Title', NULL, NULL, NULL, 'Utah', NULL, 'Jesse', 'jesse@gttitle.net', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-12 20:48:16', '2021-10-12 20:48:23'),
(612, 1, 1, 1, NULL, '1835 W 375 N', NULL, 'Clearfield', 'UT', '84015', 'Kambree Martin', '801.699.7178', 'kamfun519@gmail.com', 'Becky Rutledge', NULL, 'becky@peakcollectivegroup.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Miguel Aguilar', NULL, 'miguel@erabrokers.com', NULL, NULL, NULL, NULL, 'Meridian Title', NULL, NULL, NULL, 'Utah', NULL, 'Brandy Kramer', 'brandyteam@mtcutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 400, 400, 0, 2, '2021-10-13 00:37:06', '2021-10-13 00:37:16'),
(613, 1, 1, 1, NULL, '2631 E 610 N & 2643 E 610 N', NULL, 'ST.GEORGE', 'UT', '84790', 'J RITCHIE', '(602) 432-0715', 'DENNISRITCHIE632@GMAIL.COM', 'LAREN BLAKE', NULL, 'larenblake@gmail.com', NULL, NULL, NULL, NULL, 'NICKLAUS COWAN', '(714) 642-3557', 'nick@cowanloans.com', 'CASSANDRA LEE', NULL, 'cassandra@yourstgagent.com', NULL, NULL, NULL, 'cindy@eaglegatetitle.com', 'Eagle Gate Title', '229 E St. George Blvd', '200', 'St. George', 'Utah', '84770', 'LESLIE HEPPLER', 'stgteam@eaglegatetitle.com', '435-703-6060', '2021-10-13', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-13 15:39:06', '2021-10-13 15:39:16'),
(614, 1, 1, 2, 'buyer-agent', '3832 S Big River Way', '#3', 'Salt Lake City', 'Utah', '84119', 'Teresa Tucker', '(801) 318-7966', '4tmichelletucker@gmail.com', 'SharRee Shupe', '(801) 390-8915', 'sharree.shupe@redfin.com', 'Redfin', NULL, NULL, 'alanah.nasca@redfin.com', NULL, NULL, NULL, 'Todd McBeth', NULL, 'toddmcbeth@gmail.com', 'Equity Real Estate - Solid', NULL, NULL, NULL, 'cottonwood Title', '1996 East 6400 South, Ste 120', NULL, 'Salt Lake City', 'Utah', '84121', 'Jamie Hudson', 'teamhudson@cottonwoodtitle.com', NULL, '', NULL, 'jhudson@cottonwoodtitle.com', 'The Buyer', NULL, NULL, NULL, 575, 575, 0, 1, '2021-10-13 15:50:59', '2021-10-13 15:50:59'),
(615, 1, 1, 2, NULL, '3832 S Big River Way', '#3', 'Salt Lake City', 'Utah', '84119', 'Teresa Tucker', '(801) 318-7966', '4tmichelletucker@gmail.com', 'SharRee Shupe', '(801) 390-8915', 'sharree.shupe@redfin.com', NULL, NULL, NULL, 'alanah.nasca@redfin.com', NULL, NULL, NULL, 'Todd McBeth', NULL, 'toddmcbeth@gmail.com', NULL, NULL, NULL, NULL, 'cottonwood Title', '1996 East 6400 South, Ste 120', NULL, 'Salt Lake City', 'Utah', '84121', 'Jamie Hudson', 'jhudson@cottonwoodtitle.com', NULL, '2021-10-26', NULL, 'teamhudson@cottonwoodtitle.com', 'The Buyer', NULL, NULL, NULL, 575, 575, 0, 2, '2021-10-13 15:54:29', '2021-10-13 15:54:56'),
(616, 1, 1, 1, NULL, '743 East Sunset Ponds Drive', NULL, 'Draper', 'Utah', '84020', 'Seth and Katileigh Burgess', '972-213-5890', NULL, 'Damon Hudson', NULL, 'agent.hudsonrealty@gmail.com', NULL, NULL, NULL, NULL, 'Siyuan Zhou and Ninghai Su', NULL, NULL, 'Kennedy Peterson', NULL, 'kennedy.peterson@homie.com', NULL, NULL, NULL, NULL, 'Vanguard Title', '11910 S. State St.', '150', 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@vtitleutah.com', '801-553-1800', '2021-10-12', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-13 16:57:12', '2021-10-13 16:57:23'),
(617, 1, 1, 1, NULL, '675 South Deer Valley Drive', '#655C', 'Park City', 'Utah', '84060', 'James Very`', '801-858-0033', 'sullysells801@gmail.com', 'Matthew Sullivan', '801-618-7027', 'sullysells801@gmail.com', 'Unity Real Estate', NULL, NULL, NULL, 'Patricia Adcock', '801-858-0033', NULL, 'Lara Lusher', '571-338-8845', 'lara.lusher@kw.com', 'Keller Williams', NULL, NULL, 'misty@highlandtitleutah.com', 'Highland Title Agency', '6622 South 1300 East', NULL, 'SALT LAKE CITY', 'Utah', '84121', 'Kristina Nelson-Barkey', 'kristina@highlandtitleutah.com', '801-858-0033', '2021-10-13', 'Misty Albretsen', 'misty@highlandtitleutah.com', 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-13 17:34:21', '2021-10-13 17:34:43'),
(618, 3, 1, 1, 'buyer-agent', '5240 Ardley', NULL, 'Las Vegas', 'NV', '89141', 'Cecilia Cervantez', '702-123-4567', NULL, 'alex Dimotsantos', NULL, 'alex@therolandteam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amy Lubitz', '702-769-6621', 'amylubitz@yahoo.com', 'Simply Vegas', NULL, NULL, NULL, 'Clear Title', NULL, NULL, NULL, 'Nevada', NULL, 'April Canfil', 'april@cleartitleco.com', NULL, '2021-11-09', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 550, 550, 0, 2, '2021-10-13 17:47:46', '2021-10-13 17:47:58'),
(619, 1, 1, 1, 'escrow-officer', '76 Redbluff Drive', NULL, 'Hurricane', 'UT', '84737', 'Bonnie Gardner', '801-319-5131', 'bgardner_@msn.com', 'Kim Johnson', NULL, 'kim.johnson@summitsothebysrealty.com', 'Summit Sothebys', 'Cindy Smith', NULL, 'cindy.smith@summitsothebysrealty.com', 'Jani McCullough', NULL, NULL, 'Rand Mccullough', NULL, 'spring@backmantitle.com', 'UT', NULL, '4352298175', 'spring@backmantitle.com', 'Backman Title Services', '382 S Bluff Street #100', NULL, 'St. George', 'Utah', '84770', 'Spring Johnson', 'spring@backmantitle.com', '4356888808', '2021-10-14', NULL, NULL, 'The Seller', NULL, 'Kirsten', NULL, 400, 400, 0, 2, '2021-10-13 17:55:54', '2021-10-13 17:56:04'),
(620, 1, 1, 1, 'buyer-agent', '9669 N. Duggan Dr.', NULL, 'Eagle Mountain', 'Utah', '84005', 'Scott Webb', '801-420-3692', 'swebb92@gmail.com', 'Stephanie Farwell', NULL, 'stephane@theroxburghgroup.com', NULL, NULL, NULL, NULL, 'David & Stephanie Tanner', NULL, NULL, 'Mark Wilkinson', NULL, 'markw@utahproperties.com', NULL, NULL, NULL, NULL, 'Meraki Title', '11910 S State Street #150', NULL, 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@merakititle.com', NULL, '', NULL, NULL, 'The Buyer\'s Agent', NULL, 'Sean McCrady', NULL, 600, 600, 0, 2, '2021-10-13 19:17:52', '2021-10-13 19:17:58'),
(621, 1, 1, 1, 'escrow-officer', '34 S 300 W', NULL, 'Milford', 'Utah', '84751', 'Mark Marriott', '8014488708', 'rockdreamsutah@gmail.com', 'Arthur K Gayler', '8015732100', 'akgayler@yahoo.com', 'Venturewest Real Estate', NULL, NULL, NULL, 'Kirk Bailey', '435-421-1626', 'kirkjames.143@gmail.com', 'Arthur K Gayler', '8015732100', 'akgayler@yahoo.com', 'Venturewest Real Estate', NULL, NULL, 'rana@titlepioneer.com', 'Pioneer Title Insurance Agency', '1188 West 10400 South', NULL, 'South Jordan', 'Utah', '84095', 'David Gustafson', 'gus@titlepioneer.com', '801-900-5555', '2010-12-21', 'Rana McMurtrey', 'rana@titlepioneer.com', 'The Buyer\'s Agent', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-13 19:39:02', '2021-10-13 19:39:20'),
(622, 1, 1, 1, 'buyer-agent', 'name', NULL, 'slc', 'utah', '84111', 'name', '8888888888', 'name@name.com', 'andrew kent', NULL, 'andrew@kent.com', 'rooted', 'holly', NULL, 'holly@holly.com', NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'title', NULL, NULL, 'slc', 'Utah', '84111', 'name', 'name@name.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 1, '2021-10-13 22:18:01', '2021-10-13 22:18:01'),
(623, 3, 1, 1, NULL, '6575 Marco Vista Ave', NULL, 'Las Vegas', 'Nevada', '89142', 'Francisco Javier Gomez Sanchez', '7028097119', 'jvrgmz71@icloud.com', 'Elda Puleo', '7047048544', 'elda@sourcerealtynv.com', 'Source Realty', 'Zelena Gomez', NULL, 'closing@sourcerealtynv.com', NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Landmark', '10000 Charleston Blvd', '135', 'Las Vegas', 'Nevada', '89135', 'Jennifer Skewes', 'jennifer.skewes@landmarknv.com', '7028691111', '2021-10-13', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 550, 550, 0, 2, '2021-10-13 22:50:51', '2021-10-13 22:51:05'),
(624, 1, 1, 1, NULL, '5899 South Blue Meadow Drive', NULL, 'Taylorsville', 'Utah', '84129', 'Cinthya Karina Posada', '801-610-6922', 'cinthyaposada1@gmail.com', 'Nestor Luna', '801-610-6922', 'Nestor Luna', 'Realty Path-Advantage', 'Vanessa Quezada', '801-548-5610', 'nestor.luna22@outlook.com', 'Community Development Corporation of Utah', '801-9947222', 'carol@cdcutah.org', 'Carol LaFreniere', '801-994-7222', 'carol@cdcutah.org', 'Homefit Fit Realty', NULL, NULL, 'sam.jensen@securedlandtitle.com', 'Secured Land Title', '7090 South Union Park Center', 'Ste. 425', 'Midvale', 'Utah', '84047', 'Sam Jensen', 'sam.jensen@securedlandtitle.com', '8014885340', '1969-12-31', 'Karissa Dulle', 'karissa.dulle@securedlandtitle.com', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-14 01:31:53', '2021-10-14 01:32:06'),
(625, 1, 1, 1, NULL, '346 South Xavier Drive', NULL, 'Ivins', 'UT', '84738', 'Daniel and Michelle Coburn', '(760) 492-2171', 'daniel.coburn@rocketmail.com', 'Shaylee Taylor', '(435) 633-3922', 'shaylee@beathomeutah.com', 'Be At Home Utah', NULL, NULL, NULL, 'Ronna Hargis Trust', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'hunter@infinitytitleutah.com', 'Infinity Title', '221 W Tabernacle', NULL, 'St. George', 'Utah', '84770', 'Jared Plewe', 'jared@infinitytitleutah.com', '4354291500', '2021-10-15', 'Hunter Kofford', 'hunter@infinitytitleutah.com', 'The Buyer\'s Agent', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-14 14:15:33', '2021-10-14 14:16:01');
INSERT INTO `realstate_orders` (`id`, `p_location_id`, `p_coverage_type_id`, `p_property_type_id`, `i_am_the`, `prop_street1`, `prop_street2`, `prop_city`, `prop_state`, `prop_zipcode`, `buyer_name`, `buyer_phone`, `buyer_email`, `buyer_agentname`, `buyer_agentphone`, `buyer_agentemail`, `buyer_realstate_company`, `buyer_coordinatorname`, `buyer_coordinatorphone`, `buyer_coordinatoremail`, `seller_name`, `seller_phone`, `seller_email`, `seller_agentname`, `seller_agentphone`, `seller_agentemail`, `seller_realstate_company`, `seller_coordinatorname`, `seller_coordinatorphone`, `seller_coordinatoremail`, `escrow_title`, `escrow_street1`, `escrow_street2`, `escrow_city`, `escrow_state`, `escrow_zipcode`, `closing_officername`, `closing_officeremail`, `closing_officerphone`, `closing_date`, `escrow_assistantname`, `escrow_assistantemail`, `order_biller`, `order_notes`, `sales_person`, `coupon_code`, `total_amount`, `net_amount`, `credit_balance`, `order_status`, `created_at`, `updated_at`) VALUES
(626, 5, 1, 1, NULL, '6739 Peachtree', NULL, 'San Antonio', 'Texas', '78238', 'Alejandro Ochoa', '2104886984', 'ochoa.mikey@yahoo.com', 'Frances Lopez', '2107710110', 'realtorfrances@yahoo.com', 'Prime Realty', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Mission title', '114 W Glenview', '100', 'San Antonio', 'Texas', '78228', 'Alex Gonzalez', 'agonzales@missiontitle.com', '2107343500', '1969-12-31', NULL, 'team_alexgonzales_gv@missiontitle.com', 'The Seller', NULL, NULL, NULL, 545, 545, 0, 2, '2021-10-14 14:20:34', '2021-10-14 14:21:57'),
(627, 1, 1, 1, 'buyer-agent', '825 37th St', NULL, 'Ogden', 'UT', '84403', 'Mary Teasdale', '000-000-0000', 'maryteasdale@gmail.com', 'Shauna Winters', '801-514-4492', 'Shauna.UtahRealEstate@gmail.com', 'KW Utah Realtors Keller Williams', NULL, NULL, NULL, 'Wilson', NULL, NULL, 'Kellsey Pruitt', '801-663-0357', 'Kellsey@Kellseyandco.com', 'Realty ONE', NULL, NULL, NULL, 'ITS Title', NULL, NULL, NULL, 'Utah', NULL, 'Brian Rammell', 'BrianTeam@ITStitle.com', '000-000-0000', '2021-11-05', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-14 15:30:46', '2021-10-14 15:30:56'),
(628, 5, 1, 1, NULL, '13822 Norland', NULL, 'san antonio', 'tx', '78232', 'Bob Lee Hartsfield', '2105635141', NULL, 'Teasha Alaniz', NULL, 'teashaalaniz@hotmail.com', 'TX', NULL, '2105734971', NULL, NULL, NULL, NULL, 'Kyrissa Parsons', NULL, 'kyrissa@kyrissaparsons.com', NULL, NULL, NULL, NULL, 'Alamo Title', NULL, NULL, NULL, 'Texas', NULL, 'Michelle Salinas', 'TeamMichelle@alamotitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 545, 545, 0, 2, '2021-10-14 15:35:08', '2021-10-14 15:35:38'),
(629, 1, 1, 1, 'escrow-officer', '20 W 200 N', NULL, 'Washington', 'UT', '84780', 'Terrance Miller', '714-349-7149', 'dixiebells@aol.com', 'Janet Cherry', NULL, 'janetcherryrealestate@gmail.com', 'Red Rock Real Estate', NULL, NULL, NULL, 'Latrisa Garcia', NULL, NULL, 'Joel Griffin', NULL, 'josh@dixietitleco.com', 'ERA Brokers Consolidated', NULL, NULL, 'josh@dixietitleco.com', 'Dixie Title Company', '205 E. Tabernacle St', 'Suite 1', 'SAINT GEORGE', 'Utah', '84770', 'Josh Westbrook', 'josh@dixietitleco.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-14 15:44:49', '2021-10-14 15:44:59'),
(630, 1, 1, 1, 'listing-agent', '8033 S 420 E', NULL, 'Sandy', 'UT', '84070', 'McKayla Poulsen & Blake Nielsen', '801-913-6136', NULL, 'Billie Crocker', NULL, 'bc@crockerlaw.net', 'Town & Country Realty', NULL, NULL, NULL, 'Yury Malkov', NULL, NULL, 'Joel Carson', NULL, 'carsonrealestate@gmail.com', 'Utah Real Estate', 'Nicole', NULL, 'carsoncoordinator@gmail.com', 'Title One', NULL, NULL, NULL, 'Utah', NULL, 'Sandi Shoell', 'sandi@titleone.net', NULL, '2021-10-14', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-14 16:33:28', '2021-10-14 16:33:41'),
(631, 5, 1, 1, 'buyer-agent', '6516 Milan Court', NULL, 'Temple', 'TX', '76502', 'Michael Vigliotti', '2542231079', 'mikevig@embarqmail.com', 'Kathryn Stredwick', '5098518672', 'kathryn@kathrynstredwick.com', 'First Texas Brokerage Co', NULL, NULL, NULL, NULL, NULL, NULL, 'Emily Wiley', NULL, 'emilywiley@kw.com', 'Keller Williams', NULL, NULL, NULL, 'First Community Title Co', '40 S Main st', NULL, 'Salado', 'Texas', '76571', 'Danielle Smith', 'danielle.smith@fcttx.com', NULL, '2021-11-01', NULL, NULL, 'The Seller', NULL, 'Paul Anderson', NULL, 575, 575, 30, 2, '2021-10-14 17:34:42', '2021-10-14 17:34:54'),
(632, 5, 1, 1, 'buyer-agent', '301 Canyon Edge', NULL, 'Canyon Lake', 'TX', '78133', 'Chantal Banon', '7148730135', 'banonchantal@gmail.com', 'Lisa Stowers', '2813823155', 'lisa.stowers@theagencytexas.com', 'The Agency Texas', 'Laura Smierciak', '2102649922', 'Laura@theagencytexas.com', 'Margaret and Richard Smith', NULL, NULL, 'Martin Ferguson', '8885197431', 'martin.ferguson@exprealty.com', 'eXp Realty', NULL, NULL, NULL, 'Preserve Title', '204 Creekside Crossing', NULL, 'New Braunfels', 'Texas', '78130', 'Aubrey Smith', 'amsmith@preservetitle.com', '2109453371', '2021-10-19', NULL, 'teamaubrey@preservetitle.com', 'The Buyer\'s Agent', NULL, 'Stacye Blake/Rachel Toscano', NULL, 630, 630, 0, 2, '2021-10-14 19:15:55', '2021-10-14 19:16:25'),
(633, 1, 1, 1, 'buyer-agent', '6385 South 2200 West', NULL, 'Taylorsville', 'utah', '84129', 'Karina Roman', '801-654-4789', 'karii32192@live.com', 'Miriam Drury', NULL, 'miriam@miriamdrury.com', 'Century 21 Everest', 'Bronsynn', NULL, 'bronsynnrussell@gmail.com', 'Brian Kelly', '18015973672', NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'NorthStar Title', '6925 South Union Park', '100', 'Cottonwood Heights', 'Utah', NULL, 'Nick Park', 'nick@northstartitle.com', NULL, '2021-10-14', NULL, NULL, 'The Buyer\'s Agent', 'Title will send check. Paid through closing, Title to send payment.', 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-14 19:25:02', '2021-10-14 19:25:20'),
(634, 1, 2, 1, 'escrow-officer', '739 E Sandy Dunes Drive', NULL, 'Sandy', 'UT', '84094', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Richard Harman', NULL, 'richie@westernmangement.net', NULL, NULL, NULL, NULL, 'Vanguard Title', '6925 S Union Park Ctr 420', NULL, 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '2021-10-15', NULL, NULL, 'The Seller', NULL, 'Sandra', NULL, 500, 500, 0, 2, '2021-10-14 19:53:00', '2021-10-14 19:53:05'),
(635, 1, 1, 2, NULL, '1548 W Westlane Ct', NULL, 'Provo', 'UT', '84601', 'Ignacio', 'Murillo', 'esaumurillo502@gmail.com', 'Aja Domingo', NULL, 'ajautahrealestatepro@gmail.com', NULL, NULL, NULL, NULL, 'Margaret Vincent', NULL, NULL, 'Jerry Loveland', NULL, 'Jerry@stringhamwest.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '2021-10-20', NULL, NULL, 'The Seller', NULL, NULL, NULL, 475, 475, 0, 2, '2021-10-14 20:40:08', '2021-10-14 20:40:14'),
(636, 1, 1, 1, NULL, '1588 East 1060 North', NULL, 'Lehi', 'Utah', '84043', 'Ethan Wolz', '801-553-1800', NULL, 'Trevor Catmull', '801-724-6656', 'tcatmull@gmail.com', 'Equity Real Estate(Advisors)', NULL, NULL, NULL, 'Steve and Allyson Tidwell', NULL, NULL, 'Chris Mickelsen', '801-756-3581', 'teamjake@vtitleutah.com', NULL, NULL, NULL, NULL, 'Vanguard Title', '11910 S. State St.', '150', 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@vtitleutah.com', '801-553-1800', '2021-10-12', NULL, NULL, 'The Seller', NULL, NULL, NULL, 700, 700, 100, 2, '2021-10-14 20:54:06', '2021-10-14 20:54:22'),
(637, 1, 1, 1, NULL, '150 New Saddle Drive', NULL, 'Stockton', 'Utah', '84071', 'Landan and Kendra Hinnen', '435-241-8954', 'kendracatt@hotmail.com', 'Minna Taber', '801-699-7371', 'Minnataber@gmail.com', 'Berkshire Hathaway HomeServices Elite Alping', NULL, NULL, NULL, 'Melanie Browning', NULL, NULL, 'Berna Sloan', '435-840-5029', 'berna.sloan@gmail.com', 'Group 1 Real Estate', NULL, NULL, 'minnat@utahproperties.com', 'Highland Title', '365 S Garden Grove Lane Suite 310', NULL, 'Pleasant Grove', 'Utah', '84062', 'Lisa Lott', 'lisal@highlandtitleutah.com', '801-607-1723', '2021-10-14', 'April', 'Aprila@highlandtitleutah.com', 'The Buyer\'s Agent', NULL, 'Kristin Combs', NULL, 600, 600, 0, 2, '2021-10-14 21:39:42', '2021-10-14 21:40:03'),
(638, 5, 1, 1, 'buyer-agent', '606 Lantana St', NULL, 'Harker Heights', 'TX', '76548', 'Amanda Hoover', '254-369-2717', 'hoover52886@gmail.com', 'Sandee Payne', '254-383-0623', 'sandee.payne@compass.com', 'Compass RE Texas, LLC', 'Judy Rash', '512-619-0995', 'judy.rash@compass.com', NULL, NULL, NULL, 'Jean Shine', NULL, 'closing@shineteam.com', NULL, NULL, NULL, NULL, 'Monteith Abstract & Title Company', '2500 Bacon Ranch Rd', NULL, 'Killeen', 'Texas', '76542', 'Patricia Rodriguez', 'patricia.rodriguez@monteithtitle.com', '254-526-7586', '2021-11-15', 'Michaela Spelling', 'michaela.spelling@monteithtitle.com', 'The Seller', NULL, 'Paul Anderson', NULL, 625, 625, 0, 2, '2021-10-15 12:45:20', '2021-10-15 12:46:06'),
(639, 5, 1, 1, 'escrow-officer', '10401 Mourning Dove Drive', NULL, 'Austin', 'TX', '78750', 'Megan Yeaman and Dalton Aleskin', '5125601680', NULL, 'Michael Reisor', NULL, 'michael.reisor@elliman.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tara Knight', NULL, 'taraknight12@gmail.com', NULL, NULL, NULL, NULL, 'Stewart Title', NULL, NULL, NULL, 'Texas', NULL, 'Karen Hays', 'karen.hays@stewart.com', NULL, '', 'Anne Rettof', 'anne.rettof@stewart.com', 'The Seller', NULL, NULL, NULL, 550, 550, 105, 1, '2021-10-15 13:27:55', '2021-10-15 13:27:55'),
(640, 5, 1, 1, 'escrow-officer', '10401 Mourning Dove Drive', NULL, 'Austin', 'Texas', '78750', 'Megan Yeaman and Dalton Aleskin', '5125601680', NULL, 'Michael Reisor', NULL, 'michael.reisor@elliman.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tara Knight', NULL, 'taraknight12@gmail.com', NULL, NULL, NULL, NULL, 'Stewart Title', NULL, NULL, NULL, 'Texas', NULL, 'Karen Hays', 'karen.hays@stewart.com', NULL, '', 'Anne Rettof', 'anne.rettof@stewart.com', 'The Seller', NULL, NULL, NULL, 445, 445, 0, 2, '2021-10-15 13:30:10', '2021-10-15 13:30:24'),
(641, 1, 1, 1, NULL, '784 Taylor Ave', NULL, 'Ogden', 'UT', '84404', 'Jeffrey', 'Hender', 'jeffreyhender07@gmail.com', 'Annette Ure', '8014625181', 'annette@urerealtor.com', 'NextHome', 'Abby Christiansen', NULL, 'abby@urerealtor.com', NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'beau.pili@oasistitleutah.com', 'Oasis Title LLC', '9815 S Monroe Street', NULL, 'Sandy', 'Utah', '84070', 'Beau Pili', 'beau.pili@oasistitleutah.com', '8018450554', '2021-10-15', 'Nicole', 'nicole.geddes@oasistitleutah.com', 'The Buyer\'s Agent', NULL, 'Sean McGrady', NULL, 600, 600, 0, 2, '2021-10-15 14:03:17', '2021-10-15 14:03:43'),
(642, 1, 1, 1, NULL, '183 West Casi Way', NULL, 'Saratoga Springs', 'UT', '84045', 'Melinda D Green', '573-247-1158', 'muanna729@yahoo.com', 'Jessica Edens', '801-634-9167', 'jessicaedens@kw.com', 'Keller Williams South Valley', NULL, NULL, NULL, 'Zachary Davies', NULL, NULL, 'Becky Ellis', NULL, 'shesoldit@comcast.net', 'Utah Key Real Estate LLC', NULL, NULL, NULL, 'First American Title Company', '10808 S. River Front Pkwy, Ste 175', NULL, 'South Jordan', 'Utah', '84095', 'Vicky Lopez', 'ViLopez@firstam.com', '801.576.8400', '2021-10-15', 'Mandi Sandberg', 'msandberg@firstam.com', 'The Buyer', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-15 14:22:42', '2021-10-15 14:22:59'),
(643, 5, 1, 1, 'escrow-officer', '266 Road 6609', NULL, 'Dayton', 'TX', '77535', 'Garrett  Murchison', '970-819-6797', 'murchisonge@outlook.com', 'Yaoska Martinez', '(832)922-0536', 'yaoska@matthewguzmanteam.com', 'Remax Universal', 'Melissa Lynn', '7132442923', 'melissa.lynn@trgc.com', NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Texas American Title Company', '18477 West Lake Houston Pkwy', '10', 'Humble', 'Texas', '77346', 'Amy Davidson', 'adavidson@texasamerican.com', '(281)812-9444', '2021-10-15', 'Heather Nickless', NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-15 14:32:10', '2021-10-15 14:32:41'),
(644, 1, 1, 1, 'escrow-officer', '7181 S Watermill Way', NULL, 'Cottonwood Heights', 'UT', '84121', 'Gregory Mikolay', '3309315823', 'gm1ppp@gmail.com', 'Diane Swift', NULL, 'dianneswiftrealestate@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lori Gee', NULL, 'jake@titleone.net', NULL, NULL, NULL, NULL, 'Title One', '9065 S 1300 E', NULL, 'Sandy', 'Utah', '84094', 'Jake Harman', 'jake@titleone.net', '801-266-0606', '2021-10-15', NULL, NULL, 'The Buyer\'s Agent', 'Kristin Coombs gave us the go ahead to order the Ultimate package with $500', 'Kristin Combs', NULL, 600, 600, 0, 2, '2021-10-15 14:39:50', '2021-10-15 14:40:00'),
(645, 3, 1, 1, 'buyer', '6517 romance circle', NULL, 'Las Vegas', 'Nevada', '89108', 'Fernando Melendez', '7026298679', 'fmelendez31@gmail.com', 'Victoria Ramos', '(702) 517-8776', 'victoria@aguirreteam.com', 'Century 21', NULL, NULL, NULL, NULL, NULL, NULL, 'Deborah Drayster-Dockery', NULL, 'debbieddockery@gmail.com', NULL, NULL, NULL, NULL, 'Clear title', NULL, NULL, NULL, 'Nevada', NULL, 'April Canfil', 'april@cleartitleco.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 475, 475, 0, 2, '2021-10-15 14:58:31', '2021-10-15 14:58:43'),
(646, 3, 1, 1, 'buyer-agent', '1853 Star Sapphire Court', NULL, 'Las Vegas', 'Nevada', '89106', 'Claudia Cervantes', 'tel:702-762-7399', NULL, 'Nora Aguirre', NULL, 'closings@aguirreteam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tish Lower', NULL, 'TishLower@yahoo.com', NULL, NULL, NULL, NULL, '- Ticor Title -  -', NULL, NULL, NULL, 'Nevada', NULL, 'Priscilla Perkins', 'priscilla.perkins@ticortitle.com', '702-952-0425', '2021-10-15', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 635, 635, 0, 2, '2021-10-15 15:59:51', '2021-10-15 16:00:08'),
(647, 5, 1, 1, 'escrow-officer', '104 Helm Ln', NULL, 'Georgetown', 'TX', '78633', 'Ronald Gilbert Carlson', '337-781-2824', 'ronniecarlson@gmail.com', 'Cory Gulotta', '512-736-4824', 'investinaustin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tracy Jacobs', NULL, 'tracyjacobs21@gmail.com', NULL, NULL, NULL, NULL, 'Independence Title Company', '1103 Rivery Blvd', 'Bldg 1, Suite 110', 'Georgetown', 'Texas', '78628', 'Kandy Nichols', 'knichols@independencetitle.com', '512-931-2126', '2021-10-26', 'Stephanie Garrett', 'stephanie.garrett@independencetitle.com', 'The Seller', NULL, NULL, NULL, 970, 970, 0, 2, '2021-10-15 19:14:19', '2021-10-15 19:14:41'),
(648, 5, 1, 1, NULL, '22519 Rustic Valley Ct', NULL, 'Porter', 'TX', '77365', 'Michael & Jessica Love', '228-270-9456', 'michael.cullen.love@gmail.com', 'Robby Almogabar', '832-326-3991', 'robby@kw.com', 'Keller Williams Realty The Woodlands', NULL, NULL, NULL, 'Gerado & Jessica Pearson', NULL, NULL, 'Heather Groom', '832-797-9168', 'HEATHER77382@GMAIL.COM', 'Doug Erdy Group', NULL, NULL, 'cvanterpool@ctot.com', 'Capital Title of Texas, LLC', '1660 W. Lake Houston Pkwy', 'Suite 500', 'Kingwood', 'Texas', '77345', 'Sandy Lee', 'teamsandy@ctot.com', '281-812-9599', '2021-07-16', 'Chaun Vanterpool', 'cvanterpool@ctot.com', 'The Seller', NULL, NULL, NULL, 445, 445, 0, 1, '2021-10-15 20:54:09', '2021-10-15 20:54:09'),
(649, 3, 1, 1, 'buyer-agent', '7311 Escarpment', NULL, 'Las Vegas', 'Nevada', '89139', 'Yair Barrera', '7024691416', NULL, 'Nora Aguirre', NULL, 'closings@aguirreteam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ivy Vo', NULL, 'ivyreoagent@gmail.com', NULL, NULL, NULL, NULL, 'Clear Title', NULL, NULL, NULL, 'Nevada', NULL, 'April Canfil', 'april@cleartitleco.com', '702-850-5030', '2021-11-04', NULL, NULL, 'The Seller', NULL, NULL, NULL, 475, 475, 0, 2, '2021-10-15 21:11:18', '2021-10-15 21:11:40'),
(650, 1, 1, 1, NULL, '715 N 300 W', NULL, 'American Fork', 'UT', '84003', 'Tyler Gardner', '8013621412', NULL, 'Jechelle Secretan', NULL, 'jechelle@msn.com', NULL, 'Nichole Tippetts', '8017879490', 'tcassistant21@gmail.com', NULL, NULL, NULL, 'Jill Rustad', NULL, 'jillrustadrealtygroup@gmail.com', NULL, NULL, NULL, NULL, 'First American', NULL, NULL, NULL, 'Utah', NULL, 'Racquel Dunn', 'joadunn@firstam.com', NULL, '2021-11-04', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-17 17:37:07', '2021-10-17 17:37:23'),
(651, 1, 2, 1, NULL, '927 E Center Street', NULL, 'Pleasant Grove', 'UT', '84062', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Neresa Nielson', '8015921902', 'neresanielson@aol.com', 'Tari Jensen', '801-842-4950', 'Tari@innovativeutah.com', 'Innovative Real Estate', 'Kyndra Sweat', '4356712413', 'Kyndra@innovativeutah.com', 'First American Title', '6985 Inion Park Ave', '170', 'Midvale', 'Utah', '84047', 'Traci Christiansen', 'tchristiansen@firstam.com', '8015622212', '2021-11-15', 'Kate Smalley', 'ksmalley@firstam.com', 'The Seller', 'October special 13 months**', NULL, NULL, 500, 500, 0, 2, '2021-10-18 05:55:39', '2021-10-18 05:56:18'),
(652, 5, 1, 1, NULL, '22519 Rustic Valley Ct', NULL, 'Porter', 'TX', '77365', 'Michael & Jessica Love', '2252709456', 'michael.cullen.love@gmail.com', 'Robby Almogaber', 'robby@kw.com', '8323263991', 'Keller Williams Realty The Woodlands', NULL, NULL, NULL, 'Gerado & Jessica Pearson', '2816784086', NULL, 'Heather Groom', NULL, 'HEATHER77382@GMAIL.COM', 'Doug Erdy Group', NULL, NULL, 'cvanterpool@ctot.com', 'Capital Title of Texas, LLC', '1660 W. Lake Houston Pkwy', 'Suite 500', 'Kingwood', 'Texas', '77345', 'Sandy Lee', 'teamsandy@ctot.com', '2818129599', '2021-10-18', 'Chaun Vanterpool', 'teamsandy@ctot.com', 'The Seller', NULL, NULL, NULL, 445, 445, 0, 2, '2021-10-18 12:59:53', '2021-10-18 13:00:06'),
(653, 1, 1, 1, NULL, '2074 W 1080 N', '101', 'Provo', 'UT', '84604', 'Dalton Boyles', '971-772-6703', 'dalton.boyles1@gmail.com', 'Steve Boynton', '801-386-2922', 'steve@boyntonhomes.net', 'Century21 Efverest', NULL, NULL, NULL, 'Trevor &Kristen Evans', NULL, NULL, 'Michael Chase Hooper', NULL, 'hooperrealtor@gmail.com', 'Re/Max', NULL, NULL, NULL, 'Capstone Title and Escrow', '2115 Dallin St', NULL, 'Salt Lake City', 'Utah', '84109', 'Amber Simpson', 'amber@capstonetitleut.com', '801-466-7681', '2021-10-18', 'Liz Gwilliams', 'Liz@capstonetitleut.com', 'The Seller', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-18 14:21:11', '2021-10-18 14:22:42'),
(654, 1, 1, 1, NULL, '815 Kentwood Dr', NULL, 'Brigham City', 'Utah', '84302', 'Braxton Charlton', '435-767-8936', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'GT Title Services Inc', NULL, NULL, NULL, 'Utah', NULL, 'Jesse', 'jesse@gttitle.net', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 450, 450, 50, 2, '2021-10-18 14:41:03', '2021-10-18 14:41:07'),
(655, 5, 1, 1, 'escrow-officer', '916 S. Brook Drive', NULL, 'Leander', 'Tx', '78641', 'Michael J. Shaw', '512-971-2273', 'eryk82@yahoo.com', 'Valeria Montealvo', '512-680-4664', 'valeria@zinasells.com', 'Zina & Co Real Estate', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Stewart Title of Austin, LLC', '2300 Greenhill Drive', '210', 'Round Rock', 'Texas', '78664', 'Pam Freydenfeldt', 'pam.freydenfeldt@stewart.com', '512-582-4900', '2021-10-21', 'Veronica Nippert', 'veronica.nippert@stewart.com', 'The Buyer\'s Agent', 'The seller pays up to $500 and buyer\'s agent or buyer paying the difference - entire fee will be collected for at closing', NULL, NULL, 500, 500, 0, 1, '2021-10-18 14:47:16', '2021-10-18 14:47:16'),
(656, 5, 1, 1, NULL, '1441 Waterton Drive', NULL, 'Plano', 'TX', '75023', 'Mary Rachel Van Pelt & James Robert Van Pelt', '214-770-0781', 'oldhamart@hotmail.com', 'Eloise Eriksson Martin', '214-616-3342', 'Eloise Eriksson Martin', 'Dave Perry Miller', NULL, NULL, NULL, 'Karen', '469-797-4148', 'vkdearing@aol.com', 'Ann Hardin', '972-467-4402', 'annhardin@ebby.com', 'Ebby Halliday', NULL, NULL, NULL, 'Texas Premier Title', '5560 Tennyson Parkway', 'Suite #201', 'Plano', 'Texas', '75024', 'Andrea Vestal', 'avestal@txprem.com', '469-737-5150', '2021-10-22', 'Emily Reed', 'ereed@txprem.com', 'The Seller', NULL, NULL, NULL, 545, 545, 0, 2, '2021-10-18 14:51:55', '2021-10-18 14:52:16'),
(657, 5, 1, 1, 'escrow-officer', '916 S. Brook Drive', NULL, 'Leander', 'Tx', '78641', 'Michael J. Shaw', '512-971-2273', 'michael.shaw@sciex.com', 'Valeria Montealvo', '512-680-4664', 'valeria@zinasells.com', 'Zina & Co Real Estate', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'veronica.nippert@stewart.com', 'Stewart Title of Austin, LLC', '2300 Greenhill Drive', '210', 'Round Rock', 'Texas', '78664', 'Pam Freydenfeldt', 'pam.freydenfeldt@stewart.com', '512-582-4900', '2021-10-20', 'Veronica Nippert', 'veronica.nippert@stewart.com', 'The Buyer\'s Agent', 'Seller is paying up to $500 towards the home warranty per sales contract, the buyers agent is paying the difference.', NULL, NULL, 625, 625, 0, 2, '2021-10-18 14:52:45', '2021-10-18 14:53:04'),
(658, 5, 1, 1, 'escrow-officer', '916 S. Brook Drive', NULL, 'Leander', 'Tx', '786641', 'Eric Alejandro', '512-680-4664', 'eryk82@yahoo.com', 'Valeria Montealvo', '512-680-4664', 'valeria@zinasells.com', 'Zina & Co Real Estate', NULL, NULL, NULL, 'Michael J. Shaw', '512-971-2273', 'michaelshaw@sciex.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'veronica.nippert@stewart.com', 'Stewart Title of Austin, LLC', '2300 Greenhill Drive', '210', 'Round Rock', 'Texas', '78664', 'Pam Freydenfeldt', 'pam.freydenfeldt@stewart.com', '512-582-4900', '2021-10-20', 'Veronica Nippert', 'veronica.nippert@stewart.com', 'The Buyer\'s Agent', 'The seller is paying up to $500 per sales contract and the buyers agent is paying the difference - total invoice will be collected for at closing.', NULL, NULL, 725, 725, 100, 2, '2021-10-18 15:02:24', '2021-10-18 15:02:54'),
(659, 1, 1, 1, 'escrow-officer', '970 E. 700 S.', '#72', 'St. George', 'UT', '84790', 'Aubrey Hanavan', '520-307-3683', 'aubreyhanavan@gmail.com', 'Susan Jarvis', '435-619-1882', 'sjarvis@erabrokers.com', 'ERA Brokers Consolidted', NULL, NULL, NULL, 'Michael Kerstetter', '970-858-8603', 'kerstetter.homes@yahoo.com', 'Mariana Kerstetter', '435-216-2445', 'marlanakerstetter03@gmail.com', 'Red Rock Real Estate', NULL, NULL, 'valerie@terratitle.com', 'Terra Title', '265 W. Tabernacle Street Suite 100', NULL, 'St. George', 'Utah', '84770', 'Chris Pilkey', 'chrispilkey@terratitle.com', '435-628-7054', '2021-11-04', 'LeAnna Holm', 'leanna@terratitle.com', 'The Seller', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-18 16:16:45', '2021-10-18 16:17:51'),
(660, 1, 1, 1, 'escrow-officer', '271 South Dempsey Lane', '#175', 'Salt Lake City', 'UT', '84104', 'Po Pee', '385-210-9490', 'jbeavers@firstam.com', 'Haydee Lara', '801-755-0298', 'haydee@realtypath.com', 'Realty Path, LLC', NULL, NULL, NULL, 'Tial Hup', NULL, 'huptial@gmail.com', 'Haydee Lara', '801-755-0298', 'haydee@realtypath.com', 'Realty Path, LLC', NULL, NULL, 'jbeavers@firstam.com', 'First American Title', '10808 S River Front Parkway', '#175', 'South Jordan', 'Utah', '84095-5961', 'Jennifer Beavers', 'jbeavers@firstam.com', '801-576-8400', '2021-10-18', 'Erin Twiggs', 'etwiggs@firstam.com', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-18 16:43:49', '2021-10-18 16:44:09'),
(661, 3, 1, 1, 'buyer-agent', '3021 Merlesco Ave.', NULL, 'Henderson', 'NV', '89044', 'Taylor W. Sims & Kayleigh Ann Christy', '702-863-6583', 'taylor.sims@cushwake.com', 'Thomas Sullivan', '702-460-0140', 'thomas@huntingtonandellis.com', 'huntington & ellis, A Real Estate Agency', 'Sam Mazza', NULL, 'mytcsam@gmail.com', 'Warren J. Castor & Jill K. Castor', NULL, NULL, 'Brian Wedewer', NULL, 'brian@21vegas.com', 'BHHS Nevada Properties', NULL, NULL, NULL, 'Stewart Title', '4670 S Fort Apache Rd. Ste 275', NULL, 'Las Vegas', 'Nevada', '89147', 'Katie Henry', 'TeamHenrySTCLV@stewart.com', '702-948-3078', '2021-11-04', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 550, 550, 0, 1, '2021-10-18 16:55:53', '2021-10-18 16:55:53'),
(662, 1, 1, 1, NULL, '41 North 300 East', NULL, 'Richfield', 'UT', '84701', 'Shaun Stocks', '801-589-0470', 'thisguy470@hotmail.com', 'Hunter Casey', NULL, 'stronghomehunter@gmail.com', 'Century 21 Everest', NULL, NULL, NULL, 'Charles Johanson', NULL, NULL, 'Troy Poulsen', NULL, 'Troypoulsen@gmail.com', 'Coldwell Baker Preferred Properties', NULL, NULL, NULL, 'First American Title', NULL, NULL, NULL, 'Utah', NULL, 'Stacey Busk', 'sabusk@firstam.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-18 17:09:35', '2021-10-18 17:09:44'),
(663, 1, 1, 1, NULL, '1327 NORTH HIGH CLIFFS CIRCLE', NULL, 'WASHINGTON', 'UT', '84780', 'J. DENNIS RITCHIE', '(602) 432-0715', 'dennisritchie632@gmail.com; rtchie@aol.com', 'LAREN BLAKE', NULL, 'larenblake@gmail.com', 'SUMMIT SOTHEBY\'S', NULL, NULL, NULL, 'MALLORY TUTTLE', '(801) 602-9585', 'tuttlemallory@gmail.com', 'POLLI PETERSON', NULL, 'psisellhomes@gmail.com', 'RED ROCK REAL ESTATE', NULL, NULL, 'cindy@eaglegatetitle.com', 'Eagle Gate Title', '229 E St. George Blvd', '200', 'St. George', 'Utah', '84770', 'LESLIE HEPPLER', 'stgteam@eaglegatetitle.com', '435-703-6060', '2021-10-18', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 1, '2021-10-18 18:03:31', '2021-10-18 18:03:31'),
(664, 1, 1, 1, NULL, '1327 NORTH HIGH CLIFFS CIRCLE', NULL, 'WASHINGTON', 'UT', '84780', 'J. DENNIS RITCHIE', '(602) 432-0715', NULL, 'LAREN BLAKE', NULL, 'larenblake@gmail.com', NULL, NULL, NULL, NULL, 'MALLORY TUTTLE', '(801) 602-9585', 'tuttlemallory@gmail.com', 'POLLI PETERSON', NULL, 'psisellhomes@gmail.com', 'RED ROCK REAL ESTATE', NULL, NULL, 'cindy@eaglegatetitle.com', 'Eagle Gate Title', '229 E St. George Blvd', '200', 'St. George', 'Utah', '84770', 'LESLIE HEPPLER', 'stgteam@eaglegatetitle.com', '435-703-6060', '2021-10-18', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-18 18:07:10', '2021-10-18 18:07:20'),
(665, 1, 1, 1, 'escrow-officer', '14780 S Falkland Cove', NULL, 'Draper', 'Utah', '84020', 'Kristie Earnhart', '8015564203', NULL, 'Heidi Castain', 'Heidi Castain', 'heidi.castain@gmail.com', 'Century 21 Everest Realty Group', 'Amber Perrine', NULL, 'amber.perrine@c21everest.com', NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'mlindsay@cottonwoodtitle.com', 'Cottonwood Title', '3340 N Center St Ste 100', NULL, 'Lehi', 'Utah', '84043', 'Melyssa Lindsay', 'mlindsay@cottonwoodtitle.com', '18014078355', '2021-11-05', 'Jenn Wilberg', 'jwilberg@cottonwoodtitle.com', 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-18 18:13:25', '2021-10-18 18:13:55'),
(666, 5, 1, 1, 'buyer-agent', '207 Sea Oats', NULL, 'Surfside Beach', 'TX', '77541', 'Brian Misener', '408-391-6765', 'mrmize448@yahoo.com', 'Lisa Wilbur', '713-304-6099', 'lisa@lisawilburteam.com', 'RE/MAX Property Group', NULL, NULL, NULL, 'Daniel Schmidt', NULL, NULL, 'Audrey Rochell', '979-313-9910', 'audrey@brri.com', 'BRII', NULL, NULL, NULL, 'Stewart Title', '190 Abner Jackson Pkwy', NULL, 'Lake Jackson', 'Texas', '77566', 'Jennifer Bryant', 'Jennifer.Bryant@stewart.com', '(979) 297-6426', '2021-10-15', 'Sonia Lindsey', 'Sonia.Lindsey@stewart.com', 'The Seller', NULL, 'Kyle Thomas', NULL, 545, 545, 0, 2, '2021-10-18 18:18:57', '2021-10-18 18:19:22'),
(667, 5, 1, 1, 'buyer-agent', '9578 Coolbrook', NULL, 'San Antonio', 'Texas', '78250', 'Carlos Reza', '915-637-8051', 'creza643@gmail.com', 'Vickie Torrez', '2106388333', 'vickie@theagencytexas.com', 'The Agency Texas', 'Laura Smierciak', '2102649922', 'laura@theagencytexas.com', 'Tell and Ciera Murphy', NULL, NULL, 'Sheryl Woosley', NULL, 'sheryl@thewoosleyteam.com', 'Woosley Realty Co', NULL, NULL, NULL, 'Presidio Title', '1202 W Bitters Rd', NULL, 'San Antonio', 'Texas', '78216', 'Delia Araujo', 'daraujo@presidiotitle.com', '2107579500', '2021-10-21', 'Aaron Bengoechea', 'abenfoechea@presidiotitle.com', 'The Seller', NULL, 'Stacye Blake /Rachel Toscano', NULL, 500, 500, 0, 2, '2021-10-18 18:41:31', '2021-10-18 18:41:58'),
(668, 5, 1, 1, 'escrow-officer', '901 Rebbeca Dr', NULL, 'Austin', 'TX', '78758', 'Michael Spillers & Denise Hosek', '5125775665', 'michaelspillers@gmail.com', 'Sonda Sondregger', '5124266334', 'sondrasellsaustin@gmail.com', 'Uncommon Realty', NULL, NULL, NULL, 'Howard Tanner', NULL, NULL, 'Janette Friend Harrington', NULL, 'janette@janettefriend.com', NULL, NULL, NULL, NULL, 'Austin Title', '3708 Spicewood Springs Rd', '100', 'Austin', 'Texas', '78759', 'Carrie Mitchell', 'carrie.mitchell@austintitle.com', '5123464020', '2021-10-25', NULL, NULL, 'The Seller', NULL, NULL, NULL, 725, 725, 0, 2, '2021-10-18 20:25:42', '2021-10-18 20:26:10'),
(669, 1, 1, 1, 'buyer-agent', '922 E 200 S', NULL, 'Salt Lake City', 'UT', '84102', 'David & Nicole', '714-273-2177', NULL, 'Ruby Reece', NULL, 'rubyreecerealtor@gmail.com', NULL, 'Monica Guanajuato', NULL, 'monica.guanajuato@C21Everest.com', 'Christopher & Margaret  Massimine', NULL, NULL, 'Reno Lindsey', NULL, 'reno-l@msn.com', NULL, NULL, NULL, NULL, 'North Star Title', NULL, NULL, NULL, 'Utah', NULL, 'Krystal Cruz', 'TEAMKRYSTAL@NORTHSTARTITLE.COM', NULL, '2021-10-27', NULL, NULL, 'The Seller', NULL, 'Sandra', NULL, 500, 500, 0, 2, '2021-10-18 20:28:26', '2021-10-18 20:29:02'),
(670, 5, 1, 1, NULL, '1823 village oak ct.', NULL, 'autin', 'tx', '78704', 'isac date & edel keville', '4159992748', 'scottdate@yahoo.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'becca.morris@texasnationaltitle.com', 'texas national title', '2705 bee caves rd., 150', NULL, 'austin', 'Texas', '78746', 'becca fritz', 'becca.morris@texasnationaltitle.com', NULL, '2021-10-26', NULL, NULL, 'The Seller', NULL, NULL, NULL, 645, 645, 20, 2, '2021-10-18 20:40:29', '2021-10-18 20:40:42'),
(671, 1, 1, 1, NULL, '292 S Eisenhower Way', NULL, 'Salt Lake CIty', 'Utah', '84104', 'Moo day', '8014102461', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'US Title Insurance', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-18 20:44:56', '2021-10-18 20:44:59'),
(672, 5, 1, 1, 'buyer-agent', '250 W Clark St', NULL, 'Canyon Lake', 'TX', '78133', 'Lois Heidtke', '8308328614', 'loismh56@gmail.com', 'Vickie Torres', '2106388333', 'vickie@theagencytexas.com', 'The Agency Texas', 'Laura Smierciak', '2102649922', 'laura@theagencytexas.com', 'Jurgen Bauer', NULL, NULL, 'Scott Rice', '8308321917', 'scott@sullivanhcp.com', 'Sullivan Hill Country Properties', NULL, NULL, NULL, 'New Braunfels Title', '1435 FM 2673', NULL, 'Canyon Lake', 'Texas', '78133', 'Ashley Larson', 'alarson@nbtitle.com', '8309073424', '2021-10-22', 'Heather Riddle', 'hriddle@nbtitle.com', 'The Seller', NULL, 'Stacye Blake', NULL, 500, 500, 0, 2, '2021-10-18 21:22:47', '2021-10-18 21:22:58'),
(673, 5, 1, 1, 'escrow-officer', '6409 Marquett Drive', NULL, 'Rowlett', 'TX', '75089', 'Dave Eischen', '9728380887', 'daveischen@msn.com', 'Becky Chance', '2142348000', 'becky.chance@kw.com', 'Keller Williams - Urban Dallas', NULL, NULL, NULL, 'Dennis Mcfarland', '4694016258', 'denny69chev@gmail.com', 'Jessica Weable', '9728242614', 'cheyenne@mdregrouop.com', 'M&D Real Estate', NULL, NULL, 'mdobbs@titledfw.com', 'Lawyers Title', '811 S. Central Expressway', 'Ste 545', 'RICHARDSON', 'Texas', '75080', 'Melanie Dobbs', 'mdobbs@titledfw.com', '972-671-2022', '', 'Kellese Key', 'kkey@titledfw.com', 'The Buyer\'s Agent', NULL, NULL, NULL, 445, 445, 0, 2, '2021-10-18 21:31:22', '2021-10-18 21:33:58'),
(674, 1, 1, 1, 'escrow-officer', '1282 South 875 West', NULL, 'Woods Cross', 'Utah', '84087', 'Megan Hayes-Carter', '(801) 671-2158', 'selleneit2158@gmail.com', 'Amanda Jorgensen', '(801) 597-6446', 'soldbyamandaallen@gmail.com', 'Unity Group Real Estate', NULL, NULL, NULL, 'Jerry J. Grant', NULL, NULL, 'Georgieann Elliott', 'Exit Realty Advantage', 'noemail@email.com', NULL, NULL, NULL, 'cole@novationtitle.com', 'Novation Title Insurance Agency', '6955 S UNION PARK CTR', 'STE 210', 'COTTONWOOD HEIGHTS', 'Utah', '84047', 'Ryan Minor', 'Ryanteam@novationtitle.com', '8017278420', '2021-10-19', 'Cole Ross', 'cole@novationtitle.com', 'The Seller', NULL, 'Sandra Perkins!', NULL, 500, 500, 0, 2, '2021-10-18 22:55:18', '2021-10-18 22:56:19'),
(675, 1, 1, 1, NULL, '660 N 120 E', NULL, 'Orem', 'UT', '84057', 'Damien M Madsen', '(385) 887-3830', NULL, 'Marco Paredes', '(385) 887-3830', 'marks_21@live.com', NULL, NULL, NULL, NULL, 'Heather Paredes', '(385) 887-3830', NULL, 'Marco Paredes', '(385) 887-3830', 'marks_21@live.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-19 13:52:07', '2021-10-19 13:52:24'),
(676, 5, 1, 1, NULL, '1140 Miss Kimberlys Ln', NULL, 'Pflugerville', 'TX', '78660', 'Irina Marie Pizzurro', '5126986466', 'eyereenah@gmail.com', 'Julie Maalouf', '806.341.2804', 'juliemaalouf@kw.com', 'Keller Williams', NULL, NULL, NULL, 'Deana V. Loe', NULL, NULL, 'Tracy Trevino', NULL, 'tracy@tracysellsaustin.com', 'Spyglass Realty', NULL, NULL, NULL, 'First American Title', '3409 Executive Center Drive, Suite 113', '113', 'Austin', 'Texas', '78731', 'Ernie Perez', 'EPerezJr@FirstAm.com', '5127959755', '2021-10-22', NULL, NULL, 'The Seller', NULL, NULL, NULL, 450, 450, 0, 2, '2021-10-19 14:15:35', '2021-10-19 14:16:12'),
(677, 1, 1, 1, 'buyer-agent', '413 N 1060 W', NULL, 'Lehi', 'UT', '84043', 'Andrew Beier', '4803889794', 'andy@beier.ws', 'Christopher Martindale', '8013307430', 'martindalechris172@gmail.com', 'Real Broker LLC', 'Alissa Horner', NULL, 'alissa@shiftutah.com', 'Brian Kenworthy', NULL, NULL, 'Kenneth Sperry', NULL, 'kennethc.sperry@gmail.com', 'Presidio Real Estate', NULL, NULL, NULL, 'Steed Title', NULL, NULL, NULL, 'Utah', NULL, 'Spencer Steed', 'spencerteam@steedtitle.com', '3854343800', '2021-10-29', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 550, 550, 0, 2, '2021-10-19 16:02:47', '2021-10-19 16:03:01'),
(678, 1, 1, 1, 'escrow-officer', '4949 W 5320 S', NULL, 'Kearns', 'Ut', '84118', 'Cynthia Cardenas', '222-222-2222', 'cynthiacardenas191@gmail.com', 'Jesus Valdespino', NULL, 'transactioncoordinator@gamboateam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Peggy Hamlin', NULL, 'theresultsgal@gmail.com', NULL, NULL, NULL, NULL, 'Novation title', '6955 S Union Park Center', '210', 'Midvale', 'Utah', '84047', 'JOe Cespedes', 'joeteam@novationtitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-19 16:04:35', '2021-10-19 16:04:50'),
(679, 1, 1, 1, 'escrow-officer', '4743 W Oregon Trail Way', NULL, 'Herriman', 'UT', '84096', 'Dmitri Zakatov', '8018081895', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Olga Fedorenko', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'handerson@mtcutah.com', 'Meridian Title Company', '64 E 6400 South Suite 100', NULL, 'Salt Lake City', 'Utah', '84107', 'Brandy Kramer', 'brandyteam@mtcutah.com', '8012648888', '2021-10-19', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-19 17:04:09', '2021-10-19 17:05:50'),
(680, 5, 1, 2, NULL, '1197 Greenwood', '1', 'Austin', 'TX', '78721', 'Laura Riebe', '9792555573', 'lauraclarkm@gmail.com', 'Teresa Carson', NULL, 'teresacarson@realtyaustin.com', 'Realty Austin', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'dtteam@haylegal.com', 'Independence Title', '611 W 5th Street', 'Suite 300', 'Austin', 'Texas', '78701', 'Stacey Coleman', 'dtteam@haylegal.com', NULL, '2021-10-26', NULL, NULL, 'The Seller', NULL, NULL, NULL, 520, 520, 0, 2, '2021-10-19 17:42:15', '2021-10-19 17:42:43'),
(681, 1, 1, 1, NULL, '7890 South Main Street', NULL, 'Midvale', 'UT', '84047', 'Maria Guadalupe Ibanez De La Rosa', '801-879-3791', NULL, 'Kevin McCombs', '385-208-3664', 'delarosa0420.m@gmail.com', NULL, NULL, NULL, NULL, 'Penny Properties, LC', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'US Title', '6995 Union Park Ctr', '150', 'Midvale', 'Utah', '84047', 'Karinna Clemons', 'teamkarinna@ustitleutah.com', '801-838-9920', '2021-10-20', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-19 18:09:18', '2021-10-19 18:09:32'),
(682, 5, 1, 1, NULL, '79 Sandpebble Drive', NULL, 'Spring', 'TX', '77381', 'Morgan Banks and Casey Hicks', '713-314-7720', 'morgan.banks93@gmail.com', 'Jennipher Stringer', NULL, 'jennipher@lippincotteam.com', NULL, NULL, NULL, NULL, 'Lannette Catherine Linthicum, M. D.', NULL, NULL, 'Tiffany Lumpkin', NULL, 'tiffany@adamolsenteam.com', NULL, NULL, NULL, NULL, 'Fidelity NT', '20445 TX 249, 110', NULL, 'Houston', 'Texas', '77070', 'Karen Murcia', 'CPUHouston@fnf.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 625, 625, 0, 2, '2021-10-19 18:12:39', '2021-10-19 18:12:51'),
(683, 5, 1, 1, 'escrow-officer', '32 Island Green Ct.', NULL, 'Kingwood', 'TX', '77339', 'Kevin Patrick Coleman', '5743495533', 'kevin.coleman23@yahoo.com', 'Joe Rodriguez', '832-977-8525', 'joe@joelouisproperties.com', 'eXp Realty, LLC', NULL, NULL, NULL, 'Torsten H Kutschinski', '2817066566', 'kutschinski@hotmail.com', 'Jane Holmes', '7134899897', 'janeholmes67@yahoo.com', 'Jane Byrd Properties International, LLC', NULL, NULL, NULL, 'Capital Title', '1600 W Lake Houston Pkwy', '500', 'Kingwood', 'Texas', '77345', 'Sandy Lee', 'teamsandy@ctot.com', '2818129599', '2021-11-05', 'Breanna Withers', 'bwithers@ctot.com', 'The Seller', NULL, NULL, NULL, 625, 625, 0, 2, '2021-10-19 18:34:15', '2021-10-19 18:34:32'),
(684, 5, 1, 1, NULL, '2622 Cypressvine Drive', NULL, 'Houston', 'TX', '77084', 'Joseph Cobb', '2814142757', 'cobb149@gmail.com', 'Randall Bishop', '2817043448', 'randy.bishop@garygreene.com', 'BHGRE Gary Greene', NULL, NULL, NULL, 'Kings Property Acquisition, LLC', NULL, NULL, 'Christian Reyes', NULL, 'creyes.txpr@att.net', 'Texas Prominent Realty', NULL, NULL, NULL, 'One Nation Title', '10077 Grogans Mill Rd Suite, Suite 260', NULL, 'The Woodlands', 'Texas', '77380', 'Karina Delgado', 'karinad@onenationtitle.com', '832838905', '2021-10-21', NULL, NULL, 'The Buyer', NULL, 'Kyle Thomas', NULL, 550, 550, 5, 2, '2021-10-19 18:40:17', '2021-10-19 18:40:24'),
(685, 3, 1, 1, NULL, '5318 WALTON HEATH', NULL, 'LAS VEGAS', 'NEVADA', '89142', 'ELVIRA RODRIGUEZ RODRIGUEZ', '702-762-0934', 'ELVIRARODRIGUEZ633@GMAIL.COM', 'ONAIRAM VALDIVIESO', '702-41-4761', 'ONYREALTOR@GMAIL.COM', 'DH CAPITAL REALTY', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'WFG NATIONAL TITLE', NULL, NULL, NULL, 'Nevada', NULL, 'MARIA CHEWJALEARN', 'MARIAC@WFGTITLE.COM', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 535, 535, 60, 1, '2021-10-19 18:48:30', '2021-10-19 18:48:30'),
(686, 1, 1, 2, 'buyer-agent', '777 2nd Avenue', '#1', 'SALT LAKE CITY', 'UTAH', '84103', 'Andrew Zehr', '601.506.3582', 'andrew.zehr9@gmail.com', 'Jessica Walker', '415.250.4221', 'jess@jenthomes.com', 'Better Homes and Gardens RE Momentum', 'Cameron Maddux', '435.901.4396', 'cameron@jenthomes.com', 'Landen & Kathleen Pederson', NULL, NULL, 'Mason Conley', '801.245.0729', 'mason@conleyclemensrealestate.com', 'Conley Clemens Real Estate', NULL, NULL, NULL, 'Cottonwood Title', '7020 S Union Park Avenue', NULL, 'SLC', 'Utah', '84047', 'Dinnie Jensen', 'djensen@cottonwoodtitle.com', '801.327.9560', '2021-11-05', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 475, 475, 0, 2, '2021-10-19 18:50:58', '2021-10-19 18:51:22'),
(687, 3, 1, 1, NULL, '5316 WALTON HEATH', NULL, 'LAS VEGAS', 'NEVADA', '89142', 'ELVIRA RODRIGUEZ RODRIGUEZ', '702-762-0934', 'ELVIRARODRIGUEZ633@GMAIL.COM', 'ONAIRAM VALDIVIESO', '702-241-4761', 'ONYREALTOR@GMAIL.COM', 'DH CAPITAL REALTY', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'WFG NATIONAL TITLE', NULL, NULL, NULL, 'Nevada', NULL, 'MARIA CHEWJALEARN', 'MARIAC@WFGTITLE.COM', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 535, 535, 60, 2, '2021-10-19 18:51:57', '2021-10-19 18:52:04'),
(688, 1, 1, 1, NULL, '2929 South Winston Drive', NULL, 'West Valley City', 'Utah', '84128', 'Jose L Gonzalez Luna', '801-793-6491', 'juniorgonzalezluna@gmail.com', 'Jaime Calderon', '909-565-5747', 'jcalderon#rteamr.com', 'Real Team Realty, LLC', NULL, NULL, NULL, 'Michell R Jones', NULL, NULL, 'Dao Ly', '801-839-5520', 'dao@peakrealtyutah.com', 'Peak Realty, LLC', NULL, NULL, NULL, '1st Liberty Title, LC', '9488 South Union Square', NULL, 'Sandy', 'Utah', '84070', 'Carlos Sevilla', 'carlos@1stlibertytitle.com', '801-999-4028', '2021-10-15', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 1, '2021-10-19 20:18:26', '2021-10-19 20:18:26'),
(689, 1, 1, 1, NULL, '2929 South Winston Drive', NULL, 'West Valley City', 'Utah', '84128', 'Jose L Gonzalez Luna', '801-793-6491', 'juniorgonzalezluna@gmail.com', 'Jaime Calderon', '909-565-5747', 'jcalderon@rteamr.com', 'Real Team Realty, LLC', NULL, NULL, NULL, 'Michell R Jones', NULL, NULL, 'Dao Ly', '801-839-5520', 'dao@peakrealtyutah.com', 'Peak Realty, LLC', NULL, NULL, NULL, '1st Liberty Title, LC', '9488 South Union Square', NULL, 'Sandy', 'Utah', '84070', 'Carlos Sevilla', 'carlos@1stlibertytitle.com', '801-999-4028', '2021-10-15', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-19 20:25:24', '2021-10-19 20:25:38'),
(690, 1, 1, 1, 'escrow-officer', '15128 S Eagle Chase Drive', NULL, 'Draper', 'Utah', '84020', 'Matt Newey', '8017841117', NULL, 'Julie Newey', '801-979-5415', 'neweyjulie@gmail.com', 'Century 21 Everest', 'Amber Perrine', NULL, 'amber.perrine@c21everest.com', 'Amber', 'Hollingsworth', NULL, 'J Elizabeth Bowles', '385-279-4146', 'e.bowles@homie.com', 'Homie', NULL, NULL, NULL, 'Vanguard Title', '1148 Legacy Crossing Blvd', 'Suite 120', 'Centerville', 'Utah', '84014', 'Heather Johnson', 'teamheather@vtitleutah.com', '801-784-1117', '2021-11-16', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-19 20:36:49', '2021-10-19 20:36:58'),
(691, 1, 1, 1, 'escrow-officer', '816 Sir Phillip Drive', NULL, 'Salt Lake City', 'Utah', '84116', 'William Winder', '801-455-4978', 'williamdwinder@gmail.com', 'Felipe Pacheco', '801-550-4085', 'homesbyfp@gmail.com', 'RealtyOne', NULL, NULL, NULL, 'Carol Sanchez', NULL, NULL, 'Felipe Pacheco', '801-550-4085', 'homesbyfp@gmail.com', 'RealtyOne', NULL, NULL, 'andrea@titleone.net', 'Title One, Inc.', '9065 S 1300 E', NULL, 'SANDY', 'Utah', '84094', 'Andrea Hofheins', 'andrea@titleone.net', '801-266-0606', '2021-10-20', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-19 20:54:56', '2021-10-19 20:55:22'),
(692, 1, 1, 1, 'escrow-officer', '420 North 1348 East', NULL, 'Lehi', 'Utah', '84043', 'Diane Freeston', '(801) 400-8662', 'ddfreestone@gmail.com', 'Jill Ekstein', '(801) 699-5803', 'jill.ekstein@utahhomes.com', 'Coldwell Banker', NULL, NULL, NULL, 'Jay S. Nelson', NULL, NULL, 'Jay S Nelson', '(801) 380-2189', 'cynditeam@novationtitle.com', 'Stonebridge Real Estate', NULL, NULL, NULL, 'Novation Title', '6955 S Union Park Center, #210', NULL, 'Midvale', 'Utah', '84047', 'Cyndi Burrola', 'cynditeam@novationtitle.com', '801-727-8420', '2021-11-02', 'Kylie and Addie', 'cynditeam@novationtitle.com', 'The Seller', NULL, 'Kristin', NULL, 500, 500, 0, 2, '2021-10-20 01:20:15', '2021-10-20 01:20:36'),
(693, 1, 1, 1, 'escrow-officer', '4968 W Spire Way', NULL, 'Riverton', 'Utah', '84096', 'Garrett Cottle', '(801) 819-6400', 'garrett1909@yahoo.com', 'Jill Ekstein', '(801) 699-5803', 'jill.ekstein@utahhomes.com', 'Coldwell Banker', NULL, NULL, NULL, 'Richard Moody', NULL, NULL, 'Michael Brenny', '8017278420', 'cynditeam@novationtitle.com', 'Benloch Ranch Realty', NULL, NULL, NULL, 'Novation Title', '6955 S Union Park Center, #210', NULL, 'Midvale', 'Utah', '84047', 'Cyndi Burrola', 'cynditeam@novationtitle.com', '801-727-8420', '2021-10-27', 'Kylie and Addie', 'cynditeam@novationtitle.com', 'The Seller', NULL, 'Kristin', NULL, 500, 500, 0, 2, '2021-10-20 01:28:48', '2021-10-20 01:29:05'),
(694, 1, 1, 1, 'escrow-officer', '6867 West 4065 South', NULL, 'West Valley City', 'Utah', '84128', 'Maria Guadalupe Alvarado Silva and Isela Coral Silva', '0000000', '000000', 'Jill Ekstein', '(801) 699-5803', 'jill.ekstein@utahhomes.com', 'Coldwell Banker', NULL, NULL, NULL, 'Julio Gonzalez', NULL, NULL, 'Marque Royball', '00000000', 'cynditeam@novationtitle.com', 'Homenet Real Estate', NULL, NULL, NULL, 'Novation Title', '6955 S Union Park Center, #210', NULL, 'Midvale', 'Utah', '84047', 'Cyndi Burrola', 'cynditeam@novationtitle.com', '801-727-8420', '2021-10-28', 'Kylie and Addie', 'cynditeam@novationtitle.com', 'The Seller', NULL, 'Kristin', NULL, 500, 500, 0, 2, '2021-10-20 01:39:35', '2021-10-20 01:39:44'),
(695, 3, 1, 1, NULL, '920 Biltmore Dr', NULL, 'Las Vegas', 'NV', '89101', 'Jacob Andrus', '585-808-2774', 'jandrus20@gmail.com', 'Thomas Leigh', '7024608143', 'tommy@vegasonerealty.com', 'Vegas One Realty', 'Kristina Vasquez', '702.768-1115', 'kristina@vegasonerealty.com', 'Eyal Karban', NULL, NULL, 'Kevin Goujon', '702-576-4877', 'kevin@goujongroup.com', 'Ameropan Realty and Property', NULL, NULL, NULL, 'Element Title', '8215 Eastern Ave', '235', 'Las Vegas', 'Nevada', '89123', 'Jennifer Stevenson', 'j.stevenson@elementtitle.com', '702-428-1677', '2021-10-21', NULL, NULL, 'The Seller', NULL, NULL, NULL, 535, 535, 10, 2, '2021-10-20 06:09:19', '2021-10-20 06:09:50'),
(696, 5, 1, 1, 'buyer-agent', '702 Avondale Ave', NULL, 'Bryan', 'TX', '77802', 'Leopoldo & Karly Santos', '9369005703', 'theleosantos@gmail.com', 'Chad Whisenant', '9798202226', 'chad@remaxbcs.com', 'RE/MAX Bryan-College Station', NULL, NULL, NULL, 'Elizabeth Pomykal', NULL, NULL, 'Cherry Ruffino', '9796914663', 'homes@cherryruffino.com', 'Coldwell Banker Apex', 'Kathy Coleman', '9796914663', 'kathy@cherryruffino.com', 'University Title', '1021 University Dr East', NULL, 'College Station', 'Texas', '77840', 'Missy Utz', 'missy.utz@utitle.com', '9792609818 ext.4523', '2021-10-21', 'Rylee Bowers', 'rbowers@utitle.com', 'The Buyer\'s Agent', NULL, 'Paul Anderson', NULL, 545, 545, 0, 2, '2021-10-20 13:10:15', '2021-10-20 13:10:52'),
(697, 1, 1, 1, 'escrow-officer', '360 West 300 South', '#219', 'Salt Lake City', 'Utah', '84101', 'David Dove', '(801) 718-9708', 'brianz801@gmail.com', 'Jill Ekstein', '(801) 699-5803', 'jill.ekstein@utahhomes.com', 'Coldwell Banker', NULL, NULL, NULL, 'Nikolay Gradetsky and Rowena Gradetsky,', '0000000', 'cynditeam@novationtitle.com', 'Mark Rogers', '000000', '000000', 'Marval Realty Group', NULL, NULL, NULL, 'Novation Title', '6955 S Union Park Ave, #210', NULL, 'Midvale', 'Utah', '84047', 'Cyndi Burrola', 'cynditeam@novationtitle.com', '8017278420', '2021-11-11', 'Kylie and Addie', 'cynditeam@novationtitle.com', 'The Seller', NULL, 'Kristen', NULL, 500, 500, 0, 2, '2021-10-20 14:14:39', '2021-10-20 14:15:07'),
(698, 1, 1, 1, NULL, '7890 S Main St', NULL, 'Midvale', 'Utah', '84047', 'Maria Guadalupe Ibanez de la Rosa', '8018793791', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'US Title Insurance', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-20 14:47:42', '2021-10-20 14:47:56'),
(699, 1, 1, 1, 'buyer-agent', '639 E 600 N', NULL, 'Duchesne', 'UT', '84021', 'Russell and Valerie Spencer', '4358235258', NULL, 'Mallary Cottam', '8018577644', 'cottamms@gmail.com', 'RealtyONE Group Signature', NULL, NULL, NULL, 'Tyrel Miller', NULL, NULL, 'Aubry Aldrich', NULL, 'utdreamrealtor@gmail.com', 'Utah Real Estate', NULL, NULL, NULL, 'Express Title', '53 E Main', NULL, 'Duchesne', 'Utah', '84021', 'Todd Wilkerson', 'tood@xptitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-20 15:00:11', '2021-10-20 15:00:41'),
(700, 3, 1, 2, 'buyer-agent', '7950 W Flamingo Rd.', '2004', 'Las Vegas', 'NV', '89147', 'Gabriel Rios', '7604857431', 'riosdesigns@yahoo.com', 'Juan Nevarez', '7025616185', 'jnevarez.bdr@gmail.com', 'NV', NULL, '7025616185', NULL, 'Scott', 'Falk', NULL, 'Janelle Pittman', NULL, 'janelle@scofielsrealty.com', NULL, 'Brandi Slade', NULL, 'jesse.brandi2016@gmail.com', 'WFG National Title', NULL, NULL, NULL, 'Nevada', NULL, 'Kim Anadon', 'kanadon@wgfnationaltitle.com', NULL, '2021-10-28', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 450, 450, 0, 2, '2021-10-20 15:01:54', '2021-10-20 15:02:54'),
(701, 5, 1, 1, NULL, '14807 Shottery Drive', NULL, 'Houston', 'Texas', '77015', 'Patricia Arredondo', '832-545-5489', 'patriciaarredondo81@gmail.com', 'Billie Jean Harris', '713-825-2647', 'bharris@remax-east.com', 'RE/MAX East', 'Elijah Warren', '346-606-7158', 'elijahwarren@remax-east.com', 'Casey A. Hurtt', NULL, 'kc.hurtt@gmail.com', 'Billie Jean Harris', '713-825-2647', 'bharris@remax-east.com', NULL, 'Elijah Warren', '346-606-7158', 'elijahwarren@remax-east.com', 'Great American Title Company', '20121 W. Lake Houston Pkwy', 'Suite.100', 'Humble', 'Texas', '77346', 'Samantha Orbison', 'sorbison@greatamtitle.com', '281-359-6600', '2021-11-15', 'Katie Prentice', 'kprentice@greatamtitle.com', 'The Seller', NULL, 'Roy Davis', NULL, 600, 600, 55, 2, '2021-10-20 15:32:19', '2021-10-20 15:34:58');
INSERT INTO `realstate_orders` (`id`, `p_location_id`, `p_coverage_type_id`, `p_property_type_id`, `i_am_the`, `prop_street1`, `prop_street2`, `prop_city`, `prop_state`, `prop_zipcode`, `buyer_name`, `buyer_phone`, `buyer_email`, `buyer_agentname`, `buyer_agentphone`, `buyer_agentemail`, `buyer_realstate_company`, `buyer_coordinatorname`, `buyer_coordinatorphone`, `buyer_coordinatoremail`, `seller_name`, `seller_phone`, `seller_email`, `seller_agentname`, `seller_agentphone`, `seller_agentemail`, `seller_realstate_company`, `seller_coordinatorname`, `seller_coordinatorphone`, `seller_coordinatoremail`, `escrow_title`, `escrow_street1`, `escrow_street2`, `escrow_city`, `escrow_state`, `escrow_zipcode`, `closing_officername`, `closing_officeremail`, `closing_officerphone`, `closing_date`, `escrow_assistantname`, `escrow_assistantemail`, `order_biller`, `order_notes`, `sales_person`, `coupon_code`, `total_amount`, `net_amount`, `credit_balance`, `order_status`, `created_at`, `updated_at`) VALUES
(702, 1, 1, 1, NULL, '5277 S Holladay Blvd', NULL, 'Salt lake City', 'ut', '84117', 'Oakley Miller', '8012431376', 'oakls@live.com', 'Ella Frischknecht', '385-251-9737', 'ella.frischknecht@gmail.com', 'Century 21 Everest Realty', NULL, '3852519737', NULL, 'Nora Linscott', NULL, NULL, 'Eunice Lane', '801-231-3338', 'eunicegjones@gmail.com', 'Windermere Real Estate-Utah (Salt Lake Branch)', 'Lexi Relleve', NULL, 'alexia@wincre.com', 'Cottonwood Title', NULL, NULL, NULL, 'Utah', NULL, 'Wende Harris', 'wharris@cottonwoodtitle.com', '8013279562', '2021-11-04', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-20 15:35:20', '2021-10-20 15:36:36'),
(703, 3, 1, 2, 'buyer-agent', '928 Falconhead Ln', '201', 'Las Vegas', 'NV', '89128', 'Selene Letuli', '(310) 999-2936', NULL, 'Katie Warren', NULL, 'katie@1realestateaency.com', NULL, 'Yahaira Fernandez', NULL, 'admin@1realestateagency.com', NULL, NULL, NULL, 'Robert Morganti', NULL, 'Robmorganti@gmail.com', NULL, NULL, NULL, NULL, 'Fidelity National Title', NULL, NULL, NULL, 'Nevada', NULL, 'Melissa Moses', 'melissa.moses@fnf.com', NULL, '', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 450, 450, 0, 2, '2021-10-20 15:50:02', '2021-10-20 15:50:35'),
(704, 1, 1, 1, NULL, '8 S 100 W', NULL, 'Roosevelt', 'UT', '84066', 'Jason Levitt', '4358282428', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Brian Carter', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Express Title', NULL, NULL, NULL, 'Utah', NULL, 'Todd Wilkerson', 'todd@xptitle.com', NULL, '2021-11-01', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-20 17:05:55', '2021-10-20 17:06:13'),
(705, 3, 1, 2, 'buyer-agent', '847 Appleblossom Time Avenue', NULL, 'North Las Vegas', 'Nevada', '89031', 'Ana Delmy Ramirez', '(702) 812-1366', 'anaramirez11@yahoo.com', 'Nora Aguirre', NULL, 'closings@aguirreteam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alexis M Rogers', NULL, 'homes@opendoor.com', NULL, NULL, NULL, NULL, 'First American Title', NULL, NULL, NULL, 'Nevada', NULL, 'Tracy Spigener', 'tspigener@fnf.com', NULL, '2021-11-01', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 525, 525, 0, 2, '2021-10-20 17:24:35', '2021-10-20 17:25:40'),
(706, 1, 1, 1, NULL, '357 E 860 N', NULL, 'HURRICANE', 'UT', '84737', 'BENNY LEE', '(435) 612-3156', 'bennyjlee@yahoo.com', 'JORGE BENAVIDEZ', NULL, 'jbf617@gmail.com', NULL, NULL, NULL, NULL, 'JOHN KENDRICK', NULL, NULL, 'LINDA JOHNSON', NULL, 'lmj@beyondbb.com', NULL, NULL, NULL, 'cindy@eaglegatetitle.com', 'Eagle Gate Title', '229 E St. George Blvd', '200', 'St. George', 'Utah', '84770', 'LESLIE HEPPLER', 'stgteam@eaglegatetitle.com', '435-703-6060', '2021-10-20', NULL, NULL, 'The Seller', NULL, NULL, NULL, 550, 550, 50, 2, '2021-10-20 17:31:29', '2021-10-20 17:31:41'),
(707, 3, 1, 1, 'buyer-agent', '356 Sunward Drive', NULL, 'Henderson', 'NV', '89014', 'Anwaar Lacy', '(415) 830-2194', 'anwaarlacy@gmail.com', 'Matthew Paulino', '(808) 629-9589', 'matt.paulino@corcorangl.com', 'Corcoran Global Living', 'Michelle Stringer', '725-400-2225`', 'michelle@tc4vegas.com', 'Michael & Heather Rhodes', NULL, NULL, 'Barrett Munson', '(702) 355-2902', 'munsonb2@yahoo.com', 'ERA Brokers Consolidated', NULL, NULL, NULL, 'Lawyer\'s Title', NULL, NULL, NULL, 'Nevada', NULL, 'Loryann Dixon', 'loryann.dixon@ltic.com', '(702) 868-2338', '2021-10-25', 'Stacy Kramer', 'stacy.kramer@ltic.com', 'The Seller', NULL, NULL, NULL, 800, 800, 100, 2, '2021-10-20 17:56:30', '2021-10-20 17:57:21'),
(708, 5, 1, 1, 'escrow-officer', '5603 Alpine Heights', NULL, 'Porter', 'TX', '77365', 'Wendell Westberry & Audrey Taylor', '281-253-4290', 'Wendell4345@ gmail.com', 'Rebecca Johnson', '281-515-9194', 'beckyjohnsonsoldit@ gmail.com', 'JLA Realty', NULL, NULL, NULL, 'Maegin J. Adams', NULL, NULL, 'Katelyn Munsinger', '832-527-9824', 'katelyn.degrealtor@gmail.com', 'Doug Erdy Group', NULL, NULL, 'amcintee@greatamtitle.com', 'Great American Title Company', '20121 W. Lake Houston Pkwy.', 'Suite 100', 'Humble', 'Texas', '77346', 'Dedra Sawyer', 'amcintee@greatamtitle.com', '281-359-6600', '2021-11-05', 'Amy McIntee', 'amcintee@greatamtitle.com', 'The Seller', NULL, 'Roy Davis', NULL, 625, 625, 0, 2, '2021-10-20 18:16:47', '2021-10-20 18:17:24'),
(709, 3, 1, 1, 'buyer-agent', '2317 EAST RENO AVENUE', NULL, 'LAS VEGAS', 'NEVADA', '89119', 'HEBER CABRERA TORRES', '786-720-3429', 'HEBERCABRERA1995@GMAIL.COM', 'ONAIRAM VALDIVIESO', '702-241-4761', 'ONYREALTOR@GMAIL.COM', 'DH CAPITAL REALTY', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'NETCO TITLE', NULL, NULL, NULL, 'Nevada', NULL, 'DANIELLE PEARSON', 'DPEARSON@NETCOTITLE.COM', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 535, 535, 60, 2, '2021-10-20 18:22:55', '2021-10-20 18:23:12'),
(710, 1, 1, 1, 'escrow-officer', '6752 South Ticklegrass Road', NULL, 'West Jordan', 'UT', '84081', 'Jason Gonzalez', '000-000-0000', 'jason.gonzalez1983@gmail.com', 'Kelly Fischer', NULL, 'kellyfischer@realtyone.com', 'Realty ONE Group Signature', NULL, NULL, NULL, 'Zenaida Ballesteros', NULL, NULL, 'Joyce Hawpe', NULL, 'joycehawpe@equityutah.com', 'Equity Solid', NULL, NULL, NULL, 'Doma Insurance Agency', '6965 Union Park Center', '140', 'Cottonwood Heights', 'Utah', '84121', 'Lisa L Smith', 'lisa.smith@doma.com', '801-566-1488', '1969-12-31', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 1, '2021-10-20 18:44:34', '2021-10-20 18:44:34'),
(711, 1, 1, 1, NULL, '745 s 300 w', NULL, 'Payson', 'UT', '84651', 'Mitchell', '8016914179', 'Hardy', 'Shauntel Hyde', '8014493000', 'shauntelhyde@gmail.com', NULL, NULL, NULL, NULL, 'Ryan C. and Janette K. Knapp', '3852551100', NULL, 'Brandon Weeks', NULL, 'N/A', NULL, NULL, NULL, 'victoria@northstartitle.com', 'North Star Title', '6925 S Union Park Center', 'Suite 100', 'Cottonwood Heights', 'Utah', '84047', 'Krystal Cruz', 'krystal@northstartitle.com', '3852551100', '2021-10-19', 'Victoria Vail', 'victoria@northstartitle.com', 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 1, '2021-10-20 19:02:04', '2021-10-20 19:02:04'),
(712, 1, 1, 1, NULL, '745 s 300 w', NULL, 'Payson', 'UT', '84651', 'Mitchell', '8016914179', NULL, 'Shauntel Hyde', '8014493000', 'shauntelhyde@gmail.com', 'Century 21 Everest', NULL, NULL, NULL, 'Ryan C. and Janette K. Knapp', '3852551100', NULL, 'Brandon Weeks', NULL, 'N/A', 'Granite Realty LLC', NULL, NULL, 'teamkrystal@northstartitle.com', 'North Star Title', '6925 S Union Park Center', 'Suite 100', 'Cottonwood Heights', 'Utah', '84047', 'Krystal Cruz', 'krystal@northstartitle.com', '3582551100', '2021-10-19', 'Victoria Vail', 'victoria@northstartitle.com', 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-20 19:07:49', '2021-10-20 19:08:26'),
(713, 1, 1, 1, NULL, '3003 S Red Pine Dr', NULL, 'Saratoga Springs', 'UT', '84045', 'Joseph A. Cruz', '3858873830', NULL, 'marks_21@live.com', '3858873830', 'marks_21@live.com', NULL, NULL, NULL, NULL, 'Brendan Davie', NULL, NULL, 'Dallin Ross', NULL, 'na', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-20 19:22:28', '2021-10-20 19:22:55'),
(714, 3, 1, 1, NULL, '7313 Bugler Swan Way', NULL, 'North Las Vegas', 'NV', '89084', 'Matthew Guidry', '650.421.3365', 'mattg@dpr.com', 'William Okeefe', '702.460.9355', 'billyokeefelv@gmail.com', 'Corcoran Global Licing', 'Mashenka Vascovich', '951.392.1014', 'tc.okeefeteam@gmail.com', NULL, NULL, NULL, 'Jenny Chuang', NULL, 'realtorchuang@gmail.com', NULL, NULL, NULL, NULL, 'Chicago Title Co.', '9075 W Diablo Dr.', '100', 'Las Vegas', 'Nevada', '89148', 'Chelsea Lopez', 'cheldani@ctt.com', '702.836.8013', '2021-11-05', 'Chel Dani Team', 'cheldani@ctt.com', 'The Seller', NULL, NULL, NULL, 985, 985, 0, 2, '2021-10-20 23:34:26', '2021-10-20 23:35:00'),
(715, 1, 1, 1, 'buyer-agent', '3891 S Sigma Dr', NULL, 'Magna', 'UT', '84044', 'Tamika Louise Johnson-Collins', '206-579-7078', 'mekatee2003@yahoo.com', 'Helene Kepas-Brown', NULL, 'helene.kepasbrown@cbrealty.com', 'Coldwell Banker', 'Cody Ostler', NULL, 'cody.ostler@utahhomes.com', NULL, NULL, NULL, 'Raquel Lee', NULL, 'raquelsellhomes@gmail.com', NULL, NULL, NULL, NULL, 'Inwest Title', NULL, NULL, NULL, 'Utah', NULL, 'Monica Degray', 'monica@inwesttitle.com', NULL, '', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-21 01:24:05', '2021-10-21 01:24:37'),
(716, 5, 1, 1, 'escrow-officer', '2803 Lakecrest Forest Driver', NULL, 'Katy', 'Texas', '77493', 'Derek Paulovich', '2017893949', 'Derekpaulovich@gmail.com', 'Vera Mitrofanova', '7133915368', 'verasellshouston@gmail.com', 'VAM Real Estate Solutions', NULL, NULL, NULL, 'Ronald Chadwick', '2816336663', 'ronnie2319@yahoo.com', 'Mickie Cioccia', '2819481718', 'mickiec@callmickiec.com', 'Exp Realty', NULL, NULL, 'aarcher@mtotx.com', 'Monarch Title of Texas', '22322 Grand Corner Dr Ste 125', NULL, 'Katy', 'Texas', '77494', 'Emily Jones', 'ejones@mtotx.com', '8324042795', '2021-11-12', 'Amanda Archer', 'aarcher@mtotx.com', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-21 13:47:03', '2021-10-21 13:47:24'),
(717, 1, 1, 1, NULL, '1488 S 1000 W', NULL, 'Woods Cross', 'UT', '84087', 'Brandon Perry', '2082700101', 'brandonjperry@outlook.com', 'Tyler Belknap', NULL, 'tyler@belknapteam.com', NULL, NULL, NULL, NULL, 'Nicholas Noble', NULL, NULL, 'Amanda Grove', NULL, 'amanda@soldbyanangel.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-21 14:53:11', '2021-10-21 14:53:28'),
(718, 1, 1, 1, 'escrow-officer', '3239 S Mockingbird Way', NULL, 'West Valley', 'UT', '84119', 'Santos', 'Perez', 'joeteam@novationtitle.com', 'Coco Zuniga', NULL, 'transactioncoordinator@gamboateam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pho Lam', NULL, 'pho.lam05@gmail.com', NULL, NULL, NULL, NULL, 'Novation title', '6955 S Union Park Center', '210', 'Midvale', 'Utah', '84047', 'Joe Cespedes', 'joeteam@novationtitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-21 15:10:20', '2021-10-21 15:10:49'),
(719, 5, 1, 1, NULL, '22802 Walden Way', NULL, 'Tomball', 'Texas', '77375', 'Saul Dealba', '832-776-2634', 'sdealba0303@gmail.com', 'Tiffany Mosher', '832-643-1012', 'tiffanyleadsyouhome@gmail.com', 'Walzel Properties', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Select Title', '8116 Spring Cypress', NULL, 'Spring', 'Texas', '77379', 'DeAnn Benedict', 'deann.benedict@select-title.com', '(281) 720-8516', '2021-10-29', 'Rosie Gutierrez', 'rosie.gutierrez@select-title.com', 'The Seller', NULL, 'Kyle Thomas', NULL, 625, 625, 0, 2, '2021-10-21 15:54:33', '2021-10-21 15:54:51'),
(720, 1, 1, 1, 'buyer-agent', '71 W Joy Dr', NULL, 'Farmington', 'UT', '84025', 'Jerry Ruiz', '478-293-8866', 'jerrydruiz@yahoo.com', 'Helene Kepas-Brown', NULL, 'helene.kepasbrown@cbrealty.com', 'Coldwell Banker', 'Cody Ostler', NULL, 'cody.ostler@utahhomes.com', NULL, NULL, NULL, 'Jonathan DeYoung', NULL, 'Jonathan DeYoung', NULL, NULL, NULL, NULL, 'US Title', NULL, NULL, NULL, 'Utah', NULL, 'Liz Cole', 'lcole@ustitleutah.com', NULL, '', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-21 16:19:10', '2021-10-21 16:19:22'),
(721, 1, 1, 1, NULL, '2663 West 2825 North', NULL, 'Farr', 'UT', '84414', 'Mechel', 'Gibbs', NULL, 'Corbin Hyde', NULL, 'corbinhydeutahlistingpro@gmail.com', 'Century 21 Everest', 'Darian Olson', 'utahlistingpro.tc@gmail.com', 'Century 21 Everest', 'Michael P. Mecham Living Trust', NULL, NULL, 'Robert Bolar', NULL, 'N/A', 'Equity Real Estate - Select', NULL, NULL, NULL, 'North Star Title', '6925 S Union Park Center', '100', 'Cottonwood Hieghts', 'Utah', '84047', 'Krystal Cruz', 'krystal@northstartitle.com', '385251100', '2021-11-15', 'Victoria Vail', 'victoria@northstartitle.com', 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 1, '2021-10-21 16:27:21', '2021-10-21 16:27:21'),
(722, 1, 1, 1, NULL, '2663 West 2825 North', NULL, 'Farr West', 'UT', '84414', 'Mechel Gibbs', '3852551110', NULL, 'Corbin Hyde', NULL, 'corbinhydeutahlistingpro@gmail.com', 'Century 21 Everest', 'Darian Olson', 'utahlistingpro.tc@gmail.com', 'Century 21 Everest', 'Michael P. Mecham Living Trust', '3852551100', NULL, 'Robert Bolar', NULL, 'N/A', 'Equity Real Estate - Select', NULL, NULL, NULL, 'North Star Title', '6925 S Union Park Center', '100', 'Cottonwood Heights', 'Utah', '84047', 'Krystal Cruz', 'krystal@northstartitle.com', '3852551100', '2021-11-15', 'Victoria Vail', 'victoria@northstartitle.com', 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-21 16:37:59', '2021-10-21 16:38:07'),
(723, 3, 1, 1, 'buyer-agent', '3020 Robincrest Ct', NULL, 'N. Las Vegas', 'NV', '89031', 'Nic Plemons  Sara Castillo', '(702) 672-7633', 'nplemons13@gmail.com', 'Sheri Page', '7023383619', 'sheri@teampagehomes.com', 'Urban Nest Realty', 'Dawn Chuchman', '7023383619', 'dawn@teampagehomes.com', 'Donald Vida', NULL, NULL, 'Donna Hashimmoto', '702-604-6646', 'donnahashimoto@gmail.com', 'United Realty Group', NULL, NULL, NULL, 'Lawyers Title of Nevada', '7670 W. Lake Mead Blvd  Suite 120', NULL, 'Las Vegas', 'Nevada', '89128', 'Amber Bean', 'abean@ltic.com', '(702) 266-8236', '2021-10-22', 'Jennifer Provance', 'jprovance@ltic.com', 'The Buyer', NULL, NULL, NULL, 500, 500, 25, 2, '2021-10-21 17:05:37', '2021-10-21 17:07:05'),
(724, 5, 1, 1, 'escrow-officer', '301 Wild Plum Drive', NULL, 'League City', 'TX', '77573', 'Brad and Korina Young', '2817024303', 'brad_young@ymail.com, k2016young@gmail.com', 'Kara Mason', '8329156872', 'karadavis@kw.com', 'Jones, Valasek, & Associates, LLC', NULL, NULL, NULL, 'Kelli East', NULL, NULL, 'Albert Churchill', NULL, 'achurc6966@msn.com', 'Churchill Real Estate', NULL, NULL, NULL, 'Great American Title Company', '26113 Oak Ridge Dr., Suite D', NULL, 'The Woodlands', 'Texas', '77380', 'Ryan Sheppard', 'rsheppard@greatamtitle.com', '2817713600', '2021-11-04', NULL, NULL, 'The Seller', NULL, 'Roy Davis', NULL, 500, 500, 55, 2, '2021-10-21 18:04:53', '2021-10-21 18:05:03'),
(725, 1, 1, 1, 'escrow-officer', '99 West South Temple Street', '1406', 'Salt Lake City', 'Utah', '84101', 'Keith Ashton', '8013070160', NULL, 'David Bemis', NULL, 'david@davidbemis.com', 'Black Diamond', NULL, NULL, NULL, 'Warren H. Winter', NULL, NULL, 'Chris Corroon', NULL, 'chriscorroon@gmail.com', 'Axis Realty Group', NULL, NULL, NULL, 'Integrated Title Services', '1092 S Union Ave', NULL, 'Midvale', 'Utah', '84047', 'Vickie Holmstead', 'vickieteam@itstitle.com', '801-307-0160', '1969-12-31', 'Casey', 'Vickieteam@itstitle.com', 'The Seller', NULL, NULL, NULL, 750, 750, 0, 2, '2021-10-21 18:10:47', '2021-10-21 18:11:13'),
(726, 1, 1, 1, 'escrow-officer', '11577 S Spring Stone Drive', NULL, 'South Jordan', 'Utah', '84009', 'Brett Terpstra', '801-957-4111', 'terpstra.brett@gmail.com', 'Michael Brande', '801-210-7800', 'michael.brande@c21everest.com', 'Century 21 Everest', 'Marissa Quintana', '801-871-2147', 'marissa.quintana@c21everest.com', 'Dallin and Jolynne Walkenhorst', NULL, NULL, 'Ashley Lindsey', '801-637-8419', 'alindsey@kw.com', NULL, NULL, NULL, NULL, 'North Star Title', '6925 South Union Park Center, 100', '100', 'Cottonwood Heights', 'Utah', '84047', 'Nick Park', 'teamnick@northstartitle.com', '385-255-1100', '2021-10-26', NULL, NULL, 'The Buyer', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-21 18:15:10', '2021-10-21 18:15:34'),
(727, 5, 1, 1, NULL, '2514 RIDGEWOOD ST', NULL, 'IRVING', 'TX', '75062', 'Lesvia Xiomara Sanchez', '2149660336', 'xiomara8930@gmail.com', 'Oriana Serrano Nicolas', '2149600976', 'oriana.nicolas@compass.com', 'Compass RE Texas, LLC', 'Debra Brown', NULL, 'debra.brown@compass.com', 'iZenith, LLC', NULL, 'iZenithLLC@Gmail.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'teamrobert@kanetitlellc.com', 'Kane Title, LLC', '5301 Village Creek Drive', 'Suite A', 'Plano', 'Texas', '75093', 'Robert Salgado', 'teamrobert@kanetitlellc.com', '9723251505', '2021-10-22', NULL, NULL, 'The Seller', NULL, NULL, NULL, 550, 550, 5, 2, '2021-10-21 18:43:26', '2021-10-21 18:43:47'),
(728, 1, 1, 2, NULL, '289 N 2470 W', NULL, 'Hurricaine', 'ut', '84737', 'Matthew Jacobson', '435-851-9502', 'matthewelmojacobson@gmail.com', 'Matthew jacobson', NULL, 'matthewelmojacobson@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shane Jourdain', NULL, 'shane.jourdain@homie.com', NULL, NULL, NULL, NULL, 'First American', NULL, NULL, NULL, 'Utah', NULL, 'Allison Schreiber', 'aschreiber@firstam.com', NULL, '2021-11-19', 'Bob and Linda Higgins - Sale', NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-21 19:08:26', '2021-10-21 19:08:36'),
(729, 5, 1, 1, NULL, '8026 Villa Lago', NULL, 'Houston', 'Texas', '77070', 'Angela Smecicas', '281-330-8004', NULL, 'Marian Rohat', '713-315-7762', 'marianrohat@gmail.com', 'Ross and Marshall Real Estate', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Stewart Title', NULL, NULL, NULL, 'Texas', '77070', 'Kristal Same', 'kristal.same@stewart.com', '(281) 374-8700', '2021-11-01', NULL, NULL, 'The Seller', NULL, 'Kyle Thomas', NULL, 625, 625, 0, 2, '2021-10-21 20:06:34', '2021-10-21 20:06:52'),
(730, 5, 1, 1, NULL, '17814 Country Fields', NULL, 'Magnolia', 'Texas', '77355', 'Dawn Stepp', '832.575.2212', 'dstepp@cmgfi.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Stewart Title', NULL, NULL, NULL, 'Texas', '77354', 'Kelly Ernst', 'kelly.ernst@stewart.com', '832-482-1883', '2021-10-21', 'Miranda Talbot', 'Miranda.Talbot@stewart.com', 'The Seller', 'This is one of my referral partners personal home. She is a lender.\n\n-Kyle', 'Kyle Thomas', NULL, 530, 530, 0, 2, '2021-10-21 20:14:08', '2021-10-21 20:14:16'),
(731, 5, 1, 1, NULL, '5302 Groveton Lane', NULL, 'Pearland', 'Texas', '77584', 'Jariro Ruiz', '702-439-7840', 'jpardo@gmail.com', 'Chelsea Moser', '2819487511', 'chelsa@teamsimien.com', 'Simien Properties', NULL, NULL, NULL, 'Cynthia Barnett', NULL, 'gpsrealestateassets@gmail.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'lfillman@southlandtitle.net', 'South Land Title', '1300 Hercules, #115', NULL, 'Houston', 'Texas', '77058', 'Lorena Fillman', 'lfillman@southlandtitle.net', '281333-1200', '2021-09-30', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 550, 550, 5, 2, '2021-10-21 20:32:05', '2021-10-21 20:32:22'),
(732, 1, 1, 1, NULL, '368 East 7th Avenue', NULL, 'Salt Lake City', 'Utah', '84103', 'Nicole Elizabeth Birrer', '240-750-5699', NULL, 'Patrick Schirf', '801-718-5555', 'patrick@cityhomecollective.com', NULL, NULL, NULL, NULL, 'Jaime and Juanita Alfaro', NULL, NULL, 'Adam Derfler', '801-553-1800', 'jake@vtitleutah.com', NULL, NULL, NULL, NULL, 'Vanguard Title', '11910 S. State St.', '150', 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@vtitleutah.com', '801-553-1800', '2021-10-20', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-21 20:33:55', '2021-10-21 20:34:03'),
(733, 1, 1, 1, 'escrow-officer', '4732 W 4775 S', NULL, 'Salt Lake city', 'ut', '84118', 'Sulema Cervantes', '222-222-2222', 'sulemaacervantes15@gmail.com', 'MAIRA PREITO', NULL, 'Maira@Gamboateam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RACHEL HOUSEKEEPER', NULL, 'utahhomeswithrachel@gmail.com', NULL, NULL, NULL, NULL, 'Novation title', '6955 S Union Park Center', '210', 'Midvale', 'Utah', '84047', 'Joe Cespedes', 'joeteam@novationtitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-21 21:04:22', '2021-10-21 21:04:29'),
(734, 1, 1, 1, 'buyer-agent', '2698 S Beverly Street', NULL, 'Salt Lake City', 'UT', '84106', 'Winston & Amarilys Scott', '787-461-1953', 'iasantamora@gmail.com', 'Fred Repman', '801-688-4342', 'utahrealtorfred@gmail.com', 'Utah Realty Advisors, LLC', NULL, NULL, NULL, 'Jessica Morano', NULL, NULL, 'Katie Eckman-Jelitto', '801-916-5085', 'katie@utahkatie.com', 'Equity RE-Solid', NULL, NULL, NULL, 'Integrated Title Services', '10437 1300 W Suite 200', NULL, 'South Jordan', 'Utah', '84095', 'Colton Halvorson', 'coltonteam@itstitle.com', '801-307-0160', '2021-10-26', 'Lexi Smith', 'coltonteam@itstitle.com', 'The Buyer\'s Agent', NULL, 'Kristin Combs', NULL, 700, 700, 0, 2, '2021-10-22 12:46:18', '2021-10-22 12:46:34'),
(735, 5, 1, 1, 'escrow-officer', '18425 Star Gazer Way', NULL, 'Pflugerville', 'TX', '78660', 'Nir Hod', '650-862-9161', 'nirhod1@gmail.com', 'Or Yochanan', '512-761-8587', 'oryo@amazingrealty.com', 'Amazing Realty', 'Christianna Velazquez', NULL, 'cvelazquez@empower-realestate.com', 'Hi Thai', NULL, 'hihongthai@gmail.com', 'Lori Huey', NULL, 'ihuey@cbunited.com', 'Coldwell Banker', NULL, NULL, NULL, 'Independence Title', '101 E Old Settlers Blvd', '110', 'Round Rock', 'Texas', '78664', 'Lisa Reiter', 'teamreiter@independencetitle.com', '512-255-9593', '2021-11-15', 'Candice Chapman', 'candice.chapman@independencetitle.com', 'The Buyer', NULL, NULL, NULL, 625, 625, 0, 1, '2021-10-22 13:11:14', '2021-10-22 13:11:14'),
(736, 5, 1, 1, NULL, '18425 Star Gazer Way', NULL, 'Pflugerville', 'TX', '78660', 'Nir Hod', '650-862-9161', 'nirhod1@gmail.com', 'Or Yochanan', '512-761-8587', 'oryo@amazingrealty.com', 'Amazing Realty', 'Christianna Velazquez', NULL, 'cvelazquez@empower-realestate.com', 'Hi Thai', NULL, 'hihongthai@gmail.com', 'Lori Huey', NULL, 'lhuey@cbunited.com', 'Coldwell Banker Realty', NULL, NULL, NULL, 'Independence Title', '101 E Old Settlers Blvd', '110', 'Round Rock', 'Texas', '78664', 'Lisa Reiter', 'teamreiter@independencetitle.com', '512-255-9593', '2021-11-15', 'Candice Chapman', 'candice.chapman@independencetitle.com', 'The Buyer', NULL, NULL, NULL, 625, 625, 0, 2, '2021-10-22 13:15:59', '2021-10-22 13:16:31'),
(737, 1, 1, 1, NULL, '559 North 780 East', NULL, 'Tooele', 'UT', '84074', 'Ricardo Contreras', '(801) 865-1920', NULL, 'Yesenia Gonzalez-Alvarez', NULL, 'yesnia_8@live.com', 'Century 21 Everest Realty Group', NULL, NULL, NULL, 'Michael S. Smith', NULL, NULL, 'KIMBERLY CUNNINGHAM', NULL, 'kcunninghamrealtor@gmail.com', 'Wise Choice Real Estate', NULL, NULL, 'addie@novationtitle.com', 'Novation Title', '6955 S Union Park Center', '210', 'Midvale', 'Utah', '84047', 'Cyndi Burrola', 'CyndiTeam@novationtitle.com', NULL, '2021-10-22', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-22 13:47:58', '2021-10-22 13:51:26'),
(738, 5, 1, 1, NULL, '15310 Crathie Bend Drive', NULL, 'Humble', 'TX', '77346', 'Ariane N. Zebaze', '664-321-2484', 'arianezebaze@gmail.com', 'Alaine Towa Njankou', '346-400-7709', 'alainbedos1@gmail.com', NULL, 'Joy Fraley', '281-802-2968', 'joy@joyfraley.com', 'James Hunter', NULL, NULL, 'Matthew Guzman Team', '281-650-0533', 'mattguzmanremax@gmail.com', 'RE/MAX Universal', NULL, NULL, NULL, 'Red Oak Title', '10720 W. Sam Houston Pkwy North  Suite 200', NULL, 'Houston', 'Texas', '77064', 'Donna Small', 'Donna.Small@redoaktitlellc.net', '713-625-8639', '1969-12-31', 'Chacha Wilson', 'Chacha.Wilson@stewart.com', 'The Seller', NULL, 'Roy Davis', NULL, 575, 575, 30, 2, '2021-10-22 14:28:04', '2021-10-22 14:28:46'),
(739, 5, 1, 1, 'escrow-officer', '4439 Amaryllis Ave', NULL, 'Baytown', 'TX', '77521', 'Peter Cyril', '832-339-2413', 'dcshipping6875@hotmail.com', 'Trasel Holmes', '(832) 904-8399', 'traselholmes@gmail.com', 'All City Real Estate, LTD', 'Cindy Cox', '(210) 274-4663', 'transactions@topshelftc.com', 'James Budroe', '7138163232', 'jbudroe@campconstruction.com', 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'closingteam2@pattentitle.com', 'Patten Title Company', '4265 San Felipe St', 'Suite 400', 'HOUSTON', 'Texas', '77027', 'Shea Johnson', 'closingteam2@pattentitle.com', '7136215808', '2021-10-27', 'Miranda Knerr', 'closingteam2@pattentitle.com', 'The Seller', NULL, NULL, NULL, 745, 745, 0, 2, '2021-10-22 14:41:00', '2021-10-22 14:46:24'),
(740, 1, 1, 1, NULL, '542 W 500 N', NULL, 'American Fork', 'UT', '84003', 'Jeduthan Averett', '8015992117', 'jwaverett@gmail.com', 'Ernesto Lopez', NULL, 'ernestolopez@267gmail.com', NULL, NULL, NULL, NULL, 'Joseph Carroll', NULL, NULL, 'William Bustos', NULL, 'sales@bustosre.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-22 15:18:24', '2021-10-22 15:18:30'),
(741, 1, 1, 1, NULL, '1153 S 200 E', NULL, 'Farmington', 'UT', '84025', 'Vickie Sine', '9493785113', 'ajautahrealestatepro@gmail.com', 'Aja Domingo', NULL, 'ajautahrealestatepro@gmail.com', NULL, NULL, NULL, NULL, 'Don R. Farnsworth', NULL, 'juan.gomez@homie.com', 'Juan Gomez', NULL, 'juan.gomez@homie.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-22 15:35:07', '2021-10-22 15:35:12'),
(742, 1, 1, 1, 'buyer-agent', '442 N. Cowan Circle', NULL, 'Payson', 'UT', '84651', 'Antonio DiDonato', '619-519-1627', 'antoniodid@gmail.com', 'Stephanie Farwell', NULL, 'stephanie@theroxburghgroup.com', NULL, NULL, NULL, NULL, 'Rebeca Baguley', NULL, NULL, 'Rebeca Baguley', NULL, 'eversolovley5@gmail.com', NULL, NULL, NULL, NULL, 'Meraki Title', '11910 S State Street', '150', 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@merakititle.com', NULL, '', NULL, NULL, 'The Buyer', NULL, 'Sean McCrady', NULL, 600, 600, 0, 2, '2021-10-22 16:06:50', '2021-10-22 16:06:56'),
(743, 1, 1, 1, NULL, '1681 E Shadow Drive', NULL, 'Eagle Mountain', 'Utah', '84005', 'Nancy Delatorre', '8016514901', NULL, 'Maria Torres', NULL, 'oporta5356@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Natalie Sanchez', NULL, 'N/A', NULL, NULL, NULL, NULL, 'Vanguard Title', NULL, NULL, NULL, 'Utah', NULL, 'Ryan Hoskins', 'teamryan@vtitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-22 16:36:05', '2021-10-22 16:36:14'),
(744, 1, 1, 1, 'escrow-officer', '3355 West 5585 South', NULL, 'Taylorsville', 'UT', '84129', 'Rafael Barrientos', '222222222', 'rafael.barrientos400@gmail.com', 'Coco Zuniga', NULL, 'transactioncoordinator@gamboateam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anne Tobin', NULL, 'anne.hallmarkrealestateco@gmai.com', NULL, NULL, NULL, NULL, 'Novation title', '6955 S Union Park Center', '210', 'Midvale', 'Utah', '84047', 'Joe Cespedes', 'joeteam@novationtitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-22 17:15:59', '2021-10-22 17:16:04'),
(745, 1, 1, 1, NULL, '3331 South 3690 West', NULL, 'West Valley City', 'UT', '84120', 'Jonatan Ronaldo Coto', '(801) 831-9198', 'jonatan_coto@hotmail.com', 'YARHTIB \'Y\' VAZQUEZ', '(801) 931-9362', 'yrealty21@gmail.com', 'Century 21 Everest', NULL, NULL, NULL, 'Joseph A. Luna', NULL, NULL, 'Dave Sauer', '(801) 931-7946', 'N/A', 'Utah  Homes For Everyone', NULL, NULL, NULL, 'North Star Title', '6925 S Union Park Center', '100', 'Cottonwood Heights', 'Utah', '84047', 'Krystal Cruz', 'krystal@northstartitle.com', '3852551100', '2021-11-05', 'Victoria Vail', 'victoria@northstartitle.com', 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-22 17:27:23', '2021-10-22 17:28:12'),
(746, 5, 1, 1, 'escrow-officer', '18 Hickory Oak Drive', NULL, 'Spring', 'TX', '77381', 'Jose Jorge', 'Rivero Mendez', 'sportorivero77@outlook.com', 'Guillermo A. Orozco', '281-507-0809', 'gaorozcol@gmail.com', 'Realty ONE Group, Experience', NULL, NULL, NULL, 'Vicina', 'Ventures, LLC', 'derek@flashrealtysolutions.com', 'Michael Kennedy', '832-389-6058', 'Mike@FlashRealtySolutions.com', 'Flash Realty Solutions', NULL, NULL, NULL, 'Texas Title', '5300 Memorial Drive', '460', 'Houston', 'Texas', '77007', 'Meka Dixon', 'mdixon@texastitle.com', '281-822-4111', '2021-10-29', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 55, 2, '2021-10-22 18:03:29', '2021-10-22 18:03:44'),
(747, 1, 1, 1, NULL, '3331 South 3690 West', NULL, 'West Valley City', 'UT', '84120', 'Jonatan Coto', '801-831-9198', 'jonatan_coto@hotmail.com', 'Yarhtib \"Y\" Vazquez', NULL, 'yrealty21@gmail.com', 'Century 21 Everest', 'Joey Parker', NULL, 'eliteteamtc@gmail.com', 'Joseph A Luna', NULL, NULL, 'Dave Sauer', NULL, 'dave@davesauer.com', 'Utah Homes for Everyone', NULL, NULL, NULL, 'North Star Title', '6925 South Union Park Center', '#100', 'Cottonwood Heights', 'Utah', '84047', 'Krystal Cruz', 'krystal@northstartitle.com', NULL, '2021-11-05', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 400, 400, 0, 2, '2021-10-22 18:11:05', '2021-10-22 18:11:31'),
(748, 3, 1, 1, NULL, '6542 Cinnabar Coast Ln', NULL, 'N. Las Vegas', 'NV', '89084', 'Miguel Estrada Ramirez', '(540) 395-9129', NULL, 'Katie Warren', NULL, 'Katie@1realestateagency.com', '1Realestate Agency', 'Yahaira Fernandez', '702-703-2400', 'admin@1realestateagency.com', 'Jose Solis and Erika Zaragoza', NULL, NULL, 'Cielo Vernon', NULL, 'reovernon@gmail.com', NULL, NULL, NULL, NULL, 'Driggs Title', NULL, NULL, NULL, 'Nevada', NULL, 'Ericka Alfaro', 'erickaa@driggstitle.com', NULL, '', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 475, 475, 0, 2, '2021-10-22 18:12:07', '2021-10-22 18:12:19'),
(749, 1, 1, 1, NULL, '3166 W Designer Court', NULL, 'West Valley City', 'Utah', '84119', 'Paraw Soe', '801-783-0588', NULL, 'Haydee Lara', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jim Wu', NULL, 'N/A', NULL, NULL, NULL, NULL, 'Vanguard Title', NULL, NULL, NULL, 'Utah', NULL, 'Ryan Hoskins', 'Teamryan@vtitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-22 19:30:50', '2021-10-22 19:30:57'),
(750, 5, 1, 1, NULL, '207 S Meadows Ct', NULL, 'Sugar Land', 'TEXAS', '77479', 'Audrey Ann Crowell', '405-397-1489', 'muncy34@hotmail.com', 'Trey\" James V Young III', '281-630-3233', 'trey@promarkrealtygroup.com', 'Promark Realty Group', NULL, NULL, NULL, 'Hafiz A  Mangrio', NULL, NULL, 'Aqeel Virk', NULL, 'aqeelvirk41@gmail.com', NULL, NULL, NULL, NULL, 'American Title Company', '800 Bonaventure Way', '113', 'Houstong', 'Texas', '77479', 'Samran Malik', 'samran.malik@atctx.com', NULL, '2021-10-26', NULL, NULL, 'The Buyer', NULL, 'Kyle Thomas', NULL, 650, 650, 25, 1, '2021-10-22 19:38:37', '2021-10-22 19:38:37'),
(751, 5, 1, 1, 'escrow-officer', '207 S Meadows Ct', NULL, 'Sugar Land', 'Texas', '77479', 'Audrey Ann  Crowell', '405-397-1489', 'muncy34@hotmail.com', '\"Trey\" James V Young III', NULL, 'trey@promarkrealtygroup.com', 'Promark Realty Group', NULL, NULL, NULL, 'Hafiz A  Mangrio', NULL, NULL, 'Aqeel Virk', NULL, 'aqeelvirk41@gmail.com', NULL, NULL, NULL, NULL, 'American Title Company', '800 Bonaventure Way', 'Ste 113', 'Sugar Land', 'Texas', '77479', 'Samran Malik', 'samran.malik@atctx.com', NULL, '', NULL, NULL, 'The Buyer', NULL, 'Kyle Thomas', NULL, 625, 625, 0, 2, '2021-10-22 19:42:45', '2021-10-22 19:43:11'),
(752, 1, 1, 1, NULL, '4846 W 5680 N', NULL, 'Bear River City', 'UT', '84301', 'Jerry Baker', '406-231-3184', 'milymid2010@hotmail.com', 'Travis Matern', NULL, 'travis@gurrteam.com', NULL, NULL, NULL, NULL, 'Trina Gardner', NULL, NULL, 'Brandy Fowers', NULL, 'brandyfowersrealtor@yahoo.com', NULL, NULL, NULL, NULL, 'Vanguard Title Insurance Agency', '6925 S Union Park Center', '400', 'Midvale', 'Utah', '84047', 'Tiffany Ung', 'teamv@vtitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-22 20:30:51', '2021-10-22 20:31:04'),
(753, 1, 1, 1, 'buyer-agent', '331 N 1000 W', NULL, 'Lehi', 'Utah', '84043', 'Dave and Stephanie Tanner', '801-636-2992', 'stanner377@gmail.com', 'Mark Wilkinson', '801-836-1965', 'markw@utahproperties.com', 'Berkshire Hathaway HomeServices Elite (Alpine)', 'Minna', '801-756-0088', 'minnat@utahproperties.com', 'Jared and Cynthia Pearson', NULL, NULL, 'Kenneth Sperry', '801-687-6151', 'kennethc.sperry@gmail.com', 'RXB Realty Inc', NULL, NULL, 'minnat@utahproperties.com', 'Highland Title', '365 S Garden Grove Lane Suite 310', NULL, 'Pleasant Grove', 'Utah', '84062', 'Lisa Lott', 'Lisal@highlandtitle.com', '801-607-1723', '2021-10-22', 'April', 'Aprila@highlandtitleutah.com', 'The Seller', NULL, 'Kristin Combs', NULL, 800, 800, 0, 1, '2021-10-22 22:02:53', '2021-10-22 22:02:53'),
(754, 1, 1, 1, 'buyer-agent', '241 N 250 W', NULL, 'Tooele', 'UT', '84074', 'Paul Michener', '805-236-5297', 'pavelmichener@yahoo.com', 'Alicia Holdaway', '801-243-7188', 'sherpaclientcare@gmail.com', 'Summit Sotheby\'s International', NULL, NULL, 'sherpaclientcare@gmail.com', NULL, NULL, NULL, 'Jennifer Augerlavoie', '209-505-7795', 'thefoodierealtor@gmail.com', NULL, NULL, NULL, NULL, 'Truly Title', '6965 Souht Union Park Center', 'Suite 180', 'Cottonwood Heights', 'Utah', '84047', 'Crystal Bond', 'crystal.bond@trulytitle.com', NULL, '2021-10-26', NULL, NULL, 'The Seller', NULL, 'Sean McCready', NULL, 500, 500, 0, 2, '2021-10-23 14:35:51', '2021-10-23 14:36:09'),
(755, 1, 1, 1, 'buyer-agent', '3292 W Palomar', NULL, 'Hurricane', 'Utah', '84737', 'Trenton Leavitt', '4352166786', 'ytleavitt@gmail.com', 'Ashly Augustus', '4352256755', 'ashly@movetosunnystgeorge.com', 'C21 Everest', NULL, NULL, NULL, 'Scott Adkins', '4352256755', 'ashly@movetosunnystgeorge.com', 'Ashly Augustus', '4352256755', 'ashly@movetosunnystgeorge.com', 'C21 Everest', NULL, NULL, NULL, 'Hailey Eagan', '162 N 300 E', NULL, 'St George', 'Utah', '84770', 'Hailey Eagen', 'ashly@movetosunnystgeorge.com', NULL, '', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 575, 575, 0, 2, '2021-10-24 15:19:56', '2021-10-24 15:20:08'),
(756, 1, 1, 1, 'buyer-agent', '10057 Birnam Woods Way', NULL, 'South Jordan', 'Utah', '84009', 'Alex & Maria Napoles', '000-000-0000', 'alexn0325@me.com', 'Molly Riley', '385-229-2153', 'mollyRiley@kw.com', 'KW Utah Realtors Keller Williams', NULL, NULL, NULL, 'Kallas', NULL, NULL, 'Rachel Henderson', '435-680-3061', 'RachelUtahHomes@gmail.com', 'Henderson Real Estate', NULL, NULL, NULL, 'Oasis Title', NULL, NULL, NULL, 'Utah', NULL, 'Beau Pili', 'Beau.Pili@OasisTitleUtah.com', '000-000-0000', '2021-11-01', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-25 14:48:36', '2021-10-25 14:48:43'),
(757, 5, 1, 1, NULL, '9855 Alexa Pl', NULL, 'San Antonio', 'TX', '78251', 'Nicole Jackson', '708-466-5956', 'ms.nicole0724@yahoo.com', 'Abraham Artavia', '210-379-5437', 'abe@theagencytexas.com', 'The Agency Texas', 'Laura Smierciak', '210-264-9922', 'laura@theagencytexas.com', 'Abiel Gutierrez & Veronica Espinoza', NULL, NULL, 'Mari Tello', '2102096430', 'mtello@beelieverealestate.com', 'B.R.E Realty', NULL, NULL, NULL, 'Capital Title', '7915 W Loop 1604 N', '107', 'San Antonio', 'Texas', '78254', 'Sandra Castro', 'scastro@ctot.com', '2102021979', '2021-11-04', NULL, 'castroteam@ctot.com', 'The Seller', NULL, 'Sallye Blake', NULL, 625, 625, 0, 2, '2021-10-25 15:44:14', '2021-10-25 15:44:37'),
(758, 1, 1, 1, 'escrow-officer', '3841 W Seagull Drive', NULL, 'West Valley City', 'ut', '84120', 'James Hoppe', '801-636-7511', 'legendary.hoppe@gmail.com', 'Markee hall', '801-815-6753', 'markeehall@utahredzone.com', 'Red Zone RE', NULL, NULL, NULL, 'Charles R Furden', NULL, NULL, 'Kathy Salazar', NULL, 'markeehall@utahredzone.com', NULL, NULL, NULL, 'joni.simmons@stewart.com', 'Stewart Title', '6955 S Union Park Center', 'Suite 100', 'Midvale', 'Utah', '84047', 'Joni Simmons', 'joni.simmons@stewart.com', '8012055664', '2021-11-05', 'Chelsea Snow', 'chelsea.snow@stewart.com', 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-25 16:41:27', '2021-10-25 16:42:03'),
(759, 1, 1, 1, NULL, '1918 S 2740 E', NULL, 'St. George', 'UT', '84790', 'Ben Ovard', '(720) 350-5558', 'ben@sdidenver.com', 'Meghan Irvin', NULL, 'meg@beathomeutah.com', NULL, NULL, NULL, NULL, 'Rebecca Higgins', NULL, NULL, 'Rebecca Higgins', NULL, 'rebeccahiggins1@me.com', NULL, NULL, NULL, NULL, 'Infinity Title', '221 W Tabernacle', NULL, 'St. George', 'Utah', '84770', 'Jared Plewe', 'jared@infinitytitleutah.com', '435-429-1500', '2021-10-25', 'Brandi Leighter', 'brandi@infinitytitleutah.com', 'The Seller', NULL, NULL, NULL, 750, 750, 150, 2, '2021-10-25 16:50:26', '2021-10-25 16:50:32'),
(760, 1, 1, 1, 'escrow-officer', '70 West 100 South', NULL, 'Midway', 'UT', '84049', 'Mark and Shanna Nelson', '435-503-1850', 'shanna@realrunners.com', 'Darin Heckel', '435-671-3957', 'darinjheckel@gmail.com', 'Davis Coleman Realty', NULL, NULL, NULL, 'Paula Hicken', NULL, NULL, 'Darin Heckel', '435-671-3957', 'darinjheckel@gmail.com', 'Davis Coleman Realty', NULL, NULL, NULL, 'Atlas Title', '490 West 100 South', NULL, 'Heber', 'Utah', '84032', 'Kaitlyn Finlayson', 'kaitlyn@atlastitle.com', '435-657-1220', '2021-10-22', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-25 17:24:15', '2021-10-25 17:24:30'),
(761, 1, 1, 1, 'buyer-agent', '6427 W Annie Lee Way', NULL, 'West Jordan', 'UT', '84081', 'Simon & Jodie Avila', '385-301-7318', 'guerasimon1437@gmail.com', 'Erik Jones', '801-631-3070', 'erikjones.century21@gmail.com', 'Century 21 Everest', NULL, NULL, NULL, 'David & Sarah Street', NULL, NULL, 'Greg Summerhays', '801-673-6317', 'greg@champmanrichards.com', 'Chapman Richards & Associates', NULL, NULL, NULL, 'Cottonwood Title', NULL, NULL, NULL, 'Utah', NULL, 'Brett Jeanselme', 'brettj@cottonwoodtitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-25 17:55:15', '2021-10-25 17:55:40'),
(762, 5, 1, 2, NULL, '2304 S Lakeline Blvd,', 'Unit 331,', 'Cedar Park,', 'TX', '78613', 'Katayoon Shafagh', '512-773-0313', 'kathyshafagh@yahoo.com', 'Kris Luck', '5127730313', 'kris@krisluck.com', 'Compass RE TX. LLC', NULL, NULL, NULL, 'Zillow Homes Property Trust', '833-927-3582', 'closings-AUS@zillowclosings.com', 'Levi Rogers', '210-331-7000', 'ATX-Resale@LeviRodgersGroup.com', 'Levi Rodgers', NULL, NULL, 'closings-AUS@zillowclosings.com', 'ZILLOW CLOSING SERVICES', '5215 N O’Connor Blvd, Ste 1200', NULL, 'Irving', 'Texas', '75039', 'Lisa Garza', 'closings-AUS@zillowclosings.com', '833-927-3620', '2021-10-26', 'Jacque Thompson', 'closings-AUS@zillowclosings.com', 'The Seller', 'Acclaimed Home Warranty \"Premium\" condo plan, covering the refrigerator for $520 total.', NULL, NULL, 520, 520, 0, 2, '2021-10-25 21:05:36', '2021-10-25 21:05:55'),
(763, 3, 1, 1, 'buyer-agent', '4612 GARITA STREET', NULL, 'LAS VEGAS', 'NEVADA', '89121', 'CARLOS  FARINAS BARROSO', '786-803-7241', 'CARLOSRFARINAS1989@GMAIL.COM', 'DERICK GUZMAN', '7029317724', 'DERICKGUZMANREALTOR@GMAIL.COM', 'DH CAPITAL REALTY', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'WFG NATIONAL TITLE', NULL, NULL, 'LAS VEGAS', 'Nevada', NULL, 'SARAH BRUMMETT', 'SBRUMMETT@WFGTITLE.COM', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 535, 535, 60, 2, '2021-10-25 22:09:48', '2021-10-25 22:10:09'),
(764, 1, 1, 1, 'escrow-officer', '363 & 379 NORTH MAIN STREET', NULL, 'AURORA', 'UT', '84620', 'KATHRYN JENSEN', '3852720879', 'kjensen34@comcast.net', 'BRAD DUFFIN', '(435) 201-1954', 'bdduffin8758@yahoo.com', 'RED ROCK REAL ESTATE', NULL, NULL, NULL, 'DAVID CLARKE', NULL, NULL, 'GEORGIE ELLIOTT', NULL, 'georgielliott@hotmail.com', NULL, NULL, NULL, NULL, 'TITLE GUARANTEE', '955 CHAMBERS STREET', 'STE 240', 'SOUT OGDEN', 'Utah', '84403', 'ASHLEE REEDER', 'ASHLEETEAM@UTAHTITLE.COM', '8015284392', '2021-10-22', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-26 13:58:26', '2021-10-26 13:58:38'),
(765, 1, 1, 1, 'buyer-agent', '1163 W. Jordan River Dr.', NULL, 'South Jordan', 'UT', '84095', 'Colin Watson', '435-830-8392', 'colin.watson@gmail.com', 'Heather Roxburgh', NULL, 'heather@theroxburghgroup.com', NULL, NULL, NULL, NULL, 'Roger Mann', NULL, NULL, 'MArie Holmes', NULL, 'marie@mmpropertiesslc.com', NULL, NULL, NULL, NULL, 'Meranki Title', '11910 S. State St.', '150', 'Draper', 'Utah', '84020', 'Jake Sorensen', 'teamjake@merakititle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sean McCrady', NULL, 600, 600, 0, 2, '2021-10-26 14:18:57', '2021-10-26 14:19:04'),
(766, 1, 1, 1, NULL, '455 E HILLVIEW DR', NULL, 'cedar city', 'utah', '84721', 'MICHAEL THOMAS FORREST', '909-214-2822', 'mforrest1964@gmail.com', 'KIMETTE HUGHES', '435-668-1799', 'kimettehughes@gmail.com', 'RED ROCK REAL ESTATE', 'SANDRA HUGHES', '435-922-5753', 'sandrahugheshomes@gmail.com', 'JOHN LOVEDAY', NULL, NULL, 'CARTER WILKEY', NULL, 'carter.wilkey@gmail.com', 'iPRO REALTY NETWORK', NULL, NULL, 'charcarter@inwesttitle.com', 'Inwest Title Services Inc', '444 E Tabernacle, Ste B202', NULL, 'St George', 'Utah', '84770', 'CHAR CARTER', 'charcarter@inwesttitle.com', '435-634-5080', '2021-11-05', NULL, NULL, 'The Seller', NULL, 'KRISTEN', NULL, 600, 600, 0, 2, '2021-10-26 14:29:39', '2021-10-26 14:30:20'),
(767, 1, 1, 1, NULL, '4364 West 5855 South', NULL, 'Salt Lake City', 'Utah', '84118', 'Jose Alberto Zuniga Castillo', '(801)709-9896', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'US Title Insurance', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-26 14:55:02', '2021-10-26 14:55:06'),
(768, 1, 1, 1, 'escrow-officer', '1139 North Taffeta Drive', NULL, 'Salt Lake City', 'ut', '84116', 'Alicia Romero', '222-222-2222', NULL, 'YARHTIB VAZQUEZ GUTIERREZ', NULL, 'YREALTY21@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BENJAMIN BEESLEY', NULL, 'NA', NULL, NULL, NULL, NULL, 'Novation title', '6955 S Union Park Center', '210', 'Midvale', 'Utah', '84047', 'Joe Cespedes', 'joeteam@novationtitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-26 15:00:19', '2021-10-26 15:00:34'),
(769, 5, 1, 1, 'buyer-agent', '14014 Cremello Falls', NULL, 'San Antonio', 'TX', '78254', 'Ronald Rodriguez', '210-607-2700', 'jeep19942000@yahoo.com', 'Carolina Garcia', '210-287-9595', 'carolina@texasbeautifulhomes.com', 'Keller Williams City-View', NULL, NULL, NULL, 'Jason Lenz', NULL, NULL, 'Heather Keenan', NULL, 'heather.keenan@orchard.com', 'Orchard', NULL, NULL, NULL, 'Orchard Title', NULL, NULL, NULL, 'Texas', NULL, 'Kate Stanford', 'Kate.Stanford@orchardnationaltitle.com', '469-250-5198', '2021-10-27', 'Sarah Treadway', 'sarah.treadway@orchardnationaltitle.com', 'The Seller', NULL, 'Rachel Toscano', NULL, 550, 550, 5, 2, '2021-10-26 15:30:50', '2021-10-26 15:31:17'),
(770, 2, 1, 1, NULL, '10100 W Skycrest Dr', NULL, 'Boise', 'ID', '83704', 'Chad LaMont', '602-380-1616', 'clamont1970@gmail.com', 'Brent Giroux', '208-954-7419', 'brentgiroux@fivedoors.com', 'Keller Williams', 'Michel Stewart', '208-941-1334', 'michel@fivedoors.com', NULL, NULL, NULL, 'Jonna Weber', NULL, 'jonna@jonnaweber.com', NULL, NULL, NULL, NULL, 'Title One', NULL, NULL, NULL, 'Idaho', NULL, 'Justin Robertson', 'jrobertson@titleonecorp.com', NULL, '2021-11-05', NULL, NULL, 'The Buyer\'s Agent', 'Brent is purchasing the warranty for his clients.', 'Dave', NULL, 300, 300, 0, 2, '2021-10-26 16:46:30', '2021-10-26 16:46:48'),
(771, 1, 1, 1, NULL, '3258 W 5805 S', NULL, 'Taylorsville', 'UT', '84129', 'Allison Johnson', '8015991727', 'allie_johnson@comcast.net', 'Tori Tarver', NULL, 'coordinator@peakcollectivegroup.com', NULL, NULL, NULL, NULL, 'OpenDoor', NULL, NULL, 'Cliff Tubbs', NULL, 'ctubbs@opendoor.com', NULL, NULL, NULL, NULL, 'Meridian Title', NULL, NULL, NULL, 'Utah', NULL, 'Brandy Kramer', 'brandyteam@mtcutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-26 17:51:24', '2021-10-26 17:51:34'),
(772, 1, 1, 1, 'buyer-agent', '1419 W  Misty Fen Way', NULL, 'West Jordan', 'Utah', '84088', 'Neil and LeeAnne Davies', '703-402-0440', 'neil.adaviese@yahoo.com', 'Julie Larsen', '801-232-2333', 'julieutahrealtor@gmail.com', 'Presidio Real Estate', NULL, NULL, NULL, 'John and Deanne Godwin', NULL, NULL, 'Kim Peterson', '801-647-1877', 'kim@lewisbarton.com', 'Lakeview Realty', NULL, NULL, NULL, 'Vanguard Title', '746 Winchester Street', '#100', 'Murray', 'Utah', '84107', 'Angie Simmons', 'angie@vtitleutah.com', '385-257-2799', '2021-11-05', 'Tiffany Shafter', 'tiffani@vtitleutah.com', 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-26 18:40:04', '2021-10-26 18:40:41'),
(773, 5, 2, 1, 'listing-agent', '1602 Wood Rock Dr.', NULL, 'Round Rock', 'Texas', '78681', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Matt & Summer Frame', '512-619-3212', 'matt.frame@hotmail.com', 'Heather Brown', '512-751-2931', 'Heather@HeatherBrown.com', 'RE/MAX Austin Skyline', 'Brittany Edmison', '512-659-9315', 'Brittany@HeatherBrown.com', 'Independence Title', NULL, NULL, NULL, 'Texas', NULL, 'Kim Reed', 'kreed@independencetitle.com', NULL, '', NULL, NULL, 'The Seller\'s Agent', 'This is free seller\'s coverage.', 'Stacye Blake', NULL, 445, 445, 0, 2, '2021-10-26 18:50:45', '2021-10-26 18:51:17'),
(774, 1, 1, 1, NULL, '4691 E Decrescendo Drive', NULL, 'Eagle  Mountain', 'UTah', '84005', 'Joe and Haley Hirt', '907-799-5558', 'josephirt@gmail.com', 'Julie Larsen', '801-232-2333', 'julieutahrealtor@gmail.com', 'Presidio Real Estate', NULL, NULL, NULL, 'Vanessa Watkins', NULL, NULL, 'Haley Peart', '801-472-6684', 'haley.peart@gmail.com', 'C-21 Everest', NULL, NULL, NULL, 'Vanguard Title', '746 Winchester Street', '#100', 'Murray', 'Utah', '84107', 'Angie Simmons', 'angie@vtitleutah.com', '385-257-2799', '2021-11-03', 'Tiffany Shafter', 'tiffani@vtitleutah.com', 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-26 19:02:42', '2021-10-26 19:02:54'),
(775, 1, 1, 1, NULL, '8678 N Oakmont Aly', 'i69', 'Eagle Mountain', 'Utah', '84005', 'Danny Torres Oporta', '801-651-5214', NULL, 'Maria Torres', NULL, 'oporta5357@yahoo.com', 'Equity Real Estate', NULL, NULL, NULL, NULL, NULL, NULL, 'Kalli Seager', NULL, 'N/A', NULL, NULL, NULL, NULL, 'Vanguard Title', NULL, NULL, NULL, 'Utah', NULL, 'Ryan Hoskins', 'Teamryan@vtitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-26 19:17:59', '2021-10-26 19:18:07'),
(776, 1, 1, 1, 'buyer-agent', '262 West 930 North', NULL, 'Sunset', 'Utah', '84015', 'William and Alexandria LaPorte', '614-593-9491', 'anicolelaporte@gmail.com', 'Drew Gingell', '801-597-9826', 'drew.gingell84@gmail.com', 'Century 21 Everest', 'Lisa Okelberry', '8016643119', 'admin@utahshortsale.com', 'Alison Beardall', '801-558-5890', 'alibeardall@gmail.com', 'Zack Baker', '801-309-1259', 'zackbaker.realestate@gmail.com', 'Century 21 Everest', 'Lisa Okelberry', NULL, 'admin@utahshortsale.com', 'North Star Title', '6925 S Union Park Center', '100', 'Cottonwood Heights', 'Utah', '84047', 'Nick Park', 'teamnick@northstartitle.com', '385-255-1100', '2021-11-09', 'Ryan Davis', 'ryan@northstartitle.com', 'The Seller', NULL, 'Sandra Perkins', NULL, 500, 500, 0, 2, '2021-10-26 19:30:39', '2021-10-26 19:31:44'),
(777, 1, 1, 1, 'escrow-officer', '241 N 250 W', NULL, 'Tooele', 'UT', '84074', 'Pavel Michener', '(805) 236-5297', 'pavelmichener@yahoo.com', 'Alicia Holdaway', '801-243-7188', 'alicia.holdaway@gmail.com', 'Summit Sotheby\'s International Realty-Draper', NULL, NULL, NULL, 'Christopher Williamson', NULL, NULL, 'Jennifer Augerlavoie', '209-505-7795', 'thefoodierealtor@gmail.com', 'Wise Choice Real Estate', NULL, NULL, NULL, 'Truly Title, Inc.', '6965 S Union Park Center', '#180', 'Cottonwood Heights', 'Utah', '84047', 'Crystal Bond', 'bondteam@trulytitle.com', '8019967456', '2021-10-26', NULL, NULL, 'The Seller', NULL, 'Sandra', NULL, 500, 500, 0, 2, '2021-10-26 19:53:22', '2021-10-26 19:53:38'),
(778, 5, 1, 1, 'escrow-officer', '1987 Brentwood Dr', NULL, 'Alvin', 'TX', '77511', 'Charlie and Alexis Chavez', '7133381172', 'chavezcustomconstructions10@gmail.com', 'Crystal Hernandez', '2814873741', 'myrealtorcrystalh@gmail.com', 'Prime Realty Group', NULL, NULL, NULL, 'Michael Bowlin', NULL, NULL, 'Dionne Randle', '2812655533', 'dionne@therandleteam.com', 'Remax Fine Properties', NULL, NULL, NULL, 'Select Title, LLC', '1110 FM 359 Rd, Ste 110', NULL, 'Richmond', 'Texas', '77406', 'Dawn Carden', 'dawn.carden@select-title.com', '8323046404', '2021-10-28', 'Title Team', 'titleteam@select-title.com', 'The Seller', 'pay at closing', NULL, NULL, 575, 575, 30, 2, '2021-10-26 20:19:18', '2021-10-26 20:19:40');
INSERT INTO `realstate_orders` (`id`, `p_location_id`, `p_coverage_type_id`, `p_property_type_id`, `i_am_the`, `prop_street1`, `prop_street2`, `prop_city`, `prop_state`, `prop_zipcode`, `buyer_name`, `buyer_phone`, `buyer_email`, `buyer_agentname`, `buyer_agentphone`, `buyer_agentemail`, `buyer_realstate_company`, `buyer_coordinatorname`, `buyer_coordinatorphone`, `buyer_coordinatoremail`, `seller_name`, `seller_phone`, `seller_email`, `seller_agentname`, `seller_agentphone`, `seller_agentemail`, `seller_realstate_company`, `seller_coordinatorname`, `seller_coordinatorphone`, `seller_coordinatoremail`, `escrow_title`, `escrow_street1`, `escrow_street2`, `escrow_city`, `escrow_state`, `escrow_zipcode`, `closing_officername`, `closing_officeremail`, `closing_officerphone`, `closing_date`, `escrow_assistantname`, `escrow_assistantemail`, `order_biller`, `order_notes`, `sales_person`, `coupon_code`, `total_amount`, `net_amount`, `credit_balance`, `order_status`, `created_at`, `updated_at`) VALUES
(779, 5, 1, 1, NULL, '3605 Diamond Falls', NULL, 'Schertz', 'TX', '78154', 'Desirey Wolfe', '8305348284', 'desireywolfe@gmail.com', 'Laura Smierciak', '2102649922', 'laura@theagencytexas.com', 'The Agency Texas Inc', NULL, NULL, NULL, 'The Estate of Melba Leslie', NULL, NULL, 'Laura Smierciak', '2102649922', 'laura@theagencytexas.com', 'The Agency Texas Inc', NULL, NULL, NULL, 'Capital Title', '1826 N Loop 1604 W', '300', 'San Antonio', 'Texas', '78248', 'Amber Volkmann', 'avolkmann@ctot.com', '2105474177', '2021-11-22', 'Krista Alwine', 'KAlwine@ctot.com', 'The Seller', NULL, 'Sallye Blake and Rachel Toscano', NULL, 625, 625, 0, 2, '2021-10-26 20:25:03', '2021-10-26 20:25:35'),
(780, 3, 1, 1, 'buyer-agent', '5235 Sunnywood', NULL, 'Las Vegas', 'NV', '89120', 'Gregory Phillip Benton', '7021234567', NULL, 'Annie Verruno', '7026169400', 'annie@therolandteam.com', 'Platinum R.E. Professionals', NULL, NULL, NULL, 'Eyal Karban', NULL, NULL, 'Kevin Goujon', NULL, 'kevin@goujongroup.com', NULL, NULL, NULL, NULL, 'Element Title', NULL, NULL, NULL, 'Nevada', NULL, 'Jennifer Stevenson', 'j.stevenson@elementtitle.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 600, 600, 50, 2, '2021-10-26 21:41:26', '2021-10-26 21:41:39'),
(781, 1, 1, 1, 'escrow-officer', '117 West Spring Hill Way', NULL, 'Saratoga Springs', 'Utah', '84045', 'Joshua Porter', '385-499-9722', 'joshuaporter870@gmail.com', 'William Bustos', '801-858-0000', 'info@bustosre.com', 'KW Utah Realtors Keller Williams', NULL, NULL, NULL, 'Alex Draper', NULL, NULL, 'John McOmie', '801-588-9814', 'teamgiles@realadvantageutah.com', 'K2 Realty', NULL, NULL, NULL, 'Real Advantage Title', '6965 Union Park Center', '100', 'Cottonwood Heights', 'Utah', '84047', 'Marcel Giles', 'marcelg@realadvantageutah.com', '385-900-8235', '2021-10-25', NULL, 'teamgiles@realadvantageutah.com', 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-26 21:59:44', '2021-10-26 22:00:35'),
(782, 5, 1, 2, 'buyer', '29 Mesquite Street', NULL, 'Blanco', 'Texas', '78606', 'Gregory & Nancy Allen', '469-261-3141', 'ngallen1955@gmail.com', 'Candace Fernandez', '512-894-4043', 'candaceyourrealtor@gmail.com', 'Coffman Real Estate, Broker & Associates', NULL, NULL, NULL, 'Kristin McDermott', '830-225-0680', 'starhillrealty44@gmail.com', 'Kristin McDermott', '830-225-0680', 'starhillrealty44@gmail.com', 'Star Realty, LLC', NULL, NULL, NULL, 'Independence Title', '310 W US-290', 'Suite A', 'Dripping Springs', 'Texas', '78620', 'Mary Blank', 'mblanck@independencetitle.com', '512-894-3860', '2021-11-12', 'Harley Colby', 'harley.colby@independencetitle.com', 'The Buyer', NULL, 'Stacye Blake', NULL, 520, 520, 0, 2, '2021-10-27 00:49:50', '2021-10-27 00:50:25'),
(783, 1, 1, 1, NULL, '3003 S Red Pine Dr', NULL, 'Saratoga Springs', 'UT', '84045', 'Joseph Cruz', '8018605271', 'josephcruzapple@gmail.com', 'Marco Paredes', NULL, 'marcos_21@live.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Vanguard Title', '6925 S Union Park Ctr 420', NULL, 'Midvale', 'Utah', '84047', 'Tiff Ung', 'teamv@vtitleutah.com', NULL, '2021-10-27', NULL, NULL, 'The Seller', NULL, 'Sandra', NULL, 600, 600, 0, 2, '2021-10-27 15:43:34', '2021-10-27 15:43:41'),
(784, 3, 1, 1, 'buyer-agent', '1703 Steamboat Drive', NULL, 'Henderson', 'Nevada', '89014', 'Albert Ramos', '(702) 524-5306', 'yetgerangco68@gmail.com', 'Jack Greenberg Group', '7024004400', 'soldbyjack@gmail.com', 'Jack Greenberg Group', 'Rachyl Mears', '385-268-9386', 'jggrouptc@gmail.com', NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Fidelity National Title Company', '500 North Rainbow', '100', 'Las Vegas', 'Nevada', '89107', 'Tracy Spigener', 'tspigener@fnf.com', '702-877-3003', '2021-10-28', NULL, NULL, 'The Buyer', NULL, 'Michelle Larsen', NULL, 635, 635, 0, 2, '2021-10-27 15:47:31', '2021-10-27 15:47:39'),
(785, 2, 1, 1, 'buyer-agent', '670 S Gamay Ln', NULL, 'Boise', 'ID', '83709', 'Sasha P Vega - Homores', '208 860 2726', 'Shonores08@gmail.com', 'Jodi Harada', '208 371 0132', 'jodi@platinumidaho.com', 'Platinum Idaho Real Estate at Silvercreek Realty Group', 'Chris Stafford', '208 319 3490', 'chris@platinumidaho.com', 'Jennifer Sims', 'chris@platinumidaho.com', NULL, 'No Seller Agent Name', NULL, 'will@rebdidaho.com', 'Real Estate By Design', NULL, NULL, NULL, 'Empire Title', '2541 E Gala St, Ste 100', NULL, 'Meridian', 'Idaho', '83642', 'Kennna Merrigan', 'kmerrigan@empiretitleidaho.com', '208 433 1021', '', 'Lynn Watkins', 'LWatkins@empiretitleidaho.com', 'The Buyer\'s Agent', NULL, 'David Modrow', NULL, 500, 500, 0, 2, '2021-10-27 15:48:09', '2021-10-27 15:48:32'),
(786, 3, 1, 1, 'buyer-agent', '1321 Oakwood Avenue', NULL, 'North Las Vegas', 'NV', '89030', 'Cecilia Marcela Enriquez-Basulto', '702-205-8009', 'amceci28@yahoo.com', 'Flavio Jimenez', '702-622-6886', 'closing@sourcerealtynv.com', 'Source Realty', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Monument Title', '3068 E Sunset Rd', '7', 'Las Vegas', 'Nevada', '89120', 'Paulette Ortiz Malpica', 'paulette@monumenttitle.net', '385-474-7545', '2021-10-29', NULL, NULL, 'The Buyer', NULL, 'Michelle Larson', NULL, 550, 550, 0, 2, '2021-10-27 15:57:20', '2021-10-27 15:58:12'),
(787, 1, 1, 1, 'escrow-officer', '172 E 200 N', NULL, 'Ivins', 'UT', '84738', 'Ian Clark Enitan', '435-817-1810', 'ian.enitan@yahoo.com', 'Candace Spendlove', NULL, 'cspendlove@jasonmitchellgroup.com', 'Jason Mitchell Real Estate', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'GT Title Services, Inc.', NULL, NULL, NULL, 'Utah', NULL, 'Giulia Bennett', 'giulia@gttitle.net', NULL, '2021-10-27', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-27 16:49:37', '2021-10-27 16:49:46'),
(788, 5, 1, 1, 'escrow-officer', '20610 Behrens Pass Lane', NULL, 'Cypress', 'Texas', '77433', 'Robert J. Guerra', '2108467757', 'rjguerra2001@yahoo.com', 'Gayle Ross', NULL, 'gayle.ross21@gmail.com', 'Ross and Marshall Realty', NULL, NULL, NULL, 'Gene W. Clark as Trustee of the Behrends Pass Trust', NULL, NULL, 'Katie Clark', NULL, 'katherine.danielle.clark@gmail.com', NULL, NULL, NULL, 'smcfarlain@texastraditiontitle.com', 'Texas Tradition Title, LLC', '16712 Huffmeister Rd.', 'Bldg 600 A', 'Cypress', 'Texas', '77429', 'Sheila Zabrycki', 'sheila@texastraditiontitle.com', '8327930010', '1969-12-31', 'Sarah McFarlain', 'smcfarlain@texastraditiontitle.com', 'The Seller', 'Please email a copy directly to smcfarlain@texastraditiontitle.com', NULL, NULL, 625, 625, 0, 2, '2021-10-27 17:22:16', '2021-10-27 17:23:07'),
(789, 5, 1, 1, NULL, '2235 Mountain Lakes Drive', NULL, 'Cedar Hill', 'Texas', '75104', 'Creekstone Properties Ltd.', '713-256-0314', 'Customer Authorization', 'April Williams-Moore', '713-654-0649', 'aprilcharmayrealty@gmail.com', 'ReFind Realty, Inc.', NULL, NULL, NULL, 'Edward O\'Rear', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Independence Title', '2626 Cole Avenue', '300', 'Dallas', 'Texas', '75204', 'Zac Tedesco', 'Zac.Tedesco@IndependenceTitle.com', '214-623-5589', '2021-10-29', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 55, 2, '2021-10-27 18:12:14', '2021-10-27 18:12:29'),
(790, 1, 1, 1, 'buyer-agent', '194 N 3225 W', NULL, 'Layton', 'Utah', '84041', 'Kenneth Sanger', '7066082896', 'kenneth.sanger@hotmail.com', 'Heather Mercer', NULL, 'heathers.mercer@gmail.com', NULL, NULL, NULL, 'viewutahlistings@gmail.com', 'Mike and Alisha Archibeque', NULL, NULL, 'Calvin Musselman', NULL, 'teammusselman@gmail.com', NULL, NULL, NULL, NULL, 'North Star Title', NULL, NULL, NULL, 'Utah', NULL, 'Nick Park', 'teamnick@northstartitle.com', NULL, '2021-10-25', NULL, NULL, 'The Seller', 'please apply 13 month coverage', NULL, NULL, 600, 600, 0, 2, '2021-10-27 18:39:10', '2021-10-27 18:39:24'),
(791, 5, 1, 1, 'escrow-officer', '4809 Eastover Avenue', NULL, 'Fort Worth', 'TX', '76119', 'Jackling Miller', '8172919637', 'jacklingm@yahoo.com', 'April Williams', '7136540649', 'aprilcharmayrealty@gmail.com', 'Refind Realty Inc.', NULL, NULL, NULL, 'CSI Enterprise Solution LLC', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Community National Title', '2435 S University Drive', NULL, 'Fort Worth', 'Texas', '76109', 'Shelby Torres', 'storres@cnattitle.com', '8176326326', '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 445, 445, 0, 2, '2021-10-27 19:39:32', '2021-10-27 19:39:55'),
(792, 5, 1, 1, 'escrow-officer', '77 Black Fox Ln', NULL, 'Coldspring', 'TX', '77331', 'Meghann Barnes', '8324014419', NULL, 'Ashley Martin', NULL, 'AshleyMartinrealtyOne@gmail.com', 'Realty One Group, Experience', NULL, NULL, NULL, 'JOSHUA COURVELLE', NULL, NULL, 'MICHAEL O\'NEAL', NULL, 'homesbymichael@kw.com', 'Keller Williams Realty NE', NULL, NULL, NULL, 'Tarver Abstract Co.', '127 N. San Jacinto Ave. Suite 108', NULL, 'Cleveland', 'Texas', '77327', 'Renee Holmes', 'rholmes@tarverabstract.com', NULL, '2021-10-21', NULL, NULL, 'The Seller', NULL, NULL, NULL, 445, 445, 0, 2, '2021-10-27 20:30:14', '2021-10-27 20:30:42'),
(793, 1, 1, 1, 'buyer-agent', '1205 W Capernaum Rd', NULL, 'West Jordan', 'Utah', '84088', 'Earnie & Susan Gonce', '801-897-0483', 'ewgonce@gmail.com', 'Abraham Mardanlou', NULL, 'Abe@bustosre.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'David Elsberry', NULL, 'davegelsberry@gmail.com', NULL, NULL, NULL, NULL, 'Old Republic Title', NULL, NULL, NULL, 'Utah', NULL, 'Kyle Cain', 'thecaingroup@oldrepublictitle.com', NULL, '', NULL, NULL, 'The Buyer', 'Get 13 Months thru October', NULL, NULL, 500, 500, 0, 2, '2021-10-27 20:38:12', '2021-10-27 20:38:41'),
(794, 1, 1, 1, 'escrow-officer', '4605 West 4715 South', NULL, 'Salt Lake City', 'UT', '84118', 'Fugenio A Marroquin Damas', '385-230-0539', 'antonio8080damas@gmail.com', 'Daniel Conley', NULL, 'danconley08@gmail.com', NULL, NULL, NULL, NULL, 'RU Pool 2 LLC', NULL, NULL, 'Nicholas (Niko) Kambouris', NULL, 'niko@rizehomesource.com', NULL, NULL, NULL, NULL, 'US Title', '6995 Union Park Ctr', '150', 'Midvale', 'Utah', '84047', 'Karinna Clemons', 'teamkarinna@ustitleutah.com', '801.838.9920', '2021-10-27', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-27 20:39:10', '2021-10-27 20:39:21'),
(795, 1, 1, 2, 'escrow-officer', '6632 West Merlot Way', NULL, 'West Jordan', 'UT', '84081', 'Stephen Pistorius and Cecilia Pistorius', '(801) 671-2886', 'spistorius1@gmail.com', 'Dawna Pistorius', '801-833-4393', 'dawna@nexthomegps.com', 'NextHome Navigator', NULL, NULL, NULL, 'Michael J. Gould, II', NULL, NULL, 'Colin Thomas', NULL, 'kim@vtitleutah.com', 'RealtyPath Preferred', NULL, NULL, NULL, 'Truly Title, Inc.', '6965 S Union Park Center', '#180', 'Cottonwood Heights', 'Utah', '84047', 'Danielle Jarvis', 'danielle.jarvis@trulytitle.com', '8015738636(801) 996-7456', '2021-10-27', NULL, NULL, 'The Seller', NULL, 'Sandra', NULL, 375, 375, 0, 1, '2021-10-27 20:53:26', '2021-10-27 20:53:26'),
(796, 1, 1, 1, 'buyer-agent', '117 W Spring Hill Way', NULL, 'Saratoga Springs', 'UT', '84045', 'Josh Porter', '385-499-9722', 'joshuaporter870@gmail.com', 'Chris Blain', NULL, 'cblain@bustosre.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'John McOmie', NULL, 'john@k2utah.com', NULL, NULL, NULL, NULL, 'Real Advantage Title', NULL, NULL, NULL, 'Utah', NULL, 'Marcel Giles', 'marcelg@realadvantageutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, NULL, NULL, 500, 500, 0, 1, '2021-10-27 20:53:27', '2021-10-27 20:53:27'),
(797, 1, 1, 1, 'buyer-agent', '117 W Spring Hill Way', NULL, 'Saratoga Springs', 'UT', '84045', 'Josh Porter', '385-499-9722', 'joshuaporter870@gmail.com', 'Chris Blain', NULL, 'cblain@bustosre.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'John McOmie', NULL, 'john@k2utah.com', NULL, NULL, NULL, NULL, 'Real Advantage Title', NULL, NULL, NULL, 'Utah', NULL, 'Marcel Giles', 'marcelg@realadvantageutah.com', NULL, '', NULL, NULL, 'The Seller', 'Get 13 Months thru October', NULL, NULL, 500, 500, 0, 2, '2021-10-27 20:59:44', '2021-10-27 21:00:08'),
(798, 1, 1, 1, NULL, '652 West 1100 North', NULL, 'Orem', 'UT', '84057', 'Marcus Henrique Buzanelli Borges Da Silva', '8019001647', 'docmborges@gmail.com', 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Jerry Jessen', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, 'heidi@novationtitle.com', 'Novation Title', '6955 South Union Park Center Suite 210', NULL, 'Sandy', 'Utah', '84070', 'Joe Cespedes', 'joeteam@novationtitle.com', NULL, '2021-09-29', NULL, NULL, 'The Seller', NULL, 'Sandra', NULL, 500, 500, 0, 1, '2021-10-27 21:30:35', '2021-10-27 21:30:35'),
(799, 1, 1, 1, 'escrow-officer', '1888 South 580 West', NULL, 'Woods cross', 'ut', '84087', 'Sharly and Joshua Coombs', '222-222-2222', 'sharlycoombs@gmail.com', 'Coco Zuniga', NULL, 'transactioncoordinator@gamboateam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TAMMY MCKAY', NULL, 'mckayhomesllc@gmail.com', NULL, NULL, NULL, NULL, 'Novation title', '6955 S Union Park Center', '210', 'Midvale', 'Utah', '84047', 'Joe Cespedes', 'joeteam@novationtitle.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 600, 600, 0, 2, '2021-10-28 15:00:54', '2021-10-28 15:01:29'),
(800, 1, 1, 1, NULL, '426 Kiesel Ave', NULL, 'Ogden', 'Utah', '84404', 'Elizabeth Cruz Ceja', '385-289-6265', NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'US Title Insurance', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', '8018389920', '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-28 15:15:17', '2021-10-28 15:15:21'),
(801, 3, 1, 1, 'buyer-agent', '4398 Cartegena Way', NULL, 'Las Vegas', 'Nevada', '89121', 'Nicolas Cordoba Gonzalez', '(702) 886-3543', 'morgangdl1981@gmail.com', 'Nora Aguirre', NULL, 'closings@aguirreteam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gina Saylor', NULL, 'saylorteam@gmail.com', NULL, NULL, NULL, NULL, 'First American Title', NULL, NULL, NULL, 'Nevada', NULL, 'Samantha Cameron', 'scameron@firstam.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 635, 635, 0, 2, '2021-10-28 15:39:32', '2021-10-28 15:39:46'),
(802, 1, 1, 1, NULL, '735 S Anasazi Circle', NULL, 'Washington', 'UT', '84780', 'Green, Scot D. and Daniele W.', '208-313-5951', 'dwgreenmachine@gmail.com', 'Matt Meyer', '949-322-4102', 'matt@johnhookteam.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jared Bowler', NULL, 'jbowler5@gmail.com', NULL, NULL, NULL, NULL, 'First American', NULL, NULL, NULL, 'Utah', NULL, 'Allison Schreiber', 'aschreiber@firstam.com', NULL, '2021-11-11', NULL, NULL, 'The Seller', NULL, NULL, NULL, 600, 600, 0, 2, '2021-10-28 15:55:42', '2021-10-28 15:56:12'),
(803, 1, 1, 1, 'buyer-agent', '3535 S 1100 East', NULL, 'Salt Lake City', 'UT', '84106', 'Scott Dyrud and Gwen Orchard', '801-618-8985', 'sdyrud120@gmail.com', 'Regina Price', '8015204104', 'realtorreginaprice@gmail.com', 'x2Move Real Estate', 'Teryn Mozaffari', NULL, 'teryn@utahtransactions.com', 'CamUyen Tang', NULL, NULL, 'Gary Nguyen', NULL, 'nationalerealty@gmail.com', NULL, NULL, NULL, NULL, 'Old Republic Title', NULL, NULL, NULL, 'Utah', NULL, 'Team Velo', 'teamvelo@oldrepublictitle.com', NULL, '2021-11-01', NULL, NULL, 'The Buyer\'s Agent', NULL, 'Kristin Combs', NULL, 600, 600, 0, 2, '2021-10-28 16:01:00', '2021-10-28 16:01:16'),
(804, 5, 1, 1, 'escrow-officer', '8314 Hunters Lodge Lane', NULL, '77521', 'TX', '77521', 'Michael Campos', '832-421-8969', 'michael.a.campos50@gmail.com', 'Lindsay Rose', '832-421-8969', 'soldwithlindsay@gmail.com', 'eXp Realty', NULL, NULL, NULL, 'Torrance  Childers', NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'American Title Company', '7730 Spencer Hwy, Suite 200', '200', 'Pasadena', 'Texas', '77505', 'Donna Medley', 'donna@atcdp.com', '2814791913', '2021-10-29', 'Danielle Meza', 'danielle@atcdp.com', 'The Seller', NULL, 'Roy Davis', NULL, 500, 500, 55, 2, '2021-10-28 16:44:55', '2021-10-28 16:45:06'),
(805, 3, 1, 1, 'buyer-agent', '2904 THERESA AVENUE', NULL, 'LAS VEGAS', 'NEVADA', '89101', 'CARLOS E HERNANDEZ LOREDO', '702-927-6702', 'CARLITOSHRNDZ123@GMAIL.COM', 'ONAIRAM VALDIVIESO', '702-241-4761', 'ONYREALTOR@GMAIL.COM', 'DH CAPITAL REALTY', NULL, NULL, NULL, NULL, NULL, NULL, 'No Seller Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'ELEMENT TITLE', NULL, NULL, NULL, 'Nevada', NULL, 'SALLY JAY', 'S.JAY@ELEMENTTITLE.COM', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 535, 535, 60, 2, '2021-10-28 16:48:24', '2021-10-28 16:48:38'),
(806, 1, 2, 1, 'listing-agent', '90 S Santa Rita Place', NULL, 'West Jordan', 'UT', '84088', NULL, NULL, NULL, 'No Buyer Agent Name', NULL, NULL, NULL, NULL, NULL, NULL, 'Becks', NULL, 'coordinator@peakcollectivegroup.com', 'Derek Orr', NULL, 'derekorr@kw.com', NULL, NULL, NULL, NULL, 'Meridian Title', NULL, NULL, NULL, 'Utah', NULL, 'Brandy Kramer', 'Brandyteam@mtcutah.com', NULL, '', NULL, NULL, 'The Seller', NULL, 'Sandra Perkins', NULL, 300, 300, 0, 1, '2021-10-28 18:46:43', '2021-10-28 18:46:43'),
(807, 1, 1, 1, NULL, '3727 S Oberlin Rd', NULL, 'West Valley City', 'Utah', '84120', 'Guadalupe Bautista', '801-673-8972', 'gbautista9@icloud.com', 'Paul Sanchez', NULL, 'paulhomes21@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andrea Cannon', NULL, 'N/A', NULL, NULL, NULL, NULL, 'Vanguard Title', NULL, NULL, NULL, 'Utah', NULL, 'Ryan Hoskins', 'Teamryan@vtitleutah.com', NULL, '1969-12-31', NULL, NULL, 'The Buyer\'s Agent', NULL, NULL, NULL, 500, 500, 0, 2, '2021-10-28 19:12:12', '2021-10-28 19:12:28'),
(808, 1, 1, 1, NULL, '1061 North 300 East', NULL, 'Orem', 'Utah', '84057', 'David Sanchez', '8015555555', NULL, 'Kevin McCombs', NULL, 'theteameliteplus@gmail.com', NULL, NULL, NULL, NULL, 'Jose Onate and Kathleen Marie Fuentes Onate', NULL, NULL, 'FSBO', NULL, 'theteameliteplus@gmail.com', NULL, NULL, NULL, 'teamkarinna@ustitleutah.com', 'US Title Insurance Agency', NULL, NULL, NULL, 'Utah', NULL, 'Karinna Clemons', 'teamkarinna@ustitleutah.com', NULL, '', NULL, NULL, 'The Buyer', NULL, NULL, NULL, 400, 400, 0, 2, '2021-10-28 21:24:31', '2021-10-28 21:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `realstate_products`
--

CREATE TABLE `realstate_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realstate_products`
--

INSERT INTO `realstate_products` (`id`, `name`, `short_desc`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Standard', 'Home Warranty', '300', NULL, NULL),
(2, 'Premium+', 'Home Warranty\r\n<span>+ Fridge</span>', '400', NULL, NULL),
(3, 'Premium+1', 'Home Warranty\r\n<span>+ Fridge , No Fault</span>', '450', NULL, NULL),
(4, 'Ultimate', 'Home Warranty', '500', NULL, NULL),
(5, 'Standard', 'Condo Warranty', '285', NULL, NULL),
(6, 'Duplex', NULL, '595', NULL, '2021-07-13 08:20:12'),
(7, 'Triplex', 'Triplex', '795', NULL, '2021-07-13 09:47:25'),
(8, 'Fourplex', 'Fourplex', '995', NULL, '2021-07-13 09:47:15'),
(9, 'Standard', 'Home Warranty', '475', NULL, '2021-09-27 10:45:44'),
(10, 'Premium', 'Home Warranty', '550', NULL, '2021-09-27 10:46:35'),
(11, 'Ultimate', 'Home Warranty\r\n<span>+ Fridge , Washer/Dryer</span>', '635', NULL, '2021-09-27 10:46:41'),
(12, 'Standard', 'Condo Warranty', '450', NULL, '2021-09-27 10:53:52'),
(13, 'Standard', 'Duplex', '795', NULL, '2021-09-27 10:56:28'),
(14, 'Standard', 'Triplex', '895', NULL, '2021-09-27 11:07:05'),
(15, 'Standard', 'Fourplex', '1095', NULL, '2021-09-27 11:08:43'),
(16, 'Standard', 'Home Warranty', '350', NULL, NULL),
(17, 'Premium', 'Home Warranty', '450', NULL, '2021-08-26 14:06:31'),
(18, 'Standard', 'Condo Warranty', '300', NULL, NULL),
(19, 'Standard', 'Home Warranty', '445', NULL, '2021-09-11 09:54:55'),
(20, 'Premium', 'Home Warranty\r\n<span>+ Fridge</span>', '545', NULL, '2021-09-11 09:55:12'),
(21, 'Ultimate', 'Home Warranty\r\n<span>+ Fridge, Washer/Dryer, Kit Appliances</span>', '625', NULL, '2021-09-11 09:55:24'),
(22, 'Standard', 'Home Warranty', '675', NULL, '2021-09-11 09:57:30'),
(23, 'Premium', 'Home warranty\r\n<span>(adds Fridge)</span>', '875', NULL, '2021-09-27 12:35:42'),
(24, 'Ultimate', 'Home Warranty\r\n<span>(adds Washer/Dryer)</span>', '1075', NULL, '2021-09-27 12:36:32'),
(25, 'Standard', 'Home Warranty', '935', NULL, NULL),
(26, 'Premium', 'Home Warranty\r\n<span>(adds Fridge)</span>', '1035', NULL, '2021-09-27 12:50:02'),
(27, 'Ultimate', 'Home Warranty\r\n<span>(adds Washer/Dryer)</span>', '1235', NULL, '2021-09-27 12:50:37'),
(28, 'Standard', 'Home Warranty', '1195', NULL, NULL),
(29, 'Premium', 'Home Warranty\r\n<span>(adds Fridge)</span>', '1395', NULL, '2021-09-27 12:58:30'),
(30, 'Ultimate', 'Home Warranty\r\n<span>(adds Washer/Dryer)</span>', '1595', NULL, '2021-09-27 12:58:52'),
(31, 'Standard', 'New Home Warranty I', '525', '2021-05-28 10:35:53', '2021-09-06 06:01:55'),
(32, 'Ultimate', 'Home Warranty\r\n<span>+ Fridge , Washer/Dryer</span>', '550', '2021-08-26 14:05:19', NULL),
(34, 'Fourplex', 'Home Warranty', '1095', '2021-09-03 12:25:32', '2021-09-03 12:36:57'),
(36, 'Standard', 'New Home Warranty', '595', '2021-09-06 05:30:25', '2021-09-06 07:01:45'),
(37, 'Standard', 'New Home Warranty', '595', '2021-09-06 07:09:55', NULL),
(38, 'Standard', 'New Home Warranty', '595', '2021-09-06 07:10:44', NULL),
(39, 'Standard', 'Condo Warranty', '420', NULL, NULL),
(40, 'Premium', 'Condo Warranty\r\n<span>+ Fridge</span>', '520', '2021-09-11 11:23:16', NULL),
(41, 'Ultimate', 'Condo Warranty\r\n<span>Washer/Dryer</span>', '600', '2021-09-11 11:23:16', NULL),
(42, 'Standard', 'Home Warranty', '400', NULL, NULL),
(43, 'Premium+', 'Home Warranty\r\n<span>(adds Fridge & No Fault)</span>', '500', NULL, NULL),
(44, 'Ultimate', 'Home Warranty\r\n<span>(also includes W/D)</span>', '600', NULL, NULL),
(45, 'Standard', 'Condo Warranty', '375', NULL, '2021-09-27 11:01:07'),
(46, 'Premium+', 'Condo Warranty\r\n<span>(adds Fridge & No Fault)</span>', '475', NULL, '2021-09-27 11:01:25'),
(47, 'Ultimate', 'Condo Warranty\r\n<span>(also includes W/D)</span>', '575', NULL, '2021-09-27 11:01:35'),
(48, 'Standard', 'Duplex', '695', NULL, '2021-09-27 11:02:10'),
(49, 'Premium+', 'Duplex\r\n<span>(adds Fridge & No Fault)</span>', '795', NULL, '2021-09-27 11:03:00'),
(50, 'Ultimate', 'Duplex\r\n<span>(also includes W/D)</span>', '995', NULL, '2021-09-27 11:03:09'),
(51, 'Standard', 'Triplex', '895', NULL, '2021-09-27 11:03:30'),
(52, 'Premium+', 'Triplex\r\n<span>(adds Fridge & No Fault)</span>', '995', NULL, '2021-09-27 11:03:51'),
(53, 'Ultimate', 'Triplex\r\n<span>(also includes W/D)</span>', '1195', NULL, '2021-09-27 11:04:08'),
(54, 'Standard', 'Fourplex', '1095', NULL, '2021-09-27 11:04:34'),
(55, 'Premium+', 'Fourplex\r\n<span>(adds Fridge & No Fault)</span>', '1195', NULL, '2021-09-27 11:04:44'),
(56, 'Ultimate', 'Fourplex\r\n<span>(also includes W/D)</span>', '1295', NULL, '2021-09-27 11:04:53'),
(57, 'Premium', 'Condo Warranty', '525', NULL, '2021-09-27 10:53:59'),
(58, 'Ultimate', 'Condo Warranty\r\n<span>(adds Fridge & No Fault)</span>', '610', NULL, '2021-09-27 10:59:45'),
(59, 'Premium', 'Duplex', '995', NULL, '2021-09-27 10:53:59'),
(60, 'Ultimate', 'Duplex\r\n<span>(adds Fridge & No Fault)</span>', '1195', NULL, '2021-09-27 10:59:56'),
(61, 'Premium', 'Triplex', '1095', NULL, '2021-09-27 10:53:59'),
(62, 'Ultimate', 'Triplex\r\n<span>(adds Fridge & No Fault)</span>', '1295', NULL, '2021-09-27 10:59:56'),
(63, 'Premium', 'Fourplex', '1195', NULL, '2021-09-27 10:53:59'),
(64, 'Ultimate', 'Fourplex\r\n<span>(adds Fridge & No Fault)</span>', '1395', NULL, '2021-09-27 10:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `realstate_product_features`
--

CREATE TABLE `realstate_product_features` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `realstate_product_features`
--

INSERT INTO `realstate_product_features` (`id`, `location_id`, `name`, `content`) VALUES
(15, 1, 'Heat Pump', ''),
(16, 1, 'Bi Annual Tune-ups', ''),
(17, 1, 'Thermostat', ''),
(18, 1, 'Duct From Heating or Cooling', ''),
(19, 1, 'Heat Lamps', ''),
(20, 1, 'Freon Recovery/Recapture/Recharge', ''),
(21, 1, 'Grills', ''),
(22, 1, 'Registers', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p>\r\n							<p><strong>Heating System</strong>: registers- disposable filters - grills - heat lamps </p><p><strong>Plumbing</strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong>Air Conditioner</strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong>Refrigerator</strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong>Dishwasher</strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong>Water Heater</strong>: failures due to sediment </p><p><strong>Electrical</strong>: attic fans </p><p><strong>Trash Compactor</strong>: key assemblies - locks - removable bucket </p><p><strong>Garage Door Opener</strong>: springs - hinges - remote transmitter - keypad </p><p><strong>Oven/Range Cooktop</strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong>Built in Microwave Oven</strong>: interior lining - shelves – clock</p>\"}'),
(14, 1, 'Heating/Furnace (unlimited)', ''),
(13, 1, 'Air Conditioning (unlimited)', ''),
(24, 1, 'R22 Conversion', ''),
(25, 1, 'Radiant/Broilers', ''),
(26, 2, 'Angle Stops and Gate Valves Toilet Replacement', ''),
(27, 2, 'Interior Hose Bibs', ''),
(28, 2, 'Shower Heads', ''),
(29, 2, 'Shower Arms - Faucets', ''),
(30, 2, 'Grills', ''),
(31, 2, 'Heat Lamps', ''),
(32, 2, 'Premium Coverage Upgrade', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included plans Premium, Premium +, Premium +1, & Ultimate)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong>Heating System</strong>: registers- disposable filters - grills - heat lamps </p><p><strong>Plumbing</strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong>Air Conditioner</strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong>Refrigerator</strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong>Dishwasher</strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong>Water Heater</strong>: failures due to sediment </p><p><strong>Electrical</strong>: attic fans </p><p><strong>Trash Compactor</strong>: key assemblies - locks - removable bucket </p><p><strong>Garage Door Opener</strong>: springs - hinges - remote transmitter - keypad </p><p><strong>Oven/Range Cooktop</strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong>Built in Microwave Oven</strong>: interior lining - shelves – clock</p>\"}'),
(33, 2, 'No Fault Coverage', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}'),
(34, 2, 'Refrigerator', ''),
(35, 2, 'Washer/Dryer', ''),
(36, 2, 'Toilet Replacement', ''),
(37, 2, 'Free ReKey (travel fees may apply)', ''),
(38, 2, 'Radiant Heaters - Broilers (up to $1000)', ''),
(39, 2, 'R-22 Conversion to 410A', ''),
(40, 2, 'No Fault (code upgrades & mismatched systems)', ''),
(41, 2, 'Exterior hose bibs', ''),
(42, 2, 'Pressure Relief Valve Inside Home', ''),
(43, 3, 'Air Conditioning (unlimited)', ''),
(44, 3, 'Heating/Furnace (unlimited)', ''),
(45, 3, 'Heat Pump', ''),
(46, 3, 'Bi Annual Tune-ups', ''),
(47, 3, 'Thermostat', ''),
(48, 3, 'Duct From Heating or Cooling', ''),
(49, 3, 'Heat Lamps', ''),
(50, 3, 'Freon Recovery/Recapture/Recharge', ''),
(51, 3, 'Grills', ''),
(52, 3, 'Registers', '{\"title\":\"Acclaimed Premium Coverage Upgrade $75\",\"subtitle\":\"(40 Additional Items included in Premium & Ultimate plans)\",\"full_content\":\"<p>Covered: This coverage upgrade option provides coverage for the following items that are normally excluded from the Standard Coverage plan.</p><p><strong>Heating System</strong>: registers- disposable filters - grills - heat lamps </p><p><strong>Plumbing</strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) </p><p><strong>Air Conditioner</strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers </p><p><strong>Refrigerator</strong> (with purchase of coverage): Freon recovery, recapture and recharge - ice maker. In cases where parts are not available, our obligation is limited to cash in lieu based on replacement cost of the ice maker </p><p><strong>Dishwasher</strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong>Water Heater</strong>: failures due to sediment </p><p><strong>Electrical</strong>: attic fans </p><p><strong>Trash Compactor</strong>: key assemblies - locks - removable bucket </p><p><strong>Garage Door Opener</strong>: springs - hinges - remote transmitter - keypad </p><p><strong>Oven/Range Cooktop</strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong>Built in Microwave Oven</strong>: interior lining - shelves - clock</p>\"}'),
(53, 3, 'R22 Conversion', '{\"title\":\"No Fault Coverage $60\",\"subtitle\":\"\",\"full_content\":\"<p style=\"font-size: .85em;\">Covered: This coverage option provides coverage for failures due to mismatched systems, improper installations, code violations, crane costs, haul away service for systems or appliances that have failed, as set forth hereafter.</p><p><strong>Mismatched Systems</strong>: AHW will repair or replace a system or appliance that has failed due to a mismatch in capacity or efficiency provided the system is not undersized relative to the square footage of the area being cooled and/or heated </p><p><strong>Improper Installation</strong>: AHW will replace or repair a covered item that was improperly installed, modified, or repaired prior to the effective date of this Contract. This coverage also does not include roofs </p><p><strong>Haul-Away</strong>: AHW will pay the cost to remove a covered appliance, system, or component when AHW is replacing a covered system, appliance or component </p><p><strong>Crane</strong>: AHW will cover the use of cranes or other lifting required for a covered service of a rooftop air conditioner or heating unit </p><p><strong>Code Violations</strong>: AHW will pay to correct code violations, if required to effect repair or replacement under this Contract  </p><p><strong>Permits</strong>: AHW will cover the cost of obtaining local building permits when required to commence repair or replacement of a covered item. AHW will not be responsible for replacement service if permits cannot be obtained </p><p style=\"font-size: 0.9em\">Limits: The coverage for the No Fault Coverage Upgrade outlined above is limited to a $250 maximum in the aggregate per contract term for items related to the No Fault Coverage Upgrade.</p>\"}'),
(54, 3, 'Radiant/Broilers', ''),
(55, 3, 'Power Vent Water Heaters', ''),
(56, 4, 'Central Vac', ''),
(57, 4, 'Angle Stops / Gate Valves', ''),
(58, 4, 'Grills', ''),
(59, 4, 'Heat Lamps', ''),
(60, 4, 'Exterior hose bibs', ''),
(61, 4, 'Shower Heads', ''),
(62, 4, 'Registers', ''),
(63, 4, 'Shower Arms - Faucets', ''),
(64, 4, 'Radiant Heaters - Broilers (up to $1000)', ''),
(65, 4, 'Beverage Dispenser', ''),
(66, 4, 'Toilet Replacement', ''),
(67, 4, 'Interior Hose Bibs', ''),
(68, 4, 'Ice Maker water line', ''),
(69, 4, 'Pressure Relief Valve Inside Home', ''),
(70, 4, 'Expansion Tanks', ''),
(71, 4, 'Code Upgrades, Mismatched Systems, Cranes', ''),
(72, 4, 'Refrigerator', ''),
(73, 4, 'Instant Hot/Cold Water Dispenser', ''),
(77, 4, 'Washer/Dryer', ''),
(75, 4, 'Ductless Systems/Mini Splits', ''),
(76, 4, 'R-22 Conversion to 410A', ''),
(74, 4, 'Premium Coverage Upgrade', '{\"title\":\"Acclaimed Premium Coverage Upgrade\",\"subtitle\":\"\",\"full_content\":\"<p><strong>Heating System</strong>: registers- disposable filters - grills - heat lamps</p><p><strong>Plumbing System</strong>: angle stop and gate ball valves - toilet replacement with like kind and quality up to $400 per occurrence - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary)</p><p><strong>Water Heater</strong>: failures due to sediment</p><p><strong>Electrical</strong>: attic fans</p><p><strong>Trash Compactor</strong>: key assemblies - locks - removable bucket</p><p><strong>Air Conditioning / Cooling System</strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - window units - registers</p><p><strong>Refrigerator</strong>: Freon recovery, recapture and recharge - ice maker</p><p><strong>Dishwasher</strong>: rollers - baskets - racks - dials - door seals - hinges </p><p><strong>Oven/Range/Cooktop</strong>: racks - clocks - rotisseries - knobs - dials - handles - interior lining </p><p><strong>Built in Microwave Oven</strong>: interior lining - shelves - clock. Seller limits apply</p><p><strong>Garage Door System</strong>: springs - hinges - remote transmitter - keypad</p>\"}'),
(78, 5, 'Air Conditioning (unlimited)', ''),
(79, 5, 'Heating/Furnace (unlimited)', ''),
(80, 5, 'Heat Pump', ''),
(81, 5, 'Bi Annual Tune Ups', ''),
(82, 5, 'Thermostat', ''),
(83, 5, 'Duct from Heating or Cooling', ''),
(84, 5, 'Heat Lamps', ''),
(85, 5, 'Freon Recovery/Recapture/Recharge', ''),
(86, 5, 'Grills ', ''),
(87, 5, 'Registers', ''),
(88, 5, 'Ductless/Mini-Split', ''),
(89, 5, 'R22 Conversion', ''),
(90, 5, 'Radiant/Broilers', ''),
(91, 5, 'Water Heaters (all units)', ''),
(92, 5, 'Water Heaters - Tankless (up to $800)', ''),
(93, 5, 'Stoppages & Clogs', ''),
(94, 5, 'Toilet - Parts', ''),
(95, 5, 'Whirlpool Assembly', ''),
(96, 5, 'Sump Pump - permanent', ''),
(97, 5, 'Angle Stops / Gate Valves', ''),
(98, 5, 'Toilet Replacement', ''),
(99, 5, 'Interior Hose Bibs', ''),
(100, 5, 'Faucets, Shower Heads & Arms', ''),
(101, 5, 'Shower / Diverter Valves', ''),
(102, 5, 'PRV Inside Home', ''),
(103, 5, 'Main Water Shut Off', ''),
(104, 5, 'Exterior Hose Bibs', ''),
(105, 5, 'Instant Hot Water Dispenser', ''),
(106, 5, 'Panels', ''),
(107, 1, 'Power Vent Water Heaters', ''),
(108, 1, 'Water Heaters', ''),
(109, 1, 'Water Heaters - Tankless', ''),
(110, 1, 'Stoppages & Clogs', ''),
(111, 5, 'Subpanels', ''),
(112, 5, 'Wiring', ''),
(113, 5, 'Junction Boxes', ''),
(114, 5, 'Exhaust Fan - Kitchen', ''),
(115, 5, 'Exhaust Fan - Bathrooms', ''),
(116, 5, 'Ceiling Fans', ''),
(117, 5, 'Exhaust Fan - Attic', ''),
(118, 5, 'Oven', ''),
(119, 5, 'Range', ''),
(120, 5, 'Cooktop', ''),
(121, 5, 'Dishwasher', ''),
(122, 5, 'Garbage Disposal', ''),
(123, 5, 'Built in Microwave', ''),
(124, 5, 'Trash Compactor', ''),
(125, 5, 'Central Vac', ''),
(126, 0, '', ''),
(127, 5, 'Washer/Dryer', ''),
(128, 5, 'Premits', ''),
(129, 5, 'Code Violation', ''),
(130, 5, 'Haul Away', ''),
(131, 5, 'Mismatched Systems', ''),
(132, 5, 'Improper Installs', ''),
(133, 5, 'Crane', ''),
(134, 5, 'Adds on 40 Additional Coverages', '{\"title\":\"Acclaimed Premium Coverage\",\"full_content\":\"<p>(included in Premium & Ultimate Plans) Covered: This coverage upgrade includes Kitchen Refrigerator, No Fault Coverage, and the following items that are excluded from the Standard plan.</p> <p><strong><b>Heating System</b></strong>: registers- - grills - heat lamps</p> <p><strong><b>Plumbing System</b></strong>: toilet replacement with like kind and quality limit $400 - interior hose bibs - shower heads - shower arms - faucets (replaced with chrome builder standard when necessary) - basket strainers - pressure regulator valves (PRV) inside main foundation of property -main water shut-off</p> <p><strong><b>Water Heater</b></strong>: failures due to sediment</p> <p><strong><b>Electrical</b></strong>: attic fans</p> <p><strong><b>Trash Compactor</b></strong>: key assemblies - locks - removable bucket</p> <p><strong><b>Air Conditioner</b></strong>: Freon recovery, recapture and recharge up to $20 per lb. (not included in Tune Up service) - registers</p> <p><strong><b>Refrigerator</b></strong>: Freon recovery, recapture and recharge - ice maker</p> <p><strong><b>Dishwasher</b></strong>: rollers - baskets - racks - dials - door seals - hinges </p> <p><strong><b>Oven/Range/Cooktop</b></strong>:racks - clocks - rotisseries - knobs - dials - handles - hinges </p> <p><strong><b>Built in Microwave Oven</b></strong>: shelves - clock. Seller limits apply</p> <p><strong><b>Garage Door System</b></strong>: springs - hinges - remote transmitter – keypad</p>\"}'),
(135, 5, 'Unknown Pre-existing Conditions', ''),
(136, 5, 'Re-Key', ''),
(137, 5, 'Garage Door System', ''),
(138, 5, 'Subter. Termites - spot treatment', ''),
(929, 1, 'Toilet - Parts', ''),
(930, 1, 'Whirlpool Assembly', ''),
(931, 1, 'Sump Pump - Permanent', ''),
(932, 1, 'Shower / Diverter Valves', ''),
(933, 1, 'Angle Stops / Gate Valves', ''),
(934, 1, 'Toilet Replacement', ''),
(935, 1, 'Interior Hose Bibs', ''),
(936, 1, 'Faucets, Shower Heads & Arms', ''),
(937, 1, 'PRV Inside Home', ''),
(938, 1, 'Main Water Shut Off', ''),
(939, 1, 'Exterior Hose Bibs', ''),
(940, 1, 'Panels', ''),
(941, 1, 'Subpanels', ''),
(942, 1, 'Wiring', ''),
(943, 1, 'Junction Boxes', ''),
(944, 1, 'Exhaust Fan - Kitchen', ''),
(945, 1, 'Exhaust Fan - Bathrooms', ''),
(946, 1, 'Ceiling Fans', ''),
(947, 1, 'Exhaust Fan - Attic', ''),
(948, 1, 'Oven', ''),
(949, 1, 'Range', ''),
(950, 1, 'Cooktop', ''),
(951, 1, 'Dishwasher', ''),
(952, 1, 'Garbage Disposal', ''),
(953, 1, 'Built-in Micro', ''),
(954, 1, 'Trash Compactor', ''),
(955, 1, 'Central Vac', ''),
(956, 1, 'Kitchen Refrigerator', ''),
(957, 1, 'Washer / Dryer', ''),
(958, 1, 'Permits', ''),
(959, 1, 'Code Violations', ''),
(960, 1, 'Haul Away', ''),
(961, 1, 'Mismatched systems', ''),
(962, 1, 'Improper Installs', ''),
(963, 1, 'Crane', ''),
(964, 1, 'Over 40 Items Added to Standard Coverage', ''),
(965, 1, 'Re-Key (service fee required)', ''),
(966, 1, 'Free Re-Key (Included in Ultimate Plans)', ''),
(967, 1, 'Garage Door System / Reprogramming\r\n(service fee required)', ''),
(968, 3, 'Water Heaters', ''),
(969, 3, 'Water Heaters - Tankless', ''),
(970, 3, 'Stoppages & Clogs', ''),
(971, 3, 'Toilet - Parts', ''),
(972, 3, 'Whirlpool Assembly', ''),
(973, 3, 'Sump Pump - Permanent', ''),
(974, 3, 'Shower / Diverter Valves', ''),
(975, 3, 'Angle Stops / Gate Valves', ''),
(976, 3, 'Toilet Replacement', ''),
(977, 3, 'Interior Hose Bibs', ''),
(978, 3, 'Faucets, Shower Heads & Arms', ''),
(979, 3, 'PRV Inside Home', ''),
(980, 3, 'Main Water Shut Off', ''),
(981, 3, 'Exterior Hose Bibs', ''),
(982, 3, 'Panels', ''),
(983, 3, 'Subpanels', ''),
(984, 3, 'Wiring', ''),
(985, 3, 'Junction Boxes', ''),
(986, 3, 'Exhaust Fan - Kitchen', ''),
(987, 3, 'Exhaust Fan - Bathrooms', ''),
(988, 3, 'Ceiling Fans', ''),
(989, 3, 'Exhaust Fan - Attic', ''),
(990, 3, 'Oven', ''),
(991, 3, 'Range', ''),
(992, 3, 'Cooktop', ''),
(993, 3, 'Dishwasher', ''),
(994, 3, 'Garbage Disposal', ''),
(995, 3, 'Built-in Micro', ''),
(996, 3, 'Trash Compactor', ''),
(997, 3, 'Central Vac', ''),
(998, 3, 'Kitchen Refrigerator', ''),
(999, 3, 'Washer / Dryer', ''),
(1000, 3, 'Permits', ''),
(1001, 3, 'Code Violations', ''),
(1002, 3, 'Haul Away', ''),
(1003, 3, 'Mismatched systems', ''),
(1004, 3, 'Improper Installs', ''),
(1005, 3, 'Crane', ''),
(1006, 3, 'Over 40 Items Added to Standard Coverage', ''),
(1007, 3, 'Re-Key (service fee required)', ''),
(1008, 3, 'Free Re-Key (Included in Ultimate Plans)', ''),
(1009, 3, 'Garage Door System / Reprogramming\r\n(service fee required)', '');

-- --------------------------------------------------------

--
-- Table structure for table `realstate_product_features_relationship`
--

CREATE TABLE `realstate_product_features_relationship` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realstate_product_features_relationship`
--

INSERT INTO `realstate_product_features_relationship` (`id`, `feature_id`, `product_id`) VALUES
(1, 19, 42),
(2, 20, 42),
(3, 15, 42),
(4, 16, 42),
(5, 17, 42),
(6, 18, 42),
(7, 108, 42),
(8, 109, 42),
(9, 110, 42),
(10, 929, 42),
(11, 930, 42),
(12, 931, 42),
(13, 932, 42),
(14, 940, 42),
(15, 941, 42),
(16, 942, 42),
(17, 943, 42),
(18, 944, 42),
(19, 945, 42),
(20, 946, 42),
(21, 948, 42),
(22, 949, 42),
(23, 950, 42),
(24, 951, 42),
(25, 952, 42),
(26, 953, 42),
(27, 954, 42),
(28, 965, 42),
(29, 967, 42),
(30, 24, 4),
(31, 25, 4),
(32, 14, 0),
(33, 107, 4),
(34, 108, 4),
(35, 109, 4),
(36, 110, 4),
(37, 34, 1),
(38, 26, 2),
(39, 27, 2),
(40, 28, 2),
(41, 29, 2),
(42, 30, 2),
(43, 31, 2),
(44, 32, 2),
(45, 34, 2),
(46, 36, 2),
(47, 26, 3),
(48, 27, 3),
(49, 28, 3),
(50, 29, 3),
(51, 30, 3),
(52, 31, 3),
(53, 32, 3),
(54, 33, 3),
(55, 34, 3),
(56, 36, 3),
(57, 26, 4),
(58, 27, 4),
(59, 28, 4),
(60, 29, 4),
(61, 30, 4),
(62, 31, 4),
(63, 32, 4),
(64, 33, 4),
(65, 34, 4),
(66, 35, 4),
(67, 36, 4),
(68, 37, 4),
(69, 38, 4),
(70, 39, 4),
(71, 40, 4),
(72, 41, 4),
(73, 42, 4),
(74, 34, 1),
(75, 43, 10),
(76, 44, 10),
(77, 45, 10),
(78, 46, 10),
(79, 47, 10),
(80, 48, 10),
(81, 49, 10),
(82, 50, 10),
(83, 51, 10),
(84, 52, 10),
(85, 968, 10),
(86, 43, 11),
(87, 44, 11),
(88, 45, 11),
(89, 46, 11),
(90, 47, 11),
(91, 48, 11),
(92, 49, 11),
(93, 50, 11),
(94, 51, 11),
(95, 52, 11),
(96, 53, 11),
(97, 54, 11),
(98, 55, 11),
(99, 969, 10),
(100, 970, 10),
(101, 971, 10),
(102, 972, 10),
(103, 973, 10),
(104, 974, 10),
(105, 975, 10),
(106, 976, 10),
(107, 977, 10),
(108, 978, 10),
(109, 982, 10),
(110, 983, 10),
(111, 984, 10),
(112, 985, 10),
(113, 986, 10),
(114, 987, 10),
(115, 988, 10),
(116, 989, 10),
(117, 990, 10),
(118, 56, 17),
(119, 57, 17),
(120, 58, 17),
(121, 59, 17),
(122, 60, 17),
(123, 61, 17),
(124, 62, 17),
(125, 63, 17),
(126, 64, 17),
(127, 65, 17),
(128, 66, 17),
(129, 67, 17),
(130, 68, 17),
(131, 69, 17),
(132, 70, 17),
(133, 71, 17),
(134, 72, 17),
(135, 73, 17),
(136, 991, 10),
(137, 992, 10),
(138, 993, 10),
(139, 77, 17),
(140, 78, 20),
(141, 79, 20),
(142, 80, 20),
(143, 81, 20),
(144, 82, 20),
(145, 83, 20),
(146, 84, 20),
(147, 85, 20),
(148, 86, 20),
(149, 87, 20),
(150, 91, 20),
(151, 92, 20),
(152, 93, 20),
(153, 94, 20),
(154, 95, 20),
(155, 96, 20),
(156, 97, 20),
(157, 98, 20),
(158, 99, 20),
(159, 100, 20),
(160, 101, 20),
(161, 102, 20),
(162, 103, 20),
(163, 106, 20),
(164, 111, 20),
(165, 112, 20),
(166, 113, 20),
(167, 114, 20),
(168, 78, 21),
(169, 79, 21),
(170, 80, 21),
(171, 81, 21),
(172, 82, 21),
(173, 83, 21),
(174, 84, 21),
(175, 85, 21),
(176, 86, 21),
(177, 87, 21),
(178, 88, 21),
(179, 89, 21),
(180, 90, 21),
(181, 91, 21),
(182, 92, 21),
(183, 93, 21),
(184, 94, 21),
(185, 95, 21),
(186, 96, 21),
(187, 97, 21),
(188, 98, 21),
(189, 99, 21),
(190, 100, 21),
(191, 101, 21),
(192, 102, 21),
(193, 103, 21),
(194, 104, 21),
(195, 105, 21),
(196, 106, 21),
(197, 78, 23),
(198, 79, 23),
(199, 80, 23),
(200, 81, 23),
(201, 82, 23),
(202, 83, 23),
(203, 84, 23),
(204, 85, 23),
(205, 86, 23),
(206, 87, 23),
(207, 91, 23),
(208, 92, 23),
(209, 93, 23),
(210, 94, 23),
(211, 95, 23),
(212, 96, 23),
(213, 97, 23),
(214, 98, 23),
(215, 99, 23),
(216, 100, 23),
(217, 101, 23),
(218, 102, 23),
(219, 103, 23),
(220, 106, 23),
(221, 111, 23),
(222, 112, 23),
(223, 113, 23),
(224, 114, 23),
(225, 78, 24),
(226, 79, 24),
(227, 80, 24),
(228, 81, 24),
(229, 82, 24),
(230, 83, 24),
(231, 84, 24),
(232, 85, 24),
(233, 86, 24),
(234, 87, 24),
(235, 88, 24),
(236, 89, 24),
(237, 90, 24),
(238, 91, 24),
(239, 92, 24),
(240, 93, 24),
(241, 94, 24),
(242, 95, 24),
(243, 96, 24),
(244, 97, 24),
(245, 98, 24),
(246, 99, 24),
(247, 100, 24),
(248, 101, 24),
(249, 102, 24),
(250, 103, 24),
(251, 104, 24),
(252, 105, 24),
(253, 106, 24),
(254, 78, 26),
(255, 79, 26),
(256, 80, 26),
(257, 81, 26),
(258, 82, 26),
(259, 83, 26),
(260, 84, 26),
(261, 85, 26),
(262, 86, 26),
(263, 87, 26),
(264, 91, 26),
(265, 92, 26),
(266, 93, 26),
(267, 94, 26),
(268, 95, 26),
(269, 96, 26),
(270, 97, 26),
(271, 98, 26),
(272, 99, 26),
(273, 100, 26),
(274, 101, 26),
(275, 102, 26),
(276, 103, 26),
(277, 106, 26),
(278, 111, 26),
(279, 112, 26),
(280, 113, 26),
(281, 114, 26),
(282, 78, 27),
(283, 79, 27),
(284, 80, 27),
(285, 81, 27),
(286, 82, 27),
(287, 83, 27),
(288, 84, 27),
(289, 85, 27),
(290, 86, 27),
(291, 87, 27),
(292, 88, 27),
(293, 89, 27),
(294, 90, 27),
(295, 91, 27),
(296, 92, 27),
(297, 93, 27),
(298, 94, 27),
(299, 95, 27),
(300, 96, 27),
(301, 97, 27),
(302, 98, 27),
(303, 99, 27),
(304, 100, 27),
(305, 101, 27),
(306, 102, 27),
(307, 103, 27),
(308, 104, 27),
(309, 105, 27),
(310, 106, 27),
(311, 78, 29),
(312, 79, 29),
(313, 80, 29),
(314, 81, 29),
(315, 82, 29),
(316, 83, 29),
(317, 84, 29),
(318, 85, 29),
(319, 86, 29),
(320, 87, 29),
(321, 91, 29),
(322, 92, 29),
(323, 93, 29),
(324, 94, 29),
(325, 95, 29),
(326, 96, 29),
(327, 97, 29),
(328, 98, 29),
(329, 99, 29),
(330, 100, 29),
(331, 101, 29),
(332, 102, 29),
(333, 103, 29),
(334, 106, 29),
(335, 111, 29),
(336, 112, 29),
(337, 113, 29),
(338, 114, 29),
(339, 78, 30),
(340, 79, 30),
(341, 80, 30),
(342, 81, 30),
(343, 82, 30),
(344, 83, 30),
(345, 84, 30),
(346, 85, 30),
(347, 86, 30),
(348, 87, 30),
(349, 88, 30),
(350, 89, 30),
(351, 90, 30),
(352, 91, 30),
(353, 92, 30),
(354, 93, 30),
(355, 94, 30),
(356, 95, 30),
(357, 96, 30),
(358, 97, 30),
(359, 98, 30),
(360, 99, 30),
(361, 100, 30),
(362, 101, 30),
(363, 102, 30),
(364, 103, 30),
(365, 104, 30),
(366, 105, 30),
(367, 106, 30),
(368, 56, 32),
(369, 57, 32),
(370, 58, 32),
(371, 59, 32),
(372, 60, 32),
(373, 61, 32),
(374, 62, 32),
(375, 63, 32),
(376, 64, 32),
(377, 65, 32),
(378, 66, 32),
(379, 67, 32),
(380, 68, 32),
(381, 69, 32),
(382, 70, 32),
(383, 71, 32),
(384, 72, 32),
(385, 73, 32),
(386, 74, 32),
(387, 75, 32),
(388, 76, 32),
(389, 77, 32),
(390, 111, 21),
(391, 112, 21),
(392, 113, 21),
(393, 114, 21),
(394, 115, 21),
(395, 116, 21),
(396, 117, 21),
(397, 118, 21),
(398, 119, 21),
(399, 120, 21),
(400, 121, 21),
(401, 122, 21),
(402, 123, 21),
(403, 124, 21),
(404, 125, 21),
(405, 126, 21),
(406, 127, 21),
(407, 128, 21),
(408, 129, 21),
(409, 130, 21),
(410, 131, 21),
(411, 132, 21),
(412, 133, 21),
(413, 134, 21),
(414, 135, 21),
(415, 136, 21),
(416, 137, 21),
(417, 138, 21),
(418, 115, 20),
(419, 116, 20),
(420, 117, 20),
(421, 118, 20),
(422, 119, 20),
(423, 120, 20),
(424, 121, 20),
(425, 122, 20),
(426, 123, 20),
(427, 124, 20),
(428, 125, 20),
(429, 128, 20),
(430, 129, 20),
(431, 130, 20),
(432, 131, 20),
(433, 132, 20),
(434, 133, 20),
(435, 134, 20),
(436, 135, 20),
(437, 136, 20),
(438, 137, 20),
(439, 138, 20),
(440, 78, 19),
(441, 79, 19),
(442, 80, 19),
(443, 81, 19),
(444, 82, 19),
(445, 83, 19),
(446, 91, 19),
(447, 92, 19),
(448, 93, 19),
(449, 94, 19),
(450, 95, 19),
(451, 96, 19),
(452, 106, 19),
(453, 111, 19),
(454, 112, 19),
(455, 113, 19),
(456, 114, 19),
(457, 115, 19),
(458, 116, 19),
(459, 118, 19),
(460, 119, 19),
(461, 120, 19),
(462, 121, 19),
(463, 122, 19),
(464, 123, 19),
(465, 124, 19),
(466, 125, 19),
(467, 135, 19),
(468, 136, 19),
(469, 137, 19),
(470, 138, 19),
(471, 111, 24),
(472, 112, 24),
(473, 113, 24),
(474, 114, 24),
(475, 115, 24),
(476, 116, 24),
(477, 117, 24),
(478, 118, 24),
(479, 119, 24),
(480, 120, 24),
(481, 121, 24),
(482, 122, 24),
(483, 123, 24),
(484, 124, 24),
(485, 125, 24),
(486, 126, 24),
(487, 127, 24),
(488, 128, 24),
(489, 129, 24),
(490, 130, 24),
(491, 131, 24),
(492, 132, 24),
(493, 133, 24),
(494, 134, 24),
(495, 135, 24),
(496, 136, 24),
(497, 137, 24),
(498, 138, 24),
(499, 115, 23),
(500, 116, 23),
(501, 117, 23),
(502, 118, 23),
(503, 119, 23),
(504, 120, 23),
(505, 121, 23),
(506, 122, 23),
(507, 123, 23),
(508, 124, 23),
(509, 125, 23),
(510, 128, 23),
(511, 129, 23),
(512, 130, 23),
(513, 131, 23),
(514, 132, 23),
(515, 133, 23),
(516, 134, 23),
(517, 135, 23),
(518, 136, 23),
(519, 137, 23),
(520, 138, 23),
(521, 78, 22),
(522, 79, 22),
(523, 80, 22),
(524, 81, 22),
(525, 82, 22),
(526, 83, 22),
(527, 91, 22),
(528, 92, 22),
(529, 93, 22),
(530, 94, 22),
(531, 95, 22),
(532, 96, 22),
(533, 106, 22),
(534, 111, 22),
(535, 112, 22),
(536, 113, 22),
(537, 114, 22),
(538, 115, 22),
(539, 116, 22),
(540, 118, 22),
(541, 119, 22),
(542, 120, 22),
(543, 121, 22),
(544, 122, 22),
(545, 123, 22),
(546, 124, 22),
(547, 125, 22),
(548, 135, 22),
(549, 136, 22),
(550, 137, 22),
(551, 138, 22),
(552, 111, 27),
(553, 112, 27),
(554, 113, 27),
(555, 114, 27),
(556, 115, 27),
(557, 116, 27),
(558, 117, 27),
(559, 118, 27),
(560, 119, 27),
(561, 120, 27),
(562, 121, 27),
(563, 122, 27),
(564, 123, 27),
(565, 124, 27),
(566, 125, 27),
(567, 126, 27),
(568, 127, 27),
(569, 128, 27),
(570, 129, 27),
(571, 130, 27),
(572, 131, 27),
(573, 132, 27),
(574, 133, 27),
(575, 134, 27),
(576, 135, 27),
(577, 136, 27),
(578, 137, 27),
(579, 138, 27),
(580, 115, 26),
(581, 116, 26),
(582, 117, 26),
(583, 118, 26),
(584, 119, 26),
(585, 120, 26),
(586, 121, 26),
(587, 122, 26),
(588, 123, 26),
(589, 124, 26),
(590, 125, 26),
(591, 128, 26),
(592, 129, 26),
(593, 130, 26),
(594, 131, 26),
(595, 132, 26),
(596, 133, 26),
(597, 134, 26),
(598, 135, 26),
(599, 136, 26),
(600, 137, 26),
(601, 138, 26),
(602, 78, 25),
(603, 79, 25),
(604, 80, 25),
(605, 81, 25),
(606, 82, 25),
(607, 83, 25),
(608, 91, 25),
(609, 92, 25),
(610, 93, 25),
(611, 94, 25),
(612, 95, 25),
(613, 96, 25),
(614, 106, 25),
(615, 111, 25),
(616, 112, 25),
(617, 113, 25),
(618, 114, 25),
(619, 115, 25),
(620, 116, 25),
(621, 118, 25),
(622, 119, 25),
(623, 120, 25),
(624, 121, 25),
(625, 122, 25),
(626, 123, 25),
(627, 124, 25),
(628, 125, 25),
(629, 135, 25),
(630, 136, 25),
(631, 137, 25),
(632, 138, 25),
(633, 111, 30),
(634, 112, 30),
(635, 113, 30),
(636, 114, 30),
(637, 115, 30),
(638, 116, 30),
(639, 117, 30),
(640, 118, 30),
(641, 119, 30),
(642, 120, 30),
(643, 121, 30),
(644, 122, 30),
(645, 123, 30),
(646, 124, 30),
(647, 125, 30),
(648, 138, 30),
(649, 127, 30),
(650, 128, 30),
(651, 129, 30),
(652, 130, 30),
(653, 131, 30),
(654, 132, 30),
(655, 133, 30),
(656, 134, 30),
(657, 135, 30),
(658, 136, 30),
(659, 137, 30),
(660, 115, 29),
(661, 116, 29),
(662, 117, 29),
(663, 118, 29),
(664, 119, 29),
(665, 120, 29),
(666, 121, 29),
(667, 122, 29),
(668, 123, 29),
(669, 124, 29),
(670, 125, 29),
(671, 128, 29),
(672, 129, 29),
(673, 130, 29),
(674, 131, 29),
(675, 132, 29),
(676, 133, 29),
(677, 134, 29),
(678, 135, 29),
(679, 136, 29),
(680, 137, 29),
(681, 138, 29),
(682, 78, 28),
(683, 79, 28),
(684, 80, 28),
(685, 81, 28),
(686, 82, 28),
(687, 83, 28),
(688, 91, 28),
(689, 92, 28),
(690, 93, 28),
(691, 94, 28),
(692, 95, 28),
(693, 96, 28),
(694, 106, 28),
(695, 111, 28),
(696, 112, 28),
(697, 113, 28),
(698, 114, 28),
(699, 115, 28),
(700, 116, 28),
(701, 118, 28),
(702, 119, 28),
(703, 120, 28),
(704, 121, 28),
(705, 122, 28),
(706, 123, 28),
(707, 124, 28),
(708, 125, 28),
(709, 135, 28),
(710, 136, 28),
(711, 137, 28),
(712, 138, 28),
(713, 78, 39),
(714, 79, 39),
(715, 80, 39),
(716, 81, 39),
(717, 82, 39),
(718, 83, 39),
(719, 91, 39),
(720, 92, 39),
(721, 93, 39),
(722, 94, 39),
(723, 95, 39),
(724, 96, 39),
(725, 106, 39),
(726, 111, 39),
(727, 112, 39),
(728, 113, 39),
(729, 114, 39),
(730, 115, 39),
(731, 116, 39),
(732, 118, 39),
(733, 119, 39),
(734, 120, 39),
(735, 121, 39),
(736, 122, 39),
(737, 123, 39),
(738, 124, 39),
(739, 125, 39),
(740, 135, 39),
(741, 136, 39),
(742, 137, 39),
(743, 138, 39),
(744, 78, 40),
(745, 79, 40),
(746, 80, 40),
(747, 81, 40),
(748, 82, 40),
(749, 83, 40),
(750, 84, 40),
(751, 85, 40),
(752, 86, 40),
(753, 87, 40),
(754, 91, 40),
(755, 92, 40),
(756, 93, 40),
(757, 94, 40),
(758, 95, 40),
(759, 96, 40),
(760, 97, 40),
(761, 98, 40),
(762, 99, 40),
(763, 100, 40),
(764, 101, 40),
(765, 102, 40),
(766, 103, 40),
(767, 106, 40),
(768, 111, 40),
(769, 112, 40),
(770, 113, 40),
(771, 114, 40),
(772, 115, 40),
(773, 116, 40),
(774, 117, 40),
(775, 118, 40),
(776, 119, 40),
(777, 120, 40),
(778, 121, 40),
(779, 122, 40),
(780, 123, 40),
(781, 124, 40),
(782, 125, 40),
(783, 128, 40),
(784, 129, 40),
(785, 130, 40),
(786, 131, 40),
(787, 132, 40),
(788, 133, 40),
(789, 134, 40),
(790, 135, 40),
(791, 136, 40),
(792, 137, 40),
(793, 138, 40),
(794, 78, 41),
(795, 79, 41),
(796, 80, 41),
(797, 81, 41),
(798, 82, 41),
(799, 83, 41),
(800, 84, 41),
(801, 85, 41),
(802, 86, 41),
(803, 87, 41),
(804, 88, 41),
(805, 89, 41),
(806, 90, 41),
(807, 91, 41),
(808, 92, 41),
(809, 93, 41),
(810, 94, 41),
(811, 95, 41),
(812, 96, 41),
(813, 97, 41),
(814, 98, 41),
(815, 99, 41),
(816, 100, 41),
(817, 101, 41),
(818, 102, 41),
(819, 103, 41),
(820, 104, 41),
(821, 105, 41),
(822, 106, 41),
(823, 111, 41),
(824, 112, 41),
(825, 113, 41),
(826, 114, 41),
(827, 115, 41),
(828, 116, 41),
(829, 117, 41),
(830, 118, 41),
(831, 119, 41),
(832, 120, 41),
(833, 121, 41),
(834, 122, 41),
(835, 123, 41),
(836, 124, 41),
(837, 125, 41),
(838, 127, 41),
(839, 128, 41),
(840, 129, 41),
(841, 130, 41),
(842, 131, 41),
(843, 132, 41),
(844, 133, 41),
(845, 134, 41),
(846, 135, 41),
(847, 136, 41),
(848, 137, 41),
(849, 138, 41),
(850, 13, 43),
(851, 14, 43),
(852, 15, 43),
(853, 16, 43),
(854, 17, 43),
(855, 18, 43),
(856, 19, 43),
(857, 20, 43),
(858, 21, 43),
(859, 22, 43),
(860, 108, 43),
(861, 109, 43),
(862, 110, 43),
(863, 929, 43),
(864, 930, 43),
(865, 931, 43),
(866, 932, 43),
(867, 933, 43),
(868, 934, 43),
(869, 935, 43),
(870, 936, 43),
(871, 940, 43),
(872, 941, 43),
(873, 942, 43),
(874, 943, 43),
(875, 944, 43),
(876, 945, 43),
(877, 946, 43),
(878, 947, 43),
(879, 948, 43),
(880, 949, 43),
(881, 950, 43),
(882, 951, 43),
(883, 952, 43),
(884, 953, 43),
(885, 954, 43),
(886, 955, 43),
(887, 956, 43),
(888, 958, 43),
(889, 959, 43),
(890, 960, 43),
(891, 961, 43),
(892, 962, 43),
(893, 963, 43),
(894, 964, 43),
(895, 965, 43),
(896, 967, 43),
(897, 13, 44),
(898, 14, 44),
(899, 15, 44),
(900, 16, 44),
(901, 17, 44),
(902, 18, 44),
(903, 19, 44),
(904, 20, 44),
(905, 21, 44),
(906, 22, 44),
(907, 24, 44),
(908, 25, 44),
(909, 107, 44),
(910, 108, 44),
(911, 109, 44),
(912, 110, 44),
(913, 929, 44),
(914, 930, 44),
(915, 931, 44),
(916, 932, 44),
(917, 933, 44),
(918, 934, 44),
(919, 935, 44),
(920, 936, 44),
(921, 937, 44),
(922, 938, 44),
(923, 939, 44),
(924, 940, 44),
(925, 941, 44),
(926, 942, 44),
(927, 943, 44),
(928, 944, 44),
(929, 945, 44),
(930, 946, 44),
(931, 947, 44),
(932, 948, 44),
(933, 949, 44),
(934, 950, 44),
(935, 951, 44),
(936, 952, 44),
(937, 953, 44),
(938, 954, 44),
(939, 955, 44),
(940, 956, 44),
(941, 957, 44),
(942, 958, 44),
(943, 959, 44),
(944, 960, 44),
(945, 961, 44),
(946, 962, 44),
(947, 963, 44),
(948, 964, 44),
(949, 965, 44),
(950, 966, 44),
(951, 967, 44),
(952, 19, 45),
(953, 20, 45),
(954, 15, 45),
(955, 16, 45),
(956, 17, 45),
(957, 18, 45),
(958, 108, 45),
(959, 109, 45),
(960, 110, 45),
(961, 929, 45),
(962, 930, 45),
(963, 931, 45),
(964, 932, 45),
(965, 940, 45),
(966, 941, 45),
(967, 942, 45),
(968, 943, 45),
(969, 944, 45),
(970, 945, 45),
(971, 946, 45),
(972, 948, 45),
(973, 949, 45),
(974, 950, 45),
(975, 951, 45),
(976, 952, 45),
(977, 953, 45),
(978, 954, 45),
(979, 965, 45),
(980, 967, 45),
(981, 13, 46),
(982, 14, 46),
(983, 15, 46),
(984, 16, 46),
(985, 17, 46),
(986, 18, 46),
(987, 19, 46),
(988, 20, 46),
(989, 21, 46),
(990, 22, 46),
(991, 108, 46),
(992, 109, 46),
(993, 110, 46),
(994, 929, 46),
(995, 930, 46),
(996, 931, 46),
(997, 932, 46),
(998, 933, 46),
(999, 934, 46),
(1000, 935, 46),
(1001, 936, 46),
(1002, 940, 46),
(1003, 941, 46),
(1004, 942, 46),
(1005, 943, 46),
(1006, 944, 46),
(1007, 945, 46),
(1008, 946, 46),
(1009, 947, 46),
(1010, 948, 46),
(1011, 949, 46),
(1012, 950, 46),
(1013, 951, 46),
(1014, 952, 46),
(1015, 953, 46),
(1016, 954, 46),
(1017, 955, 46),
(1018, 956, 46),
(1019, 958, 46),
(1020, 959, 46),
(1021, 960, 46),
(1022, 961, 46),
(1023, 962, 46),
(1024, 963, 46),
(1025, 964, 46),
(1026, 965, 46),
(1027, 967, 46),
(1028, 13, 47),
(1029, 14, 47),
(1030, 15, 47),
(1031, 16, 47),
(1032, 17, 47),
(1033, 18, 47),
(1034, 19, 47),
(1035, 20, 47),
(1036, 21, 47),
(1037, 22, 47),
(1038, 24, 47),
(1039, 25, 47),
(1040, 107, 47),
(1041, 108, 47),
(1042, 109, 47),
(1043, 110, 47),
(1044, 929, 47),
(1045, 930, 47),
(1046, 931, 47),
(1047, 932, 47),
(1048, 933, 47),
(1049, 934, 47),
(1050, 935, 47),
(1051, 936, 47),
(1052, 937, 47),
(1053, 938, 47),
(1054, 939, 47),
(1055, 940, 47),
(1056, 941, 47),
(1057, 942, 47),
(1058, 943, 47),
(1059, 944, 47),
(1060, 945, 47),
(1061, 946, 47),
(1062, 947, 47),
(1063, 948, 47),
(1064, 949, 47),
(1065, 950, 47),
(1066, 951, 47),
(1067, 952, 47),
(1068, 953, 47),
(1069, 954, 47),
(1070, 955, 47),
(1071, 956, 47),
(1072, 957, 47),
(1073, 958, 47),
(1074, 959, 47),
(1075, 960, 47),
(1076, 961, 47),
(1077, 962, 47),
(1078, 963, 47),
(1079, 964, 47),
(1080, 965, 47),
(1081, 966, 47),
(1082, 967, 47),
(1083, 19, 48),
(1084, 20, 48),
(1085, 15, 48),
(1086, 16, 48),
(1087, 17, 48),
(1088, 18, 48),
(1089, 108, 48),
(1090, 109, 48),
(1091, 110, 48),
(1092, 929, 48),
(1093, 930, 48),
(1094, 931, 48),
(1095, 932, 48),
(1096, 940, 48),
(1097, 941, 48),
(1098, 942, 48),
(1099, 943, 48),
(1100, 944, 48),
(1101, 945, 48),
(1102, 946, 48),
(1103, 948, 48),
(1104, 949, 48),
(1105, 950, 48),
(1106, 951, 48),
(1107, 952, 48),
(1108, 953, 48),
(1109, 954, 48),
(1110, 965, 48),
(1111, 967, 48),
(1112, 13, 49),
(1113, 14, 49),
(1114, 15, 49),
(1115, 16, 49),
(1116, 17, 49),
(1117, 18, 49),
(1118, 19, 49),
(1119, 20, 49),
(1120, 21, 49),
(1121, 22, 49),
(1122, 108, 49),
(1123, 109, 49),
(1124, 110, 49),
(1125, 929, 49),
(1126, 930, 49),
(1127, 931, 49),
(1128, 932, 49),
(1129, 933, 49),
(1130, 934, 49),
(1131, 935, 49),
(1132, 936, 49),
(1133, 940, 49),
(1134, 941, 49),
(1135, 942, 49),
(1136, 943, 49),
(1137, 944, 49),
(1138, 945, 49),
(1139, 946, 49),
(1140, 947, 49),
(1141, 948, 49),
(1142, 949, 49),
(1143, 950, 49),
(1144, 951, 49),
(1145, 952, 49),
(1146, 953, 49),
(1147, 954, 49),
(1148, 955, 49),
(1149, 956, 49),
(1150, 958, 49),
(1151, 959, 49),
(1152, 960, 49),
(1153, 961, 49),
(1154, 962, 49),
(1155, 963, 49),
(1156, 964, 49),
(1157, 965, 49),
(1158, 967, 49),
(1159, 13, 50),
(1160, 14, 50),
(1161, 15, 50),
(1162, 16, 50),
(1163, 17, 50),
(1164, 18, 50),
(1165, 19, 50),
(1166, 20, 50),
(1167, 21, 50),
(1168, 22, 50),
(1169, 24, 50),
(1170, 25, 50),
(1171, 107, 50),
(1172, 108, 50),
(1173, 109, 50),
(1174, 110, 50),
(1175, 929, 50),
(1176, 930, 50),
(1177, 931, 50),
(1178, 932, 50),
(1179, 933, 50),
(1180, 934, 50),
(1181, 935, 50),
(1182, 936, 50),
(1183, 937, 50),
(1184, 938, 50),
(1185, 939, 50),
(1186, 940, 50),
(1187, 941, 50),
(1188, 942, 50),
(1189, 943, 50),
(1190, 944, 50),
(1191, 945, 50),
(1192, 946, 50),
(1193, 947, 50),
(1194, 948, 50),
(1195, 949, 50),
(1196, 950, 50),
(1197, 951, 50),
(1198, 952, 50),
(1199, 953, 50),
(1200, 954, 50),
(1201, 955, 50),
(1202, 956, 50),
(1203, 957, 50),
(1204, 958, 50),
(1205, 959, 50),
(1206, 960, 50),
(1207, 961, 50),
(1208, 962, 50),
(1209, 963, 50),
(1210, 964, 50),
(1211, 965, 50),
(1212, 966, 50),
(1213, 967, 50),
(1214, 19, 51),
(1215, 20, 51),
(1216, 15, 51),
(1217, 16, 51),
(1218, 17, 51),
(1219, 18, 51),
(1220, 108, 51),
(1221, 109, 51),
(1222, 110, 51),
(1223, 929, 51),
(1224, 930, 51),
(1225, 931, 51),
(1226, 932, 51),
(1227, 940, 51),
(1228, 941, 51),
(1229, 942, 51),
(1230, 943, 51),
(1231, 944, 51),
(1232, 945, 51),
(1233, 946, 51),
(1234, 948, 51),
(1235, 949, 51),
(1236, 950, 51),
(1237, 951, 51),
(1238, 952, 51),
(1239, 953, 51),
(1240, 954, 51),
(1241, 965, 51),
(1242, 967, 51),
(1243, 13, 52),
(1244, 14, 52),
(1245, 15, 52),
(1246, 16, 52),
(1247, 17, 52),
(1248, 18, 52),
(1249, 19, 52),
(1250, 20, 52),
(1251, 21, 52),
(1252, 22, 52),
(1253, 108, 52),
(1254, 109, 52),
(1255, 110, 52),
(1256, 929, 52),
(1257, 930, 52),
(1258, 931, 52),
(1259, 932, 52),
(1260, 933, 52),
(1261, 934, 52),
(1262, 935, 52),
(1263, 936, 52),
(1264, 940, 52),
(1265, 941, 52),
(1266, 942, 52),
(1267, 943, 52),
(1268, 944, 52),
(1269, 945, 52),
(1270, 946, 52),
(1271, 947, 52),
(1272, 948, 52),
(1273, 949, 52),
(1274, 950, 52),
(1275, 951, 52),
(1276, 952, 52),
(1277, 953, 52),
(1278, 954, 52),
(1279, 955, 52),
(1280, 956, 52),
(1281, 958, 52),
(1282, 959, 52),
(1283, 960, 52),
(1284, 961, 52),
(1285, 962, 52),
(1286, 963, 52),
(1287, 964, 52),
(1288, 965, 52),
(1289, 967, 52),
(1290, 13, 53),
(1291, 14, 53),
(1292, 15, 53),
(1293, 16, 53),
(1294, 17, 53),
(1295, 18, 53),
(1296, 19, 53),
(1297, 20, 53),
(1298, 21, 53),
(1299, 22, 53),
(1300, 24, 53),
(1301, 25, 53),
(1302, 107, 53),
(1303, 108, 53),
(1304, 109, 53),
(1305, 110, 53),
(1306, 929, 53),
(1307, 930, 53),
(1308, 931, 53),
(1309, 932, 53),
(1310, 933, 53),
(1311, 934, 53),
(1312, 935, 53),
(1313, 936, 53),
(1314, 937, 53),
(1315, 938, 53),
(1316, 939, 53),
(1317, 940, 53),
(1318, 941, 53),
(1319, 942, 53),
(1320, 943, 53),
(1321, 944, 53),
(1322, 945, 53),
(1323, 946, 53),
(1324, 947, 53),
(1325, 948, 53),
(1326, 949, 53),
(1327, 950, 53),
(1328, 951, 53),
(1329, 952, 53),
(1330, 953, 53),
(1331, 954, 53),
(1332, 955, 53),
(1333, 956, 53),
(1334, 957, 53),
(1335, 958, 53),
(1336, 959, 53),
(1337, 960, 53),
(1338, 961, 53),
(1339, 962, 53),
(1340, 963, 53),
(1341, 964, 53),
(1342, 965, 53),
(1343, 966, 53),
(1344, 967, 53),
(1345, 19, 54),
(1346, 20, 54),
(1347, 15, 54),
(1348, 16, 54),
(1349, 17, 54),
(1350, 18, 54),
(1351, 108, 54),
(1352, 109, 54),
(1353, 110, 54),
(1354, 929, 54),
(1355, 930, 54),
(1356, 931, 54),
(1357, 932, 54),
(1358, 940, 54),
(1359, 941, 54),
(1360, 942, 54),
(1361, 943, 54),
(1362, 944, 54),
(1363, 945, 54),
(1364, 946, 54),
(1365, 948, 54),
(1366, 949, 54),
(1367, 950, 54),
(1368, 951, 54),
(1369, 952, 54),
(1370, 953, 54),
(1371, 954, 54),
(1372, 965, 54),
(1373, 967, 54),
(1374, 13, 55),
(1375, 14, 55),
(1376, 15, 55),
(1377, 16, 55),
(1378, 17, 55),
(1379, 18, 55),
(1380, 19, 55),
(1381, 20, 55),
(1382, 21, 55),
(1383, 22, 55),
(1384, 108, 55),
(1385, 109, 55),
(1386, 110, 55),
(1387, 929, 55),
(1388, 930, 55),
(1389, 931, 55),
(1390, 932, 55),
(1391, 933, 55),
(1392, 934, 55),
(1393, 935, 55),
(1394, 936, 55),
(1395, 940, 55),
(1396, 941, 55),
(1397, 942, 55),
(1398, 943, 55),
(1399, 944, 55),
(1400, 945, 55),
(1401, 946, 55),
(1402, 947, 55),
(1403, 948, 55),
(1404, 949, 55),
(1405, 950, 55),
(1406, 951, 55),
(1407, 952, 55),
(1408, 953, 55),
(1409, 954, 55),
(1410, 955, 55),
(1411, 956, 55),
(1412, 958, 55),
(1413, 959, 55),
(1414, 960, 55),
(1415, 961, 55),
(1416, 962, 55),
(1417, 963, 55),
(1418, 964, 55),
(1419, 965, 55),
(1420, 967, 55),
(1421, 13, 56),
(1422, 14, 56),
(1423, 15, 56),
(1424, 16, 56),
(1425, 17, 56),
(1426, 18, 56),
(1427, 19, 56),
(1428, 20, 56),
(1429, 21, 56),
(1430, 22, 56),
(1431, 24, 56),
(1432, 25, 56),
(1433, 107, 56),
(1434, 108, 56),
(1435, 109, 56),
(1436, 110, 56),
(1437, 929, 56),
(1438, 930, 56),
(1439, 931, 56),
(1440, 932, 56),
(1441, 933, 56),
(1442, 934, 56),
(1443, 935, 56),
(1444, 936, 56),
(1445, 937, 56),
(1446, 938, 56),
(1447, 939, 56),
(1448, 940, 56),
(1449, 941, 56),
(1450, 942, 56),
(1451, 943, 56),
(1452, 944, 56),
(1453, 945, 56),
(1454, 946, 56),
(1455, 947, 56),
(1456, 948, 56),
(1457, 949, 56),
(1458, 950, 56),
(1459, 951, 56),
(1460, 952, 56),
(1461, 953, 56),
(1462, 954, 56),
(1463, 955, 56),
(1464, 956, 56),
(1465, 957, 56),
(1466, 958, 56),
(1467, 959, 56),
(1468, 960, 56),
(1469, 961, 56),
(1470, 962, 56),
(1471, 963, 56),
(1472, 964, 56),
(1473, 965, 56),
(1474, 966, 56),
(1475, 967, 56),
(1476, 43, 9),
(1477, 44, 9),
(1478, 45, 9),
(1479, 46, 9),
(1480, 47, 9),
(1481, 48, 9),
(1482, 968, 9),
(1483, 969, 9),
(1484, 970, 9),
(1485, 971, 9),
(1486, 972, 9),
(1487, 973, 9),
(1488, 974, 9),
(1489, 982, 9),
(1490, 983, 9),
(1491, 984, 9),
(1492, 985, 9),
(1493, 986, 9),
(1494, 987, 9),
(1495, 988, 9),
(1496, 990, 9),
(1497, 991, 9),
(1498, 992, 9),
(1499, 993, 9),
(1500, 994, 9),
(1501, 995, 9),
(1502, 996, 9),
(1503, 1007, 9),
(1504, 1009, 9),
(1505, 43, 12),
(1506, 44, 12),
(1507, 45, 12),
(1508, 46, 12),
(1509, 47, 12),
(1510, 48, 12),
(1511, 968, 12),
(1512, 969, 12),
(1513, 970, 12),
(1514, 971, 12),
(1515, 972, 12),
(1516, 973, 12),
(1517, 974, 12),
(1518, 982, 12),
(1519, 983, 12),
(1520, 984, 12),
(1521, 985, 12),
(1522, 986, 12),
(1523, 987, 12),
(1524, 988, 12),
(1525, 990, 12),
(1526, 991, 12),
(1527, 992, 12),
(1528, 993, 12),
(1529, 994, 12),
(1530, 995, 12),
(1531, 996, 12),
(1532, 1007, 12),
(1533, 1009, 12),
(1534, 43, 13),
(1535, 44, 13),
(1536, 45, 13),
(1537, 46, 13),
(1538, 47, 13),
(1539, 48, 13),
(1540, 968, 13),
(1541, 969, 13),
(1542, 970, 13),
(1543, 971, 13),
(1544, 972, 13),
(1545, 973, 13),
(1546, 974, 13),
(1547, 982, 13),
(1548, 983, 13),
(1549, 984, 13),
(1550, 985, 13),
(1551, 986, 13),
(1552, 987, 13),
(1553, 988, 13),
(1554, 990, 13),
(1555, 991, 13),
(1556, 992, 13),
(1557, 993, 13),
(1558, 994, 13),
(1559, 995, 13),
(1560, 996, 13),
(1561, 1007, 13),
(1562, 1009, 13),
(1563, 43, 14),
(1564, 44, 14),
(1565, 45, 14),
(1566, 46, 14),
(1567, 47, 14),
(1568, 48, 14),
(1569, 968, 14),
(1570, 969, 14),
(1571, 970, 14),
(1572, 971, 14),
(1573, 972, 14),
(1574, 973, 14),
(1575, 974, 14),
(1576, 982, 14),
(1577, 983, 14),
(1578, 984, 14),
(1579, 985, 14),
(1580, 986, 14),
(1581, 987, 14),
(1582, 988, 14),
(1583, 990, 14),
(1584, 991, 14),
(1585, 992, 14),
(1586, 993, 14),
(1587, 994, 14),
(1588, 995, 14),
(1589, 996, 14),
(1590, 1007, 14),
(1591, 1009, 14),
(1592, 43, 15),
(1593, 44, 15),
(1594, 45, 15),
(1595, 46, 15),
(1596, 47, 15),
(1597, 48, 15),
(1598, 968, 15),
(1599, 969, 15),
(1600, 970, 15),
(1601, 971, 15),
(1602, 972, 15),
(1603, 973, 15),
(1604, 974, 15),
(1605, 982, 15),
(1606, 983, 15),
(1607, 984, 15),
(1608, 985, 15),
(1609, 986, 15),
(1610, 987, 15),
(1611, 988, 15),
(1612, 990, 15),
(1613, 991, 15),
(1614, 992, 15),
(1615, 993, 15),
(1616, 994, 15),
(1617, 995, 15),
(1618, 996, 15),
(1619, 1007, 15),
(1620, 1009, 15),
(1621, 994, 10),
(1622, 995, 10),
(1623, 996, 10),
(1624, 997, 10),
(1625, 1000, 10),
(1626, 1001, 10),
(1627, 1002, 10),
(1628, 1003, 10),
(1629, 1004, 10),
(1630, 1005, 10),
(1631, 1006, 10),
(1632, 1007, 10),
(1633, 1009, 10),
(1634, 43, 57),
(1635, 44, 57),
(1636, 45, 57),
(1637, 46, 57),
(1638, 47, 57),
(1639, 48, 57),
(1640, 49, 57),
(1641, 50, 57),
(1642, 51, 57),
(1643, 52, 57),
(1644, 968, 57),
(1645, 969, 57),
(1646, 970, 57),
(1647, 971, 57),
(1648, 972, 57),
(1649, 973, 57),
(1650, 974, 57),
(1651, 975, 57),
(1652, 976, 57),
(1653, 977, 57),
(1654, 978, 57),
(1655, 982, 57),
(1656, 983, 57),
(1657, 984, 57),
(1658, 985, 57),
(1659, 986, 57),
(1660, 987, 57),
(1661, 988, 57),
(1662, 989, 57),
(1663, 990, 57),
(1664, 991, 57),
(1665, 992, 57),
(1666, 993, 57),
(1667, 994, 57),
(1668, 995, 57),
(1669, 996, 57),
(1670, 997, 57),
(1671, 1000, 57),
(1672, 1001, 57),
(1673, 1002, 57),
(1674, 1003, 57),
(1675, 1004, 57),
(1676, 1005, 57),
(1677, 1006, 57),
(1678, 1007, 57),
(1679, 1009, 57),
(1680, 43, 59),
(1681, 44, 59),
(1682, 45, 59),
(1683, 46, 59),
(1684, 47, 59),
(1685, 48, 59),
(1686, 49, 59),
(1687, 50, 59),
(1688, 51, 59),
(1689, 52, 59),
(1690, 968, 59),
(1691, 969, 59),
(1692, 970, 59),
(1693, 971, 59),
(1694, 972, 59),
(1695, 973, 59),
(1696, 974, 59),
(1697, 975, 59),
(1698, 976, 59),
(1699, 977, 59),
(1700, 978, 59),
(1701, 982, 59),
(1702, 983, 59),
(1703, 984, 59),
(1704, 985, 59),
(1705, 986, 59),
(1706, 987, 59),
(1707, 988, 59),
(1708, 989, 59),
(1709, 990, 59),
(1710, 991, 59),
(1711, 992, 59),
(1712, 993, 59),
(1713, 994, 59),
(1714, 995, 59),
(1715, 996, 59),
(1716, 997, 59),
(1717, 1000, 59),
(1718, 1001, 59),
(1719, 1002, 59),
(1720, 1003, 59),
(1721, 1004, 59),
(1722, 1005, 59),
(1723, 1006, 59),
(1724, 1007, 59),
(1725, 1009, 59),
(1726, 43, 61),
(1727, 44, 61),
(1728, 45, 61),
(1729, 46, 61),
(1730, 47, 61),
(1731, 48, 61),
(1732, 49, 61),
(1733, 50, 61),
(1734, 51, 61),
(1735, 52, 61),
(1736, 968, 61),
(1737, 969, 61),
(1738, 970, 61),
(1739, 971, 61),
(1740, 972, 61),
(1741, 973, 61),
(1742, 974, 61),
(1743, 975, 61),
(1744, 976, 61),
(1745, 977, 61),
(1746, 978, 61),
(1747, 982, 61),
(1748, 983, 61),
(1749, 984, 61),
(1750, 985, 61),
(1751, 986, 61),
(1752, 987, 61),
(1753, 988, 61),
(1754, 989, 61),
(1755, 990, 61),
(1756, 991, 61),
(1757, 992, 61),
(1758, 993, 61),
(1759, 994, 61),
(1760, 995, 61),
(1761, 996, 61),
(1762, 997, 61),
(1763, 1000, 61),
(1764, 1001, 61),
(1765, 1002, 61),
(1766, 1003, 61),
(1767, 1004, 61),
(1768, 1005, 61),
(1769, 1006, 61),
(1770, 1007, 61),
(1771, 1009, 61),
(1772, 43, 63),
(1773, 44, 63),
(1774, 45, 63),
(1775, 46, 63),
(1776, 47, 63),
(1777, 48, 63),
(1778, 49, 63),
(1779, 50, 63),
(1780, 51, 63),
(1781, 52, 63),
(1782, 968, 63),
(1783, 969, 63),
(1784, 970, 63),
(1785, 971, 63),
(1786, 972, 63),
(1787, 973, 63),
(1788, 974, 63),
(1789, 975, 63),
(1790, 976, 63),
(1791, 977, 63),
(1792, 978, 63),
(1793, 982, 63),
(1794, 983, 63),
(1795, 984, 63),
(1796, 985, 63),
(1797, 986, 63),
(1798, 987, 63),
(1799, 988, 63),
(1800, 989, 63),
(1801, 990, 63),
(1802, 991, 63),
(1803, 992, 63),
(1804, 993, 63),
(1805, 994, 63),
(1806, 995, 63),
(1807, 996, 63),
(1808, 997, 63),
(1809, 1000, 63),
(1810, 1001, 63),
(1811, 1002, 63),
(1812, 1003, 63),
(1813, 1004, 63),
(1814, 1005, 63),
(1815, 1006, 63),
(1816, 1007, 63),
(1817, 1009, 63),
(1818, 968, 11),
(1819, 969, 11),
(1820, 970, 11),
(1821, 971, 11),
(1822, 972, 11),
(1823, 973, 11),
(1824, 974, 11),
(1825, 975, 11),
(1826, 976, 11),
(1827, 977, 11),
(1828, 978, 11),
(1829, 979, 11),
(1830, 980, 11),
(1831, 981, 11),
(1832, 982, 11),
(1833, 983, 11),
(1834, 984, 11),
(1835, 985, 11),
(1836, 986, 11),
(1837, 987, 11),
(1838, 988, 11),
(1839, 989, 11),
(1840, 990, 11),
(1841, 991, 11),
(1842, 992, 11),
(1843, 993, 11),
(1844, 994, 11),
(1845, 995, 11),
(1846, 996, 11),
(1847, 997, 11),
(1848, 998, 11),
(1849, 999, 11),
(1850, 1000, 11),
(1851, 1001, 11),
(1852, 1002, 11),
(1853, 1003, 11),
(1854, 1004, 11),
(1855, 1005, 11),
(1856, 1006, 11),
(1857, 1007, 11),
(1858, 1008, 11),
(1859, 1009, 11),
(1860, 43, 58),
(1861, 44, 58),
(1862, 45, 58),
(1863, 46, 58),
(1864, 47, 58),
(1865, 48, 58),
(1866, 49, 58),
(1867, 50, 58),
(1868, 51, 58),
(1869, 52, 58),
(1870, 53, 58),
(1871, 54, 58),
(1872, 55, 58),
(1873, 968, 58),
(1874, 969, 58),
(1875, 970, 58),
(1876, 971, 58),
(1877, 972, 58),
(1878, 973, 58),
(1879, 974, 58),
(1880, 975, 58),
(1881, 976, 58),
(1882, 977, 58),
(1883, 978, 58),
(1884, 979, 58),
(1885, 980, 58),
(1886, 981, 58),
(1887, 982, 58),
(1888, 983, 58),
(1889, 984, 58),
(1890, 985, 58),
(1891, 986, 58),
(1892, 987, 58),
(1893, 988, 58),
(1894, 989, 58),
(1895, 990, 58),
(1896, 991, 58),
(1897, 992, 58),
(1898, 993, 58),
(1899, 994, 58),
(1900, 995, 58),
(1901, 996, 58),
(1902, 997, 58),
(1903, 998, 58),
(1904, 999, 58),
(1905, 1000, 58),
(1906, 1001, 58),
(1907, 1002, 58),
(1908, 1003, 58),
(1909, 1004, 58),
(1910, 1005, 58),
(1911, 1006, 58),
(1912, 1007, 58),
(1913, 1008, 58),
(1914, 1009, 58),
(1915, 43, 60),
(1916, 44, 60),
(1917, 45, 60),
(1918, 46, 60),
(1919, 47, 60),
(1920, 48, 60),
(1921, 49, 60),
(1922, 50, 60),
(1923, 51, 60),
(1924, 52, 60),
(1925, 53, 60),
(1926, 54, 60),
(1927, 55, 60),
(1928, 968, 60),
(1929, 969, 60),
(1930, 970, 60),
(1931, 971, 60),
(1932, 972, 60),
(1933, 973, 60),
(1934, 974, 60),
(1935, 975, 60),
(1936, 976, 60),
(1937, 977, 60),
(1938, 978, 60),
(1939, 979, 60),
(1940, 980, 60),
(1941, 981, 60),
(1942, 982, 60),
(1943, 983, 60),
(1944, 984, 60),
(1945, 985, 60),
(1946, 986, 60),
(1947, 987, 60),
(1948, 988, 60),
(1949, 989, 60),
(1950, 990, 60),
(1951, 991, 60),
(1952, 992, 60),
(1953, 993, 60),
(1954, 994, 60),
(1955, 995, 60),
(1956, 996, 60),
(1957, 997, 60),
(1958, 998, 60),
(1959, 999, 60),
(1960, 1000, 60),
(1961, 1001, 60),
(1962, 1002, 60),
(1963, 1003, 60),
(1964, 1004, 60),
(1965, 1005, 60),
(1966, 1006, 60),
(1967, 1007, 60),
(1968, 1008, 60),
(1969, 1009, 60),
(1970, 43, 62),
(1971, 44, 62),
(1972, 45, 62),
(1973, 46, 62),
(1974, 47, 62),
(1975, 48, 62),
(1976, 49, 62),
(1977, 50, 62),
(1978, 51, 62),
(1979, 52, 62),
(1980, 53, 62),
(1981, 54, 62),
(1982, 55, 62),
(1983, 968, 62),
(1984, 969, 62),
(1985, 970, 62),
(1986, 971, 62),
(1987, 972, 62),
(1988, 973, 62),
(1989, 974, 62),
(1990, 975, 62),
(1991, 976, 62),
(1992, 977, 62),
(1993, 978, 62),
(1994, 979, 62),
(1995, 980, 62),
(1996, 981, 62),
(1997, 982, 62),
(1998, 983, 62),
(1999, 984, 62),
(2000, 985, 62),
(2001, 986, 62),
(2002, 987, 62),
(2003, 988, 62),
(2004, 989, 62),
(2005, 990, 62),
(2006, 991, 62),
(2007, 992, 62),
(2008, 993, 62),
(2009, 994, 62),
(2010, 995, 62),
(2011, 996, 62),
(2012, 997, 62),
(2013, 998, 62),
(2014, 999, 62),
(2015, 1000, 62),
(2016, 1001, 62),
(2017, 1002, 62),
(2018, 1003, 62),
(2019, 1004, 62),
(2020, 1005, 62),
(2021, 1006, 62),
(2022, 1007, 62),
(2023, 1008, 62),
(2024, 1009, 62),
(2025, 43, 64),
(2026, 44, 64),
(2027, 45, 64),
(2028, 46, 64),
(2029, 47, 64),
(2030, 48, 64),
(2031, 49, 64),
(2032, 50, 64),
(2033, 51, 64),
(2034, 52, 64),
(2035, 53, 64),
(2036, 54, 64),
(2037, 55, 64),
(2038, 968, 64),
(2039, 969, 64),
(2040, 970, 64),
(2041, 971, 64),
(2042, 972, 64),
(2043, 973, 64),
(2044, 974, 64),
(2045, 975, 64),
(2046, 976, 64),
(2047, 977, 64),
(2048, 978, 64),
(2049, 979, 64),
(2050, 980, 64),
(2051, 981, 64),
(2052, 982, 64),
(2053, 983, 64),
(2054, 984, 64),
(2055, 985, 64),
(2056, 986, 64),
(2057, 987, 64),
(2058, 988, 64),
(2059, 989, 64),
(2060, 990, 64),
(2061, 991, 64),
(2062, 992, 64),
(2063, 993, 64),
(2064, 994, 64),
(2065, 995, 64),
(2066, 996, 64),
(2067, 997, 64),
(2068, 998, 64),
(2069, 999, 64),
(2070, 1000, 64),
(2071, 1001, 64),
(2072, 1002, 64),
(2073, 1003, 64),
(2074, 1004, 64),
(2075, 1005, 64),
(2076, 1006, 64),
(2077, 1007, 64),
(2078, 1008, 64),
(2079, 1009, 64);

-- --------------------------------------------------------

--
-- Table structure for table `realstate_propertype_question_relationship`
--

CREATE TABLE `realstate_propertype_question_relationship` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `coverage_type_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `realstate_propertype_question_relationship`
--

INSERT INTO `realstate_propertype_question_relationship` (`id`, `location_id`, `coverage_type_id`, `property_type_id`, `question_id`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 1, 2),
(3, 1, 2, 1, 1),
(4, 2, 1, 1, 1),
(5, 2, 1, 1, 2),
(6, 2, 2, 1, 1),
(7, 3, 1, 1, 1),
(8, 3, 1, 1, 2),
(9, 3, 2, 1, 1),
(10, 4, 1, 1, 1),
(11, 4, 1, 1, 2),
(12, 4, 2, 1, 1),
(13, 5, 1, 1, 1),
(14, 5, 1, 1, 2),
(15, 5, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `realstate_property_type`
--

CREATE TABLE `realstate_property_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `question_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='realstate_property_type';

--
-- Dumping data for table `realstate_property_type`
--

INSERT INTO `realstate_property_type` (`id`, `name`, `question_name`) VALUES
(1, 'Single Family', 'Single-family home less than 6k sq ft, or condominium, townhome, mobile home over 2K sq ft.'),
(3, 'Duplex', 'Duplex'),
(4, 'Triplex', 'Triplex'),
(5, 'Fourplex', 'Fourplex'),
(2, 'Condominium', 'Condominium, townhome less than 2k sq ft');

-- --------------------------------------------------------

--
-- Table structure for table `realstate_property_type_questions`
--

CREATE TABLE `realstate_property_type_questions` (
  `id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `input_name` varchar(30) NOT NULL,
  `input_type` varchar(10) NOT NULL DEFAULT 'radio' COMMENT 'radio, text',
  `valid_options` text NOT NULL,
  `default_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='realstate_property_type';

--
-- Dumping data for table `realstate_property_type_questions`
--

INSERT INTO `realstate_property_type_questions` (`id`, `property_type_id`, `question`, `input_name`, `input_type`, `valid_options`, `default_value`) VALUES
(1, 1, 'Is the square-footage of this home less than 6,000 feet?', 'home_size', 'radio', 'Yes,No', 'Yes'),
(2, 1, 'Is this a new construction home?', 'new_construction', 'radio', 'No,Yes', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `realstate_questions`
--

CREATE TABLE `realstate_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realstate_questions`
--

INSERT INTO `realstate_questions` (`id`, `question_name`, `created_at`, `updated_at`) VALUES
(1, 'Single-family home less than 6k sq ft, or condominium, townhome, mobile home over 2K sq ft.', NULL, NULL),
(2, 'Condominium, townhome less than 2k sq ft', NULL, NULL),
(3, 'Duplex', NULL, NULL),
(4, 'Triplex', NULL, NULL),
(5, 'Fourplex', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `realstate_relationships`
--

CREATE TABLE `realstate_relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `coverage_type_id` bigint(20) UNSIGNED NOT NULL,
  `question_type_id` bigint(20) UNSIGNED NOT NULL,
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realstate_relationships`
--

INSERT INTO `realstate_relationships` (`id`, `location_id`, `coverage_type_id`, `question_type_id`, `product_ids`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '42,43,44,31', NULL, NULL),
(2, 1, 1, 2, '45,46,47', NULL, NULL),
(3, 1, 1, 3, '48,49,50', NULL, NULL),
(4, 1, 1, 4, '51,52,53', NULL, NULL),
(5, 1, 1, 5, '54,55,56', NULL, NULL),
(6, 1, 2, 1, '1,2,4', NULL, NULL),
(7, 1, 2, 3, '6', NULL, NULL),
(8, 1, 2, 4, '7', NULL, NULL),
(9, 1, 2, 5, '8', NULL, NULL),
(10, 2, 1, 1, '1,2,3,4', NULL, NULL),
(11, 2, 1, 2, '5', NULL, NULL),
(12, 2, 1, 3, '6', NULL, NULL),
(13, 2, 1, 4, '7', NULL, NULL),
(14, 2, 1, 5, '8', NULL, NULL),
(15, 2, 2, 1, '1', NULL, NULL),
(16, 2, 2, 3, '6', NULL, NULL),
(17, 2, 2, 4, '7', NULL, NULL),
(18, 2, 2, 5, '8', NULL, NULL),
(19, 3, 1, 1, '9,10,11', NULL, NULL),
(20, 3, 1, 2, '12,57,58', NULL, NULL),
(21, 3, 1, 3, '13,59,60', NULL, NULL),
(22, 3, 1, 4, '14,61,62', NULL, NULL),
(23, 3, 1, 5, '15,63,64', NULL, NULL),
(24, 3, 2, 1, '9', NULL, NULL),
(25, 3, 2, 3, '13', NULL, NULL),
(26, 3, 2, 4, '14', NULL, NULL),
(27, 3, 2, 5, '15', NULL, NULL),
(28, 4, 1, 1, '16,17,32', NULL, NULL),
(29, 4, 1, 2, '18', NULL, NULL),
(30, 4, 1, 3, '31', NULL, NULL),
(31, 4, 1, 4, '32', NULL, NULL),
(32, 4, 1, 5, '34', NULL, NULL),
(33, 4, 2, 1, '16', NULL, NULL),
(34, 4, 2, 3, '31', NULL, NULL),
(35, 4, 2, 4, '32', NULL, NULL),
(36, 4, 2, 5, '34', NULL, NULL),
(37, 5, 1, 1, '19,20,21', NULL, NULL),
(38, 5, 1, 3, '22,23,24', NULL, NULL),
(39, 5, 1, 4, '25,26,27', NULL, NULL),
(40, 5, 1, 5, '28,29,30', NULL, NULL),
(41, 5, 2, 1, '19', NULL, NULL),
(42, 5, 1, 2, '39,40,41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `real_applied_coupons`
--

CREATE TABLE `real_applied_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `real_coupons`
--

CREATE TABLE `real_coupons` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `discount_type` varchar(50) NOT NULL COMMENT 'fixed, percent',
  `coupon_amount` varchar(50) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `real_coupons`
--

INSERT INTO `real_coupons` (`id`, `coupon_code`, `discount_type`, `coupon_amount`, `expiry_date`) VALUES
(1, '2345', 'percent', '50', '2021-07-15'),
(2, 'CASH100', 'fixed', '100', '2021-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `real_order_items`
--

CREATE TABLE `real_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `line_total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `real_order_items`
--

INSERT INTO `real_order_items` (`id`, `order_id`, `product_id`, `product_name`, `prod_type`, `quantity`, `rate`, `line_total`, `created_at`, `updated_at`) VALUES
(1146, 471, 213, '3rd Year Coverage', 'addon', '1', 525, 525, '2021-10-01 19:22:33', '2021-10-01 19:22:33'),
(1147, 471, 246, 'Water Softener', 'addon', '5', 75, 375, '2021-10-01 19:22:33', '2021-10-01 19:22:33'),
(1148, 471, 57, 'Premium', 'plan', '1', 525, 525, '2021-10-01 19:22:33', '2021-10-01 19:22:33'),
(1149, 472, 281, 'No-Fault Coverage', 'addon', '1', 60, 60, '2021-10-01 19:25:32', '2021-10-01 19:25:32'),
(1150, 472, 287, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-01 19:25:32', '2021-10-01 19:25:32'),
(1151, 472, 16, 'Standard', 'plan', '1', 350, 350, '2021-10-01 19:25:32', '2021-10-01 19:25:32'),
(1152, 473, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-01 19:32:11', '2021-10-01 19:32:11'),
(1153, 474, 40, 'Premium', 'plan', '1', 520, 520, '2021-10-01 19:44:00', '2021-10-01 19:44:00'),
(1154, 475, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-01 19:51:32', '2021-10-01 19:51:32'),
(1155, 476, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-01 20:04:44', '2021-10-01 20:04:44'),
(1156, 477, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-01 20:14:09', '2021-10-01 20:14:09'),
(1157, 478, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-01 20:27:20', '2021-10-01 20:27:20'),
(1158, 479, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-01 20:30:07', '2021-10-01 20:30:07'),
(1159, 480, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-01 20:45:28', '2021-10-01 20:45:28'),
(1160, 481, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-01 21:01:18', '2021-10-01 21:01:18'),
(1161, 482, 386, 'Swimming Pool/Hot Tub Chlorine', 'addon', '1', 225, 225, '2021-10-01 23:31:38', '2021-10-01 23:31:38'),
(1162, 482, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-01 23:31:38', '2021-10-01 23:31:38'),
(1163, 483, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-02 00:23:28', '2021-10-02 00:23:28'),
(1164, 484, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-02 00:35:44', '2021-10-02 00:35:44'),
(1165, 485, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-02 01:52:04', '2021-10-02 01:52:04'),
(1166, 486, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-02 01:52:43', '2021-10-02 01:52:43'),
(1167, 487, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-02 02:03:32', '2021-10-02 02:03:32'),
(1168, 488, 39, 'Standard', 'plan', '1', 420, 420, '2021-10-02 02:27:39', '2021-10-02 02:27:39'),
(1169, 489, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-02 02:29:25', '2021-10-02 02:29:25'),
(1170, 490, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-02 02:59:07', '2021-10-02 02:59:07'),
(1171, 491, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-02 04:06:53', '2021-10-02 04:06:53'),
(1172, 492, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-02 07:21:36', '2021-10-02 07:21:36'),
(1173, 493, 386, 'Swimming Pool/Hot Tub Chlorine', 'addon', '1', 225, 225, '2021-10-02 07:34:46', '2021-10-02 07:34:46'),
(1174, 493, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-02 07:34:46', '2021-10-02 07:34:46'),
(1175, 494, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-04 18:28:16', '2021-10-04 18:28:16'),
(1176, 495, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-04 19:35:08', '2021-10-04 19:35:08'),
(1177, 496, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-04 20:17:32', '2021-10-04 20:17:32'),
(1178, 497, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-04 20:42:07', '2021-10-04 20:42:07'),
(1179, 498, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-04 21:10:01', '2021-10-04 21:10:01'),
(1180, 499, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-04 21:35:47', '2021-10-04 21:35:47'),
(1181, 500, 789, 'Discount Prepaid Service Fee', 'addon', '1', 50, 50, '2021-10-04 22:22:47', '2021-10-04 22:22:47'),
(1182, 500, 45, 'Standard', 'plan', '1', 375, 375, '2021-10-04 22:22:47', '2021-10-04 22:22:47'),
(1183, 501, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-04 22:23:08', '2021-10-04 22:23:08'),
(1184, 502, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-04 23:28:15', '2021-10-04 23:28:15'),
(1185, 503, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-04 23:39:26', '2021-10-04 23:39:26'),
(1186, 504, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-05 00:40:18', '2021-10-05 00:40:18'),
(1187, 505, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-05 01:17:20', '2021-10-05 01:17:20'),
(1188, 506, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-05 01:58:56', '2021-10-05 01:58:56'),
(1189, 507, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-05 02:04:37', '2021-10-05 02:04:37'),
(1190, 508, 41, 'Ultimate', 'plan', '1', 600, 600, '2021-10-05 02:04:56', '2021-10-05 02:04:56'),
(1191, 509, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-05 02:41:26', '2021-10-05 02:41:26'),
(1192, 510, 64, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-05 03:33:42', '2021-10-05 03:33:42'),
(1193, 510, 4, 'Ultimate', 'plan', '1', 500, 500, '2021-10-05 03:33:42', '2021-10-05 03:33:42'),
(1194, 511, 577, 'Additional Refrigerator/Freezer', 'addon', '1', 120, 120, '2021-10-05 03:54:29', '2021-10-05 03:54:29'),
(1195, 511, 32, 'Ultimate', 'plan', '1', 550, 550, '2021-10-05 03:54:29', '2021-10-05 03:54:29'),
(1196, 512, 64, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-05 04:20:40', '2021-10-05 04:20:40'),
(1197, 512, 78, '2nd Year Coverage', 'addon', '1', 500, 500, '2021-10-05 04:20:40', '2021-10-05 04:20:40'),
(1198, 512, 83, 'Grinder Pump', 'addon', '1', 155, 155, '2021-10-05 04:20:40', '2021-10-05 04:20:40'),
(1199, 512, 4, 'Ultimate', 'plan', '1', 500, 500, '2021-10-05 04:20:40', '2021-10-05 04:20:40'),
(1200, 513, 64, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-05 04:22:00', '2021-10-05 04:22:00'),
(1201, 513, 78, '2nd Year Coverage', 'addon', '1', 500, 500, '2021-10-05 04:22:00', '2021-10-05 04:22:00'),
(1202, 513, 83, 'Grinder Pump', 'addon', '1', 155, 155, '2021-10-05 04:22:00', '2021-10-05 04:22:00'),
(1203, 513, 4, 'Ultimate', 'plan', '1', 500, 500, '2021-10-05 04:22:00', '2021-10-05 04:22:00'),
(1204, 514, 299, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-05 12:52:57', '2021-10-05 12:52:57'),
(1205, 514, 17, 'Premium', 'plan', '1', 450, 450, '2021-10-05 12:52:57', '2021-10-05 12:52:57'),
(1206, 515, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-05 12:59:02', '2021-10-05 12:59:02'),
(1207, 516, 190, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-05 16:45:38', '2021-10-05 16:45:38'),
(1208, 516, 193, 'Water Softener', 'addon', '1', 75, 75, '2021-10-05 16:45:38', '2021-10-05 16:45:38'),
(1209, 516, 255, '3rd Year Coverage', 'addon', '1', 635, 635, '2021-10-05 16:45:38', '2021-10-05 16:45:38'),
(1210, 516, 11, 'Ultimate', 'plan', '1', 635, 635, '2021-10-05 16:45:38', '2021-10-05 16:45:38'),
(1211, 517, 717, '2nd Year Coverage', 'addon', '1', 500, 500, '2021-10-05 16:48:54', '2021-10-05 16:48:54'),
(1212, 517, 745, 'Prof. Series Appliances - Kitchen', 'addon', '1', 100, 100, '2021-10-05 16:48:54', '2021-10-05 16:48:54'),
(1213, 517, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-05 16:48:54', '2021-10-05 16:48:54'),
(1214, 518, 721, '3rd Year Coverage', 'addon', '1', 400, 400, '2021-10-05 18:33:24', '2021-10-05 18:33:24'),
(1215, 518, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-05 18:33:24', '2021-10-05 18:33:24'),
(1216, 519, 43, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-05 18:58:42', '2021-10-05 18:58:42'),
(1217, 519, 44, 'Washer & Dryer', 'addon', '1', 85, 85, '2021-10-05 18:58:42', '2021-10-05 18:58:42'),
(1218, 519, 47, 'Grinder Pump', 'addon', '1', 155, 155, '2021-10-05 18:58:42', '2021-10-05 18:58:42'),
(1219, 519, 3, 'Premium+1', 'plan', '1', 450, 450, '2021-10-05 18:58:42', '2021-10-05 18:58:42'),
(1220, 520, 710, 'Discount Pre Paid Service Fee', 'addon', '1', 65, 65, '2021-10-05 19:15:18', '2021-10-05 19:15:18'),
(1221, 520, 39, 'Standard', 'plan', '1', 420, 420, '2021-10-05 19:15:18', '2021-10-05 19:15:18'),
(1222, 521, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-05 19:25:37', '2021-10-05 19:25:37'),
(1223, 522, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-05 19:31:12', '2021-10-05 19:31:12'),
(1224, 523, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-05 19:48:22', '2021-10-05 19:48:22'),
(1225, 524, 363, 'Swimming Pool/Hot Tub Chlorine', 'addon', '1', 225, 225, '2021-10-05 20:14:42', '2021-10-05 20:14:42'),
(1226, 524, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-05 20:14:42', '2021-10-05 20:14:42'),
(1227, 525, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-05 20:45:53', '2021-10-05 20:45:53'),
(1228, 525, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-05 20:45:53', '2021-10-05 20:45:53'),
(1229, 526, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-05 20:48:36', '2021-10-05 20:48:36'),
(1230, 527, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-05 21:14:37', '2021-10-05 21:14:37'),
(1231, 528, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-05 21:26:45', '2021-10-05 21:26:45'),
(1232, 529, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-05 23:05:43', '2021-10-05 23:05:43'),
(1233, 530, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-06 00:34:40', '2021-10-06 00:34:40'),
(1234, 531, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 00:35:04', '2021-10-06 00:35:04'),
(1235, 532, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-06 01:19:16', '2021-10-06 01:19:16'),
(1236, 533, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 02:03:52', '2021-10-06 02:03:52'),
(1237, 534, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-06 02:43:23', '2021-10-06 02:43:23'),
(1238, 535, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-06 02:46:53', '2021-10-06 02:46:53'),
(1239, 536, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-06 03:13:52', '2021-10-06 03:13:52'),
(1240, 536, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-06 03:13:52', '2021-10-06 03:13:52'),
(1241, 537, 64, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-06 04:08:08', '2021-10-06 04:08:08'),
(1242, 537, 4, 'Ultimate', 'plan', '1', 500, 500, '2021-10-06 04:08:08', '2021-10-06 04:08:08'),
(1243, 538, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-06 21:11:43', '2021-10-06 21:11:43'),
(1244, 539, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 22:05:10', '2021-10-06 22:05:10'),
(1245, 540, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 22:16:13', '2021-10-06 22:16:13'),
(1246, 541, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-06 22:23:21', '2021-10-06 22:23:21'),
(1247, 542, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 22:31:35', '2021-10-06 22:31:35'),
(1248, 543, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 22:33:32', '2021-10-06 22:33:32'),
(1249, 544, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 22:42:07', '2021-10-06 22:42:07'),
(1250, 545, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-06 22:48:04', '2021-10-06 22:48:04'),
(1251, 546, 64, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-06 23:22:18', '2021-10-06 23:22:18'),
(1252, 546, 4, 'Ultimate', 'plan', '1', 500, 500, '2021-10-06 23:22:18', '2021-10-06 23:22:18'),
(1253, 547, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-06 23:31:14', '2021-10-06 23:31:14'),
(1254, 548, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-06 23:33:48', '2021-10-06 23:33:48'),
(1255, 549, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-07 01:42:04', '2021-10-07 01:42:04'),
(1256, 550, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-07 10:24:03', '2021-10-07 10:24:03'),
(1257, 551, 48, 'Standard', 'plan', '1', 695, 695, '2021-10-07 10:29:00', '2021-10-07 10:29:00'),
(1258, 552, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-07 11:00:48', '2021-10-07 11:00:48'),
(1259, 552, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-07 11:00:48', '2021-10-07 11:00:48'),
(1260, 553, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-07 18:27:13', '2021-10-07 18:27:13'),
(1261, 554, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-07 19:55:25', '2021-10-07 19:55:25'),
(1262, 555, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-07 22:41:53', '2021-10-07 22:41:53'),
(1263, 556, 15, 'Standard', 'plan', '1', 1095, 1095, '2021-10-07 22:44:14', '2021-10-07 22:44:14'),
(1264, 557, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-07 22:54:23', '2021-10-07 22:54:23'),
(1265, 558, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-07 23:43:11', '2021-10-07 23:43:11'),
(1266, 559, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-08 00:28:35', '2021-10-08 00:28:35'),
(1267, 560, 774, 'Roof Leak Repair', 'addon', '1', 100, 100, '2021-10-08 00:30:40', '2021-10-08 00:30:40'),
(1268, 560, 775, 'External Pipe leak', 'addon', '1', 100, 100, '2021-10-08 00:30:40', '2021-10-08 00:30:40'),
(1269, 560, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-08 00:30:40', '2021-10-08 00:30:40'),
(1270, 561, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-08 01:32:24', '2021-10-08 01:32:24'),
(1271, 562, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-08 01:33:16', '2021-10-08 01:33:16'),
(1272, 563, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-08 02:22:15', '2021-10-08 02:22:15'),
(1273, 564, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-08 02:25:56', '2021-10-08 02:25:56'),
(1274, 565, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-08 03:28:39', '2021-10-08 03:28:39'),
(1275, 566, 347, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 65, 65, '2021-10-08 18:11:12', '2021-10-08 18:11:12'),
(1276, 566, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-08 18:11:12', '2021-10-08 18:11:12'),
(1277, 567, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-08 19:15:52', '2021-10-08 19:15:52'),
(1278, 568, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-08 20:44:18', '2021-10-08 20:44:18'),
(1279, 569, 171, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-08 20:50:14', '2021-10-08 20:50:14'),
(1280, 569, 10, 'Premium', 'plan', '1', 550, 550, '2021-10-08 20:50:14', '2021-10-08 20:50:14'),
(1281, 570, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-08 21:08:33', '2021-10-08 21:08:33'),
(1282, 571, 151, 'Refrigerator with ice maker', 'addon', '1', 55, 55, '2021-10-08 21:32:00', '2021-10-08 21:32:00'),
(1283, 571, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-08 21:32:00', '2021-10-08 21:32:00'),
(1284, 572, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-08 21:45:49', '2021-10-08 21:45:49'),
(1285, 573, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-08 21:57:10', '2021-10-08 21:57:10'),
(1286, 574, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-08 22:37:52', '2021-10-08 22:37:52'),
(1287, 575, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-08 23:58:57', '2021-10-08 23:58:57'),
(1288, 576, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-08 23:59:20', '2021-10-08 23:59:20'),
(1289, 577, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-09 01:46:24', '2021-10-09 01:46:24'),
(1290, 578, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-09 02:02:42', '2021-10-09 02:02:42'),
(1291, 579, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-09 02:43:43', '2021-10-09 02:43:43'),
(1292, 580, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-09 02:55:48', '2021-10-09 02:55:48'),
(1293, 581, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-09 04:16:58', '2021-10-09 04:16:58'),
(1294, 582, 171, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-09 04:54:01', '2021-10-09 04:54:01'),
(1295, 582, 178, 'Pool / Hot Tub - Salt Water', 'addon', '1', 350, 350, '2021-10-09 04:54:01', '2021-10-09 04:54:01'),
(1296, 582, 10, 'Premium', 'plan', '1', 550, 550, '2021-10-09 04:54:01', '2021-10-09 04:54:01'),
(1297, 583, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-09 22:08:11', '2021-10-09 22:08:11'),
(1298, 583, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-09 22:08:11', '2021-10-09 22:08:11'),
(1299, 584, 577, 'Additional Refrigerator/Freezer', 'addon', '1', 120, 120, '2021-10-10 01:37:01', '2021-10-10 01:37:01'),
(1300, 584, 32, 'Ultimate', 'plan', '1', 550, 550, '2021-10-10 01:37:01', '2021-10-10 01:37:01'),
(1301, 585, 577, 'Additional Refrigerator/Freezer', 'addon', '1', 120, 120, '2021-10-10 01:44:44', '2021-10-10 01:44:44'),
(1302, 585, 32, 'Ultimate', 'plan', '1', 550, 550, '2021-10-10 01:44:44', '2021-10-10 01:44:44'),
(1303, 586, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-11 19:29:30', '2021-10-11 19:29:30'),
(1304, 587, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-11 21:41:27', '2021-10-11 21:41:27'),
(1305, 588, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-11 22:15:48', '2021-10-11 22:15:48'),
(1306, 589, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-11 23:01:21', '2021-10-11 23:01:21'),
(1307, 590, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-11 23:08:33', '2021-10-11 23:08:33'),
(1308, 591, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-11 23:11:07', '2021-10-11 23:11:07'),
(1309, 592, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-11 23:15:38', '2021-10-11 23:15:38'),
(1310, 593, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-12 01:03:39', '2021-10-12 01:03:39'),
(1311, 593, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-12 01:03:39', '2021-10-12 01:03:39'),
(1312, 594, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-12 01:11:05', '2021-10-12 01:11:05'),
(1313, 595, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-12 01:50:59', '2021-10-12 01:50:59'),
(1314, 596, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-12 03:51:45', '2021-10-12 03:51:45'),
(1315, 597, 46, 'Premium+', 'plan', '1', 475, 475, '2021-10-12 11:35:53', '2021-10-12 11:35:53'),
(1316, 598, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-12 14:33:17', '2021-10-12 14:33:17'),
(1317, 598, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-12 14:33:17', '2021-10-12 14:33:17'),
(1318, 599, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-12 15:53:24', '2021-10-12 15:53:24'),
(1319, 600, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-12 16:12:36', '2021-10-12 16:12:36'),
(1320, 601, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-12 16:23:22', '2021-10-12 16:23:22'),
(1321, 602, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-12 17:03:09', '2021-10-12 17:03:09'),
(1322, 603, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-12 17:07:36', '2021-10-12 17:07:36'),
(1323, 604, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-12 17:15:49', '2021-10-12 17:15:49'),
(1324, 605, 41, 'Ultimate', 'plan', '1', 600, 600, '2021-10-12 17:54:34', '2021-10-12 17:54:34'),
(1325, 606, 39, 'Standard', 'plan', '1', 420, 420, '2021-10-12 18:22:38', '2021-10-12 18:22:38'),
(1326, 607, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-12 18:57:18', '2021-10-12 18:57:18'),
(1327, 608, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-12 19:11:30', '2021-10-12 19:11:30'),
(1328, 609, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-12 19:40:07', '2021-10-12 19:40:07'),
(1329, 610, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-12 20:43:39', '2021-10-12 20:43:39'),
(1330, 611, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-12 20:48:17', '2021-10-12 20:48:17'),
(1331, 612, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-13 00:37:06', '2021-10-13 00:37:06'),
(1332, 613, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-13 15:39:06', '2021-10-13 15:39:06'),
(1333, 614, 47, 'Ultimate', 'plan', '1', 575, 575, '2021-10-13 15:51:00', '2021-10-13 15:51:00'),
(1334, 615, 47, 'Ultimate', 'plan', '1', 575, 575, '2021-10-13 15:54:30', '2021-10-13 15:54:30'),
(1335, 616, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-13 16:57:13', '2021-10-13 16:57:13'),
(1336, 617, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-13 17:34:22', '2021-10-13 17:34:22'),
(1337, 618, 171, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-13 17:47:47', '2021-10-13 17:47:47'),
(1338, 618, 10, 'Premium', 'plan', '1', 550, 550, '2021-10-13 17:47:47', '2021-10-13 17:47:47'),
(1339, 619, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-13 17:55:54', '2021-10-13 17:55:54'),
(1340, 620, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-13 19:17:52', '2021-10-13 19:17:52'),
(1341, 621, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-13 19:39:03', '2021-10-13 19:39:03'),
(1342, 622, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-13 22:18:01', '2021-10-13 22:18:01'),
(1343, 623, 171, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-13 22:50:51', '2021-10-13 22:50:51'),
(1344, 623, 10, 'Premium', 'plan', '1', 550, 550, '2021-10-13 22:50:51', '2021-10-13 22:50:51'),
(1345, 624, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-14 01:31:54', '2021-10-14 01:31:54'),
(1346, 625, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-14 14:15:33', '2021-10-14 14:15:33'),
(1347, 626, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-14 14:20:35', '2021-10-14 14:20:35'),
(1348, 627, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-14 15:30:47', '2021-10-14 15:30:47'),
(1349, 628, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-14 15:35:09', '2021-10-14 15:35:09'),
(1350, 629, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-14 15:44:50', '2021-10-14 15:44:50'),
(1351, 630, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-14 16:33:28', '2021-10-14 16:33:28'),
(1352, 631, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-14 17:34:42', '2021-10-14 17:34:42'),
(1353, 632, 358, 'Septic System, Pumping & Sewage Ejector Pump', 'addon', '1', 85, 85, '2021-10-14 19:15:56', '2021-10-14 19:15:56'),
(1354, 632, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-14 19:15:56', '2021-10-14 19:15:56'),
(1355, 633, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-14 19:25:02', '2021-10-14 19:25:02'),
(1356, 634, 64, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-14 19:53:01', '2021-10-14 19:53:01'),
(1357, 634, 4, 'Ultimate', 'plan', '1', 500, 500, '2021-10-14 19:53:01', '2021-10-14 19:53:01'),
(1358, 635, 46, 'Premium+', 'plan', '1', 475, 475, '2021-10-14 20:40:09', '2021-10-14 20:40:09'),
(1359, 636, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-14 20:54:07', '2021-10-14 20:54:07'),
(1360, 637, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-14 21:39:43', '2021-10-14 21:39:43'),
(1361, 638, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-15 12:45:20', '2021-10-15 12:45:20'),
(1362, 639, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-15 13:27:56', '2021-10-15 13:27:56'),
(1363, 640, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-15 13:30:11', '2021-10-15 13:30:11'),
(1364, 641, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-15 14:03:17', '2021-10-15 14:03:17'),
(1365, 642, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-15 14:22:43', '2021-10-15 14:22:43'),
(1366, 643, 334, 'Refrigerator with ice maker', 'addon', '1', 55, 55, '2021-10-15 14:32:10', '2021-10-15 14:32:10'),
(1367, 643, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-15 14:32:10', '2021-10-15 14:32:10'),
(1368, 644, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-15 14:39:50', '2021-10-15 14:39:50'),
(1369, 645, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-15 14:58:32', '2021-10-15 14:58:32'),
(1370, 646, 11, 'Ultimate', 'plan', '1', 635, 635, '2021-10-15 15:59:52', '2021-10-15 15:59:52'),
(1371, 647, 372, 'Casita House', 'addon', '1', 195, 195, '2021-10-15 19:14:19', '2021-10-15 19:14:19'),
(1372, 647, 381, 'Septic System, Pumping & Sewage Ejector Pump', 'addon', '1', 85, 85, '2021-10-15 19:14:19', '2021-10-15 19:14:19'),
(1373, 647, 704, 'Water Softener', 'addon', '1', 65, 65, '2021-10-15 19:14:19', '2021-10-15 19:14:19'),
(1374, 647, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-15 19:14:19', '2021-10-15 19:14:19'),
(1375, 648, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-15 20:54:09', '2021-10-15 20:54:09'),
(1376, 649, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-15 21:11:19', '2021-10-15 21:11:19'),
(1377, 650, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-17 17:37:07', '2021-10-17 17:37:07'),
(1378, 651, 22, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-18 05:55:40', '2021-10-18 05:55:40'),
(1379, 651, 34, 'Roof Leak Repairs', 'addon', '1', 100, 100, '2021-10-18 05:55:40', '2021-10-18 05:55:40'),
(1380, 651, 2, 'Premium+', 'plan', '1', 400, 400, '2021-10-18 05:55:40', '2021-10-18 05:55:40'),
(1381, 652, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-18 12:59:54', '2021-10-18 12:59:54'),
(1382, 653, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-18 14:21:11', '2021-10-18 14:21:11'),
(1383, 654, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-18 14:41:03', '2021-10-18 14:41:03'),
(1384, 655, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-18 14:47:16', '2021-10-18 14:47:16'),
(1385, 656, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-18 14:51:55', '2021-10-18 14:51:55'),
(1386, 657, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-18 14:52:45', '2021-10-18 14:52:45'),
(1387, 658, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-18 15:02:24', '2021-10-18 15:02:24'),
(1388, 659, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-18 16:16:45', '2021-10-18 16:16:45'),
(1389, 660, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-18 16:43:49', '2021-10-18 16:43:49'),
(1390, 661, 171, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-18 16:55:54', '2021-10-18 16:55:54'),
(1391, 661, 10, 'Premium', 'plan', '1', 550, 550, '2021-10-18 16:55:54', '2021-10-18 16:55:54'),
(1392, 662, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-18 17:09:35', '2021-10-18 17:09:35'),
(1393, 663, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-18 18:03:32', '2021-10-18 18:03:32'),
(1394, 664, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-18 18:07:11', '2021-10-18 18:07:11'),
(1395, 665, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-18 18:13:25', '2021-10-18 18:13:25'),
(1396, 666, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-18 18:18:57', '2021-10-18 18:18:57'),
(1397, 667, 334, 'Refrigerator with ice maker', 'addon', '1', 55, 55, '2021-10-18 18:41:32', '2021-10-18 18:41:32'),
(1398, 667, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-18 18:41:32', '2021-10-18 18:41:32'),
(1399, 668, 334, 'Refrigerator with ice maker', 'addon', '1', 55, 55, '2021-10-18 20:25:42', '2021-10-18 20:25:42'),
(1400, 668, 340, 'Swimming Pool/Hot Tub Chlorine', 'addon', '1', 225, 225, '2021-10-18 20:25:42', '2021-10-18 20:25:42'),
(1401, 668, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-18 20:25:42', '2021-10-18 20:25:42'),
(1402, 669, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-18 20:28:26', '2021-10-18 20:28:26'),
(1403, 670, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-18 20:40:29', '2021-10-18 20:40:29'),
(1404, 671, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-18 20:44:56', '2021-10-18 20:44:56'),
(1405, 672, 334, 'Refrigerator with ice maker', 'addon', '1', 55, 55, '2021-10-18 21:22:47', '2021-10-18 21:22:47'),
(1406, 672, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-18 21:22:47', '2021-10-18 21:22:47'),
(1407, 673, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-18 21:31:23', '2021-10-18 21:31:23'),
(1408, 674, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-18 22:55:18', '2021-10-18 22:55:18'),
(1409, 675, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-19 13:52:08', '2021-10-19 13:52:08'),
(1410, 676, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-19 14:15:35', '2021-10-19 14:15:35'),
(1411, 677, 760, 'Discount Pre Paid Service Fee', 'addon', '1', 50, 50, '2021-10-19 16:02:47', '2021-10-19 16:02:47'),
(1412, 677, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-19 16:02:47', '2021-10-19 16:02:47'),
(1413, 678, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-19 16:04:36', '2021-10-19 16:04:36'),
(1414, 679, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-19 17:04:09', '2021-10-19 17:04:09'),
(1415, 680, 40, 'Premium', 'plan', '1', 520, 520, '2021-10-19 17:42:15', '2021-10-19 17:42:15'),
(1416, 681, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-19 18:09:19', '2021-10-19 18:09:19'),
(1417, 682, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-19 18:12:39', '2021-10-19 18:12:39'),
(1418, 683, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-19 18:34:15', '2021-10-19 18:34:15'),
(1419, 684, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-19 18:40:17', '2021-10-19 18:40:17'),
(1420, 685, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-19 18:48:31', '2021-10-19 18:48:31'),
(1421, 686, 46, 'Premium+', 'plan', '1', 475, 475, '2021-10-19 18:50:58', '2021-10-19 18:50:58'),
(1422, 687, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-19 18:51:57', '2021-10-19 18:51:57'),
(1423, 688, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-19 20:18:26', '2021-10-19 20:18:26'),
(1424, 689, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-19 20:25:25', '2021-10-19 20:25:25'),
(1425, 690, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-19 20:36:49', '2021-10-19 20:36:49'),
(1426, 691, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-19 20:54:57', '2021-10-19 20:54:57'),
(1427, 692, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 01:20:15', '2021-10-20 01:20:15'),
(1428, 693, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 01:28:48', '2021-10-20 01:28:48'),
(1429, 694, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 01:39:35', '2021-10-20 01:39:35'),
(1430, 695, 160, 'Water Heater (Additional)', 'addon', '1', 50, 50, '2021-10-20 06:09:20', '2021-10-20 06:09:20'),
(1431, 695, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-20 06:09:20', '2021-10-20 06:09:20'),
(1432, 696, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-20 13:10:15', '2021-10-20 13:10:15'),
(1433, 697, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 14:14:40', '2021-10-20 14:14:40'),
(1434, 698, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-20 14:47:43', '2021-10-20 14:47:43'),
(1435, 699, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 15:00:12', '2021-10-20 15:00:12'),
(1436, 700, 12, 'Standard', 'plan', '1', 450, 450, '2021-10-20 15:01:55', '2021-10-20 15:01:55'),
(1437, 701, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-20 15:32:20', '2021-10-20 15:32:20'),
(1438, 702, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-20 15:35:21', '2021-10-20 15:35:21'),
(1439, 703, 12, 'Standard', 'plan', '1', 450, 450, '2021-10-20 15:50:03', '2021-10-20 15:50:03'),
(1440, 704, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 17:05:55', '2021-10-20 17:05:55'),
(1441, 705, 57, 'Premium', 'plan', '1', 525, 525, '2021-10-20 17:24:36', '2021-10-20 17:24:36'),
(1442, 706, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 17:31:30', '2021-10-20 17:31:30'),
(1443, 707, 204, 'Discount Pre Paid Service Fee', 'addon', '1', 65, 65, '2021-10-20 17:56:31', '2021-10-20 17:56:31'),
(1444, 707, 11, 'Ultimate', 'plan', '1', 635, 635, '2021-10-20 17:56:31', '2021-10-20 17:56:31'),
(1445, 708, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-20 18:16:48', '2021-10-20 18:16:48'),
(1446, 709, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-20 18:22:55', '2021-10-20 18:22:55'),
(1447, 710, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 18:44:35', '2021-10-20 18:44:35'),
(1448, 711, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 19:02:05', '2021-10-20 19:02:05'),
(1449, 712, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-20 19:07:50', '2021-10-20 19:07:50'),
(1450, 713, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-20 19:22:28', '2021-10-20 19:22:28'),
(1451, 714, 197, 'Pool / Hot Tub - Salt Water', 'addon', '1', 350, 350, '2021-10-20 23:34:26', '2021-10-20 23:34:26'),
(1452, 714, 11, 'Ultimate', 'plan', '1', 635, 635, '2021-10-20 23:34:26', '2021-10-20 23:34:26'),
(1453, 715, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-21 01:24:06', '2021-10-21 01:24:06'),
(1454, 716, 334, 'Refrigerator with ice maker', 'addon', '1', 55, 55, '2021-10-21 13:47:04', '2021-10-21 13:47:04'),
(1455, 716, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-21 13:47:04', '2021-10-21 13:47:04'),
(1456, 717, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-21 14:53:11', '2021-10-21 14:53:11'),
(1457, 718, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-21 15:10:21', '2021-10-21 15:10:21'),
(1458, 719, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-21 15:54:33', '2021-10-21 15:54:33'),
(1459, 720, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-21 16:19:10', '2021-10-21 16:19:10'),
(1460, 721, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-21 16:27:21', '2021-10-21 16:27:21'),
(1461, 722, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-21 16:37:59', '2021-10-21 16:37:59'),
(1462, 723, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-21 17:05:37', '2021-10-21 17:05:37'),
(1463, 724, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-21 18:04:53', '2021-10-21 18:04:53'),
(1464, 725, 767, 'Washer / Dryer', 'addon', '1', 100, 100, '2021-10-21 18:10:48', '2021-10-21 18:10:48'),
(1465, 725, 773, 'Water Heater (Additional)', 'addon', '1', 50, 50, '2021-10-21 18:10:48', '2021-10-21 18:10:48'),
(1466, 725, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-21 18:10:48', '2021-10-21 18:10:48'),
(1467, 726, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-21 18:15:10', '2021-10-21 18:15:10'),
(1468, 727, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-21 18:43:26', '2021-10-21 18:43:26'),
(1469, 728, 787, 'Water Softener', 'addon', '1', 75, 75, '2021-10-21 19:08:27', '2021-10-21 19:08:27'),
(1470, 728, 789, 'Discount Prepaid Service Fee', 'addon', '1', 50, 50, '2021-10-21 19:08:27', '2021-10-21 19:08:27'),
(1471, 728, 45, 'Standard', 'plan', '1', 375, 375, '2021-10-21 19:08:27', '2021-10-21 19:08:27'),
(1472, 729, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-21 20:06:35', '2021-10-21 20:06:35'),
(1473, 730, 335, 'Septic System, Pumping & Sewage Ejector Pump', 'addon', '1', 85, 85, '2021-10-21 20:14:09', '2021-10-21 20:14:09'),
(1474, 730, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-21 20:14:09', '2021-10-21 20:14:09'),
(1475, 731, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-21 20:32:06', '2021-10-21 20:32:06'),
(1476, 732, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-21 20:33:56', '2021-10-21 20:33:56'),
(1477, 733, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-21 21:04:23', '2021-10-21 21:04:23'),
(1478, 734, 753, 'Roof Leak Repair', 'addon', '1', 100, 100, '2021-10-22 12:46:19', '2021-10-22 12:46:19'),
(1479, 734, 754, 'External Pipe leak', 'addon', '1', 100, 100, '2021-10-22 12:46:19', '2021-10-22 12:46:19'),
(1480, 734, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-22 12:46:19', '2021-10-22 12:46:19'),
(1481, 735, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-22 13:11:15', '2021-10-22 13:11:15'),
(1482, 736, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-22 13:15:59', '2021-10-22 13:15:59'),
(1483, 737, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-22 13:47:58', '2021-10-22 13:47:58'),
(1484, 738, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-22 14:28:04', '2021-10-22 14:28:04'),
(1485, 739, 370, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 65, 65, '2021-10-22 14:41:00', '2021-10-22 14:41:00'),
(1486, 739, 380, 'Refrigerator with ice maker', 'addon', '1', 55, 55, '2021-10-22 14:41:00', '2021-10-22 14:41:00'),
(1487, 739, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-22 14:41:00', '2021-10-22 14:41:00'),
(1488, 740, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-22 15:18:25', '2021-10-22 15:18:25'),
(1489, 741, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-22 15:35:07', '2021-10-22 15:35:07'),
(1490, 742, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-22 16:06:50', '2021-10-22 16:06:50'),
(1491, 743, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-22 16:36:05', '2021-10-22 16:36:05'),
(1492, 744, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-22 17:16:00', '2021-10-22 17:16:00'),
(1493, 745, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-22 17:27:24', '2021-10-22 17:27:24'),
(1494, 746, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-22 18:03:30', '2021-10-22 18:03:30'),
(1495, 747, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-22 18:11:06', '2021-10-22 18:11:06'),
(1496, 748, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-22 18:12:08', '2021-10-22 18:12:08'),
(1497, 749, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-22 19:30:51', '2021-10-22 19:30:51'),
(1498, 750, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-22 19:38:40', '2021-10-22 19:38:40'),
(1499, 751, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-22 19:42:50', '2021-10-22 19:42:50'),
(1500, 752, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-22 20:30:52', '2021-10-22 20:30:52'),
(1501, 753, 765, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-22 22:02:55', '2021-10-22 22:02:55'),
(1502, 753, 767, 'Washer / Dryer', 'addon', '1', 100, 100, '2021-10-22 22:02:55', '2021-10-22 22:02:55'),
(1503, 753, 781, 'Discount Pre Paid Service Fee', 'addon', '1', 50, 50, '2021-10-22 22:02:55', '2021-10-22 22:02:55'),
(1504, 753, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-22 22:02:55', '2021-10-22 22:02:55'),
(1505, 754, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-23 14:35:52', '2021-10-23 14:35:52'),
(1506, 755, 747, 'Water Softener', 'addon', '1', 75, 75, '2021-10-24 15:19:56', '2021-10-24 15:19:56'),
(1507, 755, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-24 15:19:56', '2021-10-24 15:19:56'),
(1508, 756, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-25 14:48:37', '2021-10-25 14:48:37'),
(1509, 757, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-25 15:44:14', '2021-10-25 15:44:14'),
(1510, 758, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-25 16:41:27', '2021-10-25 16:41:27'),
(1511, 759, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-25 16:50:27', '2021-10-25 16:50:27'),
(1512, 760, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-25 17:24:16', '2021-10-25 17:24:16'),
(1513, 761, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-25 17:55:15', '2021-10-25 17:55:15'),
(1514, 762, 40, 'Premium', 'plan', '1', 520, 520, '2021-10-25 21:05:36', '2021-10-25 21:05:36'),
(1515, 763, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-25 22:09:48', '2021-10-25 22:09:48'),
(1516, 764, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-26 13:58:27', '2021-10-26 13:58:27'),
(1517, 765, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-26 14:18:58', '2021-10-26 14:18:58'),
(1518, 766, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-26 14:29:39', '2021-10-26 14:29:39'),
(1519, 767, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-26 14:55:03', '2021-10-26 14:55:03'),
(1520, 768, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-26 15:00:19', '2021-10-26 15:00:19'),
(1521, 769, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-26 15:30:51', '2021-10-26 15:30:51'),
(1522, 770, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-26 16:46:30', '2021-10-26 16:46:30'),
(1523, 770, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-26 16:46:30', '2021-10-26 16:46:30'),
(1524, 771, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-26 17:51:24', '2021-10-26 17:51:24'),
(1525, 772, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-26 18:40:05', '2021-10-26 18:40:05'),
(1526, 773, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-26 18:50:45', '2021-10-26 18:50:45'),
(1527, 774, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-26 19:02:42', '2021-10-26 19:02:42'),
(1528, 775, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-26 19:18:00', '2021-10-26 19:18:00'),
(1529, 776, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-26 19:30:39', '2021-10-26 19:30:39'),
(1530, 777, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-26 19:53:23', '2021-10-26 19:53:23'),
(1531, 778, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-26 20:19:19', '2021-10-26 20:19:19'),
(1532, 779, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-26 20:25:03', '2021-10-26 20:25:03'),
(1533, 780, 171, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-26 21:41:27', '2021-10-26 21:41:27'),
(1534, 780, 10, 'Premium', 'plan', '1', 550, 550, '2021-10-26 21:41:27', '2021-10-26 21:41:27'),
(1535, 781, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-26 21:59:45', '2021-10-26 21:59:45'),
(1536, 782, 40, 'Premium', 'plan', '1', 520, 520, '2021-10-27 00:49:51', '2021-10-27 00:49:51'),
(1537, 783, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-27 15:43:35', '2021-10-27 15:43:35'),
(1538, 784, 11, 'Ultimate', 'plan', '1', 635, 635, '2021-10-27 15:47:31', '2021-10-27 15:47:31'),
(1539, 785, 64, 'Refrigerator', 'addon', '1', 50, 50, '2021-10-27 15:48:09', '2021-10-27 15:48:09'),
(1540, 785, 4, 'Ultimate', 'plan', '1', 500, 500, '2021-10-27 15:48:09', '2021-10-27 15:48:09'),
(1541, 786, 171, 'Additional Fridge or Freestanding Fridge/Freezer', 'addon', '1', 50, 50, '2021-10-27 15:57:20', '2021-10-27 15:57:20'),
(1542, 786, 10, 'Premium', 'plan', '1', 550, 550, '2021-10-27 15:57:21', '2021-10-27 15:57:21'),
(1543, 787, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-27 16:49:38', '2021-10-27 16:49:38'),
(1544, 788, 21, 'Ultimate', 'plan', '1', 625, 625, '2021-10-27 17:22:17', '2021-10-27 17:22:17'),
(1545, 789, 20, 'Premium', 'plan', '1', 545, 545, '2021-10-27 18:12:15', '2021-10-27 18:12:15'),
(1546, 790, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-27 18:39:11', '2021-10-27 18:39:11'),
(1547, 791, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-27 19:39:32', '2021-10-27 19:39:32'),
(1548, 792, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-27 20:30:15', '2021-10-27 20:30:15'),
(1549, 793, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-27 20:38:13', '2021-10-27 20:38:13'),
(1550, 794, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-27 20:39:10', '2021-10-27 20:39:10'),
(1551, 795, 45, 'Standard', 'plan', '1', 375, 375, '2021-10-27 20:53:26', '2021-10-27 20:53:26'),
(1552, 796, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-27 20:53:27', '2021-10-27 20:53:27'),
(1553, 797, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-27 20:59:45', '2021-10-27 20:59:45'),
(1554, 798, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-27 21:30:36', '2021-10-27 21:30:36'),
(1555, 799, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-28 15:00:55', '2021-10-28 15:00:55'),
(1556, 800, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-28 15:15:18', '2021-10-28 15:15:18'),
(1557, 801, 11, 'Ultimate', 'plan', '1', 635, 635, '2021-10-28 15:39:32', '2021-10-28 15:39:32'),
(1558, 802, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-28 15:55:42', '2021-10-28 15:55:42'),
(1559, 803, 44, 'Ultimate', 'plan', '1', 600, 600, '2021-10-28 16:01:00', '2021-10-28 16:01:00'),
(1560, 804, 19, 'Standard', 'plan', '1', 445, 445, '2021-10-28 16:44:55', '2021-10-28 16:44:55'),
(1561, 805, 9, 'Standard', 'plan', '1', 475, 475, '2021-10-28 16:48:26', '2021-10-28 16:48:26'),
(1562, 806, 9, 'Additional Refrigerator/Freezer', 'addon', '1', 40, 40, '2021-10-28 18:46:43', '2021-10-28 18:46:43'),
(1563, 806, 1, 'Standard', 'plan', '1', 300, 300, '2021-10-28 18:46:43', '2021-10-28 18:46:43'),
(1564, 807, 43, 'Premium+', 'plan', '1', 500, 500, '2021-10-28 19:12:12', '2021-10-28 19:12:12'),
(1565, 808, 42, 'Standard', 'plan', '1', 400, 400, '2021-10-28 21:24:31', '2021-10-28 21:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `real_user_types`
--

CREATE TABLE `real_user_types` (
  `id` int(11) NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `real_user_types`
--

INSERT INTO `real_user_types` (`id`, `user_type`) VALUES
(1, 'The Seller'),
(2, 'The Seller\'s Agent'),
(3, 'The Buyer'),
(4, 'The Buyer\'s Agent');

-- --------------------------------------------------------

--
-- Table structure for table `renewals`
--

CREATE TABLE `renewals` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address_or_policy_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `renewal_type` varchar(255) NOT NULL,
  `additional_details` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renewals`
--

INSERT INTO `renewals` (`id`, `first_name`, `last_name`, `address_or_policy_number`, `email`, `phone`, `renewal_type`, `additional_details`, `created_at`, `updated_at`) VALUES
(169, 'Daniel', 'Jmbliss67', 'Texas, 12345', 'jmbliss67@gmail.com', '888.494.9460', 'Yes', 'nothing', '2021-10-01 17:31:57', '2021-10-01 17:31:57'),
(170, 'Donald', 'Murchison', '1405 Magnolia', 'aplusleasingandmanagement@gmail.com', '9792191879', 'Yes', 'C# 27891', '2021-10-02 21:36:10', '2021-10-02 21:36:10'),
(171, 'Derek', 'Walker', '26741', 'derekbwalker@hotmail.com', '8015849461', 'Yes', NULL, '2021-10-06 01:32:14', '2021-10-06 01:32:14'),
(172, 'Kasey and Kristen', 'Cottam', '130 E 200 N', 'cottamfam97@gmail.com', '4353135472', 'Yes', NULL, '2021-10-12 02:01:37', '2021-10-12 02:01:37'),
(173, 'Kasey and Kristen', 'Cottam', '130 E 200 N', 'cottamfam97@gmail.com', '4353135472', 'Yes', NULL, '2021-10-12 02:01:37', '2021-10-12 02:01:37'),
(174, 'Kevin', 'Kron', '5461 Painted Mirage Rd Las Vegas NV 89149', 'kkron7@gmail.com', '6307258401', 'Yes', NULL, '2021-10-14 16:36:28', '2021-10-14 16:36:28'),
(175, 'ROBERT', 'PERONE', '4272 Swisher Road', 'NICKYPERONE@GMAIL.COM', '4692355774', 'No', NULL, '2021-10-16 23:31:42', '2021-10-16 23:31:42'),
(176, 'Joanne', 'Flynn', '366 Quartz Dr. Dripping Springs, TX 78620', 'joannemarieflynn@gmail.com', '5126337015', 'No', 'Do I have a credit on my account?\nThank you.', '2021-10-18 16:48:38', '2021-10-18 16:48:38'),
(177, 'Samuella', 'Joseph', '4801 S Congress Ave, Apt K2', 's.joseph1361@gmail.com', '954-610-6939', 'Yes', NULL, '2021-10-19 15:40:15', '2021-10-19 15:40:15'),
(178, 'Kristi', 'Martinez', '1436 Broadhead Rd', 'kristi27lynn@gmail.com', '520-755-3698', 'No', NULL, '2021-10-23 12:57:01', '2021-10-23 12:57:01'),
(179, 'Amy', 'Clark', '9051', 'amysellsutah@gmail.com', '8017062921', 'Yes', NULL, '2021-10-26 20:38:43', '2021-10-26 20:38:43'),
(180, 'James', 'Linford', '16082', 'cetsonle@gmail.com', '8018311582', 'Yes', NULL, '2021-10-27 02:15:53', '2021-10-27 02:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `rs_question_relationships`
--

CREATE TABLE `rs_question_relationships` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `coverage_type_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question_value` text NOT NULL,
  `products` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rs_question_relationships`
--

INSERT INTO `rs_question_relationships` (`id`, `location_id`, `coverage_type_id`, `property_type_id`, `question_id`, `question_value`, `products`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Yes', '42,43,44,31', '2021-05-20 06:01:41', '2021-09-27 08:16:45'),
(2, 1, 1, 1, 2, 'No', '42,43,44', '2021-05-20 06:01:41', '2021-09-27 08:16:58'),
(3, 1, 2, 1, 1, 'Yes', '1,2,4', '2021-05-20 08:36:30', '2021-06-04 05:41:19'),
(4, 2, 1, 1, 1, 'Yes', '1,2,3,4,31', '2021-05-20 09:45:13', '2021-09-06 06:43:35'),
(5, 2, 1, 1, 2, 'No', '1,2,3,4', '2021-05-20 09:45:13', '2021-06-04 05:41:19'),
(6, 2, 2, 1, 1, 'Yes', '1', '2021-05-20 09:47:21', '2021-06-04 05:41:19'),
(7, 3, 1, 1, 1, 'Yes', '9,10,11,36', '2021-05-20 09:50:35', '2021-09-06 07:03:20'),
(8, 3, 1, 1, 2, 'No', '9,10,11', '2021-05-20 09:51:00', '2021-06-04 05:41:19'),
(9, 3, 2, 1, 1, 'Yes', '9', '2021-05-20 09:54:12', '2021-06-04 05:41:19'),
(10, 4, 1, 1, 1, 'Yes', '16,17,32,37', '2021-05-20 09:54:12', '2021-09-06 07:07:37'),
(11, 4, 1, 1, 2, 'No', '16,17,32', '2021-05-20 09:56:58', '2021-08-26 14:07:14'),
(12, 4, 2, 1, 1, 'Yes', '16', '2021-05-20 09:56:58', '2021-06-04 05:41:19'),
(13, 5, 1, 1, 1, 'Yes', '19,20,21,38', '2021-05-20 09:59:37', '2021-09-06 07:07:50'),
(14, 5, 1, 1, 2, 'No', '19,20,21', '2021-05-20 09:59:37', '2021-06-04 05:41:19'),
(15, 5, 2, 1, 1, 'Yes', '19', '2021-05-20 10:02:09', '2021-06-04 05:41:19'),
(17, 1, 1, 1, 2, 'Yes', '31', '2021-05-28 10:37:04', '2021-09-06 06:05:43'),
(18, 2, 1, 1, 2, 'Yes', '31', '2021-06-04 06:47:03', '2021-09-06 06:05:46'),
(19, 3, 1, 1, 2, 'Yes', '36', '2021-06-04 06:50:17', '0000-00-00 00:00:00'),
(20, 4, 1, 1, 2, 'Yes', '37', '2021-06-04 06:51:39', '2021-06-04 06:55:01'),
(21, 5, 1, 1, 2, 'Yes', '38', '2021-06-04 06:58:11', '0000-00-00 00:00:00'),
(22, 0, 0, 0, 0, '', '', '2021-09-06 05:33:30', '2021-09-06 07:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `page_slug` varchar(100) NOT NULL,
  `slide_content` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slide_title`, `page_slug`, `slide_content`, `image`) VALUES
(1, 'I CHOSE A HOME WARRANTY', 'home', 'to keep unexpected costs at bay', 'assets/images/home-page-slider-01.png'),
(2, 'I CHOSE A HOME WARRANTY', 'home', 'to give perspective buyers piece of mind', 'assets/images/home-page-slider-02.png'),
(3, 'I CHOSE A HOME WARRANTY', 'home', 'to safeguard an older home', 'assets/images/home-page-slider-03.png'),
(4, 'I CHOSE A HOME WARRANTY', 'home', 'for reputable contractors', 'assets/images/home-page-slider-04.png');

-- --------------------------------------------------------

--
-- Table structure for table `social_items`
--

CREATE TABLE `social_items` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '(icon,text)',
  `name` varchar(50) NOT NULL COMMENT 'for type-text only',
  `icon_path` varchar(255) NOT NULL COMMENT 'for type-icon only',
  `link` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard_features`
--

CREATE TABLE `standard_features` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `feature` text NOT NULL,
  `feature_type` smallint(6) NOT NULL COMMENT '1 Home Owner 2 Real Estate',
  `location_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standard_features`
--

INSERT INTO `standard_features` (`id`, `group_id`, `feature`, `feature_type`, `location_id`) VALUES
(1, 1, 'Re-Key*', 1, 4),
(2, 1, 'Pre Season tune up’s for heating and cooling*', 1, 4),
(3, 1, 'Filter delivery*', 1, 4),
(4, 1, 'Discounted home security', 1, 4),
(5, 1, 'Garage door reprogramming', 1, 4),
(6, 2, 'A/C', 1, 4),
(7, 2, 'Heating', 1, 4),
(8, 2, 'Duct from heating and cooling', 1, 4),
(9, 2, 'Heat pump\r\n\r\n', 1, 4),
(10, 2, 'Thermostat', 1, 4),
(11, 3, 'Inside plumbing systems', 1, 4),
(12, 3, 'Drain line stoppages', 1, 4),
(13, 3, 'Toilet (parts)', 1, 4),
(14, 3, 'Water heater (1) (up to 70 Gal)', 1, 4),
(15, 4, 'Interior electrical systems', 1, 4),
(16, 4, 'Exhaust fans', 1, 4),
(17, 4, 'Circuit breakers', 1, 4),
(18, 4, 'Ceiling fans', 1, 4),
(19, 4, 'Panels and subpanels', 1, 4),
(20, 4, 'Garage door systems', 1, 4),
(21, 5, 'Oven', 1, 4),
(22, 5, 'Range', 1, 4),
(23, 5, 'Cooktop', 1, 4),
(24, 5, 'Dishwasher', 1, 4),
(25, 5, 'Built in microwave', 1, 4),
(26, 5, 'Garbage disposal', 1, 4),
(27, 5, 'Trash compactor', 1, 4),
(28, 5, '1 Refrigerator per unit *(not available to single family properties)', 1, 4),
(29, 1, 'Re-Key*', 1, 1),
(30, 1, 'Pre Season tune up’s for heating and cooling*', 1, 1),
(31, 1, 'Filter delivery*', 1, 1),
(32, 1, 'Discounted home security', 1, 1),
(33, 1, 'Garage door reprogramming', 1, 1),
(34, 2, 'A/C', 1, 1),
(35, 2, 'Heating', 1, 1),
(36, 2, 'Duct from heating and cooling', 1, 1),
(37, 2, 'Heat pump', 1, 1),
(38, 2, 'Thermostat', 1, 1),
(39, 3, 'Inside plumbing systems', 1, 1),
(40, 3, 'Drain line stoppages', 1, 1),
(41, 3, 'Toilet (parts)', 1, 1),
(42, 3, 'Water heater (1) (up to 50 Gal)', 1, 1),
(43, 4, 'Interior electrical systems', 1, 1),
(44, 4, 'Exhaust fans', 1, 1),
(45, 4, 'Circuit breakers', 1, 1),
(46, 4, 'Ceiling fans', 1, 1),
(47, 4, 'Panels and subpanels', 1, 1),
(48, 4, 'Garage door systems', 1, 1),
(49, 5, 'Oven', 1, 1),
(50, 5, 'Range', 1, 1),
(51, 5, 'Cooktop', 1, 1),
(52, 5, 'Dishwasher', 1, 1),
(53, 5, 'Built in microwave', 1, 1),
(54, 5, 'Garbage disposal', 1, 1),
(55, 5, 'Trash compactor', 1, 1),
(56, 5, '1 Refrigerator per unit *(not available to single family properties)', 1, 1),
(57, 1, 'Re-Key*', 1, 2),
(58, 1, 'Pre Season tune up’s for heating and cooling*', 1, 2),
(59, 1, 'Filter delivery*', 1, 2),
(60, 1, 'Discounted home security', 1, 2),
(61, 1, 'Garage door reprogramming', 1, 2),
(62, 2, 'A/C', 1, 2),
(63, 2, 'Heating', 1, 2),
(64, 2, 'Duct from heating and cooling', 1, 2),
(65, 2, 'Heat pump', 1, 2),
(66, 2, 'Thermostat', 1, 2),
(67, 3, 'Inside plumbing systems', 1, 2),
(68, 3, 'Drain line stoppages', 1, 2),
(69, 3, 'Toilet (parts)', 1, 2),
(70, 3, 'Water heater (1) (up to 50 Gal)', 1, 2),
(71, 4, 'Interior electrical systems', 1, 2),
(72, 4, 'Exhaust fans', 1, 2),
(73, 4, 'Circuit breakers', 1, 2),
(74, 4, 'Ceiling fans', 1, 2),
(75, 4, 'Panels and subpanels', 1, 2),
(76, 4, 'Garage door systems', 1, 2),
(77, 5, 'Oven', 1, 2),
(78, 5, 'Range', 1, 2),
(79, 5, 'Cooktop', 1, 2),
(80, 5, 'Dishwasher', 1, 2),
(81, 5, 'Built in microwave', 1, 2),
(82, 5, 'Garbage disposal', 1, 2),
(83, 5, 'Trash compactor', 1, 2),
(84, 5, '1 Refrigerator per unit *(not available to single family properties)', 1, 2),
(85, 2, 'A/C', 1, 3),
(86, 2, 'Heating', 1, 3),
(87, 2, 'Duct from heating and cooling', 1, 3),
(88, 2, 'Heat pump', 1, 3),
(89, 2, 'Thermostat', 1, 3),
(90, 3, 'Inside plumbing systems', 1, 3),
(91, 3, 'Drain line stoppages', 1, 3),
(92, 3, 'Toilet (parts)', 1, 3),
(93, 3, 'Water heater (1) (up to 50 Gal)', 1, 3),
(94, 4, 'Interior electrical systems', 1, 3),
(95, 4, 'Exhaust fans', 1, 3),
(96, 4, 'Circuit breakers', 1, 3),
(97, 4, 'Ceiling fans', 1, 3),
(98, 4, 'Panels and subpanels', 1, 3),
(99, 4, 'Garage door systems', 1, 3),
(100, 5, 'Oven', 1, 3),
(101, 5, 'Range', 1, 3),
(102, 5, 'Cooktop', 1, 3),
(103, 5, 'Dishwasher', 1, 3),
(104, 5, 'Built in microwave', 1, 3),
(105, 5, 'Garbage disposal', 1, 3),
(106, 5, 'Trash compactor', 1, 3),
(107, 5, '1 Refrigerator per unit *(not available to single family properties)', 1, 3),
(108, 1, 'Re-Key*', 1, 3),
(109, 1, 'Pre Season tune up’s for heating and cooling*', 1, 3),
(110, 1, 'Filter delivery*', 1, 3),
(111, 1, 'Discounted home security', 1, 3),
(112, 1, 'Garage door reprogramming', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `standard_features_group`
--

CREATE TABLE `standard_features_group` (
  `id` int(11) NOT NULL,
  `group_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standard_features_group`
--

INSERT INTO `standard_features_group` (`id`, `group_name`) VALUES
(1, 'Member benefits & discounts'),
(2, 'HVAC'),
(3, 'Plumbing'),
(4, 'Electrical'),
(5, 'Appliances (Built In)');

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
-- Indexes for table `about_leaders`
--
ALTER TABLE `about_leaders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_states`
--
ALTER TABLE `all_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliances_types`
--
ALTER TABLE `appliances_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brochures`
--
ALTER TABLE `brochures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractors`
--
ALTER TABLE `contractors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_owner__standard__features`
--
ALTER TABLE `home_owner__standard__features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_applied_coupons`
--
ALTER TABLE `ho_applied_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ho_applied_coupons_order_id_foreign` (`order_id`);

--
-- Indexes for table `ho_card_payment`
--
ALTER TABLE `ho_card_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ho_card_payment_order_id_foreign` (`order_id`);

--
-- Indexes for table `ho_coupons`
--
ALTER TABLE `ho_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_coverage_upgrades`
--
ALTER TABLE `ho_coverage_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_location_features`
--
ALTER TABLE `ho_location_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_orders`
--
ALTER TABLE `ho_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_order_items`
--
ALTER TABLE `ho_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ho_order_items_order_id_foreign` (`order_id`),
  ADD KEY `ho_order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `ho_products`
--
ALTER TABLE `ho_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_product_locations`
--
ALTER TABLE `ho_product_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_property_type`
--
ALTER TABLE `ho_property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h_o_standard_titles`
--
ALTER TABLE `h_o_standard_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make_claims`
--
ALTER TABLE `make_claims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_advantages_benefits`
--
ALTER TABLE `member_advantages_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_advantages_enquiry`
--
ALTER TABLE `member_advantages_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_advantages_reviews`
--
ALTER TABLE `member_advantages_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_coverage`
--
ALTER TABLE `realstate_coverage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_coverage_types`
--
ALTER TABLE `realstate_coverage_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_features`
--
ALTER TABLE `realstate_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_features_title`
--
ALTER TABLE `realstate_features_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_locations`
--
ALTER TABLE `realstate_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_orders`
--
ALTER TABLE `realstate_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_products`
--
ALTER TABLE `realstate_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_product_features`
--
ALTER TABLE `realstate_product_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_product_features_relationship`
--
ALTER TABLE `realstate_product_features_relationship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_propertype_question_relationship`
--
ALTER TABLE `realstate_propertype_question_relationship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_property_type`
--
ALTER TABLE `realstate_property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_property_type_questions`
--
ALTER TABLE `realstate_property_type_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_questions`
--
ALTER TABLE `realstate_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realstate_relationships`
--
ALTER TABLE `realstate_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realstate_realationships_location_id_foreign` (`location_id`),
  ADD KEY `realstate_realationships_coverage_type_id_foreign` (`coverage_type_id`),
  ADD KEY `realstate_realationships_question_type_id_foreign` (`question_type_id`);

--
-- Indexes for table `real_applied_coupons`
--
ALTER TABLE `real_applied_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ho_applied_coupons_order_id_foreign` (`order_id`);

--
-- Indexes for table `real_coupons`
--
ALTER TABLE `real_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `real_order_items`
--
ALTER TABLE `real_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `real_user_types`
--
ALTER TABLE `real_user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renewals`
--
ALTER TABLE `renewals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rs_question_relationships`
--
ALTER TABLE `rs_question_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_items`
--
ALTER TABLE `social_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_features`
--
ALTER TABLE `standard_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_features_group`
--
ALTER TABLE `standard_features_group`
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
-- AUTO_INCREMENT for table `about_leaders`
--
ALTER TABLE `about_leaders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_states`
--
ALTER TABLE `all_states`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `appliances_types`
--
ALTER TABLE `appliances_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brochures`
--
ALTER TABLE `brochures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `contractors`
--
ALTER TABLE `contractors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_owner__standard__features`
--
ALTER TABLE `home_owner__standard__features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `ho_applied_coupons`
--
ALTER TABLE `ho_applied_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `ho_card_payment`
--
ALTER TABLE `ho_card_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `ho_coupons`
--
ALTER TABLE `ho_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ho_coverage_upgrades`
--
ALTER TABLE `ho_coverage_upgrades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;

--
-- AUTO_INCREMENT for table `ho_location_features`
--
ALTER TABLE `ho_location_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `ho_orders`
--
ALTER TABLE `ho_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `ho_order_items`
--
ALTER TABLE `ho_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13422;

--
-- AUTO_INCREMENT for table `ho_products`
--
ALTER TABLE `ho_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `ho_product_locations`
--
ALTER TABLE `ho_product_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ho_property_type`
--
ALTER TABLE `ho_property_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `h_o_standard_titles`
--
ALTER TABLE `h_o_standard_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `make_claims`
--
ALTER TABLE `make_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `member_advantages_benefits`
--
ALTER TABLE `member_advantages_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_advantages_enquiry`
--
ALTER TABLE `member_advantages_enquiry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `member_advantages_reviews`
--
ALTER TABLE `member_advantages_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `realstate_coverage`
--
ALTER TABLE `realstate_coverage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- AUTO_INCREMENT for table `realstate_coverage_types`
--
ALTER TABLE `realstate_coverage_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `realstate_features`
--
ALTER TABLE `realstate_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `realstate_features_title`
--
ALTER TABLE `realstate_features_title`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `realstate_locations`
--
ALTER TABLE `realstate_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `realstate_orders`
--
ALTER TABLE `realstate_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=809;

--
-- AUTO_INCREMENT for table `realstate_products`
--
ALTER TABLE `realstate_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `realstate_product_features`
--
ALTER TABLE `realstate_product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT for table `realstate_product_features_relationship`
--
ALTER TABLE `realstate_product_features_relationship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2080;

--
-- AUTO_INCREMENT for table `realstate_propertype_question_relationship`
--
ALTER TABLE `realstate_propertype_question_relationship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `realstate_property_type`
--
ALTER TABLE `realstate_property_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `realstate_property_type_questions`
--
ALTER TABLE `realstate_property_type_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `realstate_questions`
--
ALTER TABLE `realstate_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `realstate_relationships`
--
ALTER TABLE `realstate_relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `real_applied_coupons`
--
ALTER TABLE `real_applied_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `real_coupons`
--
ALTER TABLE `real_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `real_order_items`
--
ALTER TABLE `real_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1566;

--
-- AUTO_INCREMENT for table `real_user_types`
--
ALTER TABLE `real_user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `renewals`
--
ALTER TABLE `renewals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `rs_question_relationships`
--
ALTER TABLE `rs_question_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_items`
--
ALTER TABLE `social_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_features`
--
ALTER TABLE `standard_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `standard_features_group`
--
ALTER TABLE `standard_features_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ho_applied_coupons`
--
ALTER TABLE `ho_applied_coupons`
  ADD CONSTRAINT `ho_applied_coupons_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `ho_orders` (`id`);

--
-- Constraints for table `ho_card_payment`
--
ALTER TABLE `ho_card_payment`
  ADD CONSTRAINT `ho_card_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `ho_orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
