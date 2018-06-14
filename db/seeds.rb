require_relative("../models/students.rb")
require_relative("../models/house.rb")
require("pry")

Student.delete_all()
House.delete_all

student1 = Student.new({
 'first_name'=> "Harry",
 'last_name' => "Potter",
 'house' =>'Griffindor',
 'age' => 17
  })

  student1.save()

  house1 = House.new({
    'name' => "Griffindor",
    'logo_url' => "gryffindor.jpg"
    })

  house1.save()

  binding.pry
nil
