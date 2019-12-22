class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
  validates :nickname
  validates :first_name
  validates :last_name
  validates :first_name_kana
  validates :last_name_kana
  validates :birth_year
  validates :birth_month
  validates :birth_day
  end
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
   
 # mount_uploader :image, ImageUploader
end
