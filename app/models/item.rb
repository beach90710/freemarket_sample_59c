class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to :user
  belongs_to :brand,optional: true
  belongs_to :category,optional: true

  validates :conditon,           presence: true
  validates :detail,              presence: true
  validates :price,               presence: true,numericality: { only_integer: true,greater_than_or_equal_to: 300,less_than_or_equal_to:  9999999}
  validates :name,                presence: true,length: { maximum: 1000 }
  validates :shipping_method,     presence: true
  validates :shipping_origin,     presence: true
  validates :days_to_shipping,    presence: true
  validates :category_id,         presence: true
end