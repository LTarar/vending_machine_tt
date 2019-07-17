require 'coin'

describe Coin do
  subject(:coin) {Coin.new(1)}

  it 'checks for coin denomination' do
    expect(coin.denomination).to eq 1
  end

end