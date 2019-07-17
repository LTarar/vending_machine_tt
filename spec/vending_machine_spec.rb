require 'vending_machine'
# require 'product'

describe VendingMachine do
  subject(:vending_machine) {VendingMachine.new}

  it 'checks if vending machine has an empty array of products' do
    expect(vending_machine.products).to be_an(Array)
  end

  it 'checks if vending machine has products in the array' do
    expect(vending_machine.products[0]).to be_an_instance_of(Product)
  end
end
