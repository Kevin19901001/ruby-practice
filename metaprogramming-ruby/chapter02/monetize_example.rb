require 'monetize'

bargain_price = Monetize.from_numeric(99, "USD")
puts bargain_price.format
