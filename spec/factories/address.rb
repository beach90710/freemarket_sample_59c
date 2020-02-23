FactoryBot.define do

  factory :address do
    post_first_name      {"テスト"}
    post_last_name       {"太郎"}
    post_first_name_kana {"テスト"}
    post_last_name_kana  {"タロウ"}
    post_number          {"1234567"}
    prefecture           {"北海道"}
    city                 {"札幌市"}
    address_line         {"中央区１−１"}
    building             {"ビル１"}
    phone_number         {"12312345678"}
  end

end