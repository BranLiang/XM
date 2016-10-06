# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

MULTIPLIER = 10

puts "Destroy all models"
Teacher.destroy_all
Student.destroy_all
Course.destroy_all
StudentTeacher.destroy_all
StudentCourse.destroy_all
puts "All models destroyed"

puts "Seeding students..."
MULTIPLIER.times do
  new_student = Student.new
  new_student.name = 'STU-' + Faker::Name.first_name
  new_student.save!
end
puts "Students seeded!"

puts "Seeding teachers..."
MULTIPLIER.times do
  new_teacher = Teacher.new
  new_teacher.name = 'TEA-' + Faker::Name.last_name
  new_teacher.save!
end
puts "Teachers seeded!"

puts "Seeding Courses..."
(2 * MULTIPLIER).times do
  new_course = Course.new
  new_course.name = Faker::Educator.course
  new_course.teacher = Teacher.all.sample
  new_course.save!
end
puts "Courses seeded"

puts "Seeding teacher_students..."
Teacher.find_each do |teacher|
  teacher.students << Student.all.sample(MULTIPLIER / 3)
end
puts "Teachers students seeded"

puts "Sedding Student_courses..."
Course.find_each do |course|
  course.students << Student.all.sample(MULTIPLIER / 3)
end
puts "Student courses seeded"

puts "Done!"
