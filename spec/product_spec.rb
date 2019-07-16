require 'product'

describe Product do
  subject(:product) {Product.new('Coke',70)}

  it 'checks for a product name' do
    expect(product.name).to eq 'Coke'
  end

  it 'checks for a product price' do
    expect(product.price).to eq 70
  end
end
