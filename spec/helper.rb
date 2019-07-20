def create_mock(product)
  mock_products = [:product, product]
  allow_any_instance_of(Stock).to receive(:load_products) { mock_products }
end