class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :idcard
      t.string :name
      t.string :last_name
      t.string :sec_last_name
      t.date :date_of_birth
      t.string :address
      t.string :email
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
