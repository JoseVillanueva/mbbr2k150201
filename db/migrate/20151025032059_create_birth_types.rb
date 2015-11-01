class CreateBirthTypes < ActiveRecord::Migration
  def change
    create_table :birth_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
