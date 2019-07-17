class Coin
  attr_reader :denomination, :quantity

  def initialize(denomination,quantity=10)
    @denomination = denomination
    @quantity = quantity
  end

  def release(amount)
    @quantity -= amount
  end

  def reload(amount)
    @quantity += amount
  end
  
end