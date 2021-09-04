DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140), 
  likes INT,
  PRIMARY KEY (id)
);

INSERT INTO posts (message, likes) VALUES
    ('Thanks', 12),
    ('Arigato', 4),
    ('Merci', 4),
    ('Gracias', 15),
    ('Danke', 23);

  -- AND なおかつ
  -- OR  もしくは

  -- SELECT * FROM posts WHERE likes >= 10 AND likes <= 20; 意味：10~20の間のみ
  -- SELECT * FROM posts WHERE likes BETWEEN 10 AND 20; 意味：10~20の間のみ(同上)
  -- SELECT * FROM posts WHERE likes NOT BETWEEN 10 AND 20; 意味：10~20を除く(反転)

  SELECT * FROM posts WHERE likes = 4 OR likes = 12; --意味：4もしくは12のレコードのみ
  SELECT * FROM posts WHERE likes IN (4, 12); --意味：4もしくは12のレコードのみ(同上)
  SELECT * FROM posts WHERE likes NOT IN (4, 12); --意味：4もしくは12を含まない(反転)