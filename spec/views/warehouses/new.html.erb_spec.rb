require 'spec_helper'

describe "warehouses/new" do
  before(:each) do
    assign(:warehouse, stub_model(Warehouse,
      :max_capacity => 1,
      :current_capacity => 1
    ).as_new_record)
  end

  it "renders new warehouse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => warehouses_path, :method => "post" do
      assert_select "input#warehouse_max_capacity", :name => "warehouse[max_capacity]"
      assert_select "input#warehouse_current_capacity", :name => "warehouse[current_capacity]"
    end
  end
end
