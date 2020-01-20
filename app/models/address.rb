class Address < ApplicationRecord

  validates :post_first_name,      presence: true, length: { maximum: 30 },format: { with: /\A[ぁ-んァ-ヶー一-龠]+\z/ }
  validates :post_last_name,       presence: true, length: { maximum: 30 },format: { with: /\A[ぁ-んァ-ヶー一-龠]+\z/ }
  validates :post_first_name_kana, presence: true, length: { maximum: 30 },format: { with: /\A[ア-ン゛゜ァ-ォャ-ョー「」、]+\z/ }
  validates :post_last_name_kana,  presence: true, length: { maximum: 30 },format: { with: /\A[ア-ン゛゜ァ-ォャ-ョー「」、]+\z/ }
  validates :post_number,          presence: true, format: { with: /\A[0-9]{7}+\z/ }
  validates :prefecture,           presence: true
  validates :city,                 presence: true
  validates :address_line,         presence: true
  validates :building,             presence: false
  validates :phone_number,         presence: true, format: { with: /\A[0-9]{11}+\z/ }
  
  belongs_to :user

end
