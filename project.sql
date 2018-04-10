-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 11:44 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `ass_id` int(11) NOT NULL,
  `ass_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL COMMENT 'date assignment was due',
  `preferred_outcome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_e_d` date NOT NULL COMMENT 'preferred extension date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`ass_id`, `ass_name`, `due_date`, `preferred_outcome`, `p_e_d`) VALUES
(2, 'Maths test', '2018-03-15', 'Another assessment oppurtunity', '2018-03-15'),
(3, 'programming', '2018-03-16', 'Extension of Deadline', '2018-03-18'),
(4, 'computer technologies', '2018-03-22', 'Deferred placement', '2018-03-24'),
(5, 'Programming III', '2018-03-20', 'Extension of Deadline', '2018-03-29'),
(9, 'programming III', '2018-04-11', 'Extension of Deadline', '2018-04-21'),
(12, 'Maths', '2018-04-11', 'Extension of Deadline', '2018-04-14'),
(13, 'Software Development', '2018-04-19', 'Extension of Deadline', '2018-04-20'),
(14, 'Software systems', '2018-04-11', 'Deferred placement', '2018-04-19'),
(15, 'Computing ', '2018-04-12', 'Extension of Deadline', '2018-04-21'),
(16, 'Software systems', '2018-04-12', 'Extension of Deadline', '2018-04-20'),
(17, 'Healthcare', '2018-04-12', 'Extension of Deadline', '2018-04-21'),
(18, 'Maths', '2018-04-18', 'Extension of Deadline', '2018-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `pm_user`
--

CREATE TABLE `pm_user` (
  `pm_id` int(5) NOT NULL,
  `pm_username` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pm_password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reason_for_request`
--

CREATE TABLE `reason_for_request` (
  `rfr_id` int(5) NOT NULL COMMENT 'reason for request',
  `d_o_c` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'details of claim',
  `d_a_f` date NOT NULL COMMENT 'dates affected from',
  `d_a_t` date NOT NULL COMMENT 'dates affected to',
  `evidence` mediumblob NOT NULL COMMENT 'evidence',
  `Statement` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reason_for_request`
--

INSERT INTO `reason_for_request` (`rfr_id`, `d_o_c`, `d_a_f`, `d_a_t`, `evidence`, `Statement`) VALUES
(4, 'I hurt my self', '2018-03-08', '2018-03-14', 0x433a5c66616b65706174685c5363616e6e656465762e706466, 'It was sore'),
(5, 'I was sick', '2018-04-13', '2018-04-28', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'I would appreciate the extension'),
(6, 'I was sick', '2018-04-13', '2018-04-28', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'I would appreciate the extension'),
(7, 'I was sick', '2018-04-13', '2018-04-28', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'I would appreciate the extension'),
(9, 'I was unwell and unable to attend', '2018-04-27', '2018-05-10', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'I hope to be back next week'),
(10, 'I broke my wrist', '2018-04-20', '2018-04-19', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'I broke my wrist'),
(11, 'Car broke down', '2018-04-20', '2018-04-20', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'The engine blew'),
(12, 'Slept in', '2018-04-12', '2018-04-19', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'I slept in'),
(13, 'There was a car crash', '2018-04-14', '2018-04-26', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'It disrupted the road to University'),
(14, 'Broken wrist', '2018-04-20', '2018-04-27', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'iuhvifnv'),
(15, 'Funeral', '2018-04-12', '2018-04-19', 0x433a5c66616b65706174685c546f616c73426f6f6b6d616b6572732e706466, 'I could not attend');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(5) NOT NULL COMMENT 'request reference',
  `create_date` date NOT NULL COMMENT 'creation date of request',
  `sub_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'submission date',
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `ass_id` int(5) NOT NULL,
  `rfr_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) UNSIGNED NOT NULL COMMENT 'User Id',
  `Username` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User username',
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User password',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User email',
  `reg_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Time and date of registration',
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Users Table';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Username`, `password`, `email`, `reg_time`, `first_name`, `surname`) VALUES
(14, 'B00659788', '$2y$10$M5aYKiqlNJNmhNlU7DbXxOfxELyAZkWQZ9qataw4lScSr62XdKssS', 'ONeill-C98@ulster.ac.uk', '2018-03-28 20:31:24', 'Christopher', 'O\'Neill'),
(15, 'B00655487', '$2y$10$6Ceo9uZ8bJkvx798TuebVeaSfxHgOGdgbFMtaGOGmq/xk8N8Hxk7G', 'levinaoneill@hotmail.co.uk', '2018-03-28 21:30:05', 'Levina', 'O\'Neill'),
(18, 'B00659799', '$2y$10$m9WuL6e14eZlksKzIzx0k.MLnDjxMFdag2c0xZjsrSrSflh.4EQ4q', 'ONeill-D@ulster.ac.uk', '2018-03-28 22:29:01', 'Declan', 'ONeill'),
(19, 'B00659700', '$2y$10$KYfqpHk0iRiE9VeaP4K.0uLJ6zIToMhgI2RwlNPwfKKd4BTjlYGqy', 'Millar-J20@ulster.ac.uk', '2018-03-30 11:46:42', 'John', 'Millar'),
(20, 'B00659711', '$2y$10$bVlt/MpEaET0fPLc8DfRBOsvkiWEpR3g4koJyQ360W6nZ8RWEBb3W', 'paddysally@ulster.ac.uk', '2018-03-30 11:48:16', 'Paddy ', 'Sally'),
(21, 'B00659713', '$2y$10$313zJsNewvS7jtryDttcr.f7SBvBu.6iBtLDfQE9zR9utcwRThZwq', 'markdonelly@gmail.com', '2018-04-01 15:48:44', 'Mark', 'Donnelly'),
(22, 'B00659755', '$2y$10$VTmcOfvuwkQFh8aKOWwjwuvl4SGSy53VM1YCqbH6IIknVipxSd9iy', 'ryancoleman@gmail.com', '2018-04-01 16:00:19', 'Ryan', 'Coleman'),
(23, 'B00659722', '$2y$10$RQB.Q82KgteGtLfsQ4L7COWV1lDBZlZbkG1g3Rl2P0rNPLFKagEZa', 'ONeillC12@ulster.ac.uk', '2018-04-01 16:03:49', 'Claire', 'ONeill'),
(24, 'B00659456', '$2y$10$rQ1RvFmdye6.gQhi7MWShedvnvZpy7G255iWnc0FAU44AN.Z0FSpi', 'rorymagee@ulster.ac.uk', '2018-04-01 16:11:09', 'Rory', 'Magee'),
(25, 'B00659455', '$2y$10$/0Iax7yVNGhU0J2gs6KAkueogSYqIpsNX89xJL1AxrsU8jCtdiAS6', 'conormax@ulster.ac.uk', '2018-04-01 16:16:45', 'Conor', 'Maxwell');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`ass_id`);

--
-- Indexes for table `pm_user`
--
ALTER TABLE `pm_user`
  ADD PRIMARY KEY (`pm_id`),
  ADD UNIQUE KEY `pm_username` (`pm_username`);

--
-- Indexes for table `reason_for_request`
--
ALTER TABLE `reason_for_request`
  ADD PRIMARY KEY (`rfr_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ass_id` (`ass_id`),
  ADD KEY `rfr_id` (`rfr_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `ass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pm_user`
--
ALTER TABLE `pm_user`
  MODIFY `pm_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reason_for_request`
--
ALTER TABLE `reason_for_request`
  MODIFY `rfr_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'reason for request', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'request reference';

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User Id', AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`ass_id`) REFERENCES `assessment` (`ass_id`),
  ADD CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`rfr_id`) REFERENCES `reason_for_request` (`rfr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
