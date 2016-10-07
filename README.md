# XiaoMao Interview Test

> RESTful api, models: Student, Teacher, Course.

## Installation  
* Download the file  
* `bundle install`  
* `rails db:setup`  
* `rails s`  

## Usage  
* GET student information as well as his teacher and course information.  
`curl -i -X GET http://localhost:3000/api/v1/students/1.json`  
* GET all teachers information  
`curl -i -X GET http://localhost:3000/api/v1/teachers.json`  
* DELETE a teachers and courses associated  
`curl -i -X DELETE http://localhost:3000/api/v1/teachers/1.json`
