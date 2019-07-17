class Coin
  attr_reader :denomination, :quantity

  def initialize(denomination,quantity)
    @denomination = denomination
    @quantity = quantity
  end
  
end