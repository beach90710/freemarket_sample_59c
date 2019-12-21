FactoryBot.define do
  factory :user do
    nickname              {"testman"}
    email                 {"test@gmail.com"}
    first_name            {"山田"}
    last_name             {"太朗"}
    first_name_kana       {"ヤマダ"}
    last_name_kana        {"タロウ"}
    birthday              {"2018-10-10"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end
end