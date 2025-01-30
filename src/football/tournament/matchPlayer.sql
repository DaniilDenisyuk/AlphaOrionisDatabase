CREATE TABLE match_player (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  match_id CHAR(16) NOT NULL REFERENCES match (id)
    ON DELETE CASCADE ON UPDATE CASCADE,
  player_id CHAR(16) NOT NULL REFERENCES club_player (id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  in_minute SMALLINT,
  out_minute SMALLINT
);

CREATE PROCEDURE CTAIR_match_player()
RETURNS trigger AS $CTAIR_match_player$
  BEGIN
    SET search_path TO tournament;
    IF
      NOT EXISTS(
        SELECT 1
        FROM match m
        INNER JOIN club c ON c.season_id = m.season_id
        INNER JOIN club_player cp ON cp.club_id = c.club_id
        WHERE m.id = NEW.match_id AND cp.id = NEW.player_id
      )
    THEN RAISE EXCEPTION 'player and match have no mutual tournament';
    END IF;
  END;
$CTAIR_match_player$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER CTAIR_match_player AFTER INSERT ON match_player
  FOR EACH ROW EXECUTE PROCEDURE CTAIR_match_player();