DROP TABLE IF EXISTS posts; --テーブルが存在していたらテーブルを削除
CREATE TABLE posts (   --テーブルの作成(テーブル名は複数形)
  message VARCHAR(140), --カラムの名前とそのデータ型の指定
  likes INT
);

DESC posts;
SHOW TABLES;

INSERT INTO posts (message, likes) VALUES --指定したテーブルへのレコードの挿入
  ('Thanks', 12), 
  ('Arigato', 4);

SELECT * FROM posts;--postsテーブルから全てのレコードを抽出する

--あらかじめ用意されている物は大文字、自分で決めるものは小文字