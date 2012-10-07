class JavascriptsController < ApplicationController
  
  def dynamic_stocks
    @stocks = Stock.all
  end
end
