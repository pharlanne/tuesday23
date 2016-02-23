class Shopper

attr_accessor :name
attr_reader  :wallet, :basket

  def initialize(name,wallet)
    @name = name
    @basket=[]
    @wallet=50
  end

  def shopper_has_name
    return @name
  end

  def wallet_start_full
    return @wallet
  end
  
  def add_item_to_basket(groceries)
    @basket<<groceries
  end
end