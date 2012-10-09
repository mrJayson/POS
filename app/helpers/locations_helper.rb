module LocationsHelper
  include ApplicationHelper

  
  #given a location, sum all the stock in there
  def sum_location_quantity (location)
    stocks = location.stocks
    sum = 0
    stocks.each do |s|
      sum += s.quantity
    end
    return sum
  end
  
end
