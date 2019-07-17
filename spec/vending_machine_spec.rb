require 'vending_machine'
# require 'product'

describe VendingMachine do
  subject(:vending_machine) {VendingMachine.new}

  it 'checks if vending machine has an array of products' do
    expect(vending_machine.products).to be_an(Array)
  end
  
  it 'checks if vending machine has products in the array' do
    expect(vending_machine.products[0]).to be_an_instance_of(Product)
  end
  
  it 'checks if vending machine has an array of coins' do
    expect(vending_machine.coins).to be_an(Array)
  end
  it 'checks if vending machine has products in the array' do
    expect(vending_machine.coins[2]).to be_an_instance_of(Coin)
  end

end
