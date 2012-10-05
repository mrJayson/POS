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


end
