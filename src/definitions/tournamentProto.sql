CREATE TABLE `tournament` (
  `id` CHAR(16) NOT NULL DEFAULT generate_uuid_v7(),
  `full_name` VARCHAR(255) NOT NULL,
  `short_name` VARCHAR(255),
  `logo_filename` VARCHAR(255),
  `founded_date` VARCHAR(255),
  `description` VARCHAR(2047)
);
