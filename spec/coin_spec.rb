# frozen_string_literal: true

require 'coin'

describe Coin do
  subject(:coin) { Coin.new(1) }

  it 'checks for coin denomination' do
    expect(coin.value).to eq 1
  end

  it 'checks for coin quantity' do
    expect(coin.quantity).to eq 30
  end

  describe '#release' do
    it 'decreases the quantity of a coin' do
      expect { coin.release(3) }.to change { coin.quantity }.from(30).to(27)
    end
  end

  describe '#reload' do
    it 'increases the quantity of a coin' do
      expect { coin.reload(2) }.to change { coin.quantity }.from(30).to(32)
    end
  end
end
