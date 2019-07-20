# frozen_string_literal: true

def create_mock(product)
  mock_products = [:product, product]
  allow_any_instance_of(Stock).to receive(:load_products) { mock_products }
end

def create_mock_coins(_coin)
  mock_change = [:change, change]
  allow_any_instance_of(Change).to receive(:coin_stock) { mock_change }
end
