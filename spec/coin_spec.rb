require 'coin'

describe Coin do
  subject(:coin) {Coin.new(1)}

  it 'checks for coin denomination' do
    expect(coin.denomination).to eq 1
  end

  it 'checks for coin quantity' do
    expect(coin.quantity).to eq 10
  end

  describe "#release" do
    it 'decreases the quantity of a coin' do
      expect { coin.release(3) }.to change { coin.quantity }.from(10).to(7)
    end
  end

  describe "#reload" do
    it 'increases the quantity of a coin' do
      expect { coin.reload(2) }.to change { coin.quantity }.from(10).to(12)
    end
  end

end