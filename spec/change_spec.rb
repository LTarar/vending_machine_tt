require 'change'
require 'coin'

describe Change do
  subject(:change) {Change.new}
  # let(:coin) {double :coin} 

  describe '#insert_coin' do
    it 'checks that the reload method in coin get called' do
      coin_spy = spy('coin')
      allow(coin_spy).to receive(:value) { 10 }
      coins_mock = [coin_spy]
      allow_any_instance_of(Change).to receive(:default_coins) { coins_mock }
      change_instance = Change.new
      change_instance.insert_coin(10, 2)
      expect(coin_spy).to have_received(:reload).with(2)
    end
  end
end