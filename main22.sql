DROP TABLE IF EXISTS posts;
CREATE TABLE posts(
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140), 
  likes INT,
  PRIMARY KEY (id)
);

INSERT INTO posts (message, likes) VALUES
  ('Thanks', 12),
  ('Merci', 4),
  -- ('Arigato', 4),
  ('ありがとう', 4),
  ('Gracias', 15),
  ('Danke', 8);

SELECT message, SUBSTRING(message, 3) FROM posts; --3文字目以降を切り出した文字列を抽出
SELECT message, SUBSTRING(message, 3, 2) FROM posts; --3文字目から2文字分切り出す
SELECT message, SUBSTRING(message, -2) FROM posts; --末尾から2文字分切り出す
-- SELECT CONCAT(message, ' - ' ,likes) FROM posts; messageとlikesの数をハイフンで繋ぐ
-- SELECT message, LENGTH(message) AS len FROM posts ORDER BY len;文字数を表示する
-- SELECT message, CHAR_LENGTH(message) AS len FROM posts ORDER BY len;日本語はCHAR_LENGTH()