CREATE TABLE `club` (
  `id` CHAR(16) NOT NULL DEFAULT generate_uuid_v7(),
  `full_name` VARCHAR(127) NOT NULL,
  `short_name` VARCHAR(63),
  `logo_xl_filename` VARCHAR(63),
  `logo_md_filename` VARCHAR(63),
  `logo_sm_filename` VARCHAR(63),
  `team_picture_filename` VARCHAR(63),
  `founded_date` DATE NOT NULL,
  `locality` VARCHAR(127),
  `president_id` CHAR(16) NOT NULL REFERENCES `persona` (`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  `head_coach_id` CHAR(16) REFERENCES `coach` (`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  `description` VARCHAR(2047)
);
