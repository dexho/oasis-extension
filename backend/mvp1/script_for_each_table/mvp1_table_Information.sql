
-- --------------------------------------------------------

--
-- Table structure for table `Information`
--

CREATE TABLE `Information` (
  `info_id` int NOT NULL,
  `official_site` varchar(500) NOT NULL,
  `url` varchar(4000) NOT NULL,
  `location_id` bigint NOT NULL,
  `title` varchar(2000) NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `published` date NOT NULL,
  `updated` date DEFAULT NULL,
  `timestamp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Information`
--

-- INSERT INTO `Information` (`info_id`, `official_site`, `url`, `location_id`, `title`, `text`, `published`, `updated`, `timestamp`) VALUES
-- (1, 'CDC', 'https://www.tcn.org/news/2020/3/24/coping-with-the-quarantine-100-self-care-ideas-amp-activities-to-do-at-home', 1, 'Call, Text, or FaceTime a supportive friend or loved one', 'Call, Text, or FaceTime a supportive friend or loved one. FaceTiming is most encouraged to have a virtual face to face interaction!', '2020-03-24', '2020-03-24', '2020-11-07'),
-- (2, 'CDC', 'https://www.tcn.org/news/2020/3/24/coping-with-the-quarantine-100-self-care-ideas-amp-activities-to-do-at-home', 2, 'Take a walk or bike ride outside', 'Take a walk or bike ride outside', '2020-03-24', '2020-03-24', '2020-11-07'),
-- (3, 'WHO', 'https://www.tcn.org/news/2020/3/24/coping-with-the-quarantine-100-self-care-ideas-amp-activities-to-do-at-home', 3, 'Do exercise videos.', 'Do exercise videos. Websites and subscription streaming services are also available such as YouTube, Amazon Prime, etc.', '2020-03-24', '2020-03-24', '2020-11-07'),
-- (4, 'FDA', 'https://www.tcn.org/news/2020/3/24/coping-with-the-quarantine-100-self-care-ideas-amp-activities-to-do-at-home', 4, 'Do a virtual museum tour!', 'Do a virtual museum tour! These Links provide a list of museums from around the world that you can visit a home (Smithsonian, NASA, The Air Force Museum, etc.)  Museums from home More Museums from home.', '2020-03-24', '2020-03-24', '2020-11-07'),
-- (5, 'NTS', 'https://www.tcn.org/news/2020/3/24/coping-with-the-quarantine-100-self-care-ideas-amp-activities-to-do-at-home', 1, 'Go to a virtual amusement park!', 'Walt Disney World, LegoLand or SeaWorld', '2020-03-24', '2020-03-24', '2020-11-07'),
-- (6, 'FDA', 'https://www.tcn.org/news/2020/3/24/coping-with-the-quarantine-100-self-care-ideas-amp-activities-to-do-at-home', 2, 'make a craft for someone.', 'make a craft for someone.', '2020-03-24', '2020-03-24', '2020-11-07'),
-- (7, 'CDC', 'https://www.tcn.org/news/2020/3/24/coping-with-the-quarantine-100-self-care-ideas-amp-activities-to-do-at-home', 3, 'Remind yourself of your goals.', 'Remind yourself of your goals and find one to work on at home.', '2020-03-24', '2020-03-24', '2020-11-07');

--
-- Triggers `Information`
--
DELIMITER $$
CREATE TRIGGER `before_insert_information` BEFORE INSERT ON `Information` FOR EACH ROW IF new.updated = "" THEN
SET new.updated = new.published;
END IF
$$
DELIMITER ;
