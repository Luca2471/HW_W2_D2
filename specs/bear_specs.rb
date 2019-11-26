require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Fozzie", "muppet")
  end

  def test_bear_name
    assert_equal("Fozzie", @bear.bear_name)
  end

  def test_can_bear_roar
    assert_equal("Wocka Wocka", @bear.bear_can_roar )
  end

  def test_bear_type
    assert_equal("muppet", @bear.type)
  end

  def test_bear_starts_with_no_fish()
    assert_equal(0, @bear.fish_count())
  end

  def test_bear_eats_fish()
    @bear.eats(@fish_1)
    assert_equal(1, @bear.fish_count())
  end

end
