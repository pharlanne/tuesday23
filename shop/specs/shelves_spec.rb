require ("minitest/autorun")
require_relative("../shelves") 
require_relative("../groceries")

class TestShelves < MiniTest::Test



  def setup
    @groceries1=Groceries.new("milk",3)
    @groceries2=Groceries.new("bread",1)
    @groceries3=Groceries.new("butter",2)
  end

  def test_groceries_name
    assert_equal("milk", @groceries1.name)
  end
end