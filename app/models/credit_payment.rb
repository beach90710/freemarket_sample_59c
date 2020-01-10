class CreditPayment < ApplicationRecord

  validates :user_id,   presence: true
  validates :number,    presence: true, format: { with: /\A[0-9]{8}+\z/ }
  validates :cvc,       presence: true, length: { maximum: 4 }
  validates :exp_month, presence: true
  validates :exp_year,  presence: true

  
  belongs_to :user
  
end
