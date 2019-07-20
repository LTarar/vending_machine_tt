# frozen_string_literal: true

class Stock
  attr_reader :product_stock

  def initialize
    @product_stock = load_products
  end

  def release_product(index)
    product = @product_stock[index]
    product.release
  end

  def reload_product(index, amount)
    product = @product_stock[index]
    product.reload(amount)
 end

  private

  def load_products
    [
      Product.new('Coke', 70),
      Product.new('Pepsi', 60),
      Product.new('7up', 55),
      Product.new('Fanta', 55),
      Product.new('Water', 40)
    ]
  end
end
