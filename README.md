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
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday|date|null: false|
|profile_text|string|
|icon_img|string|
### Association
- has_many :comments
- has_many :items
- has_many :addresses

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|post_number|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address_line|integer|null: false|
|building|string|
### Association
- belongs_to :user

## sns_authenticationsテーブル
|Column|Type|Options|
|------|----|-------|@
|user_id|references|null: false, foreign_key: true|
|google_authentications|string|
|facebook_authentications|string|
### Association
- belongs_to :user

## credit_paymentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|number|integer|null: false|
|cvc|integer|null: false|
|exp_month|integer|null: false|
|exp_year|integer|null: false|
### Association
- belongs_to :user


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :product

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|detail|text|
|brand_id|references|null: false, foreign_key: true|
|categorie_id|references|null: false, foreign_key: true|
|condition|string|null: false|
|shipping_charge_fee|string|null: false|
|shipping_method|string|null: false|
発送日の目安
### Association
- belongs_to :user
- belongs_to :brand
- belongs_to :category

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|image1|string||
|image2|string||
|image3|string||
|image4|string||
|image5|string||
|image6|string||
|image7|string||
|image8|string||
|image9|string||
|image10|string||

### Association
- belongs_to :item

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
<!-- |item_id|references|foreign_key: true| -->
|name|string|null: false|
### Association
- has_many :items


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
<!-- |item_id|references|foreign_key: true| -->
|name|string|null: false|
<!-- |grand-parent_id|integer| -->
<!-- |paretnt_id|integer| -->
### Association
- has_many :items



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
