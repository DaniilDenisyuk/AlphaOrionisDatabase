CREATE TABLE `t_match_player_goal` (
  `match_id` CHAR(16) NOT NULL,
  `player_id` CHAR(16) NOT NULL REFERENCES `player` (`id`),
  `assisted_player_id` CHAR(16) REFERENCES `player` (`id`),
  `type` `goal_type` NOT NULL,
  `minute` SMALLINT
);