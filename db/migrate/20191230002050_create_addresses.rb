class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.timestamps                         null: false
      t.string      :post_first_name,      null: false
      t.string      :post_last_name,       null: false
      t.string      :post_first_name_kana, null: false
      t.string      :post_last_name_kana,  null: false
      t.references  :user,                 null: false, foreign_key: true
      t.integer     :post_number,          null: false
      t.string      :prefecture,           null: false
      t.string      :city,                 null: false
      t.string      :address_line,         null: false
      t.string      :building
      t.integer     :phone_number
    end
  end
end
