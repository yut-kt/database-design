CREATE TABLE `connected_blogs_tag` (
  `blog_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  KEY `to_blog_from_tag` (`blog_id`),
  KEY `to_tag_from_blog` (`tag_id`),
  CONSTRAINT `to_blog_from_tag` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `to_tag_from_blog` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
