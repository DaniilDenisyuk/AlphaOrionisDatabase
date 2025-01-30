CREATE TABLE player_position (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  abbreviation VARCHAR(7) NOT NULL,
  description VARCHAR(2047)
);