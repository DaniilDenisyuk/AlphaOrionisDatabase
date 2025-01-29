CREATE TABLE `t_match_club_player` (
  `match_id` CHAR(16) NOT NULL REFERENCES `tournament_match` (`id`),
  `club_id` CHAR(16) NOT NULL REFERENCES `club` (`id`),
  `player_id` CHAR(16) NOT NULL REFERENCES `player` (`id`)
);
