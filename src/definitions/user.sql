CREATE TABLE `user` (
  `persona_id` CHAR(16) NOT NULL PRIMARY KEY REFERENCES `persona` (`id`),
  `email` VARCHAR(127),
  `password_hash` VARCHAR(127)
);
