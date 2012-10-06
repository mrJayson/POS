module StocksHelper
  
  @@marginal_quantity = 0
  
  def set_marginal_quantity(t)
    @@marginal_quantity = t
  end
  
  def get_marginal_quantity
    return @@marginal_quantity
  end
  
end
