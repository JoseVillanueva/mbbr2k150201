class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.date :date_register
      t.text :description
      t.string :weight_picture
      t.string :height_picture
      t.string :type_picture
      t.string :picture
      t.references :medical_insurance, index: true, foreign_key: true
      t.references :medical_center, index: true, foreign_key: true
      t.references :medicine, index: true, foreign_key: true
      t.references :medical_exam, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.references :child, index: true, foreign_key: true
      t.references :health_problem, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
