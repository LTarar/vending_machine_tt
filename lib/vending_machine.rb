require 'product'
require 'coin'

class VendingMachine
  attr_reader :products, :coins

  def initialize
    @products = default_products
    @coins = default_coins
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

  def default_coins
    [
      Coin.new(1,10),
      Coin.new(2,10),
      Coin.new(5,10),
      Coin.new(10,10),
      Coin.new(20,10),
      Coin.new(50,10),
      Coin.new(100,10),
      Coin.new(200,10),
    ]
  end

end
