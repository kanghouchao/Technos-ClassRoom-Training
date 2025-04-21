DROP DATABASE IF EXISTS mydb;
CREATE DATABASE mydb;

USE mydb;

-- 利用者
CREATE TABLE user (
	u_id CHAR(7) PRIMARY KEY,
	u_pass VARCHAR(20),
	u_name VARCHAR(20),
	u_regi_date DATE
);

-- 店
CREATE TABLE shop (
	s_num INT PRIMARY KEY AUTO_INCREMENT,
	s_name VARCHAR(50) NOT NULL,
	s_owner VARCHAR(20) NOT NULL,
	s_opening TIME,
	s_closing TIME
);

-- 商品
CREATE TABLE item (
	i_num INT PRIMARY KEY AUTO_INCREMENT,
	i_name VARCHAR(50) NOT NULL,
	i_price INT,
	i_image VARCHAR(100)
);

-- 在庫
CREATE TABLE zaiko (
	s_num INT,
	i_num INT,
	z_quantity INT,
	PRIMARY KEY (s_num, i_num)
);

-- 注文履歴
CREATE TABLE record (
	r_num INT PRIMARY KEY AUTO_INCREMENT,
	u_id CHAR(7),
	r_time DATETIME
);

-- 注文詳細
CREATE TABLE detail (
	r_num INT,
	s_num INT,
	i_num INT,
	d_price INT,
	d_quantity INT,
	PRIMARY KEY (r_num, s_num, i_num)
);

INSERT INTO user VALUES('user123', 'user123', '田中太郎', '2019-10-15');
INSERT INTO user VALUES('apple12', 'apple12', '山田花子', '2020-01-29');
INSERT INTO user VALUES('lion369', 'lion369', '佐藤健太', '2021-05-08');
INSERT INTO user VALUES('cat8014', 'cat8014', '鈴木みゆき', '2018-09-21');
INSERT INTO user VALUES('dogpaw1', 'dogpaw1', '中村あきら', '2022-02-14');
INSERT INTO user VALUES('guitar4', 'guitar4', '小林雅美', '2023-11-07');
INSERT INTO user VALUES('moon786', 'moon786', '斉藤優子', '2017-12-31');
INSERT INTO user VALUES('sunny12', 'sunny12', '渡辺慎一', '2020-08-02');
INSERT INTO user VALUES('summer3', 'summer3', '岡田夕子', '2022-06-11');
INSERT INTO user VALUES('skyblue', 'skyblue', '松本拓海', '2021-03-22');
INSERT INTO user VALUES('banan42', 'banan42', '山本隆司', '2022-01-17');
INSERT INTO user VALUES('arrow25', 'arrow25', '中川美和子', '2021-11-30');
INSERT INTO user VALUES('night33', 'night33', '森山太郎', '2020-09-23');
INSERT INTO user VALUES('sun36am', 'sun36am', '鈴木裕子', '2022-02-11');
INSERT INTO user VALUES('magic09', 'magic09', '高田晃司', '2021-06-28');
INSERT INTO user VALUES('peace77', 'peace77', '小林美咲', '2021-04-01');
INSERT INTO user VALUES('book182', 'book182', '田中愛子', '2020-12-12');
INSERT INTO user VALUES('music91', 'music91', '渡辺和也', '2021-02-28');
INSERT INTO user VALUES('bird573', 'bird573', '岡田敬子', '2022-03-05');
INSERT INTO user VALUES('star223', 'star223', '松田昇', '2021-08-19');


INSERT INTO shop VALUES(1, 'メロンパン屋さん「田中」', '田中悠太郎', '07:00', '20:00');
INSERT INTO shop VALUES(2, 'いちごスイーツ「いちご一本勝負」', '山田恵子', '10:00', '21:00');
INSERT INTO shop VALUES(3, 'キウイフルーツショップ「キウイの木」', '加藤春子', '09:00', '18:00');
INSERT INTO shop VALUES(4, 'みかんジュース専門店「蜜柑堂」', '鈴木健太', '10:00', '21:00');
INSERT INTO shop VALUES(5, 'バナナパンケーキカフェ「バナナリーフ」', '小林千佳子', '09:00', '19:00');
INSERT INTO shop VALUES(6, 'レモンとライムのお菓子屋さん「シトラス」', '田口和子', '10:00', '21:00');
INSERT INTO shop VALUES(7, 'アボカド料理店「アボカド屋」', '佐々木洋平', '10:00', '21:00');
INSERT INTO shop VALUES(8, 'グレープフルーツカクテルバー「グレープフルーツスプラッシュ」', '高橋瞳', '18:00', '03:00');
INSERT INTO shop VALUES(9, 'ベーグルショップ「丸山」', '丸山美和子', '08:00', '19:00');
INSERT INTO shop VALUES(10, 'ステーキハウス「グリル＆ビストロ」', '田中芳之', '11:00', '23:00');
INSERT INTO shop VALUES(11, 'ジュースバー「フルーツスタンド」', '鈴木一郎', '09:00', '22:00');
INSERT INTO shop VALUES(12, 'パン工房「ルヴァン」', '岡田 悠香', '08:00', '19:00');
INSERT INTO shop VALUES(13, 'カフェ「モカ」', '鈴木 陽子', '10:00', '22:00');
INSERT INTO shop VALUES(14, '洋菓子店「プチアンジェ」', '小林 美香', '09:00', '21:00');
INSERT INTO shop VALUES(15, 'バー「スモーキー」', '高橋 智也', '18:00', '02:00');
INSERT INTO shop VALUES(16, 'クロワッサン専門店「ヴィエノワ」', '岡本真理子', '8:00', '19:00');
INSERT INTO shop VALUES(17, 'タイ料理店「サイアムキッチン」', '加藤美香', '11:30', '21:30');
INSERT INTO shop VALUES(18, 'パスタ屋「ラ・トラットリア」', '横山俊介', '11:30', '14:30');
INSERT INTO shop VALUES(19, 'スパイスカレー店「ジャイプール」', '山口春樹', '11:00', '22:00');
INSERT INTO shop VALUES(20, 'フレンチレストラン「ル・ミモザ」', '高木雅美', '17:30', '23:00');

INSERT INTO item VALUES(1, 'メロンパン', 120, 'メロンパン.png');
INSERT INTO item VALUES(2, 'メロンパンアイスサンド', 350, null);
INSERT INTO item VALUES(3, 'メロンパンプリン', 200, null);
INSERT INTO item VALUES(4, 'チョコレートメロンパン', 150, 'チョコメロンパン.png');
INSERT INTO item VALUES(5, '抹茶メロンパン', 140, '抹茶メロンパン.png');
INSERT INTO item VALUES(6, 'あんこメロンパン', 150, null);
INSERT INTO item VALUES(7, 'キャラメルメロンパン', 160, null);
INSERT INTO item VALUES(8, 'ふわふわメロンパン', 120, null);
INSERT INTO item VALUES(9, 'メロンパンフレンチトースト', 1000, null);
INSERT INTO item VALUES(10, 'メロンパンクリームサンド', 300, null);

INSERT INTO item VALUES(11, 'いちごショートケーキ', 500, null);
INSERT INTO item VALUES(12, 'いちご大福', 300, null);
INSERT INTO item VALUES(13, 'いちごパフェ', 700, null);
INSERT INTO item VALUES(14, 'いちごヨーグルト', 350, null);
INSERT INTO item VALUES(15, 'いちごムース', 450, null);
INSERT INTO item VALUES(16, 'いちごタルト', 600, null);
INSERT INTO item VALUES(17, 'いちごクレープ', 550, null);
INSERT INTO item VALUES(18, 'いちご大福アイス', 400, null);
INSERT INTO item VALUES(19, 'いちごミルクレープ', 650, null);
INSERT INTO item VALUES(20, 'いちごジュース', 250, null);

INSERT INTO item VALUES(21, 'ゴールドキウイ', 100, null);
INSERT INTO item VALUES(22, 'グリーンキウイ', 80, null);
INSERT INTO item VALUES(23, 'キウイベリー', 200, null);
INSERT INTO item VALUES(24, 'タイガーキウイ', 200, null);
INSERT INTO item VALUES(25, 'レッドキウイ', 200, null);
INSERT INTO item VALUES(26, 'ハワイアンゴールド', 150, null);
INSERT INTO item VALUES(27, 'ヘイワード', 90, null);
INSERT INTO item VALUES(28, 'アクタニディア・コロンバ', 130, null);
INSERT INTO item VALUES(29, 'アクタニディア・デリシオサ', 100, null);
INSERT INTO item VALUES(30, 'アクタニディア・セテリア', 120, null);

INSERT INTO item VALUES(31, '温州みかんジュース', 300, null);
INSERT INTO item VALUES(32, 'はるみかんジュース', 320, null);
INSERT INTO item VALUES(33, 'せとかみかんジュース', 350, null);
INSERT INTO item VALUES(34, 'ポンカンジュース', 330, null);
INSERT INTO item VALUES(35, '伊予柑ジュース', 360, null);
INSERT INTO item VALUES(36, 'たんかんジュース', 340, null);
INSERT INTO item VALUES(37, 'かぼすジュース', 380, null);
INSERT INTO item VALUES(38, 'ライムジュース', 400, null);
INSERT INTO item VALUES(39, 'レモンジュース', 350, null);
INSERT INTO item VALUES(40, 'ユズジュース', 420, null);

INSERT INTO item VALUES(41, 'プレーンバナナパンケーキ', 300, null);
INSERT INTO item VALUES(42, 'バナナとクルミのパンケーキ', 400, null);
INSERT INTO item VALUES(43, 'チョコバナナパンケーキ', 450, null);

INSERT INTO item VALUES(44, 'レモンパウンドケーキ', 800, null);
INSERT INTO item VALUES(45, 'ライムタルト', 600, null);
INSERT INTO item VALUES(46, 'レモンクッキー', 300, null);
INSERT INTO item VALUES(47, 'ライムジュレ', 400, null);
INSERT INTO item VALUES(48, 'レモンチーズケーキ', 900, null);

INSERT INTO item VALUES(49, 'アボカドトースト', 800, null);
INSERT INTO item VALUES(50, 'アボカドグアカモーレ', 600, null);
INSERT INTO item VALUES(51, 'アボカドサラダ', 900, null);

INSERT INTO item VALUES(52, 'グレープフルーツカクテル', 800, null);
INSERT INTO item VALUES(53, 'ピンクグレープフルーツモヒート', 900, null);

INSERT INTO item VALUES(54, 'プレーンベーグル', 250, null);

INSERT INTO item VALUES(55, '牛フィレステーキ', 5000, null);
INSERT INTO item VALUES(56, 'グリル野菜盛り合わせ', 1500, null);
INSERT INTO item VALUES(57, 'ガーリックライス', 800, null);

INSERT INTO item VALUES(58, 'オレンジジュース', 300, null);
INSERT INTO item VALUES(59, 'グレープフルーツジュース', 350, null);
INSERT INTO item VALUES(60, 'キウイスムージー', 400, null);
INSERT INTO item VALUES(61, 'カシスオレンジ', 800, null);
INSERT INTO item VALUES(62, 'ブルーハワイ', 900, null);
INSERT INTO item VALUES(63, 'ジントニック', 700, null);
INSERT INTO item VALUES(64, 'カンパリソーダ', 750, null);

INSERT INTO item VALUES(65, 'フランスパン', 350, null);
INSERT INTO item VALUES(66, 'シナモンロール', 450, null);
INSERT INTO item VALUES(67, 'カンパーニュ', 400, null);
INSERT INTO item VALUES(68, 'チョコチップクッキー', 200, null);
INSERT INTO item VALUES(69, 'クロワッサン', 300, null);
INSERT INTO item VALUES(70, 'ベーコンエピ', 450, null);
INSERT INTO item VALUES(71, 'マロンパン', 400, null);
INSERT INTO item VALUES(72, 'オリーブオイルパン', 350, null);
INSERT INTO item VALUES(73, 'フィグジャムとチーズのパン', 500, null);
INSERT INTO item VALUES(74, 'ブルーベリーバターのパン', 450, null);

INSERT INTO item VALUES(75, 'カフェラテ', 400, null);
INSERT INTO item VALUES(76, 'ブルーベリーマフィン', 350, null);
INSERT INTO item VALUES(77, 'ハニートースト', 450, null);

INSERT INTO item VALUES(78, 'ショコラムース', 200, null);
INSERT INTO item VALUES(79, 'ベリータルト', 300, null);

INSERT INTO item VALUES(80, 'スモーキーオールドファッション', 1200, null);
INSERT INTO item VALUES(81, 'キャンドルナイトマティーニ', 1500, null);

INSERT INTO item VALUES(82, 'プレーンクロワッサン', 150, null);
INSERT INTO item VALUES(83, 'チョコレートクロワッサン', 200, null);
INSERT INTO item VALUES(84, 'ハムとチーズのクロワッサンサンド', 350, null);

INSERT INTO item VALUES(85, 'トムヤムクン', 900, null);
INSERT INTO item VALUES(86, 'ガパオライス', 1000, null);
INSERT INTO item VALUES(87, 'ガイヤーン', 1200, null);
INSERT INTO item VALUES(88, 'サイアムサラダ', 800, null);
INSERT INTO item VALUES(89, 'プーパッポンカリー', 1300, null);
INSERT INTO item VALUES(90, 'タイカレー', 1100, null);
INSERT INTO item VALUES(91, 'ペッパービーフ', 1400, null);
INSERT INTO item VALUES(92, 'マッサマンカレー', 1200, null);

INSERT INTO item VALUES(93, 'カルボナーラ', 1200, null);
INSERT INTO item VALUES(94, 'ボロネーゼ', 1000, null);
INSERT INTO item VALUES(95, 'ペペロンチーノ', 950, null);
INSERT INTO item VALUES(96, 'トマトクリームパスタ', 1100, null);

INSERT INTO item VALUES(97, 'チキンカレー', 900, null);
INSERT INTO item VALUES(98, 'ベジタブルカレー', 800, null);
INSERT INTO item VALUES(99, 'マトンカレー', 1000, null);

INSERT INTO item VALUES(100, 'フォアグラのテリーヌ', 2500, null);

INSERT INTO zaiko VALUES(1, 1, 7);
INSERT INTO zaiko VALUES(1, 2, 5);
INSERT INTO zaiko VALUES(1, 3, 6);
INSERT INTO zaiko VALUES(1, 4, 2);
INSERT INTO zaiko VALUES(1, 5, 5);
INSERT INTO zaiko VALUES(1, 6, 8);
INSERT INTO zaiko VALUES(1, 7, 7);
INSERT INTO zaiko VALUES(1, 8, 1);
INSERT INTO zaiko VALUES(1, 9, 6);
INSERT INTO zaiko VALUES(1, 10, 9);
INSERT INTO zaiko VALUES(2, 11, 4);
INSERT INTO zaiko VALUES(2, 12, 3);
INSERT INTO zaiko VALUES(2, 13, 6);
INSERT INTO zaiko VALUES(2, 14, 9);
INSERT INTO zaiko VALUES(2, 15, 9);
INSERT INTO zaiko VALUES(2, 16, 8);
INSERT INTO zaiko VALUES(2, 17, 4);
INSERT INTO zaiko VALUES(2, 18, 5);
INSERT INTO zaiko VALUES(2, 19, 3);
INSERT INTO zaiko VALUES(2, 20, 1);
INSERT INTO zaiko VALUES(3, 21, 7);
INSERT INTO zaiko VALUES(3, 22, 3);
INSERT INTO zaiko VALUES(3, 23, 4);
INSERT INTO zaiko VALUES(3, 24, 0);
INSERT INTO zaiko VALUES(3, 25, 2);
INSERT INTO zaiko VALUES(3, 26, 7);
INSERT INTO zaiko VALUES(3, 27, 2);
INSERT INTO zaiko VALUES(3, 28, 8);
INSERT INTO zaiko VALUES(3, 29, 5);
INSERT INTO zaiko VALUES(3, 30, 0);
INSERT INTO zaiko VALUES(4, 31, 6);
INSERT INTO zaiko VALUES(4, 32, 1);
INSERT INTO zaiko VALUES(4, 33, 6);
INSERT INTO zaiko VALUES(4, 34, 0);
INSERT INTO zaiko VALUES(4, 35, 4);
INSERT INTO zaiko VALUES(4, 36, 7);
INSERT INTO zaiko VALUES(4, 37, 3);
INSERT INTO zaiko VALUES(4, 38, 8);
INSERT INTO zaiko VALUES(4, 39, 8);
INSERT INTO zaiko VALUES(4, 40, 9);
INSERT INTO zaiko VALUES(5, 41, 0);
INSERT INTO zaiko VALUES(5, 42, 2);
INSERT INTO zaiko VALUES(5, 43, 3);
INSERT INTO zaiko VALUES(6, 44, 7);
INSERT INTO zaiko VALUES(6, 45, 7);
INSERT INTO zaiko VALUES(6, 46, 4);
INSERT INTO zaiko VALUES(6, 47, 0);
INSERT INTO zaiko VALUES(6, 48, 1);
INSERT INTO zaiko VALUES(7, 49, 3);
INSERT INTO zaiko VALUES(7, 50, 2);
INSERT INTO zaiko VALUES(7, 51, 1);
INSERT INTO zaiko VALUES(8, 52, 1);
INSERT INTO zaiko VALUES(8, 53, 4);
INSERT INTO zaiko VALUES(9, 54, 6);
INSERT INTO zaiko VALUES(10, 55, 0);
INSERT INTO zaiko VALUES(10, 56, 0);
INSERT INTO zaiko VALUES(10, 57, 3);
INSERT INTO zaiko VALUES(11, 58, 4);
INSERT INTO zaiko VALUES(11, 59, 3);
INSERT INTO zaiko VALUES(11, 60, 3);
INSERT INTO zaiko VALUES(11, 61, 5);
INSERT INTO zaiko VALUES(11, 62, 8);
INSERT INTO zaiko VALUES(11, 63, 4);
INSERT INTO zaiko VALUES(11, 64, 6);
INSERT INTO zaiko VALUES(12, 65, 8);
INSERT INTO zaiko VALUES(12, 66, 5);
INSERT INTO zaiko VALUES(12, 67, 1);
INSERT INTO zaiko VALUES(12, 68, 2);
INSERT INTO zaiko VALUES(12, 69, 5);
INSERT INTO zaiko VALUES(12, 70, 8);
INSERT INTO zaiko VALUES(12, 71, 8);
INSERT INTO zaiko VALUES(12, 72, 7);
INSERT INTO zaiko VALUES(12, 73, 0);
INSERT INTO zaiko VALUES(12, 74, 1);
INSERT INTO zaiko VALUES(13, 75, 4);
INSERT INTO zaiko VALUES(13, 76, 9);
INSERT INTO zaiko VALUES(13, 77, 1);
INSERT INTO zaiko VALUES(13, 74, 0);
INSERT INTO zaiko VALUES(13, 82, 6);
INSERT INTO zaiko VALUES(14, 78, 0);
INSERT INTO zaiko VALUES(14, 79, 3);
INSERT INTO zaiko VALUES(15, 80, 7);
INSERT INTO zaiko VALUES(15, 81, 7);
INSERT INTO zaiko VALUES(16, 82, 3);
INSERT INTO zaiko VALUES(16, 83, 6);
INSERT INTO zaiko VALUES(16, 84, 1);
INSERT INTO zaiko VALUES(17, 85, 6);
INSERT INTO zaiko VALUES(17, 86, 0);
INSERT INTO zaiko VALUES(17, 87, 9);
INSERT INTO zaiko VALUES(17, 88, 9);
INSERT INTO zaiko VALUES(17, 89, 7);
INSERT INTO zaiko VALUES(17, 90, 9);
INSERT INTO zaiko VALUES(17, 91, 2);
INSERT INTO zaiko VALUES(17, 92, 6);
INSERT INTO zaiko VALUES(18, 93, 2);
INSERT INTO zaiko VALUES(18, 94, 4);
INSERT INTO zaiko VALUES(18, 95, 6);
INSERT INTO zaiko VALUES(18, 96, 9);
INSERT INTO zaiko VALUES(19, 97, 5);
INSERT INTO zaiko VALUES(19, 98, 8);
INSERT INTO zaiko VALUES(19, 99, 1);
INSERT INTO zaiko VALUES(20, 100, 3);

INSERT INTO record VALUES(1, 'user123', '2019-01-05 17:08:12');
INSERT INTO record VALUES(2, 'bird573', '2017-06-22 14:44:23');
INSERT INTO record VALUES(3, 'lion369', '2021-07-15 05:57:51');
INSERT INTO record VALUES(4, 'lion369', '2016-12-29 07:54:17');
INSERT INTO record VALUES(5, 'moon786', '2021-11-10 20:56:34');
INSERT INTO record VALUES(6, 'night33', '2020-05-03 09:08:11');
INSERT INTO record VALUES(7, 'dogpaw1', '2015-08-18 16:49:27');
INSERT INTO record VALUES(8, 'sunny12', '2019-02-13 23:22:28');
INSERT INTO record VALUES(9, 'sun36am', '2023-02-26 10:19:54');
INSERT INTO record VALUES(10, 'book182', '2016-09-03 18:40:33');
INSERT INTO record VALUES(11, 'summer3', '2020-11-25 03:15:39');
INSERT INTO record VALUES(12, 'night33', '2022-09-28 22:35:18');
INSERT INTO record VALUES(13, 'moon786', '2015-09-20 22:02:51');
INSERT INTO record VALUES(14, 'summer3', '2016-01-13 07:21:12');
INSERT INTO record VALUES(15, 'night33', '2018-06-08 12:32:57');
INSERT INTO record VALUES(16, 'sun36am', '2021-09-10 13:28:07');
INSERT INTO record VALUES(17, 'dogpaw1', '2018-11-12 01:43:46');
INSERT INTO record VALUES(18, 'sunny12', '2015-10-29 04:21:32');
INSERT INTO record VALUES(19, 'cat8014', '2016-12-01 09:37:15');
INSERT INTO record VALUES(20, 'magic09', '2017-11-06 19:57:19');
INSERT INTO record VALUES(21, 'banan42', '2022-05-24 23:37:49');
INSERT INTO record VALUES(22, 'music91', '2020-06-25 04:21:38');
INSERT INTO record VALUES(23, 'dogpaw1', '2016-02-05 00:51:35');
INSERT INTO record VALUES(24, 'summer3', '2015-05-16 11:58:17');
INSERT INTO record VALUES(25, 'summer3', '2019-12-31 06:42:56');
INSERT INTO record VALUES(26, 'music91', '2021-08-15 15:06:32');
INSERT INTO record VALUES(27, 'peace77', '2017-08-28 06:29:46');
INSERT INTO record VALUES(28, 'summer3', '2022-05-14 08:21:08');
INSERT INTO record VALUES(29, 'skyblue', '2023-01-01 12:00:00');
INSERT INTO record VALUES(30, 'lion369', '2016-12-18 02:32:48');

INSERT INTO detail VALUES(1,17,91,1400,1);
INSERT INTO detail VALUES(2,1,5,140,1);
INSERT INTO detail VALUES(2,11,64,750,2);
INSERT INTO detail VALUES(2,13,77,450,2);
INSERT INTO detail VALUES(2,19,97,900,2);
INSERT INTO detail VALUES(3,1,10,300,2);
INSERT INTO detail VALUES(3,10,56,1500,1);
INSERT INTO detail VALUES(3,11,58,300,1);
INSERT INTO detail VALUES(3,13,82,150,2);
INSERT INTO detail VALUES(4,4,40,420,1);
INSERT INTO detail VALUES(5,2,13,700,1);
INSERT INTO detail VALUES(5,2,14,350,1);
INSERT INTO detail VALUES(5,3,21,100,2);
INSERT INTO detail VALUES(5,3,26,150,2);
INSERT INTO detail VALUES(7,3,24,200,1);
INSERT INTO detail VALUES(7,13,75,400,1);
INSERT INTO detail VALUES(7,14,79,300,2);
INSERT INTO detail VALUES(7,15,81,1500,2);
INSERT INTO detail VALUES(7,17,89,1300,2);
INSERT INTO detail VALUES(7,18,95,950,1);
INSERT INTO detail VALUES(8,17,88,800,1);
INSERT INTO detail VALUES(8,19,99,1000,2);
INSERT INTO detail VALUES(9,4,32,320,1);
INSERT INTO detail VALUES(9,12,73,500,2);
INSERT INTO detail VALUES(9,18,93,1200,2);
INSERT INTO detail VALUES(1,3,25,200,1);
INSERT INTO detail VALUES(1,3,30,120,2);
INSERT INTO detail VALUES(1,16,83,200,1);
INSERT INTO detail VALUES(1,5,42,400,1);
INSERT INTO detail VALUES(1,6,48,900,1);
INSERT INTO detail VALUES(1,7,51,900,2);
INSERT INTO detail VALUES(1,4,33,350,1);
INSERT INTO detail VALUES(1,12,74,450,1);
INSERT INTO detail VALUES(1,20,100,2500,1);
INSERT INTO detail VALUES(1,1,2,350,1);
INSERT INTO detail VALUES(1,3,28,130,2);
INSERT INTO detail VALUES(1,4,39,350,1);
INSERT INTO detail VALUES(1,2,17,550,1);
INSERT INTO detail VALUES(1,4,36,340,1);
INSERT INTO detail VALUES(1,12,67,400,1);
INSERT INTO detail VALUES(1,13,74,450,1);
INSERT INTO detail VALUES(1,17,92,1200,1);
INSERT INTO detail VALUES(1,1,1,120,2);
INSERT INTO detail VALUES(1,1,7,160,1);
INSERT INTO detail VALUES(1,3,29,100,2);
INSERT INTO detail VALUES(1,4,31,300,2);
INSERT INTO detail VALUES(1,5,43,450,2);
INSERT INTO detail VALUES(1,11,62,900,1);
INSERT INTO detail VALUES(1,2,15,450,1);
INSERT INTO detail VALUES(1,2,16,600,1);
INSERT INTO detail VALUES(1,12,72,350,1);
INSERT INTO detail VALUES(1,18,96,1100,1);
INSERT INTO detail VALUES(1,2,12,300,1);
INSERT INTO detail VALUES(1,8,52,800,1);
INSERT INTO detail VALUES(1,9,54,250,2);
INSERT INTO detail VALUES(1,10,57,800,2);
INSERT INTO detail VALUES(1,17,85,900,1);
INSERT INTO detail VALUES(1,18,94,1000,2);
INSERT INTO detail VALUES(1,19,98,800,2);
INSERT INTO detail VALUES(2,1,8,120,2);
INSERT INTO detail VALUES(2,5,41,300,1);
INSERT INTO detail VALUES(2,12,65,350,1);
INSERT INTO detail VALUES(2,12,68,200,1);
INSERT INTO detail VALUES(2,6,45,600,1);
INSERT INTO detail VALUES(2,7,50,600,1);
INSERT INTO detail VALUES(2,11,61,800,2);
INSERT INTO detail VALUES(2,12,71,400,2);
INSERT INTO detail VALUES(2,2,20,250,2);
INSERT INTO detail VALUES(2,3,27,90,2);
INSERT INTO detail VALUES(2,11,59,350,1);
INSERT INTO detail VALUES(2,4,34,330,1);
INSERT INTO detail VALUES(2,6,46,300,1);
INSERT INTO detail VALUES(2,8,53,900,2);
INSERT INTO detail VALUES(2,10,55,5000,2);
INSERT INTO detail VALUES(2,11,60,400,2);
INSERT INTO detail VALUES(2,1,3,200,1);
INSERT INTO detail VALUES(2,17,90,1100,1);
INSERT INTO detail VALUES(2,2,11,500,2);
INSERT INTO detail VALUES(2,3,22,80,1);
INSERT INTO detail VALUES(2,2,18,400,1);
INSERT INTO detail VALUES(2,4,35,360,2);
INSERT INTO detail VALUES(2,4,38,400,1);
INSERT INTO detail VALUES(2,7,49,800,1);
INSERT INTO detail VALUES(2,14,78,200,2);
INSERT INTO detail VALUES(2,17,87,1200,2);
INSERT INTO detail VALUES(2,1,4,150,2);
INSERT INTO detail VALUES(2,1,9,1000,2);
INSERT INTO detail VALUES(2,3,23,200,2);
INSERT INTO detail VALUES(2,4,37,380,1);
INSERT INTO detail VALUES(2,6,47,400,2);
INSERT INTO detail VALUES(2,13,76,350,1);
INSERT INTO detail VALUES(2,16,84,350,1);
INSERT INTO detail VALUES(2,2,19,650,1);
INSERT INTO detail VALUES(2,11,63,700,2);
INSERT INTO detail VALUES(2,12,66,450,1);
INSERT INTO detail VALUES(2,12,69,300,1);
INSERT INTO detail VALUES(2,15,80,1200,2);
INSERT INTO detail VALUES(2,16,82,150,1);
INSERT INTO detail VALUES(2,1,6,150,2);
INSERT INTO detail VALUES(2,6,44,800,1);
INSERT INTO detail VALUES(2,12,70,450,1);
INSERT INTO detail VALUES(3,17,86,1000,2);
