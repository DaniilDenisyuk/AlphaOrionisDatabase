CREATE TABLE `tournament_match` (
  `id` CHAR(16) NOT NULL DEFAULT uuid_generate_v7(),
  `tournament_id` CHAR(16) NOT NULL REFERENCES `player` (`id`),
  `hosting_club_id` CHAR(16) NOT NULL REFERENCES `club` (`id`),
  `visiting_club_id` CHAR(16) NOT NULL REFERENCES `club` (`id`),
  CHECK (`home_club_id` != `visiting_club_id`),
  FOREIGN KEY (`tournament_id`, `home_club_id`) REFERENCES `tournament_club` (`tournament_id`, `club_id`),
  FOREIGN KEY (`tournament_id`, `visiting_club_id`) REFERENCES `tournament_club` (`tournament_id`, `club_id`)
);
