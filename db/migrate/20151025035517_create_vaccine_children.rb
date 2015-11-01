class CreateVaccineChildren < ActiveRecord::Migration
  def change
    create_table :vaccine_children do |t|
      t.date :date_suggested
      t.date :date_register
      t.string :dosis_vacune
      t.string :status
      t.integer :weight_picture
      t.integer :height_picture
      t.string :type_picture
      t.string :picture
      t.references :medical_center, index: true, foreign_key: true
      t.references :vaccine_plan, index: true, foreign_key: true
      t.references :child, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
