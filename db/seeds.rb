# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student1 = Student.create(first_name: 'Olivia', last_name: 'Ellis', age: '23', education: "Bachelor's Degree")
student2 = Student.create(first_name: 'Emily', last_name: 'Jensen', age: '23', education: "Bachelor's Degree")
cohort = Cohort.create(name: 'SEI Oct 2018')
course = Course.create(name: 'Software Engineering Intensive', hours: 400)
instructor = Instructor.create(first_name: 'Michael', last_name: 'Law', age: '27', education: 'High School', salary: 40000)
instructor2 = Instructor.create(first_name: 'Orlando', last_name: 'Caraballo', age: '35', education: "Bachelor's Degree", salary: 50000)
admin = Admin.create(first_name: 'Master', last_name: 'Hand', password: '123456', email: 'masterhand@smash.com')
