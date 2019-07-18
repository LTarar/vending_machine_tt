class Stock 
  attr_reader :product_stock

  def initialize 
    @product_stock = load_products
  end

  private

  def load_products
    [
      Product.new('Coke',70),
      Product.new('Pepsi',60), 
      Product.new('7up',55),
      Product.new('Fanta',55),
      Product.new('Water',40)
    ]
  end
end