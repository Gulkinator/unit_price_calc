json.array!(@unit_prices) do |unit_price|
  json.extract! unit_price, :id, :abv, :volume, :units, :price, :unitprice
  json.url unit_price_url(unit_price, format: :json)
end
