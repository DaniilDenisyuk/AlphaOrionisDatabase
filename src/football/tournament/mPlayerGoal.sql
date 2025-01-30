CREATE TABLE m_player_goal (
  player_id CHAR(16) NOT NULL REFERENCES match_player (id),
  assisted_player_id CHAR(16) REFERENCES match_player (id),
  type goal_type NOT NULL,
  minute SMALLINT,
  CHECK (player_id != assisted_player_id)
);