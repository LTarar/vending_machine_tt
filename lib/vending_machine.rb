# require 'product'
# require 'coin'
# require 'change'

class VendingMachine
  attr_reader :products, :coins

  def initialize
    @products = default_products
    @coins = Change.new
  end

  def display_products 
    @products.each { |product|
      product
    }
  end

  def release_item(index,payment)
    item = @products[index]
    item.release if item.price == payment
    item
  end

  def reload_item(index,amount)
    item = @products[index]
    item.reload(amount)
    item
  end

  private

  def default_products
    [
      Product.new('Coke',70),
      Product.new('Pepsi',60), 
      Product.new('7up',55),
      Product.new('Fanta',55),
      Product.new('Water',40)
    ]
  end

end
