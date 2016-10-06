class Student < ApplicationRecord
  has_many :student_teachers, :dependent => :destroy
  has_many :teachers, through: :student_teachers

  has_many :student_courses, :dependent => :destroy
  has_many :courses, through: :student_courses
end
