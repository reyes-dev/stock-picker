#method takes an array (stock_prices) and returns a pair of days to bring about the maximum profit (buy date, sell date)
def stock_picker(stock_prices)
  #Stores each buy/sell pair and the profit it garners in a hash
  pairs_and_profits = {}
  #iterates through the array twice to pick a day to buy (starting from index 0) and sell (each day after that) 
  stock_prices.each_with_index do |item, index|
    stock_prices.each_with_index do |price, day|
      #blocks from selling a stock before it's bought
      unless day < index
        #puts "profit: #{price - item} day pair: #{index}, #{day}"
        #stores the profit and buy day/sell day pair as a key/value pair in the hash
        pairs_and_profits[[index, day]] = price - item
      end
    end
  end
  puts "Best day to buy and sell is : #{pairs_and_profits.key(pairs_and_profits.values.max)}"
end
stock_picker([17,3,6,9,15,8,6,1,10])
