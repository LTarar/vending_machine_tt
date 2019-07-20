require 'stock'
require 'helper'

describe Stock do
  let(:stock) { Stock.new }
  let(:product) { spy('product') }

  it 'checks if it gets initialized with the stock' do
    expect(stock.product_stock[0]).to be_an_instance_of(Product)
  end

  describe '#release_product' do
    it 'checks if product is released properly' do
      mock_products = create_mock(product)
      stock.release_product(1)
      expect(product).to have_received(:release)
    end
  end

  describe '#reload_product' do
    it 'Product reloads properly' do
      mock_products = create_mock(product)
      stock.reload_product(1,10)
      expect(product).to have_received(:reload).with(10)
    end
  end
end
