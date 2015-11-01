class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.date :date_of_birth
      t.time :time_of_birth
      t.string :weight
      t.string :size
      t.string :idcard
      t.references :customer, index: true, foreign_key: true
      t.references :medical_insurance, index: true, foreign_key: true
      t.references :blood_type, index: true, foreign_key: true
      t.references :birth_type, index: true, foreign_key: true
      t.references :medical_center, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
