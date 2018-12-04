class BusStop

  attr_reader :name, :queue

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def add_person_to_queue(person)
    @queue << person
  end

  def queue_count
    return @queue.length
  end

  # def add_all_passengers_to_bus()
  #   for person in @queue
  #     @bus.add_passenger(person)
  # end

  # def add_all_people(bus_stop)
  #   @bus.add_passenger()
  # end

end
