require 'spec_helper'

describe "stores/edit" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :name => "MyString",
      :max_capacity => 1,
      :current_capacity => 10
    ))
  end




end
