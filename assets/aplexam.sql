-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 06:48 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `explanation` text,
  `is_right` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `description`, `explanation`, `is_right`, `position`, `enabled`) VALUES
(1, 1, 'answerhehe', 'dua', 0, 2, 1),
(2, 1, 'answer2', 'dua', 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `enabled`) VALUES
(1, 'groupput', 1),
(2, 'groupdua', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `enabled`) VALUES
(1, 'modul', 1),
(2, 'gatau', 1),
(3, 'delete', 0),
(4, 'put', 1),
(5, 'modules', 1),
(6, 'heye', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `explanation` text,
  `type` smallint(6) NOT NULL DEFAULT '1',
  `difficulty` smallint(6) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `timer` int(11) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `description`, `explanation`, `type`, `difficulty`, `position`, `timer`, `enabled`) VALUES
(1, 3, 'pertanyaandrdb', 'noexmplnaasdf', 1, 1, NULL, NULL, 1),
(2, 2, 'question1', NULL, 3, 1, 4, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `module_id`, `name`, `description`, `enabled`) VALUES
(1, 1, 'subje', 'from db', 1),
(2, 2, 'dua', 'nomor dua', 1),
(3, 2, 'post', 'from Postman', 1),
(4, 1, 'ngehe', NULL, 1),
(5, 2, 'gataumboih', 'gatauapaseh ini\n', 1),
(6, 5, 'asdf', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration_time` smallint(6) NOT NULL,
  `result_to_user` tinyint(1) DEFAULT NULL,
  `report_to_user` tinyint(1) DEFAULT NULL,
  `score_right` decimal(10,3) NOT NULL,
  `score_wrong` decimal(10,3) DEFAULT NULL,
  `score_unanswered` decimal(10,3) DEFAULT NULL,
  `score_max` decimal(10,3) NOT NULL,
  `score_threshold` decimal(10,3) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `description`, `begin_time`, `end_time`, `duration_time`, `result_to_user`, `report_to_user`, `score_right`, `score_wrong`, `score_unanswered`, `score_max`, `score_threshold`, `password`, `enabled`) VALUES
(3, 'testpostman', 'answerhehe', NULL, NULL, 60, NULL, NULL, '1.000', NULL, NULL, '100.000', NULL, '$2y$10$EDx5n7FxgpIaBLgGEZvwcO4.s24PHe5X4DCvd9Zx0QXB/QEvEKmuK', 1),
(4, 'test4', 'yeye', NULL, NULL, 60, NULL, NULL, '1.000', NULL, NULL, '100.000', NULL, '$2y$10$F6vTjv15dVPYblIvOXmpDu0/MxOzv5Ex3kdr0GNExRQZ9M6ZYp0tS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tests_groups`
--

CREATE TABLE `tests_groups` (
  `test_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests_groups`
--

INSERT INTO `tests_groups` (`test_id`, `group_id`) VALUES
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tests_subjects`
--

CREATE TABLE `tests_subjects` (
  `test_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests_subjects`
--

INSERT INTO `tests_subjects` (`test_id`, `subject_id`) VALUES
(4, 1),
(4, 2),
(4, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `registration_date` date NOT NULL,
  `registration_number` int(11) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `otpKey` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `registration_date`, `registration_number`, `level`, `otpKey`, `enabled`) VALUES
(2, 'ayam', 'ayam', '', '0000-00-00', 0, 0, NULL, 0),
(3, 'inibaru', 'inibaru', '', '0000-00-00', 0, 0, NULL, 0),
(7, 'nat', '$2y$10$nfawIVxH9rfeAx8DYy1wve.g0SinThu62c0Y9tJfWf8XRoWMUdGDi', 'nat@nut.com', '2019-05-18', NULL, 0, NULL, 1),
(12, 'postname', '$2y$10$HOVHmGsKlW9oAaOO1ep/YOm7r5.Y6DW/cjHhMMfWQsbNKy2IzUu6q', NULL, '2019-05-20', NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(12, 1),
(12, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_questions_id_fk` (`question_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests_groups`
--
ALTER TABLE `tests_groups`
  ADD KEY `tests_groups_tests_id_fk` (`test_id`),
  ADD KEY `tests_groups_groups_id_fk` (`group_id`);

--
-- Indexes for table `tests_subjects`
--
ALTER TABLE `tests_subjects`
  ADD KEY `tests_subjects_tests_id_fk` (`test_id`),
  ADD KEY `tests_subjects_subjects_id_fk` (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_questions_id_fk` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `tests_groups`
--
ALTER TABLE `tests_groups`
  ADD CONSTRAINT `tests_groups_groups_id_fk` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `tests_groups_tests_id_fk` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`);

--
-- Constraints for table `tests_subjects`
--
ALTER TABLE `tests_subjects`
  ADD CONSTRAINT `tests_subjects_subjects_id_fk` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `tests_subjects_tests_id_fk` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
