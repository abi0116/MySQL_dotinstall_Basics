DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140), 
  likes INT,
  PRIMARY KEY (id)
);

-- INSERT INTO posts (id, message, likes) VALUES 
--   (1, 'Thanks', 12),
--   (2, 'Arigato', 4),
--   (2, 'Merci', 4);  
INSERT INTO posts (message, likes) VALUES 
  ('Thanks', 12),
  ('Arigato', 4),
  ('Merci', 4);  

SELECT * FROM posts;