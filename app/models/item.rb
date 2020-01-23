class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to :user
  belongs_to :brand,optional: true
  belongs_to :category,optional: true
end
