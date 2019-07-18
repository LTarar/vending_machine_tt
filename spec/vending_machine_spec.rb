require 'vending_machine'

describe VendingMachine do
  subject(:vending_machine) {VendingMachine.new}

  describe "#release_item" do
    it 'releases the selected item with correct payment' do
      item_released = vending_machine.release_item(2,55)
      expect(item_released.name).to eq '7up'
      expect(item_released.quantity).to eq 9
    end
  end

  describe "#reload_item" do
    it 'reloads the selected item' do
      item_reloaded = vending_machine.reload_item(1,5)
      expect(item_reloaded.name).to eq 'Pepsi'
      expect(item_reloaded.quantity).to eq 15
    end
  end

  describe "#products" do
    it  'checks if vending machine has an array of products' do
      expect(vending_machine.products).to be_an(Array)
    end
    
    it 'checks if vending machine has products in the array' do
      expect(vending_machine.products[0]).to be_an_instance_of(Product)
    end
  end

  describe "#display_products" do
    it "displays the list of the products available" do
      expect(vending_machine.display_products).to be_an(Array)
    end
  end

  describe "#coins" do
    it 'checks if vending machine has an array of coins' do
      expect(vending_machine.coins).to be_an(Array)
    end

    it 'checks if vending machine has products in the array' do
      expect(vending_machine.coins[2]).to be_an_instance_of(Coin)
    end
  end

end
