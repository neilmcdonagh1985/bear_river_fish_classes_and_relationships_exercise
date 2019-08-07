require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river')
require_relative('../bear')

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new('Gary')
  end

  def test_name
    assert_equal('Gary', @fish.name)
  end

end
