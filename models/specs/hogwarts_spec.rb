require('minitest/autorun')
require_relative('../students.rb')

class TestStudent < MiniTest::Test

  def setup
    options = {'id' =>1, 'first_name'=> "Harry", 'last_name' => "Potter", 'house' =>'Griffindor', 'age' => 17}

    @student1 = Student.new(options)
  end

  def test_student_attributes
    assert_equal("Harry", @student1.first_name)
    assert_equal("Potter", @student1.last_name)
    assert_equal(17, @student1.age)

  end

end
