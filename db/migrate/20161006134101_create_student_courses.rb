class CreateStudentCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :student_courses do |t|
      t.integer :student_id, index: true
      t.integer :course_id, index: true

      t.timestamps
    end
  end
end
