class CreateVaccinePlans < ActiveRecord::Migration
  def change
    create_table :vaccine_plans do |t|
      t.integer :nmes
      t.references :vaccine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
