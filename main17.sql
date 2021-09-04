DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140), 
  likes INT,
  PRIMARY KEY (id)
);

INSERT INTO posts (message, likes) VALUES
    ('Thank you!', 12),
    ('thanks 100%', 4),
    ('Gracias', 4),
    ('Arigato_gozaimasu', 15),
    ('Arigato! desu', 23);

  -- SELECT * FROM posts WHERE message = 'Gracias'; Graciasのレコードのみ(完全一致)

  -- %: 0文字以上の任意の文字
  -- _: 任意の1文字

  -- SELECT * FROM posts WHERE message LIKE 't%'; t or Tから始まるレコードのみ(前方一致)
  -- SELECT * FROM posts WHERE message LIKE BINARY 't%'; tから始まるレコードのみ(前方一致)

  SELECT * FROM posts WHERE message LIKE '%su'; --suで終わるレコードのみ(後方一致)
  SELECT * FROM posts WHERE message LIKE '%i%'; --iを含むレコードのみ(部分一致)