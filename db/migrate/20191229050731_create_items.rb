class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name,                     null: false, index: true
      t.string :conditon,                 null: false
      t.string :detail
      t.integer :price,                   null: false
      t.integer :shipping_charge_fee,     null: false
      t.string :shipping_method,          null: false
      t.string :shipping_origin,          null: false
      t.string :days_to_shipping,         null: false
      t.references :user,                 foreign_key: true
      t.timestamps
    end
  end
end
