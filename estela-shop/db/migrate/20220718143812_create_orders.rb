class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :amount
      t.references :merchant, null: false, foreign_key: true
      t.references :shopper, null: false, foreign_key: true

      t.timestamps
    end
  end
end
