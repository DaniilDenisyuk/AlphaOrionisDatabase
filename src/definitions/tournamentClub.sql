CREATE TABLE `tournament_club` (
  `tournament_id` CHAR(16) NOT NULL
    REFERENCES `tournament` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  `club_id` CHAR(16) NOT NULL
    REFERENCES `club` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  PRIMARY KEY (`tournament_id`, `club_id`)
);
