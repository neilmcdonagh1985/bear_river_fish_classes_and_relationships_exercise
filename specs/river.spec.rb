require('Minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')

class TestRiver < Minitest::Test

  def setup
    @river = River.new('Forth')
    @fish1 = Fish.new('Angus')
    @fish2 = Fish.new('Barry')
    @fish3 = Fish.new('Olly')
  end

  def test_river_name
    assert_equal('Forth', @river.name)
  end

  def test_fish
    assert_equal([], @river.fish)
  end

  def test_add_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3, @river.fish.count)
  end

  def test_allow_bear_to_get_fish__yes
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.allow_bear_to_get_fish(@fish2)
    assert_equal(2, @river.fish.count)
  end

  def test_allow_bear_to_get_fish__no
    assert_equal(0, @river.allow_bear_to_get_fish(@fish2))
  end

  def test_fish_count
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_count)
  end

end
