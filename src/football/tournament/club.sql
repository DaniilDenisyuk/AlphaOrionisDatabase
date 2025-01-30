CREATE TABLE club (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  season_id CHAR(16) NOT NULL
    REFERENCES season (id) ON DELETE CASCADE ON UPDATE CASCADE,
  club_id CHAR(16) NOT NULL
    REFERENCES football.club (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  UNIQUE (season_id, club_id)
);
