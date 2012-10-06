module LocationsHelper
  include ApplicationHelper  
  @@marginal_quantity = 0
  
  def set_marginal_quantity(t)
    @@marginal_quantity = t
  end
  
  def get_marginal_quantity
    return @@marginal_quantity
  end
  
  def sum_location_quantity (location)
    stocks = location.stocks
    sum = 0
    stocks.each do |s|
      sum += s.quantity
    end
    return sum
  end
  
end
