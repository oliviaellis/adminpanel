# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# student1 = Student.create(first_name: 'Olivia', last_name: 'Ellis', age: '23', education: "Bachelor's Degree")
# student2 = Student.create(first_name: 'Emily', last_name: 'Jensen', age: '23', education: "Bachelor's Degree")
# cohort = Cohort.create(name: 'SEI Oct 2018')
# course = Course.create(name: 'Software Engineering Intensive', hours: 400)
# instructor = Instructor.create(first_name: 'Michael', last_name: 'Law', age: '27', education: 'High School', salary: 40000)
# instructor2 = Instructor.create(first_name: 'Orlando', last_name: 'Caraballo', age: '35', education: "Bachelor's Degree", salary: 50000)

# admin = Admin.create(first_name: 'Master', last_name: 'Hand', password: '123456', email: 'masterhand@smash.com')

students = [
  ['Luigi', 'Mario', 23, "High School"],
  ['Princess', 'Zelda', 16, "High School"],
  ['Ness', 'Earthbound', 13, ""],
  ['Mario', 'Mario', 23, "High School"],
  ['Donkey', 'Kong', 20, ""],
  ['Diddy', 'Kong', 12, ""],
  ['Mega', 'Man', 29, "High School"],
  ['Pokemon', 'Trainer', 18, "High School"],
  ['Young', 'Link', 9, ""]
]

students.each do |fn, ln, a, e|
  Student.create(first_name: fn, last_name: ln, age: a, education: e)
end

instructors = [
  ['Princess', 'Peach', 22, "Bachelor's Degree"],
  ['Champion', 'Link', 20, "High School", 50000],
  ['Sheik', 'the Sheikah', 16, "High School", 50000],
  ['Fox', 'McCloud', 30, "High School", 50000],
  ['Doctor', 'Mario', 40, "PhD", 100000]
]

instructors.each do |fn, ln, a, e, s|
  Instructor.create(first_name: fn, last_name: ln, age: a, education: e, salary: s)
end

courses = [
  ['Praying 101', 1000],
  ['Food Items and Healing', 200],
  ['Stealth', 200],
  ['Aerodynamics', 400],
  ['Anatomy', 200]
]

courses.each do |name, hours|
  Course.create(name: name, hours: hours)
end

cohorts = ["I'm Imprisoned, Now What?", "Cooking with Link", "Advanced Culinary Healing",
 "Sheikah History", "Flight Basics", "Autoheals"]

 cohorts.each do |name|
   Cohort.create(name: name)
 end
