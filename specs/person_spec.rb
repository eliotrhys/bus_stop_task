require ("minitest/autorun")
require ("minitest/rg")
require_relative("../person.rb")
require_relative("../bus.rb")

class TestPerson < MiniTest::Test
  def setup
    @bobby = Person.new("Bobby",91)
    @tommy = Person.new("Tommy",19)
    @mikey = Person.new("Mikey",22)
    @steve = Person.new("Steve",34)

  end




end
