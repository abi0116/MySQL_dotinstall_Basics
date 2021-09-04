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

  -- %: 0文字以上の任意の文字
  -- _: 任意の1文字

  -- SELECT * FROM posts WHERE message LIKE '__a%'; messageの3文字目がaのレコード
  -- SELECT * FROM posts WHERE message NOT LIKE '__a%'; 上記のもの以外(反転)
  -- SELECT * FROM posts WHERE message LIKE '%%%'; %を条件に含みたいけど、これじゃダメ
  SELECT * FROM posts WHERE message LIKE '%\%%'; --\をつけてあげると%も_も条件に入れられる