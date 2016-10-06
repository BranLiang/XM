class Course < ApplicationRecord
  has_many :student_courses, :dependent => :destroy
  has_many :students, through: :student_courses

  belongs_to :teacher
end
