CREATE TABLE posts ( --テーブルの作成(テーブル名は複数形)
  message VARCHAR(140), --カラムの名前とそのデータ型の指定
  likes INT
);

DESC posts; --テーブル構造を確認できる
SHOW TABLES; --テーブルの一覧が見れる