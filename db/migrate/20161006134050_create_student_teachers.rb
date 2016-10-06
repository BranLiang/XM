class CreateStudentTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :student_teachers do |t|
      t.integer :student_id, index: true
      t.integer :teacher_id, index: true

      t.timestamps
    end
  end
end
