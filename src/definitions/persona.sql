CREATE TABLE `persona` (
  `id` CHAR(16) NOT NULL DEFAULT uuid_generate_v7(),
  `first_name` VARCHAR(127) NOT NULL,
  `last_name` VARCHAR(127) NOT NULL,
  `middle_name` VARCHAR(127),
  `birth_date` VARCHAR(127) NOT NULL,
  `sex` `persona_sex` NOT NULL,
  `nickname` VARCHAR(127),
  `photo_name` VARCHAR(511),
  `height_cm` SMALLINT,
  `weight_kg` SMALLINT,
);
