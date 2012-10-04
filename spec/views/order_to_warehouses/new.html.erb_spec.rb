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


end
