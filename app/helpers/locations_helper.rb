module LocationsHelper
  include ApplicationHelper

  #Capacity-inv1, inv2, totalNoOfProductInBackStore/Shelf are NAT
  #given a location, sum all the stock in there
  def sum_location_quantity (location)
    stocks = location.stocks
    sum = 0
    stocks.each do |s|
      sum += s.quantity
    end
    return sum
  end
  
  def get_order_list(location)
    order_list = []
    location.stocks.each do |stock|
      order_list << stock if stock.benchmark > stock.quantity
    end
    return order_list
  end
  
end
