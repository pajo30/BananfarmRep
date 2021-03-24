CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sorts and fields` AS select `bananasort`.`bananasort_id` AS `bananasort_id`,`bananasort`.`banana_name` AS `banana_name`,`bananafield`.`bananafield_id` AS `bananafield_id`,`bananafield`.`bananafield_m2` AS `bananafield_m2`,`bananafield`.`bananafield_treecount` AS `bananafield_treecount`,`bananafield`.`bananasort_bananasort_id` AS `bananasort_bananasort_id`,`bananafield`.`maturity_maturity_id` AS `maturity_maturity_id`,`bananafield`.`Boss_boss_id` AS `Boss_boss_id`,`bananafield`.`country_country_id` AS `country_country_id` from (`bananasort` join `bananafield` on((`bananasort`.`bananasort_id` = `bananafield`.`bananasort_bananasort_id`)));
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `boss and employees` AS select `employee`.`Employee_id` AS `Employee_id`,`employee`.`Employee_name` AS `Employee_name`,`employee`.`Employee_wage` AS `Employee_wage`,`employee`.`Employee_title` AS `Employee_title`,`employee`.`Boss_boss_id` AS `Boss_boss_id`,`employee`.`Boss_country_country_id` AS `Boss_country_country_id`,`boss`.`boss_id` AS `boss_id`,`boss`.`boss_name` AS `boss_name`,`boss`.`boss_wage` AS `boss_wage`,`boss`.`boss_title` AS `boss_title`,`boss`.`country_country_id` AS `country_country_id` from (`employee` join `boss` on((`boss`.`boss_id` = `employee`.`Boss_boss_id`)));