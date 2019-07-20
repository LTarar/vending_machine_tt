# frozen_string_literal: true

require 'vending_machine'

describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  describe '#reload_item' do
    it 'reloads the selected item' do
      item_reloaded = vending_machine.reload_item(1, 5)
      expect(item_reloaded.name).to eq 'Pepsi'
      expect(item_reloaded.quantity).to eq 15
    end
  end

  describe '#products' do
    it 'checks if vending machine has an array of products' do
      expect(vending_machine.products).to be_an(Array)
    end

    it 'checks if vending machine has products in the array' do
      expect(vending_machine.products[0]).to be_an_instance_of(Product)
    end
  end

  describe '#display_products' do
    it 'displays the list of the products available' do
      expect(vending_machine.display_products).to be_an(Array)
    end
  end

  describe '#coins' do
    it 'checks if vending machine has an array of coins' do
      expect(vending_machine.coins).to be_an(Array)
    end

    it 'checks if vending machine has products in the array' do
      expect(vending_machine.coins[2]).to be_an_instance_of(Coin)
    end
  end

  describe '#select_item' do
    it 'lets you select an item' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('Coke')
      expect { vending_machine.select_item }.not_to raise_error
    end

    it 'gives error when invalid item entered' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('meetCleo')
      expect { vending_machine.select_item }.to raise_error 'Sorry, not available'
    end
  end
end
