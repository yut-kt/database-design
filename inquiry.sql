SELECT id
FROM users;

SELECT mail, password
FROM users
WHERE id = 'taro';

SELECT *
FROM blogs
WHERE user_id = 'hanako'
AND created_at >= '2016-01-01 00:00:00';

SELECT DISTINCT comments.user_id
FROM comments
INNER JOIN blogs
WHERE blogs.user_id = 'taro';

SELECT DISTINCT b2.user_id
FROM bookmarks AS b1, bookmarks AS b2
WHERE b1.user_id = 'taro'
AND b2.user_id != 'taro';

SELECT tag, COUNT(tag) AS counter
FROM tags
INNER JOIN connected_blogs_tag AS cbt ON tags.id = cbt.tag_id
INNER JOIN blogs ON cbt.blog_id = blogs.id
WHERE user_id = 'hanako'
GROUP BY tag
ORDER BY counter DESC 
LIMIT 5;

SELECT
blog_id, title, body, user_id, COUNT(blog_id) AS counter
FROM blogs
INNER JOIN connected_blogs_frequent AS cbf ON blogs.id = cbf.blog_id
INNER JOIN frequents ON cbf.frequent_id = frequents.id
WHERE word = 'ドラマ'
OR word = '成蹊大学'
GROUP BY blog_id
HAVING counter = 2;
