class ChangeDataDetailToItem < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :detail, :text
  end
end
