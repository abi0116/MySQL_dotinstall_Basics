DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140), --投稿のような文字数が定まっていないものは、VARCHARでいい(140字まで)
  likes INT UNSIGNED, --UNSIGNEDで扱える数を増やす(-はその分、使えなくなる)
  mood DECIMAL(4, 2) UNSIGNED --DECIMALは()で全体で4桁、小数部分は2桁だと指定してあげる
  lang CHAR(2) --言語コードのような文字数が定まているもの(固定長)はCHARをつかえばいい
);

INSERT INTO posts (message, likes, mood, lang) VALUES 
  ('Thanks', 12, 7.825, 'EN'), --moodが指定通りの数になるように、四捨五入されることに注意
  ('Arigato', 4, 4.2138, 'JA');

SELECT * FROM posts;