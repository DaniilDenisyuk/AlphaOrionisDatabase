CREATE TABLE tournament (
  id CHAR(16) DEFAULT generate_uuid_v7() PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL CHECK (length(full_name) >= 2),
  short_name VARCHAR(30),
  logo_filename VARCHAR(27),
  founded_date DATE NOT NULL,
  format VARCHAR(10) NOT NULL,
  description VARCHAR(2000)
);
