# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Result.destroy_all
Student.destroy_all
Subject.destroy_all
Standard.destroy_all
Teacher.destroy_all
Result.reset_pk_sequence
Student.reset_pk_sequence
Standard.reset_pk_sequence
Teacher.reset_pk_sequence
standard = 8
3.times do |std|
	standard+=1
	Standard.new(
		id:std+1,
		standard:standard+1 
		).save
end
puts "Created Standard #{Standard.count}"

Teacher.create([
{
	id:1,
	name: "Mrs_Ohol"
},
{
	id:2,
	name: "Mrs_Pawar"},
{
	id:3,
	name: "Mr.Gujar"
},
{
	id:4,
	name: "Mrs_Subramanium"
}])
puts "Created Teacher #{Teacher.count}"

Subject.create([
{
	id:1,
	name: "Biology",
	standard_id: 1,
	teacher_id: 1
},
{
	id:2,
	name: "Computers",
	standard_id: 3,
	teacher_id: 2
},
{
	id:3,
	name: "Physics",
	standard_id: 1,
	teacher_id: 3
},
{
	id:4,
	name: "Mathematics",
	standard_id: 2,
	teacher_id: 4
}])
puts "Created Subjects #{Teacher.count}"

Student.create([{
	id:1,
	name: "Tanvi Garud",
	percent: 91.5,
	standard_id:1
},
{
	id:2,
	name: "Neha Date",
	percent: 84.0,
	standard_id:2	
},
	id:3,
	name: "Shweta Sathaye",
	percent: 77.0,
	standard_id:3])
puts "Created Students #{Student.count}"

Result.create([{
	id:1,
	mark: 85,
	student_id: 1,
	subject_id: 1
},
{	id:2,
	mark: 98,
	student_id: 1,
	subject_id: 3
},
{
	id:3,
	mark: 84,
	student_id: 2,
	subject_id: 2	
},
{
	id:4,
	mark: 77,
	student_id: 3,
	subject_id: 4	
}])
puts "Created Results #{Result.count}"
