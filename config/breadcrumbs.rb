crumb :root do
  link "mercari", items_path
end

crumb :sellitem do
  link "商品出品",  new_item_path
  parent :root
end