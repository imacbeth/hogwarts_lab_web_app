require_relative("../models/students.rb")
require_relative("../models/house.rb")
require("pry")

Student.delete_all()
House.delete_all


  house1 = House.new({
    'name' => "Gryffindor",
    'logo_url' => "gryffindor.jpg"
    })

    house2 = House.new({
      'name' => "Slytherin",
      'logo_url' => "slytherin.png"
      })

    house3 = House.new({
        'name' => "Ravenclaw",
        'logo_url' => "ravenclaw.jpg"
        })

      house4 = House.new({
        'name' => "Hufflepuff",
        'logo_url' => "hufflepuff.png"
        })

  house1.save()
  house2.save()
  house3.save()
  house4.save()

  student1 = Student.new({
   'first_name'=> "Harry",
   'last_name' => "Potter",
   'house_id' => house1.id,
   'age' => 17
    })

    student1.save()

  binding.pry
nil
