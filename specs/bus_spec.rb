require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class TestBus < MiniTest::Test

  def setup

    @bus = Bus.new(44, "Stonehaven")
    @bobby = Person.new("Bobby",91)
    @tommy = Person.new("Tommy",19)
    @mikey = Person.new("Mikey",22)
    @steve = Person.new("Steve",34)
    @bus_stop = BusStop.new("Stonehaven Bus Stop")


  end

  def test_bus_sound
    donkey = @bus.bus_sound("Brum brum")
    assert_equal("Brum brum", donkey)
  end

  def test_bus_count
    assert_equal(@bus.bus_count,0)
  end

  def test_add_passenger
    @bus.add_passenger(@bobby)
    assert_equal(@bus.bus_count, 1)
  end

  def test_remove_passenger
    assert_equal(@bus.bus_count, 0)
  end

  def test_empty_bus
    assert_equal(@bus.bus_count, 0)
  end

  def test_pick_up_drop_off
    add_to_queue(@bobby)
    assert_equal(@bus_stop.length(@queue), 0)
    assert_equal(@bus.length, 1)
  end


end
