FactoryBot.define do

  factory :user do
    nickname              {"テスト太郎"}
    email                 {"test@gmail.com"}
    password              {"123456a"}
    password_confirmation {"123456a"}
    first_name            {"山田"}
    last_name             {"太郎"}
    first_name_kana       {"ヤマダ"}
    last_name_kana        {"タロウ"}
    birth_year            {"1990"}
    birth_month           {"1"}
    birth_day             {"19"}
  end

end