DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140), 
  likes INT,
  category ENUM('Gadget', 'Game', 'Business') --ENUMは文字列の中から一つ格納できる
);

-- INSERT INTO posts (message, likes, category) VALUES 
--   ('Thanks', 12, 'Gadget'),
--   ('Arigato', 4, 'Game'),
--   -- ('Merci', 4, 'Fashion'); ENUMの一覧にないのでここでエラーが出る
--   ('Merci', 4, 'Business');

INSERT INTO posts (message, likes, category) VALUES 
  ('Thanks', 12, 1), --上記
  ('Arigato', 4, 2),
  ('Merci', 4, 3);

SELECT * FROM posts;