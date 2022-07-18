class CreateMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :email_string
      t.string :cif

      t.timestamps
    end
  end
end
