CREATE TABLE `users` (
  `id` varchar(16) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
