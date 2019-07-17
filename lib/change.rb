class Change
  attr_reader :coins

  def initialize
    @coins = default_coins
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