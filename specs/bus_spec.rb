require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal", ["Tom", "Stephen", "Jennifer"])
    @person1 = Person.new("Craig", 27)
    @person2 = Person.new("Tom", 30)

  end

  def test_return_route
    assert_equal("22", @bus.route_no)
  end

  def test_return_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_bus_drive
    assert_equal("Brum brum", @bus.bus_drive)
  end

  def test_return_person_name
    assert_equal("Craig", @person1.name)
  end

  def test_return_person_age
    assert_equal(27, @person1.age)
  end

  def test_return_passenger_count
    assert_equal(3, @bus.passenger_count)
  end

  def test_add_passenger
    @bus.add_passenger(@person1)
    assert_equal(4, @bus.passenger_count)
  end

  def test_remove_passenger
    @bus.remove_passenger(@person2)
    assert_equal(3, @bus.passenger_count)
  end

end
