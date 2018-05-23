CREATE TABLE `bookmarks` (
  `user_id` varchar(16) NOT NULL,
  `blog_id` int(10) unsigned NOT NULL,
  KEY `bookmark_to_user_idx` (`user_id`),
  KEY `bookmark_to_blog_idx` (`blog_id`),
  CONSTRAINT `bookmark_to_blog` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bookmark_to_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
