require 'spec_helper'

describe "shelves/show" do
  before(:each) do
    session[:store_id ]
    @shelf = assign(:shelf, stub_model(Shelf,
      :aisle => 1,
      :max_capacity => 2,
      :current_capacity => 3,
      :store => nil
    ))
  end



end
