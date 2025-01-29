CREATE TABLE `t_match_player_misconduct` (
  `match_id` CHAR(16) NOT NULL,
  `player_id` CHAR(16) NOT NULL,
  `type` `misconduct_type` NOT NULL,
  `goals` SMALLINT NOT NULL,
  `assists` SMALLINT NOT NULL,
  `minute` SMALLINT
);

CREATE TYPE `misconduct_type` AS ENUM ('caution', 'dismissal');