CREATE TABLE season (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  tournament_id CHAR(16) NOT NULL REFERENCES tournament (id),
  start_date DATE NOT NULL,
  end_date DATE
);
