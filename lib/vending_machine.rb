require_relative 'product'
require_relative 'coin'
require_relative 'change'
require_relative 'stock'

class VendingMachine
  attr_reader :products, :coins

  def initialize
    @products = Stock.new.product_stock
    @coins = Change.new
  end

  def start
    display_products
  end

  def display_products 
    @products.each { |product|
      puts "Select #{product.name} for #{product.price}p"
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

end
