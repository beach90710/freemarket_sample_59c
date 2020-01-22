class CreateCreditPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_payments do |t|
      t.timestamps          null: false
      t.references :user,   null: false, foreign_key: true
      t.integer :number,    null: false
      t.integer :cvc,       null: false
      t.integer :exp_month, null: false
      t.integer :exp_year,  null: false 
    end
  end
end
