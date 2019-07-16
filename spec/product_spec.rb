require 'product'

describe Product do
  subject(:product) {Product.new('Coke')}

  it 'checks for a product name' do
    expect(product.name).to eq 'Coke'
  end
end
