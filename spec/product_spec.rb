require 'product'

describe Product do
  subject(:product) {Product.new('Coke',70,10)}

  it 'checks for a product name' do
    expect(product.name).to eq 'Coke'
  end

  it 'checks for a product price' do
    expect(product.price).to eq 70
  end

  it 'checks for a product quantity' do
    expect(product.quantity).to eq 10
  end
end
