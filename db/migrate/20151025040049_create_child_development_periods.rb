class CreateChildDevelopmentPeriods < ActiveRecord::Migration
  def change
    create_table :child_development_periods do |t|
      t.date :date_contol
      t.string :weight
      t.string :size
      t.string :head_circunference
      t.references :child, index: true, foreign_key: true
      t.references :child_development, index: true, foreign_key: true
      t.references :medical_center, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
