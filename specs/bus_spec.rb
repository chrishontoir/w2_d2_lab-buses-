require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal")

  end


end
