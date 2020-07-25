
-- --------------------------------------------------------

--
-- Table structure for table `Occupations`
--

CREATE TABLE `Occupations` (
  `occupation_id` bigint NOT NULL,
  `description` varchar(200) NOT NULL,
  `ISCO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Occupations`
--

-- INSERT INTO `Occupations` (`occupation_id`, `description`, `ISCO`) VALUES
-- (1, 'carpenter', 7),
-- (2, 'nurse', 2),
-- (3, 'cashier', 5),
-- (4, 'doctor', 2),
-- (5, 'trashtruck_driver', 8),
-- (6, 'plumber', 7);
