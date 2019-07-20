require 'stock'

describe Stock do
  let(:stock) { Stock.new }

  it 'checks if it gets initialized with the stock' do
    expect(stock.product_stock[0]).to be_an_instance_of(Product)
  end

  describe '#release_product' do
    it 'checks if product is released properly' do
      product = spy('product')
      mock_products = [:product, product]
      allow_any_instance_of(Stock).to receive(:load_products) { mock_products }
      stock.release_product(1)
      expect(product).to have_received(:release)
    end
  end

  describe '#reload_product' do
    it 'Product reloads properly' do
      product = spy('product')
      mock_products = [:product, product]
      allow_any_instance_of(Stock).to receive(:load_products) { mock_products }
      stock.reload_product(1,10)
      expect(product).to have_received(:reload).with(10)
    end
  end
end
