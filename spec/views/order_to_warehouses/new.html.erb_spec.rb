require 'spec_helper'

describe "order_to_warehouses/new" do
  before(:each) do
    assign(:order_to_warehouse, stub_model(OrderToWarehouse,
      :order_status => "MyString",
      :warehouse => nil,
      :store => nil,
      :warehouse_product_info => nil,
      :store_product_info => nil
    ).as_new_record)
  end

  it "renders new order_to_warehouse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_to_warehouses_path, :method => "post" do
      assert_select "input#order_to_warehouse_order_status", :name => "order_to_warehouse[order_status]"
      assert_select "input#order_to_warehouse_warehouse", :name => "order_to_warehouse[warehouse]"
      assert_select "input#order_to_warehouse_store", :name => "order_to_warehouse[store]"
      assert_select "input#order_to_warehouse_warehouse_product_info", :name => "order_to_warehouse[warehouse_product_info]"
      assert_select "input#order_to_warehouse_store_product_info", :name => "order_to_warehouse[store_product_info]"
    end
  end
end
