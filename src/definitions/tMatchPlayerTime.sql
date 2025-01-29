CREATE TABLE `t_match_player_time` (
  `match_id` CHAR(16) NOT NULL REFERENCES `tournament_match` (`id`),
  `player_id` CHAR(16) NOT NULL REFERENCES `player` (`id`),
  `in_minute` SMALLINT,
  `out_minute` SMALLINT,
  PRIMARY KEY (`match_id`, `player_id`)
);
