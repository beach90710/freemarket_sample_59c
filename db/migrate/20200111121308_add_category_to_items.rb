class AddCategoryToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :Category, foreign_key: true
  end
end
