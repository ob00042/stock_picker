def stock_picker(stock_prices)

d=0
m=0
stock_buy=nil
stock_sell=nil

	stock_prices.each do |p|

		stock_prices.each do |f|
			if stock_prices.index(f)>stock_prices.index(p)
				d=f-p
			end

			if d>m
				m=d
				stock_buy=p
				stock_sell=f
			end
		end


	end

puts "Buy stock for $#{stock_buy} on day #{stock_prices.index(stock_buy)}."
puts "Sell stock for $#{stock_sell} on day #{stock_prices.index(stock_sell)}."
puts "For profit of $#{m}."


end


stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])