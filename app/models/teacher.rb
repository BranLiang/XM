class Teacher < ApplicationRecord
  has_many :student_teachers, :dependent => :destroy
  has_many :students, through: :student_teachers

  has_many :courses, :dependent => :destroy
end
