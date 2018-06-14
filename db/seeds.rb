require_relative("../models/students.rb")
require("pry")

Student.delete_all()

student1 = Student.new({
 'first_name'=> "Harry",
 'last_name' => "Potter",
 'house' =>'Griffindor',
 'age' => 17
  })

  student1.save()

  binding.pry
nil
