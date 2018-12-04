require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal", [@person1, @person2, @person3])

    @person1 = Person.new("Craig", 27)
    @person2 = Person.new("Tom", 30)
    @person3 = Person.new("James", 12)
    @person4 = Person.new("Kyle", 75)
    @person5 = Person.new("Jenny", 34)
    @person6 = Person.new("Harper", 22)

    @bus_stop = BusStop.new("Marchmont", [@person4, @person5, @person6])


    # @stop1 = [@person1, @person2]
    # @stop2 = [@person3, @person4]
    # @stop3 = [@person5, @person6]

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

  def test_empty_bus
    @bus.empty_bus
    assert_equal(0, @bus.passenger_count)
  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@person1)
    assert_equal(4, @bus_stop.queue_count)
  end

  def test_add_all_people_from_stop
    passengers_waiting = @bus_stop.queue
    @bus.add_all_passengers(passengers_waiting)
    assert_equal(6, @bus.passenger_count)
  end

end
