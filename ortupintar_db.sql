-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2025 at 12:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ortupintar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` enum('cognitive','motor skills','language','social') NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL,
  `duration` int(11) NOT NULL,
  `age_group` varchar(50) DEFAULT NULL,
  `age_group_min` int(11) NOT NULL,
  `age_group_max` int(11) NOT NULL,
  `icon` varchar(10) DEFAULT '?',
  `isMilestone` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `title`, `description`, `category`, `difficulty`, `duration`, `age_group`, `age_group_min`, `age_group_max`, `icon`, `isMilestone`, `created_at`, `updated_at`) VALUES
(1, 'Shape Sorting', 'Learn to identify and sort different shapes', 'cognitive', 'easy', 15, '2-3 years', 2, 3, '🔵', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(2, 'Color Recognition', 'Identify and name primary colors', 'cognitive', 'easy', 10, '2-4 years', 2, 4, '🌈', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(3, 'Counting 1-10', 'Learn to count from 1 to 10', 'cognitive', 'medium', 20, '3-5 years', 3, 5, '🔢', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(4, 'Simple Puzzles', 'Complete 4-6 piece puzzles', 'cognitive', 'medium', 25, '3-4 years', 3, 4, '🧩', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(5, 'Memory Game', 'Match pairs of cards', 'cognitive', 'medium', 15, '4-6 years', 4, 6, '🧠', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(6, 'Ball Throwing', 'Practice throwing and catching a ball', 'motor skills', 'easy', 20, '2-4 years', 2, 4, '⚽', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(7, 'Walking Balance', 'Walk on a straight line', 'motor skills', 'easy', 10, '2-3 years', 2, 3, '👣', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(8, 'Jumping Practice', 'Learn to jump with both feet', 'motor skills', 'medium', 15, '3-5 years', 3, 5, '🦘', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(9, 'Drawing Circles', 'Practice drawing basic shapes', 'motor skills', 'medium', 20, '3-4 years', 3, 4, '✏️', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(10, 'Building Blocks', 'Stack 5-10 blocks', 'motor skills', 'easy', 25, '2-5 years', 2, 5, '🧱', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(11, 'First Words', 'Say first 10 meaningful words', 'language', 'easy', 30, '1-2 years', 1, 2, '💬', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(12, 'Animal Sounds', 'Imitate animal sounds', 'language', 'easy', 15, '2-3 years', 2, 3, '🐄', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(13, 'Story Time', 'Listen to simple stories', 'language', 'easy', 20, '2-4 years', 2, 4, '📚', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(14, 'Singing Songs', 'Sing simple nursery rhymes', 'language', 'medium', 15, '3-5 years', 3, 5, '🎵', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(15, 'Alphabet Recognition', 'Recognize letters A-Z', 'language', 'hard', 30, '4-6 years', 4, 6, '🔤', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(16, 'Sharing Toys', 'Practice sharing with others', 'social', 'medium', 30, '2-4 years', 2, 4, '🤝', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(17, 'Greeting People', 'Say hello and goodbye', 'social', 'easy', 10, '2-3 years', 2, 3, '👋', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(18, 'Playing Together', 'Engage in cooperative play', 'social', 'medium', 45, '3-5 years', 3, 5, '👶', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(19, 'Following Rules', 'Follow simple game rules', 'social', 'medium', 20, '4-6 years', 4, 6, '📋', 0, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(20, 'Emotional Expression', 'Express feelings appropriately', 'social', 'hard', 25, '3-6 years', 3, 6, '😊', 1, '2025-07-12 17:39:24', '2025-07-12 17:39:24'),
(22, 'Quae non nulla optio', 'Qui do dolor aliquam', 'motor skills', 'easy', 45, '4-5 years', 4, 5, '🎵', 0, '2025-07-15 16:22:48', '2025-07-15 16:22:48'),
(23, 'Ea aut dolor atque a', 'Ad cumque totam in h', 'language', 'hard', 5, '3-4 years', 3, 4, '🚂', 0, '2025-07-15 16:26:02', '2025-07-15 16:26:02'),
(24, 'Est adipisci rem mod', 'Numquam dolorem hic ', 'language', 'medium', 1, '0-6 months', 0, 6, '🧸', 1, '2025-07-15 16:32:14', '2025-07-15 16:32:14'),
(27, 'Test Staging', 'test staginggg', 'cognitive', 'medium', 5, '0-6 months', 0, 6, '🎈', 1, '2025-08-08 21:41:19', '2025-08-08 21:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notification_reads`
--

CREATE TABLE `admin_notification_reads` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `marked_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notification_reads`
--

INSERT INTO `admin_notification_reads` (`id`, `admin_id`, `marked_at`) VALUES
(1, 6, '2025-08-09 04:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `photo_url` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`id`, `user_id`, `name`, `birth_date`, `gender`, `photo_url`, `created_at`) VALUES
(4, 5, 'Zaki', '2020-07-08', 'L', '🧒', '2025-07-10 19:06:08'),
(7, 5, 'Akbar', '2023-02-14', 'L', '🧒', '2025-07-13 04:53:55'),
(8, 8, 'Akbar', '2024-03-21', 'L', '🧒', '2025-07-25 19:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `child_activities`
--

CREATE TABLE `child_activities` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `status` enum('pending','in_progress','completed','cancelled') NOT NULL DEFAULT 'pending',
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `progress_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child_activities`
--

INSERT INTO `child_activities` (`id`, `child_id`, `activity_id`, `status`, `started_at`, `completed_at`, `cancelled_at`, `progress_notes`, `created_at`, `updated_at`) VALUES
(30, 7, 17, 'completed', '2025-07-14 16:39:17', '2025-07-14 16:39:35', NULL, NULL, '2025-07-14 16:39:17', '2025-07-14 16:39:35'),
(31, 7, 13, 'completed', '2025-07-14 16:40:03', '2025-07-14 16:40:06', NULL, NULL, '2025-07-14 16:40:03', '2025-07-14 16:40:06'),
(32, 7, 1, 'completed', '2025-07-14 16:47:12', '2025-07-14 16:47:25', NULL, NULL, '2025-07-14 16:47:12', '2025-07-14 16:47:25'),
(33, 4, 20, 'completed', '2025-07-14 16:49:59', '2025-07-14 16:50:01', NULL, NULL, '2025-07-14 16:49:59', '2025-07-14 16:50:01'),
(34, 4, 3, 'completed', '2025-07-14 16:53:50', '2025-07-14 16:54:06', NULL, NULL, '2025-07-14 16:53:50', '2025-07-14 16:54:06'),
(35, 7, 16, 'completed', '2025-07-14 18:36:20', '2025-07-14 18:36:22', NULL, NULL, '2025-07-14 18:36:20', '2025-07-14 18:36:22'),
(36, 7, 10, 'completed', '2025-07-14 18:36:24', '2025-07-14 18:36:25', NULL, NULL, '2025-07-14 18:36:24', '2025-07-14 18:36:25'),
(37, 7, 11, 'completed', '2025-07-14 18:36:43', '2025-07-14 18:36:44', NULL, 'mantap ghin', '2025-07-14 18:36:43', '2025-07-14 21:18:13'),
(38, 7, 12, 'completed', '2025-07-14 18:42:55', '2025-07-14 18:42:56', NULL, 'oke', '2025-07-14 18:42:55', '2025-07-14 21:17:58'),
(39, 7, 7, 'completed', '2025-07-14 19:19:18', '2025-07-14 19:19:21', NULL, NULL, '2025-07-14 19:19:18', '2025-07-14 19:19:21'),
(40, 7, 6, 'completed', '2025-07-15 08:19:26', '2025-07-15 08:19:37', NULL, NULL, '2025-07-15 08:19:26', '2025-07-15 08:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `child_milestones`
--

CREATE TABLE `child_milestones` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `achieved_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child_milestones`
--

INSERT INTO `child_milestones` (`id`, `child_id`, `activity_id`, `achieved_at`, `notes`, `created_at`) VALUES
(13, 7, 1, '2025-07-14 20:58:12', 'test lagiiii', '2025-07-14 16:47:25'),
(14, 4, 20, '2025-07-14 16:50:01', NULL, '2025-07-14 16:50:01'),
(15, 4, 3, '2025-07-14 16:54:06', NULL, '2025-07-14 16:54:06'),
(16, 7, 16, '2025-07-14 20:57:03', 'testttttt', '2025-07-14 18:36:22'),
(17, 7, 11, '2025-07-14 20:41:32', 'y', '2025-07-14 18:36:44'),
(18, 7, 7, '2025-07-14 20:15:16', 'test', '2025-07-14 19:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `child_id` int(11) DEFAULT NULL,
  `type` enum('milestone','reminder','achievement','alert','info','activity_done') NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `action_url` varchar(500) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `child_id`, `type`, `title`, `message`, `action_url`, `is_read`, `created_at`) VALUES
(30, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Greeting People\" has been completed!', NULL, 0, '2025-07-14 16:39:35'),
(31, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Story Time\" has been completed!', NULL, 0, '2025-07-14 16:40:06'),
(32, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Shape Sorting\" has been completed!', NULL, 0, '2025-07-14 16:47:25'),
(33, 5, 7, 'achievement', 'Milestone Achieved!', 'Milestone achieved: \"Shape Sorting\"! Congratulations!', NULL, 0, '2025-07-14 16:47:25'),
(34, 5, 4, 'activity_done', 'Activity Completed', 'Activity \"Emotional Expression\" has been completed!', NULL, 0, '2025-07-14 16:50:01'),
(35, 5, 4, 'achievement', 'Milestone Achieved!', 'Milestone achieved: \"Emotional Expression\"! Congratulations!', NULL, 0, '2025-07-14 16:50:01'),
(36, 5, 4, 'activity_done', 'Activity Completed', 'Activity \"Counting 1-10\" has been completed!', NULL, 0, '2025-07-14 16:54:06'),
(37, 5, 4, 'achievement', 'Milestone Achieved!', 'Milestone achieved: \"Counting 1-10\"! Congratulations!', NULL, 0, '2025-07-14 16:54:06'),
(38, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Sharing Toys\" has been completed!', NULL, 0, '2025-07-14 18:36:22'),
(39, 5, 7, 'achievement', 'Milestone Achieved!', 'Milestone achieved: \"Sharing Toys\"! Congratulations!', NULL, 0, '2025-07-14 18:36:22'),
(40, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Building Blocks\" has been completed!', NULL, 0, '2025-07-14 18:36:25'),
(41, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"First Words\" has been completed!', NULL, 0, '2025-07-14 18:36:44'),
(42, 5, 7, 'achievement', 'Milestone Achieved!', 'Milestone achieved: \"First Words\"! Congratulations!', NULL, 0, '2025-07-14 18:36:44'),
(43, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Animal Sounds\" has been completed!', NULL, 0, '2025-07-14 18:42:56'),
(44, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Walking Balance\" has been completed!', NULL, 0, '2025-07-14 19:19:21'),
(45, 5, 7, 'achievement', 'Milestone Achieved!', 'Milestone achieved: \"Walking Balance\"! Congratulations!', NULL, 0, '2025-07-14 19:19:21'),
(46, 5, 7, 'activity_done', 'Activity Completed', 'Activity \"Ball Throwing\" has been completed!', NULL, 0, '2025-07-15 08:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `child_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `remind_date` date NOT NULL,
  `repeat` enum('none','daily','weekly','monthly') NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('users','admin') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `phone`, `location`) VALUES
(5, 'Ghina', 'empatfetest@gmail.com', '$2b$10$JPcresk8JgSqPTR60lyum.LWL3WlQ9Pepk32p2QU.ZFLiOWD5oswu', 'users', '2025-07-07 12:06:26', '08123456789', 'Indramayu, Indonesia'),
(6, 'Admin OrtuPintar', 'admin@ortupintar.com', '$2b$10$QxrRLjHXBPZb9XOYvt/AVO4E/UJfnf6TaaBoc8x7MMTV9Q8I86DQG', 'admin', '2025-07-13 05:56:59', NULL, NULL),
(8, 'Halee Gibson', 'caxylohizo@mailinator.com', '$2b$10$ER6gcSsc6rhFL06BZxxaeeg3Z64damDvVzzHCR1b3t7kHC9VDLGvO', 'users', '2025-07-25 19:21:31', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notification_reads`
--
ALTER TABLE `admin_notification_reads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_admin` (`admin_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_activities`
--
ALTER TABLE `child_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `idx_child_status` (`child_id`,`status`),
  ADD KEY `idx_child_date` (`child_id`,`created_at`);

--
-- Indexes for table `child_milestones`
--
ALTER TABLE `child_milestones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_child_milestone` (`child_id`,`activity_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `idx_user_unread` (`user_id`,`is_read`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin_notification_reads`
--
ALTER TABLE `admin_notification_reads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `children`
--
ALTER TABLE `children`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `child_activities`
--
ALTER TABLE `child_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `child_milestones`
--
ALTER TABLE `child_milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_activities`
--
ALTER TABLE `child_activities`
  ADD CONSTRAINT `child_activities_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_activities_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `child_milestones`
--
ALTER TABLE `child_milestones`
  ADD CONSTRAINT `child_milestones_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_milestones_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reminders_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
