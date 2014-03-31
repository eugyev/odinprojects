def stock_picker(prices)
  if prices.length <2
    puts "not enough dates!"
    return nil
  end
  current_best_profit = prices[1] - prices.first
  current_best_dates = [0,1]
  prices.each_with_index do |buy_price, buy_day|
    (buy_day...prices.length).each_with_index do |sell_day| # compare with remaining days
      sell_price = prices[sell_day]
      if (sell_price - buy_price) > current_best_profit
        current_best_profit = sell_price - buy_price
        current_best_dates = [buy_day, sell_day]
      end
    end
  end
  
  return current_best_dates  
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([17,3,6,9,15,8,6,1,0])