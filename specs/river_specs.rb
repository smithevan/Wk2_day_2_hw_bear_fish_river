require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class RiverTest <MiniTest::Test

  def setup ()
    @river1 = River.new("Fraser")

    @fish1 = Fish
  end

  def test_get_river_name
    assert_equal("Fraser", @river1.name)
  end




end
