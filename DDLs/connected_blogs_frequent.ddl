CREATE TABLE `connected_blogs_frequent` (
  `blog_id` int(10) unsigned NOT NULL,
  `frequent_id` int(10) unsigned NOT NULL,
  KEY `to_blog_from_frequent_idx` (`blog_id`),
  KEY `to_frequent_from_blog_idx` (`frequent_id`),
  CONSTRAINT `to_blog_from_frequent` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `to_frequent_from_blog` FOREIGN KEY (`frequent_id`) REFERENCES `frequents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
