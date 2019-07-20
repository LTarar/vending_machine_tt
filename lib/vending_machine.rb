require_relative 'change'
require_relative 'stock'
require_relative 'product'
require_relative 'coin'

class VendingMachine
  attr_reader :products, :coins

  def initialize
    @products = Stock.new.product_stock
    @coins = Change.new.coins
    @product_names = product_names
    @selection = nil
  end

  def start
    loop do
      display_products
      select_item
    end
  end

  def display_products 
    puts 'Please choose your drink:'
    @products.each_with_index do |product, index|
      if product.quantity.positive?
        puts "#{index + 1}. #{product.name}: #{product.price}p - #{product.quantity} remaining"
      end
    end
  end

  def select_item
    puts "Please type in item name:"
    item = gets.chomp.downcase
    raise "Sorry, not available" unless @product_names.include?(item)
  end

  def reload_item(index,amount)
    item = @products[index]
    item.reload(amount)
    item
  end

  private

  def product_names
    product_array = []
    @products.each { |product|
        product_array << product.name.downcase
      }
    product_array
  end
end
