class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :last_name
      t.string :sec_last_name
      t.references :medical_center, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
