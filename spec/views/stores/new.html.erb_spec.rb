require 'spec_helper'

describe "stores/new" do
  before(:each) do
    assign(:store, stub_model(Store,
      :name => "MyString",
      :max_capacity => 1,
      :current_capacity => 1
    ).as_new_record)
  end


end
