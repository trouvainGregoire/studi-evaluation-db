--
-- Base de données : `booking`
--

DROP DATABASE IF EXISTS `booking`;
CREATE DATABASE IF NOT EXISTS `booking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `booking`;

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- CRUD de la table `movies`
--

INSERT INTO `movies` (`id`, `name`) VALUES (NULL, 'fast and furious');
INSERT INTO `movies` (`id`, `name`) VALUES (NULL, 'Transcendance');
INSERT INTO `movies` (`id`, `name`) VALUES (NULL, 'SAW 1');
UPDATE `movies` SET `name` = 'fast and furious 2' WHERE `movies`.`id` = 1;
UPDATE `movies` SET `name` = 'Transcendance le film' WHERE `movies`.`id` = 2;
DELETE FROM `movies` WHERE `movies`.`id` = 2;


--
-- CRUD de la table `tickets`
--

INSERT INTO `tickets` (`id`, `movie_id`) VALUES (NULL, '1');
INSERT INTO `tickets` (`id`, `movie_id`) VALUES (NULL, '1');
INSERT INTO `tickets` (`id`, `movie_id`) VALUES (NULL, '1');
DELETE FROM `tickets` WHERE `tickets`.`id` = 2;
UPDATE `tickets` SET `movie_id` = 3 WHERE `tickets`.`id` = 3;
