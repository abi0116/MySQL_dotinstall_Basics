DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140), 
  -- likes INT
  -- likes INT NOT NULL
  likes INT DEFAULT 0
);

INSERT INTO posts (message, likes) VALUES 
  ('Thanks', 12),
  ('Arigato', 4),
  ('Merci', 4);  
INSERT INTO posts (message) VALUES ('Gracias');

SELECT * FROM posts;