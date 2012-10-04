require 'spec_helper'

describe "stores/show" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :name => "Name",
      :max_capacity => 1,
      :current_capacity => 2
    ))
  end


end
