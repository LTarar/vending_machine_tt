# frozen_string_literal: true

class Coin
  attr_reader :value, :quantity

  def initialize(value, quantity = 30)
    @value = value
    @quantity = quantity
  end

  def release(amount)
    @quantity -= amount
  end

  def reload(amount)
    @quantity += amount
  end
end
