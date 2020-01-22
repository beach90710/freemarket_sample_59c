class AddStatusToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :status, :string, default: '出品中'
  end
end
