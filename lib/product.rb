class Product
  attr_reader :name, :price, :quantity

  def initialize(name,price,quantity=10)
    @name = name
    @price = price
    @quantity = quantity
  end

end