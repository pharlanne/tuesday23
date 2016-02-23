
require("minitest/autorun")
require_relative("../shopper")
require_relative("../shelves")
require_relative("../groceries")

class TestBuyer < MiniTest::Test

  def setup
    @shopper1=Shopper.new("jo",50)
    @shopper2=Shopper.new("bob",30)

    @groceries1=Groceries.new("milk",3)
    @groceries2=Groceries.new("bread",1)
    @groceries3=Groceries.new("butter",2)

    @groceries_group=[@groceries1, @groceries2,@groceries3]

    @shelves = Shelves.new(@groceries_group)
  end 

  def test_shopper_has_name
    assert_equal("jo",@shopper1.name)
  end

  def test_basket_empty
    assert_equal([],@shopper1.basket)
  end

  def test_wallet_start_full
    assert_equal(50,@shopper1.wallet)
  end

  def test_number_items_in_basket
    @shopper1.add_item_to_basket(@groceries1)
    assert_equal(1, @shopper1.basket.length)
  end
end