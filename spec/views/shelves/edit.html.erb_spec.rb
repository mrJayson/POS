require 'spec_helper'

describe "shelves/edit" do
  before(:each) do
    @shelf = assign(:shelf, stub_model(Shelf,
      :aisle => 1,
      :max_capacity => 1,
      :current_capacity => 1,
      :store => nil
    ))
  end


end
