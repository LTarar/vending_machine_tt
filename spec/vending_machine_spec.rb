require 'vending_machine'

describe VendingMachine do
  subject(:vending_machine) {VendingMachine.new}

  it 'checks if vending machine has an empty array of products' do
    expect(vending_machine.products).to eq []
  end
end
