require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal", passengers = [])
    @person = Person.new("Craig", 27)
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
    assert_equal("Craig", @person.name)
  end

  def test_return_person_age
    assert_equal(27, @person.age)
  end

  def test_return_passenger_count
    assert_equal(0, @bus.passenger_count)
  end


end
