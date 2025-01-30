CREATE TABLE player (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  season_id CHAR(16) NOT NULL
    REFERENCES season (id) ON DELETE CASCADE ON UPDATE CASCADE,
  player_id CHAR(16) NOT NULL
    REFERENCES public.player (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  UNIQUE (season_id, player_id)
);
