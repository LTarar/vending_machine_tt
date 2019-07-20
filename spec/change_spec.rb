# frozen_string_literal: true

require 'change'
require 'helper'

describe Change do
  let(:change) { Change.new }
  let(:coin) { spy('coin') }

  it 'checks if coins are instances of Coin class' do
    change = Change.new
    expect(change.coins[0]).to be_an_instance_of(Coin)
  end

  describe '#insert_coin' do
    it 'checks that the reload method in coin gets called' do
      coins_mock = [coin]
      allow_any_instance_of(Change).to receive(:coin_stock) { coins_mock }
      change.insert_coin(10, 2)

      expect(coin).to have_received(:reload).with(2)
    end
  end

  describe '#release_coin' do
    it 'checks that release method functions properly' do
      coins_mock = [coin]
      allow_any_instance_of(Change).to receive(:coin_stock) { coins_mock }
      change.release_coin(1, 1)

      expect(coin).to have_received(:release).with(1)
    end
  end
end
