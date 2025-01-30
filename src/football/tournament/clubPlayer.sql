CREATE TABLE club_player (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  club_id CHAR(16) NOT NULL REFERENCES club (id),
  player_id CHAR(16) NOT NULL REFERENCES public.player (id),
  UNIQUE (club_id, player_id, player_id),
  FOREIGN KEY (season_id, club_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (season_id, player_id) REFERENCES player (season_id, player_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);
