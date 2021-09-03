DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140),
  likes INT,
  categories SET('Gadget', 'Game', 'Business') -- 2^0, 2^1, 2^2, ...
);

-- INSERT INTO posts (message, likes, categories) VALUES 
--   ('Tnanks', 12, 'Gadget,Game'),
--   -- ('Arigato', 4, 'Business'),
--   ('Arigato', 4, 'Personal'),
--   ('Merci', 4, 'Business,Gadget');
INSERT INTO posts (message, likes, categories) VALUES 
  ('Tnanks', 12, 3),
  ('Arigato', 4, 4),
  ('Merci', 4, 5);

SELECT * FROM posts;