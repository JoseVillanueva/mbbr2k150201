class CreateChildDevelopments < ActiveRecord::Migration
  def change
    create_table :child_developments do |t|
      t.string :name
      t.string :months

      t.timestamps null: false
    end
  end
end
