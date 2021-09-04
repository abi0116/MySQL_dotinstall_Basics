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

  -- SELECT * FROM posts ORDER BY likes; likes小さい順
  -- SELECT * FROM posts ORDER BY likes DESC; likes大きい順
  -- SELECT * FROM posts ORDER BY likes DESC, message; --likesが同率だった時にmessageのアルファベット順で順番判定
  -- SELECT * FROM posts ORDER BY likes DESC, message LIMIT 3; likes大きい順(上位三件のみ)
  SELECT * FROM posts ORDER BY likes DESC, message LIMIT 3 OFFSET 2; --最初の2件を除外して、2件目から3件分抽出
  SELECT * FROM posts ORDER BY likes DESC, message LIMIT 2, 3; --2件目から3件分抽出(同上)