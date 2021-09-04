DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140), 
  likes INT,
  PRIMARY KEY (id)
);

  INSERT INTO posts (message, likes) VALUES
    ('Thanks', 12),
    ('Merci', 4),
    ('Arigato', 4),
    ('Gracias', 15),
    ('Danke', 8);

  -- SELECT likes + 10 FROM posts; この足し方は元データに変化なし
  -- UPDATE posts SET likes = likes + 5 WHERE likes >= 10; likesが10以上のだけ+5

UPDATE --複数のカラム更新
  posts
SET
  likes = likes + 5, --likesに5足して
  message = UPPER(message) --大文字する
WHERE
  likes >= 10; --条件(WHERE)：likesが10以上のものだけ
SELECT * FROM posts;