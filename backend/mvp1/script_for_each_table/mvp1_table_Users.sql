
-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `user_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password_hash` varchar(100) NOT NULL,
  `location_id` bigint NOT NULL,
  `occupation_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

-- INSERT INTO `Users` (`user_id`, `user_name`, `password_hash`, `location_id`, `occupation_id`) VALUES
-- (1, 'user1', '', 1, 1),
-- (2, 'user2', '', 2, 2),
-- (3, 'user3', '', 1, 3),
-- (4, 'user4', '', 2, 4),
-- (5, 'user5', '', 2, 5),
-- (6, 'user6', '', 3, 6);
