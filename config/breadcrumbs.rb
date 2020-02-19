crumb :root do
  link "mercari", items_path
end

crumb :mypage do
  link "マイページ", mypage_index_path
  parent :root
end

crumb :mypage_profile do
  link "プロフィール", profile_mypage_index_path
  parent :mypage
end

crumb :mypage_logout do
  link "ログアウト", logout_mypage_index_path
  parent :mypage
end