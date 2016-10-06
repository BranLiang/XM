class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :teacher_id, index: true

      t.timestamps
    end
  end
end
