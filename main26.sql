DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140),
  likes INT,
  created DATETIME DEFAULT NOW(), --レコード作成日時
  updated DATETIME DEFAULT NOW() ON UPDATE NOW(),--レコード更新日時
  PRIMARY KEY (id)
);

INSERT INTO posts (message, likes) VALUES
  ('Thanks', 12),
  ('Merci', 4),
  ('Arigato', 4),
  ('Gracias', 15),
  ('Danke', 8);

SELECT id, created, updated FROM posts; --①postsテーブルの作成(1回目)
SELECT SLEEP(3); --②3秒待機
UPDATE posts SET likes = 100 WHERE id = 1; --③idが1のレコードだけlikesを100に変更
SELECT id, created, updated FROM posts; --④postsテーブルの作成(2回目)