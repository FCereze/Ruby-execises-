# Stock Picker 

def stock_picker (prices)
    profit = 0
    result = [0, 0]
   
    prices.each_with_index do |valb, indexbuy|
        prices.each_with_index do |vals, indexsell|

            prof = vals - valb

            if prof > profit  && indexbuy < indexsell
                profit = prof
                result[0] = indexbuy
                result[1] = indexsell
            end
        end
    end
    puts "For a profit of $#{prices[result[1]]} - $#{prices[result[0]]} = $#{profit}"
    return result
end

p stock_picker([17,3,6,9,15,8,6,1,10])