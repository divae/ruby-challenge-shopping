class CreateReportFees < ActiveRecord::Migration[7.0]
  def change
    create_table :report_fees do |t|
      t.datetime :date_init
      t.datetime :date_fin
      t.decimal :amount
      t.integer :percentage

      t.timestamps
    end
  end
end
