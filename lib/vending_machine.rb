require 'product'
require 'coin'

class VendingMachine
  attr_reader :products, :coins

  def initialize
    @products = default_products
    @coins = default_coins
  end

  def release_item(index)
    item = @products[index]
    item.release
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

  def default_coins
    [
      Coin.new(1),
      Coin.new(2),
      Coin.new(5),
      Coin.new(10),
      Coin.new(20),
      Coin.new(50),
      Coin.new(100),
      Coin.new(200),
    ]
  end

end
