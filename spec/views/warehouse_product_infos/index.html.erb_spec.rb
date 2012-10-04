require 'spec_helper'

describe "warehouse_product_infos/index" do
  before(:each) do
    assign(:warehouse_product_infos, [
      stub_model(WarehouseProductInfo,
        :quantity => 1,
        :product => nil,
        :warehouse => nil
      ),
      stub_model(WarehouseProductInfo,
        :quantity => 1,
        :product => nil,
        :warehouse => nil
      )
    ])
  end


end
