CREATE TABLE `frequents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word_UNIQUE` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
