class Groceries

attr_reader :name, :price

  def initialize(name,price)
    @name= name
    @price= 2
  end

  def groceries_price
    return @price
  end
end