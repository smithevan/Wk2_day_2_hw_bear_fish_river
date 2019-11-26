require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class RiverTest <MiniTest::Test

  def setup ()
    @fish1 = Fish.new("George")
    @fish2 = Fish.new("Harry")
    @fish3 = Fish.new("William")

    @all_fish = [@fish1, @fish2, @fish3]

    @bear1 = Bear.new("Yogi", "Brown")
    @bear2 = Bear.new("Dan", "Grizzly")

    @river1 = River.new("Fraser", @all_fish)
  end

  def test_get_river_name
    assert_equal("Fraser", @river1.name)
  end

  def test_number_of_fish
    assert_equal(3, @river1.number_of_fish)
  end

  def test_remove_fish_from_river
    @river1.remove_fish(@fish1)
    assert_equal(2, @river1.number_of_fish)
  end

  def test_fish_removed_when_bear_eats_and_roars
    @river1.remove_fish(@fish1)
    @bear1.add_fish(@fish1)
    roar = @bear1.roar()
    assert_equal(2, @river1.number_of_fish)
    assert_equal(1, @bear1.fish_count)
    assert_equal("Roaar", roar)

  end




end
