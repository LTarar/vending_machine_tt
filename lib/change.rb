# frozen_string_literal: true

class Change
  attr_reader :coins

  def initialize
    @coins = coin_stock
  end

  def release_coin(denomination, amount)
    counter = 0
    @coins.each_with_index do |coin, index|
      counter = index if coin.value == denomination
    end
    coin = @coins[counter]
    coin.release(amount)
  end

  def insert_coin(denomination, amount)
    counter = 0
    @coins.each_with_index do |coin, index|
      counter = index if coin.value == denomination
    end
    coin = @coins[counter]
    coin.reload(amount)
  end

  private

  def coin_stock
    [
      Coin.new(1),
      Coin.new(2),
      Coin.new(5),
      Coin.new(10),
      Coin.new(20),
      Coin.new(50),
      Coin.new(100),
      Coin.new(200)
    ]
  end
end
