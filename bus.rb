class Bus

  attr_reader :route_no, :destination

  def initialize(route_no, destination)
    @route_no = route_no
    @destination = destination
  end

  def bus_drive
    return "Brum brum"
  end
  
end
