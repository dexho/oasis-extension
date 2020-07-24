
-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `location_id` bigint NOT NULL,
  `country` varchar(50) NOT NULL,
  `subregion1` varchar(100) NOT NULL,
  `subregion2` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `zip_code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Location`
--

-- INSERT INTO `Location` (`location_id`, `country`, `subregion1`, `subregion2`, `city`, `zip_code`) VALUES
-- (1, 'USA', 'MA', 'Middlesex', 'Cambridge', 2114),
-- (2, 'USA', 'NY', 'Bronx', 'New York', 10451),
-- (3, 'USA', 'MA', 'Sulfok', 'Winthrop', 2152),
-- (4, 'USA', 'CA', 'Los Angeles', 'Los Angeles', 90011);
