CREATE TABLE `tournament_club_player` (
  `tournament_id` CHAR(16) NOT NULL,
  `club_id` CHAR(16) NOT NULL,
  `player_id` CHAR(16) NOT NULL,
  PRIMARY KEY (`tournament_id`, `club_id`, `player_id`),
  FOREIGN KEY (`tournament_id`, `club_id`) REFERENCES `tournament_club` (`tournament_id`, `club_id`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`tournament_id`, `player_id`) REFERENCES `tournament_player` (`tournament_id`, `player_id`)
    ON DELETE CASCADE ON UPDATE CASCADE
);
