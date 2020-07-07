## DB設計

### Usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null failse|
|password_confirmation|string|null:false|
|nickname|string|null:false|
#### Association
- has_many :posts
- has_many :comments


### Postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null :false|
|sub_title|string|null :false|
|text|text|null :false|
|pen_name|string|null :false|
|name|string|null :false|
|name_kana|string|null :false|
|prefecture|string|null :false|
|birthday|date|null :false|
|gender|string|null :false|
|image|string|null :false|
|user_id|interger|null :false, foreign_key: true|
#### Association
- belongs_to :user
- has_many :comments

### Commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|interger|null: false, foreign: true|
|post_id|interger|null: false, foreign: true|
#### Association
- belongs_to :post
- belongs_to :user






