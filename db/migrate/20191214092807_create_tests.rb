class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string      :name
      t.text        :text
      t.text        :image
      t.timestamps null: true
      t.timestamps
    end
  end
end
