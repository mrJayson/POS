require 'spec_helper'

describe "order_to_warehouses/edit" do
  before(:each) do
    @order_to_warehouse = assign(:order_to_warehouse, stub_model(OrderToWarehouse,
      :order_status => "MyString",
      :warehouse => nil,
      :store => nil,
      :warehouse_product_info => nil,
      :store_product_info => nil
    ))
  end


end
