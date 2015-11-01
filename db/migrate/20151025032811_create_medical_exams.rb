class CreateMedicalExams < ActiveRecord::Migration
  def change
    create_table :medical_exams do |t|
      t.string :name
      t.string :exam_type

      t.timestamps null: false
    end
  end
end
