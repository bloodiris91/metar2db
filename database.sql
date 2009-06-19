DROP TABLE IF EXISTS `metar`;

CREATE TABLE `metar` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `station` CHAR( 4 ) NOT NULL ,
  `timestamp` DATETIME NOT NULL ,
  `temperature` INT NOT NULL ,
UNIQUE (
  `station` ,
  `timestamp`
)
) ENGINE = MYISAM
