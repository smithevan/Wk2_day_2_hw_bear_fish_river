require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')


class FishTest <MiniTest::Test

  def setup ()
    @fish = Fish.new("Jim")
  end

  def test_get_fish_name
    assert_equal("Jim", @fish.name)
  end

  # def test_get_number_of_fish
  #   for
  #   assert_equal(7, )
  # end





end
