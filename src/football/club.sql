CREATE TABLE club (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  short_name VARCHAR(30),
  logo_xl_filename VARCHAR(27),
  logo_md_filename VARCHAR(27),
  logo_sm_filename VARCHAR(27),
  team_picture_filename VARCHAR(27),
  founded_date DATE NOT NULL,
  locality VARCHAR(100),
  president_id CHAR(16) NOT NULL REFERENCES persona (id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  head_coach_id CHAR(16) REFERENCES persona (id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  description VARCHAR(2000)
);
