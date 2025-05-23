-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 23, 2025 at 08:04 AM
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
-- Database: `instagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `commentator_id` bigint(20) DEFAULT NULL,
  `commentator` varchar(30) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `parent_comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `commentator_id`, `commentator`, `comment`, `parent_comment_id`) VALUES
(1, 10100001, 102, 'l_xyz_l', 'congrats', NULL),
(2, 10200001, 101, 'l_dev_l', 'Nice Place', NULL),
(3, 10100001, 101, 'l_dev_l', 'Thanks', 1),
(4, 10200001, 102, 'l_xyz_l', 'Yup', 2),
(5, 10100001, 103, 'its_me_rahul', 'congrats', NULL),
(6, 10100001, 104, 'amit_007', 'congrats', NULL),
(7, 10100001, 105, 'bond007', 'congratulation', NULL),
(8, 10100001, 106, 'john_wick', 'congratulation brother', NULL),
(9, 10100001, 101, 'l_dev_l', 'Thanks', 5),
(10, 10100001, 101, 'l_dev_l', 'thanks', 6),
(11, 10100001, 101, 'l_dev_l', 'thanks', 7),
(12, 10100001, 101, 'l_dev_l', 'Thanks brother', 8),
(13, 10600002, 101, 'l_dev_l', 'Superb Car', NULL),
(14, 10600002, 105, 'bond007', 'Nice Car', NULL),
(15, 10600002, 104, 'amit_007', 'which model is this?', NULL),
(16, 10600002, 101, 'l_dev_l', 'it\'s 1969 Ford Mustang Boss 429', 15),
(17, 10600002, 104, 'amit_007', 'Thanks for information', 16),
(18, 10600002, 101, 'l_dev_l', 'You\'r welcome', 17),
(19, 10600002, 105, 'bond007', 'I want this car', 16),
(20, 10600002, 101, 'l_dev_l', 'Don\'t try to steal it from him', 19),
(21, 10600001, 102, 'l_xyz_l', 'Who are you', NULL),
(22, 10600001, 103, 'its_me_rahul', 'Hi is boogeyman', 21),
(23, 10600001, 102, 'l_xyz_l', 'boogeyman?', 22),
(24, 10600001, 101, 'l_dev_l', 'Iykyk', 23),
(25, 10600001, 105, 'bond007', 'Most dangerous and most wanted man of the under world', 23),
(26, 10600001, 102, 'l_xyz_l', 'What he want', 25),
(27, 10600001, 106, 'john_wick', 'I only want peace full life', 26);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `post_id`, `user_id`, `username`) VALUES
(1, 10100001, 102, 'l_xyx_l'),
(2, 10100001, 101, 'l_dev_l'),
(3, 10200001, 101, 'l_dev_l'),
(4, 10200001, 102, 'l_xyx_l'),
(5, 10100001, 103, 'its_me_rahul'),
(6, 10100001, 105, 'bond007'),
(7, 10100001, 106, 'john_wick'),
(8, 10100001, 104, 'amit_007'),
(9, 10100002, 103, 'its_me_rahul'),
(10, 10100002, 105, 'bond007'),
(11, 10100002, 106, 'john_wick'),
(12, 10100003, 101, 'l_dev_l'),
(13, 10100003, 103, 'its_me_rahul'),
(14, 10100002, 103, 'its_me_rahul'),
(15, 10500001, 101, 'l_dev_l'),
(16, 10500001, 102, 'l_xyz_l'),
(17, 10500001, 103, 'its_me_rahul'),
(18, 10500001, 104, 'amit_007'),
(19, 10500001, 105, 'bond007'),
(20, 10500001, 106, 'john_wick'),
(21, 10500002, 101, 'l_dev_l'),
(22, 10500002, 103, 'its_me_rahul'),
(23, 10500002, 102, 'l_xyz_l'),
(24, 10500002, 106, 'john_wick'),
(25, 10500002, 104, 'amit_007'),
(26, 10500002, 105, 'bond007'),
(27, 10600001, 103, 'its_me_rahul'),
(28, 10600001, 101, 'l_dev_l'),
(29, 10600001, 102, 'l_xyz_l'),
(30, 10600001, 105, 'bond007'),
(31, 10600001, 104, 'amit_007'),
(32, 10600001, 106, 'john_wick'),
(33, 10600002, 101, 'l_dev_l'),
(34, 10600002, 102, 'l_xyz_l'),
(35, 10600002, 105, 'bond007'),
(36, 10600003, 101, 'l_dev_l'),
(37, 10600003, 105, 'bond007'),
(38, 10600003, 106, 'john_wick'),
(39, 10600003, 102, 'l_xyz_l'),
(40, 10600004, 101, 'l_dev_l'),
(41, 10600004, 106, 'john_wick'),
(42, 10600004, 103, 'its_me_rahul'),
(43, 10600004, 106, 'l_xyz_l');

-- --------------------------------------------------------

--
-- Stand-in structure for view `need`
-- (See below for the actual view)
--
CREATE TABLE `need` (
`username` varchar(30)
,`post_id` int(11)
,`total_likes` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `upload_date`, `likes`, `comments`) VALUES
(10100001, 101, '2021-03-27', 1000, 2),
(10100002, 101, '2021-01-27', 2030, 10),
(10100003, 101, '2022-01-27', 2980, 7),
(10200001, 102, '2022-08-17', 1017, 2),
(10200002, 102, '2021-04-01', 290, 5),
(10300001, 103, '2018-08-15', 6, 3),
(10400001, 104, '2018-04-25', 6, 4),
(10500001, 105, '2017-07-07', 1007007, 7),
(10500002, 105, '2018-04-25', 7007007, 8),
(10600001, 106, '2021-05-11', 3000, 12),
(10600002, 106, '2021-06-09', 3422, 15),
(10600003, 106, '2023-10-19', 2999, 18),
(10600004, 106, '2023-05-24', 3543, 20);

-- --------------------------------------------------------

--
-- Stand-in structure for view `temp`
-- (See below for the actual view)
--
CREATE TABLE `temp` (
`post_id` int(11)
,`total_likes` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `temp2`
-- (See below for the actual view)
--
CREATE TABLE `temp2` (
`username` varchar(30)
,`post_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `user_id` bigint(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `number` bigint(20) DEFAULT NULL,
  `login_password` varchar(30) NOT NULL,
  `status` enum('Active','Unactive','Blocked') DEFAULT 'Active',
  `created` date NOT NULL,
  `updated` date DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `first_name`, `last_name`, `email`, `username`, `number`, `login_password`, `status`, `created`, `updated`, `bio`) VALUES
(101, 'Dev', 'Vaghasiya', 'dev@gmail.com', 'l_dev_l', 1234567890, '********', 'Active', '2018-12-12', '2020-12-12', 'student'),
(102, 'First', 'Last', 'xyz@gamil.com', 'l_xyz_l', 2147483647, '******', 'Unactive', '2021-09-30', '2022-10-05', 'intern'),
(103, 'rahul', 'patel', 'rahul@123.gmail.com', 'its_me_rahul', 9445844325, 'rahul@123', 'Active', '2019-09-18', '2021-12-14', 'Hi i am rahul'),
(104, 'amit', 'mishra', 'amit007@gmail.com', 'amit_007', 9999343457, 'amit007', 'Active', '2019-05-16', NULL, 'i am amit, amit mishra'),
(105, 'bond', 'james', 'jamesbond007@gmail.com', 'bond007', 9876007007, '#bond@007', 'Active', '2017-07-07', '2020-07-07', 'i am bond james bond'),
(106, 'jhon', 'wick', 'johnwick3@gamil.com', 'john_wick', 9874563893, 'mustangBoss429', 'Active', '2014-11-14', '2023-03-24', 'don\'t Hurt my dog');

-- --------------------------------------------------------

--
-- Structure for view `need`
--
DROP TABLE IF EXISTS `need`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `need`  AS SELECT `temp2`.`username` AS `username`, `temp`.`post_id` AS `post_id`, `temp`.`total_likes` AS `total_likes` FROM (`temp` join `temp2` on(`temp`.`post_id` = `temp2`.`post_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `temp`
--
DROP TABLE IF EXISTS `temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp`  AS SELECT `likes`.`post_id` AS `post_id`, count(`likes`.`user_id`) AS `total_likes` FROM `likes` GROUP BY `likes`.`post_id` ;

-- --------------------------------------------------------

--
-- Structure for view `temp2`
--
DROP TABLE IF EXISTS `temp2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp2`  AS SELECT `likes`.`username` AS `username`, `post`.`post_id` AS `post_id` FROM (`post` join `likes` on(`post`.`user_id` = `likes`.`user_id`)) GROUP BY `post`.`post_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `commentator_id` (`commentator_id`),
  ADD KEY `commentator` (`commentator`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10600005;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`commentator_id`) REFERENCES `userinfo` (`user_id`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`commentator`) REFERENCES `userinfo` (`username`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
