CREATE TABLE m_player_misconduct (
  player_id CHAR(16) NOT NULL REFERENCES match_player (id),
  type player_misconduct_type NOT NULL
);