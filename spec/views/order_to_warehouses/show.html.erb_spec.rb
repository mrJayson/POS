require 'spec_helper'

describe "order_to_warehouses/show" do
  before(:each) do
    @order_to_warehouse = assign(:order_to_warehouse, stub_model(OrderToWarehouse,
      :order_status => "Order Status",
      :warehouse => nil,
      :store => nil,
      :warehouse_product_info => nil,
      :store_product_info => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Order Status/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
