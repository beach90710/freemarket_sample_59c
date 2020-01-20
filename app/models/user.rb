class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,              presence: true, uniqueness: true,length: { maximum: 30 }
  validates :password,              presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{7,100}+\z/i }
  validates :password_confirmation, presence: true
  validates :first_name,            presence: true, length: { maximum: 30 },format: { with: /\A[ぁ-んァ-ヶー一-龠]+\z/ }
  validates :last_name,             presence: true, length: { maximum: 30 },format: { with: /\A[ぁ-んァ-ヶー一-龠]+\z/ }
  validates :first_name_kana,       presence: true, length: { maximum: 30 },format: { with: /\A[ア-ン゛゜ァ-ォャ-ョー「」、]+\z/ }
  validates :last_name_kana,        presence: true, length: { maximum: 30 },format: { with: /\A[ア-ン゛゜ァ-ォャ-ョー「」、]+\z/ }
  validates :birth_year,            presence: true, numericality: { only_integer: true }
  validates :birth_month,           presence: true, numericality: { only_integer: true }
  validates :birth_day,             presence: true, numericality: { only_integer: true }
  validates :email,                 presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
   
  has_many :addresses, dependent: :destroy
  validates_associated :addresses
  has_many :credit_payments, dependent: :destroy
  validates_associated :credit_payments
  
end
