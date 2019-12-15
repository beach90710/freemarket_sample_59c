# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
# freemarket_sample_59c DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|full_name|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday|date|null: false|
|prefecture|string|null: false|
### Association
- has_many :comments
- has_many :items,through: :users_item

<!-- ## users_itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to  :user
- belongs_to  :item -->

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :product

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|
|detail|text|
|brand_id|integer|null: false, foreign_key: true|
|categorie_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :brand
- belongs_to :categorie

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand_id|string|null: false foreign_key: true|
|brand_name|string|null: false　foreign_key: true|
### Association
- has_many :items


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|string|null: false　foreign_key: true|
|category_name|string|null: false　foreign_key: true|
### Association
- has_many :items



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
