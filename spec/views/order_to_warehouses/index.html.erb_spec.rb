require 'spec_helper'

describe "order_to_warehouses/index" do
  before(:each) do
    assign(:order_to_warehouses, [
      stub_model(OrderToWarehouse,
        :order_status => "Order Status",
        :warehouse => nil,
        :store => nil,
        :warehouse_product_info => nil,
        :store_product_info => nil
      ),
      stub_model(OrderToWarehouse,
        :order_status => "Order Status",
        :warehouse => nil,
        :store => nil,
        :warehouse_product_info => nil,
        :store_product_info => nil
      )
    ])
  end

  it "renders a list of order_to_warehouses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Order Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
