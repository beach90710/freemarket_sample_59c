FactoryBot.define do

  factory :credit_payment do
    user_id   {"1"}
    number    {"12345678"}
    cvc       {"111"}
    exp_month {"1"}
    exp_year  {"19"}
  end

end