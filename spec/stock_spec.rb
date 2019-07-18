require 'stock'

describe Stock do

  load_products =   [
    Product.new('Coke',70),
    Product.new('Pepsi',60), 
    Product.new('7up',55),
    Product.new('Fanta',55),
    Product.new('Water',40)
  ]

  it 'checks if it gets initialized with the stock' do
    stock = Stock.new
    expect(stock.product_stock[0]).to be_an_instance_of(Product)
  end

end
