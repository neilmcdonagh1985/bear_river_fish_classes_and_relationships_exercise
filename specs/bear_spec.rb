require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new('Pooh', 'grizzly')
    @fish1 = Fish.new('Archie')
    @fish2 = Fish.new('Lenny')
    @river = River.new('Tay')
  end

  def test_name
    assert_equal('Pooh', @bear.name)
  end

  def test_type
    assert_equal('grizzly', @bear.type)
  end

  def test_contents_of_stomach
    assert_equal([], @bear.stomach)
  end

  def test_take_fish_from_river__successful
    @bear.take_fish(@river, @fish1)
    @bear.take_fish(@river, @fish2)
    assert_equal(2, @bear.stomach.count)
  end

  def test_take_fish_from_river__unsuccessful
    assert_equal(0, @bear.stomach.count)
  end

  def test_roar
    assert_equal('ROOOAAARRR', @bear.roar)
  end

end
