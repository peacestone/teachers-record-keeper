teacher1 = Teacher.create(name: "tom", username:"super", email: "email@gmail.com")

teacher2 = Teacher.create(name: "zack", username:"saturn", email: "samel@yahoo.com" )

subject1 = Subject.create(name: "Math")

subject2 = Subject.create(name: "Science")

student1 = Student.create(first_name: "Bryan", last_name: "jones", dob: 220600)
student2 = Student.create(first_name: "Ron", last_name: "emmerman", dob: 110402)
student1 = Student.create(first_name: "zalmen", last_name: "kohen", dob: 220600)

mark1 = Mark.create(mark: "99%")
mark2 = Mark.create(mark: "85%")

test1 = Test.create(date: 220315, name: "Histroy of China")
test2 = Test.create(date: 220111, name: "Test on Math, pages 22 - 26")
test3 = Test.create(date: 5555432, name: "Test 12")

teacher2.subjects << subject2
subject2.tests << test2
test2.marks << mark1
test2.marks << mark2

student1.marks << mark1
student1.marks << mark2
student2.marks << mark2
