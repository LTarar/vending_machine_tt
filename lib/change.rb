class Change
  attr_reader :coins

  def initialize
    @coins = default_coins
  end

  def release_coin(denomination,amount)
    counter = 0
    @coins.each_with_index do |coin, index|
      if coin.value == denomination
        counter = index
      end
    end
    coin = @coins[counter]
    coin.release(amount)
  end

  def insert_coin(denomination,amount)
    counter = 0
    @coins.each_with_index do |coin, index|
      if coin.value == denomination
        counter = index
      end
    end
    coin = @coins[counter]
    coin.reload(amount)
  end

  private

  def default_coins
    [
      Coin.new(1),
      Coin.new(2),
      Coin.new(5),
      Coin.new(10),
      Coin.new(20),
      Coin.new(50),
      Coin.new(100),
      Coin.new(200),
    ]
  end

end