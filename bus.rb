class Bus

  attr_reader :route_no, :destination, :passengers

  def initialize(route_no, destination, passengers)
    @route_no = route_no
    @destination = destination
    @passengers = passengers
  end

  def bus_drive
    return "Brum brum"
  end

  def passenger_count
    return @passengers.length
  end

end
