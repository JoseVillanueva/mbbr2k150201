class CreateHealthProblems < ActiveRecord::Migration
  def change
    create_table :health_problems do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
