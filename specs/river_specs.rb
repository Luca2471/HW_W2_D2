require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Shenandoah")
  end

  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_river_name
      assert_equal("Shenandoah", @river.river_name)
  end

  def test_amount_of_fish_in_the_river()
    assert_equal(4, @river.fish_length)
  end
end
