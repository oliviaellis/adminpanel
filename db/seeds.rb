# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student1 = Student.create(first_name: 'Olivia', last_name: 'Ellis', age: '23', education: 'college')
student2 = Student.create(first_name: 'Emily', last_name: 'Jensen', age: '23', education: 'college')
cohort = Cohort.create(name: 'SEI Oct 2018')
course = Course.create(name: 'Software Engineering Intensive', hours: 400)
instructor = Instructor.create(first_name: 'Michael', last_name: 'Law', age: '29??', education: 'highschool', salary: 40000)
instructor2 = Instructor.create(first_name: 'Orlando', last_name: 'Caraballo', age: '35', education: 'college', salary: 50000)