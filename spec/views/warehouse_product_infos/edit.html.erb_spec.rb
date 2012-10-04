require 'spec_helper'

describe "warehouse_product_infos/edit" do
  before(:each) do
    @warehouse_product_info = assign(:warehouse_product_info, stub_model(WarehouseProductInfo,
      :quantity => 1,
      :product => nil,
      :warehouse => nil
    ))
  end


end
