require 'change'

describe Change do
  let(:change) {Change.new}
  let(:coin) {spy('coin')}


  it 'checks if coins are instances of Coin class' do
    change = Change.new
    expect(change.coins[0]).to be_an_instance_of(Coin)
  end

  describe '#insert_coin' do
    it 'checks that the reload method in coin gets called' do
      allow(coin).to receive(:value) { 10 }
      coins_mock = [coin]
      allow_any_instance_of(Change).to receive(:coin_stock) { coins_mock }
      change.insert_coin(10, 2)

      expect(coin).to have_received(:reload).with(2)
    end
  end
end