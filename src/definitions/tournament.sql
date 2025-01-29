CREATE TABLE `tournament` (
  `id` CHAR(16) NOT NULL DEFAULT generate_uuid_v7(),
  `proto_id` CHAR(16) NOT NULL REFERENCES `tournament_proto` (`id`),
  `start_date` DATE NOT NULL,
  `end_date` DATE
);
