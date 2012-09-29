require 'spec_helper'

describe "stores/edit" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :name => "MyString",
      :max_capacity => 1,
      :current_capacity => 1
    ))
  end

  it "renders the edit store form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stores_path(@store), :method => "post" do
      assert_select "input#store_name", :name => "store[name]"
      assert_select "input#store_max_capacity", :name => "store[max_capacity]"
      assert_select "input#store_current_capacity", :name => "store[current_capacity]"
    end
  end
end
