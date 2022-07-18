class CreateFees < ActiveRecord::Migration[7.0]
  def change
    create_table :fees do |t|
      t.datetime :date_init
      t.datetime :date_fin
      t.decimal :amount
      t.integer :percentage
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
