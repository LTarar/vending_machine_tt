require_relative 'change'
require_relative 'stock'
require_relative 'product'
require_relative 'coin'

class VendingMachine
  attr_reader :products, :coins

  def initialize
    @products = Stock.new.product_stock
    @coins = Change.new.coins
  end

  def start
    display_products
    select_item
  end

  def display_products 
    puts 'Please choose your drink:'
    @products.each { |product|
      puts "'#{product.name}' for #{product.price}p"
    }
  end

  def select_item
    puts "Please type in item name:"
    item = gets
    product_names_array = []

    @products.each { |product|
        product_names_array << product.name
      }
    
    raise "Sorry, not available" unless product_names_array.include?item
  end

  # def release_item(index,payment)
  #   item = @products[index]
  #   item.release if item.price == payment
  #   item
  # end

  def reload_item(index,amount)
    item = @products[index]
    item.reload(amount)
    item
  end

end
