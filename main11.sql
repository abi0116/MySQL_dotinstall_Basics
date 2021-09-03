DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140), 
  likes INT,
  is_draft BOOL,
  created DATETIME
);

INSERT INTO posts (message, likes, is_draft, created) VALUES 
  ('Thanks', 12, TRUE, '2020-10-11 15:32:05'),
  ('Arigato', 4, FALSE, '2020-10-12'),
  ('Merci', 4, 0, NOW());  

SELECT * FROM posts;