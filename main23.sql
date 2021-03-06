DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140), 
  likes INT,
  created DATETIME,
  PRIMARY KEY (id)
);

  INSERT INTO posts (message, likes, created) VALUES
    ('Thanks', 12, '2020-05-01'),
    ('Merci', 4, '2020-05-03'),
    ('Arigato', 4, '2020-06-14'),
    ('Gracias', 15, '2020-07-04'),
    ('Danke', 8, '2020-08-22');

  -- SELECT created, YEAR(created) FROM posts; 年を抽出
  -- SELECT created, MONTH(created) FROM posts;月を抽出
  -- SELECT created, DAY(created) FROM posts;  日を抽出
  SELECT
    created,
    DATE_FORMAT(created, '%M %D %Y, %W') AS date --英語表記の月日年、曜日
  FROM
    posts;

  SELECT
    created,
    DATE_ADD(created, INTERVAL 7 DAY) AS next --createdから7日後を抽出
FROM
  posts;

  SELECT
    created,
    NOW(),
    DATEDIFF(created, NOW()) AS diff --現在の日付よりどれくらい前か
  FROM
    posts;