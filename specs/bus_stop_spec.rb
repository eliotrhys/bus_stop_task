require ("minitest/autorun")
require ("minitest/rg")
require_relative("../person.rb")
require_relative("../bus.rb")
require_relative("../bus_stop.rb")

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Stonehaven Bus Stop")
    @bobby = Person.new("Bobby",91)
  end

  def test_add_to_queue
    value = @bus_stop.add_to_queue(@bobby).length
    assert_equal(value, 1)
  end

end
