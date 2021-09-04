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
    ('Arigato', 4),
    ('Gracias', 15),
    ('Danke', 8);

  -- + - * / %
  SELECT
    likes * 500 / 3 AS bonus,--1いいねに対して500円の売り上げ、報酬はその1/3
    FLOOR(likes * 500 / 3) AS floor,--FLOOR() 端数の切り捨て
    CEIL(likes * 500 / 3) AS ceil,--CEIL() 端数の切り上げ
    -- ROUND(likes * 500 / 3) AS round --ROUND() 四捨五入
    ROUND(likes * 500 / 3, 2) AS round --少数第二位まで四捨五入で表示
  FROM
    posts;