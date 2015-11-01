class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :tax_identification
      t.string :address
      t.string :phone
      t.string :website
      t.text :description

      t.timestamps null: false
    end
  end
end
