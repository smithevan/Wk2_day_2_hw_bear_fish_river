require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')

class BearTest <MiniTest::Test

  def setup ()
    @bear1 = Bear.new("Yogi", "Brown")

    @fish = Fish.new("George")
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_get_bear_type
    assert_equal("Brown", @bear1.type)
  end

  def test_counting_fish
    assert_equal(0, @bear1.fish_count)
  end

  def test_add_fish
    @bear1.add_fish(@fish)
    assert_equal(1, @bear1.fish_count)
  end

  def test_roar
    roar = @bear1.roar()
    assert_equal("Roaar", roar)
  end


end
