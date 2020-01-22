class ItemDetail < ActiveRecord::Migration[5.0]
  def change
    create_table :item_detail do |t|
      t.varchar(255) :name
      t.text :image
      t.string :prefecture
      t.string :price
      t.references :category foreign_key: true
      t.references :brand foreign_key: true
    end
  end
end
