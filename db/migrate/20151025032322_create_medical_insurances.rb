class CreateMedicalInsurances < ActiveRecord::Migration
  def change
    create_table :medical_insurances do |t|
      t.string :nom_seguro
      t.string :name
      t.string :tax_identification
      t.string :address
      t.string :website
      t.string :email

      t.timestamps null: false
    end
  end
end
