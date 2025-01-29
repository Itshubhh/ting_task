-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2025 at 07:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ting_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `financial_articles`
--

CREATE TABLE `financial_articles` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `publish_date` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(20) NOT NULL,
  `read_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_articles`
--

INSERT INTO `financial_articles` (`id`, `category`, `publish_date`, `title`, `description`, `image_path`, `read_time`) VALUES
(1, 'Asset Management', '', 'Growing interconnectedness of India\'s public and private financial ecosystems', 'The market whispers its own narrative while economists shout their forecasts.\" – Anonymous', '1-.jpg', '3 minutes'),
(2, 'Corporate', '', 'Structural Changes Needed in Mutual Funds and Credit Markets', 'An opinion piece by Ranu Vohra on how credit problem in India has less to do with the current pandemic.', 'corp.jpg', '4 minutes'),
(3, 'Credit Solutions', '', 'Crystal gazing: how private credit can deliver on the investment promise', 'Private credit is a rapidly growing asset class in India that is poised to bring transformative change to the credit market.', 'credit.jpg', '2 minutes'),
(4, 'Investment Banking', '', 'Higher capital inflows for Indian tech in 2025', '2024 saw renewed confidence in India\'s tech ecosystem as many investors took a leap of faith. This momentum is expected to continue in the coming year', 'investment-.jpg', '5 minutes'),
(5, 'Wealth Management', '', 'Gold at a Historic High: Exploring the Surge to USD 2,500', 'Gold price in the international market recently hit an all-time high of USD 2,500 per ounce on August 16, 2024.', 'welth-.jpg', '4 minutes'),
(6, 'Wealth Management', '', 'The Balancing Game: Decoding the Case for Active vs. Passive Investing', 'Investing in active vs. passive funds has always been a topic of debate. However, after analyzing historical data, several key insights emerge', '', '2 minutes'),
(7, 'Asset Management', '', 'Fast Moving Consumer Goods: Time for a strategic pivot', 'The strategic measures initiated by the government to boost agricultural incomes coupled with forecasts of a normal monsoon offer potential for a rural growth revival and turnaround in India’s fast-moving consumer goods (FMCG) sector.', '', '3 minutes'),
(8, 'Asset Management', '', 'Balancing Act: Budget addressing tax disparities between asset classes', 'Fiscal allocations and income tax changes are always considered as the cornerstones of any budget, but as a fund, we were intrigued.', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financial_articles`
--
ALTER TABLE `financial_articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financial_articles`
--
ALTER TABLE `financial_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
