require 'stock'

describe Stock do
  it 'checks if it gets initialized with the stock' do
    stock = Stock.new
    expect(stock.product_stock[0]).to be_an_instance_of(Product)
  end
end
