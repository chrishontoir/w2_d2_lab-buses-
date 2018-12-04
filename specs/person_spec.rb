require('minitest/autorun')
require('minitest/rg')
require_relative('../person')
require_relative('../bus')
require_relative('../bus_stop')

class PersonTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal", [@person1, @person2, @person3])

    @person1 = Person.new("Craig", 27)
    @person2 = Person.new("Tom", 30)
    @person3 = Person.new("James", 12)
    @person4 = Person.new("Kyle", 75)
    @person5 = Person.new("Jenny", 34)
    @person6 = Person.new("Harper", 22)

  end

  def test_return_person_name
    assert_equal("Craig", @person1.name)
  end

  def test_return_person_age
    assert_equal(27, @person1.age)
  end

end
