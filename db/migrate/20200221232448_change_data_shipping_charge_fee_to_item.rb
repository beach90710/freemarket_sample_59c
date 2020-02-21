class ChangeDataShippingChargeFeeToItem < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :shipping_charge_fee, :string
  end
end
