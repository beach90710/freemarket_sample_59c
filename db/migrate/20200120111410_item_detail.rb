class ItemDetail < ActiveRecord::Migration[5.0]
  def change
    create_table :item_detail do |t|
      t.varchar(255) :name
      t.text :message
      t.timestamps
      
    end
    add_foreign_key :item_detail, :images, column: :image

    add_foreign_key :item_detail, :items, column: :name
    add_foreign_key :item_detail, :items, column: :conditon
    add_foreign_key :item_detail, :items, column: :detail
    add_foreign_key :item_detail, :items, column: :text
    add_foreign_key :item_detail, :items, column: :price
    add_foreign_key :item_detail, :items, column: :category
    add_foreign_key :item_detail, :items, column: :brand 

    add_foreign_key :item_detail, :users, column: :prefecture
    add_foreign_key :item_detail, :users, column: :nickname
  end
end

