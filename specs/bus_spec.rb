require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal")

  end

  def test_return_route
    assert_equal("22", @bus.route_no)
  end

  def test_return_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

end
