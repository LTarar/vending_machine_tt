require 'product'

describe Product do
  subject(:product) {Product.new('Coke',70)}

  it 'checks for a product name' do
    expect(product.name).to eq 'Coke'
  end

  it 'checks for a product price' do
    expect(product.price).to eq 70
  end

  it 'checks for a product quantity' do
    expect(product.quantity).to eq 10
  end

  describe "#release" do
    it 'decreases the quantity of a product' do
      expect { product.release }.to change { product.quantity }.from(10).to(9)
    end
  end

  describe "#reload" do
    it 'increases the quantity of a product' do
      expect { product.reload(2) }.to change { product.quantity }.from(10).to(12)
    end
  end

end
