require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')

class FishTest < Minitest::Test

  def setup()
    @fish_1 = Fish.new("Roberta", "200g")
    @fish_2 = Fish.new("Rodriguez", "1000g")
    @fish_3 = Fish.new("Maria","400g")
    @fish_4 = Fish.new("Carlos", "100g")
  end

  def test_can_create_fish_1()
    assert_equal(Fish, @fish_1.class())
  end

  def test_can_create_fish_2()
    assert_equal(Fish, @fish_2.class())
  end

  def test_can_create_fish_3()
    assert_equal(Fish, @fish_3.class())
  end

  def test_can_create_fish_4()
    assert_equal(Fish, @fish_4.class())
  end

  def test_weight_fish_1()
    assert_equal("200g", @fish_1.weight())
  end

  def test_weight_fish_2()
    assert_equal("1000g", @fish_2.weight())
  end

  def test_weight_fish_3()
    assert_equal("400g", @fish_3.weight())
  end

  def test_weight_fish_4()
    assert_equal("100g", @fish_4.weight())
  end

  def test_name_fish_1()
    assert_equal("Roberta", @fish_1.fish_name())
  end

  def test_name_fish_2()
    assert_equal("Rodriguez", @fish_2.fish_name())
  end

  def test_name_fish_3()
    assert_equal("Maria", @fish_3.fish_name())
  end

  def test_name_fish_4()
    assert_equal("Carlos", @fish_4.fish_name())
  end

end
