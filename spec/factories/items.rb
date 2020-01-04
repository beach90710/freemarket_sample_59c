FactoryBot.define do

  factory :item do
    name                      {"item_name"}
    condition                 {"kkk@gmail.com"}
    detail                    {"00000000"}
    price                     {"00000000"}
    shipping_charge_fee       {"1000"}
    shipping_method           {"ゆうパック"}
    shipping_origin           {"Hokkaido"}
    days_to_shipping          {"100"}
    user_id                   {"1"}
  end

end