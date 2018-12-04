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

end
