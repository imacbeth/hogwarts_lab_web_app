require_relative("../models/students.rb")
require_relative("../models/house.rb")
require("pry")

Student.delete_all()
House.delete_all


  house1 = House.new({
    'name' => "Griffindor",
    'logo_url' => "gryffindor.jpg"
    })

  house1.save()

  student1 = Student.new({
   'first_name'=> "Harry",
   'last_name' => "Potter",
   'house_id' => house1.id,
   'age' => 17
    })

    student1.save()

  binding.pry
nil
