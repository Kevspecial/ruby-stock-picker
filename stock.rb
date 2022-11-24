def stock_picker(array)
    possible_profit = Hash.new
      array.each_with_index do |sell_price, sell_day|
        array.reduce do |profit, buy_price|
          if sell_day > array.index(buy_price)
            profit = sell_price - buy_price
            possible_profit[profit] = [array.index(buy_price), sell_day]
          end
        end
      end
    max_profit = possible_profit.keys.reduce {|max_profit, profit| max_profit > profit ? max_profit : profit }
    possible_profit[max_profit]
    end
    
    p stock_picker([17,3,6,9,15,8,6,1,10])