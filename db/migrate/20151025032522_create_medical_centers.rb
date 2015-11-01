class CreateMedicalCenters < ActiveRecord::Migration
  def change
    create_table :medical_centers do |t|
      t.string :name
      t.string :tax_identification
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
