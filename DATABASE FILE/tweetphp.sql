-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 09:00 PM
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
-- Database: `tweetphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(140) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `post_id`, `time`) VALUES
(47, 'hi hehe', 62, 736, '2023-06-09 14:34:02'),
(48, 'ok lang coach soliddddd', 65, 749, '2023-06-09 16:40:01'),
(49, 'nice', 62, 753, '2023-06-09 19:13:03'),
(50, 'nice', 62, 756, '2023-06-09 19:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `follower_id`, `following_id`, `time`) VALUES
(199, 63, 62, '2023-06-09 14:54:04'),
(201, 61, 62, '2023-06-09 15:03:03'),
(202, 61, 63, '2023-06-09 15:03:20'),
(205, 65, 62, '2023-06-09 15:08:32'),
(206, 64, 62, '2023-06-09 15:08:58'),
(207, 64, 63, '2023-06-09 15:09:03'),
(209, 66, 62, '2023-06-09 15:11:36'),
(214, 67, 62, '2023-06-09 15:17:20'),
(216, 62, 61, '2023-06-09 15:21:17'),
(218, 68, 62, '2023-06-09 15:28:50'),
(220, 69, 62, '2023-06-09 15:31:19'),
(222, 70, 62, '2023-06-09 15:38:15'),
(227, 71, 70, '2023-06-09 16:42:08'),
(228, 71, 65, '2023-06-09 16:42:09'),
(229, 71, 64, '2023-06-09 16:42:09'),
(231, 72, 67, '2023-06-09 16:43:39'),
(232, 72, 68, '2023-06-09 16:43:40'),
(233, 72, 69, '2023-06-09 16:43:40'),
(234, 72, 71, '2023-06-09 16:43:51'),
(236, 73, 72, '2023-06-09 16:46:36'),
(237, 71, 62, '2023-06-09 16:50:20'),
(238, 62, 71, '2023-06-09 19:13:31'),
(239, 62, 73, '2023-06-09 19:13:35'),
(240, 62, 70, '2023-06-09 19:14:18'),
(241, 62, 69, '2023-06-09 19:26:18'),
(242, 62, 65, '2023-06-09 19:26:34'),
(243, 62, 64, '2023-06-09 19:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(317, 62, 736),
(318, 62, 738),
(319, 62, 737),
(320, 63, 738),
(321, 63, 736),
(322, 63, 737),
(323, 61, 738),
(324, 61, 737),
(325, 61, 736),
(326, 61, 739),
(327, 62, 739),
(328, 65, 738),
(329, 65, 737),
(330, 65, 736),
(331, 62, 740),
(332, 62, 741),
(333, 62, 742),
(334, 71, 740),
(335, 71, 744),
(336, 71, 749),
(337, 71, 748),
(338, 71, 747),
(339, 71, 738),
(340, 71, 737),
(341, 71, 736),
(342, 72, 745),
(343, 72, 744),
(344, 72, 743),
(345, 72, 750),
(346, 73, 752),
(347, 73, 751),
(348, 62, 753),
(349, 62, 750),
(350, 62, 752),
(351, 62, 756),
(352, 62, 745);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notify_for` int(11) NOT NULL,
  `notify_from` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` enum('follow','like','retweet','qoute','comment','reply','mention') NOT NULL,
  `time` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notify_for`, `notify_from`, `target`, `type`, `time`, `count`, `status`) VALUES
(240, 62, 63, 0, 'follow', '2023-06-09 14:54:04', 1, 0),
(242, 62, 63, 738, 'like', '2023-06-09 14:59:48', 1, 0),
(243, 62, 63, 736, 'like', '2023-06-09 14:59:50', 1, 0),
(244, 62, 63, 737, 'like', '2023-06-09 14:59:50', 1, 0),
(245, 62, 61, 0, 'follow', '2023-06-09 15:03:03', 1, 0),
(246, 62, 61, 738, 'like', '2023-06-09 15:03:04', 1, 0),
(247, 62, 61, 737, 'like', '2023-06-09 15:03:06', 1, 0),
(248, 62, 61, 736, 'like', '2023-06-09 15:03:13', 1, 0),
(249, 63, 61, 0, 'follow', '2023-06-09 15:03:20', 0, 0),
(250, 63, 61, 739, 'like', '2023-06-09 15:03:20', 0, 0),
(251, 63, 62, 739, 'like', '2023-06-09 15:04:11', 0, 0),
(252, 62, 65, 0, 'follow', '2023-06-09 15:08:32', 1, 0),
(253, 62, 65, 738, 'like', '2023-06-09 15:08:34', 1, 0),
(254, 62, 65, 737, 'like', '2023-06-09 15:08:35', 1, 0),
(255, 62, 65, 736, 'like', '2023-06-09 15:08:36', 1, 0),
(256, 62, 64, 0, 'follow', '2023-06-09 15:08:58', 1, 0),
(257, 63, 64, 0, 'follow', '2023-06-09 15:09:03', 0, 0),
(258, 62, 66, 0, 'follow', '2023-06-09 15:11:36', 1, 0),
(262, 65, 62, 740, 'like', '2023-06-09 15:15:19', 0, 0),
(263, 64, 62, 741, 'like', '2023-06-09 15:15:20', 0, 0),
(264, 66, 62, 742, 'like', '2023-06-09 15:15:20', 0, 0),
(265, 62, 67, 0, 'follow', '2023-06-09 15:17:20', 1, 0),
(267, 61, 62, 0, 'follow', '2023-06-09 15:21:17', 0, 0),
(268, 62, 68, 0, 'follow', '2023-06-09 15:28:50', 1, 0),
(269, 62, 69, 0, 'follow', '2023-06-09 15:31:19', 1, 0),
(270, 69, 70, 746, 'mention', '2023-06-09 15:37:52', 0, 0),
(271, 62, 70, 0, 'follow', '2023-06-09 15:38:15', 1, 0),
(272, 69, 62, 748, 'mention', '2023-06-09 15:52:00', 0, 0),
(273, 65, 62, 749, 'mention', '2023-06-09 15:52:13', 0, 0),
(277, 62, 65, 749, 'comment', '2023-06-09 16:40:01', 1, 0),
(278, 62, 71, 750, 'mention', '2023-06-09 16:42:06', 1, 0),
(279, 65, 71, 750, 'mention', '2023-06-09 16:42:06', 0, 0),
(280, 70, 71, 0, 'follow', '2023-06-09 16:42:08', 0, 0),
(281, 65, 71, 0, 'follow', '2023-06-09 16:42:09', 0, 0),
(282, 64, 71, 0, 'follow', '2023-06-09 16:42:09', 0, 0),
(283, 65, 71, 740, 'like', '2023-06-09 16:42:15', 0, 0),
(284, 68, 71, 744, 'like', '2023-06-09 16:42:18', 0, 0),
(285, 62, 71, 749, 'like', '2023-06-09 16:42:25', 1, 0),
(286, 62, 71, 748, 'like', '2023-06-09 16:42:26', 1, 0),
(287, 62, 71, 747, 'like', '2023-06-09 16:42:27', 1, 0),
(288, 62, 71, 738, 'like', '2023-06-09 16:42:29', 1, 0),
(289, 62, 71, 737, 'like', '2023-06-09 16:42:29', 1, 0),
(290, 62, 71, 736, 'like', '2023-06-09 16:42:30', 1, 0),
(291, 67, 72, 0, 'follow', '2023-06-09 16:43:39', 0, 0),
(292, 68, 72, 0, 'follow', '2023-06-09 16:43:40', 0, 0),
(293, 69, 72, 0, 'follow', '2023-06-09 16:43:40', 0, 0),
(294, 69, 72, 745, 'like', '2023-06-09 16:43:43', 0, 0),
(295, 68, 72, 744, 'like', '2023-06-09 16:43:44', 0, 0),
(296, 67, 72, 743, 'like', '2023-06-09 16:43:44', 0, 0),
(297, 71, 72, 0, 'follow', '2023-06-09 16:43:51', 0, 0),
(298, 71, 72, 750, 'like', '2023-06-09 16:43:54', 0, 0),
(299, 72, 73, 752, 'mention', '2023-06-09 16:46:31', 0, 0),
(300, 72, 73, 0, 'follow', '2023-06-09 16:46:36', 0, 0),
(301, 72, 73, 751, 'like', '2023-06-09 16:46:37', 0, 0),
(302, 62, 71, 0, 'follow', '2023-06-09 16:50:20', 1, 0),
(303, 65, 62, 755, 'mention', '2023-06-09 19:13:25', 0, 0),
(304, 71, 62, 0, 'follow', '2023-06-09 19:13:31', 0, 0),
(305, 71, 62, 750, 'like', '2023-06-09 19:13:32', 0, 0),
(306, 73, 62, 0, 'follow', '2023-06-09 19:13:35', 0, 0),
(307, 73, 62, 752, 'like', '2023-06-09 19:13:36', 0, 0),
(308, 70, 62, 0, 'follow', '2023-06-09 19:14:18', 0, 0),
(309, 69, 62, 758, 'mention', '2023-06-09 19:26:12', 0, 0),
(310, 69, 62, 745, 'like', '2023-06-09 19:26:16', 0, 0),
(311, 69, 62, 0, 'follow', '2023-06-09 19:26:18', 0, 0),
(312, 65, 62, 0, 'follow', '2023-06-09 19:26:34', 0, 0),
(313, 64, 62, 0, 'follow', '2023-06-09 19:27:20', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_on`) VALUES
(736, 62, '2023-06-09 14:33:53'),
(737, 62, '2023-06-09 14:43:31'),
(738, 62, '2023-06-09 14:43:50'),
(739, 63, '2023-06-09 14:54:21'),
(740, 65, '2023-06-09 15:08:25'),
(741, 64, '2023-06-09 15:08:53'),
(742, 66, '2023-06-09 15:11:41'),
(743, 67, '2023-06-09 15:17:18'),
(744, 68, '2023-06-09 15:28:41'),
(745, 69, '2023-06-09 15:31:17'),
(746, 70, '2023-06-09 15:37:52'),
(747, 62, '2023-06-09 15:51:43'),
(748, 62, '2023-06-09 15:52:00'),
(749, 62, '2023-06-09 15:52:13'),
(750, 71, '2023-06-09 16:42:06'),
(751, 72, '2023-06-09 16:45:02'),
(752, 73, '2023-06-09 16:46:31'),
(753, 62, '2023-06-09 19:12:51'),
(754, 62, '2023-06-09 19:12:57'),
(755, 62, '2023-06-09 19:13:25'),
(756, 62, '2023-06-09 19:25:31'),
(757, 62, '2023-06-09 19:25:36'),
(758, 62, '2023-06-09 19:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` varchar(140) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retweets`
--

CREATE TABLE `retweets` (
  `post_id` int(11) NOT NULL,
  `retweet_msg` varchar(140) DEFAULT NULL,
  `tweet_id` int(11) DEFAULT NULL,
  `retweet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `retweets`
--

INSERT INTO `retweets` (`post_id`, `retweet_msg`, `tweet_id`, `retweet_id`) VALUES
(754, NULL, 753, NULL),
(757, NULL, 756, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(140) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`id`, `hashtag`, `created_on`) VALUES
(1, 'php', '2021-01-06 05:57:43'),
(4, 'hi', '2021-01-25 21:42:35'),
(5, 'alex', '2021-01-25 21:42:36'),
(6, '7oda', '2021-03-20 23:40:12'),
(9, 'js', '2021-04-02 03:24:28'),
(12, 'bro', '2021-04-02 03:31:38'),
(13, 'mysql', '2022-01-13 16:10:54'),
(14, 'explore', '2022-01-13 16:10:54'),
(15, 'fun', '2022-01-13 16:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `post_id` int(11) NOT NULL,
  `status` varchar(140) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`post_id`, `status`, `img`) VALUES
(736, 'Wassup baby!', NULL),
(737, 'Hello guys', NULL),
(738, 'I really like this picture', 'tweet-64831e86d3b1c.jpg'),
(739, 'This is a really cool app!', NULL),
(740, 'hello everyone', NULL),
(741, 'hi guys!!!!', NULL),
(742, 'Hello everyone', NULL),
(743, 'hi hii hi hi hi hi!@', NULL),
(744, 'Its a me MARIO!!!! Lets a go!', NULL),
(745, 'Osmanthus wine tase the same as I remember, but where are those who share the memories?', NULL),
(746, 'Where is Sara?..Im am hungry @Morax1920', NULL),
(747, 'Hello po guys!', NULL),
(748, 'Hey @Morax1920 how are you', NULL),
(749, 'Boy @juls123 musta na par', NULL),
(750, '@Migzz @juls123 Lets play ML lets gooo!!', NULL),
(751, 'Hello world!', NULL),
(752, 'Yo @Jayemmmmmm09 wasgud homie???', NULL),
(753, 'Hi, this is a test!', NULL),
(755, '@juls123 I like this picture of you!', 'tweet-64835db578f0d.jpg'),
(756, 'Hello!', NULL),
(758, 'This is my favorite character @Morax1920', 'tweet-648360b4172ac.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(40) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `imgCover` varchar(255) NOT NULL DEFAULT 'cover.png',
  `bio` varchar(140) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `img`, `imgCover`, `bio`, `location`, `website`) VALUES
(61, 'wowow', 'wow@gmail.com', 'd722dbcb93d6ca952b49928b37cac8e1', 'wow', 'default.jpg', 'cover.png', '', '', ''),
(62, 'Migzz', 'miguelD@gmail.com', '84b75dc6e6455b24c16ecba1bcdd8c8f', 'Miguel Dapula', 'user-6483611485bd9.jpg', 'user-64831dea3dbb0.jpg', 'Hi', '', ''),
(63, 'try1', 'try@gmail.com', '063651a8be3d6a010d106194e0264173', 'try', 'default.jpg', 'cover.png', '', '', ''),
(64, 'JuliaR98', 'julia@gmail.com', '04305e8ef1c15dbf249cc0c99ce86107', 'Julie Roberts', 'default.jpg', 'cover.png', '', '', ''),
(65, 'juls123', 'juls@gmail.com', 'f007cd375b13bfa1c03652eabcf1f7cf', 'juls', 'user-648339d5c0cb8.jpg', 'cover.png', 'Solid High Protein', '', ''),
(66, 'JM10', 'jm@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Ja morant', 'default.jpg', 'cover.png', '', '', ''),
(67, 'emmyJ', 'emmy@gmail.com', 'b2b6fdddbb8e71916df9d69459987b0b', 'emilio', 'default.jpg', 'cover.png', '', '', ''),
(68, 'SMBROOO', 'mario@gmail.com', 'aeb34368c5d53aee32431b5386f71c56', 'Mario', 'user-648328f69a153.jpg', 'cover.png', 'Its a me!!', '', ''),
(69, 'Morax1920', 'geoarchon@gmail.com', '5768818bdf7f559a2b7496d8b1b2913b', 'zhongli', 'user-648329887bc91.jpg', 'cover.png', 'Hello everyone@', '', ''),
(70, 'RaidenSHOGUN', 'raiden@gmail.com', 'ce7d8adf8f3607586841ef1add95b8c5', 'Raiden', 'user-64832afdcea47.jpg', 'cover.png', 'Inazuma shines eternal!!!', '', ''),
(71, 'Georji', 'jojen@gmail.com', '7a7deba59b0d9c26c452402998f7f584', 'Georjen', 'user-64833c21be6f4.jpg', 'cover.png', 'LOLOLOL', '', ''),
(72, 'Jayemmmmmm09', 'lucas@gmail.com', 'b0e73027efdb91332b70de3c433ac94a', 'Jm Lucas', 'user-64833a94b17f6.jpg', 'cover.png', 'Yaro janai ka?', '', ''),
(73, 'Bonchan09', 'bon@gmail.com', '5f9ac24c1a47333317bec6053248d0fa', 'Vaughn', 'user-64833b2dd7135.jpg', 'cover.png', 'Give me your money!', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `following_id` (`following_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `likes_ibfk_2` (`post_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_ibfk_1` (`notify_for`),
  ADD KEY `notifications_ibfk_2` (`notify_from`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `retweets`
--
ALTER TABLE `retweets`
  ADD PRIMARY KEY (`post_id`) USING BTREE,
  ADD KEY `retweet_id` (`retweet_id`),
  ADD KEY `retweets_ibfk_2` (`tweet_id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashtag` (`hashtag`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notify_for`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`notify_from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retweets`
--
ALTER TABLE `retweets`
  ADD CONSTRAINT `retweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_2` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_3` FOREIGN KEY (`retweet_id`) REFERENCES `retweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
