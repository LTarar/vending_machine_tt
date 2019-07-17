require 'coin'

describe Coin do
  subject(:coin) {Coin.new(1,10)}

  it 'checks for coin denomination' do
    expect(coin.denomination).to eq 1
  end

  it 'checks for coin quantity' do
    expect(coin.quantity).to eq 10
  end
end