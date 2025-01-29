CREATE TABLE `tournament_club` (
  `tournament_id` CHAR(16) NOT NULL
    REFERENCES `tournament` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  `player_id` CHAR(16) NOT NULL
    REFERENCES `player` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  PRIMARY KEY (`tournament_id`, `player_id`)
);
