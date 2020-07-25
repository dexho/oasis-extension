
--
-- Indexes for dumped tables
--

--
-- Indexes for table `Information`
--
ALTER TABLE `Information`
  ADD PRIMARY KEY (`info_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `Occupations`
--
ALTER TABLE `Occupations`
  ADD PRIMARY KEY (`occupation_id`);

--
-- Indexes for table `Selected_info_user`
--
ALTER TABLE `Selected_info_user`
  ADD UNIQUE KEY `information_id` (`information_id`) USING BTREE,
  ADD UNIQUE KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `Selfcare`
--
ALTER TABLE `Selfcare`
  ADD PRIMARY KEY (`suggestion_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `occupation_id` (`occupation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Information`
--
ALTER TABLE `Information`
  MODIFY `info_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `location_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Occupations`
--
ALTER TABLE `Occupations`
  MODIFY `occupation_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Selfcare`
--
ALTER TABLE `Selfcare`
  MODIFY `suggestion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Information`
--
ALTER TABLE `Information`
  ADD CONSTRAINT `Information_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Selected_info_user`
--
ALTER TABLE `Selected_info_user`
  ADD CONSTRAINT `Selected_info_user_ibfk_1` FOREIGN KEY (`information_id`) REFERENCES `Information` (`info_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Selected_info_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Selfcare`
--
ALTER TABLE `Selfcare`
  ADD CONSTRAINT `Selfcare_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Users_ibfk_2` FOREIGN KEY (`occupation_id`) REFERENCES `Occupations` (`occupation_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
