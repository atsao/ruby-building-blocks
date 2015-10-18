# Stock Picker
# Had assistance from other students' solutions

def stockpicker(prices)
  # Initialize first profit to compare against
  current_profit = prices[1] - prices[0]

  # Initialize first buy_day and sell_day pair
  buy_sell_days = [0, 1]

  prices.each_with_index do |buy_price, buy_day|
    (buy_day..prices.length-1).each do |sell_day|
      if prices[sell_day] - buy_price > current_profit
        current_profit = prices[sell_day] - buy_price
        buy_sell_days = [buy_day, sell_day]
      end

    end

  end
  return buy_sell_days
end

puts stockpicker([17,3,6,9,15,8,6,1,10])