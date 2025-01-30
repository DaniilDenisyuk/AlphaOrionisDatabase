CREATE TABLE match (
  id CHAR(16) NOT NULL DEFAULT uuid_generate_v7(),
  season_id CHAR(16) NOT NULL REFERENCES season (id),
  host_club_id CHAR(16) NOT NULL REFERENCES club (id),
  guest_club_id CHAR(16) NOT NULL REFERENCES club (id),
  duration_m SMALLINT NOT NULL,
  CHECK (host_club_id != guest_club_id)
);

CREATE PROCEDURE CTAIR_match()
RETURNS trigger AS $CTAIR_match$
  BEGIN
    SET search_path TO tournament;
    IF
      NOT EXISTS(
        SELECT 1
        FROM club c
        WHERE c.season_id = NEW.season_id AND (c.id = NEW.host_club_id OR c.id = NEW.guest_club_id)
      )
    THEN RAISE EXCEPTION 'host and guest clubs have no mutual tournament';
    END IF;
  END;
$CTAIR_match$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER CTAIR_match AFTER INSERT ON match_player
  FOR EACH ROW EXECUTE PROCEDURE CTAIR_match();