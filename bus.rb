class Bus



  def initialize(route, destination)

    @route = route
    @destination = destination
    @passengers = []

  end

  def bus_sound(sound)
    return sound
  end


  def bus_count
    return @passengers.length
  end

  def add_passenger(person)
    @passengers << person
  end

  def remove_passenger
    @passengers.pop
  end

  def empty_bus
    @passengers = nil
  end

end
