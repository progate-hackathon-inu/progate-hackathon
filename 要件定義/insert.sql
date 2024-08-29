-- サンプルデータを users テーブルに挿入
INSERT INTO
  users (auth_id, username, avatar)
VALUES
  (
    'd0b521e7-7993-4f94-8993-34ad3329ea8d',
    'user1',
    'https://example.com/avatar1.png'
  ),
  (
    'b412483d-4809-4ac9-b4b7-580ae2621594',
    'user2',
    'https://example.com/avatar2.png'
  );

-- videosテーブル
INSERT INTO videos (user_id, title, description, video_url, thumbnail_url) VALUES
    (16, 'サンプル動画1', 'これは動画1の説明です', 'https://example.com/video1', 'https://example.com/thumbnail1.jpg'),
    (16, 'サンプル動画2', 'これは動画2の説明です', 'https://example.com/video2', 'https://example.com/thumbnail2.jpg'),
    (17, 'サンプル動画3', 'これは動画3の説明です', 'https://example.com/video3', 'https://example.com/thumbnail3.jpg');

-- likesテーブル
INSERT INTO likes (user_id, video_id) VALUES
    (16, 7),
    (16, 8),
    (17, 9),
    (17, 7)

-- commentsテーブル
INSERT INTO comments (user_id, video_id, content) VALUES
    (16, 7, 'すばらしい動画です！'),
    (16, 7, 'とても参考になりました。'),
    (17, 8, 'この動画が本当に気に入りました！'),
    (17, 8, '説明がわかりやすいです！'),
    (17, 9, 'コンテンツが素晴らしかったです！');

-- tagsテーブル
INSERT INTO tags (name) VALUES
    ('教育'),
    ('エンターテイメント'),
    ('チュートリアル'),
    ('科学'),
    ('技術');

-- video_tagsテーブル
INSERT INTO video_tags (video_id, tag_id) VALUES
    (7, 1),
    (7, 3),
    (7, 2),
    (8, 4),
    (9, 5);

-- reference_itemsテーブル
INSERT INTO reference_items (title, url) VALUES
    ('参考資料1', 'https://example.com/reference1'),
    ('参考資料2', 'https://example.com/reference2'),
    ('参考資料3', 'https://example.com/reference3');

-- video_referencesテーブル
INSERT INTO video_references (video_id, reference_id) VALUES
    (7, 1),
    (8, 2),
    (9, 3);
