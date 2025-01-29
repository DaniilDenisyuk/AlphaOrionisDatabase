CREATE TABLE `club_player` (
  `club_id` CHAR(16) NOT NULL REFERENCES `club` (`id`),
  `player_id` CHAR(16) NOT NULL REFERENCES `player` (`id`),
  `start_date` DATE NOT NULL,
  `position` `player_position` NOT NULL,
  `end_date` DATE NOT NULL
);
