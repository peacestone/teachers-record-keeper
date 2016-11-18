teacher1 = Teacher.create(name: "tom", username:"super", email: "email@gmail.com")

teacher2 = Teacher.create(name: "zack", username:"saturn", email: "samel@yahoo.com" )

subject1 = Subject.create(name: "Math")

subject2 = Subject.create(name: "Science")

student1 = Student.create(first_name: "Bryan", last_name: "jones", dob: 220600)
student2 = Student.create(first_name: "Ron", last_name: "emmerman", dob: 110402)

mark1 = Mark.create(mark: "99%")
mark1 = Mark.create(mark: "85%")

test1 = Test.create(date: 220315, name: "Histroy of China")
test1 = Test.create(date: 220111, name: "Test on Math, pages 22 - 26")
