CREATE TABLE `club_coach` (
  `club_id` CHAR(16) NOT NULL REFERENCES `club` (`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  `coach_id` CHAR(16) NOT NULL REFERENCES `coach` (`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  `start_date` DATE NOT NULL,
  `end_date` DATE,
  PRIMARY KEY (`club_id`, `coach_id`, `start_date`)
);

CREATE UNIQUE INDEX `club_coach_constraint` ON `club_coach` (`club_id`, `coach_id`)
  WHERE `end_date` IS NULL;