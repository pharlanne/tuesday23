require("minitest/autorun")
require_relative("../groceries")

class TestGroceries < MiniTest::Test

  def setup
    @groceries1=Groceries.new("juice",2)
  end

  def test_grocerie_price
    assert_equal(2,@grocerie1.price)
  end
end