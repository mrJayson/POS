require 'spec_helper'

describe "stores/new" do
  before(:each) do
    assign(:store, stub_model(Store,
      :name => "MyString",
      :max_capacity => 1,
      :current_capacity => 1
    ).as_new_record)
  end

  it "renders new store form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stores_path, :method => "post" do
      assert_select "input#store_name", :name => "store[name]"
      assert_select "input#store_max_capacity", :name => "store[max_capacity]"
      assert_select "input#store_current_capacity", :name => "store[current_capacity]"
    end
  end
end
