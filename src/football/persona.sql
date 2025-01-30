CREATE TABLE persona (
  id CHAR(16) NOT NULL DEFAULT uuid_generate_v7(),
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  middle_name VARCHAR(30),
  birth_date DATE NOT NULL,
  sex persona_sex NOT NULL,
  nickname VARCHAR(30),
  photo_filename VARCHAR(27),
  height_cm SMALLINT,
  weight_kg SMALLINT
);
