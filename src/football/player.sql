CREATE TABLE player (
  persona_id CHAR(16) NOT NULL,
  position CHAR(16) NOT NULL REFERENCES player_position (id)
    ON DELETE RESTRICT ON UPDATE CASCADE
);
