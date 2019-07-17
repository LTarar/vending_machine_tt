require 'product'

class VendingMachine
  attr_reader :products

  def initialize
    @products = default_products
  end


  private
  
  def default_products
    [
      Product.new('Coke',70,10),
      Product.new('Pepsi',60,10), 
      Product.new('7up',55,10),
      Product.new('Fanta',55,10),
      Product.new('Water',40,10)
    ]
  end

end
